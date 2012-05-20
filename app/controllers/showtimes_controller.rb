class ShowtimesController < ApplicationController
  def index
  	require 'rss'
  	rss = RSS::Parser.parse(open('http://www.fandango.com/rss/moviesnearme_aanse.rss?wssaffid=11836&wssac=123').read, false)

  	rss.items.each do |movie|
  		Thin::Logging.debug Nokogiri::XML::DocumentFragment.parse(movie.description).at_xpath('//li')
  	end

  end
end
