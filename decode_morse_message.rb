MORSE_DIC = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

def decode_char(char = '')
  decoded_char = MORSE_DIC[char]
  decoded_char || ''
end

def decode_word(word = '')
  chars = word.split
  decoded_word = ''

  chars.each do |char|
    decoded_word += decode_char(char)
  end

  decoded_word
end

def decode(code = '')
  code = code.gsub('/', ' ')
  words = code.split('   ')
  decoded_code = ''

  words.each do |word|
    decoded_code += "#{decode_word(word)} "
  end

  decoded_code
end

puts(decode('.-   -... --- -..-  ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'))
