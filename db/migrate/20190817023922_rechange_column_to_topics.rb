class RechangeColumnToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :image, :string

     remove_column :topics, :images, :string
  end
end
