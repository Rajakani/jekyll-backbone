define [
  'backbone'
  'models/article'
], (
  Backbone
  ArticleModel
) ->

  articleView = Backbone.View.extend

    el: '#main'

    render: (options) ->

      # Save a scope reference
      _this = this

      # Pass identifier to model
      this.model = new ArticleModel
        url: options.slug

      # Request the data
      this.model.fetch
        success: (model, response, options) ->

          # Inject the response in the view
          _this.$el.html response.content

      # Return this for chaining
      this

  articleView
