from flask import jsonify

def configure(app):
    @app.route("/")
    def get_servers():
       	return jsonify(data={"id": "i-23nt493n3443", "host_name": "Prod_0001"})

