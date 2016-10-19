require 'spec_helper'
require './app/models/link.rb'

feature 'filtering links by tag' do
  scenario 'I would like to filter my links according to a tag' do
    add_link_with_poodle_tag
    add_link_with_burmese_tag
    visit '/tags/poodle'
    expect(page).not_to have_content('Cats cats cats')
    expect(page).to have_content('Dogs dogs dogs')
  end
end
