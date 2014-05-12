class MyAwesomeWebApp
	def call(env)
		path = env['REQUEST_PATH']
		path[0] = ""
		[200, {'Content-Type'   => 'text/plain'}, ["Hello, #{path}!"]]
	end
end

hello_world_app = MyAwesomeWebApp.new

run hello_world_app