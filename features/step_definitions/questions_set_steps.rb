def delete_question_sets
    QuestionSet.delete_all
end

def add_question_set(qs_name)
    delete_question_sets
    visit new_question_set_path
    fill_in "Name", :with => qs_name
    click_button "Save"
end

When /^I have no QuestionSets$/ do
    delete_question_sets
end

When /^I have a QuestionSet$/ do
  delete_question_sets
  add_question_set("Test QuestionSet")
end

When /^I visit my dashboard$/ do
  visit '/'
end


Then /^I should see the no interviews message$/ do
  page.should have_content "No Interviews set up"
end

Then /^I should see the QuestionSet listed$/ do
  page.should have_content "Test QuestionSet"
end