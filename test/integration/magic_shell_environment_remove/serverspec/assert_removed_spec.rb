require_relative '../../../kitchen/data/spec_helper'

describe file('/etc/profile.d/RAILS_ENV.sh') do
  it { should_not be_file }
end

describe file('/etc/profile.d/NODE_ENV.sh') do
  it { should_not be_file }
end
