class AddGenderToUsers < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE gender_types AS ENUM ('male', 'female', 'unspecified');
      ALTER TABLE users ADD gender gender_types DEFAULT 'unspecified';
    SQL
  end

  def down
    execute <<-SQL
      DROP TYPE gender_types CASCADE;
    SQL
    if ActiveRecord::Base.connection.column_exists?(:users, :gender)
      remove_column :users, :gender
    end
  end
end
