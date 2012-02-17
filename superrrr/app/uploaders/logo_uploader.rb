# encoding: utf-8

class LogoUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  include CarrierWave::MimeTypes
  # include CarrierWave::MiniMagick
  process :set_content_type
  
  permissions 0777
  
  # Choose what kind of storage to use for this uploader:
  # storage :file
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    #nil 
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]

  
  version :large do
    resize_to_limit(600, 600)
  end
  
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :scale => [50, 50]
  # end
  
  version :thumb do
    process :crop
    resize_to_limit(400, 400)
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
  
  def crop
    if model.crop_logo_x.present?
      resize_to_limit(600, 600)
      manipulate! do |img|
        x = model.crop_logo_x.to_i
        y = model.crop_logo_y.to_i
        w = model.crop_logo_w.to_i
        h = model.crop_logo_h.to_i
        img.crop!(x, y, w, h)
      end
    end
  end
  
end
