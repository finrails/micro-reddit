class AddSelfRelationToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :comment_author, foreign_key: { to_table: :comments }
  end
end
