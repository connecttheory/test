class Image < ActiveRecord::Base
  belongs_to :project

  include Rails.application.routes.url_helpers
  mount_uploader :carimage, ImageUploader
  
 	
  def self.image_dim_width(filepath)
    @image ||= Magick::Image.read(filepath).first.columns
  end
  def self.image_dim_height(filepath)
    @image ||= Magick::Image.read(filepath).first.rows
  end
	
  def to_jq_upload
  {
    "name" => read_attribute(:carimage),
    "size" => carimage.size,
    "url" => carimage.url,
    "thumbnail_url" => carimage.thumb.url,
    "delete_url" => image_path(:id => id),
    "delete_type" => "DELETE" 
   }
  end
	
	
end
