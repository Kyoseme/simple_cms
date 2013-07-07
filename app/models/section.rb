class Section < ActiveRecord::Base
  
   attr_accessible :title, :body, :page_id, :name, :position, :visible, :content_type,
    :content, :section_edit

    belongs_to :page
    has_many :section_edits
    has_many :editors, :through => :section_edits, :class_name => "AdminUser"
    

end
