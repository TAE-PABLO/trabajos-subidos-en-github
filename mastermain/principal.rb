require 'colorize'

def welcome_message
  puts "Bienvenido al juego de Codenames"
  puts "¿Quieres ser el jugador o la máquina?"
end

def set_name
  puts "¿Cuál es tu nombre?"
  name = gets.chomp
  return name
end

def get_player_role
  puts "¿Quieres ser el jugador (1) o la máquina (2)?"
  role = gets.chomp.to_i
  while role != 1 && role != 2
    puts "Ingresa una opción válida (1 o 2)"
    role = gets.chomp.to_i
  end
  return role
end

COLORS = %w[azul rojo amarillo verde rosa morado blanco negro cafe celeste]

def get_guess
  turn = 1
  guess = []
  4.times do
    color = rand(COLORS.length)
    begin
      guess << color
    rescue
      retry
    end
  end
  return guess
end

def give_feedback(guess, code)
  feedback = []
  code.each_with_index do |color, index|
    if guess[index] == color
      feedback << "🟢"
    else
      feedback << "🟠"
    end
  end

  return feedback.map(&:to_s).join
end

def is_winner?(guess, code)
  return guess == code
end

def play_game
  turn = 1
  name = set_name
  role = get_player_role

  if role == 1
    puts "¡Eres el jugador!
    hay trampa, existe el número 0"
    code = []
    4.times do
      color = rand(COLORS.length)
      begin
        code << color
      rescue
        retry
      end
    end
    while turn <= 12
      puts "Colores disponibles: #{COLORS.join(', ')}"
      puts "Turno: #{turn}"
      guess = gets.chomp.split(" ")
      guess.map!(&:to_i)

      feedback = give_feedback(guess, code)
      puts feedback
      turn += 1

      if code == guess
        puts "¡Felicidades, #{name}! Has ganado, el codigo era #{code.join(' ')}"
        break
      end
    end
  else
    puts "
    ingresa el codigo, recuerda que pueden ser
    #{COLORS.join(', ')}
    o puedes probar con numeros del 1 al 10
    aviso importante, la maquina es bien tonta"
    code = []
    4.times do
      color = rand(COLORS.length)
      begin
        code << color
      rescue
        retry
      end
    end
    computer_code = gets.chomp.split(" ")
    computer_code.map!(&:to_i)
    while turn <= 12
      puts "intento de la maquina"
      guess = get_guess
      feedback = give_feedback(guess, code)
      puts feedback
      turn += 1

      if code == 12
        puts "¡La máquina ha ganado, #{name}!"
        break
      end
    end
  end
end

play_game
