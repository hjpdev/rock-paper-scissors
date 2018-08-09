class RockPaperScissors
  attr_reader :player_name

  def initialize
    @player_name = ''
  end

  def get_name
    puts 'Enter name: '
    @player_name = gets.chomp
    puts "Hello #{@player_name},"
  end

  def user_input
    puts "choose \'rock\', \'paper\' or \'scissors\':"
    input = gets.chomp
    input =~ /[rock|paper|scissors]/ ? input : user_input
  end

  def computer_choice
    c_choice = %w[rock paper scissors].sample
    p "Computer choice: #{c_choice}."
    c_choice
  end

  def result(user_input, c_choice)
    if user_input == 'rock' && c_choice == 'scissors'
      'You win.'
    elsif user_input == 'scissors' && c_choice == 'paper'
      'You win.'
    elsif user_input == 'paper' && c_choice == 'rock'
      'You win.'
    elsif user_input == c_choice
      'Tie.'
    else
      'You lose.'
    end 
  end

  def game
    get_name
    u = user_input
    c = computer_choice
    p result(u, c)
  end
end
