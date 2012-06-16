module ApplicationHelper
  def link_to_remove_questions(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_questions(this)")
  end
  
  def link_to_add_questions(name, f)
    new_object = f.object.class.reflect_on_association(:questions).klass.new
    fields = f.fields_for(:questions, new_object, :child_index => "new_question") do |builder|
      render("question_fields", :f => builder)
    end
    link_to_function(name, "add_questions(this, \"#{escape_javascript(fields)}\")",:class => 'btn btn-primary')
  end
end

