class ScriptsController < ApplicationController
    before_filter :authenticate_user!
    # GET /scripts
    def index
        redirect_to root_path
    end

    # GET /scripts/1
    # GET /scripts/1.json
    def show
        @s = Script.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @s }
        end
    end

    # GET /scripts/new
    # GET /scripts/new.json
    def new
        @s = current_user.scripts.build

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @s }
        end
    end

    # GET /scripts/1/edit
    def edit
        @s = Script.find(params[:id])
    end

    # POST /scripts
    # POST /scripts.json
    def create
        @s = current_user.scripts.build(script_params)

        respond_to do |format|
            if @s.save
                format.html { redirect_to @s, notice: 'Script was successfully created.' }
                format.json { render json: @s, status: :created, location: @s }
            else
                format.html { render action: "new" }
                format.json { render json: @s.errors, status: :unprocessable_entity }
            end
        end
    end

    # PUT /scripts/1
    # PUT /scripts/1.json
    def update
        @s = Script.find(params[:id])

        respond_to do |format|
            if @s.update_attributes(script_params)
                format.html { redirect_to @s, notice: 'Script was successfully updated.' }
                format.json { head :ok }
            else
                format.html { render action: "edit", notice: 'There was an error updating' }
                format.json { render json: @s.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /scripts/1
    # DELETE /scripts/1.json
    def destroy
        @s = Script.find(params[:id])
        @s.destroy

        respond_to do |format|
            format.html { redirect_to root_url, notice: "Script #{@s.name} deleted" }
            format.json { head :ok }
        end
    end

  def script_params
    params.require(:script).permit(:name,
         questions_attributes: [:title, :subtitle, :order,:all],
         interviews_attributes: [:name, :script_id])
  end
end
