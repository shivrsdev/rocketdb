-- /rocketdb/src/main.lua
-- Entry point to rocketdb server

dofile('luvit-loader.lua')

_G.config = require('src.config')
_G.data = {}

require('weblit-app')
    .bind({
        host='0.0.0.0',
        port=7777
    })
    .use(require('src.auth').validate)
    .use(require('src.api').run)
    .start()