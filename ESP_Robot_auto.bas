speed=0

[top]
print "speed"
slider speed, 0 , 1024
button run
button exit
wait

[run]
gosub forward
delay 250
gosub stop
gosub right
delay 100
gosub stop
gosub left
delay 100
gosub stop
gosub backward
delay 250
gosub stop
wait



[stop]
io(pwo,5,0)
io(pwo,4,0)
io(po,0,1)
io(po,2,1)
return

[forward]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,1)
io(po,2,1)
return

[backward]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,0)
io(po,2,0)
return

[right]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,1)
io(po,2,0)
return

[left]
io(pwo,5,speed)
io(pwo,4,speed)
io(po,0,0)
io(po,2,1)
return

[exit]
end




