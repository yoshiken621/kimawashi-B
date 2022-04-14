class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer  :events_select_id     ,null: false
      t.text     :met_person
      t.timestamps
    end
  end
end
