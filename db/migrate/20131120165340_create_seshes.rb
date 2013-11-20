class CreateSeshes < ActiveRecord::Migration
  def change
    create_table :seshes do |t|
      t.string :name
      t.timestamp :ended_at

      t.timestamps
    end
  end
end
