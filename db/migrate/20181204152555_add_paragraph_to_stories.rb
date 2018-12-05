class AddParagraphToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :paragraph, :text
  end
end
