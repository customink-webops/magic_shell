actions :add, :remove

unless Gem::Version.new(Chef::VERSION) < Gem::Version.new('0.10.10')
  default_action :add
end

attribute :environment_variable, :kind_of => String, :name_attribute => true
attribute :value, :kind_of => String, :default => :add
