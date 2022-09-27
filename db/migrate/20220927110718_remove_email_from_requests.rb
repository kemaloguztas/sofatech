class RemoveEmailFromRequests < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :email, :string
  end
end
