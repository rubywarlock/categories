# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
root = exports ? this

root.cur_attr = ''


root.js_show = (acc) ->
	#$('.dropdown-menu').removeClass('dropdown-open')
	#$('.dropdown-menu').removeClass('dropdown-close')
	#$('.dropdown-menu').addClass('dropdown-close')
	#$('.site-dropdown-menu .site-dropdown-open').toggleClass('site-dropdown-close')
	#$('.site-dropdown-menu .site-dropdown-open').toggleClass('site-dropdown-open')
	#$(id).toggleClass('site-dropdown-close')
	#$(id).toggleClass('site-dropdown-open')

	cur_attr = $(acc).attr("class")
	#$(".tr_line_dropdown").empty();
	$('nested_mainmenus ')

	if cur_attr != "nested_mainmenus site-dropdown-menu site-dropdown-open"
		#$(acc + " .tr_line_dropdown").append(r)
		$(".site-dropdown-open").slideToggle "fast"
		$(".site-dropdown-open").attr class: "nested_mainmenus site-dropdown-menu"

		$(acc).slideToggle("fast")
		attr = $(acc).attr("class")
		$(acc).attr class: attr + ' ' + 'site-dropdown-open'

	if cur_attr == "site-dropdown-menu site-dropdown-open"
		$(".site-dropdown-open").slideToggle "fast"
		$(".site-dropdown-open").attr class: "site-dropdown-menu"
	return

#$(document).on 'ready page:load', ->


	#$('.browser .main-title').click ->
	#	$(this).next('.nested_mainmenus').slideToggle()
	#	alert("click")
	#$('#jquery-tree').treeview toggle: ->
		#console.log '%s was toggled.', $(this).find('>div').text()
	#return

#$(document).on 'ready page:load', ->
#	$('#jquery-tree').treeview()
#	return
