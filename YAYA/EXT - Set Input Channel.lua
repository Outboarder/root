--[[
@description Set Input Channel (Mono)
@version 1.0
@author Outboarder
@metapackage
@provides 

[main] . > EXT - Set Input Channel (Mono)(1).lua
[main] . > EXT - Set Input Channel (Mono)(2).lua
[main] . > EXT - Set Input Channel (Mono)(3).lua
[main] . > EXT - Set Input Channel (Mono)(4).lua
[main] . > EXT - Set Input Channel (Mono)(5).lua

--]]
--ssssssss
local filename = ({reaper.get_action_context()})[2]
Input_Mono = tonumber(filename:match("%((%d+)%).lua$"))

-- script code
Count_Tracks = reaper.CountSelectedTracks(0)
for i = 0 ,Count_Tracks-1 do
  
    Media_Track = reaper.GetSelectedTrack(0,i) 
    if Media_Track ~= nil then
    
    reaper.SetMediaTrackInfo_Value( Media_Track, 'I_RECINPUT' , Input_Mono-1 )    
  end
end


