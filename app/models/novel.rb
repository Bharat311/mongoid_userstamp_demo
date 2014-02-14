class Novel
  include Mongoid::Document
  include Mongoid::Userstamp

  # When no 'config' is specified using mongoid_userstamp, :default config is used.

  field :title, type: String
  field :description, type: String
end
