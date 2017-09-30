class meme

	attr_accessor :id, :title, :body
	def self.open_connection
		PGconn.connect( dbname: "memetube")
	end

	def self.all
		conn = self.open_connection
		sql = "SELECT * FROM post;"

		results = conn.exec(sql)

		posts = results.map do |record|
			self.hydrate(record)
		end

		posts

	end

	def self.hydrate meme_data
		meme = Post.new

		meme.id = meme_data['id']
		meme.title = meme_data['title']
		meme.body = meme_data['body']

		post

	end

#show

	def self.find id
		conn = self.open_connection
		sql = "SELECT * FROM post WHERE id = #{id}"
		posts = conn.exec(sql)

		post = self.hydrate posts[0]

	end




#create/update

	def save
		conn = Post.open_connection
		if (!self.id)
			sql = "INSERT INTO post (body, title) VALUES ( '#{self.body}', '#{self.title}')"
		else
			sql = "UPDATE post SET title = '#{self.title}', body = '#{self.body}' WHERE id = #{self.id}"
		end
	

	conn.exec(sql)

	end





#delete

	def self.destroy id
		conn = self.open_connection
		sql =  "DELETE FROM post WHERE id = #{id}"
		conn.exec(sql)



		
	end







end
