class LikedPost < ApplicationRecord
  belongs_to :user
  # after_initialize :init

  # def init
  #   self.post_id ||= 0
  # end
end
