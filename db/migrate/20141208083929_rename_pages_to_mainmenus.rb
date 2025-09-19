class RenamePagesToMainmenus < ActiveRecord::Migration[4.2]
  def change
    rename_table :pages, :mainmenus
  end
end
