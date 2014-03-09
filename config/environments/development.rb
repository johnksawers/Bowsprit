Bowsprit::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # ActionMailer Config
  config.action_mailer.default_url_options = { :host => 'bowsprit.dev:777' }
  config.action_mailer.delivery_method = :smtp
  # change to true to allow email to be sent during development
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"

    config.action_mailer.smtp_settings = {
      :address   => "smtp.mandrillapp.com",
      :port      => 587,
      :user_name => ENV["MANDRILL_USERNAME"],
      :password  => ENV["MANDRILL_API_KEY"]
    }

  config.eager_load = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Expands the lines which load the assets
  config.assets.debug = true

  config.ember.variant = :development
end