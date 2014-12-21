#
# classifier.rb
# by Tim :D
#

require_relative "class_engine.rb"

class Classifier
  
  attr_accessor :text
  attr_accessor :context
  attr_accessor :sub_topics
  attr_accessor :all_tags
  
  def initialize(raw_text)
    self.text ||= raw_text
    self.context ||= ""
    self.sub_topics ||= []
    
    self.all_tags ||= []
    
    classify_text
  end
  
  
  def classify_text
    poi_initial_location_in_text = 0
    
    ce = ClassEngine.new(false)
    arr = ce.get_topics
    
    # text_arr = self.text.split(" ")
#     text_arr.map do |word|
#       word = word.gsub!(/[^0-9A-Za-z]/, '')
#     end
    
    #puts text_arr
        
    arr.each do |topic|
      #start looking for context
      wfile = File.read("data/#{topic.filename}")
      filter_words = wfile.split(",")
      if filter_words.length < 0
        filter_words = wfile.split("\n")
      end
      
      
      #puts filter_words
      filter_words.each do |word|
       # puts "word: #{word.downcase}"
       if (self.text.downcase.include?(word.downcase))
         append_context_tag(topic.string)
         # puts_s("list item: #{word}")
       end
      end
      
      
      filter_words.each do |word|
       # puts "word: #{word.downcase}"
       word = word.gsub(/[^0-9A-Za-z]/, '')
       # puts_s("stripped: #{word}")
       if (self.text.downcase.include?(word.downcase))
         append_context_tag(topic.string)
         # puts_s("list item: #{word}")
       end
      end
      
      
    end
  end
  
  def append_context_tag(tag)
    topics = []
    topics.push(tag)
    topics.each do |t|
      while !(self.all_tags.include?(tag))
        self.all_tags.push(t)
      end
    end
    
    # puts_s(self.all_tags)
  end
  
end

#test = Classifier.new("Wow it's really hot outside and I want some food")

