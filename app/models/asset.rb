class Asset < ActiveRecord::Base
  attr_accessible :image
  has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "50x50>" },
                            :storage => :s3, 
                            :s3_credentials => "#{Rails.root}/config/s3.yml", 
                            :path => "/:style/:id/:filename", 
                            :bucket => "zounds-dev"

end
