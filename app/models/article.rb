class Article
  include Mongoid::Document
  include Mongoid::Userstamp

  mongoid_userstamp :admin

  field :title, type: String
  field :body, type: String
end
