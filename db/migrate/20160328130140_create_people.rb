class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :info

      t.timestamps null: false
    end

    create_table :assemblies do |t|
      t.string :name
    end

    create_table :parts do |t|
      t.string :name
    end

    create_table :assemblies_parts, id: false do |t|
      t.belongs_to :assembly, index: true
      t.belongs_to :part, index: true
    end
  end
end
