class MessageView extends Backbone.View
	tagName: 'div'
	className: 'message'
	render: (message) =>
		output = '<div class=\'title\'>{ message.title  }</div>'
		output += '<div class=\'body\'>{ message.body }</div>'
		output += '<div class=\'tag\'> { tag } </div>' for tag in message.tags
		@$el.append output
		return @$el
	init: (message) =>
		return @render message
