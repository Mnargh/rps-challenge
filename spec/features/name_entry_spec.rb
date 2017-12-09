feature 'Entering names' do
  scenario "Submitting player name" do
    visit '/'
    fill_in :Player, with: 'Player 1 name'
    click_button 'Start game!'
    expect(page).to have_content "Player 1 name vs the computer!"
  end
end
