class AddForeignKeysToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :author_id, null: false, foreign_key: true: { to_table: :users }
    add_reference :likes, :pos_idt, null: false, foreign_key: true
  end
end
