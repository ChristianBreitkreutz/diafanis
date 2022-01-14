class SprintWorker
  include Sidekiq::Worker

  def perform
    puts "Hello sprint"
  end
end
