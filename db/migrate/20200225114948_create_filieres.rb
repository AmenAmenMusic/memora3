class CreateFilieres < ActiveRecord::Migration[5.1]
  def change
    create_table :filieres do |t|
      t.string :nom_filiere

      t.timestamps
    end
  end
end
