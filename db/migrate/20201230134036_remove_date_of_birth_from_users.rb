class RemoveDateOfBirthFromUsers < ActiveRecord::Migration[6.0]
  def up
    remove_column :users, :date_of_birth
  end
  
  def down
    add_column :users, :date_of_birth, :date, default: "1993-01-01", null: false
    execute 'ALTER TABLE "users" ADD CONSTRAINT "users_date_of_birth_null" CHECK ("date_of_birth" IS NOT NULL) NOT VALID'
    change_column_default :users, :date_of_birth, nil
    execute 'ALTER TABLE "users" DROP CONSTRAINT "users_date_of_birth_null"'
  end
end
