class AddPhotoToPublications < ActiveRecord::Migration[5.2]
  def change
    add_column :publications, :photo, :string
  end
end
