define [
  'jquery'
  'underscore'
  'backbone'
  'router'
], (
  $
  _
  Backbone
  Router
) ->

  initialize = ->
    console.log 'app loaded'

    $(document).on "click", "a:not([data-bypass])", (e) ->
      console.log 'click intercept'
      href = $(this).attr("href").replace(/\/$/, "")
      protocol = @protocol + "//"
      e.preventDefault()  if href.slice(protocol.length) isnt protocol
      Backbone.history.navigate(href, trigger: true);

    Router.initialize()

  initialize: initialize
