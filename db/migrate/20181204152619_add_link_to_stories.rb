class AddLinkToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :link, :string
  end
end
