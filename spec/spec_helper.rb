require 'chefspec'

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each { |f| require f }

$cookbook_paths = [
  File.expand_path('../../..', __FILE__),
  File.expand_path('../cookbooks', __FILE__)
]

RSpec.configure do |c|
  c.filter_run :focus => true
  c.run_all_when_everything_filtered = true
end
