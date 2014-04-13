class Kernel

  # Classes extending this configure bundles here.
  # bundleConfig:
  #   theBundle: require 'the/bundle'
  bundleConfig: {}

  bundles: {}

  booted: false

  constructor: (@environment, @debug) ->

  boot: ->
    return if this.isBooted() is true
    this.initializeModules()

    for name,bundle of @bundles
      bundle.boot()

  isBooted: ->
    @booted is true

  handle: ->
    if this.isBooted() is false
      this.boot()

  registerModules: ->
    registeredBundles = []
    for name,bundle of @bundleConfig
      registeredBundles.push(new bundle(name))

    registeredBundles

  initializeModules: ->
    for bundle in this.registerModules()
      name = bundle.getName()
      @bundles[name] = bundle

module.exports = Kernel
