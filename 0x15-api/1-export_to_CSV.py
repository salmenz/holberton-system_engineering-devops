#!/usr/bin/python3
"""
    script to export data in the CSV format.
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

    with open("{}.csv".format(id), 'w') as file:
        row = csv.writer(file, delimiter=',', quoting=csv.QUOTE_ALL)
        for task in todolist:
            row.writerow([id, emp.get('username'),
                           task.get('completed'), task.get('title')])
