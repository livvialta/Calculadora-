require './calculadora'
require './calculadora_cientifica'
require './calculadora_fitness'

  def pedir_valores(primeiro_numero,segundo_numero)
   puts ''
    puts 'Digite o primeiro número'
    primeiro_numero = gets.chomp.to_f

    puts '=========================='
    puts 'Agora digite o segundo número'
    segundo_numero = gets.chomp.to_f
  end

  def pedir_valores_imc(primeiro_numero,segundo_numero)
    puts ''
    puts 'Digite o seu peso'
    primeiro_numero = gets.chomp.to_f
  
    puts '=========================='
    puts 'Agora digite a sua altura'
    segundo_numero = gets.chomp.to_f
  end

  escolha = nil

  system('clear')
  loop do
    puts 'Escolha a operação que deseja utilizar:'
    puts '1. Soma'
    puts '2. Subtração'
    puts '3. Divisão'
    puts '4. Multiplicação'
    puts '5. Potência'
    puts '6. IMC'
    
    
    escolha = gets.to_i
  
    if escolha.between? 1,6
      break 
    else 
      puts "Escolha um valor entre 1 e 4!! Por favor (:"
      puts ''
    end
end  


  cal = Calculadora.new(primeiro_numero,segundo_numero)
  cal_cientifica = CalculadoraCientifica.new(primeiro_numero,segundo_numero)
  cal_fitness = CalculadoraFitness.new(primeiro_numero,segundo_numero)

  case escolha
      when 1
      pedir_valores(primeiro_numero,segundo_numero)
      cal.soma 
      when 2
    pedir_valores(primeiro_numero,segundo_numero)
      cal.subtracao
      when 3
    pedir_valores(primeiro_numero,segundo_numero)
      cal.divisao
      when 4
    pedir_valores(primeiro_numero,segundo_numero)
      cal.multiplicacao
      when 5
    pedir_valores(primeiro_numero,segundo_numero)
      cal_cientifica.potencia
      when 6
    pedir_valores_imc(primeiro_numero,segundo_numero)
      cal_fitness.imc
  end

     
