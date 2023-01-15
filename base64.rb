require('base64')

def encrypt_base64(text)
  base64 = Base64.encode64(text)
  puts "To twój zaszyfrowany string w base64: #{base64}"
end

def decrypt_base64(text)
  base64 = Base64.decode64(text)
  puts "To twój odszyfrowany string w base64: #{base64}"
end

encrypt_base64("testowe szyfrowanie base64")
decrypt_base64("dGVzdG93ZSBzenlmcm93YW5pZSBiYXNlNjQ=")
