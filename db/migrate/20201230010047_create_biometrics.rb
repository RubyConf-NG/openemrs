class CreateBiometrics < ActiveRecord::Migration[6.0]
  def change
    create_table :biometrics do |t|
      t.date :date_of_birth
      t.integer :height
      t.integer :weight
      t.string :genotype
      t.string :blood_type
      t.string :patient_id

      t.timestamps
    end
    
    add_index :biometrics, :patient_id, unique: true
  end
end
