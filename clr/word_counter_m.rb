# 
# word_counter_m.rb
# by Tim :D
#

# CLASSES
class Object
  def is_number?
    self.to_f.to_s == self.to_s || self.to_i.to_s == self.to_s
  end
end
#

class WordCounter
  
  # METHODS
  def parse_and_rank(input, stopword = false)
    # parse and organize though requested .txt file and store and sort! into an array
    text_file = File.read(input) # op3n file
    text_file = text_file.gsub(/[^0-9A-Za-z]/, " ") # get rid of special characters
    words = text_file.split(" ") # split words into an array
    #words.sort! # organize all words

    words.map! { |c| c = c.downcase }
    #

    if stopword
      # extra challenge - remove stop words
      stop_words_file = File.read("stop_words.txt") # open file
      stop_words_file = stop_words_file.gsub(/[^0-9A-Za-z]/, " ") # remove special characters
      sw_arr = stop_words_file.split(" ") # split words into an array

      sw_arr.map! { |c| c = c.downcase }

      words = words - sw_arr # remove stop words from array
      #
    end

    # group words and store into new Hash
    counts = words.group_by{ |i| i }.map{ |k, v| [k, v.count] } # organize words and #Words into hash

    word_hash = Hash[*counts.flatten] # flatten hash
    #

    values = word_hash.values.sort.uniq.reverse!
    values.map do |v|
     # puts "#{word_hash.key(v)}: #{v}"
    end
    
    return word_hash
  end
end