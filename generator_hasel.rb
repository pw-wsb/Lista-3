def generate_password(length: 20, characters: [:lowercase,:uppercase,:digits,:special_chars])
  characters_set = { lowercase: ('a'..'z').to_a,
                     uppercase: ('A'..'Z').to_a,
                     digits: (0..9).to_a,
                     special_chars: %w{!@#%^&*()-_=+[]{}\/:;<>,.?}
                   }
  password_characters = characters_set.values_at(*characters).join
  password = password_characters.split('').shuffle[0...length].join
  puts password
end

generate_password(characters: [:lowercase, :special_chars, :digits])