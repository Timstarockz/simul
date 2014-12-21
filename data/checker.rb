#
# checker.rb
# by Tim :D
#

# sentence = "What has this world come to?!?!?! WHERE IS MY EGG SALAD".downcase
# sentence = sentence.gsub(/[^0-9A-Za-z]/, ' ')
#
# all_words = File.read("all_words.txt")
# nwords = all_words.split("\n")
# swords = sentence.split(" ")
#
# swords.each do |word|
#   nwords.each do |dw|
#     if word == dw
#       puts dw
#     end
#   end
# end

words = {}
File.open("/usr/share/dict/words") do |file|
  file.each do |line|
    words[line.strip] = true
  end
end
p words["magic"]
p words["fuck"]
