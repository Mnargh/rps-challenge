def enter_name_and_play
  visit '/'
  fill_in("Player", with: "Jimmy")
  click_button("Start game!")
end
