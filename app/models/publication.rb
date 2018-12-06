class Publication < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
