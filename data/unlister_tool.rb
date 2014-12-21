#
# unlister_tool.rb
# by Tim :D
#

file = ARGV[0]
ctext = File.read(file)

arr = ctext.split(",")
nFile = arr.join("\n")

File.open(file,"w") do |f|
  f.write(nFile)
end