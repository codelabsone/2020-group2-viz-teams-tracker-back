class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :image
      t.string :firstName
      t.string :lastName
      t.string :jobTitle
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
