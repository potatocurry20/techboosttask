class RemoveImage < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :image, :string
    remove_column :topics, :images, :integer
    add_column :topics, :images, :string
  end
end
