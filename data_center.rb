#
# data_center.rb
# simul
# by Tim :D
#

require 'pg'

# third party
require 'wolfram'


class DataCenter  
  
  def initialize
  end


  def search_everything_for(term)
    @results = {}
    
    
    #
    # Wolfram
    #
    
    Wolfram.appid = "3K8V2G-2WYR735HEX"
    result = Wolfram.fetch(term)
    @hash = Wolfram::HashPresenter.new(result).to_hash

    @results[:WolframAlpha] = @hash
    
    #
    # Google
    #
    
    @results[:Google] = true
  end



  def all_results
    @results
  end
end