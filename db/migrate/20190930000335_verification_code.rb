class VerificationCode < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :verification_code, :string
  end
end
