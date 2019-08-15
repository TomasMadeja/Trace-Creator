from selenium import webdriver

import sys

URL_FORMAT = 'http://{}:8000/39828/LoadMP42.swf'

def collect(url):
    _webdriver = webdriver.Chrome()
    _webdriver.get(url)
    ## TODO
    pass


if __name__ == '__main__':
    url = URL_FORMAT.format(sys.argv[1])
    collect(url)