require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin counter path', {:type => :feature}) do
  it('processes the user entry number returning the correct coins') do
    visit('/')
    fill_in('cents', :with => 98)
    click_button('Count Coins')
    expect(page).to have_content('3 quarter(s), 2 dime(s), 0 nickel(s), 3 penn(ies)')
  end
end
