# Load the Rails application.
require_relative 'application'

config.gem "rspec", :lib => false, :version => ">= 1.2.9"
config.gem "rspec-rails", :lib => false, :version => ">= 1.2.9"

# Initialize the Rails application.
Rails.application.initialize!