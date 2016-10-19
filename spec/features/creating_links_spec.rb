require 'spec_helper'
require './app/models/link.rb'

feature "adding links" do
  scenario "I would like to add sites address and a title" do
    visit'/links/new'
    fill_in('url', with: 'www.cats.com')
    fill_in('title', with: 'Cats cats cats')
    fill_in('tag_1_name', with: 'burmese')
    click_button('Submit')
    expect(page).to have_content('Cats cats cats')
  end
end

feature "adding a tag to a link" do
  scenario "I would like to add a tag to a link" do
    visit'/links/new'
    fill_in('url', with: 'www.dogs.com')
    fill_in('title', with: 'Dogs dogs dogs')
    fill_in('tag_1_name', with: 'poodle')
    click_button('Submit')

    link = Link.first
    expect(link.tags.map(&:name)).to include('poodle')
  end
end
