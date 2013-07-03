class Section < ActiveRecord::Base
   attr_accessible :title, :body, :page_id, :name, :position, :visible, :content_type,
    :content

end
