# frozen_string_literal: true

class SprintDataColumnDefinitionsController < ApplicationController
  before_action :set_sprint_data_column_definition, only: %i[show edit update destroy]

  # GET /sprint_data_column_definitions or /sprint_data_column_definitions.json
  def index
    @sprint_data_column_definitions = SprintDataColumnDefinition.all
  end

  # GET /sprint_data_column_definitions/1 or /sprint_data_column_definitions/1.json
  def show; end

  # GET /sprint_data_column_definitions/new
  def new
    @sprint_data_column_definition = SprintDataColumnDefinition.new
  end

  # GET /sprint_data_column_definitions/1/edit
  def edit; end

  # POST /sprint_data_column_definitions or /sprint_data_column_definitions.json
  def create
    @sprint_data_column_definition = SprintDataColumnDefinition.new(sprint_data_column_definition_params)

    respond_to do |format|
      if @sprint_data_column_definition.save
        format.html do
          redirect_to sprint_data_column_definition_url(@sprint_data_column_definition),
                      notice: 'Sprint data column definition was successfully created.'
        end
        format.json { render :show, status: :created, location: @sprint_data_column_definition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sprint_data_column_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprint_data_column_definitions/1 or /sprint_data_column_definitions/1.json
  def update
    respond_to do |format|
      if @sprint_data_column_definition.update(sprint_data_column_definition_params)
        format.html do
          redirect_to sprint_data_column_definition_url(@sprint_data_column_definition),
                      notice: 'Sprint data column definition was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @sprint_data_column_definition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sprint_data_column_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_data_column_definitions/1 or /sprint_data_column_definitions/1.json
  def destroy
    @sprint_data_column_definition.destroy
    SprintDataColumn.where(name: @sprint_data_column_definition.name).destroy_all

    respond_to do |format|
      format.html do
        redirect_to sprint_data_column_definitions_url,
                    notice: 'Sprint data column definition was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_sprint_data_column_definition
    @sprint_data_column_definition = SprintDataColumnDefinition.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def sprint_data_column_definition_params
    params.require(:sprint_data_column_definition).permit(:name, :position)
  end
end
