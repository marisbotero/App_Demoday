class UserUnitsController < ApplicationController
  before_action :set_user_unit, only: [:show, :edit, :update, :destroy]

  # GET /user_units
  # GET /user_units.json
  def index
    @user_units = UserUnit.all
  end

  # GET /user_units/1
  # GET /user_units/1.json
  def show
  end

  # GET /user_units/new
  def new
    @user_unit = UserUnit.new
  end

  # GET /user_units/1/edit
  def edit
  end

  # POST /user_units
  # POST /user_units.json
  def create
    @user_unit = UserUnit.new(user_unit_params)

    respond_to do |format|
      if @user_unit.save
        format.html { redirect_to @user_unit, notice: 'User unit was successfully created.' }
        format.json { render :show, status: :created, location: @user_unit }
      else
        format.html { render :new }
        format.json { render json: @user_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_units/1
  # PATCH/PUT /user_units/1.json
  def update
    respond_to do |format|
      if @user_unit.update(user_unit_params)
        format.html { redirect_to @user_unit, notice: 'User unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_unit }
      else
        format.html { render :edit }
        format.json { render json: @user_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_units/1
  # DELETE /user_units/1.json
  def destroy
    @user_unit.destroy
    respond_to do |format|
      format.html { redirect_to user_units_url, notice: 'User unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_unit
      @user_unit = UserUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_unit_params
      params.require(:user_unit).permit(:user_id, :unit_id, :complete, :coment, :losingunit)
    end
end
