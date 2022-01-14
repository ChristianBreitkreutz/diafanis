class SprintWorker
  include Sidekiq::Worker

  def perform
    Sprint.create!(
      iteration_id: "cron + #{SecureRandom.alphanumeric(10)}",
      name: SecureRandom.alphanumeric(20),
      description: SecureRandom.alphanumeric(40)
    )
  end
end
