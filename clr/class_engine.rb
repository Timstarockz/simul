#
# class_engine.rb
# by Tim :D
#

require_relative "topic_i.rb"
require_relative "../ext.rb"

class ClassEngine
  
  
  def initialize(get_ts = false)
    if get_ts
      get_topics
    end
  end
  
  def classify(og_text)
  
  end
  
  #
  ##
  ### tools
  ##
  #
  
  def get_topics
    topic_classes = []
    topics_file = File.read("topics.txt")
    pairs = topics_file.split(",")
    pairs.each do |string|
      ind = string.split("/")
      type = ind[0]
      filename = ind[1]
      
      topic = Topic_i.new(type, filename, 0)
      topic_classes.push(topic)
      topic_classes.sort!
      
      # if type == "___"
#         if filename == "artists.txt"
#
#           #scan text for artists
#
#           artist_t = Topic_i.new("#Artist", filename, 1)
#           topic_classes.push(artist_t)
#         end
#
#         if filename == "trends.txt"
#
#           #scan text for trends
#
#           trend_t = Topic_i.new("#Trend", filename, 1)
#           topic_classes.push(trend_t)
#         end
#       else
#         
#       end
      
     # puts_s(topic_classes)
    end
    
    topic_classes
  end
  
  
  def scan_text_fa(text, array)
    
  end
  
  #
  ##
  ### classes
  ##
  #

  def food_drinks(text)
    matches = 0
  
    matches
  end
  
  
end

#
##
### test
##
#

# ne = ClassEngine.new


