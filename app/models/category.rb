class Category < ApplicationRecord
  has_many :article_categories
  has_many :article, through: :article_categories
end
