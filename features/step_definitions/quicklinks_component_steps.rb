Given /^add a few links$/ do

  fill_in 'Title', with: 'Stuff and things'

  within find('.quick-link:nth-child(1)') do
    fill_in 'node_small_slot_0_quick_links__link_text', with: 'Stuff'
    fill_in 'node_small_slot_0_quick_links__link', with: 'http://www.stuff.com'
  end

  click_link "Add a quick link"

  within find('.quick-link:nth-child(2)') do
    fill_in 'node_small_slot_0_quick_links__link_text', with: 'Things'
    fill_in 'node_small_slot_0_quick_links__link', with: 'http://www.things.com'
  end

  click_button 'Save'
  sleep 2
  click_button 'Publish'
end

Then /^I should see a list of the links in the slot$/ do
  assert page.has_css?('.quicklinks')
  assert page.has_css?('li a[href="http://www.stuff.com"]', text: 'Stuff')
  assert page.has_css?('li a[href="http://www.things.com"]', text: 'Things')
end