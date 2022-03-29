class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :zipcode
      t.string :state
      t.string :city
      t.string :street
      t.string :building

      t.timestamps
    end
  end
end
