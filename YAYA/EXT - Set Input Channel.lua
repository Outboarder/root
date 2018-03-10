--[[
@description Set Input Channel (Mono)
Screenshot:
Version: 1.0
Author: Outboarder
Changelog:
REAPER: 5.32
Licence: GPL v3

[main] . > EXT - Set Input Channel (Mono)(1).lua
[main] . > EXT - Set Input Channel (Mono)(2).lua
[main] . > EXT - Set Input Channel (Mono)(3).lua
[main] . > EXT - Set Input Channel (Mono)(4).lua
[main] . > EXT - Set Input Channel (Mono)(5).lua
[main] . > EXT - Set Input Channel (Mono)(6).lua

--]]

--[[
Changelog:
+ Initial Release v1.0 (2017-06-02)
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


