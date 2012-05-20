class ShowtimesController < ApplicationController
  def index
  	require 'rss'
  	rss = RSS::Parser.parse(open('http://www.fandango.com/rss/moviesnearme_aanse.rss?wssaffid=11836&wssac=123').read, false)

  	@showtimes = []
  	response = Nokogiri::XML::DocumentFragment.parse(rss.items[0].description)

  	response.css('li').each do |movie|
  		@showtimes.push({
  			:title => movie.css('a').text,
  			:link => movie
  								.css('a').attr('href').value
  								.rpartition(%r(\?))[0]+'?wssaffid=11836&wssac=123',
  			:imdb => Zimdb::Movie.new(:title => movie.css('a').text)
  		})
  	end
  end
end
