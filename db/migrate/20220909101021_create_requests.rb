class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :email
      t.string :subject
      t.text :description
      t.string :state

      t.timestamps
    end
  end
end
