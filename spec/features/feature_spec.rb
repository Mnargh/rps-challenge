feature 'Page Features' do
  scenario "Displays welcome home page" do
    visit '/'
    expect(page).to have_content "Welcome to Rock Paper Scissors!"
  end
end
