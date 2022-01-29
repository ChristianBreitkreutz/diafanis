# frozen_string_literal: true

class SprintDataController < ApplicationController
  def new
    defined_column_names = SprintDataColumnDefinition.order(:position).map{|definition| {name: definition.name} }
    sprint_data = SprintData.new(date: Time.current, sprint_data_columns_attributes: defined_column_names)

    @sprint_date = sprint_data
  end
  
  def create
    SprintData.create!(params.require(:sprint_data).permit!)
    redirect_to sprint_data_path
  end
  
  def index
    @sprint_data = SprintData.all
  end
end