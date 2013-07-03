class AdminUser < ActiveRecord::Base
  
   attr_accessible :title, :body, :username, :first_name, :last_name, :email,
   :hashed_password, :salt
  # set_table_name("admin_users")
  
  scope :named, lambda {|first,last| where(:first_name => first, :last_name => last)}
  
  
  
end
