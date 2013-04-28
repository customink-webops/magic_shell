require 'spec_helper'

describe 'magic_shell_alias' do
  let(:chef_run) do
    ChefSpec::ChefRunner.new(
      cookbook_path: $cookbook_paths,
      step_into: ['magic_shell_alias']
    )
  end

  context ':add' do
    it 'is the default action' do
      chef_run.converge('alias::add_implicit')
      expect(chef_run).to add_a_magic_shell_alias('h').with_command('cd ~')
    end

    it 'creates the alias explicitly' do
      chef_run.converge('alias::add_explicit')
      expect(chef_run).to add_a_magic_shell_alias('h').with_command('cd ~')
    end
  end
end
