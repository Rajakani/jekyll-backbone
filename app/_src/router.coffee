define [
  'backbone'
  'views/article'
], (
  Backbone
  ArticleView
) ->

  Router = Backbone.Router.extend
    routes:
      '' : 'index'
      'about': 'about'
      'blog(/:slug)': 'article'

    index: ->
      console.log 'index route'

    about: ->
      console.log 'about route'

    article: (slug) ->
      articleView = new ArticleView
      articleView.render({slug: slug})

  initialize = ->
    router = new Router()

    Backbone.history.start
      pushState: true
      hashChange: false
      silent: true

  initialize: initialize
