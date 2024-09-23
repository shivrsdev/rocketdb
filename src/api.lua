-- /rocketdb/src/api.lua
-- API router

local router = require('weblit-router').newRouter()
local json = require('3rd.json')

router.route({
    method='GET',
    path='/api/:key'
}, function (request, response)
    -- Send JSON containing the value
    response.headers['Content-Type'] = 'application/json'
    response.code = 200
    response.body = json.encode({ value = _G.data[request.params.key] })

    -- Just in case the value is nil, for some reason rxi/json just decides to make the ENTIRE response this: []
    -- So lets make it better
    if response.body == '[]' then
        response.body = '{ "value": null }'
    end
end)

router.route({
    method='PUT',
    path='/api/:key'
}, function (request, response)
    -- Set the value of specific key (in params) to the value in the payload body
    _G.data[request.params.key] = json.decode(request.body).value
    response.body = 'ok'
    response.code = 200
end)

return router