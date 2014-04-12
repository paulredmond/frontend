AppKernel  = require './AppKernel'
$       = require './lib/common/selector'

Application = new AppKernel('development', true)
Application.handle()
