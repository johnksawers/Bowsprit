When /^I have no QuestionSets$/ do
  find_user.question_sets=[]
  find_user.save
end

When /^I visit my dashboard$/ do
  visit '/'
end


Then /^I should see the no interviews message$/ do
  page.should have_content "No Interviews set up"
end