class InterestGroupsController < ApplicationController
  before_action :set_interest_group, only: [:show, :edit, :update, :destroy]

  # GET /interest_groups
  # GET /interest_groups.json
  def index
    @interest_groups = InterestGroup.all
  end

  # GET /interest_groups/1
  # GET /interest_groups/1.json
  def show
  end

  # GET /interest_groups/new
  def new
    @interest_group = InterestGroup.new
  end

  # GET /interest_groups/1/edit
  def edit
  end

  # POST /interest_groups
  # POST /interest_groups.json
  def create
    @interest_group = InterestGroup.new(interest_group_params)

    respond_to do |format|
      if @interest_group.save
        format.html { redirect_to @interest_group, notice: 'Interest group was successfully created.' }
        format.json { render :show, status: :created, location: @interest_group }
      else
        format.html { render :new }
        format.json { render json: @interest_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_groups/1
  # PATCH/PUT /interest_groups/1.json
  def update
    respond_to do |format|
      if @interest_group.update(interest_group_params)
        format.html { redirect_to @interest_group, notice: 'Interest group was successfully updated.' }
        format.json { render :show, status: :ok, location: @interest_group }
      else
        format.html { render :edit }
        format.json { render json: @interest_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_groups/1
  # DELETE /interest_groups/1.json
  def destroy
    @interest_group.destroy
    respond_to do |format|
      format.html { redirect_to interest_groups_url, notice: 'Interest group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_group
      @interest_group = InterestGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_group_params
      params.require(:interest_group).permit(:name, :tag)
    end
end
