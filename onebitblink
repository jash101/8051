start:
cpl p1.2

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
