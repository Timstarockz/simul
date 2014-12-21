#
# list_translation.rb
# by Tim :D
#

file_to_tr = ARGV[0]
file = File.read(file_to_tr)

arr = file.split("\n")
text = arr.join(",")

File.open(file_to_tr,"w") do |f|
  f.write(text)
end