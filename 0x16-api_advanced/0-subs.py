#!/usr/bin/python3
"""
    function that queries the Reddit API and returns the number of subscribers
    (not active users, total subscribers) for a given subreddit. If an invalid
    subreddit is given, the function should return 0.
"""
import json
import requests


def number_of_subscribers(subreddit):

    header = {'User-Agent': 'Mozilla/5.0', 'From': 'salmen.zooro@gmail.com'}
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    req = requests.get(url, headers=header, allow_redirects=False)
    sub = req.json()
    if not sub["data"]:
        return (0)
    else:
        return (sub["data"]["subscribers"])
