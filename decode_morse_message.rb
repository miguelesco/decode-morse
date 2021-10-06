def decode(message = "")
  morse_code = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
  }
  message_length = message.length
  decode_message = ""
  code = ""
  space = false
  counter = 0
  message.each_char.with_index {
    | char, index |
    
    if char == "-" || char == "."
      code += char
      counter = 0
    end

    if char == " " || char == '/'
      counter += 1
      if counter == 3
        space = true
      end
    end

    if char == " " && morse_code[code] || index + 1 == message_length
      if space
        decode_message += " "
        space = false
        counter = 0
      end
      decode_message += morse_code[code]
      code = ""
    end


  }
  return decode_message

end

puts decode(" .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...")

