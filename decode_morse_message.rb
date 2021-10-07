def morse_code()
  { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
end

def decode(message = '')
  morse_code = morse_code()
  decode_message = ''
  code = ''
  space = false
  counter = 0
  message.each_char.with_index do |char, index|
    if ['-', '.'].include?(char)
      code += char
      counter = 0
    end

    if [' ', '/'].include?(char)
      counter += 1
      space = true if counter == 3
    end

    if (char == ' ' && morse_code[code]) || index + 1 == message.length
      if space
        decode_message += ' '
        space = false
        counter = 0
      end
      decode_message += morse_code[code]
      code = ''
    end
  end
  decode_message
end

puts decode(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
