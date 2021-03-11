class User < ApplicationRecord
    has_secure_password
    has_many :posts
    has_many :liked_posts
    after_initialize :init

    def init
        self.picture ||= "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"
    end
end
