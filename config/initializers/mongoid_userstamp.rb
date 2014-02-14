# Defining an :admin config for Mongoid:Userstamp
Mongoid::Userstamp.config(:admin) do |c|

  c.user_reader = :current_admin
  c.user_model = :admin

  c.created_column = :created_by
  c.created_accessor = :creator

  c.updated_column = :updated_by
  c.updated_accessor = :updater

end

# Defining a :visitor config for Mongoid:Userstamp
Mongoid::Userstamp.config(:visitor) do |c|

  c.user_reader = :current_visitor
  c.user_model = :visitor

  c.created_column = :c_by
  c.created_accessor = :book_creator

  c.updated_column = :u_by
  c.updated_accessor = :book_updater

end

# Overriding the :default config for Mongoid::Userstamp.
Mongoid::Userstamp.config do |c|

  c.created_accessor = :writer
  c.updated_accessor = :editor

end
