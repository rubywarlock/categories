class RenameFirstPageToPage < ActiveRecord::Migration[4.2]
  def change
	  rename_table :first_pages, :pages
  end
end