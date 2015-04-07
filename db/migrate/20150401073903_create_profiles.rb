class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :fatname
      t.string :motname
      t.boolean :gender
      t.date :dob
      t.string :email
      t.string :phone
      t.string :image

      t.timestamps null: false
    end
  end
end
