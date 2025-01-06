class CreateFirstNames < ActiveRecord::Migration[8.0]
  def change
    create_table :first_names do |t|
      t.string :last_name
      t.string :email_id
      t.string :gender
      t.string :role
      t.string :terms

      t.timestamps
    end
  end
end
