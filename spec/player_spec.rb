require 'player'

describe Player do
  subject {described_class.new("Jimmy")}
  it "Player can chose which item they want" do
    subject.choose("Rock")
    expect(subject.choice).to eq ("Rock")
  end
end
