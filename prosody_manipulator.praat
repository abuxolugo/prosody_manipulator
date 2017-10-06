###11/22/2013
###Duration and F0 contour manipulator
# This is a really simple, very hands-on program that can be used to manipulate
# the duration and prosodic contour of a word or utterance. To use it, you must
# first have a sound selected (highlighted) in Praat's Objects window. Then run
# the script. You'll have to provide the final duration you'd like your sound 
# to have, and the pitch values for each of the ten equally-spaced intervals 
# of the contour. Then, click on ok (or apply). It will create a few new objects.
# The final sound ("Sound fromManipulationEditor") will be the manipulated object.


##Ask for desired sound duration and pitch contour

form Resynthesize sound
    positive Desired_duration_(s) 
    positive Pitch_[1] 
    positive Pitch_[2] 
    positive Pitch_[3] 
    positive Pitch_[4] 
    positive Pitch_[5] 
    positive Pitch_[6]
    positive Pitch_[7]
    positive Pitch_[8]
    positive Pitch_[9]
    positive Pitch_[10]
endform    

##Adjust duration

duration = do ("Get total duration")
factor = desired_duration/duration

do ("Lengthen (overlap-add)...", 75, 600, factor)

##Resynthesize contour

timestep = desired_duration/9

do ("To Manipulation...", 0.01, 75, 600)
do ("View & Edit")

sound$ = selected$ ()

editor 'sound$'
    do ("Select...", 0.0, desired_duration)
    do ("Remove pitch point(s)")
    do ("Move cursor to...", 0.0)
    for i to 10
		cursor = do ("Get cursor")
		do ("Add pitch point at...", cursor, pitch_[i])
		do ("Move cursor by...", timestep)
    endfor
    do ("Publish resynthesis")
endeditor

