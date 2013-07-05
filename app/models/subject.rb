class Subject < ActiveRecord::Base
   
   attr_accessible :title, :body, :name, :position, :visible
   
   has_one :page
   
   scope :visible, where(:visible => true)
   scope :invisible, where(:visible => false)
   scope :search, lambda {|query| where(["name LIKE ?", "%#[{query}"])}
   
end
