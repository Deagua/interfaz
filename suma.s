@ suma.s 

@ instrucciones que empiezan con punto son instrucciones para el ensamblador.
.section    .data   	@ una sección para datos (sin usar).
.section    .text   	@ una sección para texto (sin usar).
.globl      _start  	@ establece la etiqueta global "_start."

_start:             	@ código empieza aquí.
mov %r1, $7         	@ coloca el valor de 7 en r1.
mov %r0, $8		        @ coloca el valor de 8 en r0.
add %r0, %r0, %r1	    @ suma r0 a r1 y guarda el resultado en r0.

mov %r7, $1         	@ asi es como se establece una salida syscall.
svc $0              	@ la interrupción para despertar el kernel.
