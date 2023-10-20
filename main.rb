class MorseCodeDecoder
  MORSE_CODE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '' => ' '
  }.freeze

  def self.decode_char(morse_char)
    MORSE_CODE[morse_char] || ''
  end

  def self.decode_word(morse_word)
    morse_word.split.map { |char| decode_char(char) }.join
  end

  def self.decode_message(morse_message)
    words = morse_message.split('   ').map { |word| decode_word(word) }
    words.join(' ')
  end
end

# Example usage to decode the message from the old bottle
morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = MorseCodeDecoder.decode_message(morse_message)
puts decoded_message
