Rails.application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :authentication => :plain,
    :address => 'smtp.gmail.com',
    :port => 587,
    :domain => 'gmail',
    :user_name => 'tucomparecencia@gmail.com',
    :password => 'anibal01'
  }
end
