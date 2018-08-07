class RockPaperScissors
  attr_reader :player_name

  def initialize
    @player_name = ""
  end

  def get_name
    puts "Enter name: "
    @player_name = gets.chomp
  end

  def user_input
    puts "Choose \'rock\', \'paper\' or \'scissors\':"
    user_input = gets.chomp
    user_input
  end
end

