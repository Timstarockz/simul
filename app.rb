# 
# app.rb
# simul
# by Tim :D
#

require 'sinatra'
require 'sinatra/reloader'


# third party
require 'wolfram'


$rp = [
  "What are you looking for?", 
  "Arrrr", "Search your stuff", 
  "Google Search loljk", "Search", 
  "ex: Stores near me", 
  "ex: food", "Search something",
  "ex: John Smith", 
  "ex: I want some food", 
  "ex: Captain Toad game",
  "ex: 'keyword' [type]",
  "ex: Where am I?", "ex: Today",
  "ex: Tomorrow", "ex: Yesterday"
]

$d_key_pages = [
  'Today', 
  'Tomorrow', 
  'Yesterday', 
  'Where am I?', 
  "Who am I?", 
  "News", 
  "What's trending on Twitter?"
]

$d_services = [
  "Facebook",
  "Instagram",
  "YouTube",
  "WolframAlpha",
  "Local Files"
]

$vids = []

$js_css_links = File.read("js_css_links.txt")
  
Dir["public/vdo/*.mp4"].each do |file|
  arr = file.split("/")
  $vids.push(arr[2])
end


#
# directories
#

get '/' do
  $vids.shuffle!
  $rp.shuffle!
    
  erb :index
end


post '/' do
  @query = params[:query]
  
  # Wolfram.appid = "3K8V2G-2WYR735HEX"
#   result = Wolfram.fetch(@query)
#   # to see the result as a hash of pods and assumptions:
#   hash = Wolfram::HashPresenter.new(result).to_hash
#   puts hash
  
  if @query.downcase == "where am i?" || @query.downcase == "where am i" || @query.downcase == "whereami"
    erb :map
  else
    if @query.downcase == "today"
      
    end
    
    erb :results
  end
end


get '/configure' do
  erb :configure
end



