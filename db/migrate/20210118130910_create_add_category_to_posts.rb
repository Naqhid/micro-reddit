class CreateAddCategoryToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :category, :string

      t.timestamps
    end
  end
end
