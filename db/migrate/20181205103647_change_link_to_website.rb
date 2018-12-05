class ChangeLinkToWebsite < ActiveRecord::Migration[5.2]
  def change
    rename_column :stories, :link, :website
  end
end
