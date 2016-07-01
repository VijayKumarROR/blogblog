class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :username
      t.integer :password

      t.timestamps null: false
    end
  end
end
