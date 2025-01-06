class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.string :gender
      t.string :role
      t.string :terms
      t.string :contact

      t.timestamps
    end
  end
end
