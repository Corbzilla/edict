class Message extends Backbone.Model
	init: (title, body, tags, box) ->
		@set 'title', title
		@set 'body', body
		if tags.indexOf ',' > -1
			@set 'tags', tags.split ','
		else
			@set 'tags', [tags]
		return
	defaults:
		'title': '',
		'body': '',
		'tags': '',
		'box': ''
