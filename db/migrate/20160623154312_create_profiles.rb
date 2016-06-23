class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.timestamps null: true
    end
  end
end
