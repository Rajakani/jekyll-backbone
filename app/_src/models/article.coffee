define [
  'backbone'
], (Backbone) ->

  articleModel = Backbone.Model.extend

    initialize: ->
      this.url = "#{this.get('url')}/raw.json"

  articleModel
