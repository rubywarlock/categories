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

    # [
    # [{0=>#<Page id: 26, title: "Верхний уровень 01", text: "Текст Верхний уровень 01", created_at: "2014-09-25 10:39:36", updated_at: "2014-09-25 10:39:36", parent_id: 0, level: 0>}],
    # [{26=>#<Page id: 27, title: "Второй уровень 01", text: "text Второй уровень 01", created_at: "2014-10-01 04:21:56", updated_at: "2014-10-01 04:21:56", parent_id: 26, level: 1>}],
    # [{26=>#<Page id: 28, title: "Второй уровень 02", text: "Текст для Второй уровень 02", created_at: "2014-10-01 04:28:27", updated_at: "2014-10-01 04:28:27", parent_id: 26, level: 1>}],
    # [{26=>#<Page id: 29, title: "Второй уровень 03", text: "Второй уровень 03", created_at: "2014-10-01 04:30:20", updated_at: "2014-10-01 04:30:20", parent_id: 26, level: 1>}],
    # [{26=>#<Page id: 30, title: "Второй уровень 04", text: "Текст Второй уровень 04", created_at: "2014-10-01 04:31:08", updated_at: "2014-10-01 04:31:08", parent_id: 26, level: 1>}],
    # [{26=>#<Page id: 31, title: "Второй уровень 05", text: "текст Второй уровень 05", created_at: "2014-10-01 04:32:18", updated_at: "2014-10-01 04:32:18", parent_id: 26, level: 1>}],
    #
    # [{0=>#<Page id: 32, title: "Верхний уровень 02", text: "текст Верхний уровень 02", created_at: "2014-10-01 04:52:55", updated_at: "2014-10-01 04:52:55", parent_id: 0, level: 0>}],
    # [{32=>#<Page id: 33, title: "Второй уровень 01", text: "текст для Второй уровень 01", created_at: "2014-10-01 05:07:34", updated_at: "2014-10-01 05:07:34", parent_id: 32, level: 1>}],
    # [{31=>#<Page id: 34, title: "Третий уровень 01", text: "тектс Третий уровень 01", created_at: "2014-10-01 05:17:26", updated_at: "2014-10-01 05:17:26", parent_id: 31, level: 2>}],
    #
    # [{0=>#<Page id: 35, title: "Верхний уровень 03", text: "text", created_at: "2014-11-19 05:34:06", updated_at: "2014-11-19 05:34:06", parent_id: 0, level: 0>}]]

    #[
    # [{0=>
    #   [{26=>#<Page id: 26, title: "Верхний уровень 01", text: "Текст Верхний уровень 01", created_at: "2014-09-25 10:39:36", updated_at: "2014-09-25 10:39:36", parent_id: 0, level: 0>}]}],
    # [{26=>
    #   [{27=>#<Page id: 27, title: "Второй уровень 01", text: "text Второй уровень 01", created_at: "2014-10-01 04:21:56", updated_at: "2014-10-01 04:21:56", parent_id: 26, level: 1>}]}],
    # [{26=>[{28=>#<Page id: 28, title: "Второй уровень 02", text: "Текст для Второй уровень 02", created_at: "2014-10-01 04:28:27", updated_at: "2014-10-01 04:28:27", parent_id: 26, level: 1>}]}], [{26=>[{29=>#<Page id: 29, title: "Второй уровень 03", text: "Второй уровень 03", created_at: "2014-10-01 04:30:20", updated_at: "2014-10-01 04:30:20", parent_id: 26, level: 1>}]}], [{26=>[{30=>#<Page id: 30, title: "Второй уровень 04", text: "Текст Второй уровень 04", created_at: "2014-10-01 04:31:08", updated_at: "2014-10-01 04:31:08", parent_id: 26, level: 1>}]}], [{26=>[{31=>#<Page id: 31, title: "Второй уровень 05", text: "текст Второй уровень 05", created_at: "2014-10-01 04:32:18", updated_at: "2014-10-01 04:32:18", parent_id: 26, level: 1>}]}], [{0=>[{32=>#<Page id: 32, title: "Верхний уровень 02", text: "текст Верхний уровень 02", created_at: "2014-10-01 04:52:55", updated_at: "2014-10-01 04:52:55", parent_id: 0, level: 0>}]}], [{32=>[{33=>#<Page id: 33, title: "Второй уровень 01", text: "текст для Второй уровень 01", created_at: "2014-10-01 05:07:34", updated_at: "2014-10-01 05:07:34", parent_id: 32, level: 1>}]}], [{31=>[{34=>#<Page id: 34, title: "Третий уровень 01", text: "тектс Третий уровень 01", created_at: "2014-10-01 05:17:26", updated_at: "2014-10-01 05:17:26", parent_id: 31, level: 2>}]}], [{0=>[{35=>#<Page id: 35, title: "Верхний уровень 03", text: "text", created_at: "2014-11-19 05:34:06", updated_at: "2014-11-19 05:34:06", parent_id: 0, level: 0>}]}]]

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