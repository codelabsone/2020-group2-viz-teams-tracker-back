class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.number :id
      t.text :description

      t.timestamps
    end
  end
end
