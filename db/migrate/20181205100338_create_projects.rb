class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :collaborators
      t.text :notes

      t.timestamps
    end
  end
end
