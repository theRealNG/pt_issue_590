class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.integer :book_id
      t.integer :person_id
      t.string :notes

      t.timestamps null: false
    end
  end
end
