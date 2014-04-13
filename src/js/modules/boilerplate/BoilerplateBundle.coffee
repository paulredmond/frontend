BoilerplateModule  = require './BoilerplateModule'
Bundle             = require '../../lib/kernel/Bundle'
$                  = require '../../lib/common/selector'

class BoilerplateBundle extends Bundle
  boot: ->
    instances = $ '[data-app-module="boilerplate"]'
    for i in instances
      $i = $(i)
      data = $i.data()
      new BoilerplateModule(data)

module.exports = BoilerplateBundle
