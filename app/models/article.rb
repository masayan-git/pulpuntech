class Article < ApplicationRecord
  has_many_attached :image
  has_rich_text :content
  has_many :article_categories
  has_many :categories, through: :article_categories
  belongs_to :master

end
