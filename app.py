import flask as f

Artik = f.Flask(__name__)

@Artik.route("/")
def index():
    return "I like to eat π!"