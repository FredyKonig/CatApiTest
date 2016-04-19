require "catApiTest/version"

module CatApiTest
 


require 'nokogiri'
require 'open-uri'
require 'json'



IMAGE_URL = "http://thecatapi.com/api/images/get?format=xml"
FACT_URL = "http://catfacts-api.appspot.com/api/facts"

 def read_catapi_url
   document_received = Nokogiri::XML(open(IMAGE_URL).read)
   url_node = document_received.xpath("//url").text
 end

 # open image in browser (firefox)
 def open_image 
   system "firefox " + read_catapi_url
 end

 #save image on desktop
 def save_image
   url=read_catapi_url
   extension= url.split(".").last
   open("/home/fredy/Desktop/cat_image.#{extension}", 'wb') do |file|
     file << open(read_catapi_url).read
   end  
 end

 #display fact from the cat fact api
 def cat_fact
   document_received = JSON.load(open(FACT_URL))
   fact = document_received["facts"][0]
   STDOUT.puts fact
 end

#main command line

case ARGV[0]
when "file"
  save_image
when "fact"
  cat_fact
else
  open_image
end

end
