require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe("place path", {:type => :feature}) do
  it("take a place input from the user and store it in the place list") do
    visit("/")
    fill_in('place', :with => "scrub the zebra")
    click_button('Add it to the list!')
    expect(page).to have_content("The destination has been added to your list!")
    click_on("back")
    expect(page).to have_content("scrub the zebra")
  end
end
