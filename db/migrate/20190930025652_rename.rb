class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :verification_code, :authy_id
  end
end
