class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :started_date
      t.date :ended_date

      t.timestamps
    end

    add_index :events, :name, unique: true
  end
end
