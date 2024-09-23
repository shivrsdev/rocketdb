-- /rocketdb/src/auth.lua
-- Authentication middleware

local auth = {}

function auth.validate(request, response, next)
    if request.headers['Key'] == _G.config.rocketdb_key then
        next()
    else
        response.code = 401
        response.body = 'Authentication error.'
    end
end

return auth