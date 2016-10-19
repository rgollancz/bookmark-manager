def add_link_with_poodle_tag
  visit'/links/new'
  fill_in('url', with: 'www.dogs.com')
  fill_in('title', with: 'Dogs dogs dogs')
  fill_in('tag_1_name', with: 'poodle')
  click_button('Submit')
end

def add_link_with_burmese_tag
  visit'/links/new'
  fill_in('url', with: 'www.cats.com')
  fill_in('title', with: 'Cats cats cats')
  fill_in('tag_1_name', with: 'burmese')
  click_button('Submit')
end
