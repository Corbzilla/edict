class MessageCollectionView extends Backbone.View
	addOne: (message) =>
		@colleciton.add message
		@$el.append new MessageView message
	init: () =>
		@collection = new Backbone.Collection()


