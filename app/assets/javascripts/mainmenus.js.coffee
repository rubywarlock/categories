jQuery('#menu-menu a').on 'click', (e) ->
  if jQuery(this).parent().has('ul')
    e.preventDefault()
  $(this).next('ul').slideToggle()
  return