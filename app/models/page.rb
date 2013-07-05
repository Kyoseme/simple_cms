class Page < ActiveRecord::Base

   attr_acc essible :title, :body, :subject_id, :name, :permalink, :position, :visible
  
   belongs_to :subject
  
end
