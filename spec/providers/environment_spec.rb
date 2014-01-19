require 'spec_helper'

describe 'magic_shell_environment::add' do
  let(:chef_run) { ChefSpec::Runner.new }

  it 'adds a new magic_shell_environment' do
    chef_run.converge('magic_shell_environment::add')
    expect(chef_run).to add_magic_shell_environment('RAILS_ENV')
      .with(value: 'production')
  end

  it 'removes the magic_shell_environment' do
    chef_run.converge('magic_shell_environment::remove')
    expect(chef_run).to remove_magic_shell_environment('RAILS_ENV')
  end
end
