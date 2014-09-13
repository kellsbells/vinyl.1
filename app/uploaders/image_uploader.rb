# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  version :thumb  do
    process resize_to_fill: [460, 250]
  end

  version :small_thumb, :from_version => :thumb do
    process resize_to_fill: [120,120]
  end


  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
