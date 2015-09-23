def caesar_cipher(string, shift)
	alphabet = ('a'..'z').to_a.join
	i = shift % alphabet.size
	encrypt = alphabet[i..-1] + alphabet[0...i]
	alphacap = alphabet.upcase
	encryptcap = encrypt.upcase
	string.tr(alphabet,encrypt).tr(alphacap,encryptcap)
end	

puts "message?"
b = gets.chomp
puts "shift factor?"
n = gets.chomp.to_i
puts caesar_cipher(b, n)
