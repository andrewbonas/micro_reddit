class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { maximum: 500, too_long: '%<count> characters is the maximum allowed', minimum: 10 }, allow_blank: false
end
