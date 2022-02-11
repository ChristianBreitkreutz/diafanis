# frozen_string_literal: true

class SprintsController < ApplicationController
  def new
    @sprint = Sprint.new(
      iteration_id: SecureRandom.alphanumeric(10),
      name: SecureRandom.alphanumeric(20),
      description: SecureRandom.alphanumeric(40),
      member_data: { cb: 1, mk: 1, f: 0.4 },
      start_time: Time.current,
      end_time: 2.weeks.from_now
    )
  end

  def create
    myparams = params.require(:sprint).permit(
      :iteration_id, :name, :description, :member_data, :start_time, :end_time
    )

    sprint = Sprint.new(myparams)

    if sprint.valid?
      sprint.save
      redirect_to root_path
    else
      @sprint = sprint
      redirect_to new_sprint_path
    end
  end

  def index
    @sprints = Sprint.all.order(created_at: :desc)
  end

  def show
    @sprint = Sprint.find(params.require(:id))
    @sprint_data = SprintData.where(sprint: @sprint)
  end

  def update
    Sprint.find(params.require(:id)).update!(
      params.require(:sprint).permit!
    )
    redirect_to sprint_path(id: params.require(:id))
  end

  def destroy
    Sprint.find(params.require(:id)).destroy

    redirect_to root_path
  end
end
