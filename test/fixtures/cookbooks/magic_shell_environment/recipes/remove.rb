include_recipe 'magic_shell_environment::add'

magic_shell_environment 'RAILS_ENV' do
  action :remove
end
