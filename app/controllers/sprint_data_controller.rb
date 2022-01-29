# frozen_string_literal: true

class SprintDataController < ApplicationController
  def new
    sprint_data = SprintData.new(date: Time.current, sprint_data_columns_attributes: [
                                   { name: 'approved', story_points: 1 },
                                   { name: 'done' }
                                 ])
    #SprintDataColumn.new(sprint_data_id: sprint_data.id, name: 'approved', story_points: 1)

    @sprint_date = sprint_data
  end
  
  def create
    SprintData.create!(params.require(:sprint_data).permit!)
    redirect_to :sprint_data_path
  end
  
  def index
    @sprint_data = SprintData.all
  end
end