class RenameFirstPageToPage < ActiveRecord::Migration
  def change
	  rename_table :first_pages, :pages
  end
end