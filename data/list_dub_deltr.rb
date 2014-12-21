#
# list_dub_deleter.rb
# by Tim :D
#

#
def uniques(list)
  fa = []
  
  list.map do |n|
    while !(fa.include?(n))
      fa.push(n)
    end
  end
  
  #puts fa
  return fa
end
#


file = ARGV[0]
raw = File.read(file)
arr = raw.split(",")

final = uniques(arr)
out = final.join(",")

File.open(file,"w") do |f|
  f.write(out)
end