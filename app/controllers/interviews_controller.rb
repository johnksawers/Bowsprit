class InterviewsController < ApplicationController
    before_filter :authenticate_user!
    # GET /interviews
    # GET /interviews.json
    def index
        @s = Script.find(params[:script_id])
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @interviews }
        end
    end

    # GET /interviews/1
    # GET /interviews/1.json
    def show
        @interview = Interview.find(params[:id])
        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @interview }
        end
    end

    # GET /interviews/new
    # GET /interviews/new.json
    def new
        @s        = Script.find(params[:id])
        @interview = @s.interviews.build
        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @interview }
        end
    end

    # GET /interviews/1/edit
    def edit
        @s        = Script.find(params[:script_id], :include => [:questions])
        @interview = Interview.find(params[:id])
        # if no answers are present, create all the empty ones needed for the interview
        # one for each question, this way we don't have to create them over ajax, and we have the IDs
        # If there are any answers, don't create any, or it will lead to duplicates
        if (@interview.answers.empty?)
            @s.questions.each do |q|
                @interview.answers.create(:response => '', :question_id => q.id)
            end
        end
    end

    # POST /interviews
    # POST /interviews.json
    def create
        @s        = Script.find(params[:interview][:script_id])
        @interview = Interview.new(interview_params)
        respond_to do |format|
            if @interview.save
                format.html { redirect_to edit_script_interview_path(@s, @interview), notice: 'Interview was successfully created.' }
                format.json { render json: @interview, status: :created, location: @interview }
            else
                format.html { render action: "new" }
                format.json { render json: @s.errors, status: :unprocessable_entity }
            end
        end
    end

    # PUT /interviews/1
    # PUT /interviews/1.json
    def update
        @s        = Script.find(params[:script_id], :include => [:questions])
        @interview = Interview.find(params[:id])

        if @interview.update_attributes(interview_params)
            render :text => 'Interview Saved'
        else
            format.json { render json: @interview.errors, status: :unprocessable_entity }
        end
    end

    # DELETE /interviews/1
    # DELETE /interviews/1.json
    def destroy
        @interview = Interview.find(params[:id])
        @interview.destroy

        respond_to do |format|
            format.html { redirect_to root_url, notice: "Interview #{@interview.name} deleted" }
            format.json { head :ok }
        end
    end

    def interview_params
      params.require(:interview).permit(:name, :script_id,
          answers_attributes: [:id, :response, :response_matches, :user_id, :question_id, :interview_id])
    end
end
