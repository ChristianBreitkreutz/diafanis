# frozen_string_literal: true

class SprintDataController < ApplicationController
  def new

    defined_column_names = SprintDataColumnDefinition.order(:position).map { |x| { sprint_data_column_definition_id: x.id } }


    sprint_data = SprintData.new(date: Time.current)
    #TODO hier ist es jetzt kaputt
    @sprint_data sprint_data.sprint_data_columns_sorted
    @sprint_data_columns = Sprint
    @sprint_date = sprint_data
  end

  def create
    SprintData.create!(params.require(:sprint_data).permit!)
    redirect_to sprint_data_path
  end

  def index
    @sprint_data = SprintData.all
    @column_names = SprintDataColumnDefinition.order(:position).pluck(:name)
  end
end
