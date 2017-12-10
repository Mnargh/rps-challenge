require 'game'

describe Game do
  subject(:subject_name) {described_class.new("Jimmy")}
  # let(:player){double(:player, name: "Jimmy")}

  # describe "Players" do
    it "Returns the name of the player playing the game" do
      expect(subject.player.name).to eq "Jimmy"
    end
  # end


end
