def delete_scripts
    Script.delete_all
end

def add_script(qs_name)
    delete_scripts
    visit new_script_path
    fill_in "Name", :with => qs_name
    click_button "Save"
end

When /^I have no Scripts$/ do
    delete_scripts
end

When /^I have a Script$/ do
  delete_scripts
  add_script("Test Script")
end

When /^I visit my dashboard$/ do
  visit '/'
end


Then /^I should see the no interviews message$/ do
  page.should have_content "No Interviews set up"
end

Then /^I should see the Script listed$/ do
  page.should have_content "Test Script"
end