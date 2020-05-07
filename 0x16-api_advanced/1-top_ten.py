#!/usr/bin/python3
"""
    function that queries the Reddit API and prints the titles
    of the first 10 hot posts listed for a given subreddit.
"""
import json
import requests


def top_ten(subreddit):

    header = {'User-Agent': 'Mozilla/5.0', 'From': 'salmen.zooro@gmail.com'}
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    req = requests.get(url, headers=header, allow_redirects=False,
                       params={"limit": 10})
    hot = req.json()
    try:
        for i in range(10):
            print(hot["data"]["children"][i]["data"]["title"])
    except:
        priint("None")
