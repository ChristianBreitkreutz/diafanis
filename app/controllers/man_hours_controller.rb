# frozen_string_literal: true

class ManHoursController < ApplicationController
  before_action :set_man_hour, only: %i[show edit update destroy]

  # GET /man_hours or /man_hours.json
  def index
    @man_hours = ManHour.all
  end

  # GET /man_hours/1 or /man_hours/1.json
  def show; end

  # GET /man_hours/new
  def new
    @man_hour = ManHour.new
  end

  # GET /man_hours/1/edit
  def edit; end

  # POST /man_hours or /man_hours.json
  def create
    @man_hour = ManHour.new(man_hour_params)

    respond_to do |format|
      if @man_hour.save
        format.html { redirect_to man_hour_url(@man_hour), notice: 'Man hour was successfully created.' }
        format.json { render :show, status: :created, location: @man_hour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @man_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /man_hours/1 or /man_hours/1.json
  def update
    respond_to do |format|
      if @man_hour.update(man_hour_params)
        format.html { redirect_to man_hour_url(@man_hour), notice: 'Man hour was successfully updated.' }
        format.json { render :show, status: :ok, location: @man_hour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @man_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /man_hours/1 or /man_hours/1.json
  def destroy
    @man_hour.destroy

    respond_to do |format|
      format.html { redirect_to man_hours_url, notice: 'Man hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_man_hour
    @man_hour = ManHour.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def man_hour_params
    params.require(:man_hour).permit(:date, :max, :planned_absences, :unplanned_absences)
  end
end
