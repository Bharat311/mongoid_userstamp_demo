class Book
  include Mongoid::Document
  include Mongoid::Userstamp

  mongoid_userstamp :visitor

  field :title, type: String
  field :description, type: String
end
