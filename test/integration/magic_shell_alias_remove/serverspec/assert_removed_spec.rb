require_relative '../../../kitchen/data/spec_helper'

describe file('/etc/profile.d/h.sh') do
  it { should_not be_file }
end
