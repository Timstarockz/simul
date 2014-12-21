#
# topic_i.rb
# by Tim :D
#

class Topic_i
  include Comparable
  
  attr_accessor :string
  attr_accessor :filename
  
  attr_accessor :priority
  
  def initialize(text, fl, level)
    self.string ||= text
    self.filename ||= fl
    
    if level
      self.priority ||= level
    else
      self.priority = 0
    end
  end
  
  def to_s
    self.string
  end
  
  def <=>(other)
    @priority <=> other.priority
  end
end