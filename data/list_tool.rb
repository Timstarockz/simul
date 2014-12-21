#
# list_tool.rb
# by Tim :D
#

item_name = ""
filename = ""
live = true
body = []

puts
puts "Welcome to the List Tool!"
print "new or existing file: "
filename = gets.chomp


while live
  
  puts "add item: "
  item_name = gets.chomp
  
  if item_name == "__k"
    
    str_b = body.join(",")
    
    if File.exist?("#{filename}.txt")
      ce_file = File.read("#{filename}.txt")
      ad = ",#{str_b}"

      File.open("#{filename}.txt","a") do |f|
        f.write(ad)
      end
    else
      File.open("#{filename}.txt","a") do |f|
        f.write(str_b)
      end
    end
    
    puts
    puts "saved #{filename}.txt"
    puts
    
    live = false
    break
  else
    body.push(item_name)
  end
  
end