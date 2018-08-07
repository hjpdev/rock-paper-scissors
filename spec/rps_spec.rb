require 'rps_game'

describe RockPaperScissors do
  it "Should take the user's name when #get_name is called." do
    rps = RockPaperScissors.new
    allow(rps).to receive(:get_name) { 'Harry' }
    expect(rps.get_name).to eq('Harry')
  end

  it "Should take the user's input when #user_input is called." do
    rps = RockPaperScissors.new
    allow(rps).to receive(:user_input) { 'rock' }
    expect(rps.user_input).to eq('rock')
  end
end