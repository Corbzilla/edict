CreateView = new CreateMessageView()
InboxView = new MessageCollectionView(
	el: document.getElementsByClassName('inbox')[0]
)	

OutboxView = new MessageCollectionView(
	el: document.getElementsByClassName('outbox')[0]
)

ReminderView = new MessageCollectionView(
	el: document.getElementsByClassName('reminder')[0]
)
MessageView = new MessageViewApp()
