class RenamePagesToMainmenus < ActiveRecord::Migration
  def change
    rename_table :pages, :mainmenus
  end
end
