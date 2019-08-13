class ChangeColumnToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :topic_id, :integer

    remove_column :comments, :post_id, :integer
  end
end
