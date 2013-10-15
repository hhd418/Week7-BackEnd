class AddFileAttachmentColumnToPost < ActiveRecord::Migration
  def change
    add_column :posts, :file_attachment, :string
  end
end
