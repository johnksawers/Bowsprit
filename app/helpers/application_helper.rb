module ApplicationHelper
    def link_to_remove_questions(name, f)
        f.hidden_field(:_destroy) + link_to('Remove','#', :class => 'remove_question_button')
    end

    def build_dynamic_question_form(f,question)
        new_object = f.object.class.reflect_on_association(:questions).klass.new
        fields = f.fields_for(:questions, new_object, :child_index => 'new_question') do |builder|
            render('question_fields', :f => builder, :question => question)
        end
        escape_javascript(fields)
    end
    def edit_link(path)
        content_tag :a, :href => path, :class => 'edit-btn' do
            content_tag :i, '', :class => 'icon-edit'
        end
    end
end