require_relative '../../../kitchen/data/spec_helper'

describe file('/etc/profile.d/h.sh') do
  it { should be_file }
  its(:content) { should include('alias h="cd ~"') }
end
