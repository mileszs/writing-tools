# This lists occurrences of "said bookisms". Said bookisms are
# attributions in dialogue using something other than 'said'. For
# instance:
#
# "I don't understand. What's the big deal?" he muttered.
#
# or
#
# "That's just flavorful!" she exclaimed.
#
# In short, it risks causing the reader to stop or pause. Readers
# will almost completely ignore the word 'said', but they'll stop
# and think about these other words. Ultimately, better to do
# something like:
#
# He jabbed his finger at the screen. "Cut those out. Now."
#
# Note that not every occurrence found is a bad thing. Use your
# own judgment. This will catch third person singular past or
# present tense. (Perhaps I'll add first person some time?)
#
# Use it like this:
#   ./said_bookisms.rb piece-of-writing.txt

said_bookisms = %w(
  demand
  declare
  murmur
  shout
  shriek
  exclaim
  inquire
  querie
  replie
  implie
  whisper
)

occurrences = 0
File.foreach(ARGV[0]).with_index do |line, line_num|
  said_bookisms.each do |word|
    unless line.scan(word).empty?
      occurrences += 1
      puts "#{line_num}: #{word}"
    end
  end
end
puts "Total Occurrences: #{occurrences}"
