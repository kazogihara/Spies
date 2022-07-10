import functools

from flask import (
    Blueprint, flash, g, redirect, render_template, request, session, url_for
)

bp = Blueprint('stream', __name__, url_prefix='/stream')

@bp.route('/', methods=['GET'])
def register():
    return render_template('stream/index.html')