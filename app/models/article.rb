class Article < ApplicationRecord
  has_many_attached :image
  has_rich_text :content
  has_many :article_categories, dependent: :delete_all
  has_many :categories, through: :article_categories
  belongs_to :master

  validates :title, presence: true 
  validates :article_category_ids, presence: true
  validates :content, presence: true 

end
