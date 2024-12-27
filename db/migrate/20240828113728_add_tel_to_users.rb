class AddTelToUsers < ActiveRecord::Migrat[7.0]
  def change
    add_column :users, :tel, :string
  end
end
