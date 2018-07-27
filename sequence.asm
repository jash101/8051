start:
setb p1.0
call delay
setb p1.1
call delay
setb p1.2
call delay

setb p1.3
call delay
setb p1.4

call delay
setb p1.5

call delay
setb p1.6

call delay
setb p1.7

call delay

mov p1, #00h
call delay

sjmp start

delay:
mov r2, #0ah
loop1: mov r1, #0c8h
loop0: mov r0, #0ffh
wait: djnz r0, wait
	djnz r1, loop0
	djnz r2, loop1
reti
end
