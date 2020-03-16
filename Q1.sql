

 /* 
 We modify the table by recording each hour that a room is booked by a group as part of our 'start_time' attribute. So, we redesign the table to accomodate the
 entire duration for which a group can book a room. For example, if a group (say group 1) wants to book a room (say room1) from 9AM-11AM, 
 then we create 2 entries in the new ProjectRoomBookings table for group 1 with startTime 9 and startTime 10 ((room1,9, group1) and (room1,10,group1)). 
 This forbids other teams from booking the same room during this time period as the combination of the room_num and start_time is always unique and acts as our primary key. 
 They will however be free to book that room from 11AM (Note that we only store (room1,9, group1) and (room1,10,group1) and NOT (room1,11,group1) !!! for the group that 
 books room from 9-11AM). So, if group 2 wants to book this room at 10AM, it wont be possible. If it wants to book the room at 11AM, then we create an entry for group 2 
 with start time 11. This way, we can always prevent new entries from being made for already occupied rooms (second issue). In this design, the first problem becomes a 
 non-issue as we modify the table in such a manner that we only record the start time. We don't have a separate attribute dedicated to the end time and this always 
 ensures that the first issue never arises. 
  */
