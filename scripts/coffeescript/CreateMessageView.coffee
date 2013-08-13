class CreateMessageView extends Backbone.View
	el: document.getElementById '#create'
	events:
		'click .submit-btn': 'createMessage'
	createMessage: (e) =>
		title = @$el.find('.title').val()
		body = @el.find('.body').val()
		tags = @el.find('.tags').val()
		to = @$el.find('.to').val()
		box = if @$el.find('.to').val() == 'me' then 'reminder' else 'outbox'
		newMessage = new Message(
			title: title
			body: body
			tags: tags
			box: box
		)
		if box == 'outbox'
			OutboxView.addMessage newMessage
		else
			ReminderView.addMessage newMessage
		return

