class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.belongs_to :user
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
