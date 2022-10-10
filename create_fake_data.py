#!/usr/locall/bin/python
import random
import string
from datetime import timedelta, datetime

import requests                        # use elasticsearch 7.9.3 to avoid uri error

start_date = datetime(2017, 11, 22)

for x in range(60 * 48):
    print(x, ", ", )
    single_date = start_date + timedelta(minutes=x)
    dt = single_date.strftime("%Y-%m-%d")
    url = "http://44.192.79.229:9200/{}-fake/fake".format(dt)
    doc = {"user": "fauie.com",
           "post_date": single_date.isoformat(),
           "message": ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(12)),
           "x": x,
           "cpu": random.randint(0, 100),
           "io": random.randint(0, 100)

           }
    resp = requests.post(url, json=doc)
    print(resp.text)
