actions :add, :remove
default_action :add

attribute :host,               :kind_of => String, :name_attribute => true
attribute :options,            :kind_of => Hash
attribute :user,               :kind_of => String
attribute :path,               :kind_of => String
attribute :system_config_path, :kind_of => String, :default => '/etc/ssh/ssh_config'

def initialize(*args)
  super
  @action = :add
end
