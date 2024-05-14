from flask import Flask
from config import Config

def create_app(config_class = Config):
    app = Flask(__name__)
    app.config.from_object(config_class)

    #Initialize Flask extenssion

    #register Blueprints here
    from app.main import bp as main_bp
    app.register_blueprint(main_bp)

    @app.route('/info/')
    def info():
        return "<h1> City of Racine Website Reimagined</h1>"

    return app
