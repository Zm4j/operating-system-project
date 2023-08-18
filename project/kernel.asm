
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	68013103          	ld	sp,1664(sp) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x50>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5d8060ef          	jal	ra,800065f4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:
.extern handle
.global supervisorTrap
.align 4
supervisorTrap:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00213823          	sd	sp,16(sp)
    8000100c:	00313c23          	sd	gp,24(sp)
    80001010:	02413023          	sd	tp,32(sp)
    80001014:	02513423          	sd	t0,40(sp)
    80001018:	02613823          	sd	t1,48(sp)
    8000101c:	02713c23          	sd	t2,56(sp)
    80001020:	04813023          	sd	s0,64(sp)
    80001024:	04913423          	sd	s1,72(sp)
    80001028:	04a13823          	sd	a0,80(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    call handle
    80001080:	480000ef          	jal	ra,80001500 <handle>

    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001084:	00813083          	ld	ra,8(sp)
    80001088:	01013103          	ld	sp,16(sp)
    8000108c:	01813183          	ld	gp,24(sp)
    80001090:	02013203          	ld	tp,32(sp)
    80001094:	02813283          	ld	t0,40(sp)
    80001098:	03013303          	ld	t1,48(sp)
    8000109c:	03813383          	ld	t2,56(sp)
    800010a0:	04013403          	ld	s0,64(sp)
    800010a4:	04813483          	ld	s1,72(sp)
    800010a8:	05013503          	ld	a0,80(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)

    addi sp,sp, 256
    80001100:	10010113          	addi	sp,sp,256

    sret
    80001104:	10200073          	sret

0000000080001108 <push>:

.global push
push:
    addi sp, sp, -256
    80001108:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000110c:	00313c23          	sd	gp,24(sp)
    80001110:	02413023          	sd	tp,32(sp)
    80001114:	02513423          	sd	t0,40(sp)
    80001118:	02613823          	sd	t1,48(sp)
    8000111c:	02713c23          	sd	t2,56(sp)
    80001120:	04813023          	sd	s0,64(sp)
    80001124:	04913423          	sd	s1,72(sp)
    80001128:	04a13823          	sd	a0,80(sp)
    8000112c:	04b13c23          	sd	a1,88(sp)
    80001130:	06c13023          	sd	a2,96(sp)
    80001134:	06d13423          	sd	a3,104(sp)
    80001138:	06e13823          	sd	a4,112(sp)
    8000113c:	06f13c23          	sd	a5,120(sp)
    80001140:	09013023          	sd	a6,128(sp)
    80001144:	09113423          	sd	a7,136(sp)
    80001148:	09213823          	sd	s2,144(sp)
    8000114c:	09313c23          	sd	s3,152(sp)
    80001150:	0b413023          	sd	s4,160(sp)
    80001154:	0b513423          	sd	s5,168(sp)
    80001158:	0b613823          	sd	s6,176(sp)
    8000115c:	0b713c23          	sd	s7,184(sp)
    80001160:	0d813023          	sd	s8,192(sp)
    80001164:	0d913423          	sd	s9,200(sp)
    80001168:	0da13823          	sd	s10,208(sp)
    8000116c:	0db13c23          	sd	s11,216(sp)
    80001170:	0fc13023          	sd	t3,224(sp)
    80001174:	0fd13423          	sd	t4,232(sp)
    80001178:	0fe13823          	sd	t5,240(sp)
    8000117c:	0ff13c23          	sd	t6,248(sp)

    ret
    80001180:	00008067          	ret

0000000080001184 <pop>:

.global pop
pop:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001184:	01813183          	ld	gp,24(sp)
    80001188:	02013203          	ld	tp,32(sp)
    8000118c:	02813283          	ld	t0,40(sp)
    80001190:	03013303          	ld	t1,48(sp)
    80001194:	03813383          	ld	t2,56(sp)
    80001198:	04013403          	ld	s0,64(sp)
    8000119c:	04813483          	ld	s1,72(sp)
    800011a0:	05013503          	ld	a0,80(sp)
    800011a4:	05813583          	ld	a1,88(sp)
    800011a8:	06013603          	ld	a2,96(sp)
    800011ac:	06813683          	ld	a3,104(sp)
    800011b0:	07013703          	ld	a4,112(sp)
    800011b4:	07813783          	ld	a5,120(sp)
    800011b8:	08013803          	ld	a6,128(sp)
    800011bc:	08813883          	ld	a7,136(sp)
    800011c0:	09013903          	ld	s2,144(sp)
    800011c4:	09813983          	ld	s3,152(sp)
    800011c8:	0a013a03          	ld	s4,160(sp)
    800011cc:	0a813a83          	ld	s5,168(sp)
    800011d0:	0b013b03          	ld	s6,176(sp)
    800011d4:	0b813b83          	ld	s7,184(sp)
    800011d8:	0c013c03          	ld	s8,192(sp)
    800011dc:	0c813c83          	ld	s9,200(sp)
    800011e0:	0d013d03          	ld	s10,208(sp)
    800011e4:	0d813d83          	ld	s11,216(sp)
    800011e8:	0e013e03          	ld	t3,224(sp)
    800011ec:	0e813e83          	ld	t4,232(sp)
    800011f0:	0f013f03          	ld	t5,240(sp)
    800011f4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800011f8:	10010113          	addi	sp,sp,256

    ret
    800011fc:	00008067          	ret

0000000080001200 <contextSwitch>:

.global contextSwitch
contextSwitch:
    sd ra, 0*8(a0)
    80001200:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    80001204:	00253423          	sd	sp,8(a0)
    ld ra, 0*8(a1)
    80001208:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    8000120c:	0085b103          	ld	sp,8(a1)

    ret
    80001210:	00008067          	ret
	...

0000000080001220 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001220:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001224:	00b29a63          	bne	t0,a1,80001238 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001228:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000122c:	fe029ae3          	bnez	t0,80001220 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001230:	00000513          	li	a0,0
    jr ra                  # Return.
    80001234:	00008067          	ret

0000000080001238 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001238:	00100513          	li	a0,1
    8000123c:	00008067          	ret

0000000080001240 <_Z9mem_allocm>:
//

#include "../h/syscall_c.h"
#include "../h/printing.h"

void* mem_alloc(size_t size){
    80001240:	ff010113          	addi	sp,sp,-16
    80001244:	00813423          	sd	s0,8(sp)
    80001248:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (size)); // u a1 stavljamo size
    8000124c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x01)); // u a0 stavljamo 0x01
    80001250:	00100793          	li	a5,1
    80001254:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001258:	00000073          	ecall

    void* rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    8000125c:	00050513          	mv	a0,a0
    return rez;
}
    80001260:	00813403          	ld	s0,8(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_Z8mem_freePv>:

int mem_free(void* add){
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00813423          	sd	s0,8(sp)
    80001274:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (add)); // u a1 stavljamo add
    80001278:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x02)); // u a0 stavljamo 0x01
    8000127c:	00200793          	li	a5,2
    80001280:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001284:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    80001288:	00050513          	mv	a0,a0
    return rez;
}
    8000128c:	0005051b          	sext.w	a0,a0
    80001290:	00813403          	ld	s0,8(sp)
    80001294:	01010113          	addi	sp,sp,16
    80001298:	00008067          	ret

000000008000129c <_Z13thread_createPP3NitPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*),void* arg){
    8000129c:	ff010113          	addi	sp,sp,-16
    800012a0:	00813423          	sd	s0,8(sp)
    800012a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    800012a8:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800012ac:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800012b0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x11));
    800012b4:	01100793          	li	a5,17
    800012b8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012bc:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    800012c0:	00050513          	mv	a0,a0
    return rez;
}
    800012c4:	0005051b          	sext.w	a0,a0
    800012c8:	00813403          	ld	s0,8(sp)
    800012cc:	01010113          	addi	sp,sp,16
    800012d0:	00008067          	ret

00000000800012d4 <_Z11thread_exitv>:

int thread_exit(){
    800012d4:	ff010113          	addi	sp,sp,-16
    800012d8:	00813423          	sd	s0,8(sp)
    800012dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x12));
    800012e0:	01200793          	li	a5,18
    800012e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012e8:	00000073          	ecall
    return 0;
}
    800012ec:	00000513          	li	a0,0
    800012f0:	00813403          	ld	s0,8(sp)
    800012f4:	01010113          	addi	sp,sp,16
    800012f8:	00008067          	ret

00000000800012fc <_Z15thread_dispatchv>:

void thread_dispatch(){
    800012fc:	ff010113          	addi	sp,sp,-16
    80001300:	00813423          	sd	s0,8(sp)
    80001304:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x13));
    80001308:	01300793          	li	a5,19
    8000130c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001310:	00000073          	ecall
}
    80001314:	00813403          	ld	s0,8(sp)
    80001318:	01010113          	addi	sp,sp,16
    8000131c:	00008067          	ret

0000000080001320 <_Z8sem_openPP7Semaforj>:

int sem_open(sem_t* handle, unsigned init){
    80001320:	ff010113          	addi	sp,sp,-16
    80001324:	00813423          	sd	s0,8(sp)
    80001328:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" : : "r" (init));
    8000132c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001330:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x21));
    80001334:	02100793          	li	a5,33
    80001338:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000133c:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    80001340:	00050513          	mv	a0,a0
    return rez;
}
    80001344:	0005051b          	sext.w	a0,a0
    80001348:	00813403          	ld	s0,8(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <_Z9sem_closeP7Semafor>:

int sem_close(sem_t handle){
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00813423          	sd	s0,8(sp)
    8000135c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001360:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x22));
    80001364:	02200793          	li	a5,34
    80001368:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000136c:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    80001370:	00050513          	mv	a0,a0
    return rez;
}
    80001374:	0005051b          	sext.w	a0,a0
    80001378:	00813403          	ld	s0,8(sp)
    8000137c:	01010113          	addi	sp,sp,16
    80001380:	00008067          	ret

0000000080001384 <_Z8sem_waitP7Semafor>:

int sem_wait(sem_t id){
    80001384:	ff010113          	addi	sp,sp,-16
    80001388:	00813423          	sd	s0,8(sp)
    8000138c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    80001390:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x23));
    80001394:	02300793          	li	a5,35
    80001398:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000139c:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    800013a0:	00050513          	mv	a0,a0
    return rez;
}
    800013a4:	0005051b          	sext.w	a0,a0
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	01010113          	addi	sp,sp,16
    800013b0:	00008067          	ret

00000000800013b4 <_Z10sem_signalP7Semafor>:

int sem_signal(sem_t id){
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    800013c0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x24));
    800013c4:	02400793          	li	a5,36
    800013c8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013cc:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    800013d0:	00050513          	mv	a0,a0
    return rez;
}
    800013d4:	0005051b          	sext.w	a0,a0
    800013d8:	00813403          	ld	s0,8(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_Z10time_sleepm>:

int time_sleep(time_t t) {
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (t));
    800013f0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x31));
    800013f4:	03100793          	li	a5,49
    800013f8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013fc:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    80001400:	00050513          	mv	a0,a0
    return rez;
}
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_Z4getcv>:

char getc(){
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00813423          	sd	s0,8(sp)
    8000141c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x41));
    80001420:	04100793          	li	a5,65
    80001424:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001428:	00000073          	ecall

    char rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    8000142c:	00050513          	mv	a0,a0
    80001430:	0ff57513          	andi	a0,a0,255

    if(rez=='k') return 'l';
    80001434:	06b00793          	li	a5,107
    80001438:	00f50863          	beq	a0,a5,80001448 <_Z4getcv+0x34>

    return rez;
}
    8000143c:	00813403          	ld	s0,8(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret
    if(rez=='k') return 'l';
    80001448:	06c00513          	li	a0,108
    8000144c:	ff1ff06f          	j	8000143c <_Z4getcv+0x28>

0000000080001450 <_Z4putcc>:

void putc(char c){
    80001450:	ff010113          	addi	sp,sp,-16
    80001454:	00813423          	sd	s0,8(sp)
    80001458:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (c));
    8000145c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x42));
    80001460:	04200793          	li	a5,66
    80001464:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001468:	00000073          	ecall
}
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret

0000000080001478 <_Z12putSchedulerP3Nit>:

int putScheduler(Nit* t){
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (t));
    80001484:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x69));
    80001488:	06900793          	li	a5,105
    8000148c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001490:	00000073          	ecall

    return 0;
}
    80001494:	00000513          	li	a0,0
    80001498:	00813403          	ld	s0,8(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_Z14thread_create1PP3NitPFvPvES2_>:

int thread_create1(thread_t* handle, void(*start_routine)(void*),void* arg){
    800014a4:	ff010113          	addi	sp,sp,-16
    800014a8:	00813423          	sd	s0,8(sp)
    800014ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    800014b0:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800014b4:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800014b8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x68));
    800014bc:	06800793          	li	a5,104
    800014c0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014c4:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    800014c8:	00050513          	mv	a0,a0
    return rez;
}
    800014cc:	0005051b          	sext.w	a0,a0
    800014d0:	00813403          	ld	s0,8(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret

00000000800014dc <_Z13promenarezimav>:

void promenarezima() {
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x70));
    800014e8:	07000793          	li	a5,112
    800014ec:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014f0:	00000073          	ecall
}
    800014f4:	00813403          	ld	s0,8(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret

0000000080001500 <handle>:
#include "../h/thread.h"
#include "../h/semafor.h"
#include "../h/scheduler.h"
#include "../h/konzola.h"

extern "C" void handle(){
    80001500:	f2010113          	addi	sp,sp,-224
    80001504:	0c113c23          	sd	ra,216(sp)
    80001508:	0c813823          	sd	s0,208(sp)
    8000150c:	0c913423          	sd	s1,200(sp)
    80001510:	0e010413          	addi	s0,sp,224
    uint64 volatile prekid;
    __asm__ volatile("csrr %0, scause" : "=r" (prekid));
    80001514:	142027f3          	csrr	a5,scause
    80001518:	fcf43c23          	sd	a5,-40(s0)
    //printString("\nsstatus: \n");

    //uint64 volatile status;
    //__asm__ volatile("csrr %0, sstatus" : "=r" (status));

    if(prekid%16>=8 && !(prekid >> 63)){
    8000151c:	fd843783          	ld	a5,-40(s0)
    80001520:	0087f793          	andi	a5,a5,8
    80001524:	10078a63          	beqz	a5,80001638 <handle+0x138>
    80001528:	fd843783          	ld	a5,-40(s0)
    8000152c:	1007c663          	bltz	a5,80001638 <handle+0x138>
        __asm__ volatile("csrr x3, sepc");
    80001530:	141021f3          	csrr	gp,sepc
        __asm__ volatile("addi x3,x3,4");
    80001534:	00418193          	addi	gp,gp,4
        __asm__ volatile("csrw sepc, x3");
    80001538:	14119073          	csrw	sepc,gp
        uint64 volatile a0;
        __asm__ volatile("mv %0, a0" : "=r" (a0));
    8000153c:	00050793          	mv	a5,a0
    80001540:	f2f43823          	sd	a5,-208(s0)
        //mem_alloc
        if(a0==0x01){
    80001544:	f3043703          	ld	a4,-208(s0)
    80001548:	00100793          	li	a5,1
    8000154c:	12f70e63          	beq	a4,a5,80001688 <handle+0x188>
            __asm__ volatile ("mv %0, a1" : "=r" (size));
            Memorija::alokacija(size);
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //mem_free
        if(a0==0x02){
    80001550:	f3043703          	ld	a4,-208(s0)
    80001554:	00200793          	li	a5,2
    80001558:	14f70263          	beq	a4,a5,8000169c <handle+0x19c>
            __asm__ volatile ("mv %0, a1" : "=r" (size));
            Memorija::oslobadjanje(size);
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //thread_create
        if(a0==0x11){
    8000155c:	f3043703          	ld	a4,-208(s0)
    80001560:	01100793          	li	a5,17
    80001564:	14f70663          	beq	a4,a5,800016b0 <handle+0x1b0>
            }

            __asm__ volatile ("sd a0, 80(s0)");
        }
        //thread_exit
        if(a0==0x12){
    80001568:	f3043703          	ld	a4,-208(s0)
    8000156c:	01200793          	li	a5,18
    80001570:	18f70a63          	beq	a4,a5,80001704 <handle+0x204>
            Nit::running->finished=true;
            Nit::running->flagunisti=true;
            Nit::dispatch();
        }
        //thread_dispatch
        if(a0==0x13){
    80001574:	f3043703          	ld	a4,-208(s0)
    80001578:	01300793          	li	a5,19
    8000157c:	1af70663          	beq	a4,a5,80001728 <handle+0x228>
            Nit::dispatch();
            __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
            __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
        }
        //sem_open
        if(a0==0x21){
    80001580:	f3043703          	ld	a4,-208(s0)
    80001584:	02100793          	li	a5,33
    80001588:	1cf70663          	beq	a4,a5,80001754 <handle+0x254>

            // ovo isto treba da se menja, da vraca 0 ili sta vec
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //sem_close
        if(a0==0x22){
    8000158c:	f3043703          	ld	a4,-208(s0)
    80001590:	02200793          	li	a5,34
    80001594:	22f70263          	beq	a4,a5,800017b8 <handle+0x2b8>
            int a0=0;
            __asm__ volatile ("mv a0, %0" : : "r" (a0));
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //sem_wait
        if(a0==0x23){
    80001598:	f3043703          	ld	a4,-208(s0)
    8000159c:	02300793          	li	a5,35
    800015a0:	22f70e63          	beq	a4,a5,800017dc <handle+0x2dc>
            __asm__ volatile ("mv a0, %0" : : "r" (a0));
            __asm__ volatile ("sd a0, 80(s0)");

        }
        //sem_signal
        if(a0==0x24){
    800015a4:	f3043703          	ld	a4,-208(s0)
    800015a8:	02400793          	li	a5,36
    800015ac:	28f70a63          	beq	a4,a5,80001840 <handle+0x340>
            __asm__ volatile ("mv %0, a1" : "=r" (id));
            id->signal();
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //time_sleep
        if(a0==0x31){
    800015b0:	f3043703          	ld	a4,-208(s0)
    800015b4:	03100793          	li	a5,49
    800015b8:	2af70263          	beq	a4,a5,8000185c <handle+0x35c>
            __asm__ volatile ("mv %0, a1" : "=r" (t));
            Scheduler::threadsleep(t);
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //getc
        if(a0==0x41){
    800015bc:	f3043703          	ld	a4,-208(s0)
    800015c0:	04100793          	li	a5,65
    800015c4:	2af70863          	beq	a4,a5,80001874 <handle+0x374>

            __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
            __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
        }
        //putc
        if(a0==0x42){
    800015c8:	f3043703          	ld	a4,-208(s0)
    800015cc:	04200793          	li	a5,66
    800015d0:	2cf70a63          	beq	a4,a5,800018a4 <handle+0x3a4>

            __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
            __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
        }
        //putScheduler
        if(a0==0x69){
    800015d4:	f3043703          	ld	a4,-208(s0)
    800015d8:	06900793          	li	a5,105
    800015dc:	30f70263          	beq	a4,a5,800018e0 <handle+0x3e0>
            __asm__ volatile ("mv %0, a1" : "=r" (t));
            Scheduler::put(t);
            __asm__ volatile("sd a0, 80(s0)");
        }
        //promena rezima
        if(a0==0x70){
    800015e0:	f3043703          	ld	a4,-208(s0)
    800015e4:	07000793          	li	a5,112
    800015e8:	30f70a63          	beq	a4,a5,800018fc <handle+0x3fc>
            uint64 volatile sstatus;
            __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
            sstatus|=256;
            __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
        }
        if(a0==0x68){
    800015ec:	f3043703          	ld	a4,-208(s0)
    800015f0:	06800793          	li	a5,104
    800015f4:	08f71063          	bne	a4,a5,80001674 <handle+0x174>
            void* volatile arg;
            void(*start_routine)(void*);
            Nit** volatile handle;

            __asm__ volatile ("mv %0, a3" : "=r" (arg));
    800015f8:	00068793          	mv	a5,a3
    800015fc:	faf43c23          	sd	a5,-72(s0)
            __asm__ volatile ("mv %0, a2" : "=r" (start_routine));
    80001600:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80001604:	00058793          	mv	a5,a1
    80001608:	fcf43023          	sd	a5,-64(s0)

            //print((uint64)arg);
            *handle = Nit::konstruktor(start_routine,arg,0);
    8000160c:	fb843583          	ld	a1,-72(s0)
    80001610:	fc043483          	ld	s1,-64(s0)
    80001614:	00000613          	li	a2,0
    80001618:	00005097          	auipc	ra,0x5
    8000161c:	b70080e7          	jalr	-1168(ra) # 80006188 <_ZN3Nit11konstruktorEPFvPvES0_i>
    80001620:	00a4b023          	sd	a0,0(s1)
            // ovo treba proveriti

            if(*handle==nullptr) {
    80001624:	fc043783          	ld	a5,-64(s0)
    80001628:	0007b783          	ld	a5,0(a5)
    8000162c:	2e078863          	beqz	a5,8000191c <handle+0x41c>
                a0=-2;
                __asm__ volatile ("mv a0, %0" : : "r" (a0));
            }

            __asm__ volatile ("sd a0, 80(s0)");
    80001630:	04a43823          	sd	a0,80(s0)
    80001634:	0400006f          	j	80001674 <handle+0x174>
        }
    }
    else{
        if(prekid == 0x8000000000000001UL){
    80001638:	fd843703          	ld	a4,-40(s0)
    8000163c:	fff00793          	li	a5,-1
    80001640:	03f79793          	slli	a5,a5,0x3f
    80001644:	00178793          	addi	a5,a5,1
    80001648:	2ef70463          	beq	a4,a5,80001930 <handle+0x430>
                Nit::tajmer = 0;
            }

            __asm__ volatile("csrc sip, %0"::"r" (maska));
        }
        if(prekid == 0x8000000000000009UL){
    8000164c:	fd843703          	ld	a4,-40(s0)
    80001650:	fff00793          	li	a5,-1
    80001654:	03f79793          	slli	a5,a5,0x3f
    80001658:	00978793          	addi	a5,a5,9
    8000165c:	32f70e63          	beq	a4,a5,80001998 <handle+0x498>
                    Konzola::putulaz(*(char*)CONSOLE_RX_DATA);
                }
            }
            plic_complete(CONSOLE_IRQ);
        }
        else if(prekid!=0x8000000000000001UL) {
    80001660:	fd843703          	ld	a4,-40(s0)
    80001664:	fff00793          	li	a5,-1
    80001668:	03f79793          	slli	a5,a5,0x3f
    8000166c:	00178793          	addi	a5,a5,1
    80001670:	38f71463          	bne	a4,a5,800019f8 <handle+0x4f8>
            printString("\nsstatus: \n");
            //print(status);
            while (1);
        }
    }
}
    80001674:	0d813083          	ld	ra,216(sp)
    80001678:	0d013403          	ld	s0,208(sp)
    8000167c:	0c813483          	ld	s1,200(sp)
    80001680:	0e010113          	addi	sp,sp,224
    80001684:	00008067          	ret
            __asm__ volatile ("mv %0, a1" : "=r" (size));
    80001688:	00058513          	mv	a0,a1
            Memorija::alokacija(size);
    8000168c:	00004097          	auipc	ra,0x4
    80001690:	cac080e7          	jalr	-852(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
            __asm__ volatile ("sd a0, 80(s0)");
    80001694:	04a43823          	sd	a0,80(s0)
    80001698:	eb9ff06f          	j	80001550 <handle+0x50>
            __asm__ volatile ("mv %0, a1" : "=r" (size));
    8000169c:	00058513          	mv	a0,a1
            Memorija::oslobadjanje(size);
    800016a0:	00004097          	auipc	ra,0x4
    800016a4:	db8080e7          	jalr	-584(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
            __asm__ volatile ("sd a0, 80(s0)");
    800016a8:	04a43823          	sd	a0,80(s0)
    800016ac:	eb1ff06f          	j	8000155c <handle+0x5c>
            __asm__ volatile ("mv %0, a3" : "=r" (arg));
    800016b0:	00068793          	mv	a5,a3
    800016b4:	f2f43c23          	sd	a5,-200(s0)
            __asm__ volatile ("mv %0, a2" : "=r" (start_routine));
    800016b8:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800016bc:	00058793          	mv	a5,a1
    800016c0:	f4f43023          	sd	a5,-192(s0)
            *handle = Nit::konstruktor(start_routine,arg,1);
    800016c4:	f3843583          	ld	a1,-200(s0)
    800016c8:	f4043483          	ld	s1,-192(s0)
    800016cc:	00100613          	li	a2,1
    800016d0:	00005097          	auipc	ra,0x5
    800016d4:	ab8080e7          	jalr	-1352(ra) # 80006188 <_ZN3Nit11konstruktorEPFvPvES0_i>
    800016d8:	00a4b023          	sd	a0,0(s1)
            if(*handle==nullptr) {
    800016dc:	f4043783          	ld	a5,-192(s0)
    800016e0:	0007b783          	ld	a5,0(a5)
    800016e4:	00078663          	beqz	a5,800016f0 <handle+0x1f0>
            __asm__ volatile ("sd a0, 80(s0)");
    800016e8:	04a43823          	sd	a0,80(s0)
    800016ec:	e7dff06f          	j	80001568 <handle+0x68>
                a0=-2;
    800016f0:	ffe00793          	li	a5,-2
    800016f4:	f2f43823          	sd	a5,-208(s0)
                __asm__ volatile ("mv a0, %0" : : "r" (a0));
    800016f8:	f3043783          	ld	a5,-208(s0)
    800016fc:	00078513          	mv	a0,a5
    80001700:	fe9ff06f          	j	800016e8 <handle+0x1e8>
            Nit::running->finished=true;
    80001704:	0000a797          	auipc	a5,0xa
    80001708:	f9c7b783          	ld	a5,-100(a5) # 8000b6a0 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000170c:	0007b783          	ld	a5,0(a5)
    80001710:	00100713          	li	a4,1
    80001714:	00e78423          	sb	a4,8(a5)
            Nit::running->flagunisti=true;
    80001718:	00e78c23          	sb	a4,24(a5)
            Nit::dispatch();
    8000171c:	00005097          	auipc	ra,0x5
    80001720:	ba8080e7          	jalr	-1112(ra) # 800062c4 <_ZN3Nit8dispatchEv>
    80001724:	e51ff06f          	j	80001574 <handle+0x74>
            __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    80001728:	141027f3          	csrr	a5,sepc
    8000172c:	f4f43423          	sd	a5,-184(s0)
            __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    80001730:	100027f3          	csrr	a5,sstatus
    80001734:	f4f43823          	sd	a5,-176(s0)
            Nit::dispatch();
    80001738:	00005097          	auipc	ra,0x5
    8000173c:	b8c080e7          	jalr	-1140(ra) # 800062c4 <_ZN3Nit8dispatchEv>
            __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    80001740:	f4843783          	ld	a5,-184(s0)
    80001744:	14179073          	csrw	sepc,a5
            __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80001748:	f5043783          	ld	a5,-176(s0)
    8000174c:	10079073          	csrw	sstatus,a5
    80001750:	e31ff06f          	j	80001580 <handle+0x80>
            __asm__ volatile ("mv %0, a2" : "=r" (val));
    80001754:	00060793          	mv	a5,a2
    80001758:	f2f42223          	sw	a5,-220(s0)
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    8000175c:	00058793          	mv	a5,a1
    80001760:	f4f43c23          	sd	a5,-168(s0)
            *handle = new Semafor(val);
    80001764:	f2442483          	lw	s1,-220(s0)
    80001768:	0004849b          	sext.w	s1,s1
    int val;

    void Print();

    static void *operator new(uint64 n){
        return Memorija::alokacija(n);
    8000176c:	02000513          	li	a0,32
    80001770:	00004097          	auipc	ra,0x4
    80001774:	bc8080e7          	jalr	-1080(ra) # 80005338 <_ZN8Memorija9alokacijaEm>

    static void operator delete[](void* p){
        Memorija::oslobadjanje(p);
    }

    Semafor(unsigned n=1):val(n){}
    80001778:	00052023          	sw	zero,0(a0)
    8000177c:	00053423          	sd	zero,8(a0)
    80001780:	00053823          	sd	zero,16(a0)
    80001784:	00952c23          	sw	s1,24(a0)
    80001788:	f5843703          	ld	a4,-168(s0)
    8000178c:	00a73023          	sd	a0,0(a4)
            if(*handle==nullptr) {
    80001790:	f5843783          	ld	a5,-168(s0)
    80001794:	0007b783          	ld	a5,0(a5)
    80001798:	00078663          	beqz	a5,800017a4 <handle+0x2a4>
            __asm__ volatile ("sd a0, 80(s0)");
    8000179c:	04a43823          	sd	a0,80(s0)
    800017a0:	dedff06f          	j	8000158c <handle+0x8c>
                a0=-2;
    800017a4:	ffe00793          	li	a5,-2
    800017a8:	f2f43823          	sd	a5,-208(s0)
                __asm__ volatile ("mv a0, %0" : : "r" (a0));
    800017ac:	f3043783          	ld	a5,-208(s0)
    800017b0:	00078513          	mv	a0,a5
    800017b4:	fe9ff06f          	j	8000179c <handle+0x29c>
            __asm__ volatile ("mv %0, a1" : "=r" (id));
    800017b8:	00058793          	mv	a5,a1
    800017bc:	f6f43023          	sd	a5,-160(s0)
            id->close();
    800017c0:	f6043503          	ld	a0,-160(s0)
    800017c4:	00005097          	auipc	ra,0x5
    800017c8:	dd4080e7          	jalr	-556(ra) # 80006598 <_ZN7Semafor5closeEv>
            __asm__ volatile ("mv a0, %0" : : "r" (a0));
    800017cc:	00000793          	li	a5,0
    800017d0:	00078513          	mv	a0,a5
            __asm__ volatile ("sd a0, 80(s0)");
    800017d4:	04a43823          	sd	a0,80(s0)
    800017d8:	dc1ff06f          	j	80001598 <handle+0x98>
            __asm__ volatile ("mv %0, a1" : "=r" (id));
    800017dc:	00058793          	mv	a5,a1
    800017e0:	f6f43423          	sd	a5,-152(s0)
            a0=id->wait();
    800017e4:	f6843503          	ld	a0,-152(s0)
    800017e8:	00005097          	auipc	ra,0x5
    800017ec:	bf4080e7          	jalr	-1036(ra) # 800063dc <_ZN7Semafor4waitEv>
    800017f0:	f2a42423          	sw	a0,-216(s0)
            __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    800017f4:	141027f3          	csrr	a5,sepc
    800017f8:	f6f43823          	sd	a5,-144(s0)
            __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    800017fc:	100027f3          	csrr	a5,sstatus
    80001800:	f6f43c23          	sd	a5,-136(s0)
            Nit::dispatch();
    80001804:	00005097          	auipc	ra,0x5
    80001808:	ac0080e7          	jalr	-1344(ra) # 800062c4 <_ZN3Nit8dispatchEv>
            __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    8000180c:	f7043783          	ld	a5,-144(s0)
    80001810:	14179073          	csrw	sepc,a5
            __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80001814:	f7843783          	ld	a5,-136(s0)
    80001818:	10079073          	csrw	sstatus,a5
            a0=Nit::running->prekid;
    8000181c:	0000a797          	auipc	a5,0xa
    80001820:	e847b783          	ld	a5,-380(a5) # 8000b6a0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001824:	0007b783          	ld	a5,0(a5)
    80001828:	0007a783          	lw	a5,0(a5)
    8000182c:	f2f42423          	sw	a5,-216(s0)
            __asm__ volatile ("mv a0, %0" : : "r" (a0));
    80001830:	f2842783          	lw	a5,-216(s0)
    80001834:	00078513          	mv	a0,a5
            __asm__ volatile ("sd a0, 80(s0)");
    80001838:	04a43823          	sd	a0,80(s0)
    8000183c:	d69ff06f          	j	800015a4 <handle+0xa4>
            __asm__ volatile ("mv %0, a1" : "=r" (id));
    80001840:	00058793          	mv	a5,a1
    80001844:	f8f43023          	sd	a5,-128(s0)
            id->signal();
    80001848:	f8043503          	ld	a0,-128(s0)
    8000184c:	00005097          	auipc	ra,0x5
    80001850:	c30080e7          	jalr	-976(ra) # 8000647c <_ZN7Semafor6signalEv>
            __asm__ volatile ("sd a0, 80(s0)");
    80001854:	04a43823          	sd	a0,80(s0)
    80001858:	d59ff06f          	j	800015b0 <handle+0xb0>
            __asm__ volatile ("mv %0, a1" : "=r" (t));
    8000185c:	00058513          	mv	a0,a1
            Scheduler::threadsleep(t);
    80001860:	0005051b          	sext.w	a0,a0
    80001864:	00004097          	auipc	ra,0x4
    80001868:	0e0080e7          	jalr	224(ra) # 80005944 <_ZN9Scheduler11threadsleepEi>
            __asm__ volatile ("sd a0, 80(s0)");
    8000186c:	04a43823          	sd	a0,80(s0)
    80001870:	d4dff06f          	j	800015bc <handle+0xbc>
            __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    80001874:	141027f3          	csrr	a5,sepc
    80001878:	f8f43423          	sd	a5,-120(s0)
            __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    8000187c:	100027f3          	csrr	a5,sstatus
    80001880:	f8f43823          	sd	a5,-112(s0)
            Konzola::getulaz();
    80001884:	00003097          	auipc	ra,0x3
    80001888:	7bc080e7          	jalr	1980(ra) # 80005040 <_ZN7Konzola7getulazEv>
            __asm__ volatile("sd a0, 80(s0)");
    8000188c:	04a43823          	sd	a0,80(s0)
            __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    80001890:	f8843783          	ld	a5,-120(s0)
    80001894:	14179073          	csrw	sepc,a5
            __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80001898:	f9043783          	ld	a5,-112(s0)
    8000189c:	10079073          	csrw	sstatus,a5
    800018a0:	d29ff06f          	j	800015c8 <handle+0xc8>
            __asm__ volatile ("mv %0, a1" : "=r" (c));
    800018a4:	00058793          	mv	a5,a1
    800018a8:	f2f401a3          	sb	a5,-221(s0)
            __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    800018ac:	141027f3          	csrr	a5,sepc
    800018b0:	f8f43c23          	sd	a5,-104(s0)
            __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    800018b4:	100027f3          	csrr	a5,sstatus
    800018b8:	faf43023          	sd	a5,-96(s0)
            Konzola::putizlaz(c);
    800018bc:	f2344503          	lbu	a0,-221(s0)
    800018c0:	0ff57513          	andi	a0,a0,255
    800018c4:	00004097          	auipc	ra,0x4
    800018c8:	854080e7          	jalr	-1964(ra) # 80005118 <_ZN7Konzola8putizlazEi>
            __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    800018cc:	f9843783          	ld	a5,-104(s0)
    800018d0:	14179073          	csrw	sepc,a5
            __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    800018d4:	fa043783          	ld	a5,-96(s0)
    800018d8:	10079073          	csrw	sstatus,a5
    800018dc:	cf9ff06f          	j	800015d4 <handle+0xd4>
            __asm__ volatile ("mv %0, a1" : "=r" (t));
    800018e0:	00058793          	mv	a5,a1
    800018e4:	faf43423          	sd	a5,-88(s0)
            Scheduler::put(t);
    800018e8:	fa843503          	ld	a0,-88(s0)
    800018ec:	00004097          	auipc	ra,0x4
    800018f0:	db4080e7          	jalr	-588(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>
            __asm__ volatile("sd a0, 80(s0)");
    800018f4:	04a43823          	sd	a0,80(s0)
    800018f8:	ce9ff06f          	j	800015e0 <handle+0xe0>
            __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    800018fc:	100027f3          	csrr	a5,sstatus
    80001900:	faf43823          	sd	a5,-80(s0)
            sstatus|=256;
    80001904:	fb043783          	ld	a5,-80(s0)
    80001908:	1007e793          	ori	a5,a5,256
    8000190c:	faf43823          	sd	a5,-80(s0)
            __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
    80001910:	fb043783          	ld	a5,-80(s0)
    80001914:	10079073          	csrw	sstatus,a5
    80001918:	cd5ff06f          	j	800015ec <handle+0xec>
                a0=-2;
    8000191c:	ffe00793          	li	a5,-2
    80001920:	f2f43823          	sd	a5,-208(s0)
                __asm__ volatile ("mv a0, %0" : : "r" (a0));
    80001924:	f3043783          	ld	a5,-208(s0)
    80001928:	00078513          	mv	a0,a5
    8000192c:	d05ff06f          	j	80001630 <handle+0x130>
            Nit::tajmer++;
    80001930:	0000a497          	auipc	s1,0xa
    80001934:	d684b483          	ld	s1,-664(s1) # 8000b698 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001938:	0004a783          	lw	a5,0(s1)
    8000193c:	0017879b          	addiw	a5,a5,1
    80001940:	00f4a023          	sw	a5,0(s1)
            Scheduler::dekremntacija(1); //ovo je za uspavane niti
    80001944:	00100513          	li	a0,1
    80001948:	00004097          	auipc	ra,0x4
    8000194c:	f4c080e7          	jalr	-180(ra) # 80005894 <_ZN9Scheduler13dekremntacijaEi>
            if (Nit::tajmer % (DEFAULT_TIME_SLICE) == 0) {
    80001950:	0004a783          	lw	a5,0(s1)
    80001954:	0017f793          	andi	a5,a5,1
    80001958:	00078863          	beqz	a5,80001968 <handle+0x468>
            __asm__ volatile("csrc sip, %0"::"r" (maska));
    8000195c:	00200793          	li	a5,2
    80001960:	1447b073          	csrc	sip,a5
    80001964:	ce9ff06f          	j	8000164c <handle+0x14c>
                __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    80001968:	141027f3          	csrr	a5,sepc
    8000196c:	fcf43423          	sd	a5,-56(s0)
                __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    80001970:	100027f3          	csrr	a5,sstatus
    80001974:	fcf43823          	sd	a5,-48(s0)
                Nit::dispatch();
    80001978:	00005097          	auipc	ra,0x5
    8000197c:	94c080e7          	jalr	-1716(ra) # 800062c4 <_ZN3Nit8dispatchEv>
                __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    80001980:	fc843783          	ld	a5,-56(s0)
    80001984:	14179073          	csrw	sepc,a5
                __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80001988:	fd043783          	ld	a5,-48(s0)
    8000198c:	10079073          	csrw	sstatus,a5
                Nit::tajmer = 0;
    80001990:	0004a023          	sw	zero,0(s1)
    80001994:	fc9ff06f          	j	8000195c <handle+0x45c>
            int volatile h = plic_claim();
    80001998:	00005097          	auipc	ra,0x5
    8000199c:	4bc080e7          	jalr	1212(ra) # 80006e54 <plic_claim>
    800019a0:	f2a42623          	sw	a0,-212(s0)
            if(h==CONSOLE_IRQ){
    800019a4:	f2c42783          	lw	a5,-212(s0)
    800019a8:	0007879b          	sext.w	a5,a5
    800019ac:	00a00713          	li	a4,10
    800019b0:	00e78a63          	beq	a5,a4,800019c4 <handle+0x4c4>
            plic_complete(CONSOLE_IRQ);
    800019b4:	00a00513          	li	a0,10
    800019b8:	00005097          	auipc	ra,0x5
    800019bc:	4d4080e7          	jalr	1236(ra) # 80006e8c <plic_complete>
    800019c0:	cb5ff06f          	j	80001674 <handle+0x174>
                while(*(uint8*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    800019c4:	0000a797          	auipc	a5,0xa
    800019c8:	c7c7b783          	ld	a5,-900(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019cc:	0007b783          	ld	a5,0(a5)
    800019d0:	0007c783          	lbu	a5,0(a5)
    800019d4:	0017f793          	andi	a5,a5,1
    800019d8:	fc078ee3          	beqz	a5,800019b4 <handle+0x4b4>
                    Konzola::putulaz(*(char*)CONSOLE_RX_DATA);
    800019dc:	0000a797          	auipc	a5,0xa
    800019e0:	c5c7b783          	ld	a5,-932(a5) # 8000b638 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019e4:	0007b783          	ld	a5,0(a5)
    800019e8:	0007c503          	lbu	a0,0(a5)
    800019ec:	00003097          	auipc	ra,0x3
    800019f0:	56c080e7          	jalr	1388(ra) # 80004f58 <_ZN7Konzola7putulazEi>
                while(*(uint8*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    800019f4:	fd1ff06f          	j	800019c4 <handle+0x4c4>
            printString("scause: \n");
    800019f8:	00007517          	auipc	a0,0x7
    800019fc:	62850513          	addi	a0,a0,1576 # 80009020 <CONSOLE_STATUS+0x10>
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	04c080e7          	jalr	76(ra) # 80001a4c <_Z11printStringPKc>
            printInt(prekid >> 63);
    80001a08:	fd843503          	ld	a0,-40(s0)
    80001a0c:	00000613          	li	a2,0
    80001a10:	00a00593          	li	a1,10
    80001a14:	00052513          	slti	a0,a0,0
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	1cc080e7          	jalr	460(ra) # 80001be4 <_Z8printIntiii>
            printInt(prekid % 16);
    80001a20:	fd843503          	ld	a0,-40(s0)
    80001a24:	00000613          	li	a2,0
    80001a28:	00a00593          	li	a1,10
    80001a2c:	00f57513          	andi	a0,a0,15
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	1b4080e7          	jalr	436(ra) # 80001be4 <_Z8printIntiii>
            printString("\nsstatus: \n");
    80001a38:	00007517          	auipc	a0,0x7
    80001a3c:	5f850513          	addi	a0,a0,1528 # 80009030 <CONSOLE_STATUS+0x20>
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	00c080e7          	jalr	12(ra) # 80001a4c <_Z11printStringPKc>
            while (1);
    80001a48:	0000006f          	j	80001a48 <handle+0x548>

0000000080001a4c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001a4c:	fe010113          	addi	sp,sp,-32
    80001a50:	00113c23          	sd	ra,24(sp)
    80001a54:	00813823          	sd	s0,16(sp)
    80001a58:	00913423          	sd	s1,8(sp)
    80001a5c:	02010413          	addi	s0,sp,32
    80001a60:	00050493          	mv	s1,a0
    LOCK();
    80001a64:	00100613          	li	a2,1
    80001a68:	00000593          	li	a1,0
    80001a6c:	0000a517          	auipc	a0,0xa
    80001a70:	c8450513          	addi	a0,a0,-892 # 8000b6f0 <lockPrint>
    80001a74:	fffff097          	auipc	ra,0xfffff
    80001a78:	7ac080e7          	jalr	1964(ra) # 80001220 <copy_and_swap>
    80001a7c:	fe0514e3          	bnez	a0,80001a64 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80001a80:	0004c503          	lbu	a0,0(s1)
    80001a84:	00050a63          	beqz	a0,80001a98 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	9c8080e7          	jalr	-1592(ra) # 80001450 <_Z4putcc>
        string++;
    80001a90:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001a94:	fedff06f          	j	80001a80 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80001a98:	00000613          	li	a2,0
    80001a9c:	00100593          	li	a1,1
    80001aa0:	0000a517          	auipc	a0,0xa
    80001aa4:	c5050513          	addi	a0,a0,-944 # 8000b6f0 <lockPrint>
    80001aa8:	fffff097          	auipc	ra,0xfffff
    80001aac:	778080e7          	jalr	1912(ra) # 80001220 <copy_and_swap>
    80001ab0:	fe0514e3          	bnez	a0,80001a98 <_Z11printStringPKc+0x4c>
}
    80001ab4:	01813083          	ld	ra,24(sp)
    80001ab8:	01013403          	ld	s0,16(sp)
    80001abc:	00813483          	ld	s1,8(sp)
    80001ac0:	02010113          	addi	sp,sp,32
    80001ac4:	00008067          	ret

0000000080001ac8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001ac8:	fd010113          	addi	sp,sp,-48
    80001acc:	02113423          	sd	ra,40(sp)
    80001ad0:	02813023          	sd	s0,32(sp)
    80001ad4:	00913c23          	sd	s1,24(sp)
    80001ad8:	01213823          	sd	s2,16(sp)
    80001adc:	01313423          	sd	s3,8(sp)
    80001ae0:	01413023          	sd	s4,0(sp)
    80001ae4:	03010413          	addi	s0,sp,48
    80001ae8:	00050993          	mv	s3,a0
    80001aec:	00058a13          	mv	s4,a1
    LOCK();
    80001af0:	00100613          	li	a2,1
    80001af4:	00000593          	li	a1,0
    80001af8:	0000a517          	auipc	a0,0xa
    80001afc:	bf850513          	addi	a0,a0,-1032 # 8000b6f0 <lockPrint>
    80001b00:	fffff097          	auipc	ra,0xfffff
    80001b04:	720080e7          	jalr	1824(ra) # 80001220 <copy_and_swap>
    80001b08:	fe0514e3          	bnez	a0,80001af0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001b0c:	00000913          	li	s2,0
    80001b10:	00090493          	mv	s1,s2
    80001b14:	0019091b          	addiw	s2,s2,1
    80001b18:	03495a63          	bge	s2,s4,80001b4c <_Z9getStringPci+0x84>
        cc = getc();
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	8f8080e7          	jalr	-1800(ra) # 80001414 <_Z4getcv>
        if(cc < 1)
    80001b24:	02050463          	beqz	a0,80001b4c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80001b28:	009984b3          	add	s1,s3,s1
    80001b2c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001b30:	00a00793          	li	a5,10
    80001b34:	00f50a63          	beq	a0,a5,80001b48 <_Z9getStringPci+0x80>
    80001b38:	00d00793          	li	a5,13
    80001b3c:	fcf51ae3          	bne	a0,a5,80001b10 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80001b40:	00090493          	mv	s1,s2
    80001b44:	0080006f          	j	80001b4c <_Z9getStringPci+0x84>
    80001b48:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80001b4c:	009984b3          	add	s1,s3,s1
    80001b50:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80001b54:	00000613          	li	a2,0
    80001b58:	00100593          	li	a1,1
    80001b5c:	0000a517          	auipc	a0,0xa
    80001b60:	b9450513          	addi	a0,a0,-1132 # 8000b6f0 <lockPrint>
    80001b64:	fffff097          	auipc	ra,0xfffff
    80001b68:	6bc080e7          	jalr	1724(ra) # 80001220 <copy_and_swap>
    80001b6c:	fe0514e3          	bnez	a0,80001b54 <_Z9getStringPci+0x8c>
    return buf;
}
    80001b70:	00098513          	mv	a0,s3
    80001b74:	02813083          	ld	ra,40(sp)
    80001b78:	02013403          	ld	s0,32(sp)
    80001b7c:	01813483          	ld	s1,24(sp)
    80001b80:	01013903          	ld	s2,16(sp)
    80001b84:	00813983          	ld	s3,8(sp)
    80001b88:	00013a03          	ld	s4,0(sp)
    80001b8c:	03010113          	addi	sp,sp,48
    80001b90:	00008067          	ret

0000000080001b94 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00813423          	sd	s0,8(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    80001ba0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001ba4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001ba8:	0006c603          	lbu	a2,0(a3)
    80001bac:	fd06071b          	addiw	a4,a2,-48
    80001bb0:	0ff77713          	andi	a4,a4,255
    80001bb4:	00900793          	li	a5,9
    80001bb8:	02e7e063          	bltu	a5,a4,80001bd8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001bbc:	0025179b          	slliw	a5,a0,0x2
    80001bc0:	00a787bb          	addw	a5,a5,a0
    80001bc4:	0017979b          	slliw	a5,a5,0x1
    80001bc8:	00168693          	addi	a3,a3,1
    80001bcc:	00c787bb          	addw	a5,a5,a2
    80001bd0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001bd4:	fd5ff06f          	j	80001ba8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80001bd8:	00813403          	ld	s0,8(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret

0000000080001be4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001be4:	fc010113          	addi	sp,sp,-64
    80001be8:	02113c23          	sd	ra,56(sp)
    80001bec:	02813823          	sd	s0,48(sp)
    80001bf0:	02913423          	sd	s1,40(sp)
    80001bf4:	03213023          	sd	s2,32(sp)
    80001bf8:	01313c23          	sd	s3,24(sp)
    80001bfc:	04010413          	addi	s0,sp,64
    80001c00:	00050493          	mv	s1,a0
    80001c04:	00058913          	mv	s2,a1
    80001c08:	00060993          	mv	s3,a2
    LOCK();
    80001c0c:	00100613          	li	a2,1
    80001c10:	00000593          	li	a1,0
    80001c14:	0000a517          	auipc	a0,0xa
    80001c18:	adc50513          	addi	a0,a0,-1316 # 8000b6f0 <lockPrint>
    80001c1c:	fffff097          	auipc	ra,0xfffff
    80001c20:	604080e7          	jalr	1540(ra) # 80001220 <copy_and_swap>
    80001c24:	fe0514e3          	bnez	a0,80001c0c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001c28:	00098463          	beqz	s3,80001c30 <_Z8printIntiii+0x4c>
    80001c2c:	0804c463          	bltz	s1,80001cb4 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001c30:	0004851b          	sext.w	a0,s1
    neg = 0;
    80001c34:	00000593          	li	a1,0
    }

    i = 0;
    80001c38:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001c3c:	0009079b          	sext.w	a5,s2
    80001c40:	0325773b          	remuw	a4,a0,s2
    80001c44:	00048613          	mv	a2,s1
    80001c48:	0014849b          	addiw	s1,s1,1
    80001c4c:	02071693          	slli	a3,a4,0x20
    80001c50:	0206d693          	srli	a3,a3,0x20
    80001c54:	00009717          	auipc	a4,0x9
    80001c58:	77c70713          	addi	a4,a4,1916 # 8000b3d0 <digits>
    80001c5c:	00d70733          	add	a4,a4,a3
    80001c60:	00074683          	lbu	a3,0(a4)
    80001c64:	fd040713          	addi	a4,s0,-48
    80001c68:	00c70733          	add	a4,a4,a2
    80001c6c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001c70:	0005071b          	sext.w	a4,a0
    80001c74:	0325553b          	divuw	a0,a0,s2
    80001c78:	fcf772e3          	bgeu	a4,a5,80001c3c <_Z8printIntiii+0x58>
    if(neg)
    80001c7c:	00058c63          	beqz	a1,80001c94 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80001c80:	fd040793          	addi	a5,s0,-48
    80001c84:	009784b3          	add	s1,a5,s1
    80001c88:	02d00793          	li	a5,45
    80001c8c:	fef48823          	sb	a5,-16(s1)
    80001c90:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80001c94:	fff4849b          	addiw	s1,s1,-1
    80001c98:	0204c463          	bltz	s1,80001cc0 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80001c9c:	fd040793          	addi	a5,s0,-48
    80001ca0:	009787b3          	add	a5,a5,s1
    80001ca4:	ff07c503          	lbu	a0,-16(a5)
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	7a8080e7          	jalr	1960(ra) # 80001450 <_Z4putcc>
    80001cb0:	fe5ff06f          	j	80001c94 <_Z8printIntiii+0xb0>
        x = -xx;
    80001cb4:	4090053b          	negw	a0,s1
        neg = 1;
    80001cb8:	00100593          	li	a1,1
        x = -xx;
    80001cbc:	f7dff06f          	j	80001c38 <_Z8printIntiii+0x54>

    UNLOCK();
    80001cc0:	00000613          	li	a2,0
    80001cc4:	00100593          	li	a1,1
    80001cc8:	0000a517          	auipc	a0,0xa
    80001ccc:	a2850513          	addi	a0,a0,-1496 # 8000b6f0 <lockPrint>
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	550080e7          	jalr	1360(ra) # 80001220 <copy_and_swap>
    80001cd8:	fe0514e3          	bnez	a0,80001cc0 <_Z8printIntiii+0xdc>
    80001cdc:	03813083          	ld	ra,56(sp)
    80001ce0:	03013403          	ld	s0,48(sp)
    80001ce4:	02813483          	ld	s1,40(sp)
    80001ce8:	02013903          	ld	s2,32(sp)
    80001cec:	01813983          	ld	s3,24(sp)
    80001cf0:	04010113          	addi	sp,sp,64
    80001cf4:	00008067          	ret

0000000080001cf8 <_ZN5BaferC1Ei>:
//

#include "../h/Bafer.h"
#include "../h/scheduler.h"

Bafer::Bafer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80001cf8:	fe010113          	addi	sp,sp,-32
    80001cfc:	00113c23          	sd	ra,24(sp)
    80001d00:	00813823          	sd	s0,16(sp)
    80001d04:	00913423          	sd	s1,8(sp)
    80001d08:	01213023          	sd	s2,0(sp)
    80001d0c:	02010413          	addi	s0,sp,32
    80001d10:	00050493          	mv	s1,a0
    80001d14:	00058913          	mv	s2,a1
    80001d18:	0015879b          	addiw	a5,a1,1
    80001d1c:	0007851b          	sext.w	a0,a5
    80001d20:	00f4a023          	sw	a5,0(s1)
    80001d24:	0004a223          	sw	zero,4(s1)
    80001d28:	0004a823          	sw	zero,16(s1)
    80001d2c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)Memorija::alokacija(sizeof(int) * cap);
    80001d30:	00251513          	slli	a0,a0,0x2
    80001d34:	00003097          	auipc	ra,0x3
    80001d38:	604080e7          	jalr	1540(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80001d3c:	00a4b423          	sd	a0,8(s1)
        return Memorija::alokacija(n);
    80001d40:	02000513          	li	a0,32
    80001d44:	00003097          	auipc	ra,0x3
    80001d48:	5f4080e7          	jalr	1524(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    Semafor(unsigned n=1):val(n){}
    80001d4c:	00052023          	sw	zero,0(a0)
    80001d50:	00053423          	sd	zero,8(a0)
    80001d54:	00053823          	sd	zero,16(a0)
    80001d58:	00052c23          	sw	zero,24(a0)
    itemAvailable= new Semafor(0);
    80001d5c:	02a4b023          	sd	a0,32(s1)
        return Memorija::alokacija(n);
    80001d60:	02000513          	li	a0,32
    80001d64:	00003097          	auipc	ra,0x3
    80001d68:	5d4080e7          	jalr	1492(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    Semafor(unsigned n=1):val(n){}
    80001d6c:	00052023          	sw	zero,0(a0)
    80001d70:	00053423          	sd	zero,8(a0)
    80001d74:	00053823          	sd	zero,16(a0)
    80001d78:	01252c23          	sw	s2,24(a0)
    spaceAvailable=new Semafor(_cap);
    80001d7c:	00a4bc23          	sd	a0,24(s1)
        return Memorija::alokacija(n);
    80001d80:	02000513          	li	a0,32
    80001d84:	00003097          	auipc	ra,0x3
    80001d88:	5b4080e7          	jalr	1460(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    Semafor(unsigned n=1):val(n){}
    80001d8c:	00052023          	sw	zero,0(a0)
    80001d90:	00053423          	sd	zero,8(a0)
    80001d94:	00053823          	sd	zero,16(a0)
    80001d98:	00100913          	li	s2,1
    80001d9c:	01252c23          	sw	s2,24(a0)
    mutexHead = new Semafor(1);
    80001da0:	02a4b423          	sd	a0,40(s1)
        return Memorija::alokacija(n);
    80001da4:	02000513          	li	a0,32
    80001da8:	00003097          	auipc	ra,0x3
    80001dac:	590080e7          	jalr	1424(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    Semafor(unsigned n=1):val(n){}
    80001db0:	00052023          	sw	zero,0(a0)
    80001db4:	00053423          	sd	zero,8(a0)
    80001db8:	00053823          	sd	zero,16(a0)
    80001dbc:	01252c23          	sw	s2,24(a0)
    mutexTail = new Semafor(1);
    80001dc0:	02a4b823          	sd	a0,48(s1)
}
    80001dc4:	01813083          	ld	ra,24(sp)
    80001dc8:	01013403          	ld	s0,16(sp)
    80001dcc:	00813483          	ld	s1,8(sp)
    80001dd0:	00013903          	ld	s2,0(sp)
    80001dd4:	02010113          	addi	sp,sp,32
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN5BaferD1Ev>:

Bafer::~Bafer() {
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    mem_free(buffer);
    sem_close(itemAvailable);
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);*/
}
    80001de8:	00813403          	ld	s0,8(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret

0000000080001df4 <_ZN5Bafer3putEi>:

void Bafer::put(int val) {
    80001df4:	fe010113          	addi	sp,sp,-32
    80001df8:	00113c23          	sd	ra,24(sp)
    80001dfc:	00813823          	sd	s0,16(sp)
    80001e00:	00913423          	sd	s1,8(sp)
    80001e04:	01213023          	sd	s2,0(sp)
    80001e08:	02010413          	addi	s0,sp,32
    80001e0c:	00050493          	mv	s1,a0
    80001e10:	00058913          	mv	s2,a1
    //print(spaceAvailable->val);
    if(spaceAvailable->val==0){
        //print("a");
    }
    if(spaceAvailable->wait()!=-1){
    80001e14:	01853503          	ld	a0,24(a0)
    80001e18:	00004097          	auipc	ra,0x4
    80001e1c:	5c4080e7          	jalr	1476(ra) # 800063dc <_ZN7Semafor4waitEv>
    80001e20:	fff00793          	li	a5,-1
    80001e24:	08f51463          	bne	a0,a5,80001eac <_ZN5Bafer3putEi+0xb8>
        //spaceAvailable->Print();
        //Scheduler::Print();
        //__putc('a');
        Nit::dispatch();
    }
    if(mutexTail->wait()!=-1){
    80001e28:	0304b503          	ld	a0,48(s1)
    80001e2c:	00004097          	auipc	ra,0x4
    80001e30:	5b0080e7          	jalr	1456(ra) # 800063dc <_ZN7Semafor4waitEv>
    80001e34:	fff00793          	li	a5,-1
    80001e38:	08f51063          	bne	a0,a5,80001eb8 <_ZN5Bafer3putEi+0xc4>
        Nit::dispatch();
    }

    if(cnt<cap) {
    80001e3c:	0044a703          	lw	a4,4(s1)
    80001e40:	0004a783          	lw	a5,0(s1)
    80001e44:	02f75c63          	bge	a4,a5,80001e7c <_ZN5Bafer3putEi+0x88>
        buffer[tail] = val;
    80001e48:	0084b783          	ld	a5,8(s1)
    80001e4c:	0144a703          	lw	a4,20(s1)
    80001e50:	00271713          	slli	a4,a4,0x2
    80001e54:	00e787b3          	add	a5,a5,a4
    80001e58:	0127a023          	sw	s2,0(a5)
        tail = (tail + 1) % cap;
    80001e5c:	0144a783          	lw	a5,20(s1)
    80001e60:	0017879b          	addiw	a5,a5,1
    80001e64:	0004a703          	lw	a4,0(s1)
    80001e68:	02e7e7bb          	remw	a5,a5,a4
    80001e6c:	00f4aa23          	sw	a5,20(s1)
        cnt++;
    80001e70:	0044a783          	lw	a5,4(s1)
    80001e74:	0017879b          	addiw	a5,a5,1
    80001e78:	00f4a223          	sw	a5,4(s1)
    }

    mutexTail->signal();
    80001e7c:	0304b503          	ld	a0,48(s1)
    80001e80:	00004097          	auipc	ra,0x4
    80001e84:	5fc080e7          	jalr	1532(ra) # 8000647c <_ZN7Semafor6signalEv>
    itemAvailable->signal();
    80001e88:	0204b503          	ld	a0,32(s1)
    80001e8c:	00004097          	auipc	ra,0x4
    80001e90:	5f0080e7          	jalr	1520(ra) # 8000647c <_ZN7Semafor6signalEv>
}
    80001e94:	01813083          	ld	ra,24(sp)
    80001e98:	01013403          	ld	s0,16(sp)
    80001e9c:	00813483          	ld	s1,8(sp)
    80001ea0:	00013903          	ld	s2,0(sp)
    80001ea4:	02010113          	addi	sp,sp,32
    80001ea8:	00008067          	ret
        Nit::dispatch();
    80001eac:	00004097          	auipc	ra,0x4
    80001eb0:	418080e7          	jalr	1048(ra) # 800062c4 <_ZN3Nit8dispatchEv>
    80001eb4:	f75ff06f          	j	80001e28 <_ZN5Bafer3putEi+0x34>
        Nit::dispatch();
    80001eb8:	00004097          	auipc	ra,0x4
    80001ebc:	40c080e7          	jalr	1036(ra) # 800062c4 <_ZN3Nit8dispatchEv>
    80001ec0:	f7dff06f          	j	80001e3c <_ZN5Bafer3putEi+0x48>

0000000080001ec4 <_ZN5Bafer3getEv>:

int Bafer::get() {
    80001ec4:	fe010113          	addi	sp,sp,-32
    80001ec8:	00113c23          	sd	ra,24(sp)
    80001ecc:	00813823          	sd	s0,16(sp)
    80001ed0:	00913423          	sd	s1,8(sp)
    80001ed4:	01213023          	sd	s2,0(sp)
    80001ed8:	02010413          	addi	s0,sp,32
    80001edc:	00050493          	mv	s1,a0

    //print(itemAvailable->val);
    if(itemAvailable->wait()!=-1){
    80001ee0:	02053503          	ld	a0,32(a0)
    80001ee4:	00004097          	auipc	ra,0x4
    80001ee8:	4f8080e7          	jalr	1272(ra) # 800063dc <_ZN7Semafor4waitEv>
    80001eec:	fff00793          	li	a5,-1
    80001ef0:	08f51063          	bne	a0,a5,80001f70 <_ZN5Bafer3getEv+0xac>
        //itemAvailable->Print();
        Nit::dispatch();
    }
    if(mutexHead->wait()!=-1){
    80001ef4:	0284b503          	ld	a0,40(s1)
    80001ef8:	00004097          	auipc	ra,0x4
    80001efc:	4e4080e7          	jalr	1252(ra) # 800063dc <_ZN7Semafor4waitEv>
    80001f00:	fff00793          	li	a5,-1
    80001f04:	06f51c63          	bne	a0,a5,80001f7c <_ZN5Bafer3getEv+0xb8>
        Nit::dispatch();
    }

    int ret=-1;
    if(cnt>0) {
    80001f08:	0044a703          	lw	a4,4(s1)
    80001f0c:	06e05e63          	blez	a4,80001f88 <_ZN5Bafer3getEv+0xc4>
        ret = buffer[head];
    80001f10:	0084b683          	ld	a3,8(s1)
    80001f14:	0104a783          	lw	a5,16(s1)
    80001f18:	00279613          	slli	a2,a5,0x2
    80001f1c:	00c686b3          	add	a3,a3,a2
    80001f20:	0006a903          	lw	s2,0(a3)
        head = (head + 1) % cap;
    80001f24:	0017879b          	addiw	a5,a5,1
    80001f28:	0004a683          	lw	a3,0(s1)
    80001f2c:	02d7e7bb          	remw	a5,a5,a3
    80001f30:	00f4a823          	sw	a5,16(s1)
        cnt--;
    80001f34:	fff7071b          	addiw	a4,a4,-1
    80001f38:	00e4a223          	sw	a4,4(s1)
    }

    mutexHead->signal();
    80001f3c:	0284b503          	ld	a0,40(s1)
    80001f40:	00004097          	auipc	ra,0x4
    80001f44:	53c080e7          	jalr	1340(ra) # 8000647c <_ZN7Semafor6signalEv>
    spaceAvailable->signal();
    80001f48:	0184b503          	ld	a0,24(s1)
    80001f4c:	00004097          	auipc	ra,0x4
    80001f50:	530080e7          	jalr	1328(ra) # 8000647c <_ZN7Semafor6signalEv>

    return ret;
}
    80001f54:	00090513          	mv	a0,s2
    80001f58:	01813083          	ld	ra,24(sp)
    80001f5c:	01013403          	ld	s0,16(sp)
    80001f60:	00813483          	ld	s1,8(sp)
    80001f64:	00013903          	ld	s2,0(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret
        Nit::dispatch();
    80001f70:	00004097          	auipc	ra,0x4
    80001f74:	354080e7          	jalr	852(ra) # 800062c4 <_ZN3Nit8dispatchEv>
    80001f78:	f7dff06f          	j	80001ef4 <_ZN5Bafer3getEv+0x30>
        Nit::dispatch();
    80001f7c:	00004097          	auipc	ra,0x4
    80001f80:	348080e7          	jalr	840(ra) # 800062c4 <_ZN3Nit8dispatchEv>
    80001f84:	f85ff06f          	j	80001f08 <_ZN5Bafer3getEv+0x44>
    int ret=-1;
    80001f88:	fff00913          	li	s2,-1
    80001f8c:	fb1ff06f          	j	80001f3c <_ZN5Bafer3getEv+0x78>

0000000080001f90 <_ZN5Bafer6getCntEv>:

int Bafer::getCnt() {
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00813423          	sd	s0,8(sp)
    80001f98:	01010413          	addi	s0,sp,16
    return cnt;
}
    80001f9c:	00452503          	lw	a0,4(a0)
    80001fa0:	00813403          	ld	s0,8(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_ZN5Bafer5PrintEv>:

void Bafer::Print() {
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	00913423          	sd	s1,8(sp)
    80001fbc:	01213023          	sd	s2,0(sp)
    80001fc0:	02010413          	addi	s0,sp,32
    80001fc4:	00050913          	mv	s2,a0

    if(mutexHead->wait()!=-1){
    80001fc8:	02853503          	ld	a0,40(a0)
    80001fcc:	00004097          	auipc	ra,0x4
    80001fd0:	410080e7          	jalr	1040(ra) # 800063dc <_ZN7Semafor4waitEv>
    80001fd4:	fff00793          	li	a5,-1
    80001fd8:	04f51e63          	bne	a0,a5,80002034 <_ZN5Bafer5PrintEv+0x88>
        Nit::dispatch();
    }
    if(mutexTail->wait()!=-1){
    80001fdc:	03093503          	ld	a0,48(s2)
    80001fe0:	00004097          	auipc	ra,0x4
    80001fe4:	3fc080e7          	jalr	1020(ra) # 800063dc <_ZN7Semafor4waitEv>
    80001fe8:	fff00793          	li	a5,-1
    80001fec:	04f51a63          	bne	a0,a5,80002040 <_ZN5Bafer5PrintEv+0x94>
        Nit::dispatch();
    }

    int temp=head;
    80001ff0:	01092483          	lw	s1,16(s2)
    print("BAFER:\n");
    80001ff4:	00007517          	auipc	a0,0x7
    80001ff8:	04c50513          	addi	a0,a0,76 # 80009040 <CONSOLE_STATUS+0x30>
    80001ffc:	00004097          	auipc	ra,0x4
    80002000:	03c080e7          	jalr	60(ra) # 80006038 <_Z5printPKc>
    while(temp!=tail){
    80002004:	01492783          	lw	a5,20(s2)
    80002008:	04978263          	beq	a5,s1,8000204c <_ZN5Bafer5PrintEv+0xa0>
        print(buffer[temp]);
    8000200c:	00893783          	ld	a5,8(s2)
    80002010:	00249713          	slli	a4,s1,0x2
    80002014:	00e787b3          	add	a5,a5,a4
    80002018:	0007a503          	lw	a0,0(a5)
    8000201c:	00004097          	auipc	ra,0x4
    80002020:	060080e7          	jalr	96(ra) # 8000607c <_Z5printi>
        temp=(temp+1)%cap;
    80002024:	0014849b          	addiw	s1,s1,1
    80002028:	00092783          	lw	a5,0(s2)
    8000202c:	02f4e4bb          	remw	s1,s1,a5
    while(temp!=tail){
    80002030:	fd5ff06f          	j	80002004 <_ZN5Bafer5PrintEv+0x58>
        Nit::dispatch();
    80002034:	00004097          	auipc	ra,0x4
    80002038:	290080e7          	jalr	656(ra) # 800062c4 <_ZN3Nit8dispatchEv>
    8000203c:	fa1ff06f          	j	80001fdc <_ZN5Bafer5PrintEv+0x30>
        Nit::dispatch();
    80002040:	00004097          	auipc	ra,0x4
    80002044:	284080e7          	jalr	644(ra) # 800062c4 <_ZN3Nit8dispatchEv>
    80002048:	fa9ff06f          	j	80001ff0 <_ZN5Bafer5PrintEv+0x44>
    }
    print("-------\n");
    8000204c:	00007517          	auipc	a0,0x7
    80002050:	ffc50513          	addi	a0,a0,-4 # 80009048 <CONSOLE_STATUS+0x38>
    80002054:	00004097          	auipc	ra,0x4
    80002058:	fe4080e7          	jalr	-28(ra) # 80006038 <_Z5printPKc>

    mutexTail->signal();
    8000205c:	03093503          	ld	a0,48(s2)
    80002060:	00004097          	auipc	ra,0x4
    80002064:	41c080e7          	jalr	1052(ra) # 8000647c <_ZN7Semafor6signalEv>
    mutexHead->signal();
    80002068:	02893503          	ld	a0,40(s2)
    8000206c:	00004097          	auipc	ra,0x4
    80002070:	410080e7          	jalr	1040(ra) # 8000647c <_ZN7Semafor6signalEv>
}
    80002074:	01813083          	ld	ra,24(sp)
    80002078:	01013403          	ld	s0,16(sp)
    8000207c:	00813483          	ld	s1,8(sp)
    80002080:	00013903          	ld	s2,0(sp)
    80002084:	02010113          	addi	sp,sp,32
    80002088:	00008067          	ret

000000008000208c <_ZN9BufferCPPC1Ei>:
#include "../h/buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000208c:	fd010113          	addi	sp,sp,-48
    80002090:	02113423          	sd	ra,40(sp)
    80002094:	02813023          	sd	s0,32(sp)
    80002098:	00913c23          	sd	s1,24(sp)
    8000209c:	01213823          	sd	s2,16(sp)
    800020a0:	01313423          	sd	s3,8(sp)
    800020a4:	03010413          	addi	s0,sp,48
    800020a8:	00050493          	mv	s1,a0
    800020ac:	00058913          	mv	s2,a1
    800020b0:	0015879b          	addiw	a5,a1,1
    800020b4:	0007851b          	sext.w	a0,a5
    800020b8:	00f4a023          	sw	a5,0(s1)
    800020bc:	0004a823          	sw	zero,16(s1)
    800020c0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800020c4:	00251513          	slli	a0,a0,0x2
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	178080e7          	jalr	376(ra) # 80001240 <_Z9mem_allocm>
    800020d0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800020d4:	01000513          	li	a0,16
    800020d8:	00003097          	auipc	ra,0x3
    800020dc:	ab4080e7          	jalr	-1356(ra) # 80004b8c <_Znwm>
    800020e0:	00050993          	mv	s3,a0
    800020e4:	00000593          	li	a1,0
    800020e8:	00003097          	auipc	ra,0x3
    800020ec:	c6c080e7          	jalr	-916(ra) # 80004d54 <_ZN9SemaphoreC1Ej>
    800020f0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800020f4:	01000513          	li	a0,16
    800020f8:	00003097          	auipc	ra,0x3
    800020fc:	a94080e7          	jalr	-1388(ra) # 80004b8c <_Znwm>
    80002100:	00050993          	mv	s3,a0
    80002104:	00090593          	mv	a1,s2
    80002108:	00003097          	auipc	ra,0x3
    8000210c:	c4c080e7          	jalr	-948(ra) # 80004d54 <_ZN9SemaphoreC1Ej>
    80002110:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002114:	01000513          	li	a0,16
    80002118:	00003097          	auipc	ra,0x3
    8000211c:	a74080e7          	jalr	-1420(ra) # 80004b8c <_Znwm>
    80002120:	00050913          	mv	s2,a0
    80002124:	00100593          	li	a1,1
    80002128:	00003097          	auipc	ra,0x3
    8000212c:	c2c080e7          	jalr	-980(ra) # 80004d54 <_ZN9SemaphoreC1Ej>
    80002130:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80002134:	01000513          	li	a0,16
    80002138:	00003097          	auipc	ra,0x3
    8000213c:	a54080e7          	jalr	-1452(ra) # 80004b8c <_Znwm>
    80002140:	00050913          	mv	s2,a0
    80002144:	00100593          	li	a1,1
    80002148:	00003097          	auipc	ra,0x3
    8000214c:	c0c080e7          	jalr	-1012(ra) # 80004d54 <_ZN9SemaphoreC1Ej>
    80002150:	0324b823          	sd	s2,48(s1)
}
    80002154:	02813083          	ld	ra,40(sp)
    80002158:	02013403          	ld	s0,32(sp)
    8000215c:	01813483          	ld	s1,24(sp)
    80002160:	01013903          	ld	s2,16(sp)
    80002164:	00813983          	ld	s3,8(sp)
    80002168:	03010113          	addi	sp,sp,48
    8000216c:	00008067          	ret
    80002170:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002174:	00098513          	mv	a0,s3
    80002178:	00003097          	auipc	ra,0x3
    8000217c:	a3c080e7          	jalr	-1476(ra) # 80004bb4 <_ZdlPv>
    80002180:	00048513          	mv	a0,s1
    80002184:	0000a097          	auipc	ra,0xa
    80002188:	6c4080e7          	jalr	1732(ra) # 8000c848 <_Unwind_Resume>
    8000218c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002190:	00098513          	mv	a0,s3
    80002194:	00003097          	auipc	ra,0x3
    80002198:	a20080e7          	jalr	-1504(ra) # 80004bb4 <_ZdlPv>
    8000219c:	00048513          	mv	a0,s1
    800021a0:	0000a097          	auipc	ra,0xa
    800021a4:	6a8080e7          	jalr	1704(ra) # 8000c848 <_Unwind_Resume>
    800021a8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800021ac:	00090513          	mv	a0,s2
    800021b0:	00003097          	auipc	ra,0x3
    800021b4:	a04080e7          	jalr	-1532(ra) # 80004bb4 <_ZdlPv>
    800021b8:	00048513          	mv	a0,s1
    800021bc:	0000a097          	auipc	ra,0xa
    800021c0:	68c080e7          	jalr	1676(ra) # 8000c848 <_Unwind_Resume>
    800021c4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800021c8:	00090513          	mv	a0,s2
    800021cc:	00003097          	auipc	ra,0x3
    800021d0:	9e8080e7          	jalr	-1560(ra) # 80004bb4 <_ZdlPv>
    800021d4:	00048513          	mv	a0,s1
    800021d8:	0000a097          	auipc	ra,0xa
    800021dc:	670080e7          	jalr	1648(ra) # 8000c848 <_Unwind_Resume>

00000000800021e0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800021e0:	fe010113          	addi	sp,sp,-32
    800021e4:	00113c23          	sd	ra,24(sp)
    800021e8:	00813823          	sd	s0,16(sp)
    800021ec:	00913423          	sd	s1,8(sp)
    800021f0:	01213023          	sd	s2,0(sp)
    800021f4:	02010413          	addi	s0,sp,32
    800021f8:	00050493          	mv	s1,a0
    800021fc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002200:	01853503          	ld	a0,24(a0)
    80002204:	00003097          	auipc	ra,0x3
    80002208:	b88080e7          	jalr	-1144(ra) # 80004d8c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000220c:	0304b503          	ld	a0,48(s1)
    80002210:	00003097          	auipc	ra,0x3
    80002214:	b7c080e7          	jalr	-1156(ra) # 80004d8c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002218:	0084b783          	ld	a5,8(s1)
    8000221c:	0144a703          	lw	a4,20(s1)
    80002220:	00271713          	slli	a4,a4,0x2
    80002224:	00e787b3          	add	a5,a5,a4
    80002228:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000222c:	0144a783          	lw	a5,20(s1)
    80002230:	0017879b          	addiw	a5,a5,1
    80002234:	0004a703          	lw	a4,0(s1)
    80002238:	02e7e7bb          	remw	a5,a5,a4
    8000223c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002240:	0304b503          	ld	a0,48(s1)
    80002244:	00003097          	auipc	ra,0x3
    80002248:	b74080e7          	jalr	-1164(ra) # 80004db8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000224c:	0204b503          	ld	a0,32(s1)
    80002250:	00003097          	auipc	ra,0x3
    80002254:	b68080e7          	jalr	-1176(ra) # 80004db8 <_ZN9Semaphore6signalEv>

}
    80002258:	01813083          	ld	ra,24(sp)
    8000225c:	01013403          	ld	s0,16(sp)
    80002260:	00813483          	ld	s1,8(sp)
    80002264:	00013903          	ld	s2,0(sp)
    80002268:	02010113          	addi	sp,sp,32
    8000226c:	00008067          	ret

0000000080002270 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002270:	fe010113          	addi	sp,sp,-32
    80002274:	00113c23          	sd	ra,24(sp)
    80002278:	00813823          	sd	s0,16(sp)
    8000227c:	00913423          	sd	s1,8(sp)
    80002280:	01213023          	sd	s2,0(sp)
    80002284:	02010413          	addi	s0,sp,32
    80002288:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000228c:	02053503          	ld	a0,32(a0)
    80002290:	00003097          	auipc	ra,0x3
    80002294:	afc080e7          	jalr	-1284(ra) # 80004d8c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002298:	0284b503          	ld	a0,40(s1)
    8000229c:	00003097          	auipc	ra,0x3
    800022a0:	af0080e7          	jalr	-1296(ra) # 80004d8c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800022a4:	0084b703          	ld	a4,8(s1)
    800022a8:	0104a783          	lw	a5,16(s1)
    800022ac:	00279693          	slli	a3,a5,0x2
    800022b0:	00d70733          	add	a4,a4,a3
    800022b4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800022b8:	0017879b          	addiw	a5,a5,1
    800022bc:	0004a703          	lw	a4,0(s1)
    800022c0:	02e7e7bb          	remw	a5,a5,a4
    800022c4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800022c8:	0284b503          	ld	a0,40(s1)
    800022cc:	00003097          	auipc	ra,0x3
    800022d0:	aec080e7          	jalr	-1300(ra) # 80004db8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800022d4:	0184b503          	ld	a0,24(s1)
    800022d8:	00003097          	auipc	ra,0x3
    800022dc:	ae0080e7          	jalr	-1312(ra) # 80004db8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800022e0:	00090513          	mv	a0,s2
    800022e4:	01813083          	ld	ra,24(sp)
    800022e8:	01013403          	ld	s0,16(sp)
    800022ec:	00813483          	ld	s1,8(sp)
    800022f0:	00013903          	ld	s2,0(sp)
    800022f4:	02010113          	addi	sp,sp,32
    800022f8:	00008067          	ret

00000000800022fc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800022fc:	fe010113          	addi	sp,sp,-32
    80002300:	00113c23          	sd	ra,24(sp)
    80002304:	00813823          	sd	s0,16(sp)
    80002308:	00913423          	sd	s1,8(sp)
    8000230c:	01213023          	sd	s2,0(sp)
    80002310:	02010413          	addi	s0,sp,32
    80002314:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002318:	02853503          	ld	a0,40(a0)
    8000231c:	00003097          	auipc	ra,0x3
    80002320:	a70080e7          	jalr	-1424(ra) # 80004d8c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002324:	0304b503          	ld	a0,48(s1)
    80002328:	00003097          	auipc	ra,0x3
    8000232c:	a64080e7          	jalr	-1436(ra) # 80004d8c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002330:	0144a783          	lw	a5,20(s1)
    80002334:	0104a903          	lw	s2,16(s1)
    80002338:	0327ce63          	blt	a5,s2,80002374 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000233c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002340:	0304b503          	ld	a0,48(s1)
    80002344:	00003097          	auipc	ra,0x3
    80002348:	a74080e7          	jalr	-1420(ra) # 80004db8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000234c:	0284b503          	ld	a0,40(s1)
    80002350:	00003097          	auipc	ra,0x3
    80002354:	a68080e7          	jalr	-1432(ra) # 80004db8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002358:	00090513          	mv	a0,s2
    8000235c:	01813083          	ld	ra,24(sp)
    80002360:	01013403          	ld	s0,16(sp)
    80002364:	00813483          	ld	s1,8(sp)
    80002368:	00013903          	ld	s2,0(sp)
    8000236c:	02010113          	addi	sp,sp,32
    80002370:	00008067          	ret
        ret = cap - head + tail;
    80002374:	0004a703          	lw	a4,0(s1)
    80002378:	4127093b          	subw	s2,a4,s2
    8000237c:	00f9093b          	addw	s2,s2,a5
    80002380:	fc1ff06f          	j	80002340 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002384 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002384:	fe010113          	addi	sp,sp,-32
    80002388:	00113c23          	sd	ra,24(sp)
    8000238c:	00813823          	sd	s0,16(sp)
    80002390:	00913423          	sd	s1,8(sp)
    80002394:	02010413          	addi	s0,sp,32
    80002398:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000239c:	00a00513          	li	a0,10
    800023a0:	00003097          	auipc	ra,0x3
    800023a4:	ae0080e7          	jalr	-1312(ra) # 80004e80 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800023a8:	00007517          	auipc	a0,0x7
    800023ac:	cb050513          	addi	a0,a0,-848 # 80009058 <CONSOLE_STATUS+0x48>
    800023b0:	fffff097          	auipc	ra,0xfffff
    800023b4:	69c080e7          	jalr	1692(ra) # 80001a4c <_Z11printStringPKc>
    while (getCnt()) {
    800023b8:	00048513          	mv	a0,s1
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	f40080e7          	jalr	-192(ra) # 800022fc <_ZN9BufferCPP6getCntEv>
    800023c4:	02050c63          	beqz	a0,800023fc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800023c8:	0084b783          	ld	a5,8(s1)
    800023cc:	0104a703          	lw	a4,16(s1)
    800023d0:	00271713          	slli	a4,a4,0x2
    800023d4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800023d8:	0007c503          	lbu	a0,0(a5)
    800023dc:	00003097          	auipc	ra,0x3
    800023e0:	aa4080e7          	jalr	-1372(ra) # 80004e80 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800023e4:	0104a783          	lw	a5,16(s1)
    800023e8:	0017879b          	addiw	a5,a5,1
    800023ec:	0004a703          	lw	a4,0(s1)
    800023f0:	02e7e7bb          	remw	a5,a5,a4
    800023f4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800023f8:	fc1ff06f          	j	800023b8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800023fc:	02100513          	li	a0,33
    80002400:	00003097          	auipc	ra,0x3
    80002404:	a80080e7          	jalr	-1408(ra) # 80004e80 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002408:	00a00513          	li	a0,10
    8000240c:	00003097          	auipc	ra,0x3
    80002410:	a74080e7          	jalr	-1420(ra) # 80004e80 <_ZN7Console4putcEc>
    mem_free(buffer);
    80002414:	0084b503          	ld	a0,8(s1)
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	e54080e7          	jalr	-428(ra) # 8000126c <_Z8mem_freePv>
    delete itemAvailable;
    80002420:	0204b503          	ld	a0,32(s1)
    80002424:	00050863          	beqz	a0,80002434 <_ZN9BufferCPPD1Ev+0xb0>
    80002428:	00053783          	ld	a5,0(a0)
    8000242c:	0087b783          	ld	a5,8(a5)
    80002430:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002434:	0184b503          	ld	a0,24(s1)
    80002438:	00050863          	beqz	a0,80002448 <_ZN9BufferCPPD1Ev+0xc4>
    8000243c:	00053783          	ld	a5,0(a0)
    80002440:	0087b783          	ld	a5,8(a5)
    80002444:	000780e7          	jalr	a5
    delete mutexTail;
    80002448:	0304b503          	ld	a0,48(s1)
    8000244c:	00050863          	beqz	a0,8000245c <_ZN9BufferCPPD1Ev+0xd8>
    80002450:	00053783          	ld	a5,0(a0)
    80002454:	0087b783          	ld	a5,8(a5)
    80002458:	000780e7          	jalr	a5
    delete mutexHead;
    8000245c:	0284b503          	ld	a0,40(s1)
    80002460:	00050863          	beqz	a0,80002470 <_ZN9BufferCPPD1Ev+0xec>
    80002464:	00053783          	ld	a5,0(a0)
    80002468:	0087b783          	ld	a5,8(a5)
    8000246c:	000780e7          	jalr	a5
}
    80002470:	01813083          	ld	ra,24(sp)
    80002474:	01013403          	ld	s0,16(sp)
    80002478:	00813483          	ld	s1,8(sp)
    8000247c:	02010113          	addi	sp,sp,32
    80002480:	00008067          	ret

0000000080002484 <_Z9sleepyRunPv>:

#include "printing.h"

bool finished[2];

void sleepyRun(void *arg) {
    80002484:	fe010113          	addi	sp,sp,-32
    80002488:	00113c23          	sd	ra,24(sp)
    8000248c:	00813823          	sd	s0,16(sp)
    80002490:	00913423          	sd	s1,8(sp)
    80002494:	01213023          	sd	s2,0(sp)
    80002498:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000249c:	00053903          	ld	s2,0(a0)
    int i = 6;
    800024a0:	00600493          	li	s1,6
    while (--i > 0) {
    800024a4:	fff4849b          	addiw	s1,s1,-1
    800024a8:	04905463          	blez	s1,800024f0 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800024ac:	00007517          	auipc	a0,0x7
    800024b0:	bc450513          	addi	a0,a0,-1084 # 80009070 <CONSOLE_STATUS+0x60>
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	598080e7          	jalr	1432(ra) # 80001a4c <_Z11printStringPKc>
        printInt(sleep_time);
    800024bc:	00000613          	li	a2,0
    800024c0:	00a00593          	li	a1,10
    800024c4:	0009051b          	sext.w	a0,s2
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	71c080e7          	jalr	1820(ra) # 80001be4 <_Z8printIntiii>
        printString(" !\n");
    800024d0:	00007517          	auipc	a0,0x7
    800024d4:	ba850513          	addi	a0,a0,-1112 # 80009078 <CONSOLE_STATUS+0x68>
    800024d8:	fffff097          	auipc	ra,0xfffff
    800024dc:	574080e7          	jalr	1396(ra) # 80001a4c <_Z11printStringPKc>
        time_sleep(sleep_time);
    800024e0:	00090513          	mv	a0,s2
    800024e4:	fffff097          	auipc	ra,0xfffff
    800024e8:	f00080e7          	jalr	-256(ra) # 800013e4 <_Z10time_sleepm>
    while (--i > 0) {
    800024ec:	fb9ff06f          	j	800024a4 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800024f0:	00a00793          	li	a5,10
    800024f4:	02f95933          	divu	s2,s2,a5
    800024f8:	fff90913          	addi	s2,s2,-1
    800024fc:	00009797          	auipc	a5,0x9
    80002500:	1fc78793          	addi	a5,a5,508 # 8000b6f8 <_ZN19ConsumerProducerCPP9threadEndE>
    80002504:	01278933          	add	s2,a5,s2
    80002508:	00100793          	li	a5,1
    8000250c:	00f90423          	sb	a5,8(s2)
}
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	01013403          	ld	s0,16(sp)
    80002518:	00813483          	ld	s1,8(sp)
    8000251c:	00013903          	ld	s2,0(sp)
    80002520:	02010113          	addi	sp,sp,32
    80002524:	00008067          	ret

0000000080002528 <_Z6bafer1Pv>:
    while(Scheduler::imaniti());

}

//test za bafer
void bafer1(void* a){
    80002528:	fe010113          	addi	sp,sp,-32
    8000252c:	00113c23          	sd	ra,24(sp)
    80002530:	00813823          	sd	s0,16(sp)
    80002534:	00913423          	sd	s1,8(sp)
    80002538:	02010413          	addi	s0,sp,32
    for(int i=0;i<30;i++){
    8000253c:	00000493          	li	s1,0
    80002540:	02c0006f          	j	8000256c <_Z6bafer1Pv+0x44>
        putc(i+'a');
    80002544:	0614851b          	addiw	a0,s1,97
    80002548:	0ff57513          	andi	a0,a0,255
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	f04080e7          	jalr	-252(ra) # 80001450 <_Z4putcc>
        time_sleep((i+1)*5);
    80002554:	0014879b          	addiw	a5,s1,1
    80002558:	0007849b          	sext.w	s1,a5
    8000255c:	0027951b          	slliw	a0,a5,0x2
    80002560:	00f5053b          	addw	a0,a0,a5
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	e80080e7          	jalr	-384(ra) # 800013e4 <_Z10time_sleepm>
    for(int i=0;i<30;i++){
    8000256c:	01d00793          	li	a5,29
    80002570:	fc97dae3          	bge	a5,s1,80002544 <_Z6bafer1Pv+0x1c>
    }
}
    80002574:	01813083          	ld	ra,24(sp)
    80002578:	01013403          	ld	s0,16(sp)
    8000257c:	00813483          	ld	s1,8(sp)
    80002580:	02010113          	addi	sp,sp,32
    80002584:	00008067          	ret

0000000080002588 <_Z6bafer2Pv>:
void bafer2(void* a){
    80002588:	fe010113          	addi	sp,sp,-32
    8000258c:	00113c23          	sd	ra,24(sp)
    80002590:	00813823          	sd	s0,16(sp)
    80002594:	00913423          	sd	s1,8(sp)
    80002598:	02010413          	addi	s0,sp,32
    for(int i=0;i<30;i++){
    8000259c:	00000493          	li	s1,0
    800025a0:	0280006f          	j	800025c8 <_Z6bafer2Pv+0x40>
        int g=getc();
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	e70080e7          	jalr	-400(ra) # 80001414 <_Z4getcv>
        if(g!=-1){
            print(g);
    800025ac:	0005051b          	sext.w	a0,a0
    800025b0:	00004097          	auipc	ra,0x4
    800025b4:	acc080e7          	jalr	-1332(ra) # 8000607c <_Z5printi>
            //b->Print();
        }
        time_sleep(20);
    800025b8:	01400513          	li	a0,20
    800025bc:	fffff097          	auipc	ra,0xfffff
    800025c0:	e28080e7          	jalr	-472(ra) # 800013e4 <_Z10time_sleepm>
    for(int i=0;i<30;i++){
    800025c4:	0014849b          	addiw	s1,s1,1
    800025c8:	01d00793          	li	a5,29
    800025cc:	fc97dce3          	bge	a5,s1,800025a4 <_Z6bafer2Pv+0x1c>
    }
}
    800025d0:	01813083          	ld	ra,24(sp)
    800025d4:	01013403          	ld	s0,16(sp)
    800025d8:	00813483          	ld	s1,8(sp)
    800025dc:	02010113          	addi	sp,sp,32
    800025e0:	00008067          	ret

00000000800025e4 <_Z2f1Pv>:
void f1(void* a){
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00113423          	sd	ra,8(sp)
    800025ec:	00813023          	sd	s0,0(sp)
    800025f0:	01010413          	addi	s0,sp,16
    print("funkcija1A\n");
    800025f4:	00007517          	auipc	a0,0x7
    800025f8:	a8c50513          	addi	a0,a0,-1396 # 80009080 <CONSOLE_STATUS+0x70>
    800025fc:	00004097          	auipc	ra,0x4
    80002600:	a3c080e7          	jalr	-1476(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    80002604:	00004097          	auipc	ra,0x4
    80002608:	c98080e7          	jalr	-872(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija1B\n");
    8000260c:	00007517          	auipc	a0,0x7
    80002610:	a8450513          	addi	a0,a0,-1404 # 80009090 <CONSOLE_STATUS+0x80>
    80002614:	00004097          	auipc	ra,0x4
    80002618:	a24080e7          	jalr	-1500(ra) # 80006038 <_Z5printPKc>
    sem_wait(s);
    8000261c:	00009517          	auipc	a0,0x9
    80002620:	0ec53503          	ld	a0,236(a0) # 8000b708 <s>
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	d60080e7          	jalr	-672(ra) # 80001384 <_Z8sem_waitP7Semafor>
    Nit::yeild();
    8000262c:	00004097          	auipc	ra,0x4
    80002630:	c70080e7          	jalr	-912(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija1C\n");
    80002634:	00007517          	auipc	a0,0x7
    80002638:	a6c50513          	addi	a0,a0,-1428 # 800090a0 <CONSOLE_STATUS+0x90>
    8000263c:	00004097          	auipc	ra,0x4
    80002640:	9fc080e7          	jalr	-1540(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    80002644:	00004097          	auipc	ra,0x4
    80002648:	c58080e7          	jalr	-936(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija1D\n");
    8000264c:	00007517          	auipc	a0,0x7
    80002650:	a6450513          	addi	a0,a0,-1436 # 800090b0 <CONSOLE_STATUS+0xa0>
    80002654:	00004097          	auipc	ra,0x4
    80002658:	9e4080e7          	jalr	-1564(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    8000265c:	00004097          	auipc	ra,0x4
    80002660:	c40080e7          	jalr	-960(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija1E\n");
    80002664:	00007517          	auipc	a0,0x7
    80002668:	a5c50513          	addi	a0,a0,-1444 # 800090c0 <CONSOLE_STATUS+0xb0>
    8000266c:	00004097          	auipc	ra,0x4
    80002670:	9cc080e7          	jalr	-1588(ra) # 80006038 <_Z5printPKc>
}
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <_Z2f3Pv>:
void f3(void* a){
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
    print("funkcija3A\n");
    80002694:	00007517          	auipc	a0,0x7
    80002698:	a3c50513          	addi	a0,a0,-1476 # 800090d0 <CONSOLE_STATUS+0xc0>
    8000269c:	00004097          	auipc	ra,0x4
    800026a0:	99c080e7          	jalr	-1636(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    800026a4:	00004097          	auipc	ra,0x4
    800026a8:	bf8080e7          	jalr	-1032(ra) # 8000629c <_ZN3Nit5yeildEv>
    print(sem_wait(s));
    800026ac:	00009517          	auipc	a0,0x9
    800026b0:	05c53503          	ld	a0,92(a0) # 8000b708 <s>
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	cd0080e7          	jalr	-816(ra) # 80001384 <_Z8sem_waitP7Semafor>
    800026bc:	00004097          	auipc	ra,0x4
    800026c0:	9c0080e7          	jalr	-1600(ra) # 8000607c <_Z5printi>
    print("funkcija3B\n");
    800026c4:	00007517          	auipc	a0,0x7
    800026c8:	a1c50513          	addi	a0,a0,-1508 # 800090e0 <CONSOLE_STATUS+0xd0>
    800026cc:	00004097          	auipc	ra,0x4
    800026d0:	96c080e7          	jalr	-1684(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    800026d4:	00004097          	auipc	ra,0x4
    800026d8:	bc8080e7          	jalr	-1080(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija3C\n");
    800026dc:	00007517          	auipc	a0,0x7
    800026e0:	a1450513          	addi	a0,a0,-1516 # 800090f0 <CONSOLE_STATUS+0xe0>
    800026e4:	00004097          	auipc	ra,0x4
    800026e8:	954080e7          	jalr	-1708(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    800026ec:	00004097          	auipc	ra,0x4
    800026f0:	bb0080e7          	jalr	-1104(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija3D\n");
    800026f4:	00007517          	auipc	a0,0x7
    800026f8:	a0c50513          	addi	a0,a0,-1524 # 80009100 <CONSOLE_STATUS+0xf0>
    800026fc:	00004097          	auipc	ra,0x4
    80002700:	93c080e7          	jalr	-1732(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    80002704:	00004097          	auipc	ra,0x4
    80002708:	b98080e7          	jalr	-1128(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija3E\n");
    8000270c:	00007517          	auipc	a0,0x7
    80002710:	a0450513          	addi	a0,a0,-1532 # 80009110 <CONSOLE_STATUS+0x100>
    80002714:	00004097          	auipc	ra,0x4
    80002718:	924080e7          	jalr	-1756(ra) # 80006038 <_Z5printPKc>
}
    8000271c:	00813083          	ld	ra,8(sp)
    80002720:	00013403          	ld	s0,0(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret

000000008000272c <_Z2f2Pv>:
void f2(void* a){
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00113423          	sd	ra,8(sp)
    80002734:	00813023          	sd	s0,0(sp)
    80002738:	01010413          	addi	s0,sp,16
    print("funkcija2A\n");
    8000273c:	00007517          	auipc	a0,0x7
    80002740:	9e450513          	addi	a0,a0,-1564 # 80009120 <CONSOLE_STATUS+0x110>
    80002744:	00004097          	auipc	ra,0x4
    80002748:	8f4080e7          	jalr	-1804(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    8000274c:	00004097          	auipc	ra,0x4
    80002750:	b50080e7          	jalr	-1200(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija2B\n");
    80002754:	00007517          	auipc	a0,0x7
    80002758:	9dc50513          	addi	a0,a0,-1572 # 80009130 <CONSOLE_STATUS+0x120>
    8000275c:	00004097          	auipc	ra,0x4
    80002760:	8dc080e7          	jalr	-1828(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    80002764:	00004097          	auipc	ra,0x4
    80002768:	b38080e7          	jalr	-1224(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija2C\n");
    8000276c:	00007517          	auipc	a0,0x7
    80002770:	9d450513          	addi	a0,a0,-1580 # 80009140 <CONSOLE_STATUS+0x130>
    80002774:	00004097          	auipc	ra,0x4
    80002778:	8c4080e7          	jalr	-1852(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    8000277c:	00004097          	auipc	ra,0x4
    80002780:	b20080e7          	jalr	-1248(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija2D\n");
    80002784:	00007517          	auipc	a0,0x7
    80002788:	9cc50513          	addi	a0,a0,-1588 # 80009150 <CONSOLE_STATUS+0x140>
    8000278c:	00004097          	auipc	ra,0x4
    80002790:	8ac080e7          	jalr	-1876(ra) # 80006038 <_Z5printPKc>
    Nit::yeild();
    80002794:	00004097          	auipc	ra,0x4
    80002798:	b08080e7          	jalr	-1272(ra) # 8000629c <_ZN3Nit5yeildEv>
    print("funkcija2E\n");
    8000279c:	00007517          	auipc	a0,0x7
    800027a0:	9c450513          	addi	a0,a0,-1596 # 80009160 <CONSOLE_STATUS+0x150>
    800027a4:	00004097          	auipc	ra,0x4
    800027a8:	894080e7          	jalr	-1900(ra) # 80006038 <_Z5printPKc>
    print(sem_close(s));
    800027ac:	00009517          	auipc	a0,0x9
    800027b0:	f5c53503          	ld	a0,-164(a0) # 8000b708 <s>
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	ba0080e7          	jalr	-1120(ra) # 80001354 <_Z9sem_closeP7Semafor>
    800027bc:	00004097          	auipc	ra,0x4
    800027c0:	8c0080e7          	jalr	-1856(ra) # 8000607c <_Z5printi>
}
    800027c4:	00813083          	ld	ra,8(sp)
    800027c8:	00013403          	ld	s0,0(sp)
    800027cc:	01010113          	addi	sp,sp,16
    800027d0:	00008067          	ret

00000000800027d4 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    800027d4:	fe010113          	addi	sp,sp,-32
    800027d8:	00113c23          	sd	ra,24(sp)
    800027dc:	00813823          	sd	s0,16(sp)
    800027e0:	00913423          	sd	s1,8(sp)
    800027e4:	01213023          	sd	s2,0(sp)
    800027e8:	02010413          	addi	s0,sp,32
    800027ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800027f0:	00100793          	li	a5,1
    800027f4:	02a7f863          	bgeu	a5,a0,80002824 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800027f8:	00a00793          	li	a5,10
    800027fc:	02f577b3          	remu	a5,a0,a5
    80002800:	02078e63          	beqz	a5,8000283c <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002804:	fff48513          	addi	a0,s1,-1
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	fcc080e7          	jalr	-52(ra) # 800027d4 <_Z9fibonaccim>
    80002810:	00050913          	mv	s2,a0
    80002814:	ffe48513          	addi	a0,s1,-2
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	fbc080e7          	jalr	-68(ra) # 800027d4 <_Z9fibonaccim>
    80002820:	00a90533          	add	a0,s2,a0
}
    80002824:	01813083          	ld	ra,24(sp)
    80002828:	01013403          	ld	s0,16(sp)
    8000282c:	00813483          	ld	s1,8(sp)
    80002830:	00013903          	ld	s2,0(sp)
    80002834:	02010113          	addi	sp,sp,32
    80002838:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	ac0080e7          	jalr	-1344(ra) # 800012fc <_Z15thread_dispatchv>
    80002844:	fc1ff06f          	j	80002804 <_Z9fibonaccim+0x30>

0000000080002848 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002848:	fe010113          	addi	sp,sp,-32
    8000284c:	00113c23          	sd	ra,24(sp)
    80002850:	00813823          	sd	s0,16(sp)
    80002854:	00913423          	sd	s1,8(sp)
    80002858:	01213023          	sd	s2,0(sp)
    8000285c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002860:	00000913          	li	s2,0
    80002864:	0380006f          	j	8000289c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	a94080e7          	jalr	-1388(ra) # 800012fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002870:	00148493          	addi	s1,s1,1
    80002874:	000027b7          	lui	a5,0x2
    80002878:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000287c:	0097ee63          	bltu	a5,s1,80002898 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002880:	00000713          	li	a4,0
    80002884:	000077b7          	lui	a5,0x7
    80002888:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000288c:	fce7eee3          	bltu	a5,a4,80002868 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002890:	00170713          	addi	a4,a4,1
    80002894:	ff1ff06f          	j	80002884 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002898:	00190913          	addi	s2,s2,1
    8000289c:	00900793          	li	a5,9
    800028a0:	0527e063          	bltu	a5,s2,800028e0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800028a4:	00007517          	auipc	a0,0x7
    800028a8:	8cc50513          	addi	a0,a0,-1844 # 80009170 <CONSOLE_STATUS+0x160>
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	1a0080e7          	jalr	416(ra) # 80001a4c <_Z11printStringPKc>
    800028b4:	00000613          	li	a2,0
    800028b8:	00a00593          	li	a1,10
    800028bc:	0009051b          	sext.w	a0,s2
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	324080e7          	jalr	804(ra) # 80001be4 <_Z8printIntiii>
    800028c8:	00006517          	auipc	a0,0x6
    800028cc:	76050513          	addi	a0,a0,1888 # 80009028 <CONSOLE_STATUS+0x18>
    800028d0:	fffff097          	auipc	ra,0xfffff
    800028d4:	17c080e7          	jalr	380(ra) # 80001a4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800028d8:	00000493          	li	s1,0
    800028dc:	f99ff06f          	j	80002874 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800028e0:	00007517          	auipc	a0,0x7
    800028e4:	89850513          	addi	a0,a0,-1896 # 80009178 <CONSOLE_STATUS+0x168>
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	164080e7          	jalr	356(ra) # 80001a4c <_Z11printStringPKc>
    finishedA = true;
    800028f0:	00100793          	li	a5,1
    800028f4:	00009717          	auipc	a4,0x9
    800028f8:	e0f70e23          	sb	a5,-484(a4) # 8000b710 <finishedA>
}
    800028fc:	01813083          	ld	ra,24(sp)
    80002900:	01013403          	ld	s0,16(sp)
    80002904:	00813483          	ld	s1,8(sp)
    80002908:	00013903          	ld	s2,0(sp)
    8000290c:	02010113          	addi	sp,sp,32
    80002910:	00008067          	ret

0000000080002914 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002914:	fe010113          	addi	sp,sp,-32
    80002918:	00113c23          	sd	ra,24(sp)
    8000291c:	00813823          	sd	s0,16(sp)
    80002920:	00913423          	sd	s1,8(sp)
    80002924:	01213023          	sd	s2,0(sp)
    80002928:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000292c:	00000913          	li	s2,0
    80002930:	0380006f          	j	80002968 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	9c8080e7          	jalr	-1592(ra) # 800012fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000293c:	00148493          	addi	s1,s1,1
    80002940:	000027b7          	lui	a5,0x2
    80002944:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002948:	0097ee63          	bltu	a5,s1,80002964 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000294c:	00000713          	li	a4,0
    80002950:	000077b7          	lui	a5,0x7
    80002954:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002958:	fce7eee3          	bltu	a5,a4,80002934 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000295c:	00170713          	addi	a4,a4,1
    80002960:	ff1ff06f          	j	80002950 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002964:	00190913          	addi	s2,s2,1
    80002968:	00f00793          	li	a5,15
    8000296c:	0527e063          	bltu	a5,s2,800029ac <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002970:	00007517          	auipc	a0,0x7
    80002974:	81850513          	addi	a0,a0,-2024 # 80009188 <CONSOLE_STATUS+0x178>
    80002978:	fffff097          	auipc	ra,0xfffff
    8000297c:	0d4080e7          	jalr	212(ra) # 80001a4c <_Z11printStringPKc>
    80002980:	00000613          	li	a2,0
    80002984:	00a00593          	li	a1,10
    80002988:	0009051b          	sext.w	a0,s2
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	258080e7          	jalr	600(ra) # 80001be4 <_Z8printIntiii>
    80002994:	00006517          	auipc	a0,0x6
    80002998:	69450513          	addi	a0,a0,1684 # 80009028 <CONSOLE_STATUS+0x18>
    8000299c:	fffff097          	auipc	ra,0xfffff
    800029a0:	0b0080e7          	jalr	176(ra) # 80001a4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800029a4:	00000493          	li	s1,0
    800029a8:	f99ff06f          	j	80002940 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800029ac:	00006517          	auipc	a0,0x6
    800029b0:	7e450513          	addi	a0,a0,2020 # 80009190 <CONSOLE_STATUS+0x180>
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	098080e7          	jalr	152(ra) # 80001a4c <_Z11printStringPKc>
    finishedB = true;
    800029bc:	00100793          	li	a5,1
    800029c0:	00009717          	auipc	a4,0x9
    800029c4:	d4f708a3          	sb	a5,-687(a4) # 8000b711 <finishedB>
    thread_dispatch();
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	934080e7          	jalr	-1740(ra) # 800012fc <_Z15thread_dispatchv>
}
    800029d0:	01813083          	ld	ra,24(sp)
    800029d4:	01013403          	ld	s0,16(sp)
    800029d8:	00813483          	ld	s1,8(sp)
    800029dc:	00013903          	ld	s2,0(sp)
    800029e0:	02010113          	addi	sp,sp,32
    800029e4:	00008067          	ret

00000000800029e8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800029e8:	fe010113          	addi	sp,sp,-32
    800029ec:	00113c23          	sd	ra,24(sp)
    800029f0:	00813823          	sd	s0,16(sp)
    800029f4:	00913423          	sd	s1,8(sp)
    800029f8:	01213023          	sd	s2,0(sp)
    800029fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002a00:	00000493          	li	s1,0
    80002a04:	0400006f          	j	80002a44 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002a08:	00006517          	auipc	a0,0x6
    80002a0c:	79850513          	addi	a0,a0,1944 # 800091a0 <CONSOLE_STATUS+0x190>
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	03c080e7          	jalr	60(ra) # 80001a4c <_Z11printStringPKc>
    80002a18:	00000613          	li	a2,0
    80002a1c:	00a00593          	li	a1,10
    80002a20:	00048513          	mv	a0,s1
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	1c0080e7          	jalr	448(ra) # 80001be4 <_Z8printIntiii>
    80002a2c:	00006517          	auipc	a0,0x6
    80002a30:	5fc50513          	addi	a0,a0,1532 # 80009028 <CONSOLE_STATUS+0x18>
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	018080e7          	jalr	24(ra) # 80001a4c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002a3c:	0014849b          	addiw	s1,s1,1
    80002a40:	0ff4f493          	andi	s1,s1,255
    80002a44:	00200793          	li	a5,2
    80002a48:	fc97f0e3          	bgeu	a5,s1,80002a08 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002a4c:	00006517          	auipc	a0,0x6
    80002a50:	75c50513          	addi	a0,a0,1884 # 800091a8 <CONSOLE_STATUS+0x198>
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	ff8080e7          	jalr	-8(ra) # 80001a4c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002a5c:	00700313          	li	t1,7
    thread_dispatch();
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	89c080e7          	jalr	-1892(ra) # 800012fc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002a68:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002a6c:	00006517          	auipc	a0,0x6
    80002a70:	74c50513          	addi	a0,a0,1868 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	fd8080e7          	jalr	-40(ra) # 80001a4c <_Z11printStringPKc>
    80002a7c:	00000613          	li	a2,0
    80002a80:	00a00593          	li	a1,10
    80002a84:	0009051b          	sext.w	a0,s2
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	15c080e7          	jalr	348(ra) # 80001be4 <_Z8printIntiii>
    80002a90:	00006517          	auipc	a0,0x6
    80002a94:	59850513          	addi	a0,a0,1432 # 80009028 <CONSOLE_STATUS+0x18>
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	fb4080e7          	jalr	-76(ra) # 80001a4c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002aa0:	00c00513          	li	a0,12
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	d30080e7          	jalr	-720(ra) # 800027d4 <_Z9fibonaccim>
    80002aac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002ab0:	00006517          	auipc	a0,0x6
    80002ab4:	71050513          	addi	a0,a0,1808 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	f94080e7          	jalr	-108(ra) # 80001a4c <_Z11printStringPKc>
    80002ac0:	00000613          	li	a2,0
    80002ac4:	00a00593          	li	a1,10
    80002ac8:	0009051b          	sext.w	a0,s2
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	118080e7          	jalr	280(ra) # 80001be4 <_Z8printIntiii>
    80002ad4:	00006517          	auipc	a0,0x6
    80002ad8:	55450513          	addi	a0,a0,1364 # 80009028 <CONSOLE_STATUS+0x18>
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	f70080e7          	jalr	-144(ra) # 80001a4c <_Z11printStringPKc>
    80002ae4:	0400006f          	j	80002b24 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002ae8:	00006517          	auipc	a0,0x6
    80002aec:	6b850513          	addi	a0,a0,1720 # 800091a0 <CONSOLE_STATUS+0x190>
    80002af0:	fffff097          	auipc	ra,0xfffff
    80002af4:	f5c080e7          	jalr	-164(ra) # 80001a4c <_Z11printStringPKc>
    80002af8:	00000613          	li	a2,0
    80002afc:	00a00593          	li	a1,10
    80002b00:	00048513          	mv	a0,s1
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	0e0080e7          	jalr	224(ra) # 80001be4 <_Z8printIntiii>
    80002b0c:	00006517          	auipc	a0,0x6
    80002b10:	51c50513          	addi	a0,a0,1308 # 80009028 <CONSOLE_STATUS+0x18>
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	f38080e7          	jalr	-200(ra) # 80001a4c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002b1c:	0014849b          	addiw	s1,s1,1
    80002b20:	0ff4f493          	andi	s1,s1,255
    80002b24:	00500793          	li	a5,5
    80002b28:	fc97f0e3          	bgeu	a5,s1,80002ae8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002b2c:	00006517          	auipc	a0,0x6
    80002b30:	64c50513          	addi	a0,a0,1612 # 80009178 <CONSOLE_STATUS+0x168>
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	f18080e7          	jalr	-232(ra) # 80001a4c <_Z11printStringPKc>
    finishedC = true;
    80002b3c:	00100793          	li	a5,1
    80002b40:	00009717          	auipc	a4,0x9
    80002b44:	bcf70923          	sb	a5,-1070(a4) # 8000b712 <finishedC>
    thread_dispatch();
    80002b48:	ffffe097          	auipc	ra,0xffffe
    80002b4c:	7b4080e7          	jalr	1972(ra) # 800012fc <_Z15thread_dispatchv>
}
    80002b50:	01813083          	ld	ra,24(sp)
    80002b54:	01013403          	ld	s0,16(sp)
    80002b58:	00813483          	ld	s1,8(sp)
    80002b5c:	00013903          	ld	s2,0(sp)
    80002b60:	02010113          	addi	sp,sp,32
    80002b64:	00008067          	ret

0000000080002b68 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002b68:	fe010113          	addi	sp,sp,-32
    80002b6c:	00113c23          	sd	ra,24(sp)
    80002b70:	00813823          	sd	s0,16(sp)
    80002b74:	00913423          	sd	s1,8(sp)
    80002b78:	01213023          	sd	s2,0(sp)
    80002b7c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002b80:	00a00493          	li	s1,10
    80002b84:	0400006f          	j	80002bc4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002b88:	00006517          	auipc	a0,0x6
    80002b8c:	64850513          	addi	a0,a0,1608 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	ebc080e7          	jalr	-324(ra) # 80001a4c <_Z11printStringPKc>
    80002b98:	00000613          	li	a2,0
    80002b9c:	00a00593          	li	a1,10
    80002ba0:	00048513          	mv	a0,s1
    80002ba4:	fffff097          	auipc	ra,0xfffff
    80002ba8:	040080e7          	jalr	64(ra) # 80001be4 <_Z8printIntiii>
    80002bac:	00006517          	auipc	a0,0x6
    80002bb0:	47c50513          	addi	a0,a0,1148 # 80009028 <CONSOLE_STATUS+0x18>
    80002bb4:	fffff097          	auipc	ra,0xfffff
    80002bb8:	e98080e7          	jalr	-360(ra) # 80001a4c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002bbc:	0014849b          	addiw	s1,s1,1
    80002bc0:	0ff4f493          	andi	s1,s1,255
    80002bc4:	00c00793          	li	a5,12
    80002bc8:	fc97f0e3          	bgeu	a5,s1,80002b88 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002bcc:	00006517          	auipc	a0,0x6
    80002bd0:	60c50513          	addi	a0,a0,1548 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	e78080e7          	jalr	-392(ra) # 80001a4c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002bdc:	00500313          	li	t1,5
    thread_dispatch();
    80002be0:	ffffe097          	auipc	ra,0xffffe
    80002be4:	71c080e7          	jalr	1820(ra) # 800012fc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002be8:	01000513          	li	a0,16
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	be8080e7          	jalr	-1048(ra) # 800027d4 <_Z9fibonaccim>
    80002bf4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002bf8:	00006517          	auipc	a0,0x6
    80002bfc:	5f050513          	addi	a0,a0,1520 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	e4c080e7          	jalr	-436(ra) # 80001a4c <_Z11printStringPKc>
    80002c08:	00000613          	li	a2,0
    80002c0c:	00a00593          	li	a1,10
    80002c10:	0009051b          	sext.w	a0,s2
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	fd0080e7          	jalr	-48(ra) # 80001be4 <_Z8printIntiii>
    80002c1c:	00006517          	auipc	a0,0x6
    80002c20:	40c50513          	addi	a0,a0,1036 # 80009028 <CONSOLE_STATUS+0x18>
    80002c24:	fffff097          	auipc	ra,0xfffff
    80002c28:	e28080e7          	jalr	-472(ra) # 80001a4c <_Z11printStringPKc>
    80002c2c:	0400006f          	j	80002c6c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002c30:	00006517          	auipc	a0,0x6
    80002c34:	5a050513          	addi	a0,a0,1440 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80002c38:	fffff097          	auipc	ra,0xfffff
    80002c3c:	e14080e7          	jalr	-492(ra) # 80001a4c <_Z11printStringPKc>
    80002c40:	00000613          	li	a2,0
    80002c44:	00a00593          	li	a1,10
    80002c48:	00048513          	mv	a0,s1
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	f98080e7          	jalr	-104(ra) # 80001be4 <_Z8printIntiii>
    80002c54:	00006517          	auipc	a0,0x6
    80002c58:	3d450513          	addi	a0,a0,980 # 80009028 <CONSOLE_STATUS+0x18>
    80002c5c:	fffff097          	auipc	ra,0xfffff
    80002c60:	df0080e7          	jalr	-528(ra) # 80001a4c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002c64:	0014849b          	addiw	s1,s1,1
    80002c68:	0ff4f493          	andi	s1,s1,255
    80002c6c:	00f00793          	li	a5,15
    80002c70:	fc97f0e3          	bgeu	a5,s1,80002c30 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002c74:	00006517          	auipc	a0,0x6
    80002c78:	58450513          	addi	a0,a0,1412 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80002c7c:	fffff097          	auipc	ra,0xfffff
    80002c80:	dd0080e7          	jalr	-560(ra) # 80001a4c <_Z11printStringPKc>
    finishedD = true;
    80002c84:	00100793          	li	a5,1
    80002c88:	00009717          	auipc	a4,0x9
    80002c8c:	a8f705a3          	sb	a5,-1397(a4) # 8000b713 <finishedD>
    thread_dispatch();
    80002c90:	ffffe097          	auipc	ra,0xffffe
    80002c94:	66c080e7          	jalr	1644(ra) # 800012fc <_Z15thread_dispatchv>
}
    80002c98:	01813083          	ld	ra,24(sp)
    80002c9c:	01013403          	ld	s0,16(sp)
    80002ca0:	00813483          	ld	s1,8(sp)
    80002ca4:	00013903          	ld	s2,0(sp)
    80002ca8:	02010113          	addi	sp,sp,32
    80002cac:	00008067          	ret

0000000080002cb0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002cb0:	fc010113          	addi	sp,sp,-64
    80002cb4:	02113c23          	sd	ra,56(sp)
    80002cb8:	02813823          	sd	s0,48(sp)
    80002cbc:	02913423          	sd	s1,40(sp)
    80002cc0:	03213023          	sd	s2,32(sp)
    80002cc4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002cc8:	01000513          	li	a0,16
    80002ccc:	00002097          	auipc	ra,0x2
    80002cd0:	ec0080e7          	jalr	-320(ra) # 80004b8c <_Znwm>
    80002cd4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002cd8:	00002097          	auipc	ra,0x2
    80002cdc:	038080e7          	jalr	56(ra) # 80004d10 <_ZN6ThreadC1Ev>
    80002ce0:	00008797          	auipc	a5,0x8
    80002ce4:	72078793          	addi	a5,a5,1824 # 8000b400 <_ZTV7WorkerA+0x10>
    80002ce8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002cec:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002cf0:	00006517          	auipc	a0,0x6
    80002cf4:	51850513          	addi	a0,a0,1304 # 80009208 <CONSOLE_STATUS+0x1f8>
    80002cf8:	fffff097          	auipc	ra,0xfffff
    80002cfc:	d54080e7          	jalr	-684(ra) # 80001a4c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002d00:	01000513          	li	a0,16
    80002d04:	00002097          	auipc	ra,0x2
    80002d08:	e88080e7          	jalr	-376(ra) # 80004b8c <_Znwm>
    80002d0c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002d10:	00002097          	auipc	ra,0x2
    80002d14:	000080e7          	jalr	ra # 80004d10 <_ZN6ThreadC1Ev>
    80002d18:	00008797          	auipc	a5,0x8
    80002d1c:	71078793          	addi	a5,a5,1808 # 8000b428 <_ZTV7WorkerB+0x10>
    80002d20:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002d24:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002d28:	00006517          	auipc	a0,0x6
    80002d2c:	4f850513          	addi	a0,a0,1272 # 80009220 <CONSOLE_STATUS+0x210>
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	d1c080e7          	jalr	-740(ra) # 80001a4c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002d38:	01000513          	li	a0,16
    80002d3c:	00002097          	auipc	ra,0x2
    80002d40:	e50080e7          	jalr	-432(ra) # 80004b8c <_Znwm>
    80002d44:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002d48:	00002097          	auipc	ra,0x2
    80002d4c:	fc8080e7          	jalr	-56(ra) # 80004d10 <_ZN6ThreadC1Ev>
    80002d50:	00008797          	auipc	a5,0x8
    80002d54:	70078793          	addi	a5,a5,1792 # 8000b450 <_ZTV7WorkerC+0x10>
    80002d58:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002d5c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002d60:	00006517          	auipc	a0,0x6
    80002d64:	4d850513          	addi	a0,a0,1240 # 80009238 <CONSOLE_STATUS+0x228>
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	ce4080e7          	jalr	-796(ra) # 80001a4c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002d70:	01000513          	li	a0,16
    80002d74:	00002097          	auipc	ra,0x2
    80002d78:	e18080e7          	jalr	-488(ra) # 80004b8c <_Znwm>
    80002d7c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002d80:	00002097          	auipc	ra,0x2
    80002d84:	f90080e7          	jalr	-112(ra) # 80004d10 <_ZN6ThreadC1Ev>
    80002d88:	00008797          	auipc	a5,0x8
    80002d8c:	6f078793          	addi	a5,a5,1776 # 8000b478 <_ZTV7WorkerD+0x10>
    80002d90:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002d94:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002d98:	00006517          	auipc	a0,0x6
    80002d9c:	4b850513          	addi	a0,a0,1208 # 80009250 <CONSOLE_STATUS+0x240>
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	cac080e7          	jalr	-852(ra) # 80001a4c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002da8:	00000493          	li	s1,0
    80002dac:	00300793          	li	a5,3
    80002db0:	0297c663          	blt	a5,s1,80002ddc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002db4:	00349793          	slli	a5,s1,0x3
    80002db8:	fe040713          	addi	a4,s0,-32
    80002dbc:	00f707b3          	add	a5,a4,a5
    80002dc0:	fe07b503          	ld	a0,-32(a5)
    80002dc4:	00002097          	auipc	ra,0x2
    80002dc8:	ed0080e7          	jalr	-304(ra) # 80004c94 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002dcc:	0014849b          	addiw	s1,s1,1
    80002dd0:	fddff06f          	j	80002dac <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002dd4:	00002097          	auipc	ra,0x2
    80002dd8:	eec080e7          	jalr	-276(ra) # 80004cc0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002ddc:	00009797          	auipc	a5,0x9
    80002de0:	9347c783          	lbu	a5,-1740(a5) # 8000b710 <finishedA>
    80002de4:	fe0788e3          	beqz	a5,80002dd4 <_Z20Threads_CPP_API_testv+0x124>
    80002de8:	00009797          	auipc	a5,0x9
    80002dec:	9297c783          	lbu	a5,-1751(a5) # 8000b711 <finishedB>
    80002df0:	fe0782e3          	beqz	a5,80002dd4 <_Z20Threads_CPP_API_testv+0x124>
    80002df4:	00009797          	auipc	a5,0x9
    80002df8:	91e7c783          	lbu	a5,-1762(a5) # 8000b712 <finishedC>
    80002dfc:	fc078ce3          	beqz	a5,80002dd4 <_Z20Threads_CPP_API_testv+0x124>
    80002e00:	00009797          	auipc	a5,0x9
    80002e04:	9137c783          	lbu	a5,-1773(a5) # 8000b713 <finishedD>
    80002e08:	fc0786e3          	beqz	a5,80002dd4 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80002e0c:	fc040493          	addi	s1,s0,-64
    80002e10:	0080006f          	j	80002e18 <_Z20Threads_CPP_API_testv+0x168>
    80002e14:	00848493          	addi	s1,s1,8
    80002e18:	fe040793          	addi	a5,s0,-32
    80002e1c:	08f48663          	beq	s1,a5,80002ea8 <_Z20Threads_CPP_API_testv+0x1f8>
    80002e20:	0004b503          	ld	a0,0(s1)
    80002e24:	fe0508e3          	beqz	a0,80002e14 <_Z20Threads_CPP_API_testv+0x164>
    80002e28:	00053783          	ld	a5,0(a0)
    80002e2c:	0087b783          	ld	a5,8(a5)
    80002e30:	000780e7          	jalr	a5
    80002e34:	fe1ff06f          	j	80002e14 <_Z20Threads_CPP_API_testv+0x164>
    80002e38:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002e3c:	00048513          	mv	a0,s1
    80002e40:	00002097          	auipc	ra,0x2
    80002e44:	d74080e7          	jalr	-652(ra) # 80004bb4 <_ZdlPv>
    80002e48:	00090513          	mv	a0,s2
    80002e4c:	0000a097          	auipc	ra,0xa
    80002e50:	9fc080e7          	jalr	-1540(ra) # 8000c848 <_Unwind_Resume>
    80002e54:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002e58:	00048513          	mv	a0,s1
    80002e5c:	00002097          	auipc	ra,0x2
    80002e60:	d58080e7          	jalr	-680(ra) # 80004bb4 <_ZdlPv>
    80002e64:	00090513          	mv	a0,s2
    80002e68:	0000a097          	auipc	ra,0xa
    80002e6c:	9e0080e7          	jalr	-1568(ra) # 8000c848 <_Unwind_Resume>
    80002e70:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002e74:	00048513          	mv	a0,s1
    80002e78:	00002097          	auipc	ra,0x2
    80002e7c:	d3c080e7          	jalr	-708(ra) # 80004bb4 <_ZdlPv>
    80002e80:	00090513          	mv	a0,s2
    80002e84:	0000a097          	auipc	ra,0xa
    80002e88:	9c4080e7          	jalr	-1596(ra) # 8000c848 <_Unwind_Resume>
    80002e8c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002e90:	00048513          	mv	a0,s1
    80002e94:	00002097          	auipc	ra,0x2
    80002e98:	d20080e7          	jalr	-736(ra) # 80004bb4 <_ZdlPv>
    80002e9c:	00090513          	mv	a0,s2
    80002ea0:	0000a097          	auipc	ra,0xa
    80002ea4:	9a8080e7          	jalr	-1624(ra) # 8000c848 <_Unwind_Resume>
}
    80002ea8:	03813083          	ld	ra,56(sp)
    80002eac:	03013403          	ld	s0,48(sp)
    80002eb0:	02813483          	ld	s1,40(sp)
    80002eb4:	02013903          	ld	s2,32(sp)
    80002eb8:	04010113          	addi	sp,sp,64
    80002ebc:	00008067          	ret

0000000080002ec0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80002ec0:	fd010113          	addi	sp,sp,-48
    80002ec4:	02113423          	sd	ra,40(sp)
    80002ec8:	02813023          	sd	s0,32(sp)
    80002ecc:	00913c23          	sd	s1,24(sp)
    80002ed0:	01213823          	sd	s2,16(sp)
    80002ed4:	01313423          	sd	s3,8(sp)
    80002ed8:	03010413          	addi	s0,sp,48
    80002edc:	00050993          	mv	s3,a0
    80002ee0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ee4:	00000913          	li	s2,0
    80002ee8:	00c0006f          	j	80002ef4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80002eec:	00002097          	auipc	ra,0x2
    80002ef0:	dd4080e7          	jalr	-556(ra) # 80004cc0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80002ef4:	ffffe097          	auipc	ra,0xffffe
    80002ef8:	520080e7          	jalr	1312(ra) # 80001414 <_Z4getcv>
    80002efc:	0005059b          	sext.w	a1,a0
    80002f00:	01b00793          	li	a5,27
    80002f04:	02f58a63          	beq	a1,a5,80002f38 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80002f08:	0084b503          	ld	a0,8(s1)
    80002f0c:	fffff097          	auipc	ra,0xfffff
    80002f10:	2d4080e7          	jalr	724(ra) # 800021e0 <_ZN9BufferCPP3putEi>
        i++;
    80002f14:	0019071b          	addiw	a4,s2,1
    80002f18:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002f1c:	0004a683          	lw	a3,0(s1)
    80002f20:	0026979b          	slliw	a5,a3,0x2
    80002f24:	00d787bb          	addw	a5,a5,a3
    80002f28:	0017979b          	slliw	a5,a5,0x1
    80002f2c:	02f767bb          	remw	a5,a4,a5
    80002f30:	fc0792e3          	bnez	a5,80002ef4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80002f34:	fb9ff06f          	j	80002eec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80002f38:	00100793          	li	a5,1
    80002f3c:	00008717          	auipc	a4,0x8
    80002f40:	7cf72c23          	sw	a5,2008(a4) # 8000b714 <threadEnd>
    td->buffer->put('!');
    80002f44:	0109b783          	ld	a5,16(s3)
    80002f48:	02100593          	li	a1,33
    80002f4c:	0087b503          	ld	a0,8(a5)
    80002f50:	fffff097          	auipc	ra,0xfffff
    80002f54:	290080e7          	jalr	656(ra) # 800021e0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80002f58:	0104b503          	ld	a0,16(s1)
    80002f5c:	00002097          	auipc	ra,0x2
    80002f60:	e5c080e7          	jalr	-420(ra) # 80004db8 <_ZN9Semaphore6signalEv>
}
    80002f64:	02813083          	ld	ra,40(sp)
    80002f68:	02013403          	ld	s0,32(sp)
    80002f6c:	01813483          	ld	s1,24(sp)
    80002f70:	01013903          	ld	s2,16(sp)
    80002f74:	00813983          	ld	s3,8(sp)
    80002f78:	03010113          	addi	sp,sp,48
    80002f7c:	00008067          	ret

0000000080002f80 <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    80002f80:	fe010113          	addi	sp,sp,-32
    80002f84:	00113c23          	sd	ra,24(sp)
    80002f88:	00813823          	sd	s0,16(sp)
    80002f8c:	00913423          	sd	s1,8(sp)
    80002f90:	01213023          	sd	s2,0(sp)
    80002f94:	02010413          	addi	s0,sp,32
    80002f98:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f9c:	00000913          	li	s2,0
    80002fa0:	00c0006f          	j	80002fac <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80002fa4:	00002097          	auipc	ra,0x2
    80002fa8:	d1c080e7          	jalr	-740(ra) # 80004cc0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80002fac:	00008797          	auipc	a5,0x8
    80002fb0:	7687a783          	lw	a5,1896(a5) # 8000b714 <threadEnd>
    80002fb4:	02079e63          	bnez	a5,80002ff0 <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80002fb8:	0004a583          	lw	a1,0(s1)
    80002fbc:	0305859b          	addiw	a1,a1,48
    80002fc0:	0084b503          	ld	a0,8(s1)
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	21c080e7          	jalr	540(ra) # 800021e0 <_ZN9BufferCPP3putEi>
        i++;
    80002fcc:	0019071b          	addiw	a4,s2,1
    80002fd0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002fd4:	0004a683          	lw	a3,0(s1)
    80002fd8:	0026979b          	slliw	a5,a3,0x2
    80002fdc:	00d787bb          	addw	a5,a5,a3
    80002fe0:	0017979b          	slliw	a5,a5,0x1
    80002fe4:	02f767bb          	remw	a5,a4,a5
    80002fe8:	fc0792e3          	bnez	a5,80002fac <_ZN8Producer8producerEPv+0x2c>
    80002fec:	fb9ff06f          	j	80002fa4 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80002ff0:	0104b503          	ld	a0,16(s1)
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	dc4080e7          	jalr	-572(ra) # 80004db8 <_ZN9Semaphore6signalEv>
}
    80002ffc:	01813083          	ld	ra,24(sp)
    80003000:	01013403          	ld	s0,16(sp)
    80003004:	00813483          	ld	s1,8(sp)
    80003008:	00013903          	ld	s2,0(sp)
    8000300c:	02010113          	addi	sp,sp,32
    80003010:	00008067          	ret

0000000080003014 <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    80003014:	fd010113          	addi	sp,sp,-48
    80003018:	02113423          	sd	ra,40(sp)
    8000301c:	02813023          	sd	s0,32(sp)
    80003020:	00913c23          	sd	s1,24(sp)
    80003024:	01213823          	sd	s2,16(sp)
    80003028:	01313423          	sd	s3,8(sp)
    8000302c:	01413023          	sd	s4,0(sp)
    80003030:	03010413          	addi	s0,sp,48
    80003034:	00050993          	mv	s3,a0
    80003038:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000303c:	00000a13          	li	s4,0
    80003040:	01c0006f          	j	8000305c <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80003044:	00002097          	auipc	ra,0x2
    80003048:	c7c080e7          	jalr	-900(ra) # 80004cc0 <_ZN6Thread8dispatchEv>
    8000304c:	0500006f          	j	8000309c <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003050:	00a00513          	li	a0,10
    80003054:	ffffe097          	auipc	ra,0xffffe
    80003058:	3fc080e7          	jalr	1020(ra) # 80001450 <_Z4putcc>
    while (!threadEnd) {
    8000305c:	00008797          	auipc	a5,0x8
    80003060:	6b87a783          	lw	a5,1720(a5) # 8000b714 <threadEnd>
    80003064:	06079263          	bnez	a5,800030c8 <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    80003068:	00893503          	ld	a0,8(s2)
    8000306c:	fffff097          	auipc	ra,0xfffff
    80003070:	204080e7          	jalr	516(ra) # 80002270 <_ZN9BufferCPP3getEv>
        i++;
    80003074:	001a049b          	addiw	s1,s4,1
    80003078:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000307c:	0ff57513          	andi	a0,a0,255
    80003080:	ffffe097          	auipc	ra,0xffffe
    80003084:	3d0080e7          	jalr	976(ra) # 80001450 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003088:	00092703          	lw	a4,0(s2)
    8000308c:	0027179b          	slliw	a5,a4,0x2
    80003090:	00e787bb          	addw	a5,a5,a4
    80003094:	02f4e7bb          	remw	a5,s1,a5
    80003098:	fa0786e3          	beqz	a5,80003044 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000309c:	05000793          	li	a5,80
    800030a0:	02f4e4bb          	remw	s1,s1,a5
    800030a4:	fa049ce3          	bnez	s1,8000305c <_ZN8Consumer8consumerEPv+0x48>
    800030a8:	fa9ff06f          	j	80003050 <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800030ac:	0109b783          	ld	a5,16(s3)
    800030b0:	0087b503          	ld	a0,8(a5)
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	1bc080e7          	jalr	444(ra) # 80002270 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800030bc:	0ff57513          	andi	a0,a0,255
    800030c0:	00002097          	auipc	ra,0x2
    800030c4:	dc0080e7          	jalr	-576(ra) # 80004e80 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800030c8:	0109b783          	ld	a5,16(s3)
    800030cc:	0087b503          	ld	a0,8(a5)
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	22c080e7          	jalr	556(ra) # 800022fc <_ZN9BufferCPP6getCntEv>
    800030d8:	fca04ae3          	bgtz	a0,800030ac <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    800030dc:	01093503          	ld	a0,16(s2)
    800030e0:	00002097          	auipc	ra,0x2
    800030e4:	cd8080e7          	jalr	-808(ra) # 80004db8 <_ZN9Semaphore6signalEv>
}
    800030e8:	02813083          	ld	ra,40(sp)
    800030ec:	02013403          	ld	s0,32(sp)
    800030f0:	01813483          	ld	s1,24(sp)
    800030f4:	01013903          	ld	s2,16(sp)
    800030f8:	00813983          	ld	s3,8(sp)
    800030fc:	00013a03          	ld	s4,0(sp)
    80003100:	03010113          	addi	sp,sp,48
    80003104:	00008067          	ret

0000000080003108 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80003108:	f8010113          	addi	sp,sp,-128
    8000310c:	06113c23          	sd	ra,120(sp)
    80003110:	06813823          	sd	s0,112(sp)
    80003114:	06913423          	sd	s1,104(sp)
    80003118:	07213023          	sd	s2,96(sp)
    8000311c:	05313c23          	sd	s3,88(sp)
    80003120:	05413823          	sd	s4,80(sp)
    80003124:	05513423          	sd	s5,72(sp)
    80003128:	05613023          	sd	s6,64(sp)
    8000312c:	03713c23          	sd	s7,56(sp)
    80003130:	03813823          	sd	s8,48(sp)
    80003134:	03913423          	sd	s9,40(sp)
    80003138:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000313c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003140:	00006517          	auipc	a0,0x6
    80003144:	12850513          	addi	a0,a0,296 # 80009268 <CONSOLE_STATUS+0x258>
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	904080e7          	jalr	-1788(ra) # 80001a4c <_Z11printStringPKc>
    getString(input, 30);
    80003150:	01e00593          	li	a1,30
    80003154:	f8040493          	addi	s1,s0,-128
    80003158:	00048513          	mv	a0,s1
    8000315c:	fffff097          	auipc	ra,0xfffff
    80003160:	96c080e7          	jalr	-1684(ra) # 80001ac8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003164:	00048513          	mv	a0,s1
    80003168:	fffff097          	auipc	ra,0xfffff
    8000316c:	a2c080e7          	jalr	-1492(ra) # 80001b94 <_Z11stringToIntPKc>
    80003170:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003174:	00006517          	auipc	a0,0x6
    80003178:	11450513          	addi	a0,a0,276 # 80009288 <CONSOLE_STATUS+0x278>
    8000317c:	fffff097          	auipc	ra,0xfffff
    80003180:	8d0080e7          	jalr	-1840(ra) # 80001a4c <_Z11printStringPKc>
    getString(input, 30);
    80003184:	01e00593          	li	a1,30
    80003188:	00048513          	mv	a0,s1
    8000318c:	fffff097          	auipc	ra,0xfffff
    80003190:	93c080e7          	jalr	-1732(ra) # 80001ac8 <_Z9getStringPci>
    n = stringToInt(input);
    80003194:	00048513          	mv	a0,s1
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	9fc080e7          	jalr	-1540(ra) # 80001b94 <_Z11stringToIntPKc>
    800031a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800031a4:	00006517          	auipc	a0,0x6
    800031a8:	10450513          	addi	a0,a0,260 # 800092a8 <CONSOLE_STATUS+0x298>
    800031ac:	fffff097          	auipc	ra,0xfffff
    800031b0:	8a0080e7          	jalr	-1888(ra) # 80001a4c <_Z11printStringPKc>
    800031b4:	00000613          	li	a2,0
    800031b8:	00a00593          	li	a1,10
    800031bc:	00090513          	mv	a0,s2
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	a24080e7          	jalr	-1500(ra) # 80001be4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800031c8:	00006517          	auipc	a0,0x6
    800031cc:	0f850513          	addi	a0,a0,248 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	87c080e7          	jalr	-1924(ra) # 80001a4c <_Z11printStringPKc>
    800031d8:	00000613          	li	a2,0
    800031dc:	00a00593          	li	a1,10
    800031e0:	00048513          	mv	a0,s1
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	a00080e7          	jalr	-1536(ra) # 80001be4 <_Z8printIntiii>
    printString(".\n");
    800031ec:	00006517          	auipc	a0,0x6
    800031f0:	0ec50513          	addi	a0,a0,236 # 800092d8 <CONSOLE_STATUS+0x2c8>
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	858080e7          	jalr	-1960(ra) # 80001a4c <_Z11printStringPKc>
    if(threadNum > n) {
    800031fc:	0324c463          	blt	s1,s2,80003224 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80003200:	03205c63          	blez	s2,80003238 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003204:	03800513          	li	a0,56
    80003208:	00002097          	auipc	ra,0x2
    8000320c:	984080e7          	jalr	-1660(ra) # 80004b8c <_Znwm>
    80003210:	00050a93          	mv	s5,a0
    80003214:	00048593          	mv	a1,s1
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	e74080e7          	jalr	-396(ra) # 8000208c <_ZN9BufferCPPC1Ei>
    80003220:	0300006f          	j	80003250 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003224:	00006517          	auipc	a0,0x6
    80003228:	0bc50513          	addi	a0,a0,188 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	820080e7          	jalr	-2016(ra) # 80001a4c <_Z11printStringPKc>
        return;
    80003234:	0140006f          	j	80003248 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003238:	00006517          	auipc	a0,0x6
    8000323c:	0e850513          	addi	a0,a0,232 # 80009320 <CONSOLE_STATUS+0x310>
    80003240:	fffff097          	auipc	ra,0xfffff
    80003244:	80c080e7          	jalr	-2036(ra) # 80001a4c <_Z11printStringPKc>
        return;
    80003248:	000b8113          	mv	sp,s7
    8000324c:	2400006f          	j	8000348c <_Z29producerConsumer_CPP_Sync_APIv+0x384>
    waitForAll = new Semaphore(0);
    80003250:	01000513          	li	a0,16
    80003254:	00002097          	auipc	ra,0x2
    80003258:	938080e7          	jalr	-1736(ra) # 80004b8c <_Znwm>
    8000325c:	00050493          	mv	s1,a0
    80003260:	00000593          	li	a1,0
    80003264:	00002097          	auipc	ra,0x2
    80003268:	af0080e7          	jalr	-1296(ra) # 80004d54 <_ZN9SemaphoreC1Ej>
    8000326c:	00008717          	auipc	a4,0x8
    80003270:	48c70713          	addi	a4,a4,1164 # 8000b6f8 <_ZN19ConsumerProducerCPP9threadEndE>
    80003274:	02973023          	sd	s1,32(a4)
    Thread* threads[threadNum];
    80003278:	00391793          	slli	a5,s2,0x3
    8000327c:	00f78793          	addi	a5,a5,15
    80003280:	ff07f793          	andi	a5,a5,-16
    80003284:	40f10133          	sub	sp,sp,a5
    80003288:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000328c:	0019069b          	addiw	a3,s2,1
    80003290:	00169793          	slli	a5,a3,0x1
    80003294:	00d787b3          	add	a5,a5,a3
    80003298:	00379793          	slli	a5,a5,0x3
    8000329c:	00f78793          	addi	a5,a5,15
    800032a0:	ff07f793          	andi	a5,a5,-16
    800032a4:	40f10133          	sub	sp,sp,a5
    800032a8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800032ac:	00191493          	slli	s1,s2,0x1
    800032b0:	012487b3          	add	a5,s1,s2
    800032b4:	00379793          	slli	a5,a5,0x3
    800032b8:	00fa07b3          	add	a5,s4,a5
    800032bc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800032c0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800032c4:	02073703          	ld	a4,32(a4)
    800032c8:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    800032cc:	01800513          	li	a0,24
    800032d0:	00002097          	auipc	ra,0x2
    800032d4:	8bc080e7          	jalr	-1860(ra) # 80004b8c <_Znwm>
    800032d8:	00050b13          	mv	s6,a0
    800032dc:	012484b3          	add	s1,s1,s2
    800032e0:	00349493          	slli	s1,s1,0x3
    800032e4:	009a04b3          	add	s1,s4,s1
    Consumer(thread_data* _td):Thread(), td(_td) {}
    800032e8:	00002097          	auipc	ra,0x2
    800032ec:	a28080e7          	jalr	-1496(ra) # 80004d10 <_ZN6ThreadC1Ev>
    800032f0:	00008797          	auipc	a5,0x8
    800032f4:	20078793          	addi	a5,a5,512 # 8000b4f0 <_ZTV8Consumer+0x10>
    800032f8:	00fb3023          	sd	a5,0(s6)
    800032fc:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80003300:	000b0513          	mv	a0,s6
    80003304:	00002097          	auipc	ra,0x2
    80003308:	990080e7          	jalr	-1648(ra) # 80004c94 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000330c:	00000493          	li	s1,0
    80003310:	0380006f          	j	80003348 <_Z29producerConsumer_CPP_Sync_APIv+0x240>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80003314:	00008797          	auipc	a5,0x8
    80003318:	1b478793          	addi	a5,a5,436 # 8000b4c8 <_ZTV8Producer+0x10>
    8000331c:	00fcb023          	sd	a5,0(s9)
    80003320:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80003324:	00349793          	slli	a5,s1,0x3
    80003328:	00f987b3          	add	a5,s3,a5
    8000332c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80003330:	00349793          	slli	a5,s1,0x3
    80003334:	00f987b3          	add	a5,s3,a5
    80003338:	0007b503          	ld	a0,0(a5)
    8000333c:	00002097          	auipc	ra,0x2
    80003340:	958080e7          	jalr	-1704(ra) # 80004c94 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003344:	0014849b          	addiw	s1,s1,1
    80003348:	0b24d063          	bge	s1,s2,800033e8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
        data[i].id = i;
    8000334c:	00149793          	slli	a5,s1,0x1
    80003350:	009787b3          	add	a5,a5,s1
    80003354:	00379793          	slli	a5,a5,0x3
    80003358:	00fa07b3          	add	a5,s4,a5
    8000335c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003360:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80003364:	00008717          	auipc	a4,0x8
    80003368:	3b473703          	ld	a4,948(a4) # 8000b718 <waitForAll>
    8000336c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80003370:	02905863          	blez	s1,800033a0 <_Z29producerConsumer_CPP_Sync_APIv+0x298>
            threads[i] = new Producer(data+i);
    80003374:	01800513          	li	a0,24
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	814080e7          	jalr	-2028(ra) # 80004b8c <_Znwm>
    80003380:	00050c93          	mv	s9,a0
    80003384:	00149c13          	slli	s8,s1,0x1
    80003388:	009c0c33          	add	s8,s8,s1
    8000338c:	003c1c13          	slli	s8,s8,0x3
    80003390:	018a0c33          	add	s8,s4,s8
    Producer(thread_data* _td):Thread(), td(_td) {}
    80003394:	00002097          	auipc	ra,0x2
    80003398:	97c080e7          	jalr	-1668(ra) # 80004d10 <_ZN6ThreadC1Ev>
    8000339c:	f79ff06f          	j	80003314 <_Z29producerConsumer_CPP_Sync_APIv+0x20c>
            threads[i] = new ProducerKeyboard(data+i);
    800033a0:	01800513          	li	a0,24
    800033a4:	00001097          	auipc	ra,0x1
    800033a8:	7e8080e7          	jalr	2024(ra) # 80004b8c <_Znwm>
    800033ac:	00050c93          	mv	s9,a0
    800033b0:	00149c13          	slli	s8,s1,0x1
    800033b4:	009c0c33          	add	s8,s8,s1
    800033b8:	003c1c13          	slli	s8,s8,0x3
    800033bc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800033c0:	00002097          	auipc	ra,0x2
    800033c4:	950080e7          	jalr	-1712(ra) # 80004d10 <_ZN6ThreadC1Ev>
    800033c8:	00008797          	auipc	a5,0x8
    800033cc:	0d878793          	addi	a5,a5,216 # 8000b4a0 <_ZTV16ProducerKeyboard+0x10>
    800033d0:	00fcb023          	sd	a5,0(s9)
    800033d4:	018cb823          	sd	s8,16(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800033d8:	00349793          	slli	a5,s1,0x3
    800033dc:	00f987b3          	add	a5,s3,a5
    800033e0:	0197b023          	sd	s9,0(a5)
    800033e4:	f4dff06f          	j	80003330 <_Z29producerConsumer_CPP_Sync_APIv+0x228>
    Thread::dispatch();
    800033e8:	00002097          	auipc	ra,0x2
    800033ec:	8d8080e7          	jalr	-1832(ra) # 80004cc0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800033f0:	00000493          	li	s1,0
    800033f4:	00994e63          	blt	s2,s1,80003410 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
        waitForAll->wait();
    800033f8:	00008517          	auipc	a0,0x8
    800033fc:	32053503          	ld	a0,800(a0) # 8000b718 <waitForAll>
    80003400:	00002097          	auipc	ra,0x2
    80003404:	98c080e7          	jalr	-1652(ra) # 80004d8c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003408:	0014849b          	addiw	s1,s1,1
    8000340c:	fe9ff06f          	j	800033f4 <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    for (int i = 0; i < threadNum; i++) {
    80003410:	00000493          	li	s1,0
    80003414:	0080006f          	j	8000341c <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    80003418:	0014849b          	addiw	s1,s1,1
    8000341c:	0324d263          	bge	s1,s2,80003440 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        delete threads[i];
    80003420:	00349793          	slli	a5,s1,0x3
    80003424:	00f987b3          	add	a5,s3,a5
    80003428:	0007b503          	ld	a0,0(a5)
    8000342c:	fe0506e3          	beqz	a0,80003418 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    80003430:	00053783          	ld	a5,0(a0)
    80003434:	0087b783          	ld	a5,8(a5)
    80003438:	000780e7          	jalr	a5
    8000343c:	fddff06f          	j	80003418 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    80003440:	000b0a63          	beqz	s6,80003454 <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    80003444:	000b3783          	ld	a5,0(s6)
    80003448:	0087b783          	ld	a5,8(a5)
    8000344c:	000b0513          	mv	a0,s6
    80003450:	000780e7          	jalr	a5
    delete waitForAll;
    80003454:	00008517          	auipc	a0,0x8
    80003458:	2c453503          	ld	a0,708(a0) # 8000b718 <waitForAll>
    8000345c:	00050863          	beqz	a0,8000346c <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    80003460:	00053783          	ld	a5,0(a0)
    80003464:	0087b783          	ld	a5,8(a5)
    80003468:	000780e7          	jalr	a5
    delete buffer;
    8000346c:	000a8e63          	beqz	s5,80003488 <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    80003470:	000a8513          	mv	a0,s5
    80003474:	fffff097          	auipc	ra,0xfffff
    80003478:	f10080e7          	jalr	-240(ra) # 80002384 <_ZN9BufferCPPD1Ev>
    8000347c:	000a8513          	mv	a0,s5
    80003480:	00001097          	auipc	ra,0x1
    80003484:	734080e7          	jalr	1844(ra) # 80004bb4 <_ZdlPv>
    80003488:	000b8113          	mv	sp,s7

}
    8000348c:	f8040113          	addi	sp,s0,-128
    80003490:	07813083          	ld	ra,120(sp)
    80003494:	07013403          	ld	s0,112(sp)
    80003498:	06813483          	ld	s1,104(sp)
    8000349c:	06013903          	ld	s2,96(sp)
    800034a0:	05813983          	ld	s3,88(sp)
    800034a4:	05013a03          	ld	s4,80(sp)
    800034a8:	04813a83          	ld	s5,72(sp)
    800034ac:	04013b03          	ld	s6,64(sp)
    800034b0:	03813b83          	ld	s7,56(sp)
    800034b4:	03013c03          	ld	s8,48(sp)
    800034b8:	02813c83          	ld	s9,40(sp)
    800034bc:	08010113          	addi	sp,sp,128
    800034c0:	00008067          	ret
    800034c4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800034c8:	000a8513          	mv	a0,s5
    800034cc:	00001097          	auipc	ra,0x1
    800034d0:	6e8080e7          	jalr	1768(ra) # 80004bb4 <_ZdlPv>
    800034d4:	00048513          	mv	a0,s1
    800034d8:	00009097          	auipc	ra,0x9
    800034dc:	370080e7          	jalr	880(ra) # 8000c848 <_Unwind_Resume>
    800034e0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800034e4:	00048513          	mv	a0,s1
    800034e8:	00001097          	auipc	ra,0x1
    800034ec:	6cc080e7          	jalr	1740(ra) # 80004bb4 <_ZdlPv>
    800034f0:	00090513          	mv	a0,s2
    800034f4:	00009097          	auipc	ra,0x9
    800034f8:	354080e7          	jalr	852(ra) # 8000c848 <_Unwind_Resume>
    800034fc:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    80003500:	000b0513          	mv	a0,s6
    80003504:	00001097          	auipc	ra,0x1
    80003508:	6b0080e7          	jalr	1712(ra) # 80004bb4 <_ZdlPv>
    8000350c:	00048513          	mv	a0,s1
    80003510:	00009097          	auipc	ra,0x9
    80003514:	338080e7          	jalr	824(ra) # 8000c848 <_Unwind_Resume>
    80003518:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    8000351c:	000c8513          	mv	a0,s9
    80003520:	00001097          	auipc	ra,0x1
    80003524:	694080e7          	jalr	1684(ra) # 80004bb4 <_ZdlPv>
    80003528:	00048513          	mv	a0,s1
    8000352c:	00009097          	auipc	ra,0x9
    80003530:	31c080e7          	jalr	796(ra) # 8000c848 <_Unwind_Resume>
    80003534:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80003538:	000c8513          	mv	a0,s9
    8000353c:	00001097          	auipc	ra,0x1
    80003540:	678080e7          	jalr	1656(ra) # 80004bb4 <_ZdlPv>
    80003544:	00048513          	mv	a0,s1
    80003548:	00009097          	auipc	ra,0x9
    8000354c:	300080e7          	jalr	768(ra) # 8000c848 <_Unwind_Resume>

0000000080003550 <_Z12testSleepingv>:

void testSleeping() {
    80003550:	fc010113          	addi	sp,sp,-64
    80003554:	02113c23          	sd	ra,56(sp)
    80003558:	02813823          	sd	s0,48(sp)
    8000355c:	02913423          	sd	s1,40(sp)
    80003560:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80003564:	00a00793          	li	a5,10
    80003568:	fcf43823          	sd	a5,-48(s0)
    8000356c:	01400793          	li	a5,20
    80003570:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80003574:	00000493          	li	s1,0
    80003578:	02c0006f          	j	800035a4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000357c:	00349793          	slli	a5,s1,0x3
    80003580:	fd040613          	addi	a2,s0,-48
    80003584:	00f60633          	add	a2,a2,a5
    80003588:	fffff597          	auipc	a1,0xfffff
    8000358c:	efc58593          	addi	a1,a1,-260 # 80002484 <_Z9sleepyRunPv>
    80003590:	fc040513          	addi	a0,s0,-64
    80003594:	00f50533          	add	a0,a0,a5
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	d04080e7          	jalr	-764(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800035a0:	0014849b          	addiw	s1,s1,1
    800035a4:	00100793          	li	a5,1
    800035a8:	fc97dae3          	bge	a5,s1,8000357c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800035ac:	00008797          	auipc	a5,0x8
    800035b0:	1547c783          	lbu	a5,340(a5) # 8000b700 <finished>
    800035b4:	fe078ce3          	beqz	a5,800035ac <_Z12testSleepingv+0x5c>
    800035b8:	00008797          	auipc	a5,0x8
    800035bc:	1497c783          	lbu	a5,329(a5) # 8000b701 <finished+0x1>
    800035c0:	fe0786e3          	beqz	a5,800035ac <_Z12testSleepingv+0x5c>
}
    800035c4:	03813083          	ld	ra,56(sp)
    800035c8:	03013403          	ld	s0,48(sp)
    800035cc:	02813483          	ld	s1,40(sp)
    800035d0:	04010113          	addi	sp,sp,64
    800035d4:	00008067          	ret

00000000800035d8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    800035d8:	f8010113          	addi	sp,sp,-128
    800035dc:	06113c23          	sd	ra,120(sp)
    800035e0:	06813823          	sd	s0,112(sp)
    800035e4:	06913423          	sd	s1,104(sp)
    800035e8:	07213023          	sd	s2,96(sp)
    800035ec:	05313c23          	sd	s3,88(sp)
    800035f0:	05413823          	sd	s4,80(sp)
    800035f4:	05513423          	sd	s5,72(sp)
    800035f8:	05613023          	sd	s6,64(sp)
    800035fc:	03713c23          	sd	s7,56(sp)
    80003600:	03813823          	sd	s8,48(sp)
    80003604:	03913423          	sd	s9,40(sp)
    80003608:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    8000360c:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80003610:	00006517          	auipc	a0,0x6
    80003614:	c5850513          	addi	a0,a0,-936 # 80009268 <CONSOLE_STATUS+0x258>
    80003618:	ffffe097          	auipc	ra,0xffffe
    8000361c:	434080e7          	jalr	1076(ra) # 80001a4c <_Z11printStringPKc>
        getString(input, 30);
    80003620:	01e00593          	li	a1,30
    80003624:	f8040493          	addi	s1,s0,-128
    80003628:	00048513          	mv	a0,s1
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	49c080e7          	jalr	1180(ra) # 80001ac8 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80003634:	00048513          	mv	a0,s1
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	55c080e7          	jalr	1372(ra) # 80001b94 <_Z11stringToIntPKc>
    80003640:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80003644:	00006517          	auipc	a0,0x6
    80003648:	c4450513          	addi	a0,a0,-956 # 80009288 <CONSOLE_STATUS+0x278>
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	400080e7          	jalr	1024(ra) # 80001a4c <_Z11printStringPKc>
        getString(input, 30);
    80003654:	01e00593          	li	a1,30
    80003658:	00048513          	mv	a0,s1
    8000365c:	ffffe097          	auipc	ra,0xffffe
    80003660:	46c080e7          	jalr	1132(ra) # 80001ac8 <_Z9getStringPci>
        n = stringToInt(input);
    80003664:	00048513          	mv	a0,s1
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	52c080e7          	jalr	1324(ra) # 80001b94 <_Z11stringToIntPKc>
    80003670:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80003674:	00006517          	auipc	a0,0x6
    80003678:	c3450513          	addi	a0,a0,-972 # 800092a8 <CONSOLE_STATUS+0x298>
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	3d0080e7          	jalr	976(ra) # 80001a4c <_Z11printStringPKc>
    80003684:	00000613          	li	a2,0
    80003688:	00a00593          	li	a1,10
    8000368c:	00098513          	mv	a0,s3
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	554080e7          	jalr	1364(ra) # 80001be4 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80003698:	00006517          	auipc	a0,0x6
    8000369c:	c2850513          	addi	a0,a0,-984 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	3ac080e7          	jalr	940(ra) # 80001a4c <_Z11printStringPKc>
    800036a8:	00000613          	li	a2,0
    800036ac:	00a00593          	li	a1,10
    800036b0:	00048513          	mv	a0,s1
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	530080e7          	jalr	1328(ra) # 80001be4 <_Z8printIntiii>
        printString(".\n");
    800036bc:	00006517          	auipc	a0,0x6
    800036c0:	c1c50513          	addi	a0,a0,-996 # 800092d8 <CONSOLE_STATUS+0x2c8>
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	388080e7          	jalr	904(ra) # 80001a4c <_Z11printStringPKc>
        if(threadNum > n) {
    800036cc:	0334c463          	blt	s1,s3,800036f4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    800036d0:	03305c63          	blez	s3,80003708 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    800036d4:	03800513          	li	a0,56
    800036d8:	00001097          	auipc	ra,0x1
    800036dc:	4b4080e7          	jalr	1204(ra) # 80004b8c <_Znwm>
    800036e0:	00050a93          	mv	s5,a0
    800036e4:	00048593          	mv	a1,s1
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	9a4080e7          	jalr	-1628(ra) # 8000208c <_ZN9BufferCPPC1Ei>
    800036f0:	0300006f          	j	80003720 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800036f4:	00006517          	auipc	a0,0x6
    800036f8:	bec50513          	addi	a0,a0,-1044 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	350080e7          	jalr	848(ra) # 80001a4c <_Z11printStringPKc>
            return;
    80003704:	0140006f          	j	80003718 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003708:	00006517          	auipc	a0,0x6
    8000370c:	c1850513          	addi	a0,a0,-1000 # 80009320 <CONSOLE_STATUS+0x310>
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	33c080e7          	jalr	828(ra) # 80001a4c <_Z11printStringPKc>
            return;
    80003718:	000c0113          	mv	sp,s8
    8000371c:	21c0006f          	j	80003938 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80003720:	01000513          	li	a0,16
    80003724:	00001097          	auipc	ra,0x1
    80003728:	468080e7          	jalr	1128(ra) # 80004b8c <_Znwm>
    8000372c:	00050493          	mv	s1,a0
    80003730:	00000593          	li	a1,0
    80003734:	00001097          	auipc	ra,0x1
    80003738:	620080e7          	jalr	1568(ra) # 80004d54 <_ZN9SemaphoreC1Ej>
    8000373c:	00008717          	auipc	a4,0x8
    80003740:	fbc70713          	addi	a4,a4,-68 # 8000b6f8 <_ZN19ConsumerProducerCPP9threadEndE>
    80003744:	02973423          	sd	s1,40(a4)
        Thread *producers[threadNum];
    80003748:	00399793          	slli	a5,s3,0x3
    8000374c:	00f78793          	addi	a5,a5,15
    80003750:	ff07f793          	andi	a5,a5,-16
    80003754:	40f10133          	sub	sp,sp,a5
    80003758:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    8000375c:	0019869b          	addiw	a3,s3,1
    80003760:	00169793          	slli	a5,a3,0x1
    80003764:	00d787b3          	add	a5,a5,a3
    80003768:	00379793          	slli	a5,a5,0x3
    8000376c:	00f78793          	addi	a5,a5,15
    80003770:	ff07f793          	andi	a5,a5,-16
    80003774:	40f10133          	sub	sp,sp,a5
    80003778:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    8000377c:	00199493          	slli	s1,s3,0x1
    80003780:	013484b3          	add	s1,s1,s3
    80003784:	00349493          	slli	s1,s1,0x3
    80003788:	009b04b3          	add	s1,s6,s1
    8000378c:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80003790:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80003794:	02873783          	ld	a5,40(a4)
    80003798:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000379c:	01800513          	li	a0,24
    800037a0:	00001097          	auipc	ra,0x1
    800037a4:	3ec080e7          	jalr	1004(ra) # 80004b8c <_Znwm>
    800037a8:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    800037ac:	00001097          	auipc	ra,0x1
    800037b0:	564080e7          	jalr	1380(ra) # 80004d10 <_ZN6ThreadC1Ev>
    800037b4:	00008797          	auipc	a5,0x8
    800037b8:	db478793          	addi	a5,a5,-588 # 8000b568 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800037bc:	00fbb023          	sd	a5,0(s7)
    800037c0:	009bb823          	sd	s1,16(s7)
        consumer->start();
    800037c4:	000b8513          	mv	a0,s7
    800037c8:	00001097          	auipc	ra,0x1
    800037cc:	4cc080e7          	jalr	1228(ra) # 80004c94 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    800037d0:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    800037d4:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    800037d8:	00008797          	auipc	a5,0x8
    800037dc:	f487b783          	ld	a5,-184(a5) # 8000b720 <_ZN19ConsumerProducerCPP10waitForAllE>
    800037e0:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800037e4:	01800513          	li	a0,24
    800037e8:	00001097          	auipc	ra,0x1
    800037ec:	3a4080e7          	jalr	932(ra) # 80004b8c <_Znwm>
    800037f0:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800037f4:	00001097          	auipc	ra,0x1
    800037f8:	51c080e7          	jalr	1308(ra) # 80004d10 <_ZN6ThreadC1Ev>
    800037fc:	00008797          	auipc	a5,0x8
    80003800:	d1c78793          	addi	a5,a5,-740 # 8000b518 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003804:	00f4b023          	sd	a5,0(s1)
    80003808:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    8000380c:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80003810:	00048513          	mv	a0,s1
    80003814:	00001097          	auipc	ra,0x1
    80003818:	480080e7          	jalr	1152(ra) # 80004c94 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    8000381c:	00100913          	li	s2,1
    80003820:	0300006f          	j	80003850 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80003824:	00008797          	auipc	a5,0x8
    80003828:	d1c78793          	addi	a5,a5,-740 # 8000b540 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    8000382c:	00fcb023          	sd	a5,0(s9)
    80003830:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80003834:	00391793          	slli	a5,s2,0x3
    80003838:	00fa07b3          	add	a5,s4,a5
    8000383c:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80003840:	000c8513          	mv	a0,s9
    80003844:	00001097          	auipc	ra,0x1
    80003848:	450080e7          	jalr	1104(ra) # 80004c94 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    8000384c:	0019091b          	addiw	s2,s2,1
    80003850:	05395263          	bge	s2,s3,80003894 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80003854:	00191493          	slli	s1,s2,0x1
    80003858:	012484b3          	add	s1,s1,s2
    8000385c:	00349493          	slli	s1,s1,0x3
    80003860:	009b04b3          	add	s1,s6,s1
    80003864:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80003868:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    8000386c:	00008797          	auipc	a5,0x8
    80003870:	eb47b783          	ld	a5,-332(a5) # 8000b720 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003874:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80003878:	01800513          	li	a0,24
    8000387c:	00001097          	auipc	ra,0x1
    80003880:	310080e7          	jalr	784(ra) # 80004b8c <_Znwm>
    80003884:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80003888:	00001097          	auipc	ra,0x1
    8000388c:	488080e7          	jalr	1160(ra) # 80004d10 <_ZN6ThreadC1Ev>
    80003890:	f95ff06f          	j	80003824 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80003894:	00001097          	auipc	ra,0x1
    80003898:	42c080e7          	jalr	1068(ra) # 80004cc0 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    8000389c:	00000493          	li	s1,0
    800038a0:	0099ce63          	blt	s3,s1,800038bc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    800038a4:	00008517          	auipc	a0,0x8
    800038a8:	e7c53503          	ld	a0,-388(a0) # 8000b720 <_ZN19ConsumerProducerCPP10waitForAllE>
    800038ac:	00001097          	auipc	ra,0x1
    800038b0:	4e0080e7          	jalr	1248(ra) # 80004d8c <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    800038b4:	0014849b          	addiw	s1,s1,1
    800038b8:	fe9ff06f          	j	800038a0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    800038bc:	00008517          	auipc	a0,0x8
    800038c0:	e6453503          	ld	a0,-412(a0) # 8000b720 <_ZN19ConsumerProducerCPP10waitForAllE>
    800038c4:	00050863          	beqz	a0,800038d4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    800038c8:	00053783          	ld	a5,0(a0)
    800038cc:	0087b783          	ld	a5,8(a5)
    800038d0:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    800038d4:	00000493          	li	s1,0
    800038d8:	0080006f          	j	800038e0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    800038dc:	0014849b          	addiw	s1,s1,1
    800038e0:	0334d263          	bge	s1,s3,80003904 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    800038e4:	00349793          	slli	a5,s1,0x3
    800038e8:	00fa07b3          	add	a5,s4,a5
    800038ec:	0007b503          	ld	a0,0(a5)
    800038f0:	fe0506e3          	beqz	a0,800038dc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    800038f4:	00053783          	ld	a5,0(a0)
    800038f8:	0087b783          	ld	a5,8(a5)
    800038fc:	000780e7          	jalr	a5
    80003900:	fddff06f          	j	800038dc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80003904:	000b8a63          	beqz	s7,80003918 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80003908:	000bb783          	ld	a5,0(s7)
    8000390c:	0087b783          	ld	a5,8(a5)
    80003910:	000b8513          	mv	a0,s7
    80003914:	000780e7          	jalr	a5
        delete buffer;
    80003918:	000a8e63          	beqz	s5,80003934 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    8000391c:	000a8513          	mv	a0,s5
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	a64080e7          	jalr	-1436(ra) # 80002384 <_ZN9BufferCPPD1Ev>
    80003928:	000a8513          	mv	a0,s5
    8000392c:	00001097          	auipc	ra,0x1
    80003930:	288080e7          	jalr	648(ra) # 80004bb4 <_ZdlPv>
    80003934:	000c0113          	mv	sp,s8
    }
    80003938:	f8040113          	addi	sp,s0,-128
    8000393c:	07813083          	ld	ra,120(sp)
    80003940:	07013403          	ld	s0,112(sp)
    80003944:	06813483          	ld	s1,104(sp)
    80003948:	06013903          	ld	s2,96(sp)
    8000394c:	05813983          	ld	s3,88(sp)
    80003950:	05013a03          	ld	s4,80(sp)
    80003954:	04813a83          	ld	s5,72(sp)
    80003958:	04013b03          	ld	s6,64(sp)
    8000395c:	03813b83          	ld	s7,56(sp)
    80003960:	03013c03          	ld	s8,48(sp)
    80003964:	02813c83          	ld	s9,40(sp)
    80003968:	08010113          	addi	sp,sp,128
    8000396c:	00008067          	ret
    80003970:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80003974:	000a8513          	mv	a0,s5
    80003978:	00001097          	auipc	ra,0x1
    8000397c:	23c080e7          	jalr	572(ra) # 80004bb4 <_ZdlPv>
    80003980:	00048513          	mv	a0,s1
    80003984:	00009097          	auipc	ra,0x9
    80003988:	ec4080e7          	jalr	-316(ra) # 8000c848 <_Unwind_Resume>
    8000398c:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80003990:	00048513          	mv	a0,s1
    80003994:	00001097          	auipc	ra,0x1
    80003998:	220080e7          	jalr	544(ra) # 80004bb4 <_ZdlPv>
    8000399c:	00090513          	mv	a0,s2
    800039a0:	00009097          	auipc	ra,0x9
    800039a4:	ea8080e7          	jalr	-344(ra) # 8000c848 <_Unwind_Resume>
    800039a8:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    800039ac:	000b8513          	mv	a0,s7
    800039b0:	00001097          	auipc	ra,0x1
    800039b4:	204080e7          	jalr	516(ra) # 80004bb4 <_ZdlPv>
    800039b8:	00048513          	mv	a0,s1
    800039bc:	00009097          	auipc	ra,0x9
    800039c0:	e8c080e7          	jalr	-372(ra) # 8000c848 <_Unwind_Resume>
    800039c4:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800039c8:	00048513          	mv	a0,s1
    800039cc:	00001097          	auipc	ra,0x1
    800039d0:	1e8080e7          	jalr	488(ra) # 80004bb4 <_ZdlPv>
    800039d4:	00090513          	mv	a0,s2
    800039d8:	00009097          	auipc	ra,0x9
    800039dc:	e70080e7          	jalr	-400(ra) # 8000c848 <_Unwind_Resume>
    800039e0:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    800039e4:	000c8513          	mv	a0,s9
    800039e8:	00001097          	auipc	ra,0x1
    800039ec:	1cc080e7          	jalr	460(ra) # 80004bb4 <_ZdlPv>
    800039f0:	00048513          	mv	a0,s1
    800039f4:	00009097          	auipc	ra,0x9
    800039f8:	e54080e7          	jalr	-428(ra) # 8000c848 <_Unwind_Resume>

00000000800039fc <_Z13KlasaMemorijav>:
int KlasaMemorija() {
    800039fc:	fd010113          	addi	sp,sp,-48
    80003a00:	02113423          	sd	ra,40(sp)
    80003a04:	02813023          	sd	s0,32(sp)
    80003a08:	00913c23          	sd	s1,24(sp)
    80003a0c:	01213823          	sd	s2,16(sp)
    80003a10:	01313423          	sd	s3,8(sp)
    80003a14:	01413023          	sd	s4,0(sp)
    80003a18:	03010413          	addi	s0,sp,48
    Memorija::Print();
    80003a1c:	00002097          	auipc	ra,0x2
    80003a20:	b58080e7          	jalr	-1192(ra) # 80005574 <_ZN8Memorija5PrintEv>
    void* b=Memorija::alokacija(100);
    80003a24:	06400513          	li	a0,100
    80003a28:	00002097          	auipc	ra,0x2
    80003a2c:	910080e7          	jalr	-1776(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80003a30:	00050a13          	mv	s4,a0
    Memorija::Print();
    80003a34:	00002097          	auipc	ra,0x2
    80003a38:	b40080e7          	jalr	-1216(ra) # 80005574 <_ZN8Memorija5PrintEv>
    void* c=Memorija::alokacija(20);
    80003a3c:	01400513          	li	a0,20
    80003a40:	00002097          	auipc	ra,0x2
    80003a44:	8f8080e7          	jalr	-1800(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80003a48:	00050993          	mv	s3,a0
    Memorija::Print();
    80003a4c:	00002097          	auipc	ra,0x2
    80003a50:	b28080e7          	jalr	-1240(ra) # 80005574 <_ZN8Memorija5PrintEv>
    void* d=Memorija::alokacija(50);
    80003a54:	03200513          	li	a0,50
    80003a58:	00002097          	auipc	ra,0x2
    80003a5c:	8e0080e7          	jalr	-1824(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80003a60:	00050913          	mv	s2,a0
    Memorija::Print();
    80003a64:	00002097          	auipc	ra,0x2
    80003a68:	b10080e7          	jalr	-1264(ra) # 80005574 <_ZN8Memorija5PrintEv>
    void* e=Memorija::alokacija(50);
    80003a6c:	03200513          	li	a0,50
    80003a70:	00002097          	auipc	ra,0x2
    80003a74:	8c8080e7          	jalr	-1848(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80003a78:	00050493          	mv	s1,a0
    Memorija::Print();
    80003a7c:	00002097          	auipc	ra,0x2
    80003a80:	af8080e7          	jalr	-1288(ra) # 80005574 <_ZN8Memorija5PrintEv>
    print(Memorija::oslobadjanje(c));
    80003a84:	00098513          	mv	a0,s3
    80003a88:	00002097          	auipc	ra,0x2
    80003a8c:	9d0080e7          	jalr	-1584(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	5ec080e7          	jalr	1516(ra) # 8000607c <_Z5printi>
    Memorija::Print();
    80003a98:	00002097          	auipc	ra,0x2
    80003a9c:	adc080e7          	jalr	-1316(ra) # 80005574 <_ZN8Memorija5PrintEv>
    print(Memorija::oslobadjanje(e));
    80003aa0:	00048513          	mv	a0,s1
    80003aa4:	00002097          	auipc	ra,0x2
    80003aa8:	9b4080e7          	jalr	-1612(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
    80003aac:	00002097          	auipc	ra,0x2
    80003ab0:	5d0080e7          	jalr	1488(ra) # 8000607c <_Z5printi>
    Memorija::Print();
    80003ab4:	00002097          	auipc	ra,0x2
    80003ab8:	ac0080e7          	jalr	-1344(ra) # 80005574 <_ZN8Memorija5PrintEv>
    print(Memorija::oslobadjanje(d));
    80003abc:	00090513          	mv	a0,s2
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	998080e7          	jalr	-1640(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	5b4080e7          	jalr	1460(ra) # 8000607c <_Z5printi>
    Memorija::Print();
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	aa4080e7          	jalr	-1372(ra) # 80005574 <_ZN8Memorija5PrintEv>
    print(Memorija::oslobadjanje(b));
    80003ad8:	000a0513          	mv	a0,s4
    80003adc:	00002097          	auipc	ra,0x2
    80003ae0:	97c080e7          	jalr	-1668(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	598080e7          	jalr	1432(ra) # 8000607c <_Z5printi>
    Memorija::Print();
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	a88080e7          	jalr	-1400(ra) # 80005574 <_ZN8Memorija5PrintEv>
    putc('-');
    80003af4:	02d00513          	li	a0,45
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	958080e7          	jalr	-1704(ra) # 80001450 <_Z4putcc>
    putc('\n');
    80003b00:	00a00513          	li	a0,10
    80003b04:	ffffe097          	auipc	ra,0xffffe
    80003b08:	94c080e7          	jalr	-1716(ra) # 80001450 <_Z4putcc>
    print((size_t)HEAP_START_ADDR);
    80003b0c:	00008797          	auipc	a5,0x8
    80003b10:	b447b783          	ld	a5,-1212(a5) # 8000b650 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003b14:	0007a503          	lw	a0,0(a5)
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	564080e7          	jalr	1380(ra) # 8000607c <_Z5printi>
    print((size_t)b);
    80003b20:	000a051b          	sext.w	a0,s4
    80003b24:	00002097          	auipc	ra,0x2
    80003b28:	558080e7          	jalr	1368(ra) # 8000607c <_Z5printi>
    print((size_t)c);
    80003b2c:	0009851b          	sext.w	a0,s3
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	54c080e7          	jalr	1356(ra) # 8000607c <_Z5printi>
    print((size_t)d);
    80003b38:	0009051b          	sext.w	a0,s2
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	540080e7          	jalr	1344(ra) # 8000607c <_Z5printi>
    print((size_t)e);
    80003b44:	0004851b          	sext.w	a0,s1
    80003b48:	00002097          	auipc	ra,0x2
    80003b4c:	534080e7          	jalr	1332(ra) # 8000607c <_Z5printi>
}
    80003b50:	00000513          	li	a0,0
    80003b54:	02813083          	ld	ra,40(sp)
    80003b58:	02013403          	ld	s0,32(sp)
    80003b5c:	01813483          	ld	s1,24(sp)
    80003b60:	01013903          	ld	s2,16(sp)
    80003b64:	00813983          	ld	s3,8(sp)
    80003b68:	00013a03          	ld	s4,0(sp)
    80003b6c:	03010113          	addi	sp,sp,48
    80003b70:	00008067          	ret

0000000080003b74 <_Z16PrekidnaMemorijav>:
int PrekidnaMemorija(){
    80003b74:	fd010113          	addi	sp,sp,-48
    80003b78:	02113423          	sd	ra,40(sp)
    80003b7c:	02813023          	sd	s0,32(sp)
    80003b80:	00913c23          	sd	s1,24(sp)
    80003b84:	01213823          	sd	s2,16(sp)
    80003b88:	01313423          	sd	s3,8(sp)
    80003b8c:	03010413          	addi	s0,sp,48
    Memorija::Print();
    80003b90:	00002097          	auipc	ra,0x2
    80003b94:	9e4080e7          	jalr	-1564(ra) # 80005574 <_ZN8Memorija5PrintEv>
    putc('\n');
    80003b98:	00a00513          	li	a0,10
    80003b9c:	ffffe097          	auipc	ra,0xffffe
    80003ba0:	8b4080e7          	jalr	-1868(ra) # 80001450 <_Z4putcc>
    void* b=mem_alloc(20);
    80003ba4:	01400513          	li	a0,20
    80003ba8:	ffffd097          	auipc	ra,0xffffd
    80003bac:	698080e7          	jalr	1688(ra) # 80001240 <_Z9mem_allocm>
    80003bb0:	00050913          	mv	s2,a0
    Memorija::Print();
    80003bb4:	00002097          	auipc	ra,0x2
    80003bb8:	9c0080e7          	jalr	-1600(ra) # 80005574 <_ZN8Memorija5PrintEv>
    void* c=mem_alloc(20);
    80003bbc:	01400513          	li	a0,20
    80003bc0:	ffffd097          	auipc	ra,0xffffd
    80003bc4:	680080e7          	jalr	1664(ra) # 80001240 <_Z9mem_allocm>
    80003bc8:	00050493          	mv	s1,a0
    Memorija::Print();
    80003bcc:	00002097          	auipc	ra,0x2
    80003bd0:	9a8080e7          	jalr	-1624(ra) # 80005574 <_ZN8Memorija5PrintEv>
    mem_alloc(54);
    80003bd4:	03600513          	li	a0,54
    80003bd8:	ffffd097          	auipc	ra,0xffffd
    80003bdc:	668080e7          	jalr	1640(ra) # 80001240 <_Z9mem_allocm>
    Memorija::Print();
    80003be0:	00002097          	auipc	ra,0x2
    80003be4:	994080e7          	jalr	-1644(ra) # 80005574 <_ZN8Memorija5PrintEv>
    mem_free(c);
    80003be8:	00048513          	mv	a0,s1
    80003bec:	ffffd097          	auipc	ra,0xffffd
    80003bf0:	680080e7          	jalr	1664(ra) # 8000126c <_Z8mem_freePv>
    Memorija::Print();
    80003bf4:	00002097          	auipc	ra,0x2
    80003bf8:	980080e7          	jalr	-1664(ra) # 80005574 <_ZN8Memorija5PrintEv>
    mem_free(b);
    80003bfc:	00090513          	mv	a0,s2
    80003c00:	ffffd097          	auipc	ra,0xffffd
    80003c04:	66c080e7          	jalr	1644(ra) # 8000126c <_Z8mem_freePv>
    print((size_t)b - (size_t)HEAP_START_ADDR);
    80003c08:	00008997          	auipc	s3,0x8
    80003c0c:	a489b983          	ld	s3,-1464(s3) # 8000b650 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003c10:	0009b503          	ld	a0,0(s3)
    80003c14:	40a9053b          	subw	a0,s2,a0
    80003c18:	00002097          	auipc	ra,0x2
    80003c1c:	464080e7          	jalr	1124(ra) # 8000607c <_Z5printi>
    print((size_t)c - (size_t)HEAP_START_ADDR);
    80003c20:	0009b503          	ld	a0,0(s3)
    80003c24:	40a4853b          	subw	a0,s1,a0
    80003c28:	00002097          	auipc	ra,0x2
    80003c2c:	454080e7          	jalr	1108(ra) # 8000607c <_Z5printi>
}
    80003c30:	00000513          	li	a0,0
    80003c34:	02813083          	ld	ra,40(sp)
    80003c38:	02013403          	ld	s0,32(sp)
    80003c3c:	01813483          	ld	s1,24(sp)
    80003c40:	01013903          	ld	s2,16(sp)
    80003c44:	00813983          	ld	s3,8(sp)
    80003c48:	03010113          	addi	sp,sp,48
    80003c4c:	00008067          	ret

0000000080003c50 <_Z13SchedulerTestv>:
int SchedulerTest(){
    80003c50:	fc010113          	addi	sp,sp,-64
    80003c54:	02113c23          	sd	ra,56(sp)
    80003c58:	02813823          	sd	s0,48(sp)
    80003c5c:	02913423          	sd	s1,40(sp)
    80003c60:	03213023          	sd	s2,32(sp)
    80003c64:	01313c23          	sd	s3,24(sp)
    80003c68:	01413823          	sd	s4,16(sp)
    80003c6c:	01513423          	sd	s5,8(sp)
    80003c70:	04010413          	addi	s0,sp,64
    };

    Nit(){}

    static void *operator new(uint64 n){
        return Memorija::alokacija(n);
    80003c74:	04800513          	li	a0,72
    80003c78:	00001097          	auipc	ra,0x1
    80003c7c:	6c0080e7          	jalr	1728(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80003c80:	00050913          	mv	s2,a0
    Nit(){}
    80003c84:	00052023          	sw	zero,0(a0)
    80003c88:	00008497          	auipc	s1,0x8
    80003c8c:	a004b483          	ld	s1,-1536(s1) # 8000b688 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003c90:	0004a783          	lw	a5,0(s1)
    80003c94:	0017871b          	addiw	a4,a5,1
    80003c98:	00e4a023          	sw	a4,0(s1)
    80003c9c:	00f52223          	sw	a5,4(a0)
    80003ca0:	00050c23          	sb	zero,24(a0)
        return Memorija::alokacija(n);
    80003ca4:	04800513          	li	a0,72
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	690080e7          	jalr	1680(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80003cb0:	00050a93          	mv	s5,a0
    Nit(){}
    80003cb4:	00052023          	sw	zero,0(a0)
    80003cb8:	0004a783          	lw	a5,0(s1)
    80003cbc:	0017871b          	addiw	a4,a5,1
    80003cc0:	00e4a023          	sw	a4,0(s1)
    80003cc4:	00f52223          	sw	a5,4(a0)
    80003cc8:	00050c23          	sb	zero,24(a0)
        return Memorija::alokacija(n);
    80003ccc:	04800513          	li	a0,72
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	668080e7          	jalr	1640(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80003cd8:	00050a13          	mv	s4,a0
    Nit(){}
    80003cdc:	00052023          	sw	zero,0(a0)
    80003ce0:	0004a783          	lw	a5,0(s1)
    80003ce4:	0017871b          	addiw	a4,a5,1
    80003ce8:	00e4a023          	sw	a4,0(s1)
    80003cec:	00f52223          	sw	a5,4(a0)
    80003cf0:	00050c23          	sb	zero,24(a0)
        return Memorija::alokacija(n);
    80003cf4:	04800513          	li	a0,72
    80003cf8:	00001097          	auipc	ra,0x1
    80003cfc:	640080e7          	jalr	1600(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80003d00:	00050993          	mv	s3,a0
    Nit(){}
    80003d04:	00052023          	sw	zero,0(a0)
    80003d08:	0004a783          	lw	a5,0(s1)
    80003d0c:	0017871b          	addiw	a4,a5,1
    80003d10:	00e4a023          	sw	a4,0(s1)
    80003d14:	00f52223          	sw	a5,4(a0)
    80003d18:	00050c23          	sb	zero,24(a0)
    Scheduler::put(t1);
    80003d1c:	00090513          	mv	a0,s2
    80003d20:	00002097          	auipc	ra,0x2
    80003d24:	980080e7          	jalr	-1664(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>
    Scheduler::Print();
    80003d28:	00002097          	auipc	ra,0x2
    80003d2c:	a0c080e7          	jalr	-1524(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::put(t2);
    80003d30:	000a8513          	mv	a0,s5
    80003d34:	00002097          	auipc	ra,0x2
    80003d38:	96c080e7          	jalr	-1684(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>
    Scheduler::Print();
    80003d3c:	00002097          	auipc	ra,0x2
    80003d40:	9f8080e7          	jalr	-1544(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::put(t3);
    80003d44:	000a0513          	mv	a0,s4
    80003d48:	00002097          	auipc	ra,0x2
    80003d4c:	958080e7          	jalr	-1704(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>
    Scheduler::Print();
    80003d50:	00002097          	auipc	ra,0x2
    80003d54:	9e4080e7          	jalr	-1564(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::put(t4);
    80003d58:	00098513          	mv	a0,s3
    80003d5c:	00002097          	auipc	ra,0x2
    80003d60:	944080e7          	jalr	-1724(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>
    Scheduler::Print();
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	9d0080e7          	jalr	-1584(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::get();
    80003d6c:	00002097          	auipc	ra,0x2
    80003d70:	8a0080e7          	jalr	-1888(ra) # 8000560c <_ZN9Scheduler3getEv>
    Scheduler::Print();
    80003d74:	00002097          	auipc	ra,0x2
    80003d78:	9c0080e7          	jalr	-1600(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::get();
    80003d7c:	00002097          	auipc	ra,0x2
    80003d80:	890080e7          	jalr	-1904(ra) # 8000560c <_ZN9Scheduler3getEv>
    Scheduler::Print();
    80003d84:	00002097          	auipc	ra,0x2
    80003d88:	9b0080e7          	jalr	-1616(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::get();
    80003d8c:	00002097          	auipc	ra,0x2
    80003d90:	880080e7          	jalr	-1920(ra) # 8000560c <_ZN9Scheduler3getEv>
    Scheduler::Print();
    80003d94:	00002097          	auipc	ra,0x2
    80003d98:	9a0080e7          	jalr	-1632(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::get();
    80003d9c:	00002097          	auipc	ra,0x2
    80003da0:	870080e7          	jalr	-1936(ra) # 8000560c <_ZN9Scheduler3getEv>
    Scheduler::Print();
    80003da4:	00002097          	auipc	ra,0x2
    80003da8:	990080e7          	jalr	-1648(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::get();
    80003dac:	00002097          	auipc	ra,0x2
    80003db0:	860080e7          	jalr	-1952(ra) # 8000560c <_ZN9Scheduler3getEv>
    Scheduler::Print();
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	980080e7          	jalr	-1664(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::put(t1);
    80003dbc:	00090513          	mv	a0,s2
    80003dc0:	00002097          	auipc	ra,0x2
    80003dc4:	8e0080e7          	jalr	-1824(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>
    Scheduler::Print();
    80003dc8:	00002097          	auipc	ra,0x2
    80003dcc:	96c080e7          	jalr	-1684(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    Scheduler::get();
    80003dd0:	00002097          	auipc	ra,0x2
    80003dd4:	83c080e7          	jalr	-1988(ra) # 8000560c <_ZN9Scheduler3getEv>
    Scheduler::Print();
    80003dd8:	00002097          	auipc	ra,0x2
    80003ddc:	95c080e7          	jalr	-1700(ra) # 80005734 <_ZN9Scheduler5PrintEv>
}
    80003de0:	00000513          	li	a0,0
    80003de4:	03813083          	ld	ra,56(sp)
    80003de8:	03013403          	ld	s0,48(sp)
    80003dec:	02813483          	ld	s1,40(sp)
    80003df0:	02013903          	ld	s2,32(sp)
    80003df4:	01813983          	ld	s3,24(sp)
    80003df8:	01013a03          	ld	s4,16(sp)
    80003dfc:	00813a83          	ld	s5,8(sp)
    80003e00:	04010113          	addi	sp,sp,64
    80003e04:	00008067          	ret

0000000080003e08 <_Z7mojtestv>:
void mojtest(){
    80003e08:	fd010113          	addi	sp,sp,-48
    80003e0c:	02113423          	sd	ra,40(sp)
    80003e10:	02813023          	sd	s0,32(sp)
    80003e14:	03010413          	addi	s0,sp,48
    thread_create(&t1,&f1,nullptr);
    80003e18:	00000613          	li	a2,0
    80003e1c:	ffffe597          	auipc	a1,0xffffe
    80003e20:	7c858593          	addi	a1,a1,1992 # 800025e4 <_Z2f1Pv>
    80003e24:	fe840513          	addi	a0,s0,-24
    80003e28:	ffffd097          	auipc	ra,0xffffd
    80003e2c:	474080e7          	jalr	1140(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    thread_create(&t2,&f2,nullptr);
    80003e30:	00000613          	li	a2,0
    80003e34:	fffff597          	auipc	a1,0xfffff
    80003e38:	8f858593          	addi	a1,a1,-1800 # 8000272c <_Z2f2Pv>
    80003e3c:	fe040513          	addi	a0,s0,-32
    80003e40:	ffffd097          	auipc	ra,0xffffd
    80003e44:	45c080e7          	jalr	1116(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    thread_create(&t3,&f3,nullptr);
    80003e48:	00000613          	li	a2,0
    80003e4c:	fffff597          	auipc	a1,0xfffff
    80003e50:	83858593          	addi	a1,a1,-1992 # 80002684 <_Z2f3Pv>
    80003e54:	fd840513          	addi	a0,s0,-40
    80003e58:	ffffd097          	auipc	ra,0xffffd
    80003e5c:	444080e7          	jalr	1092(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    Scheduler::Print();
    80003e60:	00002097          	auipc	ra,0x2
    80003e64:	8d4080e7          	jalr	-1836(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    sem_open(&s,0);
    80003e68:	00000593          	li	a1,0
    80003e6c:	00008517          	auipc	a0,0x8
    80003e70:	89c50513          	addi	a0,a0,-1892 # 8000b708 <s>
    80003e74:	ffffd097          	auipc	ra,0xffffd
    80003e78:	4ac080e7          	jalr	1196(ra) # 80001320 <_Z8sem_openPP7Semaforj>
    while(Scheduler::imaniti());
    80003e7c:	00002097          	auipc	ra,0x2
    80003e80:	c04080e7          	jalr	-1020(ra) # 80005a80 <_ZN9Scheduler7imanitiEv>
    80003e84:	fe051ce3          	bnez	a0,80003e7c <_Z7mojtestv+0x74>
}
    80003e88:	02813083          	ld	ra,40(sp)
    80003e8c:	02013403          	ld	s0,32(sp)
    80003e90:	03010113          	addi	sp,sp,48
    80003e94:	00008067          	ret

0000000080003e98 <_Z9testbaferv>:
void testbafer(){
    80003e98:	f9010113          	addi	sp,sp,-112
    80003e9c:	06113423          	sd	ra,104(sp)
    80003ea0:	06813023          	sd	s0,96(sp)
    80003ea4:	04913c23          	sd	s1,88(sp)
    80003ea8:	07010413          	addi	s0,sp,112

    putc('b');
    80003eac:	06200513          	li	a0,98
    80003eb0:	ffffd097          	auipc	ra,0xffffd
    80003eb4:	5a0080e7          	jalr	1440(ra) # 80001450 <_Z4putcc>
    Bafer B(20);
    80003eb8:	01400593          	li	a1,20
    80003ebc:	fa840493          	addi	s1,s0,-88
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	e34080e7          	jalr	-460(ra) # 80001cf8 <_ZN5BaferC1Ei>

    Nit *t1,*t2;
    thread_create(&t1,bafer1,&B);
    80003ecc:	00048613          	mv	a2,s1
    80003ed0:	ffffe597          	auipc	a1,0xffffe
    80003ed4:	65858593          	addi	a1,a1,1624 # 80002528 <_Z6bafer1Pv>
    80003ed8:	fa040513          	addi	a0,s0,-96
    80003edc:	ffffd097          	auipc	ra,0xffffd
    80003ee0:	3c0080e7          	jalr	960(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    thread_create(&t2,bafer2,&B);
    80003ee4:	00048613          	mv	a2,s1
    80003ee8:	ffffe597          	auipc	a1,0xffffe
    80003eec:	6a058593          	addi	a1,a1,1696 # 80002588 <_Z6bafer2Pv>
    80003ef0:	f9840513          	addi	a0,s0,-104
    80003ef4:	ffffd097          	auipc	ra,0xffffd
    80003ef8:	3a8080e7          	jalr	936(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>

    Scheduler::Print();
    80003efc:	00002097          	auipc	ra,0x2
    80003f00:	838080e7          	jalr	-1992(ra) # 80005734 <_ZN9Scheduler5PrintEv>
    80003f04:	0080006f          	j	80003f0c <_Z9testbaferv+0x74>

    while(Scheduler::imaniti()){
    80003f08:	00050863          	beqz	a0,80003f18 <_Z9testbaferv+0x80>
    80003f0c:	00002097          	auipc	ra,0x2
    80003f10:	b74080e7          	jalr	-1164(ra) # 80005a80 <_ZN9Scheduler7imanitiEv>
    80003f14:	ff5ff06f          	j	80003f08 <_Z9testbaferv+0x70>
    Bafer B(20);
    80003f18:	fa840513          	addi	a0,s0,-88
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	ec0080e7          	jalr	-320(ra) # 80001ddc <_ZN5BaferD1Ev>
        //Scheduler::Print();
        //print('a');
    }
}
    80003f24:	06813083          	ld	ra,104(sp)
    80003f28:	06013403          	ld	s0,96(sp)
    80003f2c:	05813483          	ld	s1,88(sp)
    80003f30:	07010113          	addi	sp,sp,112
    80003f34:	00008067          	ret
    80003f38:	00050493          	mv	s1,a0
    Bafer B(20);
    80003f3c:	fa840513          	addi	a0,s0,-88
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	e9c080e7          	jalr	-356(ra) # 80001ddc <_ZN5BaferD1Ev>
    80003f48:	00048513          	mv	a0,s1
    80003f4c:	00009097          	auipc	ra,0x9
    80003f50:	8fc080e7          	jalr	-1796(ra) # 8000c848 <_Unwind_Resume>

0000000080003f54 <_Z3alov>:

void alo(){
    80003f54:	ff010113          	addi	sp,sp,-16
    80003f58:	00113423          	sd	ra,8(sp)
    80003f5c:	00813023          	sd	s0,0(sp)
    80003f60:	01010413          	addi	s0,sp,16
    printInt(10);
    80003f64:	00000613          	li	a2,0
    80003f68:	00a00593          	li	a1,10
    80003f6c:	00a00513          	li	a0,10
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	c74080e7          	jalr	-908(ra) # 80001be4 <_Z8printIntiii>
}
    80003f78:	00813083          	ld	ra,8(sp)
    80003f7c:	00013403          	ld	s0,0(sp)
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret

0000000080003f88 <_Z8userMainv>:
        alo();
    }
};


void userMain() {
    80003f88:	fc010113          	addi	sp,sp,-64
    80003f8c:	02113c23          	sd	ra,56(sp)
    80003f90:	02813823          	sd	s0,48(sp)
    80003f94:	02913423          	sd	s1,40(sp)
    80003f98:	03213023          	sd	s2,32(sp)
    80003f9c:	01313c23          	sd	s3,24(sp)
    80003fa0:	04010413          	addi	s0,sp,64
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	5ac080e7          	jalr	1452(ra) # 80003550 <_Z12testSleepingv>
    //mojtest();
    //testbafer();


    List<int> lista;
    int *hh = (int*)(mem_alloc(sizeof(int)));
    80003fac:	00400513          	li	a0,4
    80003fb0:	ffffd097          	auipc	ra,0xffffd
    80003fb4:	290080e7          	jalr	656(ra) # 80001240 <_Z9mem_allocm>
    80003fb8:	00050493          	mv	s1,a0
    *hh=5;
    80003fbc:	00500913          	li	s2,5
    80003fc0:	01252023          	sw	s2,0(a0)
    int *hh1 = (int*)(mem_alloc(sizeof(int)));
    80003fc4:	00400513          	li	a0,4
    80003fc8:	ffffd097          	auipc	ra,0xffffd
    80003fcc:	278080e7          	jalr	632(ra) # 80001240 <_Z9mem_allocm>
    80003fd0:	00050993          	mv	s3,a0
    *hh1=5;
    80003fd4:	01252023          	sw	s2,0(a0)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80003fd8:	01000513          	li	a0,16
    80003fdc:	00001097          	auipc	ra,0x1
    80003fe0:	bb0080e7          	jalr	-1104(ra) # 80004b8c <_Znwm>
    80003fe4:	00050913          	mv	s2,a0
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003fe8:	01353023          	sd	s3,0(a0)
    80003fec:	00053423          	sd	zero,8(a0)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
    80003ff0:	fca43023          	sd	a0,-64(s0)
    lista.addLast(hh1);(*hh)+=1;
    80003ff4:	0004a783          	lw	a5,0(s1)
    80003ff8:	0017879b          	addiw	a5,a5,1
    80003ffc:	00f4a023          	sw	a5,0(s1)
        Elem *elem = new Elem(data, 0);
    80004000:	01000513          	li	a0,16
    80004004:	00001097          	auipc	ra,0x1
    80004008:	b88080e7          	jalr	-1144(ra) # 80004b8c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000400c:	00953023          	sd	s1,0(a0)
    80004010:	00053423          	sd	zero,8(a0)
        if (tail)
    80004014:	10090e63          	beqz	s2,80004130 <_Z8userMainv+0x1a8>
            tail->next = elem;
    80004018:	00a93423          	sd	a0,8(s2)
            tail = elem;
    8000401c:	fca43423          	sd	a0,-56(s0)
    lista.addLast(hh);(*hh)+=1;
    80004020:	0004a783          	lw	a5,0(s1)
    80004024:	0017879b          	addiw	a5,a5,1
    80004028:	00f4a023          	sw	a5,0(s1)
        Elem *elem = new Elem(data, 0);
    8000402c:	01000513          	li	a0,16
    80004030:	00001097          	auipc	ra,0x1
    80004034:	b5c080e7          	jalr	-1188(ra) # 80004b8c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80004038:	00953023          	sd	s1,0(a0)
    8000403c:	00053423          	sd	zero,8(a0)
        if (tail)
    80004040:	fc843783          	ld	a5,-56(s0)
    80004044:	0e078c63          	beqz	a5,8000413c <_Z8userMainv+0x1b4>
            tail->next = elem;
    80004048:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000404c:	fca43423          	sd	a0,-56(s0)
    lista.addLast(hh);(*hh)+=1;
    80004050:	0004a783          	lw	a5,0(s1)
    80004054:	0017879b          	addiw	a5,a5,1
    80004058:	00f4a023          	sw	a5,0(s1)
        Elem *elem = new Elem(data, 0);
    8000405c:	01000513          	li	a0,16
    80004060:	00001097          	auipc	ra,0x1
    80004064:	b2c080e7          	jalr	-1236(ra) # 80004b8c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80004068:	00953023          	sd	s1,0(a0)
    8000406c:	00053423          	sd	zero,8(a0)
        if (tail)
    80004070:	fc843783          	ld	a5,-56(s0)
    80004074:	0c078a63          	beqz	a5,80004148 <_Z8userMainv+0x1c0>
            tail->next = elem;
    80004078:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000407c:	fca43423          	sd	a0,-56(s0)
    lista.addLast(hh);(*hh)+=1;
    80004080:	0004a783          	lw	a5,0(s1)
    80004084:	0017879b          	addiw	a5,a5,1
    80004088:	00f4a023          	sw	a5,0(s1)
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    8000408c:	fc043783          	ld	a5,-64(s0)
    80004090:	00078463          	beqz	a5,80004098 <_Z8userMainv+0x110>
        return head->data;
    80004094:	0007b783          	ld	a5,0(a5)

    printInt(*lista.peekFirst());
    80004098:	00000613          	li	a2,0
    8000409c:	00a00593          	li	a1,10
    800040a0:	0007a503          	lw	a0,0(a5)
    800040a4:	ffffe097          	auipc	ra,0xffffe
    800040a8:	b40080e7          	jalr	-1216(ra) # 80001be4 <_Z8printIntiii>
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
    800040ac:	fc843783          	ld	a5,-56(s0)
    800040b0:	00078463          	beqz	a5,800040b8 <_Z8userMainv+0x130>
        return tail->data;
    800040b4:	0007b783          	ld	a5,0(a5)
    printInt(*lista.peekLast());
    800040b8:	00000613          	li	a2,0
    800040bc:	00a00593          	li	a1,10
    800040c0:	0007a503          	lw	a0,0(a5)
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	b20080e7          	jalr	-1248(ra) # 80001be4 <_Z8printIntiii>

    printString("aaaaaa");
    800040cc:	00005517          	auipc	a0,0x5
    800040d0:	28450513          	addi	a0,a0,644 # 80009350 <CONSOLE_STATUS+0x340>
    800040d4:	ffffe097          	auipc	ra,0xffffe
    800040d8:	978080e7          	jalr	-1672(ra) # 80001a4c <_Z11printStringPKc>

    int a1=1;
    printString("print\n");
    800040dc:	00005517          	auipc	a0,0x5
    800040e0:	27c50513          	addi	a0,a0,636 # 80009358 <CONSOLE_STATUS+0x348>
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	968080e7          	jalr	-1688(ra) # 80001a4c <_Z11printStringPKc>
    printString("???\n");
    800040ec:	00005517          	auipc	a0,0x5
    800040f0:	27450513          	addi	a0,a0,628 # 80009360 <CONSOLE_STATUS+0x350>
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	958080e7          	jalr	-1704(ra) # 80001a4c <_Z11printStringPKc>
    printInt(a1);
    800040fc:	00000613          	li	a2,0
    80004100:	00a00593          	li	a1,10
    80004104:	00100513          	li	a0,1
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	adc080e7          	jalr	-1316(ra) # 80001be4 <_Z8printIntiii>

    AAA *a = new AAA(5);
    80004110:	02800513          	li	a0,40
    80004114:	00001097          	auipc	ra,0x1
    80004118:	a78080e7          	jalr	-1416(ra) # 80004b8c <_Znwm>
    8000411c:	00050493          	mv	s1,a0
    AAA(int a): PeriodicThread(a), a(a){}
    80004120:	00500593          	li	a1,5
    80004124:	00001097          	auipc	ra,0x1
    80004128:	cc0080e7          	jalr	-832(ra) # 80004de4 <_ZN14PeriodicThreadC1Em>
    8000412c:	0280006f          	j	80004154 <_Z8userMainv+0x1cc>
            head = tail = elem;
    80004130:	fca43423          	sd	a0,-56(s0)
    80004134:	fca43023          	sd	a0,-64(s0)
    80004138:	ee9ff06f          	j	80004020 <_Z8userMainv+0x98>
    8000413c:	fca43423          	sd	a0,-56(s0)
    80004140:	fca43023          	sd	a0,-64(s0)
    80004144:	f0dff06f          	j	80004050 <_Z8userMainv+0xc8>
    80004148:	fca43423          	sd	a0,-56(s0)
    8000414c:	fca43023          	sd	a0,-64(s0)
    80004150:	f31ff06f          	j	80004080 <_Z8userMainv+0xf8>
    80004154:	00007797          	auipc	a5,0x7
    80004158:	43c78793          	addi	a5,a5,1084 # 8000b590 <_ZTV3AAA+0x10>
    8000415c:	00f4b023          	sd	a5,0(s1)
    80004160:	00500793          	li	a5,5
    80004164:	02f4a023          	sw	a5,32(s1)

    a->start();
    80004168:	00048513          	mv	a0,s1
    8000416c:	00001097          	auipc	ra,0x1
    80004170:	b28080e7          	jalr	-1240(ra) # 80004c94 <_ZN6Thread5startEv>
    for(int i=0;i<1000000000;i++){
    80004174:	00000713          	li	a4,0
    80004178:	3b9ad7b7          	lui	a5,0x3b9ad
    8000417c:	9ff78793          	addi	a5,a5,-1537 # 3b9ac9ff <_entry-0x44653601>
    80004180:	00e7c663          	blt	a5,a4,8000418c <_Z8userMainv+0x204>
    80004184:	0017071b          	addiw	a4,a4,1
    80004188:	ff1ff06f          	j	80004178 <_Z8userMainv+0x1f0>

    }

    a->zaustavi();
    8000418c:	00048513          	mv	a0,s1
    80004190:	00001097          	auipc	ra,0x1
    80004194:	cac080e7          	jalr	-852(ra) # 80004e3c <_ZN14PeriodicThread8zaustaviEv>
    //syscall_c.cpp definisi funkciju
    //provera.cpp
    //
    //

    80004198:	03813083          	ld	ra,56(sp)
    8000419c:	03013403          	ld	s0,48(sp)
    800041a0:	02813483          	ld	s1,40(sp)
    800041a4:	02013903          	ld	s2,32(sp)
    800041a8:	01813983          	ld	s3,24(sp)
    800041ac:	04010113          	addi	sp,sp,64
    800041b0:	00008067          	ret
    800041b4:	00050913          	mv	s2,a0
    AAA *a = new AAA(5);
    800041b8:	00048513          	mv	a0,s1
    800041bc:	00001097          	auipc	ra,0x1
    800041c0:	9f8080e7          	jalr	-1544(ra) # 80004bb4 <_ZdlPv>
    800041c4:	00090513          	mv	a0,s2
    800041c8:	00008097          	auipc	ra,0x8
    800041cc:	680080e7          	jalr	1664(ra) # 8000c848 <_Unwind_Resume>

00000000800041d0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800041d0:	ff010113          	addi	sp,sp,-16
    800041d4:	00113423          	sd	ra,8(sp)
    800041d8:	00813023          	sd	s0,0(sp)
    800041dc:	01010413          	addi	s0,sp,16
    800041e0:	00007797          	auipc	a5,0x7
    800041e4:	22078793          	addi	a5,a5,544 # 8000b400 <_ZTV7WorkerA+0x10>
    800041e8:	00f53023          	sd	a5,0(a0)
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	8dc080e7          	jalr	-1828(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800041f4:	00813083          	ld	ra,8(sp)
    800041f8:	00013403          	ld	s0,0(sp)
    800041fc:	01010113          	addi	sp,sp,16
    80004200:	00008067          	ret

0000000080004204 <_ZN7WorkerAD0Ev>:
    80004204:	fe010113          	addi	sp,sp,-32
    80004208:	00113c23          	sd	ra,24(sp)
    8000420c:	00813823          	sd	s0,16(sp)
    80004210:	00913423          	sd	s1,8(sp)
    80004214:	02010413          	addi	s0,sp,32
    80004218:	00050493          	mv	s1,a0
    8000421c:	00007797          	auipc	a5,0x7
    80004220:	1e478793          	addi	a5,a5,484 # 8000b400 <_ZTV7WorkerA+0x10>
    80004224:	00f53023          	sd	a5,0(a0)
    80004228:	00001097          	auipc	ra,0x1
    8000422c:	8a0080e7          	jalr	-1888(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004230:	00048513          	mv	a0,s1
    80004234:	00001097          	auipc	ra,0x1
    80004238:	980080e7          	jalr	-1664(ra) # 80004bb4 <_ZdlPv>
    8000423c:	01813083          	ld	ra,24(sp)
    80004240:	01013403          	ld	s0,16(sp)
    80004244:	00813483          	ld	s1,8(sp)
    80004248:	02010113          	addi	sp,sp,32
    8000424c:	00008067          	ret

0000000080004250 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004250:	ff010113          	addi	sp,sp,-16
    80004254:	00113423          	sd	ra,8(sp)
    80004258:	00813023          	sd	s0,0(sp)
    8000425c:	01010413          	addi	s0,sp,16
    80004260:	00007797          	auipc	a5,0x7
    80004264:	1c878793          	addi	a5,a5,456 # 8000b428 <_ZTV7WorkerB+0x10>
    80004268:	00f53023          	sd	a5,0(a0)
    8000426c:	00001097          	auipc	ra,0x1
    80004270:	85c080e7          	jalr	-1956(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004274:	00813083          	ld	ra,8(sp)
    80004278:	00013403          	ld	s0,0(sp)
    8000427c:	01010113          	addi	sp,sp,16
    80004280:	00008067          	ret

0000000080004284 <_ZN7WorkerBD0Ev>:
    80004284:	fe010113          	addi	sp,sp,-32
    80004288:	00113c23          	sd	ra,24(sp)
    8000428c:	00813823          	sd	s0,16(sp)
    80004290:	00913423          	sd	s1,8(sp)
    80004294:	02010413          	addi	s0,sp,32
    80004298:	00050493          	mv	s1,a0
    8000429c:	00007797          	auipc	a5,0x7
    800042a0:	18c78793          	addi	a5,a5,396 # 8000b428 <_ZTV7WorkerB+0x10>
    800042a4:	00f53023          	sd	a5,0(a0)
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	820080e7          	jalr	-2016(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800042b0:	00048513          	mv	a0,s1
    800042b4:	00001097          	auipc	ra,0x1
    800042b8:	900080e7          	jalr	-1792(ra) # 80004bb4 <_ZdlPv>
    800042bc:	01813083          	ld	ra,24(sp)
    800042c0:	01013403          	ld	s0,16(sp)
    800042c4:	00813483          	ld	s1,8(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret

00000000800042d0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800042d0:	ff010113          	addi	sp,sp,-16
    800042d4:	00113423          	sd	ra,8(sp)
    800042d8:	00813023          	sd	s0,0(sp)
    800042dc:	01010413          	addi	s0,sp,16
    800042e0:	00007797          	auipc	a5,0x7
    800042e4:	17078793          	addi	a5,a5,368 # 8000b450 <_ZTV7WorkerC+0x10>
    800042e8:	00f53023          	sd	a5,0(a0)
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	7dc080e7          	jalr	2012(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800042f4:	00813083          	ld	ra,8(sp)
    800042f8:	00013403          	ld	s0,0(sp)
    800042fc:	01010113          	addi	sp,sp,16
    80004300:	00008067          	ret

0000000080004304 <_ZN7WorkerCD0Ev>:
    80004304:	fe010113          	addi	sp,sp,-32
    80004308:	00113c23          	sd	ra,24(sp)
    8000430c:	00813823          	sd	s0,16(sp)
    80004310:	00913423          	sd	s1,8(sp)
    80004314:	02010413          	addi	s0,sp,32
    80004318:	00050493          	mv	s1,a0
    8000431c:	00007797          	auipc	a5,0x7
    80004320:	13478793          	addi	a5,a5,308 # 8000b450 <_ZTV7WorkerC+0x10>
    80004324:	00f53023          	sd	a5,0(a0)
    80004328:	00000097          	auipc	ra,0x0
    8000432c:	7a0080e7          	jalr	1952(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004330:	00048513          	mv	a0,s1
    80004334:	00001097          	auipc	ra,0x1
    80004338:	880080e7          	jalr	-1920(ra) # 80004bb4 <_ZdlPv>
    8000433c:	01813083          	ld	ra,24(sp)
    80004340:	01013403          	ld	s0,16(sp)
    80004344:	00813483          	ld	s1,8(sp)
    80004348:	02010113          	addi	sp,sp,32
    8000434c:	00008067          	ret

0000000080004350 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004350:	ff010113          	addi	sp,sp,-16
    80004354:	00113423          	sd	ra,8(sp)
    80004358:	00813023          	sd	s0,0(sp)
    8000435c:	01010413          	addi	s0,sp,16
    80004360:	00007797          	auipc	a5,0x7
    80004364:	11878793          	addi	a5,a5,280 # 8000b478 <_ZTV7WorkerD+0x10>
    80004368:	00f53023          	sd	a5,0(a0)
    8000436c:	00000097          	auipc	ra,0x0
    80004370:	75c080e7          	jalr	1884(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004374:	00813083          	ld	ra,8(sp)
    80004378:	00013403          	ld	s0,0(sp)
    8000437c:	01010113          	addi	sp,sp,16
    80004380:	00008067          	ret

0000000080004384 <_ZN7WorkerDD0Ev>:
    80004384:	fe010113          	addi	sp,sp,-32
    80004388:	00113c23          	sd	ra,24(sp)
    8000438c:	00813823          	sd	s0,16(sp)
    80004390:	00913423          	sd	s1,8(sp)
    80004394:	02010413          	addi	s0,sp,32
    80004398:	00050493          	mv	s1,a0
    8000439c:	00007797          	auipc	a5,0x7
    800043a0:	0dc78793          	addi	a5,a5,220 # 8000b478 <_ZTV7WorkerD+0x10>
    800043a4:	00f53023          	sd	a5,0(a0)
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	720080e7          	jalr	1824(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800043b0:	00048513          	mv	a0,s1
    800043b4:	00001097          	auipc	ra,0x1
    800043b8:	800080e7          	jalr	-2048(ra) # 80004bb4 <_ZdlPv>
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret

00000000800043d0 <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    800043d0:	ff010113          	addi	sp,sp,-16
    800043d4:	00113423          	sd	ra,8(sp)
    800043d8:	00813023          	sd	s0,0(sp)
    800043dc:	01010413          	addi	s0,sp,16
    800043e0:	00007797          	auipc	a5,0x7
    800043e4:	11078793          	addi	a5,a5,272 # 8000b4f0 <_ZTV8Consumer+0x10>
    800043e8:	00f53023          	sd	a5,0(a0)
    800043ec:	00000097          	auipc	ra,0x0
    800043f0:	6dc080e7          	jalr	1756(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800043f4:	00813083          	ld	ra,8(sp)
    800043f8:	00013403          	ld	s0,0(sp)
    800043fc:	01010113          	addi	sp,sp,16
    80004400:	00008067          	ret

0000000080004404 <_ZN8ConsumerD0Ev>:
    80004404:	fe010113          	addi	sp,sp,-32
    80004408:	00113c23          	sd	ra,24(sp)
    8000440c:	00813823          	sd	s0,16(sp)
    80004410:	00913423          	sd	s1,8(sp)
    80004414:	02010413          	addi	s0,sp,32
    80004418:	00050493          	mv	s1,a0
    8000441c:	00007797          	auipc	a5,0x7
    80004420:	0d478793          	addi	a5,a5,212 # 8000b4f0 <_ZTV8Consumer+0x10>
    80004424:	00f53023          	sd	a5,0(a0)
    80004428:	00000097          	auipc	ra,0x0
    8000442c:	6a0080e7          	jalr	1696(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004430:	00048513          	mv	a0,s1
    80004434:	00000097          	auipc	ra,0x0
    80004438:	780080e7          	jalr	1920(ra) # 80004bb4 <_ZdlPv>
    8000443c:	01813083          	ld	ra,24(sp)
    80004440:	01013403          	ld	s0,16(sp)
    80004444:	00813483          	ld	s1,8(sp)
    80004448:	02010113          	addi	sp,sp,32
    8000444c:	00008067          	ret

0000000080004450 <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    80004450:	ff010113          	addi	sp,sp,-16
    80004454:	00113423          	sd	ra,8(sp)
    80004458:	00813023          	sd	s0,0(sp)
    8000445c:	01010413          	addi	s0,sp,16
    80004460:	00007797          	auipc	a5,0x7
    80004464:	06878793          	addi	a5,a5,104 # 8000b4c8 <_ZTV8Producer+0x10>
    80004468:	00f53023          	sd	a5,0(a0)
    8000446c:	00000097          	auipc	ra,0x0
    80004470:	65c080e7          	jalr	1628(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004474:	00813083          	ld	ra,8(sp)
    80004478:	00013403          	ld	s0,0(sp)
    8000447c:	01010113          	addi	sp,sp,16
    80004480:	00008067          	ret

0000000080004484 <_ZN8ProducerD0Ev>:
    80004484:	fe010113          	addi	sp,sp,-32
    80004488:	00113c23          	sd	ra,24(sp)
    8000448c:	00813823          	sd	s0,16(sp)
    80004490:	00913423          	sd	s1,8(sp)
    80004494:	02010413          	addi	s0,sp,32
    80004498:	00050493          	mv	s1,a0
    8000449c:	00007797          	auipc	a5,0x7
    800044a0:	02c78793          	addi	a5,a5,44 # 8000b4c8 <_ZTV8Producer+0x10>
    800044a4:	00f53023          	sd	a5,0(a0)
    800044a8:	00000097          	auipc	ra,0x0
    800044ac:	620080e7          	jalr	1568(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800044b0:	00048513          	mv	a0,s1
    800044b4:	00000097          	auipc	ra,0x0
    800044b8:	700080e7          	jalr	1792(ra) # 80004bb4 <_ZdlPv>
    800044bc:	01813083          	ld	ra,24(sp)
    800044c0:	01013403          	ld	s0,16(sp)
    800044c4:	00813483          	ld	s1,8(sp)
    800044c8:	02010113          	addi	sp,sp,32
    800044cc:	00008067          	ret

00000000800044d0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800044d0:	ff010113          	addi	sp,sp,-16
    800044d4:	00113423          	sd	ra,8(sp)
    800044d8:	00813023          	sd	s0,0(sp)
    800044dc:	01010413          	addi	s0,sp,16
    800044e0:	00007797          	auipc	a5,0x7
    800044e4:	fc078793          	addi	a5,a5,-64 # 8000b4a0 <_ZTV16ProducerKeyboard+0x10>
    800044e8:	00f53023          	sd	a5,0(a0)
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	5dc080e7          	jalr	1500(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800044f4:	00813083          	ld	ra,8(sp)
    800044f8:	00013403          	ld	s0,0(sp)
    800044fc:	01010113          	addi	sp,sp,16
    80004500:	00008067          	ret

0000000080004504 <_ZN16ProducerKeyboardD0Ev>:
    80004504:	fe010113          	addi	sp,sp,-32
    80004508:	00113c23          	sd	ra,24(sp)
    8000450c:	00813823          	sd	s0,16(sp)
    80004510:	00913423          	sd	s1,8(sp)
    80004514:	02010413          	addi	s0,sp,32
    80004518:	00050493          	mv	s1,a0
    8000451c:	00007797          	auipc	a5,0x7
    80004520:	f8478793          	addi	a5,a5,-124 # 8000b4a0 <_ZTV16ProducerKeyboard+0x10>
    80004524:	00f53023          	sd	a5,0(a0)
    80004528:	00000097          	auipc	ra,0x0
    8000452c:	5a0080e7          	jalr	1440(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004530:	00048513          	mv	a0,s1
    80004534:	00000097          	auipc	ra,0x0
    80004538:	680080e7          	jalr	1664(ra) # 80004bb4 <_ZdlPv>
    8000453c:	01813083          	ld	ra,24(sp)
    80004540:	01013403          	ld	s0,16(sp)
    80004544:	00813483          	ld	s1,8(sp)
    80004548:	02010113          	addi	sp,sp,32
    8000454c:	00008067          	ret

0000000080004550 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80004550:	ff010113          	addi	sp,sp,-16
    80004554:	00113423          	sd	ra,8(sp)
    80004558:	00813023          	sd	s0,0(sp)
    8000455c:	01010413          	addi	s0,sp,16
    80004560:	00007797          	auipc	a5,0x7
    80004564:	00878793          	addi	a5,a5,8 # 8000b568 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004568:	00f53023          	sd	a5,0(a0)
    8000456c:	00000097          	auipc	ra,0x0
    80004570:	55c080e7          	jalr	1372(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004574:	00813083          	ld	ra,8(sp)
    80004578:	00013403          	ld	s0,0(sp)
    8000457c:	01010113          	addi	sp,sp,16
    80004580:	00008067          	ret

0000000080004584 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80004584:	fe010113          	addi	sp,sp,-32
    80004588:	00113c23          	sd	ra,24(sp)
    8000458c:	00813823          	sd	s0,16(sp)
    80004590:	00913423          	sd	s1,8(sp)
    80004594:	02010413          	addi	s0,sp,32
    80004598:	00050493          	mv	s1,a0
    8000459c:	00007797          	auipc	a5,0x7
    800045a0:	fcc78793          	addi	a5,a5,-52 # 8000b568 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800045a4:	00f53023          	sd	a5,0(a0)
    800045a8:	00000097          	auipc	ra,0x0
    800045ac:	520080e7          	jalr	1312(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800045b0:	00048513          	mv	a0,s1
    800045b4:	00000097          	auipc	ra,0x0
    800045b8:	600080e7          	jalr	1536(ra) # 80004bb4 <_ZdlPv>
    800045bc:	01813083          	ld	ra,24(sp)
    800045c0:	01013403          	ld	s0,16(sp)
    800045c4:	00813483          	ld	s1,8(sp)
    800045c8:	02010113          	addi	sp,sp,32
    800045cc:	00008067          	ret

00000000800045d0 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    800045d0:	ff010113          	addi	sp,sp,-16
    800045d4:	00113423          	sd	ra,8(sp)
    800045d8:	00813023          	sd	s0,0(sp)
    800045dc:	01010413          	addi	s0,sp,16
    800045e0:	00007797          	auipc	a5,0x7
    800045e4:	f3878793          	addi	a5,a5,-200 # 8000b518 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800045e8:	00f53023          	sd	a5,0(a0)
    800045ec:	00000097          	auipc	ra,0x0
    800045f0:	4dc080e7          	jalr	1244(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800045f4:	00813083          	ld	ra,8(sp)
    800045f8:	00013403          	ld	s0,0(sp)
    800045fc:	01010113          	addi	sp,sp,16
    80004600:	00008067          	ret

0000000080004604 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80004604:	fe010113          	addi	sp,sp,-32
    80004608:	00113c23          	sd	ra,24(sp)
    8000460c:	00813823          	sd	s0,16(sp)
    80004610:	00913423          	sd	s1,8(sp)
    80004614:	02010413          	addi	s0,sp,32
    80004618:	00050493          	mv	s1,a0
    8000461c:	00007797          	auipc	a5,0x7
    80004620:	efc78793          	addi	a5,a5,-260 # 8000b518 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004624:	00f53023          	sd	a5,0(a0)
    80004628:	00000097          	auipc	ra,0x0
    8000462c:	4a0080e7          	jalr	1184(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004630:	00048513          	mv	a0,s1
    80004634:	00000097          	auipc	ra,0x0
    80004638:	580080e7          	jalr	1408(ra) # 80004bb4 <_ZdlPv>
    8000463c:	01813083          	ld	ra,24(sp)
    80004640:	01013403          	ld	s0,16(sp)
    80004644:	00813483          	ld	s1,8(sp)
    80004648:	02010113          	addi	sp,sp,32
    8000464c:	00008067          	ret

0000000080004650 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80004650:	ff010113          	addi	sp,sp,-16
    80004654:	00113423          	sd	ra,8(sp)
    80004658:	00813023          	sd	s0,0(sp)
    8000465c:	01010413          	addi	s0,sp,16
    80004660:	00007797          	auipc	a5,0x7
    80004664:	ee078793          	addi	a5,a5,-288 # 8000b540 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004668:	00f53023          	sd	a5,0(a0)
    8000466c:	00000097          	auipc	ra,0x0
    80004670:	45c080e7          	jalr	1116(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004674:	00813083          	ld	ra,8(sp)
    80004678:	00013403          	ld	s0,0(sp)
    8000467c:	01010113          	addi	sp,sp,16
    80004680:	00008067          	ret

0000000080004684 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80004684:	fe010113          	addi	sp,sp,-32
    80004688:	00113c23          	sd	ra,24(sp)
    8000468c:	00813823          	sd	s0,16(sp)
    80004690:	00913423          	sd	s1,8(sp)
    80004694:	02010413          	addi	s0,sp,32
    80004698:	00050493          	mv	s1,a0
    8000469c:	00007797          	auipc	a5,0x7
    800046a0:	ea478793          	addi	a5,a5,-348 # 8000b540 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800046a4:	00f53023          	sd	a5,0(a0)
    800046a8:	00000097          	auipc	ra,0x0
    800046ac:	420080e7          	jalr	1056(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800046b0:	00048513          	mv	a0,s1
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	500080e7          	jalr	1280(ra) # 80004bb4 <_ZdlPv>
    800046bc:	01813083          	ld	ra,24(sp)
    800046c0:	01013403          	ld	s0,16(sp)
    800046c4:	00813483          	ld	s1,8(sp)
    800046c8:	02010113          	addi	sp,sp,32
    800046cc:	00008067          	ret

00000000800046d0 <_ZN3AAAD1Ev>:
class AAA:public PeriodicThread{
    800046d0:	ff010113          	addi	sp,sp,-16
    800046d4:	00113423          	sd	ra,8(sp)
    800046d8:	00813023          	sd	s0,0(sp)
    800046dc:	01010413          	addi	s0,sp,16
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
    800046e0:	00007797          	auipc	a5,0x7
    800046e4:	f807b783          	ld	a5,-128(a5) # 8000b660 <_GLOBAL_OFFSET_TABLE_+0x30>
    800046e8:	01078793          	addi	a5,a5,16
    800046ec:	00f53023          	sd	a5,0(a0)
    800046f0:	00000097          	auipc	ra,0x0
    800046f4:	3d8080e7          	jalr	984(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    800046f8:	00813083          	ld	ra,8(sp)
    800046fc:	00013403          	ld	s0,0(sp)
    80004700:	01010113          	addi	sp,sp,16
    80004704:	00008067          	ret

0000000080004708 <_ZN3AAAD0Ev>:
    80004708:	fe010113          	addi	sp,sp,-32
    8000470c:	00113c23          	sd	ra,24(sp)
    80004710:	00813823          	sd	s0,16(sp)
    80004714:	00913423          	sd	s1,8(sp)
    80004718:	02010413          	addi	s0,sp,32
    8000471c:	00050493          	mv	s1,a0
    80004720:	00007797          	auipc	a5,0x7
    80004724:	f407b783          	ld	a5,-192(a5) # 8000b660 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004728:	01078793          	addi	a5,a5,16
    8000472c:	00f53023          	sd	a5,0(a0)
    80004730:	00000097          	auipc	ra,0x0
    80004734:	398080e7          	jalr	920(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004738:	00048513          	mv	a0,s1
    8000473c:	00000097          	auipc	ra,0x0
    80004740:	478080e7          	jalr	1144(ra) # 80004bb4 <_ZdlPv>
    80004744:	01813083          	ld	ra,24(sp)
    80004748:	01013403          	ld	s0,16(sp)
    8000474c:	00813483          	ld	s1,8(sp)
    80004750:	02010113          	addi	sp,sp,32
    80004754:	00008067          	ret

0000000080004758 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80004758:	fe010113          	addi	sp,sp,-32
    8000475c:	00113c23          	sd	ra,24(sp)
    80004760:	00813823          	sd	s0,16(sp)
    80004764:	00913423          	sd	s1,8(sp)
    80004768:	02010413          	addi	s0,sp,32
    8000476c:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80004770:	ffffd097          	auipc	ra,0xffffd
    80004774:	ca4080e7          	jalr	-860(ra) # 80001414 <_Z4getcv>
    80004778:	0005059b          	sext.w	a1,a0
    8000477c:	01b00793          	li	a5,27
    80004780:	00f58c63          	beq	a1,a5,80004798 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80004784:	0104b783          	ld	a5,16(s1)
    80004788:	0087b503          	ld	a0,8(a5)
    8000478c:	ffffe097          	auipc	ra,0xffffe
    80004790:	a54080e7          	jalr	-1452(ra) # 800021e0 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80004794:	fddff06f          	j	80004770 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80004798:	00100793          	li	a5,1
    8000479c:	00007717          	auipc	a4,0x7
    800047a0:	f4f72e23          	sw	a5,-164(a4) # 8000b6f8 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    800047a4:	0104b783          	ld	a5,16(s1)
    800047a8:	02100593          	li	a1,33
    800047ac:	0087b503          	ld	a0,8(a5)
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	a30080e7          	jalr	-1488(ra) # 800021e0 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    800047b8:	0104b783          	ld	a5,16(s1)
    800047bc:	0107b503          	ld	a0,16(a5)
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	5f8080e7          	jalr	1528(ra) # 80004db8 <_ZN9Semaphore6signalEv>
        }
    800047c8:	01813083          	ld	ra,24(sp)
    800047cc:	01013403          	ld	s0,16(sp)
    800047d0:	00813483          	ld	s1,8(sp)
    800047d4:	02010113          	addi	sp,sp,32
    800047d8:	00008067          	ret

00000000800047dc <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    800047dc:	fd010113          	addi	sp,sp,-48
    800047e0:	02113423          	sd	ra,40(sp)
    800047e4:	02813023          	sd	s0,32(sp)
    800047e8:	00913c23          	sd	s1,24(sp)
    800047ec:	01213823          	sd	s2,16(sp)
    800047f0:	01313423          	sd	s3,8(sp)
    800047f4:	03010413          	addi	s0,sp,48
    800047f8:	00050913          	mv	s2,a0
            int i = 0;
    800047fc:	00000993          	li	s3,0
    80004800:	0100006f          	j	80004810 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80004804:	00a00513          	li	a0,10
    80004808:	00000097          	auipc	ra,0x0
    8000480c:	678080e7          	jalr	1656(ra) # 80004e80 <_ZN7Console4putcEc>
            while (!threadEnd) {
    80004810:	00007797          	auipc	a5,0x7
    80004814:	ee87a783          	lw	a5,-280(a5) # 8000b6f8 <_ZN19ConsumerProducerCPP9threadEndE>
    80004818:	04079a63          	bnez	a5,8000486c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    8000481c:	01093783          	ld	a5,16(s2)
    80004820:	0087b503          	ld	a0,8(a5)
    80004824:	ffffe097          	auipc	ra,0xffffe
    80004828:	a4c080e7          	jalr	-1460(ra) # 80002270 <_ZN9BufferCPP3getEv>
                i++;
    8000482c:	0019849b          	addiw	s1,s3,1
    80004830:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80004834:	0ff57513          	andi	a0,a0,255
    80004838:	00000097          	auipc	ra,0x0
    8000483c:	648080e7          	jalr	1608(ra) # 80004e80 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80004840:	05000793          	li	a5,80
    80004844:	02f4e4bb          	remw	s1,s1,a5
    80004848:	fc0494e3          	bnez	s1,80004810 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    8000484c:	fb9ff06f          	j	80004804 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80004850:	01093783          	ld	a5,16(s2)
    80004854:	0087b503          	ld	a0,8(a5)
    80004858:	ffffe097          	auipc	ra,0xffffe
    8000485c:	a18080e7          	jalr	-1512(ra) # 80002270 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80004860:	0ff57513          	andi	a0,a0,255
    80004864:	00000097          	auipc	ra,0x0
    80004868:	61c080e7          	jalr	1564(ra) # 80004e80 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    8000486c:	01093783          	ld	a5,16(s2)
    80004870:	0087b503          	ld	a0,8(a5)
    80004874:	ffffe097          	auipc	ra,0xffffe
    80004878:	a88080e7          	jalr	-1400(ra) # 800022fc <_ZN9BufferCPP6getCntEv>
    8000487c:	fca04ae3          	bgtz	a0,80004850 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80004880:	01093783          	ld	a5,16(s2)
    80004884:	0107b503          	ld	a0,16(a5)
    80004888:	00000097          	auipc	ra,0x0
    8000488c:	530080e7          	jalr	1328(ra) # 80004db8 <_ZN9Semaphore6signalEv>
        }
    80004890:	02813083          	ld	ra,40(sp)
    80004894:	02013403          	ld	s0,32(sp)
    80004898:	01813483          	ld	s1,24(sp)
    8000489c:	01013903          	ld	s2,16(sp)
    800048a0:	00813983          	ld	s3,8(sp)
    800048a4:	03010113          	addi	sp,sp,48
    800048a8:	00008067          	ret

00000000800048ac <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00113c23          	sd	ra,24(sp)
    800048b4:	00813823          	sd	s0,16(sp)
    800048b8:	00913423          	sd	s1,8(sp)
    800048bc:	01213023          	sd	s2,0(sp)
    800048c0:	02010413          	addi	s0,sp,32
    800048c4:	00050493          	mv	s1,a0
            int i = 0;
    800048c8:	00000913          	li	s2,0
            while (!threadEnd) {
    800048cc:	00007797          	auipc	a5,0x7
    800048d0:	e2c7a783          	lw	a5,-468(a5) # 8000b6f8 <_ZN19ConsumerProducerCPP9threadEndE>
    800048d4:	04079263          	bnez	a5,80004918 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    800048d8:	0104b783          	ld	a5,16(s1)
    800048dc:	0007a583          	lw	a1,0(a5)
    800048e0:	0305859b          	addiw	a1,a1,48
    800048e4:	0087b503          	ld	a0,8(a5)
    800048e8:	ffffe097          	auipc	ra,0xffffe
    800048ec:	8f8080e7          	jalr	-1800(ra) # 800021e0 <_ZN9BufferCPP3putEi>
                i++;
    800048f0:	0019071b          	addiw	a4,s2,1
    800048f4:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    800048f8:	0104b783          	ld	a5,16(s1)
    800048fc:	0007a783          	lw	a5,0(a5)
    80004900:	00e787bb          	addw	a5,a5,a4
    80004904:	00500513          	li	a0,5
    80004908:	02a7e53b          	remw	a0,a5,a0
    8000490c:	00000097          	auipc	ra,0x0
    80004910:	3dc080e7          	jalr	988(ra) # 80004ce8 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80004914:	fb9ff06f          	j	800048cc <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80004918:	0104b783          	ld	a5,16(s1)
    8000491c:	0107b503          	ld	a0,16(a5)
    80004920:	00000097          	auipc	ra,0x0
    80004924:	498080e7          	jalr	1176(ra) # 80004db8 <_ZN9Semaphore6signalEv>
        }
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	00013903          	ld	s2,0(sp)
    80004938:	02010113          	addi	sp,sp,32
    8000493c:	00008067          	ret

0000000080004940 <_ZN7WorkerA3runEv>:
    void run() override {
    80004940:	ff010113          	addi	sp,sp,-16
    80004944:	00113423          	sd	ra,8(sp)
    80004948:	00813023          	sd	s0,0(sp)
    8000494c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004950:	00000593          	li	a1,0
    80004954:	ffffe097          	auipc	ra,0xffffe
    80004958:	ef4080e7          	jalr	-268(ra) # 80002848 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000495c:	00813083          	ld	ra,8(sp)
    80004960:	00013403          	ld	s0,0(sp)
    80004964:	01010113          	addi	sp,sp,16
    80004968:	00008067          	ret

000000008000496c <_ZN7WorkerB3runEv>:
    void run() override {
    8000496c:	ff010113          	addi	sp,sp,-16
    80004970:	00113423          	sd	ra,8(sp)
    80004974:	00813023          	sd	s0,0(sp)
    80004978:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000497c:	00000593          	li	a1,0
    80004980:	ffffe097          	auipc	ra,0xffffe
    80004984:	f94080e7          	jalr	-108(ra) # 80002914 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004988:	00813083          	ld	ra,8(sp)
    8000498c:	00013403          	ld	s0,0(sp)
    80004990:	01010113          	addi	sp,sp,16
    80004994:	00008067          	ret

0000000080004998 <_ZN7WorkerC3runEv>:
    void run() override {
    80004998:	ff010113          	addi	sp,sp,-16
    8000499c:	00113423          	sd	ra,8(sp)
    800049a0:	00813023          	sd	s0,0(sp)
    800049a4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800049a8:	00000593          	li	a1,0
    800049ac:	ffffe097          	auipc	ra,0xffffe
    800049b0:	03c080e7          	jalr	60(ra) # 800029e8 <_ZN7WorkerC11workerBodyCEPv>
    }
    800049b4:	00813083          	ld	ra,8(sp)
    800049b8:	00013403          	ld	s0,0(sp)
    800049bc:	01010113          	addi	sp,sp,16
    800049c0:	00008067          	ret

00000000800049c4 <_ZN7WorkerD3runEv>:
    void run() override {
    800049c4:	ff010113          	addi	sp,sp,-16
    800049c8:	00113423          	sd	ra,8(sp)
    800049cc:	00813023          	sd	s0,0(sp)
    800049d0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800049d4:	00000593          	li	a1,0
    800049d8:	ffffe097          	auipc	ra,0xffffe
    800049dc:	190080e7          	jalr	400(ra) # 80002b68 <_ZN7WorkerD11workerBodyDEPv>
    }
    800049e0:	00813083          	ld	ra,8(sp)
    800049e4:	00013403          	ld	s0,0(sp)
    800049e8:	01010113          	addi	sp,sp,16
    800049ec:	00008067          	ret

00000000800049f0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800049f0:	ff010113          	addi	sp,sp,-16
    800049f4:	00113423          	sd	ra,8(sp)
    800049f8:	00813023          	sd	s0,0(sp)
    800049fc:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004a00:	01053583          	ld	a1,16(a0)
    80004a04:	ffffe097          	auipc	ra,0xffffe
    80004a08:	4bc080e7          	jalr	1212(ra) # 80002ec0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004a0c:	00813083          	ld	ra,8(sp)
    80004a10:	00013403          	ld	s0,0(sp)
    80004a14:	01010113          	addi	sp,sp,16
    80004a18:	00008067          	ret

0000000080004a1c <_ZN8Producer3runEv>:
    void run() override {
    80004a1c:	ff010113          	addi	sp,sp,-16
    80004a20:	00113423          	sd	ra,8(sp)
    80004a24:	00813023          	sd	s0,0(sp)
    80004a28:	01010413          	addi	s0,sp,16
        producer(td);
    80004a2c:	01053583          	ld	a1,16(a0)
    80004a30:	ffffe097          	auipc	ra,0xffffe
    80004a34:	550080e7          	jalr	1360(ra) # 80002f80 <_ZN8Producer8producerEPv>
    }
    80004a38:	00813083          	ld	ra,8(sp)
    80004a3c:	00013403          	ld	s0,0(sp)
    80004a40:	01010113          	addi	sp,sp,16
    80004a44:	00008067          	ret

0000000080004a48 <_ZN8Consumer3runEv>:
    void run() override {
    80004a48:	ff010113          	addi	sp,sp,-16
    80004a4c:	00113423          	sd	ra,8(sp)
    80004a50:	00813023          	sd	s0,0(sp)
    80004a54:	01010413          	addi	s0,sp,16
        consumer(td);
    80004a58:	01053583          	ld	a1,16(a0)
    80004a5c:	ffffe097          	auipc	ra,0xffffe
    80004a60:	5b8080e7          	jalr	1464(ra) # 80003014 <_ZN8Consumer8consumerEPv>
    }
    80004a64:	00813083          	ld	ra,8(sp)
    80004a68:	00013403          	ld	s0,0(sp)
    80004a6c:	01010113          	addi	sp,sp,16
    80004a70:	00008067          	ret

0000000080004a74 <_ZN3AAA18periodicActivationEv>:
    void periodicActivation() override{
    80004a74:	ff010113          	addi	sp,sp,-16
    80004a78:	00113423          	sd	ra,8(sp)
    80004a7c:	00813023          	sd	s0,0(sp)
    80004a80:	01010413          	addi	s0,sp,16
        alo();
    80004a84:	fffff097          	auipc	ra,0xfffff
    80004a88:	4d0080e7          	jalr	1232(ra) # 80003f54 <_Z3alov>
    }
    80004a8c:	00813083          	ld	ra,8(sp)
    80004a90:	00013403          	ld	s0,0(sp)
    80004a94:	01010113          	addi	sp,sp,16
    80004a98:	00008067          	ret

0000000080004a9c <_ZN6Thread6omotacEPv>:

Thread::Thread() {
    thread_create1(&myHandle, &omotac,this);
}

void Thread::omotac(void* arg) {
    80004a9c:	ff010113          	addi	sp,sp,-16
    80004aa0:	00113423          	sd	ra,8(sp)
    80004aa4:	00813023          	sd	s0,0(sp)
    80004aa8:	01010413          	addi	s0,sp,16
    Thread*t = (Thread*)arg;
    t->run();
    80004aac:	00053783          	ld	a5,0(a0)
    80004ab0:	0107b783          	ld	a5,16(a5)
    80004ab4:	000780e7          	jalr	a5
}
    80004ab8:	00813083          	ld	ra,8(sp)
    80004abc:	00013403          	ld	s0,0(sp)
    80004ac0:	01010113          	addi	sp,sp,16
    80004ac4:	00008067          	ret

0000000080004ac8 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80004ac8:	ff010113          	addi	sp,sp,-16
    80004acc:	00113423          	sd	ra,8(sp)
    80004ad0:	00813023          	sd	s0,0(sp)
    80004ad4:	01010413          	addi	s0,sp,16
    80004ad8:	00007797          	auipc	a5,0x7
    80004adc:	ae878793          	addi	a5,a5,-1304 # 8000b5c0 <_ZTV6Thread+0x10>
    80004ae0:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80004ae4:	00853503          	ld	a0,8(a0)
    80004ae8:	ffffc097          	auipc	ra,0xffffc
    80004aec:	784080e7          	jalr	1924(ra) # 8000126c <_Z8mem_freePv>
}
    80004af0:	00813083          	ld	ra,8(sp)
    80004af4:	00013403          	ld	s0,0(sp)
    80004af8:	01010113          	addi	sp,sp,16
    80004afc:	00008067          	ret

0000000080004b00 <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period): Thread() {
    this->period=period;
}

void PeriodicThread::run() {
    80004b00:	fe010113          	addi	sp,sp,-32
    80004b04:	00113c23          	sd	ra,24(sp)
    80004b08:	00813823          	sd	s0,16(sp)
    80004b0c:	00913423          	sd	s1,8(sp)
    80004b10:	02010413          	addi	s0,sp,32
    80004b14:	00050493          	mv	s1,a0

    while(flag){
    80004b18:	0104c783          	lbu	a5,16(s1)
    80004b1c:	02078263          	beqz	a5,80004b40 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80004b20:	0004b783          	ld	a5,0(s1)
    80004b24:	0187b783          	ld	a5,24(a5)
    80004b28:	00048513          	mv	a0,s1
    80004b2c:	000780e7          	jalr	a5
        time_sleep(period);
    80004b30:	0184b503          	ld	a0,24(s1)
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	8b0080e7          	jalr	-1872(ra) # 800013e4 <_Z10time_sleepm>
    while(flag){
    80004b3c:	fddff06f          	j	80004b18 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80004b40:	01813083          	ld	ra,24(sp)
    80004b44:	01013403          	ld	s0,16(sp)
    80004b48:	00813483          	ld	s1,8(sp)
    80004b4c:	02010113          	addi	sp,sp,32
    80004b50:	00008067          	ret

0000000080004b54 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80004b54:	ff010113          	addi	sp,sp,-16
    80004b58:	00113423          	sd	ra,8(sp)
    80004b5c:	00813023          	sd	s0,0(sp)
    80004b60:	01010413          	addi	s0,sp,16
    80004b64:	00007797          	auipc	a5,0x7
    80004b68:	a8478793          	addi	a5,a5,-1404 # 8000b5e8 <_ZTV9Semaphore+0x10>
    80004b6c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80004b70:	00853503          	ld	a0,8(a0)
    80004b74:	ffffc097          	auipc	ra,0xffffc
    80004b78:	7e0080e7          	jalr	2016(ra) # 80001354 <_Z9sem_closeP7Semafor>
}
    80004b7c:	00813083          	ld	ra,8(sp)
    80004b80:	00013403          	ld	s0,0(sp)
    80004b84:	01010113          	addi	sp,sp,16
    80004b88:	00008067          	ret

0000000080004b8c <_Znwm>:
void* operator new(size_t h){
    80004b8c:	ff010113          	addi	sp,sp,-16
    80004b90:	00113423          	sd	ra,8(sp)
    80004b94:	00813023          	sd	s0,0(sp)
    80004b98:	01010413          	addi	s0,sp,16
    return mem_alloc(h);
    80004b9c:	ffffc097          	auipc	ra,0xffffc
    80004ba0:	6a4080e7          	jalr	1700(ra) # 80001240 <_Z9mem_allocm>
}
    80004ba4:	00813083          	ld	ra,8(sp)
    80004ba8:	00013403          	ld	s0,0(sp)
    80004bac:	01010113          	addi	sp,sp,16
    80004bb0:	00008067          	ret

0000000080004bb4 <_ZdlPv>:
void operator delete(void* x){
    80004bb4:	ff010113          	addi	sp,sp,-16
    80004bb8:	00113423          	sd	ra,8(sp)
    80004bbc:	00813023          	sd	s0,0(sp)
    80004bc0:	01010413          	addi	s0,sp,16
    mem_free(x);
    80004bc4:	ffffc097          	auipc	ra,0xffffc
    80004bc8:	6a8080e7          	jalr	1704(ra) # 8000126c <_Z8mem_freePv>
}
    80004bcc:	00813083          	ld	ra,8(sp)
    80004bd0:	00013403          	ld	s0,0(sp)
    80004bd4:	01010113          	addi	sp,sp,16
    80004bd8:	00008067          	ret

0000000080004bdc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80004bdc:	fe010113          	addi	sp,sp,-32
    80004be0:	00113c23          	sd	ra,24(sp)
    80004be4:	00813823          	sd	s0,16(sp)
    80004be8:	00913423          	sd	s1,8(sp)
    80004bec:	02010413          	addi	s0,sp,32
    80004bf0:	00050493          	mv	s1,a0
}
    80004bf4:	00000097          	auipc	ra,0x0
    80004bf8:	ed4080e7          	jalr	-300(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004bfc:	00048513          	mv	a0,s1
    80004c00:	00000097          	auipc	ra,0x0
    80004c04:	fb4080e7          	jalr	-76(ra) # 80004bb4 <_ZdlPv>
    80004c08:	01813083          	ld	ra,24(sp)
    80004c0c:	01013403          	ld	s0,16(sp)
    80004c10:	00813483          	ld	s1,8(sp)
    80004c14:	02010113          	addi	sp,sp,32
    80004c18:	00008067          	ret

0000000080004c1c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80004c1c:	fe010113          	addi	sp,sp,-32
    80004c20:	00113c23          	sd	ra,24(sp)
    80004c24:	00813823          	sd	s0,16(sp)
    80004c28:	00913423          	sd	s1,8(sp)
    80004c2c:	02010413          	addi	s0,sp,32
    80004c30:	00050493          	mv	s1,a0
}
    80004c34:	00000097          	auipc	ra,0x0
    80004c38:	f20080e7          	jalr	-224(ra) # 80004b54 <_ZN9SemaphoreD1Ev>
    80004c3c:	00048513          	mv	a0,s1
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	f74080e7          	jalr	-140(ra) # 80004bb4 <_ZdlPv>
    80004c48:	01813083          	ld	ra,24(sp)
    80004c4c:	01013403          	ld	s0,16(sp)
    80004c50:	00813483          	ld	s1,8(sp)
    80004c54:	02010113          	addi	sp,sp,32
    80004c58:	00008067          	ret

0000000080004c5c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80004c5c:	ff010113          	addi	sp,sp,-16
    80004c60:	00113423          	sd	ra,8(sp)
    80004c64:	00813023          	sd	s0,0(sp)
    80004c68:	01010413          	addi	s0,sp,16
    80004c6c:	00007797          	auipc	a5,0x7
    80004c70:	95478793          	addi	a5,a5,-1708 # 8000b5c0 <_ZTV6Thread+0x10>
    80004c74:	00f53023          	sd	a5,0(a0)
    thread_create1(&myHandle,body,arg);
    80004c78:	00850513          	addi	a0,a0,8
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	828080e7          	jalr	-2008(ra) # 800014a4 <_Z14thread_create1PP3NitPFvPvES2_>
}
    80004c84:	00813083          	ld	ra,8(sp)
    80004c88:	00013403          	ld	s0,0(sp)
    80004c8c:	01010113          	addi	sp,sp,16
    80004c90:	00008067          	ret

0000000080004c94 <_ZN6Thread5startEv>:
int Thread::start() {
    80004c94:	ff010113          	addi	sp,sp,-16
    80004c98:	00113423          	sd	ra,8(sp)
    80004c9c:	00813023          	sd	s0,0(sp)
    80004ca0:	01010413          	addi	s0,sp,16
    return putScheduler(myHandle);
    80004ca4:	00853503          	ld	a0,8(a0)
    80004ca8:	ffffc097          	auipc	ra,0xffffc
    80004cac:	7d0080e7          	jalr	2000(ra) # 80001478 <_Z12putSchedulerP3Nit>
}
    80004cb0:	00813083          	ld	ra,8(sp)
    80004cb4:	00013403          	ld	s0,0(sp)
    80004cb8:	01010113          	addi	sp,sp,16
    80004cbc:	00008067          	ret

0000000080004cc0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80004cc0:	ff010113          	addi	sp,sp,-16
    80004cc4:	00113423          	sd	ra,8(sp)
    80004cc8:	00813023          	sd	s0,0(sp)
    80004ccc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80004cd0:	ffffc097          	auipc	ra,0xffffc
    80004cd4:	62c080e7          	jalr	1580(ra) # 800012fc <_Z15thread_dispatchv>
}
    80004cd8:	00813083          	ld	ra,8(sp)
    80004cdc:	00013403          	ld	s0,0(sp)
    80004ce0:	01010113          	addi	sp,sp,16
    80004ce4:	00008067          	ret

0000000080004ce8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80004ce8:	ff010113          	addi	sp,sp,-16
    80004cec:	00113423          	sd	ra,8(sp)
    80004cf0:	00813023          	sd	s0,0(sp)
    80004cf4:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80004cf8:	ffffc097          	auipc	ra,0xffffc
    80004cfc:	6ec080e7          	jalr	1772(ra) # 800013e4 <_Z10time_sleepm>
}
    80004d00:	00813083          	ld	ra,8(sp)
    80004d04:	00013403          	ld	s0,0(sp)
    80004d08:	01010113          	addi	sp,sp,16
    80004d0c:	00008067          	ret

0000000080004d10 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80004d10:	ff010113          	addi	sp,sp,-16
    80004d14:	00113423          	sd	ra,8(sp)
    80004d18:	00813023          	sd	s0,0(sp)
    80004d1c:	01010413          	addi	s0,sp,16
    80004d20:	00007797          	auipc	a5,0x7
    80004d24:	8a078793          	addi	a5,a5,-1888 # 8000b5c0 <_ZTV6Thread+0x10>
    80004d28:	00f53023          	sd	a5,0(a0)
    thread_create1(&myHandle, &omotac,this);
    80004d2c:	00050613          	mv	a2,a0
    80004d30:	00000597          	auipc	a1,0x0
    80004d34:	d6c58593          	addi	a1,a1,-660 # 80004a9c <_ZN6Thread6omotacEPv>
    80004d38:	00850513          	addi	a0,a0,8
    80004d3c:	ffffc097          	auipc	ra,0xffffc
    80004d40:	768080e7          	jalr	1896(ra) # 800014a4 <_Z14thread_create1PP3NitPFvPvES2_>
}
    80004d44:	00813083          	ld	ra,8(sp)
    80004d48:	00013403          	ld	s0,0(sp)
    80004d4c:	01010113          	addi	sp,sp,16
    80004d50:	00008067          	ret

0000000080004d54 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80004d54:	ff010113          	addi	sp,sp,-16
    80004d58:	00113423          	sd	ra,8(sp)
    80004d5c:	00813023          	sd	s0,0(sp)
    80004d60:	01010413          	addi	s0,sp,16
    80004d64:	00007797          	auipc	a5,0x7
    80004d68:	88478793          	addi	a5,a5,-1916 # 8000b5e8 <_ZTV9Semaphore+0x10>
    80004d6c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80004d70:	00850513          	addi	a0,a0,8
    80004d74:	ffffc097          	auipc	ra,0xffffc
    80004d78:	5ac080e7          	jalr	1452(ra) # 80001320 <_Z8sem_openPP7Semaforj>
}
    80004d7c:	00813083          	ld	ra,8(sp)
    80004d80:	00013403          	ld	s0,0(sp)
    80004d84:	01010113          	addi	sp,sp,16
    80004d88:	00008067          	ret

0000000080004d8c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80004d8c:	ff010113          	addi	sp,sp,-16
    80004d90:	00113423          	sd	ra,8(sp)
    80004d94:	00813023          	sd	s0,0(sp)
    80004d98:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80004d9c:	00853503          	ld	a0,8(a0)
    80004da0:	ffffc097          	auipc	ra,0xffffc
    80004da4:	5e4080e7          	jalr	1508(ra) # 80001384 <_Z8sem_waitP7Semafor>
}
    80004da8:	00813083          	ld	ra,8(sp)
    80004dac:	00013403          	ld	s0,0(sp)
    80004db0:	01010113          	addi	sp,sp,16
    80004db4:	00008067          	ret

0000000080004db8 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80004db8:	ff010113          	addi	sp,sp,-16
    80004dbc:	00113423          	sd	ra,8(sp)
    80004dc0:	00813023          	sd	s0,0(sp)
    80004dc4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004dc8:	00853503          	ld	a0,8(a0)
    80004dcc:	ffffc097          	auipc	ra,0xffffc
    80004dd0:	5e8080e7          	jalr	1512(ra) # 800013b4 <_Z10sem_signalP7Semafor>
}
    80004dd4:	00813083          	ld	ra,8(sp)
    80004dd8:	00013403          	ld	s0,0(sp)
    80004ddc:	01010113          	addi	sp,sp,16
    80004de0:	00008067          	ret

0000000080004de4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period): Thread() {
    80004de4:	fe010113          	addi	sp,sp,-32
    80004de8:	00113c23          	sd	ra,24(sp)
    80004dec:	00813823          	sd	s0,16(sp)
    80004df0:	00913423          	sd	s1,8(sp)
    80004df4:	01213023          	sd	s2,0(sp)
    80004df8:	02010413          	addi	s0,sp,32
    80004dfc:	00050493          	mv	s1,a0
    80004e00:	00058913          	mv	s2,a1
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	f0c080e7          	jalr	-244(ra) # 80004d10 <_ZN6ThreadC1Ev>
    80004e0c:	00006797          	auipc	a5,0x6
    80004e10:	7fc78793          	addi	a5,a5,2044 # 8000b608 <_ZTV14PeriodicThread+0x10>
    80004e14:	00f4b023          	sd	a5,0(s1)
    80004e18:	00100793          	li	a5,1
    80004e1c:	00f48823          	sb	a5,16(s1)
    this->period=period;
    80004e20:	0124bc23          	sd	s2,24(s1)
}
    80004e24:	01813083          	ld	ra,24(sp)
    80004e28:	01013403          	ld	s0,16(sp)
    80004e2c:	00813483          	ld	s1,8(sp)
    80004e30:	00013903          	ld	s2,0(sp)
    80004e34:	02010113          	addi	sp,sp,32
    80004e38:	00008067          	ret

0000000080004e3c <_ZN14PeriodicThread8zaustaviEv>:

void PeriodicThread::zaustavi() {
    80004e3c:	ff010113          	addi	sp,sp,-16
    80004e40:	00813423          	sd	s0,8(sp)
    80004e44:	01010413          	addi	s0,sp,16
    flag=false;
    80004e48:	00050823          	sb	zero,16(a0)

}
    80004e4c:	00813403          	ld	s0,8(sp)
    80004e50:	01010113          	addi	sp,sp,16
    80004e54:	00008067          	ret

0000000080004e58 <_ZN7Console4getcEv>:

/////////////////////////////////////////////////////////////////////////
char Console::getc() {
    80004e58:	ff010113          	addi	sp,sp,-16
    80004e5c:	00113423          	sd	ra,8(sp)
    80004e60:	00813023          	sd	s0,0(sp)
    80004e64:	01010413          	addi	s0,sp,16
    return ::getc();
    80004e68:	ffffc097          	auipc	ra,0xffffc
    80004e6c:	5ac080e7          	jalr	1452(ra) # 80001414 <_Z4getcv>
}
    80004e70:	00813083          	ld	ra,8(sp)
    80004e74:	00013403          	ld	s0,0(sp)
    80004e78:	01010113          	addi	sp,sp,16
    80004e7c:	00008067          	ret

0000000080004e80 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80004e80:	ff010113          	addi	sp,sp,-16
    80004e84:	00113423          	sd	ra,8(sp)
    80004e88:	00813023          	sd	s0,0(sp)
    80004e8c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80004e90:	ffffc097          	auipc	ra,0xffffc
    80004e94:	5c0080e7          	jalr	1472(ra) # 80001450 <_Z4putcc>
}
    80004e98:	00813083          	ld	ra,8(sp)
    80004e9c:	00013403          	ld	s0,0(sp)
    80004ea0:	01010113          	addi	sp,sp,16
    80004ea4:	00008067          	ret

0000000080004ea8 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80004ea8:	ff010113          	addi	sp,sp,-16
    80004eac:	00813423          	sd	s0,8(sp)
    80004eb0:	01010413          	addi	s0,sp,16
    80004eb4:	00813403          	ld	s0,8(sp)
    80004eb8:	01010113          	addi	sp,sp,16
    80004ebc:	00008067          	ret

0000000080004ec0 <_ZN14PeriodicThread18periodicActivationEv>:
private:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
protected:
    virtual void periodicActivation () {}
    80004ec0:	ff010113          	addi	sp,sp,-16
    80004ec4:	00813423          	sd	s0,8(sp)
    80004ec8:	01010413          	addi	s0,sp,16
    80004ecc:	00813403          	ld	s0,8(sp)
    80004ed0:	01010113          	addi	sp,sp,16
    80004ed4:	00008067          	ret

0000000080004ed8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80004ed8:	ff010113          	addi	sp,sp,-16
    80004edc:	00113423          	sd	ra,8(sp)
    80004ee0:	00813023          	sd	s0,0(sp)
    80004ee4:	01010413          	addi	s0,sp,16
    80004ee8:	00006797          	auipc	a5,0x6
    80004eec:	72078793          	addi	a5,a5,1824 # 8000b608 <_ZTV14PeriodicThread+0x10>
    80004ef0:	00f53023          	sd	a5,0(a0)
    80004ef4:	00000097          	auipc	ra,0x0
    80004ef8:	bd4080e7          	jalr	-1068(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004efc:	00813083          	ld	ra,8(sp)
    80004f00:	00013403          	ld	s0,0(sp)
    80004f04:	01010113          	addi	sp,sp,16
    80004f08:	00008067          	ret

0000000080004f0c <_ZN14PeriodicThreadD0Ev>:
    80004f0c:	fe010113          	addi	sp,sp,-32
    80004f10:	00113c23          	sd	ra,24(sp)
    80004f14:	00813823          	sd	s0,16(sp)
    80004f18:	00913423          	sd	s1,8(sp)
    80004f1c:	02010413          	addi	s0,sp,32
    80004f20:	00050493          	mv	s1,a0
    80004f24:	00006797          	auipc	a5,0x6
    80004f28:	6e478793          	addi	a5,a5,1764 # 8000b608 <_ZTV14PeriodicThread+0x10>
    80004f2c:	00f53023          	sd	a5,0(a0)
    80004f30:	00000097          	auipc	ra,0x0
    80004f34:	b98080e7          	jalr	-1128(ra) # 80004ac8 <_ZN6ThreadD1Ev>
    80004f38:	00048513          	mv	a0,s1
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	c78080e7          	jalr	-904(ra) # 80004bb4 <_ZdlPv>
    80004f44:	01813083          	ld	ra,24(sp)
    80004f48:	01013403          	ld	s0,16(sp)
    80004f4c:	00813483          	ld	s1,8(sp)
    80004f50:	02010113          	addi	sp,sp,32
    80004f54:	00008067          	ret

0000000080004f58 <_ZN7Konzola7putulazEi>:
Bafer* Konzola::baferizlaz = nullptr;
Bafer* Konzola::baferulaz = nullptr;

int Konzola::kapacitet=1024;

void Konzola::putulaz(int val) {
    80004f58:	f9010113          	addi	sp,sp,-112
    80004f5c:	06113423          	sd	ra,104(sp)
    80004f60:	06813023          	sd	s0,96(sp)
    80004f64:	04913c23          	sd	s1,88(sp)
    80004f68:	05213823          	sd	s2,80(sp)
    80004f6c:	05313423          	sd	s3,72(sp)
    80004f70:	07010413          	addi	s0,sp,112
    80004f74:	00050493          	mv	s1,a0
    if(baferulaz==nullptr) {
    80004f78:	00006797          	auipc	a5,0x6
    80004f7c:	7b07b783          	ld	a5,1968(a5) # 8000b728 <_ZN7Konzola9baferulazE>
    80004f80:	02078a63          	beqz	a5,80004fb4 <_ZN7Konzola7putulazEi+0x5c>
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferulaz=Bafer(kapacitet);
    }
    baferulaz->put(val);
    80004f84:	00048593          	mv	a1,s1
    80004f88:	00006517          	auipc	a0,0x6
    80004f8c:	7a053503          	ld	a0,1952(a0) # 8000b728 <_ZN7Konzola9baferulazE>
    80004f90:	ffffd097          	auipc	ra,0xffffd
    80004f94:	e64080e7          	jalr	-412(ra) # 80001df4 <_ZN5Bafer3putEi>
}
    80004f98:	06813083          	ld	ra,104(sp)
    80004f9c:	06013403          	ld	s0,96(sp)
    80004fa0:	05813483          	ld	s1,88(sp)
    80004fa4:	05013903          	ld	s2,80(sp)
    80004fa8:	04813983          	ld	s3,72(sp)
    80004fac:	07010113          	addi	sp,sp,112
    80004fb0:	00008067          	ret
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
    80004fb4:	00006917          	auipc	s2,0x6
    80004fb8:	67490913          	addi	s2,s2,1652 # 8000b628 <_ZN7Konzola9kapacitetE>
    80004fbc:	00092783          	lw	a5,0(s2)
    80004fc0:	00379513          	slli	a0,a5,0x3
    80004fc4:	40f50533          	sub	a0,a0,a5
    80004fc8:	00351513          	slli	a0,a0,0x3
    80004fcc:	00000097          	auipc	ra,0x0
    80004fd0:	36c080e7          	jalr	876(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80004fd4:	00006997          	auipc	s3,0x6
    80004fd8:	75498993          	addi	s3,s3,1876 # 8000b728 <_ZN7Konzola9baferulazE>
    80004fdc:	00a9b023          	sd	a0,0(s3)
        *baferulaz=Bafer(kapacitet);
    80004fe0:	00092583          	lw	a1,0(s2)
    80004fe4:	f9840913          	addi	s2,s0,-104
    80004fe8:	00090513          	mv	a0,s2
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	d0c080e7          	jalr	-756(ra) # 80001cf8 <_ZN5BaferC1Ei>
    80004ff4:	0009b783          	ld	a5,0(s3)
    80004ff8:	fa043803          	ld	a6,-96(s0)
    80004ffc:	fa843503          	ld	a0,-88(s0)
    80005000:	fb043583          	ld	a1,-80(s0)
    80005004:	fb843603          	ld	a2,-72(s0)
    80005008:	fc043683          	ld	a3,-64(s0)
    8000500c:	fc843703          	ld	a4,-56(s0)
    80005010:	f9843883          	ld	a7,-104(s0)
    80005014:	0117b023          	sd	a7,0(a5)
    80005018:	0107b423          	sd	a6,8(a5)
    8000501c:	00a7b823          	sd	a0,16(a5)
    80005020:	00b7bc23          	sd	a1,24(a5)
    80005024:	02c7b023          	sd	a2,32(a5)
    80005028:	02d7b423          	sd	a3,40(a5)
    8000502c:	02e7b823          	sd	a4,48(a5)
    80005030:	00090513          	mv	a0,s2
    80005034:	ffffd097          	auipc	ra,0xffffd
    80005038:	da8080e7          	jalr	-600(ra) # 80001ddc <_ZN5BaferD1Ev>
    8000503c:	f49ff06f          	j	80004f84 <_ZN7Konzola7putulazEi+0x2c>

0000000080005040 <_ZN7Konzola7getulazEv>:

int Konzola::getulaz() {
    80005040:	fa010113          	addi	sp,sp,-96
    80005044:	04113c23          	sd	ra,88(sp)
    80005048:	04813823          	sd	s0,80(sp)
    8000504c:	04913423          	sd	s1,72(sp)
    80005050:	05213023          	sd	s2,64(sp)
    80005054:	06010413          	addi	s0,sp,96
    if(baferulaz==nullptr) {
    80005058:	00006797          	auipc	a5,0x6
    8000505c:	6d07b783          	ld	a5,1744(a5) # 8000b728 <_ZN7Konzola9baferulazE>
    80005060:	02078663          	beqz	a5,8000508c <_ZN7Konzola7getulazEv+0x4c>
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferulaz=Bafer(kapacitet);
    }
    return baferulaz->get();
    80005064:	00006517          	auipc	a0,0x6
    80005068:	6c453503          	ld	a0,1732(a0) # 8000b728 <_ZN7Konzola9baferulazE>
    8000506c:	ffffd097          	auipc	ra,0xffffd
    80005070:	e58080e7          	jalr	-424(ra) # 80001ec4 <_ZN5Bafer3getEv>
}
    80005074:	05813083          	ld	ra,88(sp)
    80005078:	05013403          	ld	s0,80(sp)
    8000507c:	04813483          	ld	s1,72(sp)
    80005080:	04013903          	ld	s2,64(sp)
    80005084:	06010113          	addi	sp,sp,96
    80005088:	00008067          	ret
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
    8000508c:	00006497          	auipc	s1,0x6
    80005090:	59c48493          	addi	s1,s1,1436 # 8000b628 <_ZN7Konzola9kapacitetE>
    80005094:	0004a783          	lw	a5,0(s1)
    80005098:	00379513          	slli	a0,a5,0x3
    8000509c:	40f50533          	sub	a0,a0,a5
    800050a0:	00351513          	slli	a0,a0,0x3
    800050a4:	00000097          	auipc	ra,0x0
    800050a8:	294080e7          	jalr	660(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    800050ac:	00006917          	auipc	s2,0x6
    800050b0:	67c90913          	addi	s2,s2,1660 # 8000b728 <_ZN7Konzola9baferulazE>
    800050b4:	00a93023          	sd	a0,0(s2)
        *baferulaz=Bafer(kapacitet);
    800050b8:	0004a583          	lw	a1,0(s1)
    800050bc:	fa840493          	addi	s1,s0,-88
    800050c0:	00048513          	mv	a0,s1
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	c34080e7          	jalr	-972(ra) # 80001cf8 <_ZN5BaferC1Ei>
    800050cc:	00093783          	ld	a5,0(s2)
    800050d0:	fb043803          	ld	a6,-80(s0)
    800050d4:	fb843503          	ld	a0,-72(s0)
    800050d8:	fc043583          	ld	a1,-64(s0)
    800050dc:	fc843603          	ld	a2,-56(s0)
    800050e0:	fd043683          	ld	a3,-48(s0)
    800050e4:	fd843703          	ld	a4,-40(s0)
    800050e8:	fa843883          	ld	a7,-88(s0)
    800050ec:	0117b023          	sd	a7,0(a5)
    800050f0:	0107b423          	sd	a6,8(a5)
    800050f4:	00a7b823          	sd	a0,16(a5)
    800050f8:	00b7bc23          	sd	a1,24(a5)
    800050fc:	02c7b023          	sd	a2,32(a5)
    80005100:	02d7b423          	sd	a3,40(a5)
    80005104:	02e7b823          	sd	a4,48(a5)
    80005108:	00048513          	mv	a0,s1
    8000510c:	ffffd097          	auipc	ra,0xffffd
    80005110:	cd0080e7          	jalr	-816(ra) # 80001ddc <_ZN5BaferD1Ev>
    80005114:	f51ff06f          	j	80005064 <_ZN7Konzola7getulazEv+0x24>

0000000080005118 <_ZN7Konzola8putizlazEi>:

void Konzola::putizlaz(int val) {
    80005118:	f9010113          	addi	sp,sp,-112
    8000511c:	06113423          	sd	ra,104(sp)
    80005120:	06813023          	sd	s0,96(sp)
    80005124:	04913c23          	sd	s1,88(sp)
    80005128:	05213823          	sd	s2,80(sp)
    8000512c:	05313423          	sd	s3,72(sp)
    80005130:	07010413          	addi	s0,sp,112
    80005134:	00050493          	mv	s1,a0
    if(baferizlaz==nullptr) {
    80005138:	00006797          	auipc	a5,0x6
    8000513c:	5f87b783          	ld	a5,1528(a5) # 8000b730 <_ZN7Konzola10baferizlazE>
    80005140:	02078a63          	beqz	a5,80005174 <_ZN7Konzola8putizlazEi+0x5c>
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferizlaz=Bafer(kapacitet);
    }
    baferizlaz->put(val);
    80005144:	00048593          	mv	a1,s1
    80005148:	00006517          	auipc	a0,0x6
    8000514c:	5e853503          	ld	a0,1512(a0) # 8000b730 <_ZN7Konzola10baferizlazE>
    80005150:	ffffd097          	auipc	ra,0xffffd
    80005154:	ca4080e7          	jalr	-860(ra) # 80001df4 <_ZN5Bafer3putEi>
}
    80005158:	06813083          	ld	ra,104(sp)
    8000515c:	06013403          	ld	s0,96(sp)
    80005160:	05813483          	ld	s1,88(sp)
    80005164:	05013903          	ld	s2,80(sp)
    80005168:	04813983          	ld	s3,72(sp)
    8000516c:	07010113          	addi	sp,sp,112
    80005170:	00008067          	ret
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
    80005174:	00006917          	auipc	s2,0x6
    80005178:	4b490913          	addi	s2,s2,1204 # 8000b628 <_ZN7Konzola9kapacitetE>
    8000517c:	00092783          	lw	a5,0(s2)
    80005180:	00379513          	slli	a0,a5,0x3
    80005184:	40f50533          	sub	a0,a0,a5
    80005188:	00351513          	slli	a0,a0,0x3
    8000518c:	00000097          	auipc	ra,0x0
    80005190:	1ac080e7          	jalr	428(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80005194:	00006997          	auipc	s3,0x6
    80005198:	59498993          	addi	s3,s3,1428 # 8000b728 <_ZN7Konzola9baferulazE>
    8000519c:	00a9b423          	sd	a0,8(s3)
        *baferizlaz=Bafer(kapacitet);
    800051a0:	00092583          	lw	a1,0(s2)
    800051a4:	f9840913          	addi	s2,s0,-104
    800051a8:	00090513          	mv	a0,s2
    800051ac:	ffffd097          	auipc	ra,0xffffd
    800051b0:	b4c080e7          	jalr	-1204(ra) # 80001cf8 <_ZN5BaferC1Ei>
    800051b4:	0089b783          	ld	a5,8(s3)
    800051b8:	fa043803          	ld	a6,-96(s0)
    800051bc:	fa843503          	ld	a0,-88(s0)
    800051c0:	fb043583          	ld	a1,-80(s0)
    800051c4:	fb843603          	ld	a2,-72(s0)
    800051c8:	fc043683          	ld	a3,-64(s0)
    800051cc:	fc843703          	ld	a4,-56(s0)
    800051d0:	f9843883          	ld	a7,-104(s0)
    800051d4:	0117b023          	sd	a7,0(a5)
    800051d8:	0107b423          	sd	a6,8(a5)
    800051dc:	00a7b823          	sd	a0,16(a5)
    800051e0:	00b7bc23          	sd	a1,24(a5)
    800051e4:	02c7b023          	sd	a2,32(a5)
    800051e8:	02d7b423          	sd	a3,40(a5)
    800051ec:	02e7b823          	sd	a4,48(a5)
    800051f0:	00090513          	mv	a0,s2
    800051f4:	ffffd097          	auipc	ra,0xffffd
    800051f8:	be8080e7          	jalr	-1048(ra) # 80001ddc <_ZN5BaferD1Ev>
    800051fc:	f49ff06f          	j	80005144 <_ZN7Konzola8putizlazEi+0x2c>

0000000080005200 <_ZN7Konzola8getizlazEv>:

int Konzola::getizlaz() {
    80005200:	fa010113          	addi	sp,sp,-96
    80005204:	04113c23          	sd	ra,88(sp)
    80005208:	04813823          	sd	s0,80(sp)
    8000520c:	04913423          	sd	s1,72(sp)
    80005210:	05213023          	sd	s2,64(sp)
    80005214:	06010413          	addi	s0,sp,96
    if(baferizlaz==nullptr) {
    80005218:	00006797          	auipc	a5,0x6
    8000521c:	5187b783          	ld	a5,1304(a5) # 8000b730 <_ZN7Konzola10baferizlazE>
    80005220:	02078663          	beqz	a5,8000524c <_ZN7Konzola8getizlazEv+0x4c>
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferizlaz=Bafer(kapacitet);
    }
    return baferizlaz->get();
    80005224:	00006517          	auipc	a0,0x6
    80005228:	50c53503          	ld	a0,1292(a0) # 8000b730 <_ZN7Konzola10baferizlazE>
    8000522c:	ffffd097          	auipc	ra,0xffffd
    80005230:	c98080e7          	jalr	-872(ra) # 80001ec4 <_ZN5Bafer3getEv>
}
    80005234:	05813083          	ld	ra,88(sp)
    80005238:	05013403          	ld	s0,80(sp)
    8000523c:	04813483          	ld	s1,72(sp)
    80005240:	04013903          	ld	s2,64(sp)
    80005244:	06010113          	addi	sp,sp,96
    80005248:	00008067          	ret
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
    8000524c:	00006497          	auipc	s1,0x6
    80005250:	3dc48493          	addi	s1,s1,988 # 8000b628 <_ZN7Konzola9kapacitetE>
    80005254:	0004a783          	lw	a5,0(s1)
    80005258:	00379513          	slli	a0,a5,0x3
    8000525c:	40f50533          	sub	a0,a0,a5
    80005260:	00351513          	slli	a0,a0,0x3
    80005264:	00000097          	auipc	ra,0x0
    80005268:	0d4080e7          	jalr	212(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    8000526c:	00006917          	auipc	s2,0x6
    80005270:	4bc90913          	addi	s2,s2,1212 # 8000b728 <_ZN7Konzola9baferulazE>
    80005274:	00a93423          	sd	a0,8(s2)
        *baferizlaz=Bafer(kapacitet);
    80005278:	0004a583          	lw	a1,0(s1)
    8000527c:	fa840493          	addi	s1,s0,-88
    80005280:	00048513          	mv	a0,s1
    80005284:	ffffd097          	auipc	ra,0xffffd
    80005288:	a74080e7          	jalr	-1420(ra) # 80001cf8 <_ZN5BaferC1Ei>
    8000528c:	00893783          	ld	a5,8(s2)
    80005290:	fb043803          	ld	a6,-80(s0)
    80005294:	fb843503          	ld	a0,-72(s0)
    80005298:	fc043583          	ld	a1,-64(s0)
    8000529c:	fc843603          	ld	a2,-56(s0)
    800052a0:	fd043683          	ld	a3,-48(s0)
    800052a4:	fd843703          	ld	a4,-40(s0)
    800052a8:	fa843883          	ld	a7,-88(s0)
    800052ac:	0117b023          	sd	a7,0(a5)
    800052b0:	0107b423          	sd	a6,8(a5)
    800052b4:	00a7b823          	sd	a0,16(a5)
    800052b8:	00b7bc23          	sd	a1,24(a5)
    800052bc:	02c7b023          	sd	a2,32(a5)
    800052c0:	02d7b423          	sd	a3,40(a5)
    800052c4:	02e7b823          	sd	a4,48(a5)
    800052c8:	00048513          	mv	a0,s1
    800052cc:	ffffd097          	auipc	ra,0xffffd
    800052d0:	b10080e7          	jalr	-1264(ra) # 80001ddc <_ZN5BaferD1Ev>
    800052d4:	f51ff06f          	j	80005224 <_ZN7Konzola8getizlazEv+0x24>

00000000800052d8 <_ZN7Konzola8getcntbiEv>:

int Konzola::getcntbi() {
    800052d8:	ff010113          	addi	sp,sp,-16
    800052dc:	00113423          	sd	ra,8(sp)
    800052e0:	00813023          	sd	s0,0(sp)
    800052e4:	01010413          	addi	s0,sp,16
    return baferizlaz->getCnt();
    800052e8:	00006517          	auipc	a0,0x6
    800052ec:	44853503          	ld	a0,1096(a0) # 8000b730 <_ZN7Konzola10baferizlazE>
    800052f0:	ffffd097          	auipc	ra,0xffffd
    800052f4:	ca0080e7          	jalr	-864(ra) # 80001f90 <_ZN5Bafer6getCntEv>
}
    800052f8:	00813083          	ld	ra,8(sp)
    800052fc:	00013403          	ld	s0,0(sp)
    80005300:	01010113          	addi	sp,sp,16
    80005304:	00008067          	ret

0000000080005308 <_ZN7Konzola8getcntbuEv>:

int Konzola::getcntbu() {
    80005308:	ff010113          	addi	sp,sp,-16
    8000530c:	00113423          	sd	ra,8(sp)
    80005310:	00813023          	sd	s0,0(sp)
    80005314:	01010413          	addi	s0,sp,16
    return baferulaz->getCnt();
    80005318:	00006517          	auipc	a0,0x6
    8000531c:	41053503          	ld	a0,1040(a0) # 8000b728 <_ZN7Konzola9baferulazE>
    80005320:	ffffd097          	auipc	ra,0xffffd
    80005324:	c70080e7          	jalr	-912(ra) # 80001f90 <_ZN5Bafer6getCntEv>
}
    80005328:	00813083          	ld	ra,8(sp)
    8000532c:	00013403          	ld	s0,0(sp)
    80005330:	01010113          	addi	sp,sp,16
    80005334:	00008067          	ret

0000000080005338 <_ZN8Memorija9alokacijaEm>:
#include "../h/memorija.h"
#include "../h/print.h"

Memorija::struktura* Memorija::head = nullptr;

void* Memorija::alokacija(size_t size) {
    80005338:	ff010113          	addi	sp,sp,-16
    8000533c:	00813423          	sd	s0,8(sp)
    80005340:	01010413          	addi	s0,sp,16

    static void Print();
private:

    static void CreateMemorija() {
        if (head == nullptr) {
    80005344:	00006797          	auipc	a5,0x6
    80005348:	3f47b783          	ld	a5,1012(a5) # 8000b738 <_ZN8Memorija4headE>
    8000534c:	02078a63          	beqz	a5,80005380 <_ZN8Memorija9alokacijaEm+0x48>

    CreateMemorija();

    if(size<0) return nullptr;

    size+=sizeof(struktura);
    80005350:	01850793          	addi	a5,a0,24

    if(size%MEM_BLOCK_SIZE) size+= MEM_BLOCK_SIZE - size%MEM_BLOCK_SIZE; // ????
    80005354:	03f7f713          	andi	a4,a5,63
    80005358:	00070663          	beqz	a4,80005364 <_ZN8Memorija9alokacijaEm+0x2c>
    8000535c:	fc07f793          	andi	a5,a5,-64
    80005360:	04078793          	addi	a5,a5,64

    struktura *temp = head;
    80005364:	00006517          	auipc	a0,0x6
    80005368:	3d453503          	ld	a0,980(a0) # 8000b738 <_ZN8Memorija4headE>
    while(temp){
    8000536c:	04050c63          	beqz	a0,800053c4 <_ZN8Memorija9alokacijaEm+0x8c>
        if(temp->size>=size) break;
    80005370:	01053703          	ld	a4,16(a0)
    80005374:	04f77863          	bgeu	a4,a5,800053c4 <_ZN8Memorija9alokacijaEm+0x8c>
        temp=temp->next;
    80005378:	00053503          	ld	a0,0(a0)
    while(temp){
    8000537c:	ff1ff06f          	j	8000536c <_ZN8Memorija9alokacijaEm+0x34>
            head = (struktura * )(HEAP_START_ADDR);
    80005380:	00006797          	auipc	a5,0x6
    80005384:	2d07b783          	ld	a5,720(a5) # 8000b650 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005388:	0007b683          	ld	a3,0(a5)
    8000538c:	00006717          	auipc	a4,0x6
    80005390:	3ac70713          	addi	a4,a4,940 # 8000b738 <_ZN8Memorija4headE>
    80005394:	00d73023          	sd	a3,0(a4)
            head->next = nullptr;
    80005398:	0006b023          	sd	zero,0(a3)
            head->prev = nullptr;
    8000539c:	00073703          	ld	a4,0(a4)
    800053a0:	00073423          	sd	zero,8(a4)
            head->size = (char *) HEAP_START_ADDR - (char *) HEAP_END_ADDR - sizeof(struktura);
    800053a4:	0007b783          	ld	a5,0(a5)
    800053a8:	00006697          	auipc	a3,0x6
    800053ac:	2e86b683          	ld	a3,744(a3) # 8000b690 <_GLOBAL_OFFSET_TABLE_+0x60>
    800053b0:	0006b683          	ld	a3,0(a3)
    800053b4:	40d787b3          	sub	a5,a5,a3
    800053b8:	fe878793          	addi	a5,a5,-24
    800053bc:	00f73823          	sd	a5,16(a4)
    800053c0:	f91ff06f          	j	80005350 <_ZN8Memorija9alokacijaEm+0x18>
    }

    if(temp == nullptr) return nullptr;
    800053c4:	04050463          	beqz	a0,8000540c <_ZN8Memorija9alokacijaEm+0xd4>

    if(temp->size>size) {
    800053c8:	01053703          	ld	a4,16(a0)
    800053cc:	04e7fc63          	bgeu	a5,a4,80005424 <_ZN8Memorija9alokacijaEm+0xec>
        // 10-3-4 -> 5-3-4
        //ako ima ostatka
        //ostavljamo strukturu unutar bloka da nam govori
        //  kolika je velicina bloka koji je rezervisan

        int ostatak = temp->size - size; // ovo je preostao prostor bloka
    800053d0:	40f7073b          	subw	a4,a4,a5
        temp->size = size;
    800053d4:	00f53823          	sd	a5,16(a0)
        struktura *temp2 = (struktura *) ((char *) temp + size);
    800053d8:	00f507b3          	add	a5,a0,a5
        temp2->size = ostatak;
    800053dc:	00e7b823          	sd	a4,16(a5)
        temp2->next = temp->next;
    800053e0:	00053703          	ld	a4,0(a0)
    800053e4:	00e7b023          	sd	a4,0(a5)
        temp2->prev = temp->prev;
    800053e8:	00853703          	ld	a4,8(a0)
    800053ec:	00e7b423          	sd	a4,8(a5)
        if (temp->next) temp->next->prev = temp2; // update sledbenika ako ga ima
    800053f0:	00053703          	ld	a4,0(a0)
    800053f4:	00070463          	beqz	a4,800053fc <_ZN8Memorija9alokacijaEm+0xc4>
    800053f8:	00f73423          	sd	a5,8(a4)
        if (temp->prev) temp->prev->next = temp2; //update prethodnika ako ga ima
    800053fc:	00853703          	ld	a4,8(a0)
    80005400:	00070c63          	beqz	a4,80005418 <_ZN8Memorija9alokacijaEm+0xe0>
    80005404:	00f73023          	sd	a5,0(a4)
        if(temp->next) temp->next->prev = temp->prev;
        if(temp->prev) temp->prev->next = temp->next;
        else head=temp->next; //ako se brise prvi clan liste update head
    }

    return (char*)temp + sizeof(struktura);
    80005408:	01850513          	addi	a0,a0,24
}
    8000540c:	00813403          	ld	s0,8(sp)
    80005410:	01010113          	addi	sp,sp,16
    80005414:	00008067          	ret
        else head=temp2; //ako nema prethodnika onda je temp2 head
    80005418:	00006717          	auipc	a4,0x6
    8000541c:	32f73023          	sd	a5,800(a4) # 8000b738 <_ZN8Memorija4headE>
    80005420:	fe9ff06f          	j	80005408 <_ZN8Memorija9alokacijaEm+0xd0>
        if(temp->next) temp->next->prev = temp->prev;
    80005424:	00053783          	ld	a5,0(a0)
    80005428:	00078663          	beqz	a5,80005434 <_ZN8Memorija9alokacijaEm+0xfc>
    8000542c:	00853703          	ld	a4,8(a0)
    80005430:	00e7b423          	sd	a4,8(a5)
        if(temp->prev) temp->prev->next = temp->next;
    80005434:	00853783          	ld	a5,8(a0)
    80005438:	00078863          	beqz	a5,80005448 <_ZN8Memorija9alokacijaEm+0x110>
    8000543c:	00053703          	ld	a4,0(a0)
    80005440:	00e7b023          	sd	a4,0(a5)
    80005444:	fc5ff06f          	j	80005408 <_ZN8Memorija9alokacijaEm+0xd0>
        else head=temp->next; //ako se brise prvi clan liste update head
    80005448:	00053783          	ld	a5,0(a0)
    8000544c:	00006717          	auipc	a4,0x6
    80005450:	2ef73623          	sd	a5,748(a4) # 8000b738 <_ZN8Memorija4headE>
    80005454:	fb5ff06f          	j	80005408 <_ZN8Memorija9alokacijaEm+0xd0>

0000000080005458 <_ZN8Memorija12oslobadjanjeEPv>:

int Memorija::oslobadjanje(void *add) {
    80005458:	ff010113          	addi	sp,sp,-16
    8000545c:	00813423          	sd	s0,8(sp)
    80005460:	01010413          	addi	s0,sp,16

    if(!add) return -1;
    80005464:	0e050c63          	beqz	a0,8000555c <_ZN8Memorija12oslobadjanjeEPv+0x104>
    if(!head) return -2;
    80005468:	00006797          	auipc	a5,0x6
    8000546c:	2d07b783          	ld	a5,720(a5) # 8000b738 <_ZN8Memorija4headE>
    80005470:	00079863          	bnez	a5,80005480 <_ZN8Memorija12oslobadjanjeEPv+0x28>
    80005474:	ffe00513          	li	a0,-2
    80005478:	06c0006f          	j	800054e4 <_ZN8Memorija12oslobadjanjeEPv+0x8c>
    while((char*)temp < (char*)add){
        if(temp->next==nullptr){
            flag=true;
            break;
        }
        temp=temp->next;
    8000547c:	00070793          	mv	a5,a4
    while((char*)temp < (char*)add){
    80005480:	00a7fa63          	bgeu	a5,a0,80005494 <_ZN8Memorija12oslobadjanjeEPv+0x3c>
        if(temp->next==nullptr){
    80005484:	0007b703          	ld	a4,0(a5)
    80005488:	fe071ae3          	bnez	a4,8000547c <_ZN8Memorija12oslobadjanjeEPv+0x24>
            flag=true;
    8000548c:	00100593          	li	a1,1
    80005490:	0080006f          	j	80005498 <_ZN8Memorija12oslobadjanjeEPv+0x40>
    bool flag=false;
    80005494:	00000593          	li	a1,0
    //  temp pokazuje na poslednje slobodno polje liste

    //ako je flag=false to znaci da se oslobadja ne poslednji blok
    //  temp pokazuje na prvo polje ispod onog koje se oslobadja

    struktura* novo = (struktura*)((char*)add-sizeof(struktura));
    80005498:	fe850693          	addi	a3,a0,-24
    int size = novo->size;
    8000549c:	ff853603          	ld	a2,-8(a0)
    800054a0:	0006071b          	sext.w	a4,a2

    if ((char *) add + size - sizeof(struktura) == (char *) temp) { // - sizeof(struktura) jer add pokazuje posle strukture a temp iza strukture
    800054a4:	fe870713          	addi	a4,a4,-24
    800054a8:	00e50733          	add	a4,a0,a4
    800054ac:	04f70263          	beq	a4,a5,800054f0 <_ZN8Memorija12oslobadjanjeEPv+0x98>
        else head=novo;
    }
    else{
        //ne treba da se spoji treba da se doda u listu
        // 3 5 (3) 2 5 -> 3 5 [3] 2 5
        novo->next=temp;
    800054b0:	fef53423          	sd	a5,-24(a0)
        novo->prev=temp->prev;
    800054b4:	0087b703          	ld	a4,8(a5)
    800054b8:	fee53823          	sd	a4,-16(a0)
        if(temp->prev) temp->prev->next=novo;
    800054bc:	06070863          	beqz	a4,8000552c <_ZN8Memorija12oslobadjanjeEPv+0xd4>
    800054c0:	00d73023          	sd	a3,0(a4)
        else head=novo;
        temp->prev=novo;
    800054c4:	00d7b423          	sd	a3,8(a5)

    //sada smo dodali novo u listu slobodnih mesta
    //  i mozda spojili sa slobodnim mestom desno od njega
    //  treba proveriti da li se sada i moze spojiti sa levom stranom

    if(flag==false) temp=novo->prev;
    800054c8:	00059463          	bnez	a1,800054d0 <_ZN8Memorija12oslobadjanjeEPv+0x78>
    800054cc:	ff053783          	ld	a5,-16(a0)
    //temp sada pokazuje na nivo iznad strukture 'novo'
    // 3 4 5 (6) 2; 5->temp, 6->novo

    if (temp && (char *) temp + temp->size == (char *) novo){
    800054d0:	08078a63          	beqz	a5,80005564 <_ZN8Memorija12oslobadjanjeEPv+0x10c>
    800054d4:	0107b703          	ld	a4,16(a5)
    800054d8:	00e78633          	add	a2,a5,a4
    800054dc:	04d60e63          	beq	a2,a3,80005538 <_ZN8Memorija12oslobadjanjeEPv+0xe0>
        temp->size+=novo->size;
        temp->next=novo->next;
        if(novo->next) novo->next->prev=temp;
    }

    return 0;
    800054e0:	00000513          	li	a0,0
}
    800054e4:	00813403          	ld	s0,8(sp)
    800054e8:	01010113          	addi	sp,sp,16
    800054ec:	00008067          	ret
        novo->size+=temp->size;
    800054f0:	0107b703          	ld	a4,16(a5)
    800054f4:	00e60633          	add	a2,a2,a4
    800054f8:	fec53c23          	sd	a2,-8(a0)
        novo->next=temp->next;
    800054fc:	0007b703          	ld	a4,0(a5)
    80005500:	fee53423          	sd	a4,-24(a0)
        if(temp->next) temp->next->prev=novo;
    80005504:	00070463          	beqz	a4,8000550c <_ZN8Memorija12oslobadjanjeEPv+0xb4>
    80005508:	00d73423          	sd	a3,8(a4)
        novo->prev=temp->prev;
    8000550c:	0087b703          	ld	a4,8(a5)
    80005510:	fee53823          	sd	a4,-16(a0)
        if(temp->prev) temp->prev->next=novo;
    80005514:	00070663          	beqz	a4,80005520 <_ZN8Memorija12oslobadjanjeEPv+0xc8>
    80005518:	00d73023          	sd	a3,0(a4)
    8000551c:	fadff06f          	j	800054c8 <_ZN8Memorija12oslobadjanjeEPv+0x70>
        else head=novo;
    80005520:	00006717          	auipc	a4,0x6
    80005524:	20d73c23          	sd	a3,536(a4) # 8000b738 <_ZN8Memorija4headE>
    80005528:	fa1ff06f          	j	800054c8 <_ZN8Memorija12oslobadjanjeEPv+0x70>
        else head=novo;
    8000552c:	00006717          	auipc	a4,0x6
    80005530:	20d73623          	sd	a3,524(a4) # 8000b738 <_ZN8Memorija4headE>
    80005534:	f91ff06f          	j	800054c4 <_ZN8Memorija12oslobadjanjeEPv+0x6c>
        temp->size+=novo->size;
    80005538:	ff853683          	ld	a3,-8(a0)
    8000553c:	00d70733          	add	a4,a4,a3
    80005540:	00e7b823          	sd	a4,16(a5)
        temp->next=novo->next;
    80005544:	fe853703          	ld	a4,-24(a0)
    80005548:	00e7b023          	sd	a4,0(a5)
        if(novo->next) novo->next->prev=temp;
    8000554c:	02070063          	beqz	a4,8000556c <_ZN8Memorija12oslobadjanjeEPv+0x114>
    80005550:	00f73423          	sd	a5,8(a4)
    return 0;
    80005554:	00000513          	li	a0,0
    80005558:	f8dff06f          	j	800054e4 <_ZN8Memorija12oslobadjanjeEPv+0x8c>
    if(!add) return -1;
    8000555c:	fff00513          	li	a0,-1
    80005560:	f85ff06f          	j	800054e4 <_ZN8Memorija12oslobadjanjeEPv+0x8c>
    return 0;
    80005564:	00000513          	li	a0,0
    80005568:	f7dff06f          	j	800054e4 <_ZN8Memorija12oslobadjanjeEPv+0x8c>
    8000556c:	00000513          	li	a0,0
    80005570:	f75ff06f          	j	800054e4 <_ZN8Memorija12oslobadjanjeEPv+0x8c>

0000000080005574 <_ZN8Memorija5PrintEv>:

void Memorija::Print() {
    80005574:	fe010113          	addi	sp,sp,-32
    80005578:	00113c23          	sd	ra,24(sp)
    8000557c:	00813823          	sd	s0,16(sp)
    80005580:	00913423          	sd	s1,8(sp)
    80005584:	02010413          	addi	s0,sp,32
        if (head == nullptr) {
    80005588:	00006797          	auipc	a5,0x6
    8000558c:	1b07b783          	ld	a5,432(a5) # 8000b738 <_ZN8Memorija4headE>
    80005590:	02078263          	beqz	a5,800055b4 <_ZN8Memorija5PrintEv+0x40>
    CreateMemorija();
    for(struktura *blk = head; blk!=nullptr; blk=blk->next){
    80005594:	00006497          	auipc	s1,0x6
    80005598:	1a44b483          	ld	s1,420(s1) # 8000b738 <_ZN8Memorija4headE>
    8000559c:	04048e63          	beqz	s1,800055f8 <_ZN8Memorija5PrintEv+0x84>
        print(blk->size);
    800055a0:	0104a503          	lw	a0,16(s1)
    800055a4:	00001097          	auipc	ra,0x1
    800055a8:	ad8080e7          	jalr	-1320(ra) # 8000607c <_Z5printi>
    for(struktura *blk = head; blk!=nullptr; blk=blk->next){
    800055ac:	0004b483          	ld	s1,0(s1)
    800055b0:	fedff06f          	j	8000559c <_ZN8Memorija5PrintEv+0x28>
            head = (struktura * )(HEAP_START_ADDR);
    800055b4:	00006797          	auipc	a5,0x6
    800055b8:	09c7b783          	ld	a5,156(a5) # 8000b650 <_GLOBAL_OFFSET_TABLE_+0x20>
    800055bc:	0007b683          	ld	a3,0(a5)
    800055c0:	00006717          	auipc	a4,0x6
    800055c4:	17870713          	addi	a4,a4,376 # 8000b738 <_ZN8Memorija4headE>
    800055c8:	00d73023          	sd	a3,0(a4)
            head->next = nullptr;
    800055cc:	0006b023          	sd	zero,0(a3)
            head->prev = nullptr;
    800055d0:	00073703          	ld	a4,0(a4)
    800055d4:	00073423          	sd	zero,8(a4)
            head->size = (char *) HEAP_START_ADDR - (char *) HEAP_END_ADDR - sizeof(struktura);
    800055d8:	0007b783          	ld	a5,0(a5)
    800055dc:	00006697          	auipc	a3,0x6
    800055e0:	0b46b683          	ld	a3,180(a3) # 8000b690 <_GLOBAL_OFFSET_TABLE_+0x60>
    800055e4:	0006b683          	ld	a3,0(a3)
    800055e8:	40d787b3          	sub	a5,a5,a3
    800055ec:	fe878793          	addi	a5,a5,-24
    800055f0:	00f73823          	sd	a5,16(a4)
    800055f4:	fa1ff06f          	j	80005594 <_ZN8Memorija5PrintEv+0x20>
    }
    800055f8:	01813083          	ld	ra,24(sp)
    800055fc:	01013403          	ld	s0,16(sp)
    80005600:	00813483          	ld	s1,8(sp)
    80005604:	02010113          	addi	sp,sp,32
    80005608:	00008067          	ret

000000008000560c <_ZN9Scheduler3getEv>:
int Scheduler::brojb=0;

Scheduler::struktura* Scheduler::head = nullptr;
Scheduler::struktura* Scheduler::headuspavane = nullptr;

Nit *Scheduler::get() {
    8000560c:	fe010113          	addi	sp,sp,-32
    80005610:	00113c23          	sd	ra,24(sp)
    80005614:	00813823          	sd	s0,16(sp)
    80005618:	00913423          	sd	s1,8(sp)
    8000561c:	02010413          	addi	s0,sp,32
    if(head==nullptr) {return nullptr;}
    80005620:	00006517          	auipc	a0,0x6
    80005624:	12053503          	ld	a0,288(a0) # 8000b740 <_ZN9Scheduler4headE>
    80005628:	06050863          	beqz	a0,80005698 <_ZN9Scheduler3getEv+0x8c>

    struktura *temp = head;
    Nit *t = head->t;
    8000562c:	00053483          	ld	s1,0(a0)

    head->next->prev=head->prev;
    80005630:	01053783          	ld	a5,16(a0)
    80005634:	01853703          	ld	a4,24(a0)
    80005638:	00e7bc23          	sd	a4,24(a5)
    head->prev->next=head->next;
    8000563c:	01853783          	ld	a5,24(a0)
    80005640:	01053703          	ld	a4,16(a0)
    80005644:	00e7b823          	sd	a4,16(a5)

    head=temp->next;
    80005648:	01053783          	ld	a5,16(a0)
    8000564c:	00006717          	auipc	a4,0x6
    80005650:	0ef73a23          	sd	a5,244(a4) # 8000b740 <_ZN9Scheduler4headE>
    if(head==temp) head=nullptr;
    80005654:	02f50c63          	beq	a0,a5,8000568c <_ZN9Scheduler3getEv+0x80>

    Memorija::oslobadjanje(temp);
    80005658:	00000097          	auipc	ra,0x0
    8000565c:	e00080e7          	jalr	-512(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
    brojj--;
    80005660:	00006717          	auipc	a4,0x6
    80005664:	0e070713          	addi	a4,a4,224 # 8000b740 <_ZN9Scheduler4headE>
    80005668:	00872783          	lw	a5,8(a4)
    8000566c:	fff7879b          	addiw	a5,a5,-1
    80005670:	00f72423          	sw	a5,8(a4)
    return t;
}
    80005674:	00048513          	mv	a0,s1
    80005678:	01813083          	ld	ra,24(sp)
    8000567c:	01013403          	ld	s0,16(sp)
    80005680:	00813483          	ld	s1,8(sp)
    80005684:	02010113          	addi	sp,sp,32
    80005688:	00008067          	ret
    if(head==temp) head=nullptr;
    8000568c:	00006797          	auipc	a5,0x6
    80005690:	0a07ba23          	sd	zero,180(a5) # 8000b740 <_ZN9Scheduler4headE>
    80005694:	fc5ff06f          	j	80005658 <_ZN9Scheduler3getEv+0x4c>
    if(head==nullptr) {return nullptr;}
    80005698:	00050493          	mv	s1,a0
    8000569c:	fd9ff06f          	j	80005674 <_ZN9Scheduler3getEv+0x68>

00000000800056a0 <_ZN9Scheduler3putEP3Nit>:

int Scheduler::put(Nit* t) {
    800056a0:	fe010113          	addi	sp,sp,-32
    800056a4:	00113c23          	sd	ra,24(sp)
    800056a8:	00813823          	sd	s0,16(sp)
    800056ac:	00913423          	sd	s1,8(sp)
    800056b0:	02010413          	addi	s0,sp,32
    800056b4:	00050493          	mv	s1,a0
    struktura* novo = (struktura*)Memorija::alokacija(sizeof(struktura));
    800056b8:	02000513          	li	a0,32
    800056bc:	00000097          	auipc	ra,0x0
    800056c0:	c7c080e7          	jalr	-900(ra) # 80005338 <_ZN8Memorija9alokacijaEm>

    if(novo == nullptr) return -1;
    800056c4:	06050463          	beqz	a0,8000572c <_ZN9Scheduler3putEP3Nit+0x8c>
    novo->t=t;
    800056c8:	00953023          	sd	s1,0(a0)

    brojj++;
    800056cc:	00006797          	auipc	a5,0x6
    800056d0:	07478793          	addi	a5,a5,116 # 8000b740 <_ZN9Scheduler4headE>
    800056d4:	0087a703          	lw	a4,8(a5)
    800056d8:	0017071b          	addiw	a4,a4,1
    800056dc:	00e7a423          	sw	a4,8(a5)

    if(head==nullptr){
    800056e0:	0007b783          	ld	a5,0(a5)
    800056e4:	02078863          	beqz	a5,80005714 <_ZN9Scheduler3putEP3Nit+0x74>
        head->next=head;
        head->prev=head;
        return 0;
    }

    struktura* temp = head->prev;
    800056e8:	0187b703          	ld	a4,24(a5)
    temp->next=novo;
    800056ec:	00a73823          	sd	a0,16(a4)
    novo->prev=temp;
    800056f0:	00e53c23          	sd	a4,24(a0)
    novo->next=head;
    800056f4:	00f53823          	sd	a5,16(a0)
    head->prev=novo;
    800056f8:	00a7bc23          	sd	a0,24(a5)
    return 0;
    800056fc:	00000513          	li	a0,0
}
    80005700:	01813083          	ld	ra,24(sp)
    80005704:	01013403          	ld	s0,16(sp)
    80005708:	00813483          	ld	s1,8(sp)
    8000570c:	02010113          	addi	sp,sp,32
    80005710:	00008067          	ret
        head = novo;
    80005714:	00006797          	auipc	a5,0x6
    80005718:	02a7b623          	sd	a0,44(a5) # 8000b740 <_ZN9Scheduler4headE>
        head->next=head;
    8000571c:	00a53823          	sd	a0,16(a0)
        head->prev=head;
    80005720:	00a53c23          	sd	a0,24(a0)
        return 0;
    80005724:	00000513          	li	a0,0
    80005728:	fd9ff06f          	j	80005700 <_ZN9Scheduler3putEP3Nit+0x60>
    if(novo == nullptr) return -1;
    8000572c:	fff00513          	li	a0,-1
    80005730:	fd1ff06f          	j	80005700 <_ZN9Scheduler3putEP3Nit+0x60>

0000000080005734 <_ZN9Scheduler5PrintEv>:

void Scheduler::Print() {
    80005734:	fe010113          	addi	sp,sp,-32
    80005738:	00113c23          	sd	ra,24(sp)
    8000573c:	00813823          	sd	s0,16(sp)
    80005740:	00913423          	sd	s1,8(sp)
    80005744:	02010413          	addi	s0,sp,32
    print("\n------------------\nlista:\n");
    80005748:	00004517          	auipc	a0,0x4
    8000574c:	c2050513          	addi	a0,a0,-992 # 80009368 <CONSOLE_STATUS+0x358>
    80005750:	00001097          	auipc	ra,0x1
    80005754:	8e8080e7          	jalr	-1816(ra) # 80006038 <_Z5printPKc>
    print("Running thread ");Nit::running->stampa();
    80005758:	00004517          	auipc	a0,0x4
    8000575c:	c3050513          	addi	a0,a0,-976 # 80009388 <CONSOLE_STATUS+0x378>
    80005760:	00001097          	auipc	ra,0x1
    80005764:	8d8080e7          	jalr	-1832(ra) # 80006038 <_Z5printPKc>
    80005768:	00006797          	auipc	a5,0x6
    8000576c:	f387b783          	ld	a5,-200(a5) # 8000b6a0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80005770:	0007b503          	ld	a0,0(a5)
    80005774:	00001097          	auipc	ra,0x1
    80005778:	9cc080e7          	jalr	-1588(ra) # 80006140 <_ZN3Nit6stampaEv>

    if(!head) {
    8000577c:	00006497          	auipc	s1,0x6
    80005780:	fc44b483          	ld	s1,-60(s1) # 8000b740 <_ZN9Scheduler4headE>
    80005784:	00048663          	beqz	s1,80005790 <_ZN9Scheduler5PrintEv+0x5c>
        print("nula elementa\n");
    }
    else {
        bool f=true;
    80005788:	00100793          	li	a5,1
    8000578c:	02c0006f          	j	800057b8 <_ZN9Scheduler5PrintEv+0x84>
        print("nula elementa\n");
    80005790:	00004517          	auipc	a0,0x4
    80005794:	c0850513          	addi	a0,a0,-1016 # 80009398 <CONSOLE_STATUS+0x388>
    80005798:	00001097          	auipc	ra,0x1
    8000579c:	8a0080e7          	jalr	-1888(ra) # 80006038 <_Z5printPKc>
    800057a0:	0280006f          	j	800057c8 <_ZN9Scheduler5PrintEv+0x94>
        for (struktura *temp = head; f||temp!=head; temp = temp->next) {
            f=false;
            temp->t->stampa();
    800057a4:	0004b503          	ld	a0,0(s1)
    800057a8:	00001097          	auipc	ra,0x1
    800057ac:	998080e7          	jalr	-1640(ra) # 80006140 <_ZN3Nit6stampaEv>
        for (struktura *temp = head; f||temp!=head; temp = temp->next) {
    800057b0:	0104b483          	ld	s1,16(s1)
            f=false;
    800057b4:	00000793          	li	a5,0
        for (struktura *temp = head; f||temp!=head; temp = temp->next) {
    800057b8:	fe0796e3          	bnez	a5,800057a4 <_ZN9Scheduler5PrintEv+0x70>
    800057bc:	00006797          	auipc	a5,0x6
    800057c0:	f847b783          	ld	a5,-124(a5) # 8000b740 <_ZN9Scheduler4headE>
    800057c4:	fe9790e3          	bne	a5,s1,800057a4 <_ZN9Scheduler5PrintEv+0x70>
        }
        //head->prev->t->stampa();
    }
    print("lista uspavanih:\n");
    800057c8:	00004517          	auipc	a0,0x4
    800057cc:	be050513          	addi	a0,a0,-1056 # 800093a8 <CONSOLE_STATUS+0x398>
    800057d0:	00001097          	auipc	ra,0x1
    800057d4:	868080e7          	jalr	-1944(ra) # 80006038 <_Z5printPKc>

    if(!headuspavane) {
    800057d8:	00006497          	auipc	s1,0x6
    800057dc:	f784b483          	ld	s1,-136(s1) # 8000b750 <_ZN9Scheduler12headuspavaneE>
    800057e0:	04048263          	beqz	s1,80005824 <_ZN9Scheduler5PrintEv+0xf0>
        print("nula elementa\n");
    }
    else {
        for (struktura *temp = headuspavane; temp->next != headuspavane; temp = temp->next) {
    800057e4:	0104b703          	ld	a4,16(s1)
    800057e8:	00006797          	auipc	a5,0x6
    800057ec:	f687b783          	ld	a5,-152(a5) # 8000b750 <_ZN9Scheduler12headuspavaneE>
    800057f0:	04f70463          	beq	a4,a5,80005838 <_ZN9Scheduler5PrintEv+0x104>
            temp->t->stampa();
    800057f4:	0004b503          	ld	a0,0(s1)
    800057f8:	00001097          	auipc	ra,0x1
    800057fc:	948080e7          	jalr	-1720(ra) # 80006140 <_ZN3Nit6stampaEv>
            print("vreme: ");
    80005800:	00004517          	auipc	a0,0x4
    80005804:	bc050513          	addi	a0,a0,-1088 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80005808:	00001097          	auipc	ra,0x1
    8000580c:	830080e7          	jalr	-2000(ra) # 80006038 <_Z5printPKc>
            //print(temp->t->getvreme());
            print(temp->vreme);
    80005810:	0084a503          	lw	a0,8(s1)
    80005814:	00001097          	auipc	ra,0x1
    80005818:	868080e7          	jalr	-1944(ra) # 8000607c <_Z5printi>
        for (struktura *temp = headuspavane; temp->next != headuspavane; temp = temp->next) {
    8000581c:	0104b483          	ld	s1,16(s1)
    80005820:	fc5ff06f          	j	800057e4 <_ZN9Scheduler5PrintEv+0xb0>
        print("nula elementa\n");
    80005824:	00004517          	auipc	a0,0x4
    80005828:	b7450513          	addi	a0,a0,-1164 # 80009398 <CONSOLE_STATUS+0x388>
    8000582c:	00001097          	auipc	ra,0x1
    80005830:	80c080e7          	jalr	-2036(ra) # 80006038 <_Z5printPKc>
    80005834:	03c0006f          	j	80005870 <_ZN9Scheduler5PrintEv+0x13c>
        }
        headuspavane->prev->t->stampa();
    80005838:	0187b783          	ld	a5,24(a5)
    8000583c:	0007b503          	ld	a0,0(a5)
    80005840:	00001097          	auipc	ra,0x1
    80005844:	900080e7          	jalr	-1792(ra) # 80006140 <_ZN3Nit6stampaEv>
        print("vreme: ");
    80005848:	00004517          	auipc	a0,0x4
    8000584c:	b7850513          	addi	a0,a0,-1160 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80005850:	00000097          	auipc	ra,0x0
    80005854:	7e8080e7          	jalr	2024(ra) # 80006038 <_Z5printPKc>
        //print(headuspavane->prev->t->getvreme());
        print(headuspavane->prev->vreme);
    80005858:	00006797          	auipc	a5,0x6
    8000585c:	ef87b783          	ld	a5,-264(a5) # 8000b750 <_ZN9Scheduler12headuspavaneE>
    80005860:	0187b783          	ld	a5,24(a5)
    80005864:	0087a503          	lw	a0,8(a5)
    80005868:	00001097          	auipc	ra,0x1
    8000586c:	814080e7          	jalr	-2028(ra) # 8000607c <_Z5printi>
    }
    print("------------------\n");
    80005870:	00004517          	auipc	a0,0x4
    80005874:	b5850513          	addi	a0,a0,-1192 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	7c0080e7          	jalr	1984(ra) # 80006038 <_Z5printPKc>
    return;
}
    80005880:	01813083          	ld	ra,24(sp)
    80005884:	01013403          	ld	s0,16(sp)
    80005888:	00813483          	ld	s1,8(sp)
    8000588c:	02010113          	addi	sp,sp,32
    80005890:	00008067          	ret

0000000080005894 <_ZN9Scheduler13dekremntacijaEi>:

void Scheduler::dekremntacija(int x) {
    80005894:	fe010113          	addi	sp,sp,-32
    80005898:	00113c23          	sd	ra,24(sp)
    8000589c:	00813823          	sd	s0,16(sp)
    800058a0:	00913423          	sd	s1,8(sp)
    800058a4:	02010413          	addi	s0,sp,32
    if(headuspavane==nullptr) return;
    800058a8:	00006497          	auipc	s1,0x6
    800058ac:	ea84b483          	ld	s1,-344(s1) # 8000b750 <_ZN9Scheduler12headuspavaneE>
    800058b0:	00048c63          	beqz	s1,800058c8 <_ZN9Scheduler13dekremntacijaEi+0x34>

    headuspavane->vreme-=x;
    800058b4:	0084a783          	lw	a5,8(s1)
    800058b8:	40a7853b          	subw	a0,a5,a0
    800058bc:	0005079b          	sext.w	a5,a0
    800058c0:	00a4a423          	sw	a0,8(s1)
    if(headuspavane->vreme<=0){
    800058c4:	00f05c63          	blez	a5,800058dc <_ZN9Scheduler13dekremntacijaEi+0x48>
        Scheduler::put(temp->t);
        brojb--;
        Memorija::oslobadjanje(temp);
    }

}
    800058c8:	01813083          	ld	ra,24(sp)
    800058cc:	01013403          	ld	s0,16(sp)
    800058d0:	00813483          	ld	s1,8(sp)
    800058d4:	02010113          	addi	sp,sp,32
    800058d8:	00008067          	ret
        if(headuspavane->next==headuspavane) headuspavane=nullptr;
    800058dc:	0104b783          	ld	a5,16(s1)
    800058e0:	04f48c63          	beq	s1,a5,80005938 <_ZN9Scheduler13dekremntacijaEi+0xa4>
            headuspavane->prev->next = headuspavane->next;
    800058e4:	0184b703          	ld	a4,24(s1)
    800058e8:	00f73823          	sd	a5,16(a4)
            headuspavane->next->prev = headuspavane->prev;
    800058ec:	0104b703          	ld	a4,16(s1)
    800058f0:	0184b683          	ld	a3,24(s1)
    800058f4:	00d73c23          	sd	a3,24(a4)
            headuspavane = pomoc;
    800058f8:	00006717          	auipc	a4,0x6
    800058fc:	e4f73c23          	sd	a5,-424(a4) # 8000b750 <_ZN9Scheduler12headuspavaneE>
        temp->t->finished=false;
    80005900:	0004b783          	ld	a5,0(s1)
    80005904:	00078423          	sb	zero,8(a5)
        Scheduler::put(temp->t);
    80005908:	0004b503          	ld	a0,0(s1)
    8000590c:	00000097          	auipc	ra,0x0
    80005910:	d94080e7          	jalr	-620(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>
        brojb--;
    80005914:	00006717          	auipc	a4,0x6
    80005918:	e2c70713          	addi	a4,a4,-468 # 8000b740 <_ZN9Scheduler4headE>
    8000591c:	01872783          	lw	a5,24(a4)
    80005920:	fff7879b          	addiw	a5,a5,-1
    80005924:	00f72c23          	sw	a5,24(a4)
        Memorija::oslobadjanje(temp);
    80005928:	00048513          	mv	a0,s1
    8000592c:	00000097          	auipc	ra,0x0
    80005930:	b2c080e7          	jalr	-1236(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
    80005934:	f95ff06f          	j	800058c8 <_ZN9Scheduler13dekremntacijaEi+0x34>
        if(headuspavane->next==headuspavane) headuspavane=nullptr;
    80005938:	00006797          	auipc	a5,0x6
    8000593c:	e007bc23          	sd	zero,-488(a5) # 8000b750 <_ZN9Scheduler12headuspavaneE>
    80005940:	fc1ff06f          	j	80005900 <_ZN9Scheduler13dekremntacijaEi+0x6c>

0000000080005944 <_ZN9Scheduler11threadsleepEi>:

void Scheduler::threadsleep(int vreme) {
    if(vreme==0) return;
    80005944:	12050c63          	beqz	a0,80005a7c <_ZN9Scheduler11threadsleepEi+0x138>
void Scheduler::threadsleep(int vreme) {
    80005948:	fe010113          	addi	sp,sp,-32
    8000594c:	00113c23          	sd	ra,24(sp)
    80005950:	00813823          	sd	s0,16(sp)
    80005954:	00913423          	sd	s1,8(sp)
    80005958:	02010413          	addi	s0,sp,32
    8000595c:	00050493          	mv	s1,a0
    if(vreme%DEFAULT_TIME_SLICE) vreme+=DEFAULT_TIME_SLICE-vreme%DEFAULT_TIME_SLICE;
    80005960:	00157793          	andi	a5,a0,1
    80005964:	00078663          	beqz	a5,80005970 <_ZN9Scheduler11threadsleepEi+0x2c>
    80005968:	ffe57493          	andi	s1,a0,-2
    8000596c:	0024849b          	addiw	s1,s1,2

    struktura* novo = (struktura*)Memorija::alokacija(sizeof(struktura));
    80005970:	02000513          	li	a0,32
    80005974:	00000097          	auipc	ra,0x0
    80005978:	9c4080e7          	jalr	-1596(ra) # 80005338 <_ZN8Memorija9alokacijaEm>

    if(novo == nullptr) return;
    8000597c:	0e050663          	beqz	a0,80005a68 <_ZN9Scheduler11threadsleepEi+0x124>
    novo->t=Nit::running;
    80005980:	00006797          	auipc	a5,0x6
    80005984:	d207b783          	ld	a5,-736(a5) # 8000b6a0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80005988:	0007b583          	ld	a1,0(a5)
    8000598c:	00b53023          	sd	a1,0(a0)
    novo->vreme=vreme;
    80005990:	00952423          	sw	s1,8(a0)

    if(headuspavane==nullptr){
    80005994:	00006797          	auipc	a5,0x6
    80005998:	dbc7b783          	ld	a5,-580(a5) # 8000b750 <_ZN9Scheduler12headuspavaneE>
    8000599c:	00078863          	beqz	a5,800059ac <_ZN9Scheduler11threadsleepEi+0x68>
    }
    // ovde u else treba optimizacija ali me briga sad za to
    // ovo za sad radi najnormlanije dodavanje cvora na kraj liste, svaki cvor treba da se dekrementira
    else {
        bool flag=true;
        bool flag1=false;
    800059a0:	00000613          	li	a2,0
        bool flag=true;
    800059a4:	00100713          	li	a4,1
    800059a8:	0380006f          	j	800059e0 <_ZN9Scheduler11threadsleepEi+0x9c>
        headuspavane = novo;
    800059ac:	00006797          	auipc	a5,0x6
    800059b0:	daa7b223          	sd	a0,-604(a5) # 8000b750 <_ZN9Scheduler12headuspavaneE>
        headuspavane->next=headuspavane;
    800059b4:	00a53823          	sd	a0,16(a0)
        headuspavane->prev=headuspavane;
    800059b8:	00a53c23          	sd	a0,24(a0)
    800059bc:	0880006f          	j	80005a44 <_ZN9Scheduler11threadsleepEi+0x100>
                novo->next=temp;
                novo->prev=temp->prev;
                temp->prev->next=novo;
                temp->prev=novo;

                if(temp==headuspavane) headuspavane=novo;
    800059c0:	00006717          	auipc	a4,0x6
    800059c4:	d8a73823          	sd	a0,-624(a4) # 8000b750 <_ZN9Scheduler12headuspavaneE>
                flag1=true;
    800059c8:	00100613          	li	a2,1
    800059cc:	00c0006f          	j	800059d8 <_ZN9Scheduler11threadsleepEi+0x94>
            }
            else{
                novo->vreme-=temp->vreme;
    800059d0:	40d7073b          	subw	a4,a4,a3
    800059d4:	00e52423          	sw	a4,8(a0)
        for(struktura *temp = headuspavane; flag || temp!=headuspavane;temp=temp->next){
    800059d8:	0107b783          	ld	a5,16(a5)
            flag=false;
    800059dc:	00000713          	li	a4,0
        for(struktura *temp = headuspavane; flag || temp!=headuspavane;temp=temp->next){
    800059e0:	00071863          	bnez	a4,800059f0 <_ZN9Scheduler11threadsleepEi+0xac>
    800059e4:	00006717          	auipc	a4,0x6
    800059e8:	d6c73703          	ld	a4,-660(a4) # 8000b750 <_ZN9Scheduler12headuspavaneE>
    800059ec:	04f70063          	beq	a4,a5,80005a2c <_ZN9Scheduler11threadsleepEi+0xe8>
            if(temp->vreme > novo->vreme){
    800059f0:	0087a683          	lw	a3,8(a5)
    800059f4:	00852703          	lw	a4,8(a0)
    800059f8:	fcd75ce3          	bge	a4,a3,800059d0 <_ZN9Scheduler11threadsleepEi+0x8c>
                temp->vreme-=novo->vreme;
    800059fc:	40e6873b          	subw	a4,a3,a4
    80005a00:	00e7a423          	sw	a4,8(a5)
                novo->next=temp;
    80005a04:	00f53823          	sd	a5,16(a0)
                novo->prev=temp->prev;
    80005a08:	0187b703          	ld	a4,24(a5)
    80005a0c:	00e53c23          	sd	a4,24(a0)
                temp->prev->next=novo;
    80005a10:	00a73823          	sd	a0,16(a4)
                temp->prev=novo;
    80005a14:	00a7bc23          	sd	a0,24(a5)
                if(temp==headuspavane) headuspavane=novo;
    80005a18:	00006717          	auipc	a4,0x6
    80005a1c:	d3873703          	ld	a4,-712(a4) # 8000b750 <_ZN9Scheduler12headuspavaneE>
    80005a20:	faf700e3          	beq	a4,a5,800059c0 <_ZN9Scheduler11threadsleepEi+0x7c>
                flag1=true;
    80005a24:	00100613          	li	a2,1
    80005a28:	fb1ff06f          	j	800059d8 <_ZN9Scheduler11threadsleepEi+0x94>
            }
        }
        if(!flag1) {
    80005a2c:	00061c63          	bnez	a2,80005a44 <_ZN9Scheduler11threadsleepEi+0x100>
            struktura *temp = headuspavane->prev;
    80005a30:	01873783          	ld	a5,24(a4)
            temp->next = novo;
    80005a34:	00a7b823          	sd	a0,16(a5)
            novo->prev = temp;
    80005a38:	00f53c23          	sd	a5,24(a0)
            novo->next = headuspavane;
    80005a3c:	00e53823          	sd	a4,16(a0)
            headuspavane->prev = novo;
    80005a40:	00a73c23          	sd	a0,24(a4)
        }
    }


    brojb++;
    80005a44:	00006717          	auipc	a4,0x6
    80005a48:	cfc70713          	addi	a4,a4,-772 # 8000b740 <_ZN9Scheduler4headE>
    80005a4c:	01872783          	lw	a5,24(a4)
    80005a50:	0017879b          	addiw	a5,a5,1
    80005a54:	00f72c23          	sw	a5,24(a4)

    Nit::running->finished=true;
    80005a58:	00100793          	li	a5,1
    80005a5c:	00f58423          	sb	a5,8(a1)
    Nit::yeild();
    80005a60:	00001097          	auipc	ra,0x1
    80005a64:	83c080e7          	jalr	-1988(ra) # 8000629c <_ZN3Nit5yeildEv>
}
    80005a68:	01813083          	ld	ra,24(sp)
    80005a6c:	01013403          	ld	s0,16(sp)
    80005a70:	00813483          	ld	s1,8(sp)
    80005a74:	02010113          	addi	sp,sp,32
    80005a78:	00008067          	ret
    80005a7c:	00008067          	ret

0000000080005a80 <_ZN9Scheduler7imanitiEv>:

bool Scheduler::imaniti() {
    80005a80:	ff010113          	addi	sp,sp,-16
    80005a84:	00813423          	sd	s0,8(sp)
    80005a88:	01010413          	addi	s0,sp,16
    return brojj>0 || brojb>0;
    80005a8c:	00006797          	auipc	a5,0x6
    80005a90:	cbc7a783          	lw	a5,-836(a5) # 8000b748 <_ZN9Scheduler5brojjE>
    80005a94:	00f05a63          	blez	a5,80005aa8 <_ZN9Scheduler7imanitiEv+0x28>
    80005a98:	00100513          	li	a0,1
}
    80005a9c:	00813403          	ld	s0,8(sp)
    80005aa0:	01010113          	addi	sp,sp,16
    80005aa4:	00008067          	ret
    return brojj>0 || brojb>0;
    80005aa8:	00006797          	auipc	a5,0x6
    80005aac:	cb07a783          	lw	a5,-848(a5) # 8000b758 <_ZN9Scheduler5brojbE>
    80005ab0:	00f05663          	blez	a5,80005abc <_ZN9Scheduler7imanitiEv+0x3c>
    80005ab4:	00100513          	li	a0,1
    80005ab8:	fe5ff06f          	j	80005a9c <_ZN9Scheduler7imanitiEv+0x1c>
    80005abc:	00000513          	li	a0,0
    80005ac0:	fddff06f          	j	80005a9c <_ZN9Scheduler7imanitiEv+0x1c>

0000000080005ac4 <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ac4:	fe010113          	addi	sp,sp,-32
    80005ac8:	00113c23          	sd	ra,24(sp)
    80005acc:	00813823          	sd	s0,16(sp)
    80005ad0:	00913423          	sd	s1,8(sp)
    80005ad4:	01213023          	sd	s2,0(sp)
    80005ad8:	02010413          	addi	s0,sp,32
    80005adc:	00050493          	mv	s1,a0
    80005ae0:	00058913          	mv	s2,a1
    80005ae4:	0015879b          	addiw	a5,a1,1
    80005ae8:	0007851b          	sext.w	a0,a5
    80005aec:	00f4a023          	sw	a5,0(s1)
    80005af0:	0004a823          	sw	zero,16(s1)
    80005af4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005af8:	00251513          	slli	a0,a0,0x2
    80005afc:	ffffb097          	auipc	ra,0xffffb
    80005b00:	744080e7          	jalr	1860(ra) # 80001240 <_Z9mem_allocm>
    80005b04:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005b08:	00000593          	li	a1,0
    80005b0c:	02048513          	addi	a0,s1,32
    80005b10:	ffffc097          	auipc	ra,0xffffc
    80005b14:	810080e7          	jalr	-2032(ra) # 80001320 <_Z8sem_openPP7Semaforj>
    sem_open(&spaceAvailable, _cap);
    80005b18:	00090593          	mv	a1,s2
    80005b1c:	01848513          	addi	a0,s1,24
    80005b20:	ffffc097          	auipc	ra,0xffffc
    80005b24:	800080e7          	jalr	-2048(ra) # 80001320 <_Z8sem_openPP7Semaforj>
    sem_open(&mutexHead, 1);
    80005b28:	00100593          	li	a1,1
    80005b2c:	02848513          	addi	a0,s1,40
    80005b30:	ffffb097          	auipc	ra,0xffffb
    80005b34:	7f0080e7          	jalr	2032(ra) # 80001320 <_Z8sem_openPP7Semaforj>
    sem_open(&mutexTail, 1);
    80005b38:	00100593          	li	a1,1
    80005b3c:	03048513          	addi	a0,s1,48
    80005b40:	ffffb097          	auipc	ra,0xffffb
    80005b44:	7e0080e7          	jalr	2016(ra) # 80001320 <_Z8sem_openPP7Semaforj>
}
    80005b48:	01813083          	ld	ra,24(sp)
    80005b4c:	01013403          	ld	s0,16(sp)
    80005b50:	00813483          	ld	s1,8(sp)
    80005b54:	00013903          	ld	s2,0(sp)
    80005b58:	02010113          	addi	sp,sp,32
    80005b5c:	00008067          	ret

0000000080005b60 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005b60:	fe010113          	addi	sp,sp,-32
    80005b64:	00113c23          	sd	ra,24(sp)
    80005b68:	00813823          	sd	s0,16(sp)
    80005b6c:	00913423          	sd	s1,8(sp)
    80005b70:	01213023          	sd	s2,0(sp)
    80005b74:	02010413          	addi	s0,sp,32
    80005b78:	00050493          	mv	s1,a0
    80005b7c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005b80:	01853503          	ld	a0,24(a0)
    80005b84:	ffffc097          	auipc	ra,0xffffc
    80005b88:	800080e7          	jalr	-2048(ra) # 80001384 <_Z8sem_waitP7Semafor>

    sem_wait(mutexTail);
    80005b8c:	0304b503          	ld	a0,48(s1)
    80005b90:	ffffb097          	auipc	ra,0xffffb
    80005b94:	7f4080e7          	jalr	2036(ra) # 80001384 <_Z8sem_waitP7Semafor>
    buffer[tail] = val;
    80005b98:	0084b783          	ld	a5,8(s1)
    80005b9c:	0144a703          	lw	a4,20(s1)
    80005ba0:	00271713          	slli	a4,a4,0x2
    80005ba4:	00e787b3          	add	a5,a5,a4
    80005ba8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005bac:	0144a783          	lw	a5,20(s1)
    80005bb0:	0017879b          	addiw	a5,a5,1
    80005bb4:	0004a703          	lw	a4,0(s1)
    80005bb8:	02e7e7bb          	remw	a5,a5,a4
    80005bbc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005bc0:	0304b503          	ld	a0,48(s1)
    80005bc4:	ffffb097          	auipc	ra,0xffffb
    80005bc8:	7f0080e7          	jalr	2032(ra) # 800013b4 <_Z10sem_signalP7Semafor>

    sem_signal(itemAvailable);
    80005bcc:	0204b503          	ld	a0,32(s1)
    80005bd0:	ffffb097          	auipc	ra,0xffffb
    80005bd4:	7e4080e7          	jalr	2020(ra) # 800013b4 <_Z10sem_signalP7Semafor>

}
    80005bd8:	01813083          	ld	ra,24(sp)
    80005bdc:	01013403          	ld	s0,16(sp)
    80005be0:	00813483          	ld	s1,8(sp)
    80005be4:	00013903          	ld	s2,0(sp)
    80005be8:	02010113          	addi	sp,sp,32
    80005bec:	00008067          	ret

0000000080005bf0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005bf0:	fe010113          	addi	sp,sp,-32
    80005bf4:	00113c23          	sd	ra,24(sp)
    80005bf8:	00813823          	sd	s0,16(sp)
    80005bfc:	00913423          	sd	s1,8(sp)
    80005c00:	01213023          	sd	s2,0(sp)
    80005c04:	02010413          	addi	s0,sp,32
    80005c08:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005c0c:	02053503          	ld	a0,32(a0)
    80005c10:	ffffb097          	auipc	ra,0xffffb
    80005c14:	774080e7          	jalr	1908(ra) # 80001384 <_Z8sem_waitP7Semafor>

    sem_wait(mutexHead);
    80005c18:	0284b503          	ld	a0,40(s1)
    80005c1c:	ffffb097          	auipc	ra,0xffffb
    80005c20:	768080e7          	jalr	1896(ra) # 80001384 <_Z8sem_waitP7Semafor>

    int ret = buffer[head];
    80005c24:	0084b703          	ld	a4,8(s1)
    80005c28:	0104a783          	lw	a5,16(s1)
    80005c2c:	00279693          	slli	a3,a5,0x2
    80005c30:	00d70733          	add	a4,a4,a3
    80005c34:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c38:	0017879b          	addiw	a5,a5,1
    80005c3c:	0004a703          	lw	a4,0(s1)
    80005c40:	02e7e7bb          	remw	a5,a5,a4
    80005c44:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005c48:	0284b503          	ld	a0,40(s1)
    80005c4c:	ffffb097          	auipc	ra,0xffffb
    80005c50:	768080e7          	jalr	1896(ra) # 800013b4 <_Z10sem_signalP7Semafor>

    sem_signal(spaceAvailable);
    80005c54:	0184b503          	ld	a0,24(s1)
    80005c58:	ffffb097          	auipc	ra,0xffffb
    80005c5c:	75c080e7          	jalr	1884(ra) # 800013b4 <_Z10sem_signalP7Semafor>

    return ret;
}
    80005c60:	00090513          	mv	a0,s2
    80005c64:	01813083          	ld	ra,24(sp)
    80005c68:	01013403          	ld	s0,16(sp)
    80005c6c:	00813483          	ld	s1,8(sp)
    80005c70:	00013903          	ld	s2,0(sp)
    80005c74:	02010113          	addi	sp,sp,32
    80005c78:	00008067          	ret

0000000080005c7c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005c7c:	fe010113          	addi	sp,sp,-32
    80005c80:	00113c23          	sd	ra,24(sp)
    80005c84:	00813823          	sd	s0,16(sp)
    80005c88:	00913423          	sd	s1,8(sp)
    80005c8c:	01213023          	sd	s2,0(sp)
    80005c90:	02010413          	addi	s0,sp,32
    80005c94:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005c98:	02853503          	ld	a0,40(a0)
    80005c9c:	ffffb097          	auipc	ra,0xffffb
    80005ca0:	6e8080e7          	jalr	1768(ra) # 80001384 <_Z8sem_waitP7Semafor>
    sem_wait(mutexTail);
    80005ca4:	0304b503          	ld	a0,48(s1)
    80005ca8:	ffffb097          	auipc	ra,0xffffb
    80005cac:	6dc080e7          	jalr	1756(ra) # 80001384 <_Z8sem_waitP7Semafor>

    if (tail >= head) {
    80005cb0:	0144a783          	lw	a5,20(s1)
    80005cb4:	0104a903          	lw	s2,16(s1)
    80005cb8:	0327ce63          	blt	a5,s2,80005cf4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005cbc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005cc0:	0304b503          	ld	a0,48(s1)
    80005cc4:	ffffb097          	auipc	ra,0xffffb
    80005cc8:	6f0080e7          	jalr	1776(ra) # 800013b4 <_Z10sem_signalP7Semafor>
    sem_signal(mutexHead);
    80005ccc:	0284b503          	ld	a0,40(s1)
    80005cd0:	ffffb097          	auipc	ra,0xffffb
    80005cd4:	6e4080e7          	jalr	1764(ra) # 800013b4 <_Z10sem_signalP7Semafor>

    return ret;
}
    80005cd8:	00090513          	mv	a0,s2
    80005cdc:	01813083          	ld	ra,24(sp)
    80005ce0:	01013403          	ld	s0,16(sp)
    80005ce4:	00813483          	ld	s1,8(sp)
    80005ce8:	00013903          	ld	s2,0(sp)
    80005cec:	02010113          	addi	sp,sp,32
    80005cf0:	00008067          	ret
        ret = cap - head + tail;
    80005cf4:	0004a703          	lw	a4,0(s1)
    80005cf8:	4127093b          	subw	s2,a4,s2
    80005cfc:	00f9093b          	addw	s2,s2,a5
    80005d00:	fc1ff06f          	j	80005cc0 <_ZN6Buffer6getCntEv+0x44>

0000000080005d04 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005d04:	fe010113          	addi	sp,sp,-32
    80005d08:	00113c23          	sd	ra,24(sp)
    80005d0c:	00813823          	sd	s0,16(sp)
    80005d10:	00913423          	sd	s1,8(sp)
    80005d14:	02010413          	addi	s0,sp,32
    80005d18:	00050493          	mv	s1,a0
    putc('\n');
    80005d1c:	00a00513          	li	a0,10
    80005d20:	ffffb097          	auipc	ra,0xffffb
    80005d24:	730080e7          	jalr	1840(ra) # 80001450 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005d28:	00003517          	auipc	a0,0x3
    80005d2c:	33050513          	addi	a0,a0,816 # 80009058 <CONSOLE_STATUS+0x48>
    80005d30:	ffffc097          	auipc	ra,0xffffc
    80005d34:	d1c080e7          	jalr	-740(ra) # 80001a4c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005d38:	00048513          	mv	a0,s1
    80005d3c:	00000097          	auipc	ra,0x0
    80005d40:	f40080e7          	jalr	-192(ra) # 80005c7c <_ZN6Buffer6getCntEv>
    80005d44:	02a05c63          	blez	a0,80005d7c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005d48:	0084b783          	ld	a5,8(s1)
    80005d4c:	0104a703          	lw	a4,16(s1)
    80005d50:	00271713          	slli	a4,a4,0x2
    80005d54:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005d58:	0007c503          	lbu	a0,0(a5)
    80005d5c:	ffffb097          	auipc	ra,0xffffb
    80005d60:	6f4080e7          	jalr	1780(ra) # 80001450 <_Z4putcc>
        head = (head + 1) % cap;
    80005d64:	0104a783          	lw	a5,16(s1)
    80005d68:	0017879b          	addiw	a5,a5,1
    80005d6c:	0004a703          	lw	a4,0(s1)
    80005d70:	02e7e7bb          	remw	a5,a5,a4
    80005d74:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005d78:	fc1ff06f          	j	80005d38 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005d7c:	02100513          	li	a0,33
    80005d80:	ffffb097          	auipc	ra,0xffffb
    80005d84:	6d0080e7          	jalr	1744(ra) # 80001450 <_Z4putcc>
    putc('\n');
    80005d88:	00a00513          	li	a0,10
    80005d8c:	ffffb097          	auipc	ra,0xffffb
    80005d90:	6c4080e7          	jalr	1732(ra) # 80001450 <_Z4putcc>
    mem_free(buffer);
    80005d94:	0084b503          	ld	a0,8(s1)
    80005d98:	ffffb097          	auipc	ra,0xffffb
    80005d9c:	4d4080e7          	jalr	1236(ra) # 8000126c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005da0:	0204b503          	ld	a0,32(s1)
    80005da4:	ffffb097          	auipc	ra,0xffffb
    80005da8:	5b0080e7          	jalr	1456(ra) # 80001354 <_Z9sem_closeP7Semafor>
    sem_close(spaceAvailable);
    80005dac:	0184b503          	ld	a0,24(s1)
    80005db0:	ffffb097          	auipc	ra,0xffffb
    80005db4:	5a4080e7          	jalr	1444(ra) # 80001354 <_Z9sem_closeP7Semafor>
    sem_close(mutexTail);
    80005db8:	0304b503          	ld	a0,48(s1)
    80005dbc:	ffffb097          	auipc	ra,0xffffb
    80005dc0:	598080e7          	jalr	1432(ra) # 80001354 <_Z9sem_closeP7Semafor>
    sem_close(mutexHead);
    80005dc4:	0284b503          	ld	a0,40(s1)
    80005dc8:	ffffb097          	auipc	ra,0xffffb
    80005dcc:	58c080e7          	jalr	1420(ra) # 80001354 <_Z9sem_closeP7Semafor>
}
    80005dd0:	01813083          	ld	ra,24(sp)
    80005dd4:	01013403          	ld	s0,16(sp)
    80005dd8:	00813483          	ld	s1,8(sp)
    80005ddc:	02010113          	addi	sp,sp,32
    80005de0:	00008067          	ret

0000000080005de4 <_Z9userMain1Pv>:
extern "C" void supervisorTrap();
extern "C++" void userMain();

bool flag=true;

void userMain1(void* a){
    80005de4:	ff010113          	addi	sp,sp,-16
    80005de8:	00113423          	sd	ra,8(sp)
    80005dec:	00813023          	sd	s0,0(sp)
    80005df0:	01010413          	addi	s0,sp,16
    userMain();
    80005df4:	ffffe097          	auipc	ra,0xffffe
    80005df8:	194080e7          	jalr	404(ra) # 80003f88 <_Z8userMainv>
    flag=false;
    80005dfc:	00006797          	auipc	a5,0x6
    80005e00:	82078823          	sb	zero,-2000(a5) # 8000b62c <flag>
}
    80005e04:	00813083          	ld	ra,8(sp)
    80005e08:	00013403          	ld	s0,0(sp)
    80005e0c:	01010113          	addi	sp,sp,16
    80005e10:	00008067          	ret

0000000080005e14 <_Z12konzolaispisPv>:

void konzolaispis(void* a){
    80005e14:	ff010113          	addi	sp,sp,-16
    80005e18:	00113423          	sd	ra,8(sp)
    80005e1c:	00813023          	sd	s0,0(sp)
    80005e20:	01010413          	addi	s0,sp,16
    promenarezima();
    80005e24:	ffffb097          	auipc	ra,0xffffb
    80005e28:	6b8080e7          	jalr	1720(ra) # 800014dc <_Z13promenarezimav>
    80005e2c:	01c0006f          	j	80005e48 <_Z12konzolaispisPv+0x34>
    while(1){
        //Konzola::getcnbi()>0

        while(*((uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
            char c = Konzola::getizlaz();
    80005e30:	fffff097          	auipc	ra,0xfffff
    80005e34:	3d0080e7          	jalr	976(ra) # 80005200 <_ZN7Konzola8getizlazEv>
            *(char*)CONSOLE_TX_DATA = c;
    80005e38:	00006797          	auipc	a5,0x6
    80005e3c:	8407b783          	ld	a5,-1984(a5) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x48>
    80005e40:	0007b783          	ld	a5,0(a5)
    80005e44:	00a78023          	sb	a0,0(a5)
        while(*((uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80005e48:	00005797          	auipc	a5,0x5
    80005e4c:	7f87b783          	ld	a5,2040(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x10>
    80005e50:	0007b783          	ld	a5,0(a5)
    80005e54:	0007c783          	lbu	a5,0(a5)
    80005e58:	0207f793          	andi	a5,a5,32
    80005e5c:	fc079ae3          	bnez	a5,80005e30 <_Z12konzolaispisPv+0x1c>
        }
        thread_dispatch();
    80005e60:	ffffb097          	auipc	ra,0xffffb
    80005e64:	49c080e7          	jalr	1180(ra) # 800012fc <_Z15thread_dispatchv>

    }
    80005e68:	fe1ff06f          	j	80005e48 <_Z12konzolaispisPv+0x34>

0000000080005e6c <main>:
}

void main(){
    80005e6c:	f7010113          	addi	sp,sp,-144
    80005e70:	08113423          	sd	ra,136(sp)
    80005e74:	08813023          	sd	s0,128(sp)
    80005e78:	06913c23          	sd	s1,120(sp)
    80005e7c:	07213823          	sd	s2,112(sp)
    80005e80:	07313423          	sd	s3,104(sp)
    80005e84:	09010413          	addi	s0,sp,144

    __asm__ volatile("csrw stvec, %0" : : "r" (&supervisorTrap));
    80005e88:	00005797          	auipc	a5,0x5
    80005e8c:	7e87b783          	ld	a5,2024(a5) # 8000b670 <_GLOBAL_OFFSET_TABLE_+0x40>
    80005e90:	10579073          	csrw	stvec,a5

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    80005e94:	100027f3          	csrr	a5,sstatus
    80005e98:	fcf43423          	sd	a5,-56(s0)
    sstatus|=2;
    80005e9c:	fc843783          	ld	a5,-56(s0)
    80005ea0:	0027e793          	ori	a5,a5,2
    80005ea4:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
    80005ea8:	fc843783          	ld	a5,-56(s0)
    80005eac:	10079073          	csrw	sstatus,a5
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Konzola::baferulaz=(Bafer*) Memorija::alokacija(Konzola::kapacitet*sizeof(Bafer));
    80005eb0:	00005917          	auipc	s2,0x5
    80005eb4:	7b893903          	ld	s2,1976(s2) # 8000b668 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005eb8:	00092783          	lw	a5,0(s2)
    80005ebc:	00379513          	slli	a0,a5,0x3
    80005ec0:	40f50533          	sub	a0,a0,a5
    80005ec4:	00351513          	slli	a0,a0,0x3
    80005ec8:	fffff097          	auipc	ra,0xfffff
    80005ecc:	470080e7          	jalr	1136(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80005ed0:	00005997          	auipc	s3,0x5
    80005ed4:	7889b983          	ld	s3,1928(s3) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x28>
    80005ed8:	00a9b023          	sd	a0,0(s3)
    *Konzola::baferulaz=Bafer(Konzola::kapacitet);
    80005edc:	00092583          	lw	a1,0(s2)
    80005ee0:	f7840493          	addi	s1,s0,-136
    80005ee4:	00048513          	mv	a0,s1
    80005ee8:	ffffc097          	auipc	ra,0xffffc
    80005eec:	e10080e7          	jalr	-496(ra) # 80001cf8 <_ZN5BaferC1Ei>
    80005ef0:	0009b783          	ld	a5,0(s3)
    80005ef4:	f8043803          	ld	a6,-128(s0)
    80005ef8:	f8843503          	ld	a0,-120(s0)
    80005efc:	f9043583          	ld	a1,-112(s0)
    80005f00:	f9843603          	ld	a2,-104(s0)
    80005f04:	fa043683          	ld	a3,-96(s0)
    80005f08:	fa843703          	ld	a4,-88(s0)
    80005f0c:	f7843883          	ld	a7,-136(s0)
    80005f10:	0117b023          	sd	a7,0(a5)
    80005f14:	0107b423          	sd	a6,8(a5)
    80005f18:	00a7b823          	sd	a0,16(a5)
    80005f1c:	00b7bc23          	sd	a1,24(a5)
    80005f20:	02c7b023          	sd	a2,32(a5)
    80005f24:	02d7b423          	sd	a3,40(a5)
    80005f28:	02e7b823          	sd	a4,48(a5)
    80005f2c:	00048513          	mv	a0,s1
    80005f30:	ffffc097          	auipc	ra,0xffffc
    80005f34:	eac080e7          	jalr	-340(ra) # 80001ddc <_ZN5BaferD1Ev>

    Konzola::baferizlaz=(Bafer*) Memorija::alokacija(Konzola::kapacitet*sizeof(Bafer));
    80005f38:	00092783          	lw	a5,0(s2)
    80005f3c:	00379513          	slli	a0,a5,0x3
    80005f40:	40f50533          	sub	a0,a0,a5
    80005f44:	00351513          	slli	a0,a0,0x3
    80005f48:	fffff097          	auipc	ra,0xfffff
    80005f4c:	3f0080e7          	jalr	1008(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    80005f50:	00005997          	auipc	s3,0x5
    80005f54:	6f89b983          	ld	s3,1784(s3) # 8000b648 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005f58:	00a9b023          	sd	a0,0(s3)
    *Konzola::baferizlaz=Bafer(Konzola::kapacitet);
    80005f5c:	00092583          	lw	a1,0(s2)
    80005f60:	00048513          	mv	a0,s1
    80005f64:	ffffc097          	auipc	ra,0xffffc
    80005f68:	d94080e7          	jalr	-620(ra) # 80001cf8 <_ZN5BaferC1Ei>
    80005f6c:	0009b783          	ld	a5,0(s3)
    80005f70:	f8043803          	ld	a6,-128(s0)
    80005f74:	f8843503          	ld	a0,-120(s0)
    80005f78:	f9043583          	ld	a1,-112(s0)
    80005f7c:	f9843603          	ld	a2,-104(s0)
    80005f80:	fa043683          	ld	a3,-96(s0)
    80005f84:	fa843703          	ld	a4,-88(s0)
    80005f88:	f7843883          	ld	a7,-136(s0)
    80005f8c:	0117b023          	sd	a7,0(a5)
    80005f90:	0107b423          	sd	a6,8(a5)
    80005f94:	00a7b823          	sd	a0,16(a5)
    80005f98:	00b7bc23          	sd	a1,24(a5)
    80005f9c:	02c7b023          	sd	a2,32(a5)
    80005fa0:	02d7b423          	sd	a3,40(a5)
    80005fa4:	02e7b823          	sd	a4,48(a5)
    80005fa8:	00048513          	mv	a0,s1
    80005fac:	ffffc097          	auipc	ra,0xffffc
    80005fb0:	e30080e7          	jalr	-464(ra) # 80001ddc <_ZN5BaferD1Ev>

    Nit *t1;
    Nit *t2;
    Nit *t3;
    thread_create(&t1,nullptr,nullptr);
    80005fb4:	00000613          	li	a2,0
    80005fb8:	00000593          	li	a1,0
    80005fbc:	fc040513          	addi	a0,s0,-64
    80005fc0:	ffffb097          	auipc	ra,0xffffb
    80005fc4:	2dc080e7          	jalr	732(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    thread_create(&t2,&userMain1,nullptr);
    80005fc8:	00000613          	li	a2,0
    80005fcc:	00000597          	auipc	a1,0x0
    80005fd0:	e1858593          	addi	a1,a1,-488 # 80005de4 <_Z9userMain1Pv>
    80005fd4:	fb840513          	addi	a0,s0,-72
    80005fd8:	ffffb097          	auipc	ra,0xffffb
    80005fdc:	2c4080e7          	jalr	708(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    thread_create(&t3,&konzolaispis,nullptr);
    80005fe0:	00000613          	li	a2,0
    80005fe4:	00000597          	auipc	a1,0x0
    80005fe8:	e3058593          	addi	a1,a1,-464 # 80005e14 <_Z12konzolaispisPv>
    80005fec:	fb040513          	addi	a0,s0,-80
    80005ff0:	ffffb097          	auipc	ra,0xffffb
    80005ff4:	2ac080e7          	jalr	684(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>

    //userMain();
    while(flag){
    80005ff8:	00005797          	auipc	a5,0x5
    80005ffc:	6347c783          	lbu	a5,1588(a5) # 8000b62c <flag>
    80006000:	00078863          	beqz	a5,80006010 <main+0x1a4>
        thread_dispatch();
    80006004:	ffffb097          	auipc	ra,0xffffb
    80006008:	2f8080e7          	jalr	760(ra) # 800012fc <_Z15thread_dispatchv>
    8000600c:	fedff06f          	j	80005ff8 <main+0x18c>
    }

    sstatus=0;
    80006010:	fc043423          	sd	zero,-56(s0)
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
    80006014:	fc843783          	ld	a5,-56(s0)
    80006018:	10079073          	csrw	sstatus,a5
}
    8000601c:	08813083          	ld	ra,136(sp)
    80006020:	08013403          	ld	s0,128(sp)
    80006024:	07813483          	ld	s1,120(sp)
    80006028:	07013903          	ld	s2,112(sp)
    8000602c:	06813983          	ld	s3,104(sp)
    80006030:	09010113          	addi	sp,sp,144
    80006034:	00008067          	ret

0000000080006038 <_Z5printPKc>:
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/print.h"

void print(char const *string){
    80006038:	fe010113          	addi	sp,sp,-32
    8000603c:	00113c23          	sd	ra,24(sp)
    80006040:	00813823          	sd	s0,16(sp)
    80006044:	00913423          	sd	s1,8(sp)
    80006048:	02010413          	addi	s0,sp,32
    8000604c:	00050493          	mv	s1,a0
    while(*string!='\0'){
    80006050:	0004c503          	lbu	a0,0(s1)
    80006054:	00050a63          	beqz	a0,80006068 <_Z5printPKc+0x30>
        putc(*string);
    80006058:	ffffb097          	auipc	ra,0xffffb
    8000605c:	3f8080e7          	jalr	1016(ra) # 80001450 <_Z4putcc>
        string++;
    80006060:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80006064:	fedff06f          	j	80006050 <_Z5printPKc+0x18>
    }
}
    80006068:	01813083          	ld	ra,24(sp)
    8000606c:	01013403          	ld	s0,16(sp)
    80006070:	00813483          	ld	s1,8(sp)
    80006074:	02010113          	addi	sp,sp,32
    80006078:	00008067          	ret

000000008000607c <_Z5printi>:

void print(int n){
    8000607c:	ee010113          	addi	sp,sp,-288
    80006080:	10113c23          	sd	ra,280(sp)
    80006084:	10813823          	sd	s0,272(sp)
    80006088:	10913423          	sd	s1,264(sp)
    8000608c:	12010413          	addi	s0,sp,288
    80006090:	00050493          	mv	s1,a0
    if(n==0) putc('0');
    80006094:	02050a63          	beqz	a0,800060c8 <_Z5printi+0x4c>
    if(n<0){
    80006098:	0404c063          	bltz	s1,800060d8 <_Z5printi+0x5c>
void print(int n){
    8000609c:	00000793          	li	a5,0
        putc('-');
        n*=-1;
    }
    int cifre[64];
    int i=0;
    for(;n;i++,n=n/10){
    800060a0:	04048663          	beqz	s1,800060ec <_Z5printi+0x70>
        cifre[i]=n%10;
    800060a4:	00a00693          	li	a3,10
    800060a8:	02d4e63b          	remw	a2,s1,a3
    800060ac:	00279713          	slli	a4,a5,0x2
    800060b0:	fe040593          	addi	a1,s0,-32
    800060b4:	00e58733          	add	a4,a1,a4
    800060b8:	f0c72023          	sw	a2,-256(a4)
    for(;n;i++,n=n/10){
    800060bc:	0017879b          	addiw	a5,a5,1
    800060c0:	02d4c4bb          	divw	s1,s1,a3
    800060c4:	fddff06f          	j	800060a0 <_Z5printi+0x24>
    if(n==0) putc('0');
    800060c8:	03000513          	li	a0,48
    800060cc:	ffffb097          	auipc	ra,0xffffb
    800060d0:	384080e7          	jalr	900(ra) # 80001450 <_Z4putcc>
    800060d4:	fc5ff06f          	j	80006098 <_Z5printi+0x1c>
        putc('-');
    800060d8:	02d00513          	li	a0,45
    800060dc:	ffffb097          	auipc	ra,0xffffb
    800060e0:	374080e7          	jalr	884(ra) # 80001450 <_Z4putcc>
        n*=-1;
    800060e4:	409004bb          	negw	s1,s1
    800060e8:	fb5ff06f          	j	8000609c <_Z5printi+0x20>
    }
    i--;
    800060ec:	fff7879b          	addiw	a5,a5,-1
    while(i>=0){
    800060f0:	0207c863          	bltz	a5,80006120 <_Z5printi+0xa4>
        putc('0'+cifre[i--]);
    800060f4:	fff7849b          	addiw	s1,a5,-1
    800060f8:	00279793          	slli	a5,a5,0x2
    800060fc:	fe040713          	addi	a4,s0,-32
    80006100:	00f707b3          	add	a5,a4,a5
    80006104:	f007a503          	lw	a0,-256(a5)
    80006108:	0305051b          	addiw	a0,a0,48
    8000610c:	0ff57513          	andi	a0,a0,255
    80006110:	ffffb097          	auipc	ra,0xffffb
    80006114:	340080e7          	jalr	832(ra) # 80001450 <_Z4putcc>
    80006118:	00048793          	mv	a5,s1
    8000611c:	fd5ff06f          	j	800060f0 <_Z5printi+0x74>
    }

    putc('\n');
    80006120:	00a00513          	li	a0,10
    80006124:	ffffb097          	auipc	ra,0xffffb
    80006128:	32c080e7          	jalr	812(ra) # 80001450 <_Z4putcc>
}
    8000612c:	11813083          	ld	ra,280(sp)
    80006130:	11013403          	ld	s0,272(sp)
    80006134:	10813483          	ld	s1,264(sp)
    80006138:	12010113          	addi	sp,sp,288
    8000613c:	00008067          	ret

0000000080006140 <_ZN3Nit6stampaEv>:

extern "C" void pop();

extern "C" void contextSwitch(Nit::struktura*, Nit::struktura*);

void Nit::stampa() {
    80006140:	fe010113          	addi	sp,sp,-32
    80006144:	00113c23          	sd	ra,24(sp)
    80006148:	00813823          	sd	s0,16(sp)
    8000614c:	00913423          	sd	s1,8(sp)
    80006150:	02010413          	addi	s0,sp,32
    80006154:	00050493          	mv	s1,a0
    print("ID: ");
    80006158:	00003517          	auipc	a0,0x3
    8000615c:	29850513          	addi	a0,a0,664 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80006160:	00000097          	auipc	ra,0x0
    80006164:	ed8080e7          	jalr	-296(ra) # 80006038 <_Z5printPKc>
    print(ID);
    80006168:	0044a503          	lw	a0,4(s1)
    8000616c:	00000097          	auipc	ra,0x0
    80006170:	f10080e7          	jalr	-240(ra) # 8000607c <_Z5printi>
}
    80006174:	01813083          	ld	ra,24(sp)
    80006178:	01013403          	ld	s0,16(sp)
    8000617c:	00813483          	ld	s1,8(sp)
    80006180:	02010113          	addi	sp,sp,32
    80006184:	00008067          	ret

0000000080006188 <_ZN3Nit11konstruktorEPFvPvES0_i>:

Nit* Nit::konstruktor(body funkcija, void *arg,int a) {
    80006188:	fd010113          	addi	sp,sp,-48
    8000618c:	02113423          	sd	ra,40(sp)
    80006190:	02813023          	sd	s0,32(sp)
    80006194:	00913c23          	sd	s1,24(sp)
    80006198:	01213823          	sd	s2,16(sp)
    8000619c:	01313423          	sd	s3,8(sp)
    800061a0:	01413023          	sd	s4,0(sp)
    800061a4:	03010413          	addi	s0,sp,48
    800061a8:	00050913          	mv	s2,a0
    800061ac:	00058993          	mv	s3,a1
    800061b0:	00060a13          	mv	s4,a2
        return Memorija::alokacija(n);
    800061b4:	04800513          	li	a0,72
    800061b8:	fffff097          	auipc	ra,0xfffff
    800061bc:	180080e7          	jalr	384(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    800061c0:	00050493          	mv	s1,a0
    void* arg;
    bool flagunisti=false;

private:

    Nit(body funkcija1, void* arg){
    800061c4:	00052023          	sw	zero,0(a0)
    800061c8:	00005717          	auipc	a4,0x5
    800061cc:	59870713          	addi	a4,a4,1432 # 8000b760 <_ZN3Nit3IDDE>
    800061d0:	00072783          	lw	a5,0(a4)
    800061d4:	0017869b          	addiw	a3,a5,1
    800061d8:	00d72023          	sw	a3,0(a4)
    800061dc:	00f52223          	sw	a5,4(a0)
    800061e0:	00050c23          	sb	zero,24(a0)
        funkcija=funkcija1;
    800061e4:	03253823          	sd	s2,48(a0)
        finished=false;
    800061e8:	00050423          	sb	zero,8(a0)
        this->arg=arg;
    800061ec:	01353823          	sd	s3,16(a0)
        struktura1.pc=(uint64)&omotac;
    800061f0:	00000797          	auipc	a5,0x0
    800061f4:	19078793          	addi	a5,a5,400 # 80006380 <_ZN3Nit6omotacEv>
    800061f8:	02f53023          	sd	a5,32(a0)
        //if(funkcija1!=nullptr) stek = new uint64[DEFAULT_STACK_SIZE];
        if(funkcija1!=nullptr) stek = (uint64*)Memorija::alokacija(DEFAULT_STACK_SIZE* sizeof(uint64));
    800061fc:	00090a63          	beqz	s2,80006210 <_ZN3Nit11konstruktorEPFvPvES0_i+0x88>
    80006200:	00008537          	lui	a0,0x8
    80006204:	fffff097          	auipc	ra,0xfffff
    80006208:	134080e7          	jalr	308(ra) # 80005338 <_ZN8Memorija9alokacijaEm>
    8000620c:	02a4bc23          	sd	a0,56(s1)
        if(funkcija1!=nullptr) struktura1.sp=(uint64)&stek[DEFAULT_STACK_SIZE];
    80006210:	00090a63          	beqz	s2,80006224 <_ZN3Nit11konstruktorEPFvPvES0_i+0x9c>
    80006214:	0384b783          	ld	a5,56(s1)
    80006218:	00008737          	lui	a4,0x8
    8000621c:	00e787b3          	add	a5,a5,a4
    80006220:	02f4b423          	sd	a5,40(s1)
        if(funkcija1!=nullptr) vreme = DEFAULT_TIME_SLICE;
    80006224:	00090663          	beqz	s2,80006230 <_ZN3Nit11konstruktorEPFvPvES0_i+0xa8>
    80006228:	00200793          	li	a5,2
    8000622c:	04f4b023          	sd	a5,64(s1)
    Nit* t = new Nit(funkcija, arg);
    if(Nit::running==nullptr) {Nit::running=t; return t;}
    80006230:	00005797          	auipc	a5,0x5
    80006234:	5387b783          	ld	a5,1336(a5) # 8000b768 <_ZN3Nit7runningE>
    80006238:	02078663          	beqz	a5,80006264 <_ZN3Nit11konstruktorEPFvPvES0_i+0xdc>
    if(a) Scheduler::put(t);
    8000623c:	020a1a63          	bnez	s4,80006270 <_ZN3Nit11konstruktorEPFvPvES0_i+0xe8>
    return t;
}
    80006240:	00048513          	mv	a0,s1
    80006244:	02813083          	ld	ra,40(sp)
    80006248:	02013403          	ld	s0,32(sp)
    8000624c:	01813483          	ld	s1,24(sp)
    80006250:	01013903          	ld	s2,16(sp)
    80006254:	00813983          	ld	s3,8(sp)
    80006258:	00013a03          	ld	s4,0(sp)
    8000625c:	03010113          	addi	sp,sp,48
    80006260:	00008067          	ret
    if(Nit::running==nullptr) {Nit::running=t; return t;}
    80006264:	00005797          	auipc	a5,0x5
    80006268:	5097b223          	sd	s1,1284(a5) # 8000b768 <_ZN3Nit7runningE>
    8000626c:	fd5ff06f          	j	80006240 <_ZN3Nit11konstruktorEPFvPvES0_i+0xb8>
    if(a) Scheduler::put(t);
    80006270:	00048513          	mv	a0,s1
    80006274:	fffff097          	auipc	ra,0xfffff
    80006278:	42c080e7          	jalr	1068(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>
    8000627c:	fc5ff06f          	j	80006240 <_ZN3Nit11konstruktorEPFvPvES0_i+0xb8>
    80006280:	00050913          	mv	s2,a0
        Memorija::oslobadjanje(p);
    80006284:	00048513          	mv	a0,s1
    80006288:	fffff097          	auipc	ra,0xfffff
    8000628c:	1d0080e7          	jalr	464(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
    80006290:	00090513          	mv	a0,s2
    80006294:	00006097          	auipc	ra,0x6
    80006298:	5b4080e7          	jalr	1460(ra) # 8000c848 <_Unwind_Resume>

000000008000629c <_ZN3Nit5yeildEv>:

void Nit::yeild() {
    8000629c:	ff010113          	addi	sp,sp,-16
    800062a0:	00113423          	sd	ra,8(sp)
    800062a4:	00813023          	sd	s0,0(sp)
    800062a8:	01010413          	addi	s0,sp,16
    //push();
    //dispatch();
    //pop();

    thread_dispatch();
    800062ac:	ffffb097          	auipc	ra,0xffffb
    800062b0:	050080e7          	jalr	80(ra) # 800012fc <_Z15thread_dispatchv>
}
    800062b4:	00813083          	ld	ra,8(sp)
    800062b8:	00013403          	ld	s0,0(sp)
    800062bc:	01010113          	addi	sp,sp,16
    800062c0:	00008067          	ret

00000000800062c4 <_ZN3Nit8dispatchEv>:

void Nit::dispatch() {
    800062c4:	fe010113          	addi	sp,sp,-32
    800062c8:	00113c23          	sd	ra,24(sp)
    800062cc:	00813823          	sd	s0,16(sp)
    800062d0:	00913423          	sd	s1,8(sp)
    800062d4:	02010413          	addi	s0,sp,32

    if(running==nullptr) {
    800062d8:	00005497          	auipc	s1,0x5
    800062dc:	4904b483          	ld	s1,1168(s1) # 8000b768 <_ZN3Nit7runningE>
    800062e0:	04048063          	beqz	s1,80006320 <_ZN3Nit8dispatchEv+0x5c>
        return;
    }
    //if(!Scheduler::gethead()) return;

    Nit* old = Nit::running;
    if(!old->finished) Scheduler::put(old);
    800062e4:	0084c783          	lbu	a5,8(s1)
    800062e8:	04078663          	beqz	a5,80006334 <_ZN3Nit8dispatchEv+0x70>
    running = Scheduler::get();
    800062ec:	fffff097          	auipc	ra,0xfffff
    800062f0:	320080e7          	jalr	800(ra) # 8000560c <_ZN9Scheduler3getEv>
    800062f4:	00005797          	auipc	a5,0x5
    800062f8:	46a7ba23          	sd	a0,1140(a5) # 8000b768 <_ZN3Nit7runningE>
    //}
    //Scheduler::Print();
    //print("b\n");
    //if(running==old) dispatch();

    contextSwitch(&old->struktura1,&running->struktura1);
    800062fc:	02050593          	addi	a1,a0,32 # 8020 <_entry-0x7fff7fe0>
    80006300:	02048513          	addi	a0,s1,32
    80006304:	ffffb097          	auipc	ra,0xffffb
    80006308:	efc080e7          	jalr	-260(ra) # 80001200 <contextSwitch>

}
    8000630c:	01813083          	ld	ra,24(sp)
    80006310:	01013403          	ld	s0,16(sp)
    80006314:	00813483          	ld	s1,8(sp)
    80006318:	02010113          	addi	sp,sp,32
    8000631c:	00008067          	ret
        print("krindz\n");
    80006320:	00003517          	auipc	a0,0x3
    80006324:	0c050513          	addi	a0,a0,192 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80006328:	00000097          	auipc	ra,0x0
    8000632c:	d10080e7          	jalr	-752(ra) # 80006038 <_Z5printPKc>
        return;
    80006330:	fddff06f          	j	8000630c <_ZN3Nit8dispatchEv+0x48>
    if(!old->finished) Scheduler::put(old);
    80006334:	00048513          	mv	a0,s1
    80006338:	fffff097          	auipc	ra,0xfffff
    8000633c:	368080e7          	jalr	872(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>
    80006340:	fadff06f          	j	800062ec <_ZN3Nit8dispatchEv+0x28>

0000000080006344 <_ZN3Nit5pomocEv>:

void Nit::pomoc() {
    80006344:	fe010113          	addi	sp,sp,-32
    80006348:	00813c23          	sd	s0,24(sp)
    8000634c:	02010413          	addi	s0,sp,32
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    80006350:	100027f3          	csrr	a5,sstatus
    80006354:	fef43423          	sd	a5,-24(s0)
    sstatus&=~256;
    80006358:	fe843783          	ld	a5,-24(s0)
    8000635c:	eff7f793          	andi	a5,a5,-257
    80006360:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
    80006364:	fe843783          	ld	a5,-24(s0)
    80006368:	10079073          	csrw	sstatus,a5

    __asm__ volatile("csrw sepc, ra");
    8000636c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80006370:	10200073          	sret
}
    80006374:	01813403          	ld	s0,24(sp)
    80006378:	02010113          	addi	sp,sp,32
    8000637c:	00008067          	ret

0000000080006380 <_ZN3Nit6omotacEv>:

void Nit::omotac() {
    80006380:	fe010113          	addi	sp,sp,-32
    80006384:	00113c23          	sd	ra,24(sp)
    80006388:	00813823          	sd	s0,16(sp)
    8000638c:	00913423          	sd	s1,8(sp)
    80006390:	02010413          	addi	s0,sp,32
    Nit::pomoc();
    80006394:	00000097          	auipc	ra,0x0
    80006398:	fb0080e7          	jalr	-80(ra) # 80006344 <_ZN3Nit5pomocEv>
    running->funkcija(Nit::running->arg);
    8000639c:	00005497          	auipc	s1,0x5
    800063a0:	3c448493          	addi	s1,s1,964 # 8000b760 <_ZN3Nit3IDDE>
    800063a4:	0084b783          	ld	a5,8(s1)
    800063a8:	0307b703          	ld	a4,48(a5)
    800063ac:	0107b503          	ld	a0,16(a5)
    800063b0:	000700e7          	jalr	a4 # 8000 <_entry-0x7fff8000>
    running->finished=true;
    800063b4:	0084b783          	ld	a5,8(s1)
    800063b8:	00100713          	li	a4,1
    800063bc:	00e78423          	sb	a4,8(a5)
    thread_dispatch();
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	f3c080e7          	jalr	-196(ra) # 800012fc <_Z15thread_dispatchv>
}
    800063c8:	01813083          	ld	ra,24(sp)
    800063cc:	01013403          	ld	s0,16(sp)
    800063d0:	00813483          	ld	s1,8(sp)
    800063d4:	02010113          	addi	sp,sp,32
    800063d8:	00008067          	ret

00000000800063dc <_ZN7Semafor4waitEv>:

int Semafor::idd=0;

int Semafor::wait() {
    //neki if treba za val
    if (--val>=0) return -1;
    800063dc:	01852783          	lw	a5,24(a0)
    800063e0:	fff7879b          	addiw	a5,a5,-1
    800063e4:	00f52c23          	sw	a5,24(a0)
    800063e8:	02079713          	slli	a4,a5,0x20
    800063ec:	08075063          	bgez	a4,8000646c <_ZN7Semafor4waitEv+0x90>
int Semafor::wait() {
    800063f0:	fe010113          	addi	sp,sp,-32
    800063f4:	00113c23          	sd	ra,24(sp)
    800063f8:	00813823          	sd	s0,16(sp)
    800063fc:	00913423          	sd	s1,8(sp)
    80006400:	02010413          	addi	s0,sp,32
    80006404:	00050493          	mv	s1,a0

    struktura* temp = (struktura*)Memorija::alokacija(sizeof(struktura));
    80006408:	01000513          	li	a0,16
    8000640c:	fffff097          	auipc	ra,0xfffff
    80006410:	f2c080e7          	jalr	-212(ra) # 80005338 <_ZN8Memorija9alokacijaEm>

    if(temp==nullptr) return -2;
    80006414:	06050063          	beqz	a0,80006474 <_ZN7Semafor4waitEv+0x98>

    temp->t=Nit::running;
    80006418:	00005797          	auipc	a5,0x5
    8000641c:	2887b783          	ld	a5,648(a5) # 8000b6a0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80006420:	0007b783          	ld	a5,0(a5)
    80006424:	00f53023          	sd	a5,0(a0)
    temp->next=nullptr;
    80006428:	00053423          	sd	zero,8(a0)

    if(head==nullptr){
    8000642c:	0104b703          	ld	a4,16(s1)
    80006430:	02070863          	beqz	a4,80006460 <_ZN7Semafor4waitEv+0x84>
        head=temp;
        tail=temp;
    }
    else{
        tail->next=temp;
    80006434:	0084b703          	ld	a4,8(s1)
    80006438:	00a73423          	sd	a0,8(a4)
        tail=temp;
    8000643c:	00a4b423          	sd	a0,8(s1)
    }

    Nit::running->finished=true;
    80006440:	00100713          	li	a4,1
    80006444:	00e78423          	sb	a4,8(a5)
    return Nit::running->prekid;
    80006448:	0007a503          	lw	a0,0(a5)
}
    8000644c:	01813083          	ld	ra,24(sp)
    80006450:	01013403          	ld	s0,16(sp)
    80006454:	00813483          	ld	s1,8(sp)
    80006458:	02010113          	addi	sp,sp,32
    8000645c:	00008067          	ret
        head=temp;
    80006460:	00a4b823          	sd	a0,16(s1)
        tail=temp;
    80006464:	00a4b423          	sd	a0,8(s1)
    80006468:	fd9ff06f          	j	80006440 <_ZN7Semafor4waitEv+0x64>
    if (--val>=0) return -1;
    8000646c:	fff00513          	li	a0,-1
}
    80006470:	00008067          	ret
    if(temp==nullptr) return -2;
    80006474:	ffe00513          	li	a0,-2
    80006478:	fd5ff06f          	j	8000644c <_ZN7Semafor4waitEv+0x70>

000000008000647c <_ZN7Semafor6signalEv>:

int Semafor::signal() {

    //neki if treba za val
    if (val++>=0) return -1;
    8000647c:	01852783          	lw	a5,24(a0)
    80006480:	0017871b          	addiw	a4,a5,1
    80006484:	00e52c23          	sw	a4,24(a0)
    80006488:	0607d063          	bgez	a5,800064e8 <_ZN7Semafor6signalEv+0x6c>
int Semafor::signal() {
    8000648c:	fe010113          	addi	sp,sp,-32
    80006490:	00113c23          	sd	ra,24(sp)
    80006494:	00813823          	sd	s0,16(sp)
    80006498:	00913423          	sd	s1,8(sp)
    8000649c:	02010413          	addi	s0,sp,32

    if(head==nullptr) return -2;
    800064a0:	01053483          	ld	s1,16(a0)
    800064a4:	04048663          	beqz	s1,800064f0 <_ZN7Semafor6signalEv+0x74>
    struktura* temp = head;

    head=temp->next;
    800064a8:	0084b783          	ld	a5,8(s1)
    800064ac:	00f53823          	sd	a5,16(a0)

    temp->t->finished=false;
    800064b0:	0004b783          	ld	a5,0(s1)
    800064b4:	00078423          	sb	zero,8(a5)
    Scheduler::put(temp->t);
    800064b8:	0004b503          	ld	a0,0(s1)
    800064bc:	fffff097          	auipc	ra,0xfffff
    800064c0:	1e4080e7          	jalr	484(ra) # 800056a0 <_ZN9Scheduler3putEP3Nit>

    Memorija::oslobadjanje(temp);
    800064c4:	00048513          	mv	a0,s1
    800064c8:	fffff097          	auipc	ra,0xfffff
    800064cc:	f90080e7          	jalr	-112(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
    return 0;
    800064d0:	00000513          	li	a0,0
}
    800064d4:	01813083          	ld	ra,24(sp)
    800064d8:	01013403          	ld	s0,16(sp)
    800064dc:	00813483          	ld	s1,8(sp)
    800064e0:	02010113          	addi	sp,sp,32
    800064e4:	00008067          	ret
    if (val++>=0) return -1;
    800064e8:	fff00513          	li	a0,-1
}
    800064ec:	00008067          	ret
    if(head==nullptr) return -2;
    800064f0:	ffe00513          	li	a0,-2
    800064f4:	fe1ff06f          	j	800064d4 <_ZN7Semafor6signalEv+0x58>

00000000800064f8 <_ZN7Semafor5PrintEv>:

void Semafor::Print() {
    800064f8:	fe010113          	addi	sp,sp,-32
    800064fc:	00113c23          	sd	ra,24(sp)
    80006500:	00813823          	sd	s0,16(sp)
    80006504:	00913423          	sd	s1,8(sp)
    80006508:	02010413          	addi	s0,sp,32
    8000650c:	00050493          	mv	s1,a0
    print("SEMAFOR\nID: ");
    80006510:	00003517          	auipc	a0,0x3
    80006514:	ed850513          	addi	a0,a0,-296 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80006518:	00000097          	auipc	ra,0x0
    8000651c:	b20080e7          	jalr	-1248(ra) # 80006038 <_Z5printPKc>
    print(id);
    80006520:	0004a503          	lw	a0,0(s1)
    80006524:	00000097          	auipc	ra,0x0
    80006528:	b58080e7          	jalr	-1192(ra) # 8000607c <_Z5printi>
    print("VAL: ");
    8000652c:	00003517          	auipc	a0,0x3
    80006530:	ecc50513          	addi	a0,a0,-308 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80006534:	00000097          	auipc	ra,0x0
    80006538:	b04080e7          	jalr	-1276(ra) # 80006038 <_Z5printPKc>
    print(val);
    8000653c:	0184a503          	lw	a0,24(s1)
    80006540:	00000097          	auipc	ra,0x0
    80006544:	b3c080e7          	jalr	-1220(ra) # 8000607c <_Z5printi>
    print("LISTA:\n");
    80006548:	00003517          	auipc	a0,0x3
    8000654c:	eb850513          	addi	a0,a0,-328 # 80009400 <CONSOLE_STATUS+0x3f0>
    80006550:	00000097          	auipc	ra,0x0
    80006554:	ae8080e7          	jalr	-1304(ra) # 80006038 <_Z5printPKc>
    struktura *temp=head;
    80006558:	0104b483          	ld	s1,16(s1)
    while(temp){
    8000655c:	00048c63          	beqz	s1,80006574 <_ZN7Semafor5PrintEv+0x7c>
        temp->t->stampa();
    80006560:	0004b503          	ld	a0,0(s1)
    80006564:	00000097          	auipc	ra,0x0
    80006568:	bdc080e7          	jalr	-1060(ra) # 80006140 <_ZN3Nit6stampaEv>
        temp=temp->next;
    8000656c:	0084b483          	ld	s1,8(s1)
    while(temp){
    80006570:	fedff06f          	j	8000655c <_ZN7Semafor5PrintEv+0x64>
    }
    print("kraj\n");
    80006574:	00003517          	auipc	a0,0x3
    80006578:	e9450513          	addi	a0,a0,-364 # 80009408 <CONSOLE_STATUS+0x3f8>
    8000657c:	00000097          	auipc	ra,0x0
    80006580:	abc080e7          	jalr	-1348(ra) # 80006038 <_Z5printPKc>
}
    80006584:	01813083          	ld	ra,24(sp)
    80006588:	01013403          	ld	s0,16(sp)
    8000658c:	00813483          	ld	s1,8(sp)
    80006590:	02010113          	addi	sp,sp,32
    80006594:	00008067          	ret

0000000080006598 <_ZN7Semafor5closeEv>:

void Semafor::close() {
    80006598:	fe010113          	addi	sp,sp,-32
    8000659c:	00113c23          	sd	ra,24(sp)
    800065a0:	00813823          	sd	s0,16(sp)
    800065a4:	00913423          	sd	s1,8(sp)
    800065a8:	02010413          	addi	s0,sp,32
    800065ac:	00050493          	mv	s1,a0
    while(this->head){
    800065b0:	0104b783          	ld	a5,16(s1)
    800065b4:	02078063          	beqz	a5,800065d4 <_ZN7Semafor5closeEv+0x3c>
        this->head->t->prekid=5;
    800065b8:	0007b783          	ld	a5,0(a5)
    800065bc:	00500713          	li	a4,5
    800065c0:	00e7a023          	sw	a4,0(a5)
        this->signal();
    800065c4:	00048513          	mv	a0,s1
    800065c8:	00000097          	auipc	ra,0x0
    800065cc:	eb4080e7          	jalr	-332(ra) # 8000647c <_ZN7Semafor6signalEv>
    while(this->head){
    800065d0:	fe1ff06f          	j	800065b0 <_ZN7Semafor5closeEv+0x18>
    }

    Memorija::oslobadjanje(this);
    800065d4:	00048513          	mv	a0,s1
    800065d8:	fffff097          	auipc	ra,0xfffff
    800065dc:	e80080e7          	jalr	-384(ra) # 80005458 <_ZN8Memorija12oslobadjanjeEPv>
}
    800065e0:	01813083          	ld	ra,24(sp)
    800065e4:	01013403          	ld	s0,16(sp)
    800065e8:	00813483          	ld	s1,8(sp)
    800065ec:	02010113          	addi	sp,sp,32
    800065f0:	00008067          	ret

00000000800065f4 <start>:
    800065f4:	ff010113          	addi	sp,sp,-16
    800065f8:	00813423          	sd	s0,8(sp)
    800065fc:	01010413          	addi	s0,sp,16
    80006600:	300027f3          	csrr	a5,mstatus
    80006604:	ffffe737          	lui	a4,0xffffe
    80006608:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1e1f>
    8000660c:	00e7f7b3          	and	a5,a5,a4
    80006610:	00001737          	lui	a4,0x1
    80006614:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006618:	00e7e7b3          	or	a5,a5,a4
    8000661c:	30079073          	csrw	mstatus,a5
    80006620:	00000797          	auipc	a5,0x0
    80006624:	16078793          	addi	a5,a5,352 # 80006780 <system_main>
    80006628:	34179073          	csrw	mepc,a5
    8000662c:	00000793          	li	a5,0
    80006630:	18079073          	csrw	satp,a5
    80006634:	000107b7          	lui	a5,0x10
    80006638:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000663c:	30279073          	csrw	medeleg,a5
    80006640:	30379073          	csrw	mideleg,a5
    80006644:	104027f3          	csrr	a5,sie
    80006648:	2227e793          	ori	a5,a5,546
    8000664c:	10479073          	csrw	sie,a5
    80006650:	fff00793          	li	a5,-1
    80006654:	00a7d793          	srli	a5,a5,0xa
    80006658:	3b079073          	csrw	pmpaddr0,a5
    8000665c:	00f00793          	li	a5,15
    80006660:	3a079073          	csrw	pmpcfg0,a5
    80006664:	f14027f3          	csrr	a5,mhartid
    80006668:	0200c737          	lui	a4,0x200c
    8000666c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006670:	0007869b          	sext.w	a3,a5
    80006674:	00269713          	slli	a4,a3,0x2
    80006678:	000f4637          	lui	a2,0xf4
    8000667c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006680:	00d70733          	add	a4,a4,a3
    80006684:	0037979b          	slliw	a5,a5,0x3
    80006688:	020046b7          	lui	a3,0x2004
    8000668c:	00d787b3          	add	a5,a5,a3
    80006690:	00c585b3          	add	a1,a1,a2
    80006694:	00371693          	slli	a3,a4,0x3
    80006698:	00005717          	auipc	a4,0x5
    8000669c:	0e870713          	addi	a4,a4,232 # 8000b780 <timer_scratch>
    800066a0:	00b7b023          	sd	a1,0(a5)
    800066a4:	00d70733          	add	a4,a4,a3
    800066a8:	00f73c23          	sd	a5,24(a4)
    800066ac:	02c73023          	sd	a2,32(a4)
    800066b0:	34071073          	csrw	mscratch,a4
    800066b4:	00000797          	auipc	a5,0x0
    800066b8:	6ec78793          	addi	a5,a5,1772 # 80006da0 <timervec>
    800066bc:	30579073          	csrw	mtvec,a5
    800066c0:	300027f3          	csrr	a5,mstatus
    800066c4:	0087e793          	ori	a5,a5,8
    800066c8:	30079073          	csrw	mstatus,a5
    800066cc:	304027f3          	csrr	a5,mie
    800066d0:	0807e793          	ori	a5,a5,128
    800066d4:	30479073          	csrw	mie,a5
    800066d8:	f14027f3          	csrr	a5,mhartid
    800066dc:	0007879b          	sext.w	a5,a5
    800066e0:	00078213          	mv	tp,a5
    800066e4:	30200073          	mret
    800066e8:	00813403          	ld	s0,8(sp)
    800066ec:	01010113          	addi	sp,sp,16
    800066f0:	00008067          	ret

00000000800066f4 <timerinit>:
    800066f4:	ff010113          	addi	sp,sp,-16
    800066f8:	00813423          	sd	s0,8(sp)
    800066fc:	01010413          	addi	s0,sp,16
    80006700:	f14027f3          	csrr	a5,mhartid
    80006704:	0200c737          	lui	a4,0x200c
    80006708:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000670c:	0007869b          	sext.w	a3,a5
    80006710:	00269713          	slli	a4,a3,0x2
    80006714:	000f4637          	lui	a2,0xf4
    80006718:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000671c:	00d70733          	add	a4,a4,a3
    80006720:	0037979b          	slliw	a5,a5,0x3
    80006724:	020046b7          	lui	a3,0x2004
    80006728:	00d787b3          	add	a5,a5,a3
    8000672c:	00c585b3          	add	a1,a1,a2
    80006730:	00371693          	slli	a3,a4,0x3
    80006734:	00005717          	auipc	a4,0x5
    80006738:	04c70713          	addi	a4,a4,76 # 8000b780 <timer_scratch>
    8000673c:	00b7b023          	sd	a1,0(a5)
    80006740:	00d70733          	add	a4,a4,a3
    80006744:	00f73c23          	sd	a5,24(a4)
    80006748:	02c73023          	sd	a2,32(a4)
    8000674c:	34071073          	csrw	mscratch,a4
    80006750:	00000797          	auipc	a5,0x0
    80006754:	65078793          	addi	a5,a5,1616 # 80006da0 <timervec>
    80006758:	30579073          	csrw	mtvec,a5
    8000675c:	300027f3          	csrr	a5,mstatus
    80006760:	0087e793          	ori	a5,a5,8
    80006764:	30079073          	csrw	mstatus,a5
    80006768:	304027f3          	csrr	a5,mie
    8000676c:	0807e793          	ori	a5,a5,128
    80006770:	30479073          	csrw	mie,a5
    80006774:	00813403          	ld	s0,8(sp)
    80006778:	01010113          	addi	sp,sp,16
    8000677c:	00008067          	ret

0000000080006780 <system_main>:
    80006780:	fe010113          	addi	sp,sp,-32
    80006784:	00813823          	sd	s0,16(sp)
    80006788:	00913423          	sd	s1,8(sp)
    8000678c:	00113c23          	sd	ra,24(sp)
    80006790:	02010413          	addi	s0,sp,32
    80006794:	00000097          	auipc	ra,0x0
    80006798:	0c4080e7          	jalr	196(ra) # 80006858 <cpuid>
    8000679c:	00005497          	auipc	s1,0x5
    800067a0:	f2448493          	addi	s1,s1,-220 # 8000b6c0 <started>
    800067a4:	02050263          	beqz	a0,800067c8 <system_main+0x48>
    800067a8:	0004a783          	lw	a5,0(s1)
    800067ac:	0007879b          	sext.w	a5,a5
    800067b0:	fe078ce3          	beqz	a5,800067a8 <system_main+0x28>
    800067b4:	0ff0000f          	fence
    800067b8:	00003517          	auipc	a0,0x3
    800067bc:	c8850513          	addi	a0,a0,-888 # 80009440 <CONSOLE_STATUS+0x430>
    800067c0:	00001097          	auipc	ra,0x1
    800067c4:	a7c080e7          	jalr	-1412(ra) # 8000723c <panic>
    800067c8:	00001097          	auipc	ra,0x1
    800067cc:	9d0080e7          	jalr	-1584(ra) # 80007198 <consoleinit>
    800067d0:	00001097          	auipc	ra,0x1
    800067d4:	15c080e7          	jalr	348(ra) # 8000792c <printfinit>
    800067d8:	00003517          	auipc	a0,0x3
    800067dc:	85050513          	addi	a0,a0,-1968 # 80009028 <CONSOLE_STATUS+0x18>
    800067e0:	00001097          	auipc	ra,0x1
    800067e4:	ab8080e7          	jalr	-1352(ra) # 80007298 <__printf>
    800067e8:	00003517          	auipc	a0,0x3
    800067ec:	c2850513          	addi	a0,a0,-984 # 80009410 <CONSOLE_STATUS+0x400>
    800067f0:	00001097          	auipc	ra,0x1
    800067f4:	aa8080e7          	jalr	-1368(ra) # 80007298 <__printf>
    800067f8:	00003517          	auipc	a0,0x3
    800067fc:	83050513          	addi	a0,a0,-2000 # 80009028 <CONSOLE_STATUS+0x18>
    80006800:	00001097          	auipc	ra,0x1
    80006804:	a98080e7          	jalr	-1384(ra) # 80007298 <__printf>
    80006808:	00001097          	auipc	ra,0x1
    8000680c:	4b0080e7          	jalr	1200(ra) # 80007cb8 <kinit>
    80006810:	00000097          	auipc	ra,0x0
    80006814:	148080e7          	jalr	328(ra) # 80006958 <trapinit>
    80006818:	00000097          	auipc	ra,0x0
    8000681c:	16c080e7          	jalr	364(ra) # 80006984 <trapinithart>
    80006820:	00000097          	auipc	ra,0x0
    80006824:	5c0080e7          	jalr	1472(ra) # 80006de0 <plicinit>
    80006828:	00000097          	auipc	ra,0x0
    8000682c:	5e0080e7          	jalr	1504(ra) # 80006e08 <plicinithart>
    80006830:	00000097          	auipc	ra,0x0
    80006834:	078080e7          	jalr	120(ra) # 800068a8 <userinit>
    80006838:	0ff0000f          	fence
    8000683c:	00100793          	li	a5,1
    80006840:	00003517          	auipc	a0,0x3
    80006844:	be850513          	addi	a0,a0,-1048 # 80009428 <CONSOLE_STATUS+0x418>
    80006848:	00f4a023          	sw	a5,0(s1)
    8000684c:	00001097          	auipc	ra,0x1
    80006850:	a4c080e7          	jalr	-1460(ra) # 80007298 <__printf>
    80006854:	0000006f          	j	80006854 <system_main+0xd4>

0000000080006858 <cpuid>:
    80006858:	ff010113          	addi	sp,sp,-16
    8000685c:	00813423          	sd	s0,8(sp)
    80006860:	01010413          	addi	s0,sp,16
    80006864:	00020513          	mv	a0,tp
    80006868:	00813403          	ld	s0,8(sp)
    8000686c:	0005051b          	sext.w	a0,a0
    80006870:	01010113          	addi	sp,sp,16
    80006874:	00008067          	ret

0000000080006878 <mycpu>:
    80006878:	ff010113          	addi	sp,sp,-16
    8000687c:	00813423          	sd	s0,8(sp)
    80006880:	01010413          	addi	s0,sp,16
    80006884:	00020793          	mv	a5,tp
    80006888:	00813403          	ld	s0,8(sp)
    8000688c:	0007879b          	sext.w	a5,a5
    80006890:	00779793          	slli	a5,a5,0x7
    80006894:	00006517          	auipc	a0,0x6
    80006898:	f1c50513          	addi	a0,a0,-228 # 8000c7b0 <cpus>
    8000689c:	00f50533          	add	a0,a0,a5
    800068a0:	01010113          	addi	sp,sp,16
    800068a4:	00008067          	ret

00000000800068a8 <userinit>:
    800068a8:	ff010113          	addi	sp,sp,-16
    800068ac:	00813423          	sd	s0,8(sp)
    800068b0:	01010413          	addi	s0,sp,16
    800068b4:	00813403          	ld	s0,8(sp)
    800068b8:	01010113          	addi	sp,sp,16
    800068bc:	fffff317          	auipc	t1,0xfffff
    800068c0:	5b030067          	jr	1456(t1) # 80005e6c <main>

00000000800068c4 <either_copyout>:
    800068c4:	ff010113          	addi	sp,sp,-16
    800068c8:	00813023          	sd	s0,0(sp)
    800068cc:	00113423          	sd	ra,8(sp)
    800068d0:	01010413          	addi	s0,sp,16
    800068d4:	02051663          	bnez	a0,80006900 <either_copyout+0x3c>
    800068d8:	00058513          	mv	a0,a1
    800068dc:	00060593          	mv	a1,a2
    800068e0:	0006861b          	sext.w	a2,a3
    800068e4:	00002097          	auipc	ra,0x2
    800068e8:	c60080e7          	jalr	-928(ra) # 80008544 <__memmove>
    800068ec:	00813083          	ld	ra,8(sp)
    800068f0:	00013403          	ld	s0,0(sp)
    800068f4:	00000513          	li	a0,0
    800068f8:	01010113          	addi	sp,sp,16
    800068fc:	00008067          	ret
    80006900:	00003517          	auipc	a0,0x3
    80006904:	b6850513          	addi	a0,a0,-1176 # 80009468 <CONSOLE_STATUS+0x458>
    80006908:	00001097          	auipc	ra,0x1
    8000690c:	934080e7          	jalr	-1740(ra) # 8000723c <panic>

0000000080006910 <either_copyin>:
    80006910:	ff010113          	addi	sp,sp,-16
    80006914:	00813023          	sd	s0,0(sp)
    80006918:	00113423          	sd	ra,8(sp)
    8000691c:	01010413          	addi	s0,sp,16
    80006920:	02059463          	bnez	a1,80006948 <either_copyin+0x38>
    80006924:	00060593          	mv	a1,a2
    80006928:	0006861b          	sext.w	a2,a3
    8000692c:	00002097          	auipc	ra,0x2
    80006930:	c18080e7          	jalr	-1000(ra) # 80008544 <__memmove>
    80006934:	00813083          	ld	ra,8(sp)
    80006938:	00013403          	ld	s0,0(sp)
    8000693c:	00000513          	li	a0,0
    80006940:	01010113          	addi	sp,sp,16
    80006944:	00008067          	ret
    80006948:	00003517          	auipc	a0,0x3
    8000694c:	b4850513          	addi	a0,a0,-1208 # 80009490 <CONSOLE_STATUS+0x480>
    80006950:	00001097          	auipc	ra,0x1
    80006954:	8ec080e7          	jalr	-1812(ra) # 8000723c <panic>

0000000080006958 <trapinit>:
    80006958:	ff010113          	addi	sp,sp,-16
    8000695c:	00813423          	sd	s0,8(sp)
    80006960:	01010413          	addi	s0,sp,16
    80006964:	00813403          	ld	s0,8(sp)
    80006968:	00003597          	auipc	a1,0x3
    8000696c:	b5058593          	addi	a1,a1,-1200 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006970:	00006517          	auipc	a0,0x6
    80006974:	ec050513          	addi	a0,a0,-320 # 8000c830 <tickslock>
    80006978:	01010113          	addi	sp,sp,16
    8000697c:	00001317          	auipc	t1,0x1
    80006980:	5cc30067          	jr	1484(t1) # 80007f48 <initlock>

0000000080006984 <trapinithart>:
    80006984:	ff010113          	addi	sp,sp,-16
    80006988:	00813423          	sd	s0,8(sp)
    8000698c:	01010413          	addi	s0,sp,16
    80006990:	00000797          	auipc	a5,0x0
    80006994:	30078793          	addi	a5,a5,768 # 80006c90 <kernelvec>
    80006998:	10579073          	csrw	stvec,a5
    8000699c:	00813403          	ld	s0,8(sp)
    800069a0:	01010113          	addi	sp,sp,16
    800069a4:	00008067          	ret

00000000800069a8 <usertrap>:
    800069a8:	ff010113          	addi	sp,sp,-16
    800069ac:	00813423          	sd	s0,8(sp)
    800069b0:	01010413          	addi	s0,sp,16
    800069b4:	00813403          	ld	s0,8(sp)
    800069b8:	01010113          	addi	sp,sp,16
    800069bc:	00008067          	ret

00000000800069c0 <usertrapret>:
    800069c0:	ff010113          	addi	sp,sp,-16
    800069c4:	00813423          	sd	s0,8(sp)
    800069c8:	01010413          	addi	s0,sp,16
    800069cc:	00813403          	ld	s0,8(sp)
    800069d0:	01010113          	addi	sp,sp,16
    800069d4:	00008067          	ret

00000000800069d8 <kerneltrap>:
    800069d8:	fe010113          	addi	sp,sp,-32
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00113c23          	sd	ra,24(sp)
    800069e4:	00913423          	sd	s1,8(sp)
    800069e8:	02010413          	addi	s0,sp,32
    800069ec:	142025f3          	csrr	a1,scause
    800069f0:	100027f3          	csrr	a5,sstatus
    800069f4:	0027f793          	andi	a5,a5,2
    800069f8:	10079c63          	bnez	a5,80006b10 <kerneltrap+0x138>
    800069fc:	142027f3          	csrr	a5,scause
    80006a00:	0207ce63          	bltz	a5,80006a3c <kerneltrap+0x64>
    80006a04:	00003517          	auipc	a0,0x3
    80006a08:	afc50513          	addi	a0,a0,-1284 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006a0c:	00001097          	auipc	ra,0x1
    80006a10:	88c080e7          	jalr	-1908(ra) # 80007298 <__printf>
    80006a14:	141025f3          	csrr	a1,sepc
    80006a18:	14302673          	csrr	a2,stval
    80006a1c:	00003517          	auipc	a0,0x3
    80006a20:	af450513          	addi	a0,a0,-1292 # 80009510 <CONSOLE_STATUS+0x500>
    80006a24:	00001097          	auipc	ra,0x1
    80006a28:	874080e7          	jalr	-1932(ra) # 80007298 <__printf>
    80006a2c:	00003517          	auipc	a0,0x3
    80006a30:	afc50513          	addi	a0,a0,-1284 # 80009528 <CONSOLE_STATUS+0x518>
    80006a34:	00001097          	auipc	ra,0x1
    80006a38:	808080e7          	jalr	-2040(ra) # 8000723c <panic>
    80006a3c:	0ff7f713          	andi	a4,a5,255
    80006a40:	00900693          	li	a3,9
    80006a44:	04d70063          	beq	a4,a3,80006a84 <kerneltrap+0xac>
    80006a48:	fff00713          	li	a4,-1
    80006a4c:	03f71713          	slli	a4,a4,0x3f
    80006a50:	00170713          	addi	a4,a4,1
    80006a54:	fae798e3          	bne	a5,a4,80006a04 <kerneltrap+0x2c>
    80006a58:	00000097          	auipc	ra,0x0
    80006a5c:	e00080e7          	jalr	-512(ra) # 80006858 <cpuid>
    80006a60:	06050663          	beqz	a0,80006acc <kerneltrap+0xf4>
    80006a64:	144027f3          	csrr	a5,sip
    80006a68:	ffd7f793          	andi	a5,a5,-3
    80006a6c:	14479073          	csrw	sip,a5
    80006a70:	01813083          	ld	ra,24(sp)
    80006a74:	01013403          	ld	s0,16(sp)
    80006a78:	00813483          	ld	s1,8(sp)
    80006a7c:	02010113          	addi	sp,sp,32
    80006a80:	00008067          	ret
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	3d0080e7          	jalr	976(ra) # 80006e54 <plic_claim>
    80006a8c:	00a00793          	li	a5,10
    80006a90:	00050493          	mv	s1,a0
    80006a94:	06f50863          	beq	a0,a5,80006b04 <kerneltrap+0x12c>
    80006a98:	fc050ce3          	beqz	a0,80006a70 <kerneltrap+0x98>
    80006a9c:	00050593          	mv	a1,a0
    80006aa0:	00003517          	auipc	a0,0x3
    80006aa4:	a4050513          	addi	a0,a0,-1472 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006aa8:	00000097          	auipc	ra,0x0
    80006aac:	7f0080e7          	jalr	2032(ra) # 80007298 <__printf>
    80006ab0:	01013403          	ld	s0,16(sp)
    80006ab4:	01813083          	ld	ra,24(sp)
    80006ab8:	00048513          	mv	a0,s1
    80006abc:	00813483          	ld	s1,8(sp)
    80006ac0:	02010113          	addi	sp,sp,32
    80006ac4:	00000317          	auipc	t1,0x0
    80006ac8:	3c830067          	jr	968(t1) # 80006e8c <plic_complete>
    80006acc:	00006517          	auipc	a0,0x6
    80006ad0:	d6450513          	addi	a0,a0,-668 # 8000c830 <tickslock>
    80006ad4:	00001097          	auipc	ra,0x1
    80006ad8:	498080e7          	jalr	1176(ra) # 80007f6c <acquire>
    80006adc:	00005717          	auipc	a4,0x5
    80006ae0:	be870713          	addi	a4,a4,-1048 # 8000b6c4 <ticks>
    80006ae4:	00072783          	lw	a5,0(a4)
    80006ae8:	00006517          	auipc	a0,0x6
    80006aec:	d4850513          	addi	a0,a0,-696 # 8000c830 <tickslock>
    80006af0:	0017879b          	addiw	a5,a5,1
    80006af4:	00f72023          	sw	a5,0(a4)
    80006af8:	00001097          	auipc	ra,0x1
    80006afc:	540080e7          	jalr	1344(ra) # 80008038 <release>
    80006b00:	f65ff06f          	j	80006a64 <kerneltrap+0x8c>
    80006b04:	00001097          	auipc	ra,0x1
    80006b08:	09c080e7          	jalr	156(ra) # 80007ba0 <uartintr>
    80006b0c:	fa5ff06f          	j	80006ab0 <kerneltrap+0xd8>
    80006b10:	00003517          	auipc	a0,0x3
    80006b14:	9b050513          	addi	a0,a0,-1616 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006b18:	00000097          	auipc	ra,0x0
    80006b1c:	724080e7          	jalr	1828(ra) # 8000723c <panic>

0000000080006b20 <clockintr>:
    80006b20:	fe010113          	addi	sp,sp,-32
    80006b24:	00813823          	sd	s0,16(sp)
    80006b28:	00913423          	sd	s1,8(sp)
    80006b2c:	00113c23          	sd	ra,24(sp)
    80006b30:	02010413          	addi	s0,sp,32
    80006b34:	00006497          	auipc	s1,0x6
    80006b38:	cfc48493          	addi	s1,s1,-772 # 8000c830 <tickslock>
    80006b3c:	00048513          	mv	a0,s1
    80006b40:	00001097          	auipc	ra,0x1
    80006b44:	42c080e7          	jalr	1068(ra) # 80007f6c <acquire>
    80006b48:	00005717          	auipc	a4,0x5
    80006b4c:	b7c70713          	addi	a4,a4,-1156 # 8000b6c4 <ticks>
    80006b50:	00072783          	lw	a5,0(a4)
    80006b54:	01013403          	ld	s0,16(sp)
    80006b58:	01813083          	ld	ra,24(sp)
    80006b5c:	00048513          	mv	a0,s1
    80006b60:	0017879b          	addiw	a5,a5,1
    80006b64:	00813483          	ld	s1,8(sp)
    80006b68:	00f72023          	sw	a5,0(a4)
    80006b6c:	02010113          	addi	sp,sp,32
    80006b70:	00001317          	auipc	t1,0x1
    80006b74:	4c830067          	jr	1224(t1) # 80008038 <release>

0000000080006b78 <devintr>:
    80006b78:	142027f3          	csrr	a5,scause
    80006b7c:	00000513          	li	a0,0
    80006b80:	0007c463          	bltz	a5,80006b88 <devintr+0x10>
    80006b84:	00008067          	ret
    80006b88:	fe010113          	addi	sp,sp,-32
    80006b8c:	00813823          	sd	s0,16(sp)
    80006b90:	00113c23          	sd	ra,24(sp)
    80006b94:	00913423          	sd	s1,8(sp)
    80006b98:	02010413          	addi	s0,sp,32
    80006b9c:	0ff7f713          	andi	a4,a5,255
    80006ba0:	00900693          	li	a3,9
    80006ba4:	04d70c63          	beq	a4,a3,80006bfc <devintr+0x84>
    80006ba8:	fff00713          	li	a4,-1
    80006bac:	03f71713          	slli	a4,a4,0x3f
    80006bb0:	00170713          	addi	a4,a4,1
    80006bb4:	00e78c63          	beq	a5,a4,80006bcc <devintr+0x54>
    80006bb8:	01813083          	ld	ra,24(sp)
    80006bbc:	01013403          	ld	s0,16(sp)
    80006bc0:	00813483          	ld	s1,8(sp)
    80006bc4:	02010113          	addi	sp,sp,32
    80006bc8:	00008067          	ret
    80006bcc:	00000097          	auipc	ra,0x0
    80006bd0:	c8c080e7          	jalr	-884(ra) # 80006858 <cpuid>
    80006bd4:	06050663          	beqz	a0,80006c40 <devintr+0xc8>
    80006bd8:	144027f3          	csrr	a5,sip
    80006bdc:	ffd7f793          	andi	a5,a5,-3
    80006be0:	14479073          	csrw	sip,a5
    80006be4:	01813083          	ld	ra,24(sp)
    80006be8:	01013403          	ld	s0,16(sp)
    80006bec:	00813483          	ld	s1,8(sp)
    80006bf0:	00200513          	li	a0,2
    80006bf4:	02010113          	addi	sp,sp,32
    80006bf8:	00008067          	ret
    80006bfc:	00000097          	auipc	ra,0x0
    80006c00:	258080e7          	jalr	600(ra) # 80006e54 <plic_claim>
    80006c04:	00a00793          	li	a5,10
    80006c08:	00050493          	mv	s1,a0
    80006c0c:	06f50663          	beq	a0,a5,80006c78 <devintr+0x100>
    80006c10:	00100513          	li	a0,1
    80006c14:	fa0482e3          	beqz	s1,80006bb8 <devintr+0x40>
    80006c18:	00048593          	mv	a1,s1
    80006c1c:	00003517          	auipc	a0,0x3
    80006c20:	8c450513          	addi	a0,a0,-1852 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006c24:	00000097          	auipc	ra,0x0
    80006c28:	674080e7          	jalr	1652(ra) # 80007298 <__printf>
    80006c2c:	00048513          	mv	a0,s1
    80006c30:	00000097          	auipc	ra,0x0
    80006c34:	25c080e7          	jalr	604(ra) # 80006e8c <plic_complete>
    80006c38:	00100513          	li	a0,1
    80006c3c:	f7dff06f          	j	80006bb8 <devintr+0x40>
    80006c40:	00006517          	auipc	a0,0x6
    80006c44:	bf050513          	addi	a0,a0,-1040 # 8000c830 <tickslock>
    80006c48:	00001097          	auipc	ra,0x1
    80006c4c:	324080e7          	jalr	804(ra) # 80007f6c <acquire>
    80006c50:	00005717          	auipc	a4,0x5
    80006c54:	a7470713          	addi	a4,a4,-1420 # 8000b6c4 <ticks>
    80006c58:	00072783          	lw	a5,0(a4)
    80006c5c:	00006517          	auipc	a0,0x6
    80006c60:	bd450513          	addi	a0,a0,-1068 # 8000c830 <tickslock>
    80006c64:	0017879b          	addiw	a5,a5,1
    80006c68:	00f72023          	sw	a5,0(a4)
    80006c6c:	00001097          	auipc	ra,0x1
    80006c70:	3cc080e7          	jalr	972(ra) # 80008038 <release>
    80006c74:	f65ff06f          	j	80006bd8 <devintr+0x60>
    80006c78:	00001097          	auipc	ra,0x1
    80006c7c:	f28080e7          	jalr	-216(ra) # 80007ba0 <uartintr>
    80006c80:	fadff06f          	j	80006c2c <devintr+0xb4>
	...

0000000080006c90 <kernelvec>:
    80006c90:	f0010113          	addi	sp,sp,-256
    80006c94:	00113023          	sd	ra,0(sp)
    80006c98:	00213423          	sd	sp,8(sp)
    80006c9c:	00313823          	sd	gp,16(sp)
    80006ca0:	00413c23          	sd	tp,24(sp)
    80006ca4:	02513023          	sd	t0,32(sp)
    80006ca8:	02613423          	sd	t1,40(sp)
    80006cac:	02713823          	sd	t2,48(sp)
    80006cb0:	02813c23          	sd	s0,56(sp)
    80006cb4:	04913023          	sd	s1,64(sp)
    80006cb8:	04a13423          	sd	a0,72(sp)
    80006cbc:	04b13823          	sd	a1,80(sp)
    80006cc0:	04c13c23          	sd	a2,88(sp)
    80006cc4:	06d13023          	sd	a3,96(sp)
    80006cc8:	06e13423          	sd	a4,104(sp)
    80006ccc:	06f13823          	sd	a5,112(sp)
    80006cd0:	07013c23          	sd	a6,120(sp)
    80006cd4:	09113023          	sd	a7,128(sp)
    80006cd8:	09213423          	sd	s2,136(sp)
    80006cdc:	09313823          	sd	s3,144(sp)
    80006ce0:	09413c23          	sd	s4,152(sp)
    80006ce4:	0b513023          	sd	s5,160(sp)
    80006ce8:	0b613423          	sd	s6,168(sp)
    80006cec:	0b713823          	sd	s7,176(sp)
    80006cf0:	0b813c23          	sd	s8,184(sp)
    80006cf4:	0d913023          	sd	s9,192(sp)
    80006cf8:	0da13423          	sd	s10,200(sp)
    80006cfc:	0db13823          	sd	s11,208(sp)
    80006d00:	0dc13c23          	sd	t3,216(sp)
    80006d04:	0fd13023          	sd	t4,224(sp)
    80006d08:	0fe13423          	sd	t5,232(sp)
    80006d0c:	0ff13823          	sd	t6,240(sp)
    80006d10:	cc9ff0ef          	jal	ra,800069d8 <kerneltrap>
    80006d14:	00013083          	ld	ra,0(sp)
    80006d18:	00813103          	ld	sp,8(sp)
    80006d1c:	01013183          	ld	gp,16(sp)
    80006d20:	02013283          	ld	t0,32(sp)
    80006d24:	02813303          	ld	t1,40(sp)
    80006d28:	03013383          	ld	t2,48(sp)
    80006d2c:	03813403          	ld	s0,56(sp)
    80006d30:	04013483          	ld	s1,64(sp)
    80006d34:	04813503          	ld	a0,72(sp)
    80006d38:	05013583          	ld	a1,80(sp)
    80006d3c:	05813603          	ld	a2,88(sp)
    80006d40:	06013683          	ld	a3,96(sp)
    80006d44:	06813703          	ld	a4,104(sp)
    80006d48:	07013783          	ld	a5,112(sp)
    80006d4c:	07813803          	ld	a6,120(sp)
    80006d50:	08013883          	ld	a7,128(sp)
    80006d54:	08813903          	ld	s2,136(sp)
    80006d58:	09013983          	ld	s3,144(sp)
    80006d5c:	09813a03          	ld	s4,152(sp)
    80006d60:	0a013a83          	ld	s5,160(sp)
    80006d64:	0a813b03          	ld	s6,168(sp)
    80006d68:	0b013b83          	ld	s7,176(sp)
    80006d6c:	0b813c03          	ld	s8,184(sp)
    80006d70:	0c013c83          	ld	s9,192(sp)
    80006d74:	0c813d03          	ld	s10,200(sp)
    80006d78:	0d013d83          	ld	s11,208(sp)
    80006d7c:	0d813e03          	ld	t3,216(sp)
    80006d80:	0e013e83          	ld	t4,224(sp)
    80006d84:	0e813f03          	ld	t5,232(sp)
    80006d88:	0f013f83          	ld	t6,240(sp)
    80006d8c:	10010113          	addi	sp,sp,256
    80006d90:	10200073          	sret
    80006d94:	00000013          	nop
    80006d98:	00000013          	nop
    80006d9c:	00000013          	nop

0000000080006da0 <timervec>:
    80006da0:	34051573          	csrrw	a0,mscratch,a0
    80006da4:	00b53023          	sd	a1,0(a0)
    80006da8:	00c53423          	sd	a2,8(a0)
    80006dac:	00d53823          	sd	a3,16(a0)
    80006db0:	01853583          	ld	a1,24(a0)
    80006db4:	02053603          	ld	a2,32(a0)
    80006db8:	0005b683          	ld	a3,0(a1)
    80006dbc:	00c686b3          	add	a3,a3,a2
    80006dc0:	00d5b023          	sd	a3,0(a1)
    80006dc4:	00200593          	li	a1,2
    80006dc8:	14459073          	csrw	sip,a1
    80006dcc:	01053683          	ld	a3,16(a0)
    80006dd0:	00853603          	ld	a2,8(a0)
    80006dd4:	00053583          	ld	a1,0(a0)
    80006dd8:	34051573          	csrrw	a0,mscratch,a0
    80006ddc:	30200073          	mret

0000000080006de0 <plicinit>:
    80006de0:	ff010113          	addi	sp,sp,-16
    80006de4:	00813423          	sd	s0,8(sp)
    80006de8:	01010413          	addi	s0,sp,16
    80006dec:	00813403          	ld	s0,8(sp)
    80006df0:	0c0007b7          	lui	a5,0xc000
    80006df4:	00100713          	li	a4,1
    80006df8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006dfc:	00e7a223          	sw	a4,4(a5)
    80006e00:	01010113          	addi	sp,sp,16
    80006e04:	00008067          	ret

0000000080006e08 <plicinithart>:
    80006e08:	ff010113          	addi	sp,sp,-16
    80006e0c:	00813023          	sd	s0,0(sp)
    80006e10:	00113423          	sd	ra,8(sp)
    80006e14:	01010413          	addi	s0,sp,16
    80006e18:	00000097          	auipc	ra,0x0
    80006e1c:	a40080e7          	jalr	-1472(ra) # 80006858 <cpuid>
    80006e20:	0085171b          	slliw	a4,a0,0x8
    80006e24:	0c0027b7          	lui	a5,0xc002
    80006e28:	00e787b3          	add	a5,a5,a4
    80006e2c:	40200713          	li	a4,1026
    80006e30:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006e34:	00813083          	ld	ra,8(sp)
    80006e38:	00013403          	ld	s0,0(sp)
    80006e3c:	00d5151b          	slliw	a0,a0,0xd
    80006e40:	0c2017b7          	lui	a5,0xc201
    80006e44:	00a78533          	add	a0,a5,a0
    80006e48:	00052023          	sw	zero,0(a0)
    80006e4c:	01010113          	addi	sp,sp,16
    80006e50:	00008067          	ret

0000000080006e54 <plic_claim>:
    80006e54:	ff010113          	addi	sp,sp,-16
    80006e58:	00813023          	sd	s0,0(sp)
    80006e5c:	00113423          	sd	ra,8(sp)
    80006e60:	01010413          	addi	s0,sp,16
    80006e64:	00000097          	auipc	ra,0x0
    80006e68:	9f4080e7          	jalr	-1548(ra) # 80006858 <cpuid>
    80006e6c:	00813083          	ld	ra,8(sp)
    80006e70:	00013403          	ld	s0,0(sp)
    80006e74:	00d5151b          	slliw	a0,a0,0xd
    80006e78:	0c2017b7          	lui	a5,0xc201
    80006e7c:	00a78533          	add	a0,a5,a0
    80006e80:	00452503          	lw	a0,4(a0)
    80006e84:	01010113          	addi	sp,sp,16
    80006e88:	00008067          	ret

0000000080006e8c <plic_complete>:
    80006e8c:	fe010113          	addi	sp,sp,-32
    80006e90:	00813823          	sd	s0,16(sp)
    80006e94:	00913423          	sd	s1,8(sp)
    80006e98:	00113c23          	sd	ra,24(sp)
    80006e9c:	02010413          	addi	s0,sp,32
    80006ea0:	00050493          	mv	s1,a0
    80006ea4:	00000097          	auipc	ra,0x0
    80006ea8:	9b4080e7          	jalr	-1612(ra) # 80006858 <cpuid>
    80006eac:	01813083          	ld	ra,24(sp)
    80006eb0:	01013403          	ld	s0,16(sp)
    80006eb4:	00d5179b          	slliw	a5,a0,0xd
    80006eb8:	0c201737          	lui	a4,0xc201
    80006ebc:	00f707b3          	add	a5,a4,a5
    80006ec0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ec4:	00813483          	ld	s1,8(sp)
    80006ec8:	02010113          	addi	sp,sp,32
    80006ecc:	00008067          	ret

0000000080006ed0 <consolewrite>:
    80006ed0:	fb010113          	addi	sp,sp,-80
    80006ed4:	04813023          	sd	s0,64(sp)
    80006ed8:	04113423          	sd	ra,72(sp)
    80006edc:	02913c23          	sd	s1,56(sp)
    80006ee0:	03213823          	sd	s2,48(sp)
    80006ee4:	03313423          	sd	s3,40(sp)
    80006ee8:	03413023          	sd	s4,32(sp)
    80006eec:	01513c23          	sd	s5,24(sp)
    80006ef0:	05010413          	addi	s0,sp,80
    80006ef4:	06c05c63          	blez	a2,80006f6c <consolewrite+0x9c>
    80006ef8:	00060993          	mv	s3,a2
    80006efc:	00050a13          	mv	s4,a0
    80006f00:	00058493          	mv	s1,a1
    80006f04:	00000913          	li	s2,0
    80006f08:	fff00a93          	li	s5,-1
    80006f0c:	01c0006f          	j	80006f28 <consolewrite+0x58>
    80006f10:	fbf44503          	lbu	a0,-65(s0)
    80006f14:	0019091b          	addiw	s2,s2,1
    80006f18:	00148493          	addi	s1,s1,1
    80006f1c:	00001097          	auipc	ra,0x1
    80006f20:	a9c080e7          	jalr	-1380(ra) # 800079b8 <uartputc>
    80006f24:	03298063          	beq	s3,s2,80006f44 <consolewrite+0x74>
    80006f28:	00048613          	mv	a2,s1
    80006f2c:	00100693          	li	a3,1
    80006f30:	000a0593          	mv	a1,s4
    80006f34:	fbf40513          	addi	a0,s0,-65
    80006f38:	00000097          	auipc	ra,0x0
    80006f3c:	9d8080e7          	jalr	-1576(ra) # 80006910 <either_copyin>
    80006f40:	fd5518e3          	bne	a0,s5,80006f10 <consolewrite+0x40>
    80006f44:	04813083          	ld	ra,72(sp)
    80006f48:	04013403          	ld	s0,64(sp)
    80006f4c:	03813483          	ld	s1,56(sp)
    80006f50:	02813983          	ld	s3,40(sp)
    80006f54:	02013a03          	ld	s4,32(sp)
    80006f58:	01813a83          	ld	s5,24(sp)
    80006f5c:	00090513          	mv	a0,s2
    80006f60:	03013903          	ld	s2,48(sp)
    80006f64:	05010113          	addi	sp,sp,80
    80006f68:	00008067          	ret
    80006f6c:	00000913          	li	s2,0
    80006f70:	fd5ff06f          	j	80006f44 <consolewrite+0x74>

0000000080006f74 <consoleread>:
    80006f74:	f9010113          	addi	sp,sp,-112
    80006f78:	06813023          	sd	s0,96(sp)
    80006f7c:	04913c23          	sd	s1,88(sp)
    80006f80:	05213823          	sd	s2,80(sp)
    80006f84:	05313423          	sd	s3,72(sp)
    80006f88:	05413023          	sd	s4,64(sp)
    80006f8c:	03513c23          	sd	s5,56(sp)
    80006f90:	03613823          	sd	s6,48(sp)
    80006f94:	03713423          	sd	s7,40(sp)
    80006f98:	03813023          	sd	s8,32(sp)
    80006f9c:	06113423          	sd	ra,104(sp)
    80006fa0:	01913c23          	sd	s9,24(sp)
    80006fa4:	07010413          	addi	s0,sp,112
    80006fa8:	00060b93          	mv	s7,a2
    80006fac:	00050913          	mv	s2,a0
    80006fb0:	00058c13          	mv	s8,a1
    80006fb4:	00060b1b          	sext.w	s6,a2
    80006fb8:	00006497          	auipc	s1,0x6
    80006fbc:	8a048493          	addi	s1,s1,-1888 # 8000c858 <cons>
    80006fc0:	00400993          	li	s3,4
    80006fc4:	fff00a13          	li	s4,-1
    80006fc8:	00a00a93          	li	s5,10
    80006fcc:	05705e63          	blez	s7,80007028 <consoleread+0xb4>
    80006fd0:	09c4a703          	lw	a4,156(s1)
    80006fd4:	0984a783          	lw	a5,152(s1)
    80006fd8:	0007071b          	sext.w	a4,a4
    80006fdc:	08e78463          	beq	a5,a4,80007064 <consoleread+0xf0>
    80006fe0:	07f7f713          	andi	a4,a5,127
    80006fe4:	00e48733          	add	a4,s1,a4
    80006fe8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006fec:	0017869b          	addiw	a3,a5,1
    80006ff0:	08d4ac23          	sw	a3,152(s1)
    80006ff4:	00070c9b          	sext.w	s9,a4
    80006ff8:	0b370663          	beq	a4,s3,800070a4 <consoleread+0x130>
    80006ffc:	00100693          	li	a3,1
    80007000:	f9f40613          	addi	a2,s0,-97
    80007004:	000c0593          	mv	a1,s8
    80007008:	00090513          	mv	a0,s2
    8000700c:	f8e40fa3          	sb	a4,-97(s0)
    80007010:	00000097          	auipc	ra,0x0
    80007014:	8b4080e7          	jalr	-1868(ra) # 800068c4 <either_copyout>
    80007018:	01450863          	beq	a0,s4,80007028 <consoleread+0xb4>
    8000701c:	001c0c13          	addi	s8,s8,1
    80007020:	fffb8b9b          	addiw	s7,s7,-1
    80007024:	fb5c94e3          	bne	s9,s5,80006fcc <consoleread+0x58>
    80007028:	000b851b          	sext.w	a0,s7
    8000702c:	06813083          	ld	ra,104(sp)
    80007030:	06013403          	ld	s0,96(sp)
    80007034:	05813483          	ld	s1,88(sp)
    80007038:	05013903          	ld	s2,80(sp)
    8000703c:	04813983          	ld	s3,72(sp)
    80007040:	04013a03          	ld	s4,64(sp)
    80007044:	03813a83          	ld	s5,56(sp)
    80007048:	02813b83          	ld	s7,40(sp)
    8000704c:	02013c03          	ld	s8,32(sp)
    80007050:	01813c83          	ld	s9,24(sp)
    80007054:	40ab053b          	subw	a0,s6,a0
    80007058:	03013b03          	ld	s6,48(sp)
    8000705c:	07010113          	addi	sp,sp,112
    80007060:	00008067          	ret
    80007064:	00001097          	auipc	ra,0x1
    80007068:	1d8080e7          	jalr	472(ra) # 8000823c <push_on>
    8000706c:	0984a703          	lw	a4,152(s1)
    80007070:	09c4a783          	lw	a5,156(s1)
    80007074:	0007879b          	sext.w	a5,a5
    80007078:	fef70ce3          	beq	a4,a5,80007070 <consoleread+0xfc>
    8000707c:	00001097          	auipc	ra,0x1
    80007080:	234080e7          	jalr	564(ra) # 800082b0 <pop_on>
    80007084:	0984a783          	lw	a5,152(s1)
    80007088:	07f7f713          	andi	a4,a5,127
    8000708c:	00e48733          	add	a4,s1,a4
    80007090:	01874703          	lbu	a4,24(a4)
    80007094:	0017869b          	addiw	a3,a5,1
    80007098:	08d4ac23          	sw	a3,152(s1)
    8000709c:	00070c9b          	sext.w	s9,a4
    800070a0:	f5371ee3          	bne	a4,s3,80006ffc <consoleread+0x88>
    800070a4:	000b851b          	sext.w	a0,s7
    800070a8:	f96bf2e3          	bgeu	s7,s6,8000702c <consoleread+0xb8>
    800070ac:	08f4ac23          	sw	a5,152(s1)
    800070b0:	f7dff06f          	j	8000702c <consoleread+0xb8>

00000000800070b4 <consputc>:
    800070b4:	10000793          	li	a5,256
    800070b8:	00f50663          	beq	a0,a5,800070c4 <consputc+0x10>
    800070bc:	00001317          	auipc	t1,0x1
    800070c0:	9f430067          	jr	-1548(t1) # 80007ab0 <uartputc_sync>
    800070c4:	ff010113          	addi	sp,sp,-16
    800070c8:	00113423          	sd	ra,8(sp)
    800070cc:	00813023          	sd	s0,0(sp)
    800070d0:	01010413          	addi	s0,sp,16
    800070d4:	00800513          	li	a0,8
    800070d8:	00001097          	auipc	ra,0x1
    800070dc:	9d8080e7          	jalr	-1576(ra) # 80007ab0 <uartputc_sync>
    800070e0:	02000513          	li	a0,32
    800070e4:	00001097          	auipc	ra,0x1
    800070e8:	9cc080e7          	jalr	-1588(ra) # 80007ab0 <uartputc_sync>
    800070ec:	00013403          	ld	s0,0(sp)
    800070f0:	00813083          	ld	ra,8(sp)
    800070f4:	00800513          	li	a0,8
    800070f8:	01010113          	addi	sp,sp,16
    800070fc:	00001317          	auipc	t1,0x1
    80007100:	9b430067          	jr	-1612(t1) # 80007ab0 <uartputc_sync>

0000000080007104 <consoleintr>:
    80007104:	fe010113          	addi	sp,sp,-32
    80007108:	00813823          	sd	s0,16(sp)
    8000710c:	00913423          	sd	s1,8(sp)
    80007110:	01213023          	sd	s2,0(sp)
    80007114:	00113c23          	sd	ra,24(sp)
    80007118:	02010413          	addi	s0,sp,32
    8000711c:	00005917          	auipc	s2,0x5
    80007120:	73c90913          	addi	s2,s2,1852 # 8000c858 <cons>
    80007124:	00050493          	mv	s1,a0
    80007128:	00090513          	mv	a0,s2
    8000712c:	00001097          	auipc	ra,0x1
    80007130:	e40080e7          	jalr	-448(ra) # 80007f6c <acquire>
    80007134:	02048c63          	beqz	s1,8000716c <consoleintr+0x68>
    80007138:	0a092783          	lw	a5,160(s2)
    8000713c:	09892703          	lw	a4,152(s2)
    80007140:	07f00693          	li	a3,127
    80007144:	40e7873b          	subw	a4,a5,a4
    80007148:	02e6e263          	bltu	a3,a4,8000716c <consoleintr+0x68>
    8000714c:	00d00713          	li	a4,13
    80007150:	04e48063          	beq	s1,a4,80007190 <consoleintr+0x8c>
    80007154:	07f7f713          	andi	a4,a5,127
    80007158:	00e90733          	add	a4,s2,a4
    8000715c:	0017879b          	addiw	a5,a5,1
    80007160:	0af92023          	sw	a5,160(s2)
    80007164:	00970c23          	sb	s1,24(a4)
    80007168:	08f92e23          	sw	a5,156(s2)
    8000716c:	01013403          	ld	s0,16(sp)
    80007170:	01813083          	ld	ra,24(sp)
    80007174:	00813483          	ld	s1,8(sp)
    80007178:	00013903          	ld	s2,0(sp)
    8000717c:	00005517          	auipc	a0,0x5
    80007180:	6dc50513          	addi	a0,a0,1756 # 8000c858 <cons>
    80007184:	02010113          	addi	sp,sp,32
    80007188:	00001317          	auipc	t1,0x1
    8000718c:	eb030067          	jr	-336(t1) # 80008038 <release>
    80007190:	00a00493          	li	s1,10
    80007194:	fc1ff06f          	j	80007154 <consoleintr+0x50>

0000000080007198 <consoleinit>:
    80007198:	fe010113          	addi	sp,sp,-32
    8000719c:	00113c23          	sd	ra,24(sp)
    800071a0:	00813823          	sd	s0,16(sp)
    800071a4:	00913423          	sd	s1,8(sp)
    800071a8:	02010413          	addi	s0,sp,32
    800071ac:	00005497          	auipc	s1,0x5
    800071b0:	6ac48493          	addi	s1,s1,1708 # 8000c858 <cons>
    800071b4:	00048513          	mv	a0,s1
    800071b8:	00002597          	auipc	a1,0x2
    800071bc:	38058593          	addi	a1,a1,896 # 80009538 <CONSOLE_STATUS+0x528>
    800071c0:	00001097          	auipc	ra,0x1
    800071c4:	d88080e7          	jalr	-632(ra) # 80007f48 <initlock>
    800071c8:	00000097          	auipc	ra,0x0
    800071cc:	7ac080e7          	jalr	1964(ra) # 80007974 <uartinit>
    800071d0:	01813083          	ld	ra,24(sp)
    800071d4:	01013403          	ld	s0,16(sp)
    800071d8:	00000797          	auipc	a5,0x0
    800071dc:	d9c78793          	addi	a5,a5,-612 # 80006f74 <consoleread>
    800071e0:	0af4bc23          	sd	a5,184(s1)
    800071e4:	00000797          	auipc	a5,0x0
    800071e8:	cec78793          	addi	a5,a5,-788 # 80006ed0 <consolewrite>
    800071ec:	0cf4b023          	sd	a5,192(s1)
    800071f0:	00813483          	ld	s1,8(sp)
    800071f4:	02010113          	addi	sp,sp,32
    800071f8:	00008067          	ret

00000000800071fc <console_read>:
    800071fc:	ff010113          	addi	sp,sp,-16
    80007200:	00813423          	sd	s0,8(sp)
    80007204:	01010413          	addi	s0,sp,16
    80007208:	00813403          	ld	s0,8(sp)
    8000720c:	00005317          	auipc	t1,0x5
    80007210:	70433303          	ld	t1,1796(t1) # 8000c910 <devsw+0x10>
    80007214:	01010113          	addi	sp,sp,16
    80007218:	00030067          	jr	t1

000000008000721c <console_write>:
    8000721c:	ff010113          	addi	sp,sp,-16
    80007220:	00813423          	sd	s0,8(sp)
    80007224:	01010413          	addi	s0,sp,16
    80007228:	00813403          	ld	s0,8(sp)
    8000722c:	00005317          	auipc	t1,0x5
    80007230:	6ec33303          	ld	t1,1772(t1) # 8000c918 <devsw+0x18>
    80007234:	01010113          	addi	sp,sp,16
    80007238:	00030067          	jr	t1

000000008000723c <panic>:
    8000723c:	fe010113          	addi	sp,sp,-32
    80007240:	00113c23          	sd	ra,24(sp)
    80007244:	00813823          	sd	s0,16(sp)
    80007248:	00913423          	sd	s1,8(sp)
    8000724c:	02010413          	addi	s0,sp,32
    80007250:	00050493          	mv	s1,a0
    80007254:	00002517          	auipc	a0,0x2
    80007258:	2ec50513          	addi	a0,a0,748 # 80009540 <CONSOLE_STATUS+0x530>
    8000725c:	00005797          	auipc	a5,0x5
    80007260:	7407ae23          	sw	zero,1884(a5) # 8000c9b8 <pr+0x18>
    80007264:	00000097          	auipc	ra,0x0
    80007268:	034080e7          	jalr	52(ra) # 80007298 <__printf>
    8000726c:	00048513          	mv	a0,s1
    80007270:	00000097          	auipc	ra,0x0
    80007274:	028080e7          	jalr	40(ra) # 80007298 <__printf>
    80007278:	00002517          	auipc	a0,0x2
    8000727c:	db050513          	addi	a0,a0,-592 # 80009028 <CONSOLE_STATUS+0x18>
    80007280:	00000097          	auipc	ra,0x0
    80007284:	018080e7          	jalr	24(ra) # 80007298 <__printf>
    80007288:	00100793          	li	a5,1
    8000728c:	00004717          	auipc	a4,0x4
    80007290:	42f72e23          	sw	a5,1084(a4) # 8000b6c8 <panicked>
    80007294:	0000006f          	j	80007294 <panic+0x58>

0000000080007298 <__printf>:
    80007298:	f3010113          	addi	sp,sp,-208
    8000729c:	08813023          	sd	s0,128(sp)
    800072a0:	07313423          	sd	s3,104(sp)
    800072a4:	09010413          	addi	s0,sp,144
    800072a8:	05813023          	sd	s8,64(sp)
    800072ac:	08113423          	sd	ra,136(sp)
    800072b0:	06913c23          	sd	s1,120(sp)
    800072b4:	07213823          	sd	s2,112(sp)
    800072b8:	07413023          	sd	s4,96(sp)
    800072bc:	05513c23          	sd	s5,88(sp)
    800072c0:	05613823          	sd	s6,80(sp)
    800072c4:	05713423          	sd	s7,72(sp)
    800072c8:	03913c23          	sd	s9,56(sp)
    800072cc:	03a13823          	sd	s10,48(sp)
    800072d0:	03b13423          	sd	s11,40(sp)
    800072d4:	00005317          	auipc	t1,0x5
    800072d8:	6cc30313          	addi	t1,t1,1740 # 8000c9a0 <pr>
    800072dc:	01832c03          	lw	s8,24(t1)
    800072e0:	00b43423          	sd	a1,8(s0)
    800072e4:	00c43823          	sd	a2,16(s0)
    800072e8:	00d43c23          	sd	a3,24(s0)
    800072ec:	02e43023          	sd	a4,32(s0)
    800072f0:	02f43423          	sd	a5,40(s0)
    800072f4:	03043823          	sd	a6,48(s0)
    800072f8:	03143c23          	sd	a7,56(s0)
    800072fc:	00050993          	mv	s3,a0
    80007300:	4a0c1663          	bnez	s8,800077ac <__printf+0x514>
    80007304:	60098c63          	beqz	s3,8000791c <__printf+0x684>
    80007308:	0009c503          	lbu	a0,0(s3)
    8000730c:	00840793          	addi	a5,s0,8
    80007310:	f6f43c23          	sd	a5,-136(s0)
    80007314:	00000493          	li	s1,0
    80007318:	22050063          	beqz	a0,80007538 <__printf+0x2a0>
    8000731c:	00002a37          	lui	s4,0x2
    80007320:	00018ab7          	lui	s5,0x18
    80007324:	000f4b37          	lui	s6,0xf4
    80007328:	00989bb7          	lui	s7,0x989
    8000732c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007330:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007334:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007338:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000733c:	00148c9b          	addiw	s9,s1,1
    80007340:	02500793          	li	a5,37
    80007344:	01998933          	add	s2,s3,s9
    80007348:	38f51263          	bne	a0,a5,800076cc <__printf+0x434>
    8000734c:	00094783          	lbu	a5,0(s2)
    80007350:	00078c9b          	sext.w	s9,a5
    80007354:	1e078263          	beqz	a5,80007538 <__printf+0x2a0>
    80007358:	0024849b          	addiw	s1,s1,2
    8000735c:	07000713          	li	a4,112
    80007360:	00998933          	add	s2,s3,s1
    80007364:	38e78a63          	beq	a5,a4,800076f8 <__printf+0x460>
    80007368:	20f76863          	bltu	a4,a5,80007578 <__printf+0x2e0>
    8000736c:	42a78863          	beq	a5,a0,8000779c <__printf+0x504>
    80007370:	06400713          	li	a4,100
    80007374:	40e79663          	bne	a5,a4,80007780 <__printf+0x4e8>
    80007378:	f7843783          	ld	a5,-136(s0)
    8000737c:	0007a603          	lw	a2,0(a5)
    80007380:	00878793          	addi	a5,a5,8
    80007384:	f6f43c23          	sd	a5,-136(s0)
    80007388:	42064a63          	bltz	a2,800077bc <__printf+0x524>
    8000738c:	00a00713          	li	a4,10
    80007390:	02e677bb          	remuw	a5,a2,a4
    80007394:	00002d97          	auipc	s11,0x2
    80007398:	1d4d8d93          	addi	s11,s11,468 # 80009568 <digits>
    8000739c:	00900593          	li	a1,9
    800073a0:	0006051b          	sext.w	a0,a2
    800073a4:	00000c93          	li	s9,0
    800073a8:	02079793          	slli	a5,a5,0x20
    800073ac:	0207d793          	srli	a5,a5,0x20
    800073b0:	00fd87b3          	add	a5,s11,a5
    800073b4:	0007c783          	lbu	a5,0(a5)
    800073b8:	02e656bb          	divuw	a3,a2,a4
    800073bc:	f8f40023          	sb	a5,-128(s0)
    800073c0:	14c5d863          	bge	a1,a2,80007510 <__printf+0x278>
    800073c4:	06300593          	li	a1,99
    800073c8:	00100c93          	li	s9,1
    800073cc:	02e6f7bb          	remuw	a5,a3,a4
    800073d0:	02079793          	slli	a5,a5,0x20
    800073d4:	0207d793          	srli	a5,a5,0x20
    800073d8:	00fd87b3          	add	a5,s11,a5
    800073dc:	0007c783          	lbu	a5,0(a5)
    800073e0:	02e6d73b          	divuw	a4,a3,a4
    800073e4:	f8f400a3          	sb	a5,-127(s0)
    800073e8:	12a5f463          	bgeu	a1,a0,80007510 <__printf+0x278>
    800073ec:	00a00693          	li	a3,10
    800073f0:	00900593          	li	a1,9
    800073f4:	02d777bb          	remuw	a5,a4,a3
    800073f8:	02079793          	slli	a5,a5,0x20
    800073fc:	0207d793          	srli	a5,a5,0x20
    80007400:	00fd87b3          	add	a5,s11,a5
    80007404:	0007c503          	lbu	a0,0(a5)
    80007408:	02d757bb          	divuw	a5,a4,a3
    8000740c:	f8a40123          	sb	a0,-126(s0)
    80007410:	48e5f263          	bgeu	a1,a4,80007894 <__printf+0x5fc>
    80007414:	06300513          	li	a0,99
    80007418:	02d7f5bb          	remuw	a1,a5,a3
    8000741c:	02059593          	slli	a1,a1,0x20
    80007420:	0205d593          	srli	a1,a1,0x20
    80007424:	00bd85b3          	add	a1,s11,a1
    80007428:	0005c583          	lbu	a1,0(a1)
    8000742c:	02d7d7bb          	divuw	a5,a5,a3
    80007430:	f8b401a3          	sb	a1,-125(s0)
    80007434:	48e57263          	bgeu	a0,a4,800078b8 <__printf+0x620>
    80007438:	3e700513          	li	a0,999
    8000743c:	02d7f5bb          	remuw	a1,a5,a3
    80007440:	02059593          	slli	a1,a1,0x20
    80007444:	0205d593          	srli	a1,a1,0x20
    80007448:	00bd85b3          	add	a1,s11,a1
    8000744c:	0005c583          	lbu	a1,0(a1)
    80007450:	02d7d7bb          	divuw	a5,a5,a3
    80007454:	f8b40223          	sb	a1,-124(s0)
    80007458:	46e57663          	bgeu	a0,a4,800078c4 <__printf+0x62c>
    8000745c:	02d7f5bb          	remuw	a1,a5,a3
    80007460:	02059593          	slli	a1,a1,0x20
    80007464:	0205d593          	srli	a1,a1,0x20
    80007468:	00bd85b3          	add	a1,s11,a1
    8000746c:	0005c583          	lbu	a1,0(a1)
    80007470:	02d7d7bb          	divuw	a5,a5,a3
    80007474:	f8b402a3          	sb	a1,-123(s0)
    80007478:	46ea7863          	bgeu	s4,a4,800078e8 <__printf+0x650>
    8000747c:	02d7f5bb          	remuw	a1,a5,a3
    80007480:	02059593          	slli	a1,a1,0x20
    80007484:	0205d593          	srli	a1,a1,0x20
    80007488:	00bd85b3          	add	a1,s11,a1
    8000748c:	0005c583          	lbu	a1,0(a1)
    80007490:	02d7d7bb          	divuw	a5,a5,a3
    80007494:	f8b40323          	sb	a1,-122(s0)
    80007498:	3eeaf863          	bgeu	s5,a4,80007888 <__printf+0x5f0>
    8000749c:	02d7f5bb          	remuw	a1,a5,a3
    800074a0:	02059593          	slli	a1,a1,0x20
    800074a4:	0205d593          	srli	a1,a1,0x20
    800074a8:	00bd85b3          	add	a1,s11,a1
    800074ac:	0005c583          	lbu	a1,0(a1)
    800074b0:	02d7d7bb          	divuw	a5,a5,a3
    800074b4:	f8b403a3          	sb	a1,-121(s0)
    800074b8:	42eb7e63          	bgeu	s6,a4,800078f4 <__printf+0x65c>
    800074bc:	02d7f5bb          	remuw	a1,a5,a3
    800074c0:	02059593          	slli	a1,a1,0x20
    800074c4:	0205d593          	srli	a1,a1,0x20
    800074c8:	00bd85b3          	add	a1,s11,a1
    800074cc:	0005c583          	lbu	a1,0(a1)
    800074d0:	02d7d7bb          	divuw	a5,a5,a3
    800074d4:	f8b40423          	sb	a1,-120(s0)
    800074d8:	42ebfc63          	bgeu	s7,a4,80007910 <__printf+0x678>
    800074dc:	02079793          	slli	a5,a5,0x20
    800074e0:	0207d793          	srli	a5,a5,0x20
    800074e4:	00fd8db3          	add	s11,s11,a5
    800074e8:	000dc703          	lbu	a4,0(s11)
    800074ec:	00a00793          	li	a5,10
    800074f0:	00900c93          	li	s9,9
    800074f4:	f8e404a3          	sb	a4,-119(s0)
    800074f8:	00065c63          	bgez	a2,80007510 <__printf+0x278>
    800074fc:	f9040713          	addi	a4,s0,-112
    80007500:	00f70733          	add	a4,a4,a5
    80007504:	02d00693          	li	a3,45
    80007508:	fed70823          	sb	a3,-16(a4)
    8000750c:	00078c93          	mv	s9,a5
    80007510:	f8040793          	addi	a5,s0,-128
    80007514:	01978cb3          	add	s9,a5,s9
    80007518:	f7f40d13          	addi	s10,s0,-129
    8000751c:	000cc503          	lbu	a0,0(s9)
    80007520:	fffc8c93          	addi	s9,s9,-1
    80007524:	00000097          	auipc	ra,0x0
    80007528:	b90080e7          	jalr	-1136(ra) # 800070b4 <consputc>
    8000752c:	ffac98e3          	bne	s9,s10,8000751c <__printf+0x284>
    80007530:	00094503          	lbu	a0,0(s2)
    80007534:	e00514e3          	bnez	a0,8000733c <__printf+0xa4>
    80007538:	1a0c1663          	bnez	s8,800076e4 <__printf+0x44c>
    8000753c:	08813083          	ld	ra,136(sp)
    80007540:	08013403          	ld	s0,128(sp)
    80007544:	07813483          	ld	s1,120(sp)
    80007548:	07013903          	ld	s2,112(sp)
    8000754c:	06813983          	ld	s3,104(sp)
    80007550:	06013a03          	ld	s4,96(sp)
    80007554:	05813a83          	ld	s5,88(sp)
    80007558:	05013b03          	ld	s6,80(sp)
    8000755c:	04813b83          	ld	s7,72(sp)
    80007560:	04013c03          	ld	s8,64(sp)
    80007564:	03813c83          	ld	s9,56(sp)
    80007568:	03013d03          	ld	s10,48(sp)
    8000756c:	02813d83          	ld	s11,40(sp)
    80007570:	0d010113          	addi	sp,sp,208
    80007574:	00008067          	ret
    80007578:	07300713          	li	a4,115
    8000757c:	1ce78a63          	beq	a5,a4,80007750 <__printf+0x4b8>
    80007580:	07800713          	li	a4,120
    80007584:	1ee79e63          	bne	a5,a4,80007780 <__printf+0x4e8>
    80007588:	f7843783          	ld	a5,-136(s0)
    8000758c:	0007a703          	lw	a4,0(a5)
    80007590:	00878793          	addi	a5,a5,8
    80007594:	f6f43c23          	sd	a5,-136(s0)
    80007598:	28074263          	bltz	a4,8000781c <__printf+0x584>
    8000759c:	00002d97          	auipc	s11,0x2
    800075a0:	fccd8d93          	addi	s11,s11,-52 # 80009568 <digits>
    800075a4:	00f77793          	andi	a5,a4,15
    800075a8:	00fd87b3          	add	a5,s11,a5
    800075ac:	0007c683          	lbu	a3,0(a5)
    800075b0:	00f00613          	li	a2,15
    800075b4:	0007079b          	sext.w	a5,a4
    800075b8:	f8d40023          	sb	a3,-128(s0)
    800075bc:	0047559b          	srliw	a1,a4,0x4
    800075c0:	0047569b          	srliw	a3,a4,0x4
    800075c4:	00000c93          	li	s9,0
    800075c8:	0ee65063          	bge	a2,a4,800076a8 <__printf+0x410>
    800075cc:	00f6f693          	andi	a3,a3,15
    800075d0:	00dd86b3          	add	a3,s11,a3
    800075d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800075d8:	0087d79b          	srliw	a5,a5,0x8
    800075dc:	00100c93          	li	s9,1
    800075e0:	f8d400a3          	sb	a3,-127(s0)
    800075e4:	0cb67263          	bgeu	a2,a1,800076a8 <__printf+0x410>
    800075e8:	00f7f693          	andi	a3,a5,15
    800075ec:	00dd86b3          	add	a3,s11,a3
    800075f0:	0006c583          	lbu	a1,0(a3)
    800075f4:	00f00613          	li	a2,15
    800075f8:	0047d69b          	srliw	a3,a5,0x4
    800075fc:	f8b40123          	sb	a1,-126(s0)
    80007600:	0047d593          	srli	a1,a5,0x4
    80007604:	28f67e63          	bgeu	a2,a5,800078a0 <__printf+0x608>
    80007608:	00f6f693          	andi	a3,a3,15
    8000760c:	00dd86b3          	add	a3,s11,a3
    80007610:	0006c503          	lbu	a0,0(a3)
    80007614:	0087d813          	srli	a6,a5,0x8
    80007618:	0087d69b          	srliw	a3,a5,0x8
    8000761c:	f8a401a3          	sb	a0,-125(s0)
    80007620:	28b67663          	bgeu	a2,a1,800078ac <__printf+0x614>
    80007624:	00f6f693          	andi	a3,a3,15
    80007628:	00dd86b3          	add	a3,s11,a3
    8000762c:	0006c583          	lbu	a1,0(a3)
    80007630:	00c7d513          	srli	a0,a5,0xc
    80007634:	00c7d69b          	srliw	a3,a5,0xc
    80007638:	f8b40223          	sb	a1,-124(s0)
    8000763c:	29067a63          	bgeu	a2,a6,800078d0 <__printf+0x638>
    80007640:	00f6f693          	andi	a3,a3,15
    80007644:	00dd86b3          	add	a3,s11,a3
    80007648:	0006c583          	lbu	a1,0(a3)
    8000764c:	0107d813          	srli	a6,a5,0x10
    80007650:	0107d69b          	srliw	a3,a5,0x10
    80007654:	f8b402a3          	sb	a1,-123(s0)
    80007658:	28a67263          	bgeu	a2,a0,800078dc <__printf+0x644>
    8000765c:	00f6f693          	andi	a3,a3,15
    80007660:	00dd86b3          	add	a3,s11,a3
    80007664:	0006c683          	lbu	a3,0(a3)
    80007668:	0147d79b          	srliw	a5,a5,0x14
    8000766c:	f8d40323          	sb	a3,-122(s0)
    80007670:	21067663          	bgeu	a2,a6,8000787c <__printf+0x5e4>
    80007674:	02079793          	slli	a5,a5,0x20
    80007678:	0207d793          	srli	a5,a5,0x20
    8000767c:	00fd8db3          	add	s11,s11,a5
    80007680:	000dc683          	lbu	a3,0(s11)
    80007684:	00800793          	li	a5,8
    80007688:	00700c93          	li	s9,7
    8000768c:	f8d403a3          	sb	a3,-121(s0)
    80007690:	00075c63          	bgez	a4,800076a8 <__printf+0x410>
    80007694:	f9040713          	addi	a4,s0,-112
    80007698:	00f70733          	add	a4,a4,a5
    8000769c:	02d00693          	li	a3,45
    800076a0:	fed70823          	sb	a3,-16(a4)
    800076a4:	00078c93          	mv	s9,a5
    800076a8:	f8040793          	addi	a5,s0,-128
    800076ac:	01978cb3          	add	s9,a5,s9
    800076b0:	f7f40d13          	addi	s10,s0,-129
    800076b4:	000cc503          	lbu	a0,0(s9)
    800076b8:	fffc8c93          	addi	s9,s9,-1
    800076bc:	00000097          	auipc	ra,0x0
    800076c0:	9f8080e7          	jalr	-1544(ra) # 800070b4 <consputc>
    800076c4:	ff9d18e3          	bne	s10,s9,800076b4 <__printf+0x41c>
    800076c8:	0100006f          	j	800076d8 <__printf+0x440>
    800076cc:	00000097          	auipc	ra,0x0
    800076d0:	9e8080e7          	jalr	-1560(ra) # 800070b4 <consputc>
    800076d4:	000c8493          	mv	s1,s9
    800076d8:	00094503          	lbu	a0,0(s2)
    800076dc:	c60510e3          	bnez	a0,8000733c <__printf+0xa4>
    800076e0:	e40c0ee3          	beqz	s8,8000753c <__printf+0x2a4>
    800076e4:	00005517          	auipc	a0,0x5
    800076e8:	2bc50513          	addi	a0,a0,700 # 8000c9a0 <pr>
    800076ec:	00001097          	auipc	ra,0x1
    800076f0:	94c080e7          	jalr	-1716(ra) # 80008038 <release>
    800076f4:	e49ff06f          	j	8000753c <__printf+0x2a4>
    800076f8:	f7843783          	ld	a5,-136(s0)
    800076fc:	03000513          	li	a0,48
    80007700:	01000d13          	li	s10,16
    80007704:	00878713          	addi	a4,a5,8
    80007708:	0007bc83          	ld	s9,0(a5)
    8000770c:	f6e43c23          	sd	a4,-136(s0)
    80007710:	00000097          	auipc	ra,0x0
    80007714:	9a4080e7          	jalr	-1628(ra) # 800070b4 <consputc>
    80007718:	07800513          	li	a0,120
    8000771c:	00000097          	auipc	ra,0x0
    80007720:	998080e7          	jalr	-1640(ra) # 800070b4 <consputc>
    80007724:	00002d97          	auipc	s11,0x2
    80007728:	e44d8d93          	addi	s11,s11,-444 # 80009568 <digits>
    8000772c:	03ccd793          	srli	a5,s9,0x3c
    80007730:	00fd87b3          	add	a5,s11,a5
    80007734:	0007c503          	lbu	a0,0(a5)
    80007738:	fffd0d1b          	addiw	s10,s10,-1
    8000773c:	004c9c93          	slli	s9,s9,0x4
    80007740:	00000097          	auipc	ra,0x0
    80007744:	974080e7          	jalr	-1676(ra) # 800070b4 <consputc>
    80007748:	fe0d12e3          	bnez	s10,8000772c <__printf+0x494>
    8000774c:	f8dff06f          	j	800076d8 <__printf+0x440>
    80007750:	f7843783          	ld	a5,-136(s0)
    80007754:	0007bc83          	ld	s9,0(a5)
    80007758:	00878793          	addi	a5,a5,8
    8000775c:	f6f43c23          	sd	a5,-136(s0)
    80007760:	000c9a63          	bnez	s9,80007774 <__printf+0x4dc>
    80007764:	1080006f          	j	8000786c <__printf+0x5d4>
    80007768:	001c8c93          	addi	s9,s9,1
    8000776c:	00000097          	auipc	ra,0x0
    80007770:	948080e7          	jalr	-1720(ra) # 800070b4 <consputc>
    80007774:	000cc503          	lbu	a0,0(s9)
    80007778:	fe0518e3          	bnez	a0,80007768 <__printf+0x4d0>
    8000777c:	f5dff06f          	j	800076d8 <__printf+0x440>
    80007780:	02500513          	li	a0,37
    80007784:	00000097          	auipc	ra,0x0
    80007788:	930080e7          	jalr	-1744(ra) # 800070b4 <consputc>
    8000778c:	000c8513          	mv	a0,s9
    80007790:	00000097          	auipc	ra,0x0
    80007794:	924080e7          	jalr	-1756(ra) # 800070b4 <consputc>
    80007798:	f41ff06f          	j	800076d8 <__printf+0x440>
    8000779c:	02500513          	li	a0,37
    800077a0:	00000097          	auipc	ra,0x0
    800077a4:	914080e7          	jalr	-1772(ra) # 800070b4 <consputc>
    800077a8:	f31ff06f          	j	800076d8 <__printf+0x440>
    800077ac:	00030513          	mv	a0,t1
    800077b0:	00000097          	auipc	ra,0x0
    800077b4:	7bc080e7          	jalr	1980(ra) # 80007f6c <acquire>
    800077b8:	b4dff06f          	j	80007304 <__printf+0x6c>
    800077bc:	40c0053b          	negw	a0,a2
    800077c0:	00a00713          	li	a4,10
    800077c4:	02e576bb          	remuw	a3,a0,a4
    800077c8:	00002d97          	auipc	s11,0x2
    800077cc:	da0d8d93          	addi	s11,s11,-608 # 80009568 <digits>
    800077d0:	ff700593          	li	a1,-9
    800077d4:	02069693          	slli	a3,a3,0x20
    800077d8:	0206d693          	srli	a3,a3,0x20
    800077dc:	00dd86b3          	add	a3,s11,a3
    800077e0:	0006c683          	lbu	a3,0(a3)
    800077e4:	02e557bb          	divuw	a5,a0,a4
    800077e8:	f8d40023          	sb	a3,-128(s0)
    800077ec:	10b65e63          	bge	a2,a1,80007908 <__printf+0x670>
    800077f0:	06300593          	li	a1,99
    800077f4:	02e7f6bb          	remuw	a3,a5,a4
    800077f8:	02069693          	slli	a3,a3,0x20
    800077fc:	0206d693          	srli	a3,a3,0x20
    80007800:	00dd86b3          	add	a3,s11,a3
    80007804:	0006c683          	lbu	a3,0(a3)
    80007808:	02e7d73b          	divuw	a4,a5,a4
    8000780c:	00200793          	li	a5,2
    80007810:	f8d400a3          	sb	a3,-127(s0)
    80007814:	bca5ece3          	bltu	a1,a0,800073ec <__printf+0x154>
    80007818:	ce5ff06f          	j	800074fc <__printf+0x264>
    8000781c:	40e007bb          	negw	a5,a4
    80007820:	00002d97          	auipc	s11,0x2
    80007824:	d48d8d93          	addi	s11,s11,-696 # 80009568 <digits>
    80007828:	00f7f693          	andi	a3,a5,15
    8000782c:	00dd86b3          	add	a3,s11,a3
    80007830:	0006c583          	lbu	a1,0(a3)
    80007834:	ff100613          	li	a2,-15
    80007838:	0047d69b          	srliw	a3,a5,0x4
    8000783c:	f8b40023          	sb	a1,-128(s0)
    80007840:	0047d59b          	srliw	a1,a5,0x4
    80007844:	0ac75e63          	bge	a4,a2,80007900 <__printf+0x668>
    80007848:	00f6f693          	andi	a3,a3,15
    8000784c:	00dd86b3          	add	a3,s11,a3
    80007850:	0006c603          	lbu	a2,0(a3)
    80007854:	00f00693          	li	a3,15
    80007858:	0087d79b          	srliw	a5,a5,0x8
    8000785c:	f8c400a3          	sb	a2,-127(s0)
    80007860:	d8b6e4e3          	bltu	a3,a1,800075e8 <__printf+0x350>
    80007864:	00200793          	li	a5,2
    80007868:	e2dff06f          	j	80007694 <__printf+0x3fc>
    8000786c:	00002c97          	auipc	s9,0x2
    80007870:	cdcc8c93          	addi	s9,s9,-804 # 80009548 <CONSOLE_STATUS+0x538>
    80007874:	02800513          	li	a0,40
    80007878:	ef1ff06f          	j	80007768 <__printf+0x4d0>
    8000787c:	00700793          	li	a5,7
    80007880:	00600c93          	li	s9,6
    80007884:	e0dff06f          	j	80007690 <__printf+0x3f8>
    80007888:	00700793          	li	a5,7
    8000788c:	00600c93          	li	s9,6
    80007890:	c69ff06f          	j	800074f8 <__printf+0x260>
    80007894:	00300793          	li	a5,3
    80007898:	00200c93          	li	s9,2
    8000789c:	c5dff06f          	j	800074f8 <__printf+0x260>
    800078a0:	00300793          	li	a5,3
    800078a4:	00200c93          	li	s9,2
    800078a8:	de9ff06f          	j	80007690 <__printf+0x3f8>
    800078ac:	00400793          	li	a5,4
    800078b0:	00300c93          	li	s9,3
    800078b4:	dddff06f          	j	80007690 <__printf+0x3f8>
    800078b8:	00400793          	li	a5,4
    800078bc:	00300c93          	li	s9,3
    800078c0:	c39ff06f          	j	800074f8 <__printf+0x260>
    800078c4:	00500793          	li	a5,5
    800078c8:	00400c93          	li	s9,4
    800078cc:	c2dff06f          	j	800074f8 <__printf+0x260>
    800078d0:	00500793          	li	a5,5
    800078d4:	00400c93          	li	s9,4
    800078d8:	db9ff06f          	j	80007690 <__printf+0x3f8>
    800078dc:	00600793          	li	a5,6
    800078e0:	00500c93          	li	s9,5
    800078e4:	dadff06f          	j	80007690 <__printf+0x3f8>
    800078e8:	00600793          	li	a5,6
    800078ec:	00500c93          	li	s9,5
    800078f0:	c09ff06f          	j	800074f8 <__printf+0x260>
    800078f4:	00800793          	li	a5,8
    800078f8:	00700c93          	li	s9,7
    800078fc:	bfdff06f          	j	800074f8 <__printf+0x260>
    80007900:	00100793          	li	a5,1
    80007904:	d91ff06f          	j	80007694 <__printf+0x3fc>
    80007908:	00100793          	li	a5,1
    8000790c:	bf1ff06f          	j	800074fc <__printf+0x264>
    80007910:	00900793          	li	a5,9
    80007914:	00800c93          	li	s9,8
    80007918:	be1ff06f          	j	800074f8 <__printf+0x260>
    8000791c:	00002517          	auipc	a0,0x2
    80007920:	c3450513          	addi	a0,a0,-972 # 80009550 <CONSOLE_STATUS+0x540>
    80007924:	00000097          	auipc	ra,0x0
    80007928:	918080e7          	jalr	-1768(ra) # 8000723c <panic>

000000008000792c <printfinit>:
    8000792c:	fe010113          	addi	sp,sp,-32
    80007930:	00813823          	sd	s0,16(sp)
    80007934:	00913423          	sd	s1,8(sp)
    80007938:	00113c23          	sd	ra,24(sp)
    8000793c:	02010413          	addi	s0,sp,32
    80007940:	00005497          	auipc	s1,0x5
    80007944:	06048493          	addi	s1,s1,96 # 8000c9a0 <pr>
    80007948:	00048513          	mv	a0,s1
    8000794c:	00002597          	auipc	a1,0x2
    80007950:	c1458593          	addi	a1,a1,-1004 # 80009560 <CONSOLE_STATUS+0x550>
    80007954:	00000097          	auipc	ra,0x0
    80007958:	5f4080e7          	jalr	1524(ra) # 80007f48 <initlock>
    8000795c:	01813083          	ld	ra,24(sp)
    80007960:	01013403          	ld	s0,16(sp)
    80007964:	0004ac23          	sw	zero,24(s1)
    80007968:	00813483          	ld	s1,8(sp)
    8000796c:	02010113          	addi	sp,sp,32
    80007970:	00008067          	ret

0000000080007974 <uartinit>:
    80007974:	ff010113          	addi	sp,sp,-16
    80007978:	00813423          	sd	s0,8(sp)
    8000797c:	01010413          	addi	s0,sp,16
    80007980:	100007b7          	lui	a5,0x10000
    80007984:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007988:	f8000713          	li	a4,-128
    8000798c:	00e781a3          	sb	a4,3(a5)
    80007990:	00300713          	li	a4,3
    80007994:	00e78023          	sb	a4,0(a5)
    80007998:	000780a3          	sb	zero,1(a5)
    8000799c:	00e781a3          	sb	a4,3(a5)
    800079a0:	00700693          	li	a3,7
    800079a4:	00d78123          	sb	a3,2(a5)
    800079a8:	00e780a3          	sb	a4,1(a5)
    800079ac:	00813403          	ld	s0,8(sp)
    800079b0:	01010113          	addi	sp,sp,16
    800079b4:	00008067          	ret

00000000800079b8 <uartputc>:
    800079b8:	00004797          	auipc	a5,0x4
    800079bc:	d107a783          	lw	a5,-752(a5) # 8000b6c8 <panicked>
    800079c0:	00078463          	beqz	a5,800079c8 <uartputc+0x10>
    800079c4:	0000006f          	j	800079c4 <uartputc+0xc>
    800079c8:	fd010113          	addi	sp,sp,-48
    800079cc:	02813023          	sd	s0,32(sp)
    800079d0:	00913c23          	sd	s1,24(sp)
    800079d4:	01213823          	sd	s2,16(sp)
    800079d8:	01313423          	sd	s3,8(sp)
    800079dc:	02113423          	sd	ra,40(sp)
    800079e0:	03010413          	addi	s0,sp,48
    800079e4:	00004917          	auipc	s2,0x4
    800079e8:	cec90913          	addi	s2,s2,-788 # 8000b6d0 <uart_tx_r>
    800079ec:	00093783          	ld	a5,0(s2)
    800079f0:	00004497          	auipc	s1,0x4
    800079f4:	ce848493          	addi	s1,s1,-792 # 8000b6d8 <uart_tx_w>
    800079f8:	0004b703          	ld	a4,0(s1)
    800079fc:	02078693          	addi	a3,a5,32
    80007a00:	00050993          	mv	s3,a0
    80007a04:	02e69c63          	bne	a3,a4,80007a3c <uartputc+0x84>
    80007a08:	00001097          	auipc	ra,0x1
    80007a0c:	834080e7          	jalr	-1996(ra) # 8000823c <push_on>
    80007a10:	00093783          	ld	a5,0(s2)
    80007a14:	0004b703          	ld	a4,0(s1)
    80007a18:	02078793          	addi	a5,a5,32
    80007a1c:	00e79463          	bne	a5,a4,80007a24 <uartputc+0x6c>
    80007a20:	0000006f          	j	80007a20 <uartputc+0x68>
    80007a24:	00001097          	auipc	ra,0x1
    80007a28:	88c080e7          	jalr	-1908(ra) # 800082b0 <pop_on>
    80007a2c:	00093783          	ld	a5,0(s2)
    80007a30:	0004b703          	ld	a4,0(s1)
    80007a34:	02078693          	addi	a3,a5,32
    80007a38:	fce688e3          	beq	a3,a4,80007a08 <uartputc+0x50>
    80007a3c:	01f77693          	andi	a3,a4,31
    80007a40:	00005597          	auipc	a1,0x5
    80007a44:	f8058593          	addi	a1,a1,-128 # 8000c9c0 <uart_tx_buf>
    80007a48:	00d586b3          	add	a3,a1,a3
    80007a4c:	00170713          	addi	a4,a4,1
    80007a50:	01368023          	sb	s3,0(a3)
    80007a54:	00e4b023          	sd	a4,0(s1)
    80007a58:	10000637          	lui	a2,0x10000
    80007a5c:	02f71063          	bne	a4,a5,80007a7c <uartputc+0xc4>
    80007a60:	0340006f          	j	80007a94 <uartputc+0xdc>
    80007a64:	00074703          	lbu	a4,0(a4)
    80007a68:	00f93023          	sd	a5,0(s2)
    80007a6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007a70:	00093783          	ld	a5,0(s2)
    80007a74:	0004b703          	ld	a4,0(s1)
    80007a78:	00f70e63          	beq	a4,a5,80007a94 <uartputc+0xdc>
    80007a7c:	00564683          	lbu	a3,5(a2)
    80007a80:	01f7f713          	andi	a4,a5,31
    80007a84:	00e58733          	add	a4,a1,a4
    80007a88:	0206f693          	andi	a3,a3,32
    80007a8c:	00178793          	addi	a5,a5,1
    80007a90:	fc069ae3          	bnez	a3,80007a64 <uartputc+0xac>
    80007a94:	02813083          	ld	ra,40(sp)
    80007a98:	02013403          	ld	s0,32(sp)
    80007a9c:	01813483          	ld	s1,24(sp)
    80007aa0:	01013903          	ld	s2,16(sp)
    80007aa4:	00813983          	ld	s3,8(sp)
    80007aa8:	03010113          	addi	sp,sp,48
    80007aac:	00008067          	ret

0000000080007ab0 <uartputc_sync>:
    80007ab0:	ff010113          	addi	sp,sp,-16
    80007ab4:	00813423          	sd	s0,8(sp)
    80007ab8:	01010413          	addi	s0,sp,16
    80007abc:	00004717          	auipc	a4,0x4
    80007ac0:	c0c72703          	lw	a4,-1012(a4) # 8000b6c8 <panicked>
    80007ac4:	02071663          	bnez	a4,80007af0 <uartputc_sync+0x40>
    80007ac8:	00050793          	mv	a5,a0
    80007acc:	100006b7          	lui	a3,0x10000
    80007ad0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007ad4:	02077713          	andi	a4,a4,32
    80007ad8:	fe070ce3          	beqz	a4,80007ad0 <uartputc_sync+0x20>
    80007adc:	0ff7f793          	andi	a5,a5,255
    80007ae0:	00f68023          	sb	a5,0(a3)
    80007ae4:	00813403          	ld	s0,8(sp)
    80007ae8:	01010113          	addi	sp,sp,16
    80007aec:	00008067          	ret
    80007af0:	0000006f          	j	80007af0 <uartputc_sync+0x40>

0000000080007af4 <uartstart>:
    80007af4:	ff010113          	addi	sp,sp,-16
    80007af8:	00813423          	sd	s0,8(sp)
    80007afc:	01010413          	addi	s0,sp,16
    80007b00:	00004617          	auipc	a2,0x4
    80007b04:	bd060613          	addi	a2,a2,-1072 # 8000b6d0 <uart_tx_r>
    80007b08:	00004517          	auipc	a0,0x4
    80007b0c:	bd050513          	addi	a0,a0,-1072 # 8000b6d8 <uart_tx_w>
    80007b10:	00063783          	ld	a5,0(a2)
    80007b14:	00053703          	ld	a4,0(a0)
    80007b18:	04f70263          	beq	a4,a5,80007b5c <uartstart+0x68>
    80007b1c:	100005b7          	lui	a1,0x10000
    80007b20:	00005817          	auipc	a6,0x5
    80007b24:	ea080813          	addi	a6,a6,-352 # 8000c9c0 <uart_tx_buf>
    80007b28:	01c0006f          	j	80007b44 <uartstart+0x50>
    80007b2c:	0006c703          	lbu	a4,0(a3)
    80007b30:	00f63023          	sd	a5,0(a2)
    80007b34:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b38:	00063783          	ld	a5,0(a2)
    80007b3c:	00053703          	ld	a4,0(a0)
    80007b40:	00f70e63          	beq	a4,a5,80007b5c <uartstart+0x68>
    80007b44:	01f7f713          	andi	a4,a5,31
    80007b48:	00e806b3          	add	a3,a6,a4
    80007b4c:	0055c703          	lbu	a4,5(a1)
    80007b50:	00178793          	addi	a5,a5,1
    80007b54:	02077713          	andi	a4,a4,32
    80007b58:	fc071ae3          	bnez	a4,80007b2c <uartstart+0x38>
    80007b5c:	00813403          	ld	s0,8(sp)
    80007b60:	01010113          	addi	sp,sp,16
    80007b64:	00008067          	ret

0000000080007b68 <uartgetc>:
    80007b68:	ff010113          	addi	sp,sp,-16
    80007b6c:	00813423          	sd	s0,8(sp)
    80007b70:	01010413          	addi	s0,sp,16
    80007b74:	10000737          	lui	a4,0x10000
    80007b78:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007b7c:	0017f793          	andi	a5,a5,1
    80007b80:	00078c63          	beqz	a5,80007b98 <uartgetc+0x30>
    80007b84:	00074503          	lbu	a0,0(a4)
    80007b88:	0ff57513          	andi	a0,a0,255
    80007b8c:	00813403          	ld	s0,8(sp)
    80007b90:	01010113          	addi	sp,sp,16
    80007b94:	00008067          	ret
    80007b98:	fff00513          	li	a0,-1
    80007b9c:	ff1ff06f          	j	80007b8c <uartgetc+0x24>

0000000080007ba0 <uartintr>:
    80007ba0:	100007b7          	lui	a5,0x10000
    80007ba4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ba8:	0017f793          	andi	a5,a5,1
    80007bac:	0a078463          	beqz	a5,80007c54 <uartintr+0xb4>
    80007bb0:	fe010113          	addi	sp,sp,-32
    80007bb4:	00813823          	sd	s0,16(sp)
    80007bb8:	00913423          	sd	s1,8(sp)
    80007bbc:	00113c23          	sd	ra,24(sp)
    80007bc0:	02010413          	addi	s0,sp,32
    80007bc4:	100004b7          	lui	s1,0x10000
    80007bc8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007bcc:	0ff57513          	andi	a0,a0,255
    80007bd0:	fffff097          	auipc	ra,0xfffff
    80007bd4:	534080e7          	jalr	1332(ra) # 80007104 <consoleintr>
    80007bd8:	0054c783          	lbu	a5,5(s1)
    80007bdc:	0017f793          	andi	a5,a5,1
    80007be0:	fe0794e3          	bnez	a5,80007bc8 <uartintr+0x28>
    80007be4:	00004617          	auipc	a2,0x4
    80007be8:	aec60613          	addi	a2,a2,-1300 # 8000b6d0 <uart_tx_r>
    80007bec:	00004517          	auipc	a0,0x4
    80007bf0:	aec50513          	addi	a0,a0,-1300 # 8000b6d8 <uart_tx_w>
    80007bf4:	00063783          	ld	a5,0(a2)
    80007bf8:	00053703          	ld	a4,0(a0)
    80007bfc:	04f70263          	beq	a4,a5,80007c40 <uartintr+0xa0>
    80007c00:	100005b7          	lui	a1,0x10000
    80007c04:	00005817          	auipc	a6,0x5
    80007c08:	dbc80813          	addi	a6,a6,-580 # 8000c9c0 <uart_tx_buf>
    80007c0c:	01c0006f          	j	80007c28 <uartintr+0x88>
    80007c10:	0006c703          	lbu	a4,0(a3)
    80007c14:	00f63023          	sd	a5,0(a2)
    80007c18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c1c:	00063783          	ld	a5,0(a2)
    80007c20:	00053703          	ld	a4,0(a0)
    80007c24:	00f70e63          	beq	a4,a5,80007c40 <uartintr+0xa0>
    80007c28:	01f7f713          	andi	a4,a5,31
    80007c2c:	00e806b3          	add	a3,a6,a4
    80007c30:	0055c703          	lbu	a4,5(a1)
    80007c34:	00178793          	addi	a5,a5,1
    80007c38:	02077713          	andi	a4,a4,32
    80007c3c:	fc071ae3          	bnez	a4,80007c10 <uartintr+0x70>
    80007c40:	01813083          	ld	ra,24(sp)
    80007c44:	01013403          	ld	s0,16(sp)
    80007c48:	00813483          	ld	s1,8(sp)
    80007c4c:	02010113          	addi	sp,sp,32
    80007c50:	00008067          	ret
    80007c54:	00004617          	auipc	a2,0x4
    80007c58:	a7c60613          	addi	a2,a2,-1412 # 8000b6d0 <uart_tx_r>
    80007c5c:	00004517          	auipc	a0,0x4
    80007c60:	a7c50513          	addi	a0,a0,-1412 # 8000b6d8 <uart_tx_w>
    80007c64:	00063783          	ld	a5,0(a2)
    80007c68:	00053703          	ld	a4,0(a0)
    80007c6c:	04f70263          	beq	a4,a5,80007cb0 <uartintr+0x110>
    80007c70:	100005b7          	lui	a1,0x10000
    80007c74:	00005817          	auipc	a6,0x5
    80007c78:	d4c80813          	addi	a6,a6,-692 # 8000c9c0 <uart_tx_buf>
    80007c7c:	01c0006f          	j	80007c98 <uartintr+0xf8>
    80007c80:	0006c703          	lbu	a4,0(a3)
    80007c84:	00f63023          	sd	a5,0(a2)
    80007c88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c8c:	00063783          	ld	a5,0(a2)
    80007c90:	00053703          	ld	a4,0(a0)
    80007c94:	02f70063          	beq	a4,a5,80007cb4 <uartintr+0x114>
    80007c98:	01f7f713          	andi	a4,a5,31
    80007c9c:	00e806b3          	add	a3,a6,a4
    80007ca0:	0055c703          	lbu	a4,5(a1)
    80007ca4:	00178793          	addi	a5,a5,1
    80007ca8:	02077713          	andi	a4,a4,32
    80007cac:	fc071ae3          	bnez	a4,80007c80 <uartintr+0xe0>
    80007cb0:	00008067          	ret
    80007cb4:	00008067          	ret

0000000080007cb8 <kinit>:
    80007cb8:	fc010113          	addi	sp,sp,-64
    80007cbc:	02913423          	sd	s1,40(sp)
    80007cc0:	fffff7b7          	lui	a5,0xfffff
    80007cc4:	00006497          	auipc	s1,0x6
    80007cc8:	d1b48493          	addi	s1,s1,-741 # 8000d9df <end+0xfff>
    80007ccc:	02813823          	sd	s0,48(sp)
    80007cd0:	01313c23          	sd	s3,24(sp)
    80007cd4:	00f4f4b3          	and	s1,s1,a5
    80007cd8:	02113c23          	sd	ra,56(sp)
    80007cdc:	03213023          	sd	s2,32(sp)
    80007ce0:	01413823          	sd	s4,16(sp)
    80007ce4:	01513423          	sd	s5,8(sp)
    80007ce8:	04010413          	addi	s0,sp,64
    80007cec:	000017b7          	lui	a5,0x1
    80007cf0:	01100993          	li	s3,17
    80007cf4:	00f487b3          	add	a5,s1,a5
    80007cf8:	01b99993          	slli	s3,s3,0x1b
    80007cfc:	06f9e063          	bltu	s3,a5,80007d5c <kinit+0xa4>
    80007d00:	00005a97          	auipc	s5,0x5
    80007d04:	ce0a8a93          	addi	s5,s5,-800 # 8000c9e0 <end>
    80007d08:	0754ec63          	bltu	s1,s5,80007d80 <kinit+0xc8>
    80007d0c:	0734fa63          	bgeu	s1,s3,80007d80 <kinit+0xc8>
    80007d10:	00088a37          	lui	s4,0x88
    80007d14:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007d18:	00004917          	auipc	s2,0x4
    80007d1c:	9c890913          	addi	s2,s2,-1592 # 8000b6e0 <kmem>
    80007d20:	00ca1a13          	slli	s4,s4,0xc
    80007d24:	0140006f          	j	80007d38 <kinit+0x80>
    80007d28:	000017b7          	lui	a5,0x1
    80007d2c:	00f484b3          	add	s1,s1,a5
    80007d30:	0554e863          	bltu	s1,s5,80007d80 <kinit+0xc8>
    80007d34:	0534f663          	bgeu	s1,s3,80007d80 <kinit+0xc8>
    80007d38:	00001637          	lui	a2,0x1
    80007d3c:	00100593          	li	a1,1
    80007d40:	00048513          	mv	a0,s1
    80007d44:	00000097          	auipc	ra,0x0
    80007d48:	5e4080e7          	jalr	1508(ra) # 80008328 <__memset>
    80007d4c:	00093783          	ld	a5,0(s2)
    80007d50:	00f4b023          	sd	a5,0(s1)
    80007d54:	00993023          	sd	s1,0(s2)
    80007d58:	fd4498e3          	bne	s1,s4,80007d28 <kinit+0x70>
    80007d5c:	03813083          	ld	ra,56(sp)
    80007d60:	03013403          	ld	s0,48(sp)
    80007d64:	02813483          	ld	s1,40(sp)
    80007d68:	02013903          	ld	s2,32(sp)
    80007d6c:	01813983          	ld	s3,24(sp)
    80007d70:	01013a03          	ld	s4,16(sp)
    80007d74:	00813a83          	ld	s5,8(sp)
    80007d78:	04010113          	addi	sp,sp,64
    80007d7c:	00008067          	ret
    80007d80:	00002517          	auipc	a0,0x2
    80007d84:	80050513          	addi	a0,a0,-2048 # 80009580 <digits+0x18>
    80007d88:	fffff097          	auipc	ra,0xfffff
    80007d8c:	4b4080e7          	jalr	1204(ra) # 8000723c <panic>

0000000080007d90 <freerange>:
    80007d90:	fc010113          	addi	sp,sp,-64
    80007d94:	000017b7          	lui	a5,0x1
    80007d98:	02913423          	sd	s1,40(sp)
    80007d9c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007da0:	009504b3          	add	s1,a0,s1
    80007da4:	fffff537          	lui	a0,0xfffff
    80007da8:	02813823          	sd	s0,48(sp)
    80007dac:	02113c23          	sd	ra,56(sp)
    80007db0:	03213023          	sd	s2,32(sp)
    80007db4:	01313c23          	sd	s3,24(sp)
    80007db8:	01413823          	sd	s4,16(sp)
    80007dbc:	01513423          	sd	s5,8(sp)
    80007dc0:	01613023          	sd	s6,0(sp)
    80007dc4:	04010413          	addi	s0,sp,64
    80007dc8:	00a4f4b3          	and	s1,s1,a0
    80007dcc:	00f487b3          	add	a5,s1,a5
    80007dd0:	06f5e463          	bltu	a1,a5,80007e38 <freerange+0xa8>
    80007dd4:	00005a97          	auipc	s5,0x5
    80007dd8:	c0ca8a93          	addi	s5,s5,-1012 # 8000c9e0 <end>
    80007ddc:	0954e263          	bltu	s1,s5,80007e60 <freerange+0xd0>
    80007de0:	01100993          	li	s3,17
    80007de4:	01b99993          	slli	s3,s3,0x1b
    80007de8:	0734fc63          	bgeu	s1,s3,80007e60 <freerange+0xd0>
    80007dec:	00058a13          	mv	s4,a1
    80007df0:	00004917          	auipc	s2,0x4
    80007df4:	8f090913          	addi	s2,s2,-1808 # 8000b6e0 <kmem>
    80007df8:	00002b37          	lui	s6,0x2
    80007dfc:	0140006f          	j	80007e10 <freerange+0x80>
    80007e00:	000017b7          	lui	a5,0x1
    80007e04:	00f484b3          	add	s1,s1,a5
    80007e08:	0554ec63          	bltu	s1,s5,80007e60 <freerange+0xd0>
    80007e0c:	0534fa63          	bgeu	s1,s3,80007e60 <freerange+0xd0>
    80007e10:	00001637          	lui	a2,0x1
    80007e14:	00100593          	li	a1,1
    80007e18:	00048513          	mv	a0,s1
    80007e1c:	00000097          	auipc	ra,0x0
    80007e20:	50c080e7          	jalr	1292(ra) # 80008328 <__memset>
    80007e24:	00093703          	ld	a4,0(s2)
    80007e28:	016487b3          	add	a5,s1,s6
    80007e2c:	00e4b023          	sd	a4,0(s1)
    80007e30:	00993023          	sd	s1,0(s2)
    80007e34:	fcfa76e3          	bgeu	s4,a5,80007e00 <freerange+0x70>
    80007e38:	03813083          	ld	ra,56(sp)
    80007e3c:	03013403          	ld	s0,48(sp)
    80007e40:	02813483          	ld	s1,40(sp)
    80007e44:	02013903          	ld	s2,32(sp)
    80007e48:	01813983          	ld	s3,24(sp)
    80007e4c:	01013a03          	ld	s4,16(sp)
    80007e50:	00813a83          	ld	s5,8(sp)
    80007e54:	00013b03          	ld	s6,0(sp)
    80007e58:	04010113          	addi	sp,sp,64
    80007e5c:	00008067          	ret
    80007e60:	00001517          	auipc	a0,0x1
    80007e64:	72050513          	addi	a0,a0,1824 # 80009580 <digits+0x18>
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	3d4080e7          	jalr	980(ra) # 8000723c <panic>

0000000080007e70 <kfree>:
    80007e70:	fe010113          	addi	sp,sp,-32
    80007e74:	00813823          	sd	s0,16(sp)
    80007e78:	00113c23          	sd	ra,24(sp)
    80007e7c:	00913423          	sd	s1,8(sp)
    80007e80:	02010413          	addi	s0,sp,32
    80007e84:	03451793          	slli	a5,a0,0x34
    80007e88:	04079c63          	bnez	a5,80007ee0 <kfree+0x70>
    80007e8c:	00005797          	auipc	a5,0x5
    80007e90:	b5478793          	addi	a5,a5,-1196 # 8000c9e0 <end>
    80007e94:	00050493          	mv	s1,a0
    80007e98:	04f56463          	bltu	a0,a5,80007ee0 <kfree+0x70>
    80007e9c:	01100793          	li	a5,17
    80007ea0:	01b79793          	slli	a5,a5,0x1b
    80007ea4:	02f57e63          	bgeu	a0,a5,80007ee0 <kfree+0x70>
    80007ea8:	00001637          	lui	a2,0x1
    80007eac:	00100593          	li	a1,1
    80007eb0:	00000097          	auipc	ra,0x0
    80007eb4:	478080e7          	jalr	1144(ra) # 80008328 <__memset>
    80007eb8:	00004797          	auipc	a5,0x4
    80007ebc:	82878793          	addi	a5,a5,-2008 # 8000b6e0 <kmem>
    80007ec0:	0007b703          	ld	a4,0(a5)
    80007ec4:	01813083          	ld	ra,24(sp)
    80007ec8:	01013403          	ld	s0,16(sp)
    80007ecc:	00e4b023          	sd	a4,0(s1)
    80007ed0:	0097b023          	sd	s1,0(a5)
    80007ed4:	00813483          	ld	s1,8(sp)
    80007ed8:	02010113          	addi	sp,sp,32
    80007edc:	00008067          	ret
    80007ee0:	00001517          	auipc	a0,0x1
    80007ee4:	6a050513          	addi	a0,a0,1696 # 80009580 <digits+0x18>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	354080e7          	jalr	852(ra) # 8000723c <panic>

0000000080007ef0 <kalloc>:
    80007ef0:	fe010113          	addi	sp,sp,-32
    80007ef4:	00813823          	sd	s0,16(sp)
    80007ef8:	00913423          	sd	s1,8(sp)
    80007efc:	00113c23          	sd	ra,24(sp)
    80007f00:	02010413          	addi	s0,sp,32
    80007f04:	00003797          	auipc	a5,0x3
    80007f08:	7dc78793          	addi	a5,a5,2012 # 8000b6e0 <kmem>
    80007f0c:	0007b483          	ld	s1,0(a5)
    80007f10:	02048063          	beqz	s1,80007f30 <kalloc+0x40>
    80007f14:	0004b703          	ld	a4,0(s1)
    80007f18:	00001637          	lui	a2,0x1
    80007f1c:	00500593          	li	a1,5
    80007f20:	00048513          	mv	a0,s1
    80007f24:	00e7b023          	sd	a4,0(a5)
    80007f28:	00000097          	auipc	ra,0x0
    80007f2c:	400080e7          	jalr	1024(ra) # 80008328 <__memset>
    80007f30:	01813083          	ld	ra,24(sp)
    80007f34:	01013403          	ld	s0,16(sp)
    80007f38:	00048513          	mv	a0,s1
    80007f3c:	00813483          	ld	s1,8(sp)
    80007f40:	02010113          	addi	sp,sp,32
    80007f44:	00008067          	ret

0000000080007f48 <initlock>:
    80007f48:	ff010113          	addi	sp,sp,-16
    80007f4c:	00813423          	sd	s0,8(sp)
    80007f50:	01010413          	addi	s0,sp,16
    80007f54:	00813403          	ld	s0,8(sp)
    80007f58:	00b53423          	sd	a1,8(a0)
    80007f5c:	00052023          	sw	zero,0(a0)
    80007f60:	00053823          	sd	zero,16(a0)
    80007f64:	01010113          	addi	sp,sp,16
    80007f68:	00008067          	ret

0000000080007f6c <acquire>:
    80007f6c:	fe010113          	addi	sp,sp,-32
    80007f70:	00813823          	sd	s0,16(sp)
    80007f74:	00913423          	sd	s1,8(sp)
    80007f78:	00113c23          	sd	ra,24(sp)
    80007f7c:	01213023          	sd	s2,0(sp)
    80007f80:	02010413          	addi	s0,sp,32
    80007f84:	00050493          	mv	s1,a0
    80007f88:	10002973          	csrr	s2,sstatus
    80007f8c:	100027f3          	csrr	a5,sstatus
    80007f90:	ffd7f793          	andi	a5,a5,-3
    80007f94:	10079073          	csrw	sstatus,a5
    80007f98:	fffff097          	auipc	ra,0xfffff
    80007f9c:	8e0080e7          	jalr	-1824(ra) # 80006878 <mycpu>
    80007fa0:	07852783          	lw	a5,120(a0)
    80007fa4:	06078e63          	beqz	a5,80008020 <acquire+0xb4>
    80007fa8:	fffff097          	auipc	ra,0xfffff
    80007fac:	8d0080e7          	jalr	-1840(ra) # 80006878 <mycpu>
    80007fb0:	07852783          	lw	a5,120(a0)
    80007fb4:	0004a703          	lw	a4,0(s1)
    80007fb8:	0017879b          	addiw	a5,a5,1
    80007fbc:	06f52c23          	sw	a5,120(a0)
    80007fc0:	04071063          	bnez	a4,80008000 <acquire+0x94>
    80007fc4:	00100713          	li	a4,1
    80007fc8:	00070793          	mv	a5,a4
    80007fcc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007fd0:	0007879b          	sext.w	a5,a5
    80007fd4:	fe079ae3          	bnez	a5,80007fc8 <acquire+0x5c>
    80007fd8:	0ff0000f          	fence
    80007fdc:	fffff097          	auipc	ra,0xfffff
    80007fe0:	89c080e7          	jalr	-1892(ra) # 80006878 <mycpu>
    80007fe4:	01813083          	ld	ra,24(sp)
    80007fe8:	01013403          	ld	s0,16(sp)
    80007fec:	00a4b823          	sd	a0,16(s1)
    80007ff0:	00013903          	ld	s2,0(sp)
    80007ff4:	00813483          	ld	s1,8(sp)
    80007ff8:	02010113          	addi	sp,sp,32
    80007ffc:	00008067          	ret
    80008000:	0104b903          	ld	s2,16(s1)
    80008004:	fffff097          	auipc	ra,0xfffff
    80008008:	874080e7          	jalr	-1932(ra) # 80006878 <mycpu>
    8000800c:	faa91ce3          	bne	s2,a0,80007fc4 <acquire+0x58>
    80008010:	00001517          	auipc	a0,0x1
    80008014:	57850513          	addi	a0,a0,1400 # 80009588 <digits+0x20>
    80008018:	fffff097          	auipc	ra,0xfffff
    8000801c:	224080e7          	jalr	548(ra) # 8000723c <panic>
    80008020:	00195913          	srli	s2,s2,0x1
    80008024:	fffff097          	auipc	ra,0xfffff
    80008028:	854080e7          	jalr	-1964(ra) # 80006878 <mycpu>
    8000802c:	00197913          	andi	s2,s2,1
    80008030:	07252e23          	sw	s2,124(a0)
    80008034:	f75ff06f          	j	80007fa8 <acquire+0x3c>

0000000080008038 <release>:
    80008038:	fe010113          	addi	sp,sp,-32
    8000803c:	00813823          	sd	s0,16(sp)
    80008040:	00113c23          	sd	ra,24(sp)
    80008044:	00913423          	sd	s1,8(sp)
    80008048:	01213023          	sd	s2,0(sp)
    8000804c:	02010413          	addi	s0,sp,32
    80008050:	00052783          	lw	a5,0(a0)
    80008054:	00079a63          	bnez	a5,80008068 <release+0x30>
    80008058:	00001517          	auipc	a0,0x1
    8000805c:	53850513          	addi	a0,a0,1336 # 80009590 <digits+0x28>
    80008060:	fffff097          	auipc	ra,0xfffff
    80008064:	1dc080e7          	jalr	476(ra) # 8000723c <panic>
    80008068:	01053903          	ld	s2,16(a0)
    8000806c:	00050493          	mv	s1,a0
    80008070:	fffff097          	auipc	ra,0xfffff
    80008074:	808080e7          	jalr	-2040(ra) # 80006878 <mycpu>
    80008078:	fea910e3          	bne	s2,a0,80008058 <release+0x20>
    8000807c:	0004b823          	sd	zero,16(s1)
    80008080:	0ff0000f          	fence
    80008084:	0f50000f          	fence	iorw,ow
    80008088:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000808c:	ffffe097          	auipc	ra,0xffffe
    80008090:	7ec080e7          	jalr	2028(ra) # 80006878 <mycpu>
    80008094:	100027f3          	csrr	a5,sstatus
    80008098:	0027f793          	andi	a5,a5,2
    8000809c:	04079a63          	bnez	a5,800080f0 <release+0xb8>
    800080a0:	07852783          	lw	a5,120(a0)
    800080a4:	02f05e63          	blez	a5,800080e0 <release+0xa8>
    800080a8:	fff7871b          	addiw	a4,a5,-1
    800080ac:	06e52c23          	sw	a4,120(a0)
    800080b0:	00071c63          	bnez	a4,800080c8 <release+0x90>
    800080b4:	07c52783          	lw	a5,124(a0)
    800080b8:	00078863          	beqz	a5,800080c8 <release+0x90>
    800080bc:	100027f3          	csrr	a5,sstatus
    800080c0:	0027e793          	ori	a5,a5,2
    800080c4:	10079073          	csrw	sstatus,a5
    800080c8:	01813083          	ld	ra,24(sp)
    800080cc:	01013403          	ld	s0,16(sp)
    800080d0:	00813483          	ld	s1,8(sp)
    800080d4:	00013903          	ld	s2,0(sp)
    800080d8:	02010113          	addi	sp,sp,32
    800080dc:	00008067          	ret
    800080e0:	00001517          	auipc	a0,0x1
    800080e4:	4d050513          	addi	a0,a0,1232 # 800095b0 <digits+0x48>
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	154080e7          	jalr	340(ra) # 8000723c <panic>
    800080f0:	00001517          	auipc	a0,0x1
    800080f4:	4a850513          	addi	a0,a0,1192 # 80009598 <digits+0x30>
    800080f8:	fffff097          	auipc	ra,0xfffff
    800080fc:	144080e7          	jalr	324(ra) # 8000723c <panic>

0000000080008100 <holding>:
    80008100:	00052783          	lw	a5,0(a0)
    80008104:	00079663          	bnez	a5,80008110 <holding+0x10>
    80008108:	00000513          	li	a0,0
    8000810c:	00008067          	ret
    80008110:	fe010113          	addi	sp,sp,-32
    80008114:	00813823          	sd	s0,16(sp)
    80008118:	00913423          	sd	s1,8(sp)
    8000811c:	00113c23          	sd	ra,24(sp)
    80008120:	02010413          	addi	s0,sp,32
    80008124:	01053483          	ld	s1,16(a0)
    80008128:	ffffe097          	auipc	ra,0xffffe
    8000812c:	750080e7          	jalr	1872(ra) # 80006878 <mycpu>
    80008130:	01813083          	ld	ra,24(sp)
    80008134:	01013403          	ld	s0,16(sp)
    80008138:	40a48533          	sub	a0,s1,a0
    8000813c:	00153513          	seqz	a0,a0
    80008140:	00813483          	ld	s1,8(sp)
    80008144:	02010113          	addi	sp,sp,32
    80008148:	00008067          	ret

000000008000814c <push_off>:
    8000814c:	fe010113          	addi	sp,sp,-32
    80008150:	00813823          	sd	s0,16(sp)
    80008154:	00113c23          	sd	ra,24(sp)
    80008158:	00913423          	sd	s1,8(sp)
    8000815c:	02010413          	addi	s0,sp,32
    80008160:	100024f3          	csrr	s1,sstatus
    80008164:	100027f3          	csrr	a5,sstatus
    80008168:	ffd7f793          	andi	a5,a5,-3
    8000816c:	10079073          	csrw	sstatus,a5
    80008170:	ffffe097          	auipc	ra,0xffffe
    80008174:	708080e7          	jalr	1800(ra) # 80006878 <mycpu>
    80008178:	07852783          	lw	a5,120(a0)
    8000817c:	02078663          	beqz	a5,800081a8 <push_off+0x5c>
    80008180:	ffffe097          	auipc	ra,0xffffe
    80008184:	6f8080e7          	jalr	1784(ra) # 80006878 <mycpu>
    80008188:	07852783          	lw	a5,120(a0)
    8000818c:	01813083          	ld	ra,24(sp)
    80008190:	01013403          	ld	s0,16(sp)
    80008194:	0017879b          	addiw	a5,a5,1
    80008198:	06f52c23          	sw	a5,120(a0)
    8000819c:	00813483          	ld	s1,8(sp)
    800081a0:	02010113          	addi	sp,sp,32
    800081a4:	00008067          	ret
    800081a8:	0014d493          	srli	s1,s1,0x1
    800081ac:	ffffe097          	auipc	ra,0xffffe
    800081b0:	6cc080e7          	jalr	1740(ra) # 80006878 <mycpu>
    800081b4:	0014f493          	andi	s1,s1,1
    800081b8:	06952e23          	sw	s1,124(a0)
    800081bc:	fc5ff06f          	j	80008180 <push_off+0x34>

00000000800081c0 <pop_off>:
    800081c0:	ff010113          	addi	sp,sp,-16
    800081c4:	00813023          	sd	s0,0(sp)
    800081c8:	00113423          	sd	ra,8(sp)
    800081cc:	01010413          	addi	s0,sp,16
    800081d0:	ffffe097          	auipc	ra,0xffffe
    800081d4:	6a8080e7          	jalr	1704(ra) # 80006878 <mycpu>
    800081d8:	100027f3          	csrr	a5,sstatus
    800081dc:	0027f793          	andi	a5,a5,2
    800081e0:	04079663          	bnez	a5,8000822c <pop_off+0x6c>
    800081e4:	07852783          	lw	a5,120(a0)
    800081e8:	02f05a63          	blez	a5,8000821c <pop_off+0x5c>
    800081ec:	fff7871b          	addiw	a4,a5,-1
    800081f0:	06e52c23          	sw	a4,120(a0)
    800081f4:	00071c63          	bnez	a4,8000820c <pop_off+0x4c>
    800081f8:	07c52783          	lw	a5,124(a0)
    800081fc:	00078863          	beqz	a5,8000820c <pop_off+0x4c>
    80008200:	100027f3          	csrr	a5,sstatus
    80008204:	0027e793          	ori	a5,a5,2
    80008208:	10079073          	csrw	sstatus,a5
    8000820c:	00813083          	ld	ra,8(sp)
    80008210:	00013403          	ld	s0,0(sp)
    80008214:	01010113          	addi	sp,sp,16
    80008218:	00008067          	ret
    8000821c:	00001517          	auipc	a0,0x1
    80008220:	39450513          	addi	a0,a0,916 # 800095b0 <digits+0x48>
    80008224:	fffff097          	auipc	ra,0xfffff
    80008228:	018080e7          	jalr	24(ra) # 8000723c <panic>
    8000822c:	00001517          	auipc	a0,0x1
    80008230:	36c50513          	addi	a0,a0,876 # 80009598 <digits+0x30>
    80008234:	fffff097          	auipc	ra,0xfffff
    80008238:	008080e7          	jalr	8(ra) # 8000723c <panic>

000000008000823c <push_on>:
    8000823c:	fe010113          	addi	sp,sp,-32
    80008240:	00813823          	sd	s0,16(sp)
    80008244:	00113c23          	sd	ra,24(sp)
    80008248:	00913423          	sd	s1,8(sp)
    8000824c:	02010413          	addi	s0,sp,32
    80008250:	100024f3          	csrr	s1,sstatus
    80008254:	100027f3          	csrr	a5,sstatus
    80008258:	0027e793          	ori	a5,a5,2
    8000825c:	10079073          	csrw	sstatus,a5
    80008260:	ffffe097          	auipc	ra,0xffffe
    80008264:	618080e7          	jalr	1560(ra) # 80006878 <mycpu>
    80008268:	07852783          	lw	a5,120(a0)
    8000826c:	02078663          	beqz	a5,80008298 <push_on+0x5c>
    80008270:	ffffe097          	auipc	ra,0xffffe
    80008274:	608080e7          	jalr	1544(ra) # 80006878 <mycpu>
    80008278:	07852783          	lw	a5,120(a0)
    8000827c:	01813083          	ld	ra,24(sp)
    80008280:	01013403          	ld	s0,16(sp)
    80008284:	0017879b          	addiw	a5,a5,1
    80008288:	06f52c23          	sw	a5,120(a0)
    8000828c:	00813483          	ld	s1,8(sp)
    80008290:	02010113          	addi	sp,sp,32
    80008294:	00008067          	ret
    80008298:	0014d493          	srli	s1,s1,0x1
    8000829c:	ffffe097          	auipc	ra,0xffffe
    800082a0:	5dc080e7          	jalr	1500(ra) # 80006878 <mycpu>
    800082a4:	0014f493          	andi	s1,s1,1
    800082a8:	06952e23          	sw	s1,124(a0)
    800082ac:	fc5ff06f          	j	80008270 <push_on+0x34>

00000000800082b0 <pop_on>:
    800082b0:	ff010113          	addi	sp,sp,-16
    800082b4:	00813023          	sd	s0,0(sp)
    800082b8:	00113423          	sd	ra,8(sp)
    800082bc:	01010413          	addi	s0,sp,16
    800082c0:	ffffe097          	auipc	ra,0xffffe
    800082c4:	5b8080e7          	jalr	1464(ra) # 80006878 <mycpu>
    800082c8:	100027f3          	csrr	a5,sstatus
    800082cc:	0027f793          	andi	a5,a5,2
    800082d0:	04078463          	beqz	a5,80008318 <pop_on+0x68>
    800082d4:	07852783          	lw	a5,120(a0)
    800082d8:	02f05863          	blez	a5,80008308 <pop_on+0x58>
    800082dc:	fff7879b          	addiw	a5,a5,-1
    800082e0:	06f52c23          	sw	a5,120(a0)
    800082e4:	07853783          	ld	a5,120(a0)
    800082e8:	00079863          	bnez	a5,800082f8 <pop_on+0x48>
    800082ec:	100027f3          	csrr	a5,sstatus
    800082f0:	ffd7f793          	andi	a5,a5,-3
    800082f4:	10079073          	csrw	sstatus,a5
    800082f8:	00813083          	ld	ra,8(sp)
    800082fc:	00013403          	ld	s0,0(sp)
    80008300:	01010113          	addi	sp,sp,16
    80008304:	00008067          	ret
    80008308:	00001517          	auipc	a0,0x1
    8000830c:	2d050513          	addi	a0,a0,720 # 800095d8 <digits+0x70>
    80008310:	fffff097          	auipc	ra,0xfffff
    80008314:	f2c080e7          	jalr	-212(ra) # 8000723c <panic>
    80008318:	00001517          	auipc	a0,0x1
    8000831c:	2a050513          	addi	a0,a0,672 # 800095b8 <digits+0x50>
    80008320:	fffff097          	auipc	ra,0xfffff
    80008324:	f1c080e7          	jalr	-228(ra) # 8000723c <panic>

0000000080008328 <__memset>:
    80008328:	ff010113          	addi	sp,sp,-16
    8000832c:	00813423          	sd	s0,8(sp)
    80008330:	01010413          	addi	s0,sp,16
    80008334:	1a060e63          	beqz	a2,800084f0 <__memset+0x1c8>
    80008338:	40a007b3          	neg	a5,a0
    8000833c:	0077f793          	andi	a5,a5,7
    80008340:	00778693          	addi	a3,a5,7
    80008344:	00b00813          	li	a6,11
    80008348:	0ff5f593          	andi	a1,a1,255
    8000834c:	fff6071b          	addiw	a4,a2,-1
    80008350:	1b06e663          	bltu	a3,a6,800084fc <__memset+0x1d4>
    80008354:	1cd76463          	bltu	a4,a3,8000851c <__memset+0x1f4>
    80008358:	1a078e63          	beqz	a5,80008514 <__memset+0x1ec>
    8000835c:	00b50023          	sb	a1,0(a0)
    80008360:	00100713          	li	a4,1
    80008364:	1ae78463          	beq	a5,a4,8000850c <__memset+0x1e4>
    80008368:	00b500a3          	sb	a1,1(a0)
    8000836c:	00200713          	li	a4,2
    80008370:	1ae78a63          	beq	a5,a4,80008524 <__memset+0x1fc>
    80008374:	00b50123          	sb	a1,2(a0)
    80008378:	00300713          	li	a4,3
    8000837c:	18e78463          	beq	a5,a4,80008504 <__memset+0x1dc>
    80008380:	00b501a3          	sb	a1,3(a0)
    80008384:	00400713          	li	a4,4
    80008388:	1ae78263          	beq	a5,a4,8000852c <__memset+0x204>
    8000838c:	00b50223          	sb	a1,4(a0)
    80008390:	00500713          	li	a4,5
    80008394:	1ae78063          	beq	a5,a4,80008534 <__memset+0x20c>
    80008398:	00b502a3          	sb	a1,5(a0)
    8000839c:	00700713          	li	a4,7
    800083a0:	18e79e63          	bne	a5,a4,8000853c <__memset+0x214>
    800083a4:	00b50323          	sb	a1,6(a0)
    800083a8:	00700e93          	li	t4,7
    800083ac:	00859713          	slli	a4,a1,0x8
    800083b0:	00e5e733          	or	a4,a1,a4
    800083b4:	01059e13          	slli	t3,a1,0x10
    800083b8:	01c76e33          	or	t3,a4,t3
    800083bc:	01859313          	slli	t1,a1,0x18
    800083c0:	006e6333          	or	t1,t3,t1
    800083c4:	02059893          	slli	a7,a1,0x20
    800083c8:	40f60e3b          	subw	t3,a2,a5
    800083cc:	011368b3          	or	a7,t1,a7
    800083d0:	02859813          	slli	a6,a1,0x28
    800083d4:	0108e833          	or	a6,a7,a6
    800083d8:	03059693          	slli	a3,a1,0x30
    800083dc:	003e589b          	srliw	a7,t3,0x3
    800083e0:	00d866b3          	or	a3,a6,a3
    800083e4:	03859713          	slli	a4,a1,0x38
    800083e8:	00389813          	slli	a6,a7,0x3
    800083ec:	00f507b3          	add	a5,a0,a5
    800083f0:	00e6e733          	or	a4,a3,a4
    800083f4:	000e089b          	sext.w	a7,t3
    800083f8:	00f806b3          	add	a3,a6,a5
    800083fc:	00e7b023          	sd	a4,0(a5)
    80008400:	00878793          	addi	a5,a5,8
    80008404:	fed79ce3          	bne	a5,a3,800083fc <__memset+0xd4>
    80008408:	ff8e7793          	andi	a5,t3,-8
    8000840c:	0007871b          	sext.w	a4,a5
    80008410:	01d787bb          	addw	a5,a5,t4
    80008414:	0ce88e63          	beq	a7,a4,800084f0 <__memset+0x1c8>
    80008418:	00f50733          	add	a4,a0,a5
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	0017871b          	addiw	a4,a5,1
    80008424:	0cc77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	0027871b          	addiw	a4,a5,2
    80008434:	0ac77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008438:	00e50733          	add	a4,a0,a4
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	0037871b          	addiw	a4,a5,3
    80008444:	0ac77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	0047871b          	addiw	a4,a5,4
    80008454:	08c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	0057871b          	addiw	a4,a5,5
    80008464:	08c77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008468:	00e50733          	add	a4,a0,a4
    8000846c:	00b70023          	sb	a1,0(a4)
    80008470:	0067871b          	addiw	a4,a5,6
    80008474:	06c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00b70023          	sb	a1,0(a4)
    80008480:	0077871b          	addiw	a4,a5,7
    80008484:	06c77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008488:	00e50733          	add	a4,a0,a4
    8000848c:	00b70023          	sb	a1,0(a4)
    80008490:	0087871b          	addiw	a4,a5,8
    80008494:	04c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    80008498:	00e50733          	add	a4,a0,a4
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	0097871b          	addiw	a4,a5,9
    800084a4:	04c77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	00a7871b          	addiw	a4,a5,10
    800084b4:	02c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	00b7871b          	addiw	a4,a5,11
    800084c4:	02c77663          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	00c7871b          	addiw	a4,a5,12
    800084d4:	00c77e63          	bgeu	a4,a2,800084f0 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	00d7879b          	addiw	a5,a5,13
    800084e4:	00c7f663          	bgeu	a5,a2,800084f0 <__memset+0x1c8>
    800084e8:	00f507b3          	add	a5,a0,a5
    800084ec:	00b78023          	sb	a1,0(a5)
    800084f0:	00813403          	ld	s0,8(sp)
    800084f4:	01010113          	addi	sp,sp,16
    800084f8:	00008067          	ret
    800084fc:	00b00693          	li	a3,11
    80008500:	e55ff06f          	j	80008354 <__memset+0x2c>
    80008504:	00300e93          	li	t4,3
    80008508:	ea5ff06f          	j	800083ac <__memset+0x84>
    8000850c:	00100e93          	li	t4,1
    80008510:	e9dff06f          	j	800083ac <__memset+0x84>
    80008514:	00000e93          	li	t4,0
    80008518:	e95ff06f          	j	800083ac <__memset+0x84>
    8000851c:	00000793          	li	a5,0
    80008520:	ef9ff06f          	j	80008418 <__memset+0xf0>
    80008524:	00200e93          	li	t4,2
    80008528:	e85ff06f          	j	800083ac <__memset+0x84>
    8000852c:	00400e93          	li	t4,4
    80008530:	e7dff06f          	j	800083ac <__memset+0x84>
    80008534:	00500e93          	li	t4,5
    80008538:	e75ff06f          	j	800083ac <__memset+0x84>
    8000853c:	00600e93          	li	t4,6
    80008540:	e6dff06f          	j	800083ac <__memset+0x84>

0000000080008544 <__memmove>:
    80008544:	ff010113          	addi	sp,sp,-16
    80008548:	00813423          	sd	s0,8(sp)
    8000854c:	01010413          	addi	s0,sp,16
    80008550:	0e060863          	beqz	a2,80008640 <__memmove+0xfc>
    80008554:	fff6069b          	addiw	a3,a2,-1
    80008558:	0006881b          	sext.w	a6,a3
    8000855c:	0ea5e863          	bltu	a1,a0,8000864c <__memmove+0x108>
    80008560:	00758713          	addi	a4,a1,7
    80008564:	00a5e7b3          	or	a5,a1,a0
    80008568:	40a70733          	sub	a4,a4,a0
    8000856c:	0077f793          	andi	a5,a5,7
    80008570:	00f73713          	sltiu	a4,a4,15
    80008574:	00174713          	xori	a4,a4,1
    80008578:	0017b793          	seqz	a5,a5
    8000857c:	00e7f7b3          	and	a5,a5,a4
    80008580:	10078863          	beqz	a5,80008690 <__memmove+0x14c>
    80008584:	00900793          	li	a5,9
    80008588:	1107f463          	bgeu	a5,a6,80008690 <__memmove+0x14c>
    8000858c:	0036581b          	srliw	a6,a2,0x3
    80008590:	fff8081b          	addiw	a6,a6,-1
    80008594:	02081813          	slli	a6,a6,0x20
    80008598:	01d85893          	srli	a7,a6,0x1d
    8000859c:	00858813          	addi	a6,a1,8
    800085a0:	00058793          	mv	a5,a1
    800085a4:	00050713          	mv	a4,a0
    800085a8:	01088833          	add	a6,a7,a6
    800085ac:	0007b883          	ld	a7,0(a5)
    800085b0:	00878793          	addi	a5,a5,8
    800085b4:	00870713          	addi	a4,a4,8
    800085b8:	ff173c23          	sd	a7,-8(a4)
    800085bc:	ff0798e3          	bne	a5,a6,800085ac <__memmove+0x68>
    800085c0:	ff867713          	andi	a4,a2,-8
    800085c4:	02071793          	slli	a5,a4,0x20
    800085c8:	0207d793          	srli	a5,a5,0x20
    800085cc:	00f585b3          	add	a1,a1,a5
    800085d0:	40e686bb          	subw	a3,a3,a4
    800085d4:	00f507b3          	add	a5,a0,a5
    800085d8:	06e60463          	beq	a2,a4,80008640 <__memmove+0xfc>
    800085dc:	0005c703          	lbu	a4,0(a1)
    800085e0:	00e78023          	sb	a4,0(a5)
    800085e4:	04068e63          	beqz	a3,80008640 <__memmove+0xfc>
    800085e8:	0015c603          	lbu	a2,1(a1)
    800085ec:	00100713          	li	a4,1
    800085f0:	00c780a3          	sb	a2,1(a5)
    800085f4:	04e68663          	beq	a3,a4,80008640 <__memmove+0xfc>
    800085f8:	0025c603          	lbu	a2,2(a1)
    800085fc:	00200713          	li	a4,2
    80008600:	00c78123          	sb	a2,2(a5)
    80008604:	02e68e63          	beq	a3,a4,80008640 <__memmove+0xfc>
    80008608:	0035c603          	lbu	a2,3(a1)
    8000860c:	00300713          	li	a4,3
    80008610:	00c781a3          	sb	a2,3(a5)
    80008614:	02e68663          	beq	a3,a4,80008640 <__memmove+0xfc>
    80008618:	0045c603          	lbu	a2,4(a1)
    8000861c:	00400713          	li	a4,4
    80008620:	00c78223          	sb	a2,4(a5)
    80008624:	00e68e63          	beq	a3,a4,80008640 <__memmove+0xfc>
    80008628:	0055c603          	lbu	a2,5(a1)
    8000862c:	00500713          	li	a4,5
    80008630:	00c782a3          	sb	a2,5(a5)
    80008634:	00e68663          	beq	a3,a4,80008640 <__memmove+0xfc>
    80008638:	0065c703          	lbu	a4,6(a1)
    8000863c:	00e78323          	sb	a4,6(a5)
    80008640:	00813403          	ld	s0,8(sp)
    80008644:	01010113          	addi	sp,sp,16
    80008648:	00008067          	ret
    8000864c:	02061713          	slli	a4,a2,0x20
    80008650:	02075713          	srli	a4,a4,0x20
    80008654:	00e587b3          	add	a5,a1,a4
    80008658:	f0f574e3          	bgeu	a0,a5,80008560 <__memmove+0x1c>
    8000865c:	02069613          	slli	a2,a3,0x20
    80008660:	02065613          	srli	a2,a2,0x20
    80008664:	fff64613          	not	a2,a2
    80008668:	00e50733          	add	a4,a0,a4
    8000866c:	00c78633          	add	a2,a5,a2
    80008670:	fff7c683          	lbu	a3,-1(a5)
    80008674:	fff78793          	addi	a5,a5,-1
    80008678:	fff70713          	addi	a4,a4,-1
    8000867c:	00d70023          	sb	a3,0(a4)
    80008680:	fec798e3          	bne	a5,a2,80008670 <__memmove+0x12c>
    80008684:	00813403          	ld	s0,8(sp)
    80008688:	01010113          	addi	sp,sp,16
    8000868c:	00008067          	ret
    80008690:	02069713          	slli	a4,a3,0x20
    80008694:	02075713          	srli	a4,a4,0x20
    80008698:	00170713          	addi	a4,a4,1
    8000869c:	00e50733          	add	a4,a0,a4
    800086a0:	00050793          	mv	a5,a0
    800086a4:	0005c683          	lbu	a3,0(a1)
    800086a8:	00178793          	addi	a5,a5,1
    800086ac:	00158593          	addi	a1,a1,1
    800086b0:	fed78fa3          	sb	a3,-1(a5)
    800086b4:	fee798e3          	bne	a5,a4,800086a4 <__memmove+0x160>
    800086b8:	f89ff06f          	j	80008640 <__memmove+0xfc>
	...
