#!/usr/bin/python3
""" Export data in the CSV format.. """
import json
import requests
import sys
import csv


if __name__ == "__main__":
    response = requests.get("https://jsonplaceholder.typicode.com/users/" +
                            sys.argv[1])
    dicti = json.loads(response.text)
    username = dicti.get('username')
    response = requests.get("https://jsonplaceholder.typicode.com/todos/" +
                            "?userId=" + sys.argv[1])
    todos = json.loads(response.text)
    tasks = [task for task in todos]
    with open(sys.argv[1] + ".csv", 'w', newline='') as csvfile:
        taskwriter = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        for t in todos:
            taskwriter.writerow([int(sys.argv[1]), username,
                                 t.get('completed'),
                                 t.get('title')])
