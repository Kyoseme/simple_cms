class AdminUser < ActiveRecord::Base
  
   attr_accessible :title, :body, :username, :first_name, :last_name, :email,
   :hashed_password, :salt, :section_edit
  # set_table_name("admin_users")
  
  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, :through => :section_edits
  
  scope :named, lambda {|first,last| where(:first_name => first, :last_name => last)}
  
  
end
