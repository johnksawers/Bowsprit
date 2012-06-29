class QuestionSetsController < ApplicationController
    before_filter :authenticate_user!
    # GET /question_sets
    def index
        redirect_to root_path
    end

    # GET /question_sets/1
    # GET /question_sets/1.json
    def show
        @qs = QuestionSet.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @qs }
        end
    end

    # GET /question_sets/new
    # GET /question_sets/new.json
    def new
        @qs = current_user.question_sets.build

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @qs }
        end
    end

    # GET /question_sets/1/edit
    def edit
        @qs = QuestionSet.find(params[:id])
    end

    # POST /question_sets
    # POST /question_sets.json
    def create
        @qs = current_user.question_sets.build(params[:question_set])

        respond_to do |format|
            if @qs.save
                format.html { redirect_to @qs, notice: 'QuestionSet was successfully created.' }
                format.json { render json: @qs, status: :created, location: @qs }
            else
                format.html { render action: "new" }
                format.json { render json: @qs.errors, status: :unprocessable_entity }
            end
        end
    end

    # PUT /question_sets/1
    # PUT /question_sets/1.json
    def update
        @qs = QuestionSet.find(params[:id])

        respond_to do |format|
            if @qs.update_attributes(params[:question_set])
                format.html { redirect_to @qs, notice: 'QuestionSet was successfully updated.' }
                format.json { head :ok }
            else
                format.html { render action: "edit", notice: 'There was an error updating' }
                format.json { render json: @qs.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /question_sets/1
    # DELETE /question_sets/1.json
    def destroy
        @qs = QuestionSet.find(params[:id])
        @qs.destroy

        respond_to do |format|
            format.html { redirect_to root_url, notice: "QuestionSet #{@qs.name} deleted" }
            format.json { head :ok }
        end
    end
end
