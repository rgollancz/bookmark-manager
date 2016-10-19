require 'spec_helper'
require './app/models/link.rb'

feature "adding links" do
  scenario "I would like to add sites address and a title" do
    visit'/links/new'
    fill_in('url', with: 'www.cats.com')
    fill_in('title', with: 'Cats cats cats')
    click_button('Submit')
    expect(page).to have_content('Cats cats cats')
  end
end
