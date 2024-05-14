from app.main import bp

@bp.route('/')
def index():
    return '<h1>This is Home Page</h1>'