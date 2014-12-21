#
# defier.rb
# by Tim :D
#

require 'json'
require 'net/http'

words_file = File.read("all_words.txt")
words_arr = words_file.split("\n")
words_left = words_arr.clone

words_arr.each_with_index do |word, index|
  uri = URI("http://api.wordnik.com:80/v4/word.json/#{word}/definitions?limit=1&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
  results = Net::HTTP.get(URI(uri))
  response = JSON.parse(results)
  if response.length > 0
    puts response.length
    word = "#{word}/#{response[0]["partOfSpeech"]}\n"
    File.open("all_words_wparts.txt","a") do |f|
      f.write(word)
      
      # words_left.delete_at(index)
#       new_file = words_left.join("\n")
#
#       File.open(words_file,"w") do |f|
#         f.write(new_file)
#       end
      
    end
  end
    
    words_arr.delete_at(index)
    new_file = words_arr.join("\n")

    File.open(words_file,"w") do |f|
      f.write(new_file)
    end
  
end

# new_file = words_arr.join("\n")

