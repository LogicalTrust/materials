import threading
from random import randint
from threading import Thread
import subprocess
import os
import time
import datetime

threadLock = threading.Lock()

template = ["http://kali.xyz:8000/aaaa", "http://abc:abc@kali.xyz:8000/xyz", "file:///etc/passwd", "file:///"]
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
            name = "urlalp{}s{}r{}".format(self.pattern_id, seed, r)
            if seed % 50 == 0:
                print "{}: {} {}".format(str(datetime.datetime.now()), self.pattern_id, seed)
            try:
                os.system("ASAN_OPTIONS=log_path=/root/fuzz/asan_logs/{} screen -S {} -dm {} -url '{}'".format(name, name, path, payload))
                time.sleep(1)
                os.system("screen -X -S {} quit".format(name))
            except:
                pass


t = None
i = 0
for p in template:
    r = Radamsa()
    for j in range(0, 3):
        t = FuzzThread(p, i, r)
        t.start()
        print "Start thread {}.{}".format(i, j)
    i += 1
t.join()
