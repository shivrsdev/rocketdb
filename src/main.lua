-- /rocketdb/src/main.lua
-- Entry point to rocketdb server

dofile('luvit-loader.lua')

_G.data = {}

require('weblit-app')
    .bind({
        host='0.0.0.0',
        port=7777
    })
    .use(require('src.api').run)
    .start()