# caesar_cipher.rb

def caesar_cipher(string, shift_factor)
  string.chars.map do |char|
    base = char.ord < 91 ? 65 : 97
    new_ord = if char.ord.between?(65, 90) || char.ord.between?(97, 122)
                (((char.ord - base) + shift_factor) % 26) + base
              else
                char.ord
              end
    new_ord.chr
  end
      .join
end

puts caesar_cipher('What a string!', 5)
