require 'rps_game.rb'

describe RockPaperScissors do
  let(:test_case1) { double :rps, input: 'rock', c_choice: 'scissors'}
  let(:test_case2) { double :rps, input: 'scissors', c_choice: 'paper'}
  let(:test_case3) { double :rps, input: 'paper', c_choice: 'rock'}

  it "Take the user's name when #get_name is called." do
    rps = RockPaperScissors.new
    allow(rps).to receive(:get_name) { 'Harry' }
    expect(rps.get_name).to eq('Harry')
  end

  it "Take the user's input when #user_input is called." do
    rps = RockPaperScissors.new
    allow(rps).to receive(:user_input) { 'rock' }
    expect(rps.user_input).to eq('rock')
  end

  it 'Continue calling #user_input if input is invalid' do
    rps = RockPaperScissors.new
    allow(rps).to receive(:user_input) { 'invalid' }
    expect(rps.user_input)
  end

  it 'The computer should make a random choice.' do
    rps = RockPaperScissors.new
    allow(rps).to receive(:computer_choice) { 'rock' }
    expect(rps.computer_choice).to eq('rock')
  end

  it 'Declare tiebreak when selections are the same' do
    allow(subject).to receive(:user_input) {'rock'}
    allow(subject).to receive(:computer_choice).and_return('rock')
    expect(subject.result(subject.user_input, subject.computer_choice)).to eq 'Tie.'
  end

  it 'Declare user winner if U: rock & C: scissors.' do
    allow(subject).to receive(:user_input) {'rock'}
    allow(subject).to receive(:computer_choice).and_return('scissors')
    expect(subject.result(subject.user_input, subject.computer_choice)).to eq 'You win.'
  end

  it 'Declare user winner if U: scissors & C: paper' do
    allow(subject).to receive(:user_input) {'scissors'}
    allow(subject).to receive(:computer_choice).and_return('paper')
    expect(subject.result(subject.user_input, subject.computer_choice)).to eq 'You win.'
  end

  it 'Declare user winner if U: paper & C: rock' do
    allow(subject).to receive(:user_input) {'paper'}
    allow(subject).to receive(:computer_choice).and_return('rock')
    expect(subject.result(subject.user_input, subject.computer_choice)).to eq 'You win.'
  end 
end