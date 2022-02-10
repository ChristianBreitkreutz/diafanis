# frozen_string_literal: true

class SprintDataController < ApplicationController
  def new
    sprint_data = SprintData.new(date: Time.current)
    definitions = SprintDataColumnDefinition.order(:position)
    sprint_data.sprint_data_columns = definitions.map do |definition|
      SprintDataColumn.new(sprint_data_column_definition_id: definition.id)
    end
    @sprint_date = sprint_data
    @possible_sprints = Sprint.all.collect { |s| [s.name, s.id] }
  end

  def destroy
    SprintData.find(params.require(:id)).destroy!
    redirect_to sprint_path(id: params.require(:sprint_id))
  end

  def create
    form_params = params.require(:sprint_data).permit!
    sprint_id = params.require(:sprint_id)
    sprint_data = SprintData.new(form_params.merge({ sprint_id: sprint_id }))

    if (sprint_data.valid?)
      sprint_data.save
      redirect_to sprint_path(id: sprint_id)
    else
      redirect_to new_sprint_sprint_datum_path(sprint_id: sprint_id)
    end
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
    redirect_to sprint_path(id: params.require(:sprint_id))
  end
end
