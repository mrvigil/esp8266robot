# esp8266robot
Repository for all things using esp8266 to make robots
Directions:   (An instructable has been created to help with more detailed instructions.)

1) Download ESPFlasher at link below

Win 32 version

Win 64 version

2) Download ESPBasic Binary

ESP8266 Version

3) Run ESPFlasher, then click on settings (gears)  to select the correct binary  -- Make sure correct USB port is selected -- Click  Flash

4) Download  "ESP_Robot.bas" here.

5) Build car using guide provided

Once, built, add 4 AA batteries to pack and and turn on.
please note -- weak AA batteries will cause robot to not function well, use high capacity AA batteries if possible.   Also, you could upgrade battery pack with a 6 or 8 AA pack to get more power.
Look for WIFI access point ESP8266CAR and connect.
Connect to  http://192.168.4.1 on web browser
Click on Files to upload ESP_Robot.bas. (ESP8266 Basic information at link below.)
Alternativly, open ESP_Robot.bas and cut and paste it into EDIT window.
Click RUN  (Don't worry if car doesn't go direction button indicates)
click FORWARD and note direction 
click LEFT and note direction
If car goes wrong direction, then rename functions [forward], [backward], [left], and [right] to match direction that car actually goes.  Alternatively, you can swap wires to motor driver until it goes the correct direction... but it is easier to rename the functions.]
Right now, car will go forward, backward and spin left and right.... to make it more drivable, make changes to code as shown.
To make robot more drivable, modify code for [right] and [left] by adding "delay 250" and "goto [foward]" before "wait":

[right]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,1)
io(po,2,0)
delay 250
goto [foward]
wait
[left]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,0)
io(po,2,1)
delay 250
goto [foward]
ait

Now your car will turn car for 1/4 of a second, and then proceed straight.   Please note that if you do this, you can no longer make your car spin.... unless you add functions [spinRight] and [spinLeft].   You can do this by copying [left] and [right] functions and renaming them. If you do this after you change it, then you will need to delete the lines that you added before.

[spinRight]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,1)
io(po,2,0)
wait

[spinLeft]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,0)
io(po,2,1)
wait

After you do this, you can add two more buttons to control screen with 3 lines of code in bold below:

button "left", [left]
button "right", [right]
print                       
button "spinLeft, [spinLeft]
button "spinRight" [spinRight]
print
button "backward", [backward]
