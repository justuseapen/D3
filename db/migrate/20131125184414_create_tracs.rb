class CreateTracs < ActiveRecord::Migration
  def change
    create_table :tracs do |t|
      t.references :sesh, index: true

      t.timestamps
    end
  end
end
