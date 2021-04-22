class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.string :name
      t.text :message
      t.uuid :post_id

      t.timestamps
    end

    add_index :comments, :post_id
  end
end
