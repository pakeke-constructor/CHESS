

local json = require("libs.json")



local network = {}


local hst



function network.host(port)
    hst = enet.host_create("*", 0)
end

function network.connect(ip, port)
    hst = enet.host_create()
    hst:connect(ip .. ":" .. port)
end




function network.send(table)
    local str = json.encode(table)
    hst:send(str)
end



function network.receive()
    
end



return network

