class UnitsController < ApplicationController

  before_action :set_course
  before_filter :authenticate_user!, only: [:show]

   def set_course
    @course= Course.find(params[:course_id])
    end 

  

  # GET /units
  # GET /units.json
  def index
    @course= Course.find(params[:course_id])
    @units = @course.units.all
     
  end

  # GET /units/1
  # GET /units/1.json
  def show
    @course= Course.find(params[:course_id])
   @unit= @course.units.find(params[:id]) 
   current_user.courses << @course unless current_user.courses.include?(@course)
  end

  # GET /units/new
  def new
    @course= Course.find(params[:course_id])
    @unit = @course.units.new
    
  end

  # GET /units/1/edit
  def edit
    @course= Course.find(params[:course_id])
    @unit= @course.units.find(params[:id]) 
  end

  # POST /units
  # POST /units.json
  def create
    @course= Course.find(params[:course_id])
   
    @unit=@course.units.new(unit_params)
       
    @course.save
    redirect_to course_units_path
  end

  def compare
    @course = Course.find(params[:course_id])
    @unit = @course.units.find(params[:id])
    simulador = params[:simulador]

    respuesta = @unit.answer.downcase.gsub(/\s+/, "") == simulador.downcase.gsub(/\s+/, "") 
    if respuesta
      current_user.units << @unit unless current_user.units.include?(@unit)
    end
    respuesta = render(partial: "respuesta", locals: { respuesta: respuesta })
    #render json: { respuesta: respuesta }, status: :ok
  end

 


  # PATCH/PUT /units/1
  # PATCH/PUT /units/1.json
  def update
    @unit= @course.units.find(params[:id])
    @unit.update(unit_params) 
    redirect_to course_units_path


    
  end

  # DELETE /units/1
  # DELETE /units/1.json
  def destroy
     @unit= @course.units.find(params[:id])
    @unit.destroy
    redirect_to course_units_path
  end
   

  private
    # Use callbacks to share common setup or constraints between actions.
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_params
      params.require(:unit).permit(:description, :name, :course_id, :content, :simulator, :answer, :content2, :content3)

    end
end
