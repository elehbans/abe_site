class CreateAberesources < ActiveRecord::Migration
  def change
    create_table :aberesources do |t|
      t.string :filename
      t.integer :user_id
      t.string :description

      t.timestamps null: false
    end
  end
end
