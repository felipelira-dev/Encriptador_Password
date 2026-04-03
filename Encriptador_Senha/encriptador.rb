puts "Bem-vindo ao Encriptador de Senhas!"
puts
# Solicita ao usuário se deseja encriptar ou desencriptar uma senha
puts "Deseja Encriptar ou Desencriptar uma senha? (Digite '1' para Encriptar ou '2' para Desencriptar)"
opcao = gets.chomp
#If para verificar a opção escolhida pelo usuário e solicitar a senha correspondente
if opcao == "1"
    puts "Me informe a senha que deseja encriptar: "
    senha = gets.chomp
end
if opcao == "2"
    puts "Me informe a senha que deseja desencriptar: "
    senha = gets.chomp
end

# Encripta a senha usando uma cifra de César, onde cada letra é substituída pela letra que está 3 posições à frente no alfabeto.
senha_caracteres = senha.chars.map do |char|
 novo_valor = char.ord + 3
    if novo_valor > 122
        novo_valor -= 26
    end
    novo_valor.chr
end

# Desencripta a senha usando a mesma cifra de César, onde cada letra é substituída pela letra que está 3 posições atrás no alfabeto.
senha_caracteres = senha.chars.map do |char|
    novo_valor = char.ord - 3
    if novo_valor < 97
        novo_valor += 26
    end
    novo_valor.chr
end

# Exibe a senha encriptada
puts "A senha encriptada é: #{senha_caracteres.join}"