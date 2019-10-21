class User < ApplicationRecord
  has_many :toy
  has_one_attached :picture
end
