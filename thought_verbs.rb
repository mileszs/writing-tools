# This lists occurrences of thought verbs in a piece of text
#
# It was inspired by Chuck Palahniuk. See http://litreactor.com/essays/chuck-palahniuk/nuts-and-bolts-%E2%80%9Cthought%E2%80%9D-verbs
#
# Do it like this:
#   ./thought_verbs.rb piece-of-writing.txt

thought_verb_words = %w(
  think
  thought
  know
  knew
  understand
  understood
  realize
  believe
  want
  remember
  imagine
  desire
  love
  hate
  wonder
  worry
  forget
  forgot
)

occurrences = 0
File.foreach(ARGV[0]).with_index do |line, line_num|
  thought_verb_words.each do |word|
    unless line.scan(word).empty?
      occurrences += 1
      puts "#{line_num}: #{word}"
    end
  end
end
puts "Total Occurrences: #{occurrences}"
