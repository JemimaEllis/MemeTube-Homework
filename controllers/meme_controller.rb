class MemeController < Sinatra::Base
	configure :development do 
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")

	set :views, Proc.new { File.join(root, 'views')}



	#Index

	get '/meme' do
		@page_header = "All my memes"
		@meme = Post.all
		erb :"posts/index"
	end

	#New

	get '/meme/new' do
		erb :"posts/new"
	end

	#Create

	post "/meme" do
		new_meme = Post.new
		new_meme.title = params[:title]
		new_meme.body = params[:body]
		new_meme.save
		redirect '/meme'
	end

	#edit

	get '/meme/:id/edit' do
		@meme = Post.find(params[:id])

		redirect '/posts/#{meme.id}'

	end

	#update

	put "/meme/:id" do
		meme = Post.find(params[:id])
		post.title = params[:title]
		post.body = params[:body]
		post.save
		redirect '/posts/#{mrmr.id'
	end

	#delete

	delete 'meme/:id' do
		Post.destroy(params[:id])
		redirect '/meme'
	end

end



