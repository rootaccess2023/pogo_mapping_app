class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :name
      t.string :pogo_hub_name
      t.string :address
      t.string :nearby_landmarks
      t.text :activities
      t.text :individuals
      t.text :vehicles
      t.text :summary

      t.timestamps
    end
  end
end
