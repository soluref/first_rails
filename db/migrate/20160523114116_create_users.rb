class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :email
      t.string :password_digest
      t.timestamps null: false
	  t.string :role
    end
  end
end
