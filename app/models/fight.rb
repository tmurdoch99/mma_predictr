class Fight < ActiveRecord::Base

mount_uploader :fighter_one_image, AvatarUploader
mount_uploader :fighter_two_image, AvatarUploader
belongs_to :ufc
belongs_to :predictions
has_many :users, through: :predictions

accepts_nested_attributes_for :predictions

end

