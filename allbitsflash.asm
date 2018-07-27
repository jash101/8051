; Code to alternate toggle all the 8 bits in Port 1 of 8051
start:
mov p1, #0ffh
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
