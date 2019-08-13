class AddImagesToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :images, :string
  end
end
