# best image: http://thecatapi.com/?id=59
require 'nokogiri'
require 'open-uri'

#http://thecatapi.com/api/images/get?format=xml&results_per_page=1


doc = Nokogiri::XML(open("http://thecatapi.com/api/images/get?format=xml&results_per_page=1"))
image_link = doc.css('url').inner_text

