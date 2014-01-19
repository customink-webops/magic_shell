require 'spec_helper'

describe 'magic_shell_alias' do
  let(:chef_run) { ChefSpec::Runner.new }

  it 'adds a new magic_shell_alias' do
    chef_run.converge('magic_shell_alias::add')
    expect(chef_run).to add_magic_shell_alias('h').with(command: 'cd ~')
  end

  it 'removes the magic_shell_alias' do
    chef_run.converge('magic_shell_alias::remove')
    expect(chef_run).to remove_magic_shell_alias('h')
  end
end
