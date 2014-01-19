require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |config|
  config.before(:all) do
    config.os = backend(Serverspec::Commands::Base).check_os
  end
end
