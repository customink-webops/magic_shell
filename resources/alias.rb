actions :add, :remove

unless Gem::Version.new(Chef::VERSION) < Gem::Version.new('0.10.10')
  default_action :add
end

attribute :alias_name, :kind_of => String, :name_attribute => true
attribute :command, :kind_of => String, :default => :add
