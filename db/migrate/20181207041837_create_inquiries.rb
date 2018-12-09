class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string :email, null: false
      t.text :message, null: false

      t.timestamps
    end
    add_index :inquiries, :email
  end
end
