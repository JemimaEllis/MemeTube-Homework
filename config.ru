require "sinatra"
require "sinatra/reloader" if development?
require "pg"
require_relative "./controllers/meme_controller.rb"
require_relative "./models/Post.rb"

use Rack::MethodOverride

run MemeController