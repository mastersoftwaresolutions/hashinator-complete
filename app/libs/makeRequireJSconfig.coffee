
_ = require 'underscore'

#
# ## wha?
#
# This allows creation of require.js configurations on the server so they
# can be injected into the generated HTML.
#
# ## why?
#
# 1. We can avoid an extra dependency in our client side require.js initialization
# where our main module needs to include the configuration first
#
# 2. We can pass in additional configuration options and settings for modules
# so which makes it easier to share configs between client/server side
#
# Generally how we use this is to change the `config` attribute
# to pass in information to modules in `public/js/confs/someConfLib`

module.exports = (customConfigOptions) ->

    defaultConfig =
        baseUrl: '/js'
        paths:
            underscore : 'libs/underscore-1.5.2-min'
            backbone: 'libs/backbone-1.1.0-min'
            async   : 'libs/async.min'

            # jQuery plugins
            jquery : [
                '//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min'
            ]

        shim:
            jquery:
                exports: 'jQuery'

            underscore :
                exports: '_'

            backbone:
                deps: ['jquery', 'underscore']
                exports: 'Backbone'


    # merge (over-writing) our default config with what the user has provided
    # ... this is not a recursive extend, so if `customConfigOptions` has
    #
    # a key `shim: something : "blah"` the entire shim object is over-written
    # it only works at the top level
    _.extend defaultConfig, customConfigOptions

