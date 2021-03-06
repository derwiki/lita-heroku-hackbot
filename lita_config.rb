Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "hackbot"

  # The locale code for the language to use.
  config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :slack
  config.robot.admins = []
  config.adapters.slack.token = ENV["SLACK_TOKEN"]


  Lita.configure do |c|
    c.redis[:url] = ENV["REDIS_URL"]
    c.http.port = ENV["PORT"]
  end
end
