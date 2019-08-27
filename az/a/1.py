import threading
from random import randint
from threading import Thread
import subprocess
import os
import time
import datetime

template = ["Q,C", "I,P,N,N,D,U,R,D,F,O,J,N,H", "L,P,N", "A,@,A,B,C,D", "C,<", "S,S,1,2,3", "I", "C,1,1,1,1,1,1,1", "<,<,>,>", "fkljgf34j2r90ju89hf89fjhe9uwhf2840", "!,@,#,$,%,^,&,*,(,)", "?,E", "Q,C", "I,P,N,N,D,U,R,D,F,O,J,N,H", "L,P,N", "A,@,A,B,C,D", "Q", "I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I,I", "I,A,O,Q,<,P", "E,A,I,E,H,O,Q,<,>"]
path = "/root/fuzz/alpine-2.21/alpine/alpine"

class FuzzThread(Thread):

    def __init__(self,pattern, pattern_id):
        Thread.__init__(self)
        self.pattern = pattern
        self.pattern_id = pattern_id
        self.seed = 300

    def radamsa(self, val):
        val = val.replace("'", "'\\''")
        o = subprocess.check_output("echo '" + val + "' | /root/fuzz/radamsa/bin/radamsa -n 1 --seed " + str(self.seed), shell=True)
        self.seed += 1
        return o

    def run(self):
        while True:
            payload = self.radamsa(self.pattern)
            payload = payload.replace("'", "'\\''")
            seed = self.seed
            r = randint(0, 10000)
            name = "alp{}s{}r{}".format(self.pattern_id, seed, r)
            if seed % 50 == 0:
                print "{}: {} {}".format(str(datetime.datetime.now()), self.pattern_id, self.seed)
            try:
                os.system("ASAN_OPTIONS=log_path=/root/fuzz/asan_logs/{} screen -S {} -dm {} -I '{}'".format(name, name, path, payload))
                time.sleep(1)
                os.system("screen -X -S {} quit".format(name))
            except:
                pass

t = None
i = 0
for p in template:
    t = FuzzThread(p, i)
    t.start()
    i += 1
t.join()
