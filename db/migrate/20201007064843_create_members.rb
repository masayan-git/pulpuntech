class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string         :name,           null: false
      t.text           :infomation,     null: false
      t.text           :portfolio,      null: false
      t.references     :master,         null: false, foreign_key: true
      t.references     :article,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
