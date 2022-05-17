class Calculadora

  attr_accessor :primeiro_numero, :segundo_numero

  def initialize(primeiro_numero,segundo_numero)
   @primeiro_numero = primeiro_numero.to_f
   @segundo_numero = segundo_numero.to_f
  end

  def soma
    resultado = primeiro_numero + segundo_numero
    resposta(resultado, "soma", "+")
  end
  
  def subtracao
    resultado = primeiro_numero - segundo_numero
    resposta(resultado, "subtração", "-")
  end
  
  def divisao
    resultado = (primeiro_numero / segundo_numero).round(4)
    resposta(resultado,"divisão", "÷")
  end
  
  def multiplicacao
    resultado = primeiro_numero * segundo_numero
    resposta(resultado, 'multiplicação', 'x')
  end

  private
  
  def resposta(resultado, operacao, simbolo)
    puts "A #{operacao} entre o #{primeiro_numero} #{simbolo} #{segundo_numero} é igual a: #{resultado}"
  end
  
end
