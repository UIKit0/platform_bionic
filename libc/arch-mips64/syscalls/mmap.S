/* Generated by gensyscalls.py. Do not edit. */

#include <asm/unistd.h>
#include <machine/asm.h>
#include <machine/regdef.h>
    .text
    .globl mmap
    .align 4
    .ent mmap

mmap:
    .set push
    .set noreorder
    li v0, __NR_mmap
    syscall
    bnez a3, 1f
    move a0, v0
    j ra
    nop
1:
    move t0, ra
    bal     2f
    nop
2:
    .cpsetup ra, t1, 2b
    LA t9,__set_errno
    .cpreturn
    j t9
    move ra, t0
    .set pop
    .end mmap

    .globl mmap64
    .equ mmap64, mmap
