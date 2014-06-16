require 'spec_helper'

feature "User visits the events page" do
  # As a User
  # I want to see all the events on one page
  # So that I know what events are happening
  #
  # Acceptance Criteria:
  #
  # * I see a title that lets me know I'm on the right page
  # * I see all of the events listed

  it "displays a title" do
    visit '/events'
    expect(page).to have_content "All The Events"
  end

  it "sees all the events listed on the page" do
    # Create two events so we can test that they're displayed on the page
    event1 = Event.create!(location: "My Backyard")
    event2 = Event.create!(location: "Chuckie Cheese")

    visit '/events'

    expect(page).to have_content event1.location
    expect(page).to have_content event2.location
  end

end
