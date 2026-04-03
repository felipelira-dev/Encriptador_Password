puts "Bem-vindo ao Encriptador de Senhas!"
puts
# Solicita ao usuário se deseja encriptar ou desencriptar uma senha
puts "Deseja Encriptar ou Desencriptar uma senha? (Digite '1' para Encriptar ou '2' para Desencriptar)"
opcao = gets.chomp
#If para verificar a opção escolhida pelo usuário e solicitar a senha correspondente
if opcao == "1"
    puts "Me informe a senha que deseja encriptar: "
    senha = gets.chomp
    # Encripta a senha usando uma cifra de César, onde cada letra é substituída pela letra que está 3 posições à frente no alfabeto.
    senha_caracteres = senha.chars.map do |char|
        if char.match?(/[a-zA-Z]/)
            novo_valor = char.ord + 3
            # Verifica se o caractere é uma letra minúscula e se o novo valor ultrapassa 'z' (122 em ASCII)
            if char.match?(/[a-z]/) && novo_valor > 122 
                novo_valor -= 26
            # Verifica se o caractere é uma letra maiúscula e se o novo valor ultrapassa 'Z' (90 em ASCII)
            elsif char.match?(/[A-Z]/) && novo_valor > 90 
                novo_valor -= 26
            end
            novo_valor.chr # Converte o valor numérico de volta para um caractere
        else
            char # Se o caractere não for uma letra, mantém o mesmo caractere (como espaços ou pontuação)
        end
    end
end
if opcao == "2"
    puts "Me informe a senha que deseja desencriptar: "
    senha = gets.chomp
        # Desencripta a senha usando uma cifra de César, onde cada letra é substituída pela letra que está 3 posições para trás no alfabeto.
    senha_caracteres = senha.chars.map do |char|
        if char.match?(/[a-zA-Z]/)
            novo_valor = char.ord - 3

            # Verifica se o caractere é uma letra minúscula e se o novo valor ultrapassa 'z' (122 em ASCII)
            if char.match?(/[a-z]/) && novo_valor < 97
                novo_valor += 26
            # Verifica se o caractere é uma letra maiúscula e se o novo valor ultrapassa 'Z' (90 em ASCII)
            elsif char.match?(/[A-Z]/) && novo_valor < 65
                novo_valor += 26
            end
            novo_valor.chr # Converte o valor numérico de volta para um caractere
        else
            char # Se o caractere não for uma letra, mantém o mesmo caractere (como espaços ou pontuação)
        end
    end
end


# Exibe a senha encriptada
puts "A senha encriptada é: #{senha_caracteres.join}"