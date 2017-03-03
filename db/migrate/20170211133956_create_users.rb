class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.datetime :updated_at
      t.datetime :activated_at
#timestamps creates 2columns created at and updated at
      t.timestamps
    end
  end
end
