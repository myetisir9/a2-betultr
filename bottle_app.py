from bottle import route, run, default_app, debug, static_file, request, template
from hashlib import sha256


# staticfolder
@route('/<filename>.css')
def stylesheets(filename):
    return static_file('{}.css'.format(filename), root='static')


def static_file_callback(filename):
    return static_file(filename, root='static')
route('/static/<filename>', 'GET', static_file_callback)

# hashpassword
def create_hash(password):
    pw_bytestring = password.encode()
    return sha256(pw_bytestring).hexdigest()

h ="b8a72255aedf3a01cb4aece302283ce9ef5df5c36290a93f324ab30af75c3be8"
listComments = []

@route('/postComment', method='POST')
def do_comment():
    comment = request.forms.get('comment')
    password = request.forms.get('password')

    if create_hash(password) == h:
        listComments.append(comment)
        return template('form', rows=listComments)  # tpl dosyası adı ve dosyaya gönderdiğimiz değişken
    else:
        return "<p>I am sorry,i can not let you to do that</p>"
# This line makes bottle give nicer error messages
debug(True)
# This line is necessary for running on Heroku
app = default_app()
# The below code is necessary for running this bottle app standalone on your computer.
if __name__ == "__main__":
  run()








