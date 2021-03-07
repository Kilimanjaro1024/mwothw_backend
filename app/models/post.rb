class Post < ApplicationRecord
    belongs_to :user
    after_initialize :init

    def init
        self.likes ||= 0
    end
end
