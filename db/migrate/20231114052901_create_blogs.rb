class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.text :title, null: false
      t.text :contents, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
