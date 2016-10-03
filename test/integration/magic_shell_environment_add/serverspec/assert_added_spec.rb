require_relative '../../../kitchen/data/spec_helper'

describe file('/etc/profile.d/RAILS_ENV.sh') do
  it { should be_file }
  its(:content) { should include('export RAILS_ENV="production"') }
end

describe file('/etc/profile.d/NODE_ENV.sh') do
  it { should be_file }
  its(:content) { should include('export PATH="/usr/local/node-binary/bin:$PATH"') }
end
