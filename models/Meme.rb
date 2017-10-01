class Meme

	attr_accessor :id, :title, :description, :url, :genre
	def self.open_connection
		PGconn.connect( dbname: "memetube")
	end

	def self.all
		conn = self.open_connection
		sql = "SELECT * FROM meme;"

		results = conn.exec(sql)

		memes = results.map do |record|
			self.hydrate(record)
		end

		memes

	end

	def self.hydrate meme_data
		meme = Meme.new

		meme.id = meme_data['id']
		meme.title = meme_data['title']
		meme.description = meme_data['description']
		meme.url = meme_data['url']
		meme.genre = meme_data['genre']

		meme

	end

#show

	def self.find id
		conn = self.open_connection
		sql = "SELECT * FROM meme WHERE id = #{id}"
		memes = conn.exec(sql)

		meme = self.hydrate memes[0]

	end




#create/update

	def save
		conn = Meme.open_connection
		if (!self.id)
			sql = "INSERT INTO meme (description, title, url, genre) VALUES ( '#{self.description}', '#{self.title}', '#{self.url}', '#{self.genre}')"
		else
			sql = "UPDATE meme SET title = '#{self.title}', description = '#{self.description}', url = '#{self.url}', genre = '#{self.genre}' WHERE id = #{self.id}"
		end
	

	conn.exec(sql)

	end





#delete

	def self.destroy id
		conn = self.open_connection
		sql =  "DELETE FROM meme WHERE id = #{id}"
		conn.exec(sql)



		
	end







end
