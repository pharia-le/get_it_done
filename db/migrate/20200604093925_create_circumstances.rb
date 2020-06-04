class CreateCircumstances < ActiveRecord::Migration[6.0]
  def change
    create_table :circumstances do |t|
      t.string :name

      t.timestamps
    end
  end
end
