class AddCoverToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :cover, :string
  end
end
