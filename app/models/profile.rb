class Profile < ApplicationRecord
  has_rich_text :information
  has_rich_text :portfolio
  has_one_attached :image
  belongs_to :master

end
