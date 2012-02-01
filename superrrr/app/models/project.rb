class Project < ActiveRecord::Base
	
  LAYOUTS_NAMES = {
    1 => "Default",
    2 => "Layout 2",
    3 => "Layout 3",
    4 => "Layout 4",
    5 => "Layout 5"
  }
  
  def layout_name
  	LAYOUTS_NAMES[layout.to_i]
  end
  
  def self.layout_name_options
    LAYOUTS_NAMES.to_a.sort
  end
  
  belongs_to :user
  has_many :images, :dependent => :destroy
  has_many :videos, :dependent => :destroy
  
  validates_presence_of :title
  
  scope :visible, where(:visible => true)
  scope :invisible, where(:visible => false)
  scope :sorted, order('projects.created_at ASC')
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}
  
	#attr_protected :title, :description, :client, :project_category, :visible
	#attr_accessor :
	
  def self.lastest_image(project, isBig)
    image = project.images.last
    if !image.blank?
        if isBig
          return image.carimage_url.to_s
        else
          return image.carimage_url(:thumb).to_s
        end
    else
        return "project_thum.png"
    end        
  end
  
  def self.image_thumbnail(project, isBig=false)
    image = project.images.find_by_id(project.custom_image_thumbnail)
    if !image.blank?
        if isBig
          return image.carimage_url.to_s
        else
          return image.carimage_url(:thumb).to_s
        end
    else
    	lastest_image(project, isBig)
        #return "project_thum.png"
    end        
  end
  
  def www_url( path='' )
    subdomain_url( 'www', path )
  end
  
  def self.subdomain_url( subdomain, path='' )
    "http://#{subdomain}.ngtv2.info#{path}";
  end  
  
end
