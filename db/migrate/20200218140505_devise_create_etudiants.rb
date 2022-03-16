# frozen_string_literal: true

class DeviseCreateEtudiants < ActiveRecord::Migration[5.1]
  def change
    create_table :etudiants do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :nom,                null: false, default: ""
      t.string :prenom,              null: false, default: ""
      t.string :nom_filiere,              null: false, default: ""
      t.datetime :date_naissance    
    


      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.inet     :current_sign_in_ip
      # t.inet     :last_sign_in_ip

      ## Confirmable
       t.string   :confirmation_token
       t.datetime :confirmed_at
       t.datetime :confirmation_sent_at
       t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :etudiants, :email,                unique: true
    add_index :etudiants, :reset_password_token, unique: true
     add_index :etudiants, :confirmation_token,   unique: true
    # add_index :etudiants, :unlock_token,         unique: true
  end
end
