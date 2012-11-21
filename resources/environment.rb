actions :add, :remove

default_action :add

attribute :environment_variable, :kind_of => String, :name_attribute => true
attribute :value, :kind_of => String, :default => :add
