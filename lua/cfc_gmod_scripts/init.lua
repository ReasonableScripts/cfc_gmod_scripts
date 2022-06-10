AddCSLuaFile()

local function log( name )
    print( "[CFC Gmod Scripts] Loading: ", name )
end

local _, dirs = file.Find( "cfc_gmod_scripts/*", "LUA" )

for i = 1, #dirs do
    local dir = dirs[i]
    log( dir )
    include( dir .. "/init.lua" )
end