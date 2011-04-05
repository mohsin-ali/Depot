class Micropost < ActiveRecord::Base
  ### Associations
  belongs_to :user
  
  ### Validations
  validates :content, :length => {:maximum => 140}
end
