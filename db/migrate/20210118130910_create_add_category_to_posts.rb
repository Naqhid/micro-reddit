class CreateAddCategoryToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :category, :string do |t|

      t.timestamps 
    end
  end
end
