def generate_password
  special_characters = %w{!@#%^&*()-_=+[]{}\/:;<>,.?}
  lowercase_characters = ('a'..'z').to_a
  uppercase_characters = ('A'..'Z').to_a
  digits = (0..9).to_a
  password = Array.new(7) { lowercase_characters.sample } + Array.new(7) { uppercase_characters.sample } + Array.new(7) { digits.sample }
  password << special_characters.sample
  puts "Oto twoje hasło: #{password.shuffle!.join}"
end

generate_password
