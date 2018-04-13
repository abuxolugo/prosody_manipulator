# prosody_manipulator
This is a really simple Praat script that can be used to manipulate the duration 
and pitch contour of a word or utterance. The script was used to make the materials for Buxó-Lugo & Watson (2016).

To use it, you must first have a sound selected (highlighted) in Praat's Objects window. Then run the script. 
You'll have to provide the final duration you'd like your sound to have, and 
the F0 values for each of the ten equally-spaced intervals of the contour. 
Then, click on Ok (or Apply). The program will create a few new objects. The final sound 
("Sound fromManipulationEditor") will be the manipulated object.

Here's a quick demo of what it can do:

[This is a recording of someone saying a statement](https://soundcloud.com/user-711991169/pre-manipulator-demo/s-T8Js0)

We can run the script on this recording, and given the appropriate values of F0 and duration, we can make the statement sound like a question.

[Here's what that sounds like](https://soundcloud.com/user-711991169/post-manipulator-demo/s-C0d7w)

It should sound pretty natural, but it's really just a manipulation of the first recording.

It's a very silly script, but hopefully someone will find it helpful. I might expand this in the future.

## References
Buxó-Lugo, A. & Watson, D. G. (2016). Evidence for the influence of syntax on prosodic parsing. Journal of Memory and Language, 90, 1-13.
