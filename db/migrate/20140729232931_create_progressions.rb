class CreateProgressions < ActiveRecord::Migration
  def change
    create_table :progressions do |t|
      t.string :description

      t.timestamps
    end
  end
end
