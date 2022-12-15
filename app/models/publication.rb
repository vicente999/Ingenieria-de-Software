class Publication < ApplicationRecord
    has_many :resenas
    has_many :requests
    has_many :users, through: :requests
    ## Validations
    validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes },
    file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }

    ##...Avatar Attachment...##
    has_one_attached :avatar
end
