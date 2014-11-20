require "exam/lista.rb"
require "exam/version.rb"
require "exam/pregunta.rb"
require "exam/simpleSelection.rb"
require "exam/trueFalse.rb"

class Examen
	attr_reader :num
	def initialize(num)	
		@num = num
	end 

	def rellernar()
		Listado = Lista.new()
		while var <= @num  
			puts "¿que tipo de pregunta es? 1-Seleccion simple/2-VoF" 
			res = gets.chomp
			if res == 1
				puts "Texto de la pregunta" 
				@pregEnum = gets.chomp
				puts "Opciones de la pregunta" 
				@opPreg = gets.chomp
				@preg = SimpleSelection.new(@pregEnum, @opPreg)
				Listado.push(@preg)
			else
				puts "Texto de la pregunta" 
				@pregEnum = gets.chomp
				@preg = TrueFalse.new(@pregEnum)
				Listado.push(@preg)
			end  			
  			var += 1  
		end
	end
	
end


puts "¿Cuantas presguntas son?" 
num = gets.chomp
exam = Examen.new(num)
exam.rellenar
	


