class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 1}
    validates :des, presence: true
    validates :author, presence: true
end
