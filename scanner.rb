class Scanner

  def initialize(file, word_list)
    @file = file
    @word_list = word_list
  end

  def scan!
    occurrences = 0
    File.foreach(@file).with_index do |line, line_num|
      @word_list.each do |word|
        unless line.scan(word).empty?
          occurrences += 1
          puts "#{line_num+1}: #{word}"
        end
      end
    end
    puts "Total Occurrences: #{occurrences}"
  end
end
