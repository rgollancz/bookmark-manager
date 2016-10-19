require 'spec_helper'
require './app/models/link.rb'

feature "adding links" do
  scenario "I would like to add sites address and a title" do
    add_link_with_poodle_tag
    expect(page).to have_content('Dogs dogs dogs')
  end
end

feature "adding a tag to a link" do
  scenario "I would like to add a tag to a link" do
    add_link_with_poodle_tag
    link = Link.first
    expect(link.tags.map(&:name)).to include('poodle')
  end
end
