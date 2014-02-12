class Novel
  include Mongoid::Document
  include Mongoid::Userstamp

  mongoid_userstamp

  field :title, type: String
  field :description, type: String
end
