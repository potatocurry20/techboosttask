class ChangeColumnToComment < ActiveRecord::Migration[5.2]
  def change
    # 変更内容
  def up
    change_column :comment, :topic_id, :integer
  end

  # 変更前の状態
  def down
    change_column :comment, :post_id, :integer
  end
  
  end
end
