speed=0

[top]
print "speed"
slider speed, 0 , 1024
print
button "forward", [forward]
print
button "left", [left]
button "right", [right]
print
button "backward", [backward]
print
button "stop", [stop]
print
button "Exit", [getMeOutOfHere] 
wait




[stop]
io(pwo,5,0)
io(pwo,4,0)
io(po,0,1)
io(po,2,1)
wait

[forward]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,1)
io(po,2,1)
wait


[backward]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,0)
io(po,2,0)
wait

[right]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,1)
io(po,2,0)
wait

[left]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,0)
io(po,2,1)
wait


[getMeOutOfHere] 
end















