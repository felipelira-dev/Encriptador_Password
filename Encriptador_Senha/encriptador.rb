puts "Me informe a senha que deseja encriptar: "
senha = gets.chomp

senha_caracteres = senha.chars.map do |char|
 novo_valor = char.ord + 3
    if novo_valor > 122
        novo_valor -= 26
    end
end

puts "A senha encriptada é: #{senha_caracteres}"