# frozen_string_literal: true

class SprintDataController < ApplicationController
  def new
    sprint_data = SprintData.new(date: Time.current)
    definitions = SprintDataColumnDefinition.order(:position)
    sprint_data.sprint_data_columns = definitions.map do |definition|
      SprintDataColumn.new(sprint_data_column_definition_id: definition.id)
    end
    @sprint_date = sprint_data
  end

  def destroy
    SprintData.find(params.require(:id)).destroy!
    redirect_to sprint_data_path
  end

  def create
    SprintData.create!(params.require(:sprint_data).permit!)
    redirect_to sprint_data_path
  end

  def index
    @sprint_data = SprintData.all
    @column_names = sprint_data_column_names
  end

  def sprint_data_column_names
    SprintDataColumnDefinition.order(:position).pluck(:name)
  end

  def edit
    @sprint_datum = SprintData.find(params.require(:id))
  end

  def update
    SprintData.find(params.require(:id)).update!(
      params.require(:sprint_data).permit!
    )
    redirect_to sprint_data_path
  end
end
