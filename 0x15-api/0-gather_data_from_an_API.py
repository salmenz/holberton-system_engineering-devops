#!/usr/bin/python3
"""
    script that, using this REST API, for a given employee ID, 
    returns information about his/her TODO list progress.
"""
import json
import requests
from sys import argv


if __name__ == "__main__":

    id = int(argv[1])
    emp = requests.get("https://jsonplaceholder.typicode.com/users/{}".
                        format(id)).json()
    todolist = requests.get("https://jsonplaceholder.typicode.com/todos?userId={}".
                        format(id)).json()
    tasks = []

    for task in todolist:
        if task.get('completed') is True:
            tasks.append(task.get('title'))
    print("Employee {} is done with tasks({}/{}):".format(emp.get('name'),
                                                          len(tasks),
                                                          len(todolist)))
    for task in tasks:
        print("\t {}".format(task))
