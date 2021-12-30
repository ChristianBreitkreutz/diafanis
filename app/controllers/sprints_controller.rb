# frozen_string_literal: true

class SprintsController < ApplicationController
  def new
    @sprint = Sprint.new(
      iteration_id: SecureRandom.alphanumeric(10),
      name: SecureRandom.alphanumeric(20),
      description: SecureRandom.alphanumeric(40)
    )
  end

  def create
    Sprint.create!(params.require(:sprint).permit!)

    redirect_to root_path
  end

  def index
    @sprints = Sprint.all
  end

  def show
    @sprint = Sprint.find(params.require(:id))
  end

  def update
    Sprint.find(params.require(:id)).update!(
      params.require(:sprint).permit!
    )
    redirect_to root_path
  end

  def destroy
    Sprint.find(params.require(:id)).destroy

    redirect_to root_path
  end
end
