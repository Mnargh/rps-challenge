require 'game'

describe Game do
  let(:player){double(:player, choice: "Rock")}
  subject {Game.new}
  context "Winning and losing" do
    it "Computer wins if makes winning choice" do
      srand(1)
      subject.winner?(player.choice)
      expect(subject.who_won).to eq ("Computer")
    end
    it "Player wins if makes winning choice" do
      srand(3)
      subject.winner?(player.choice)
      expect(subject.who_won).to eq ("Player")
    end
    it "Calls a tie if it is a draw" do
      srand(2)
      subject.winner?(player.choice)
      expect(subject.who_won).to eq ("Tie")
    end
  end


end
