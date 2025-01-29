/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night


-> seashore

== seashore ==
You are sitting on the beach. 

It is {advance_time()}


+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time()}
* {time == 1} [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore
+ [Stroll further down the beach] -> beach3

== beach3 ==
This is even further down the beach. There is a giant pile of driftwood. 

It is {advance_time()}
+ [Pick up some driftwood] -> driftwood
+ [Stroll back up the beach] -> beach2
+ {driftwood} [Build a boat] ->boat_build

== shells ==
You pick up the shells
-> beach2

== driftwood ==
{You pick up the driftwood|You pick up more driftwood|You pick up even more driftwood}
-> beach3

== boat_build ==
You build a boat out of all the driftwood.
+ [Go back] -> beach3
+ [Sail out to sea] -> sailing

== sailing ==
You sail out to sea. Much adventure awaits!
-> END


== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
