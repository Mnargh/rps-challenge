feature "Main Game Page" do
  scenario "Can click on Rock button to choose rock" do
    enter_name_and_play
    click_button "Rock!"
    expect(page).to have_content "You chose Rock"
  end
  scenario "Can click on Scissors button to choose scissors" do
    enter_name_and_play
    click_button "Scissors!"
    expect(page).to have_content "You chose Scissors"
  end
  scenario "Can click on Paper button to choose paper" do
    enter_name_and_play
    click_button "Paper!"
    expect(page).to have_content "You chose Paper"
  end
end
