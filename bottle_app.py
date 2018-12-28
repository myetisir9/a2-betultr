from bottle import route, run, default_app, debug,static_file,request

def static_file_callback(filename):
 return static_file(filename, root='static')
route('/static/<filename>', 'GET', static_file_callback)
run(route=True)