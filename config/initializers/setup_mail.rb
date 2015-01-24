if Rails.env.development? || Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:        'smtp.sendgrid.net',
    port:           '587',
    authentication: :plain,
    user_name:      Rails.application.secrets.sendgrid_username ? Rails.env.development : ENV['SENDGRID_USERNAME'],
    password:      Rails.application.secrets.sendgrid_password ? Rails.env.development : ENV['SENDGRID_PASSWORD'],
    domain:         'heroku.com',
    enable_starttls_auto: true
  }
end