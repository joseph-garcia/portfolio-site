class AddSnippetToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :snippet, :string
  end
end
