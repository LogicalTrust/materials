import threading
from random import randint
from threading import Thread
import subprocess
import os
import time
import datetime

threadLock = threading.Lock()
template = [ 'personal-name=YOUR NAME', 'user-domain=kali.xyz', 'smtp-server=mail.messagingengine.com:465/ssl/user=YOURNAME@YOURSERVER.com', 'nntp-server=""', 'default-fcc=#md/Mails/Fastmail/INBOX.Sent', 'default-saved-msg-folder=#md/Mails/Fastmail/INBOX.Archive', 'postponed-folder=#md/Mails/Fastmail/INBOX.Drafts', 'trash-folder=#md/Mails/Fastmail/INBOX.Trash', 'feature-list=enable-background-sending,convert-dates-to-localtime', 'customized-hdrs=From: YOUR NAME <YOUR@DOMAIN.NAME>', 'sort-key=Arrival', 'threading-display-style=mutt', 'keyboard-character-set=UTF-8', 'posting-character-set=UTF-8', 'unknown-character-set=GBK', 'normal-background-color=000,000,000' ]
path = "/root/fuzz/alpine-2.21/alpine/alpine"

class Radamsa():

    def __init__(self):
        self.seed = 0 #218650
        self.threadLock = threading.Lock()

    def radamsa(self, val):
        val = val.replace("'", "'\\''")
        seed = 0
        with self.threadLock:
            seed = self.seed
            self.seed += 1
        o = subprocess.check_output("echo '" + val + "' | /root/fuzz/radamsa/bin/radamsa -n 1 --seed " + str(seed), shell=True)
        return (o, seed)

class FuzzThread(Thread):

    def __init__(self,pattern, pattern_id, radamsa):
        Thread.__init__(self)
        self.radamsa = radamsa
        self.pattern = pattern
        self.pattern_id = pattern_id

    def run(self):
        while True:
            r = self.radamsa.radamsa(self.pattern)
            payload = r[0].replace("'", "'\\''")
            seed = r[1]
            r = randint(0, 10000)
            name = "confalp{}s{}r{}".format(self.pattern_id, seed, r)
            if seed % 50 == 0:
                print "{}: {} {}".format(str(datetime.datetime.now()), self.pattern_id, seed)
            try:
                os.system("ASAN_OPTIONS=log_path=/root/fuzz/asan_logs/{} screen -S {} -dm {} -'{}'".format(name, name, path, payload))
                time.sleep(1)
                os.system("screen -X -S {} quit".format(name))
            except:
                pass


t = None
i = 0
r = Radamsa()
for p in template:
    t = FuzzThread(p, i, r)
    t.start()
    print "Start thread {}".format(i)
    i += 1
t.join()
