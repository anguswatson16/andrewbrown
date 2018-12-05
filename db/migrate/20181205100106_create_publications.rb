class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :collaborators
      t.string :journal

      t.timestamps
    end
  end
end
