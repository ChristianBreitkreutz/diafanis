# frozen_string_literal: true

class SprintWorker
  include Sidekiq::Worker

  def perform(cron)
    Sprint.create!(
      iteration_id: SecureRandom.alphanumeric(10).to_s,
      name: 'autogenerated sprints',
      description: "'#{cron}' - '#{Time.current}'",
      member_data: { some: 'data' },
      start_time: Time.current,
      end_time: 2.weeks.from_now
    )
  end
end
