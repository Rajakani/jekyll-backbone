
require.config
  urlArgs: "bust=#{new Date().getTime()}" # Cache-buster
  shim:
    underscore:
      exports: '_'
    backbone:
      deps : ['underscore', 'jquery']
      exports: 'Backbone'
  paths:
    jquery: '../_bower_components/jquery/jquery'
    backbone: '../_bower_components/backbone-amd/backbone'
    underscore: '../_bower_components/underscore-amd/underscore'

require ['app'], (App) -> App.initialize()
