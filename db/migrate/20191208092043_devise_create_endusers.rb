# frozen_string_literal: true

class DeviseCreateEndusers < ActiveRecord::Migration[5.2]
  def change
    create_table :endusers do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
       t.integer  :sign_in_count, default: 0, null: false
       t.datetime :current_sign_in_at
       t.datetime :last_sign_in_at
       t.string   :current_sign_in_ip
       t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.string :last_name_characters, null: false #性(漢字)
      t.string :first_name_characters, null: false #名(漢字)
      t.string :last_name_kana, null: false #性(カナ)
      t.string :first_name_kana, null: false #名(カナ)
      t.string :profile_image_id
      t.string :postal_code, null: false, default: "" #郵便番号
      t.string :address, null: false, default: "" #住所
      t.string :phone_number #電話番号
      t.boolean :leave_status, default: false
      t.datetime :discarded_at, after: :deleted
      t.timestamps null: false
    end

    add_index :endusers, :email,                unique: true
    add_index :endusers, :reset_password_token, unique: true
    # add_index :endusers, :confirmation_token,   unique: true
    # add_index :endusers, :unlock_token,         unique: true
  end
end
