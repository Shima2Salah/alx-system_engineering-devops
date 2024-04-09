import requests

def number_of_subscribers(subreddit):
    URL = "https://www.reddit.com/r/{}/about.json"
    # Use a more descriptive User-Agent string
    Headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3"}
    try:
        response = requests.get(URL.format(subreddit), headers=Headers)
        if response.status_code != 200:
            return 0
        data = response.json()
        # Check if the expected keys are present in the JSON response
        if 'data' in data and 'subscribers' in data['data']:
            return data['data']['subscribers']
        else:
            return 0
    except requests.exceptions.RequestException as e:
        # Handle potential exceptions
        print(f"An error occurred: {e}")
        return 0
