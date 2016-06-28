class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:index, :show, :create, :update, :destroy]

  # GET /workouts
  # GET /workouts.json
  def index
    @workouts = Workout.all

    render json: @workouts
  end

  # GET /workouts/1
  # GET /workouts/1.json
  def show
    render json: @workout
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      render json: @workout, status: :created, location: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    @workout = Workout.find(params[:id])

    if @workout.update(one_workout_params)
      head :no_content
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy

    head :no_content
  end

  private

  def set_workout
    @workout = Workout.find(params[:id])
  end

  def workout_params
    params.require(:workouts).permit(:user_id, :id, :cardio_desc, :cardio_date,
                                     :cardio_duration, :cardio_distance,
                                     :cardio_notes)
  end

  def one_workout_params
    params.require(:workout).permit(:user_id, :id, :cardio_desc, :cardio_date,
                                     :cardio_duration, :cardio_distance,
                                     :cardio_notes)
  end
end
