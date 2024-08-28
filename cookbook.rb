INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
SAIR = 3

def bem_vindo()
  puts
  puts 'Bem-vindo ao CookBook, sua rede social de receitas'
end

def menu()
  puts
  puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
  puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
  puts "[#{SAIR}] Sair"
  puts
  
  print 'Escolha uma opção: '
  return gets.to_i()
end

def inserir_receita()
  puts 'Digite o nome da receita: '
  nome = gets.chomp()
  puts 'Digite o tipo da receita: '
  tipo = gets.chomp()
  
  puts
  puts "Receita #{nome} cadastrada com sucesso!"
  puts
  return { nome: nome, tipo: tipo }
end

def imprimir_receitas(receitas)
  puts '=========== Receitas cadastradas ==========='
  receitas.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
  end
  puts
  if receitas.empty?
    puts 'Nenhuma receita cadastrada'
end

bem_vindo()

receitas = []

opcao = menu()

loop do
  if(opcao == INSERIR_RECEITA)
    receitas << inserir_receita()
  elsif(opcao == VISUALIZAR_RECEITAS)
    imprimir_receitas(receitas)
  elseif(opcao == SAIR)
    break
  else
    puts
    puts 'Opção inválida. Por favor, tente novamente.'
  end
  
  opcao = menu()
end

puts 'Obrigado por usar o CookBook, até logo!'