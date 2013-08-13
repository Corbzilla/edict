chrome.app.runtime.onLaunched.addListener () ->
	chrome.app.window.create 'index.html', 
		'bounds':
			'width': 400,
			'height': 500
	CreateView = new CreateMessageView()
	InboxView = new MessageCollectionView(
		el: document.getElementByClassName('inbox')[0]
 	)	

	OutboxView = new MessageCollectionView(
		el: document.getElementByClassName('outbox')[0]
	)

	ReminderView = new MessageCollectionView(
		el: document.getElementmentByClassName('reminder')[0]
	)
	MessageView = new MessageViewApp()
