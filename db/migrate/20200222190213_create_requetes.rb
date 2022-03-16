class CreateRequetes < ActiveRecord::Migration[5.1]
  def change
    create_table :requetes do |t|
      t.integer :etudiant_id
      t.integer :maitre_id
      t.string :status

      t.timestamps
    end
  end
end
