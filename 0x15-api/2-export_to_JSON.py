#!/usr/bin/python3
"""
    script to export data in the JSON format.
"""
import json
import requests
from sys import argv


if __name__ == "__main__":

    id = int(argv[1])
    emp = requests.get("https://jsonplaceholder.typicode.com/users/{}".
                       format(id)).json()
    url = "https://jsonplaceholder.typicode.com/todos?userId="
    todolist = requests.get(url+"{}".format(id)).json()
    tasks = []
    username = emp.get('username')
    for task in todolist:
        data = {}
        data['task'] = task.get('title')
        data['completed'] = task.get('completed')
        data['username'] = username
        tasks.append(data)

    json_data = {}
    json_data[id] = tasks

    with open("{}.json".format(id), 'w') as jsonfile:
        json.dump(json_data, jsonfile)
