# frozen_string_literal: true

class SprintsController < ApplicationController
  def new
    @sprint = Sprint.new(
      iteration_id: SecureRandom.alphanumeric(10),
      name: SecureRandom.alphanumeric(20),
      description: SecureRandom.alphanumeric(40),
      member_data: {cb: 1, mk: 1, f: 0.4},
      start_time: Time.current,
      end_time: Time.current + 2.weeks
    )
  end

  def create
    myparams = params.require(:sprint).permit(
      :iteration_id, :name, :description, :member_data, :start_time, :end_time
    )

    Sprint.create!(myparams)

    redirect_to root_path
  end

  def index
    @sprints = Sprint.all.order(created_at: :desc)
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
