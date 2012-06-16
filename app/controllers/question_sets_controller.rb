class QuestionSetsController < ApplicationController
    # GET /question_sets
    # GET /question_sets.json
    def index
        @questionsets = QuestionSet.all

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @questionsets }
        end
    end

    # GET /question_sets/1
    # GET /question_sets/1.json
    def show
        @questionset = QuestionSet.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @questionset }
        end
    end

    # GET /question_sets/new
    # GET /question_sets/new.json
    def new
        @questionset = current_user.questionsets.build

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @questionset }
        end
    end

    # GET /question_sets/1/edit
    def edit
        @questionset = QuestionSet.find(params[:id])
    end

    # POST /question_sets
    # POST /question_sets.json
    def create
        @questionset = current_user.questionsets.build(params[:questionset])

        respond_to do |format|
            if @questionset.save
                format.html { redirect_to @questionset, notice: 'QuestionSet was successfully created.' }
                format.json { render json: @questionset, status: :created, location: @questionset }
            else
                format.html { render action: "new" }
                format.json { render json: @questionset.errors, status: :unprocessable_entity }
            end
        end
    end

    # PUT /question_sets/1
    # PUT /question_sets/1.json
    def update
        @questionset = QuestionSet.find(params[:id])

        respond_to do |format|
            if @questionset.update_attributes(params[:questionset])
                format.html { redirect_to @questionset, notice: 'QuestionSet was successfully updated.' }
                format.json { head :ok }
            else
                format.html { render action: "edit", notice: 'There was an error updating' }
                format.json { render json: @questionset.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /question_sets/1
    # DELETE /question_sets/1.json
    def destroy
        @questionset = QuestionSet.find(params[:id])
        @questionset.destroy

        respond_to do |format|
            format.html { redirect_to root_url, notice: "QuestionSet #{@questionset.name} deleted" }
            format.json { head :ok }
        end
    end
end
