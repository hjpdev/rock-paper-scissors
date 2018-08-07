require 'rps_game'

describe RockPaperScissors do
  it "Should take the user's name." do
    rps = RockPaperScissors.new
    allow(rps).to receive(:get_name) { 'Harry' }
    expect(rps.get_name).to eq('Harry')
  end
end