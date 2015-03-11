#!/usr/bin/env ruby

module State
  LINE_NUMBER = 1
  TIME = 2
  SUB = 3
  SPACE = 4
end

input_file = ARGV[0]
output_file = ARGV[1] ? ARGV[1] : ARGV[0]

if input_file && output_file

  trimmed = []

  File.read(input_file).each_line do |line|
    trimmed << line.strip
  end

  result = ""

  last_state = nil

  trimmed.each do |line|

    case line
    when /^\d+$/
      result += "\n" + line

      last_state = State::LINE_NUMBER
    when /^\d+:\d+:\d+,\d+\s-->\s\d+:\d+:\d+,\d+$/
      result += "\n" + line
      
      last_state = State::TIME
    when /^$/
      result += "\n" + line
      
      last_state = State::SPACE
    else
      if last_state != State::SUB
        result += "\n" + line
      else 
        result += " " + line
      end
      last_state = State::SUB
    end

  end

  File.open(output_file, 'w') do |file|
    file.write(result)
  end

end
