class CorrectImage < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :images, :string
    add_column :topics, :image, :string
  end
end
