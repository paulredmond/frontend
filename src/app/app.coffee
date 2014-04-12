$ = require '../lib/common/selector'
test = require './modules/_boilerplate/_boilerplate'

modules = $ '[data-app-module]'

loadModule = ($el) ->
  data = $el.data()
  moduleName = data.appModule
  path = "./modules/#{moduleName}/#{moduleName}"
  module = require(path)(data)

for module in modules
  loadModule $(module)
