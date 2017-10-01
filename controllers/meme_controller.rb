class MemeController < Sinatra::Base
	configure :development do 
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")

	set :views, Proc.new { File.join(root, 'views')}



	#Index

	get '/meme' do
		@page_header = "All my memes"
		@memes = Meme.all
		erb :"meme/index"
	end

	#New

	get '/meme/new' do
		erb :"meme/new"
	end

	#Create

	post "/meme" do
		new_meme = Meme.new
		new_meme.title = params[:title]
		new_meme.body = params[:body]
		new_meme.save
		redirect '/meme'
	end


	#show

	get "/meme/:id"
		

	# /photos/:id                   GET                                 Show

	#edit

	get '/meme/:id/edit' do
		@meme = Meme.find(params[:id])

		redirect '/memes/#{meme.id}'

	end

	#update

	put "/meme/:id" do
		meme = Meme.find(params[:id])
		meme.title = params[:title]
		meme.body = params[:body]
		meme.save
		redirect '/memes/#{mrmr.id'
	end

	#delete

	delete 'meme/:id' do
		Meme.destroy(params[:id])
		redirect '/meme'
	end

end



