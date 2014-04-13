Kernel = require './lib/kernel/Kernel'

# Register modules for the application
# Browserify needs to compile all of the modules needed

class AppKernel extends Kernel
  bundleConfig:
    boilerplate: require './modules/boilerplate/BoilerplateBundle'

module.exports = AppKernel
