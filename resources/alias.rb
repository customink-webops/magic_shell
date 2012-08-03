actions :add, :remove

default_action :create

attribute :alias_name, :kind_of => String, :name_attribute => true
attribute :command, :kind_of => String, :default => :add
