require './calculadora'

#A classe Calculadora Cientifica herda as classes da Calculadora.
class CalculadoraCientifica < Calculadora

  def potencia
    resultado = primeiro_numero ** segundo_numero
    resposta(resultado, "potência")
  end

  private
  
  def resposta(resultado, operacao)
    puts "O resultado da #{operacao} é #{resultado} "
  end
end