class RenameCategoriesColumnToArticleCategories < ActiveRecord::Migration[6.0]
  def change
    rename_column :article_categories, :categories_id, :category
  end
end
