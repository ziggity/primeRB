require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the prime path', {:type => :feature}) do
  it('show prime numbers up to the user input #') do
    visit('/')
    fill_in('prime', :with => '11')
    click_button('Send')
    expect(page).to have_content('2, 3, 5, 7, 11')
  end
end
