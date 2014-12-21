# 
# app.rb
# simul
# by Tim :D
#

require 'sinatra'
require 'sinatra/reloader'

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

$vids = []

$js_css_links = File.read("js_css_links.txt")
  
Dir["public/vdo/*.mp4"].each do |file|
  arr = file.split("/")
  $vids.push(arr[2])
end

get '/' do
  $vids.shuffle!
  $rp.shuffle!
    
  erb :index
end

post '/' do
  @query = params[:query]
  
  if @query.downcase == "where am i?" || @query.downcase == "where am i" || @query.downcase == "whereami"
    erb :map
  else
    if @query.downcase == "today"
      
    end
    
    erb :results
  end
end

get '/sign_up' do
  
end