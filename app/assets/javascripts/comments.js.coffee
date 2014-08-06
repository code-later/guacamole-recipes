$('.new_comment').bind 'ajax:success', (event, data, status, xhr) ->
  $('.recipe--comments-list').html(xhr.responseText)
  $('#comment_text').val("")
