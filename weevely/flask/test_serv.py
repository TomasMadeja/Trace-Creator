from flask import Flask, request

from pathlib import Path

app = Flask(__name__)

AGENT_PATH=Path('agent.php')
def exec_php(_file):
    _file.save(str(AGENT_PATH))
    return 'ok'

@app.route('/')
def _index():
    return 'UP'

@app.route('/submit')
def php_exploit():
    f = request.files.get('file')
    if f is not None:
        return exec_php(f)
    return 'None'
