#
# ext.rb
# by Tim :D
#

def puts_s(thing)
  puts
  puts "--"*7
  puts thing
  puts "--"*7
  puts
end

def valid_url?(url)
  uri = URI.parse url
          uri.kind_of? URI::HTTP
      rescue URI::InvalidURIError
          false
end