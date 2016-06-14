class HomePagesController < ApplicationController
  def index
	  #@pages = Page.all
    @mainmenus = Mainmenu.all#(:level).select(:level)

=begin
    @cats = []
    a = []
    raw_levels.each do |cat|
      if cat.parent_id.nil?
        cat.parent_id = 0
      end

      #a[cat.parent_id => cat]

      a = [cat.parent_id => [cat.id => cat]]

      @cats[cat.parent_id] << a
      #@cats.push(cat.parent_id => cat)
    end
=end

=begin
    while($cat =  mysql_fetch_assoc($result))
      $cats[$cat['parent_id']][] =  $cat
    end
=end

    #@tree = menu_build_tree(@raw_levels)

   # @tree = menu_build_tree(@raw_levels)
=begin
    levels = []
    @a1 = []

    #@pages.each_with_index do |p,index|
    #  a1[index] = p
    #end

    raw_levels.each_with_index do |p,index|
      levels[index] = p[:level]
    end

    levels.each_with_index do |l,index|
      pages = Page.where(:level => l)
      @a1[l] = pages
    end
=end

  end

  def admin
  end

  private

  def menu_build_tree(cats3)
    tree = ""

    if cats3.class.name.split('::').last == "Page"
      cats3 = Page.where("parent_id = #{cats3.id}")
    end

    if (cats3.class.name.split('::').last == "Relation") and cats3.count > 0
      tree = "<ul>"
      cats3.each do |c|
        tree = tree + "<li>#{c.title} #{menu_build_tree(c)}</li>"
      end
      tree = tree + "</ul>"
    end
    return tree
  end

end