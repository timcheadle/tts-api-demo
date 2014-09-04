require 'capybara/rails'
require 'capybara/rspec'

RSpec.configure do |config|
  #config.include Rails.application.routes.url_helpers

  Capybara.javascript_driver = :webkit
end
