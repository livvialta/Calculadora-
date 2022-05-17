require './calculadora'

class CalculadoraFitness < Calculadora

  def imc
    peso = primeiro_numero
    altura = segundo_numero
    
    resultado= peso / (altura ** 2)
    resposta(resultado)
  end

  private

  def resposta(resultado)
    puts "O cálculo da IMC é igual a: #{resultado}"
  end
  
end