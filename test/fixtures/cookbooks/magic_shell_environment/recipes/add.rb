magic_shell_environment 'RAILS_ENV' do
  value 'production'
end

magic_shell_environment 'PATH' do
  filename 'NODE_ENV'
  value '/usr/local/node-binary/bin:$PATH'
end