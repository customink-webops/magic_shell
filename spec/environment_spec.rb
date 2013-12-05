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

    it 'variable expansion is disabled by default' do
      chef_run.converge('environment::add_without_expansion')
      expect(chef_run).to set_a_magic_shell_environment_variable('PATH').with_value('/my/custom/path:$PATH').with_quote("'")
    end

    it 'variable expansion can be enabled' do
      chef_run.converge('environment::add_with_expansion')
      expect(chef_run).to set_a_magic_shell_environment_variable('PATH').with_value('/my/custom/path:$PATH').with_quote('"')
    end
  end
end
