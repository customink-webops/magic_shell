require_relative '../../../kitchen/data/spec_helper'

describe file('/etc/profile.d/RAILS_ENV.sh') do
  it { should be_file }
  its(:content) { should include('export RAILS_ENV="production"') }
end
