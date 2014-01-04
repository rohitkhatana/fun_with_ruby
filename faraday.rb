#require 'faraday'

require 'faraday_middleware'
require 'oauth2'

class Rohit
	attr_reader :token, :secret

	def initialize(token, secret)
		@token, @secret = token, secret
	end
	
	def get(q,count=1)
		res = connection(q,count).get #do |req|
		data =  res.body
		p data.class
		#p data
		i=0
		data['statuses'].each do |o|
    	p o['text']
			p "user=" +o['user']['screen_name']    
			i+=1
		end
		puts i
			#req.url path
		#end
	end
	
	private
	def connection(q, count=1)
		@search_url = 'https://api.twitter.com/1.1/search/tweets.json'
		@search_url += "?q="+q+"&"+"count="+count.to_s
		p @search_url
		@connection ||= Faraday.new(url: @search_url) do |conn|
			conn.request	:url_encoded
			conn.request	:oauth, oauth_data
			conn.response	:json, :content_type => /\bjson$/
			conn.use 	:instrumentation
			conn.adapter	Faraday.default_adapter
		end
	end


	def oauth_data
		{
			consumer_key:	consumer_key,
			consumer_secret: consumer_secret,
			token: token,
			token_secret: secret
		}
	end

	def consumer_key
		return "kgIpenTTZcD7wD9dnOOxPQ"	
	end


	def consumer_secret
		return "hHWxrOaZ3e1P9q44q6t0tNLvHZXucKETg2CGuchsmRc"
	end
end

token= "838203445-AOC6HFdUCZfAswXKVQQpdyCJImHoloyFVr1qZVSd"
token_secret = "v93GUHb2zoR8bNYzrN81Ns36hzaC8KgBTYGO3cGM"

obj = Rohit.new(token, token_secret)

o =  obj.get("gurgaon", 101)

