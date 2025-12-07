Good suggestions and questions. I'll go ahead and setup a git repo and project in vs code then we can start on it. Don't create code yet. Keep brainstorming please. Here's a LOT of information i've been thinking about. Some of it strays from the core project but are relevant to be able to create an end app that meets real live hands on needs.

1. I'm not sure about thread spec lookup. Lookup from where? What do you have in mind? 
   1. In my hands-on experience, the official lookup data is ok to start with if I haven't made the part before but I always end up having to trial and error hand fit to start with until I get the exact precise measurements. I'm always cutting these fine 0.75P to 1.5P metric threads 24mm to 50mm diameter parts so they have to be pretty precise. Might also consider if other people want to use the app but for now, just for my use case. 
   2. Since it will always only be cutting OD threads, the major diameter doesn't need a lookup I don't think. 
   3. The depth of cut may need a lookup or calculation to start with but that's the part I always have to trial and error adjust until the part fits the mating parts and then I can use that data from then on.
2. Threads will always be 60 degree.
3. All settings should have a recommended value based on calculations from all data choices.  That's what I mean by "with recommendation"
4. Dropdown for if Z start point is in reference from center of part axis or OD. 
5. Textbox for thread pitch. I only cut metric so far but may be good to have ISO flexibility later. Everything I do is metric so maybe leave ISO out unless you have a good idea to add it easily.
6. Dropdown for type of material being cut. Aluminum, copper, brass, plastic acrylic rod, mild steel. 
7. Setting for spindle speed with recommendation. 
8. You decide but may need to be able to enter certain tool cutter information to be able to make other calculations such as spindle speed. Note that I will always have to use a 0mm point vbit because there isn't a special profile tool for cutting threads on the a-axis. Just for this, I purchased a high quality chamfer v groove bit 1/4" shaft 60 degree 3 flute but may buy a variation sometime in the future.
9. Setting for a-axis rotation/feed speed with recommendation.
10. Setting for number of passes and total depth of cut with recommendation.
    1. Once that data is entered, break out each pass and allow some custom modification such as depth of cut for each pass.  Start with recommendations.
    2. Base depth of cut for each pass on all other data entered such as material being cut.  I know on a lathe, each cut pass isn't always equal.  Usually a deeper first cut, then shallower following cuts with a fine final cut.
    3. The last pass should have the depth of cut set and unchangable based on max depth of cut set earlier.
    4. Option on all passes except the last pass to pause the operation before moving to the next pass.  The purpose would be to allow to test fit the threads cut so far to see if additional passes are required.
    5. Maybe have a "test fit" mode that would have more than necessary number of passes with the final few passes being only slightly deeper each time.  The purpose would be to pause the job at a certain point and then after each subsequent pass to allow the user to hand test fit the threads to see if they are deep enough at that point or if needs an additional pass.  Think about how that workflow might look like and make recommendations please.
11. Option for a final cleaning/finishing pass
12. Option to start cutting threads exactly at the X zero point or a distance before that point.  The purpose would be to lower the Z, start the spindle and start air cutting a little before the beginning of the part so the threads are cut properly
13. Option to turn on/off misting and vacuum.  User must enter what gcode their controller needs to see in the code.
14. Option to paste in a header and footer code.
15. Output all final code into an area for the user to copy and/or option to download a complete file with .nc or .gcode file extention.
16. Option to save and import settings maybe from a json file.  The purpose would be to save templates to the local file system location of choice and import as well.
17. Anything else you can think of.
