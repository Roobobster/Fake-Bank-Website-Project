class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true,
                         length: {minimum: 4, maximum: 30},
                         uniqueness: {case_sensitive: false}
    validates :password, presence: true, length: { minimum: 6 }
    before_save :downcase_username

    private
        def downcase_username()
            self.username = username.downcase
        end
end
