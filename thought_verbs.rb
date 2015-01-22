# This lists occurrences of thought verbs in a piece of text
#
# It was inspired by Chuck Palahniuk. See http://litreactor.com/essays/chuck-palahniuk/nuts-and-bolts-%E2%80%9Cthought%E2%80%9D-verbs
#
# Do it like this:
#   ./thought_verbs.rb piece-of-writing.txt

require_relative 'scanner'

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

scanner = Scanner.new(ARGV[0], thought_verb_words)
scanner.scan!
