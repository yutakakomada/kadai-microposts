class CreateRelationship2s < ActiveRecord::Migration[5.0]
  def change
    create_table :relationship2s do |t|
      t.references :user, foreign_key: true
      t.references :like, foreign_key:  { to_table: :microposts }

      t.timestamps

      t.index [:user_id, :like_id], unique: true
    end
  end
end
