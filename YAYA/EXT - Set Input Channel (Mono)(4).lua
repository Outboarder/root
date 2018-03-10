--[[
Author: Outboarder
Version: 1.0
--]]



local filename = ({reaper.get_action_context()})[2]
Input_Mono = tonumber(filename:match("%((%d+)%).lua$"))

Count_Tracks = reaper.CountSelectedTracks(0)
for i = 0 ,Count_Tracks-1 do
  
    Media_Track = reaper.GetSelectedTrack(0,i) 
    if Media_Track ~= nil then
    
    reaper.SetMediaTrackInfo_Value( Media_Track, 'I_RECINPUT' , Input_Mono-1 )    
    --reaper.SetMediaTrackInfo_Value( Media_Track, 'I_RECINPUT' , Input_Stereo+1023 )  
  end
end
                                 
                 

