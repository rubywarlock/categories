class CreatePageHierarchies < ActiveRecord::Migration[4.2]
  def change
    create_table :page_hierarchies, :id => false do |t|
	    t.integer  :ancestor_id, :null => false   # ID of the parent/grandparent/great-grandparent/... tag
	    t.integer  :descendant_id, :null => false # ID of the target tag
	    t.integer  :generations, :null => false   # Number of generations between the ancestor
    end

    add_index :page_hierarchies, [:ancestor_id, :descendant_id, :generations], :unique => true, :name => "page_anc_desc_udx"

    # For "all ancestors of…" selects,
    add_index :page_hierarchies, [:descendant_id], :name => "page_desc_idx"

  end
end
