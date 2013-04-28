require 'spec_helper'

describe 'magic_shell_environment' do
  let(:chef_run) do
    ChefSpec::ChefRunner.new(
      cookbook_path: $cookbook_paths,
      step_into: ['magic_shell_environment']
    )
  end

  context ':add' do
    it 'is the default action' do
      chef_run.converge('environment::add_implicit')
      expect(chef_run).to set_a_magic_shell_environment_variable('RAILS_ENV').with_value('production')
    end

    it 'creates the alias explicitly' do
      chef_run.converge('environment::add_explicit')
      expect(chef_run).to set_a_magic_shell_environment_variable('RAILS_ENV').with_value('production')
    end
  end
end
