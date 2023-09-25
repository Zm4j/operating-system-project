
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	ac013103          	ld	sp,-1344(sp) # 8000cac0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	775060ef          	jal	ra,80006f90 <start>

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
    80001080:	515010ef          	jal	ra,80002d94 <handle>

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
#include "../test/printing.hpp"

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

0000000080001320 <_Z11thread_joinP3Nit>:
void thread_join(Nit* thread){
    80001320:	ff010113          	addi	sp,sp,-16
    80001324:	00813423          	sd	s0,8(sp)
    80001328:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (thread));
    8000132c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x14));
    80001330:	01400793          	li	a5,20
    80001334:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001338:	00000073          	ecall
}
    8000133c:	00813403          	ld	s0,8(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <_Z8sem_openPP7Semaforj>:

int sem_open(sem_t* handle, unsigned init){
    80001348:	ff010113          	addi	sp,sp,-16
    8000134c:	00813423          	sd	s0,8(sp)
    80001350:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" : : "r" (init));
    80001354:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001358:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x21));
    8000135c:	02100793          	li	a5,33
    80001360:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001364:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    80001368:	00050513          	mv	a0,a0
    return rez;
}
    8000136c:	0005051b          	sext.w	a0,a0
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_Z9sem_closeP7Semafor>:
int sem_close(sem_t handle){
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001388:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x22));
    8000138c:	02200793          	li	a5,34
    80001390:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001394:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    80001398:	00050513          	mv	a0,a0
    return rez;
}
    8000139c:	0005051b          	sext.w	a0,a0
    800013a0:	00813403          	ld	s0,8(sp)
    800013a4:	01010113          	addi	sp,sp,16
    800013a8:	00008067          	ret

00000000800013ac <_Z8sem_waitP7Semafor>:
int sem_wait(sem_t id){
    800013ac:	ff010113          	addi	sp,sp,-16
    800013b0:	00813423          	sd	s0,8(sp)
    800013b4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    800013b8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x23));
    800013bc:	02300793          	li	a5,35
    800013c0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013c4:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    800013c8:	00050513          	mv	a0,a0
    return rez;
}
    800013cc:	0005051b          	sext.w	a0,a0
    800013d0:	00813403          	ld	s0,8(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret

00000000800013dc <_Z10sem_signalP7Semafor>:
int sem_signal(sem_t id){
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00813423          	sd	s0,8(sp)
    800013e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    800013e8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x24));
    800013ec:	02400793          	li	a5,36
    800013f0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013f4:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    800013f8:	00050513          	mv	a0,a0
    return rez;
}
    800013fc:	0005051b          	sext.w	a0,a0
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z10time_sleepm>:

int time_sleep(time_t t) {
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (t));
    80001418:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x31));
    8000141c:	03100793          	li	a5,49
    80001420:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001424:	00000073          	ecall

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    80001428:	00050513          	mv	a0,a0
    return rez;
}
    8000142c:	0005051b          	sext.w	a0,a0
    80001430:	00813403          	ld	s0,8(sp)
    80001434:	01010113          	addi	sp,sp,16
    80001438:	00008067          	ret

000000008000143c <_Z4getcv>:

char getc(){
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00813423          	sd	s0,8(sp)
    80001444:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x41));
    80001448:	04100793          	li	a5,65
    8000144c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001450:	00000073          	ecall

    char rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    80001454:	00050513          	mv	a0,a0

    return rez;
}
    80001458:	0ff57513          	andi	a0,a0,255
    8000145c:	00813403          	ld	s0,8(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_Z4putcc>:
void putc(char c){
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00813423          	sd	s0,8(sp)
    80001470:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (c));
    80001474:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x42));
    80001478:	04200793          	li	a5,66
    8000147c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001480:	00000073          	ecall
}
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <_Z13promenarezimav>:

void promenarezima() {
    80001490:	ff010113          	addi	sp,sp,-16
    80001494:	00813423          	sd	s0,8(sp)
    80001498:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x70));
    8000149c:	07000793          	li	a5,112
    800014a0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014a4:	00000073          	ecall
}
    800014a8:	00813403          	ld	s0,8(sp)
    800014ac:	01010113          	addi	sp,sp,16
    800014b0:	00008067          	ret

00000000800014b4 <_ZN9Scheduler3getEv>:
#include "../test/printing.hpp"

Scheduler::struktura* Scheduler::head = nullptr;
Scheduler::struktura* Scheduler::headuspavane = nullptr;

Nit *Scheduler::get() {
    800014b4:	fe010113          	addi	sp,sp,-32
    800014b8:	00113c23          	sd	ra,24(sp)
    800014bc:	00813823          	sd	s0,16(sp)
    800014c0:	00913423          	sd	s1,8(sp)
    800014c4:	02010413          	addi	s0,sp,32
    if(head==nullptr) {return nullptr;}
    800014c8:	0000b517          	auipc	a0,0xb
    800014cc:	65853503          	ld	a0,1624(a0) # 8000cb20 <_ZN9Scheduler4headE>
    800014d0:	04050e63          	beqz	a0,8000152c <_ZN9Scheduler3getEv+0x78>

    struktura *temp = head;
    Nit *t = head->t;
    800014d4:	00053483          	ld	s1,0(a0)

    head->next->prev=head->prev;
    800014d8:	01053783          	ld	a5,16(a0)
    800014dc:	01853703          	ld	a4,24(a0)
    800014e0:	00e7bc23          	sd	a4,24(a5)
    head->prev->next=head->next;
    800014e4:	01853783          	ld	a5,24(a0)
    800014e8:	01053703          	ld	a4,16(a0)
    800014ec:	00e7b823          	sd	a4,16(a5)

    head=temp->next;
    800014f0:	01053783          	ld	a5,16(a0)
    800014f4:	0000b717          	auipc	a4,0xb
    800014f8:	62f73623          	sd	a5,1580(a4) # 8000cb20 <_ZN9Scheduler4headE>
    if(head==temp) head=nullptr;
    800014fc:	02f50263          	beq	a0,a5,80001520 <_ZN9Scheduler3getEv+0x6c>

    Memorija::oslobadjanje(temp);
    80001500:	00000097          	auipc	ra,0x0
    80001504:	50c080e7          	jalr	1292(ra) # 80001a0c <_ZN8Memorija12oslobadjanjeEPv>
    return t;
}
    80001508:	00048513          	mv	a0,s1
    8000150c:	01813083          	ld	ra,24(sp)
    80001510:	01013403          	ld	s0,16(sp)
    80001514:	00813483          	ld	s1,8(sp)
    80001518:	02010113          	addi	sp,sp,32
    8000151c:	00008067          	ret
    if(head==temp) head=nullptr;
    80001520:	0000b797          	auipc	a5,0xb
    80001524:	6007b023          	sd	zero,1536(a5) # 8000cb20 <_ZN9Scheduler4headE>
    80001528:	fd9ff06f          	j	80001500 <_ZN9Scheduler3getEv+0x4c>
    if(head==nullptr) {return nullptr;}
    8000152c:	00050493          	mv	s1,a0
    80001530:	fd9ff06f          	j	80001508 <_ZN9Scheduler3getEv+0x54>

0000000080001534 <_ZN9Scheduler3putEP3Nit>:

int Scheduler::put(Nit* t) {
    80001534:	fe010113          	addi	sp,sp,-32
    80001538:	00113c23          	sd	ra,24(sp)
    8000153c:	00813823          	sd	s0,16(sp)
    80001540:	00913423          	sd	s1,8(sp)
    80001544:	02010413          	addi	s0,sp,32
    80001548:	00050493          	mv	s1,a0
    struktura* novo = (struktura*)Memorija::alokacija(sizeof(struktura));
    8000154c:	02000513          	li	a0,32
    80001550:	00000097          	auipc	ra,0x0
    80001554:	39c080e7          	jalr	924(ra) # 800018ec <_ZN8Memorija9alokacijaEm>

    if(novo == nullptr) return -1;
    80001558:	04050c63          	beqz	a0,800015b0 <_ZN9Scheduler3putEP3Nit+0x7c>
    novo->t=t;
    8000155c:	00953023          	sd	s1,0(a0)

    if(head==nullptr){
    80001560:	0000b797          	auipc	a5,0xb
    80001564:	5c07b783          	ld	a5,1472(a5) # 8000cb20 <_ZN9Scheduler4headE>
    80001568:	02078863          	beqz	a5,80001598 <_ZN9Scheduler3putEP3Nit+0x64>
        head->next=head;
        head->prev=head;
        return 0;
    }

    struktura* temp = head->prev;
    8000156c:	0187b703          	ld	a4,24(a5)
    temp->next=novo;
    80001570:	00a73823          	sd	a0,16(a4)
    novo->prev=temp;
    80001574:	00e53c23          	sd	a4,24(a0)
    novo->next=head;
    80001578:	00f53823          	sd	a5,16(a0)
    head->prev=novo;
    8000157c:	00a7bc23          	sd	a0,24(a5)
    return 0;
    80001580:	00000513          	li	a0,0
}
    80001584:	01813083          	ld	ra,24(sp)
    80001588:	01013403          	ld	s0,16(sp)
    8000158c:	00813483          	ld	s1,8(sp)
    80001590:	02010113          	addi	sp,sp,32
    80001594:	00008067          	ret
        head = novo;
    80001598:	0000b797          	auipc	a5,0xb
    8000159c:	58a7b423          	sd	a0,1416(a5) # 8000cb20 <_ZN9Scheduler4headE>
        head->next=head;
    800015a0:	00a53823          	sd	a0,16(a0)
        head->prev=head;
    800015a4:	00a53c23          	sd	a0,24(a0)
        return 0;
    800015a8:	00000513          	li	a0,0
    800015ac:	fd9ff06f          	j	80001584 <_ZN9Scheduler3putEP3Nit+0x50>
    if(novo == nullptr) return -1;
    800015b0:	fff00513          	li	a0,-1
    800015b4:	fd1ff06f          	j	80001584 <_ZN9Scheduler3putEP3Nit+0x50>

00000000800015b8 <_ZN9Scheduler13dekremntacijaEi>:

void Scheduler::dekremntacija(int x) {
    800015b8:	fe010113          	addi	sp,sp,-32
    800015bc:	00113c23          	sd	ra,24(sp)
    800015c0:	00813823          	sd	s0,16(sp)
    800015c4:	00913423          	sd	s1,8(sp)
    800015c8:	02010413          	addi	s0,sp,32
    if(headuspavane==nullptr) return;
    800015cc:	0000b497          	auipc	s1,0xb
    800015d0:	55c4b483          	ld	s1,1372(s1) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
    800015d4:	00048c63          	beqz	s1,800015ec <_ZN9Scheduler13dekremntacijaEi+0x34>

    headuspavane->vreme-=x;
    800015d8:	0084a783          	lw	a5,8(s1)
    800015dc:	40a7853b          	subw	a0,a5,a0
    800015e0:	0005079b          	sext.w	a5,a0
    800015e4:	00a4a423          	sw	a0,8(s1)
    if(headuspavane->vreme<=0){
    800015e8:	00f05c63          	blez	a5,80001600 <_ZN9Scheduler13dekremntacijaEi+0x48>
        temp->t->finished=false;
        Scheduler::put(temp->t);
        Memorija::oslobadjanje(temp);
    }

}
    800015ec:	01813083          	ld	ra,24(sp)
    800015f0:	01013403          	ld	s0,16(sp)
    800015f4:	00813483          	ld	s1,8(sp)
    800015f8:	02010113          	addi	sp,sp,32
    800015fc:	00008067          	ret
        if(headuspavane->next==headuspavane) headuspavane=nullptr;
    80001600:	0104b783          	ld	a5,16(s1)
    80001604:	04f48263          	beq	s1,a5,80001648 <_ZN9Scheduler13dekremntacijaEi+0x90>
            headuspavane->prev->next = headuspavane->next;
    80001608:	0184b703          	ld	a4,24(s1)
    8000160c:	00f73823          	sd	a5,16(a4)
            headuspavane->next->prev = headuspavane->prev;
    80001610:	0104b703          	ld	a4,16(s1)
    80001614:	0184b683          	ld	a3,24(s1)
    80001618:	00d73c23          	sd	a3,24(a4)
            headuspavane = pomoc;
    8000161c:	0000b717          	auipc	a4,0xb
    80001620:	50f73623          	sd	a5,1292(a4) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
        temp->t->finished=false;
    80001624:	0004b783          	ld	a5,0(s1)
    80001628:	00078223          	sb	zero,4(a5)
        Scheduler::put(temp->t);
    8000162c:	0004b503          	ld	a0,0(s1)
    80001630:	00000097          	auipc	ra,0x0
    80001634:	f04080e7          	jalr	-252(ra) # 80001534 <_ZN9Scheduler3putEP3Nit>
        Memorija::oslobadjanje(temp);
    80001638:	00048513          	mv	a0,s1
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	3d0080e7          	jalr	976(ra) # 80001a0c <_ZN8Memorija12oslobadjanjeEPv>
    80001644:	fa9ff06f          	j	800015ec <_ZN9Scheduler13dekremntacijaEi+0x34>
        if(headuspavane->next==headuspavane) headuspavane=nullptr;
    80001648:	0000b797          	auipc	a5,0xb
    8000164c:	4e07b023          	sd	zero,1248(a5) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
    80001650:	fd5ff06f          	j	80001624 <_ZN9Scheduler13dekremntacijaEi+0x6c>

0000000080001654 <_ZN9Scheduler11threadsleepEi>:

void Scheduler::threadsleep(int vreme) {
    if(vreme==0) return;
    80001654:	12050263          	beqz	a0,80001778 <_ZN9Scheduler11threadsleepEi+0x124>
void Scheduler::threadsleep(int vreme) {
    80001658:	fe010113          	addi	sp,sp,-32
    8000165c:	00113c23          	sd	ra,24(sp)
    80001660:	00813823          	sd	s0,16(sp)
    80001664:	00913423          	sd	s1,8(sp)
    80001668:	02010413          	addi	s0,sp,32
    8000166c:	00050493          	mv	s1,a0
    if(vreme%DEFAULT_TIME_SLICE) vreme+=DEFAULT_TIME_SLICE-vreme%DEFAULT_TIME_SLICE;
    80001670:	00157793          	andi	a5,a0,1
    80001674:	00078663          	beqz	a5,80001680 <_ZN9Scheduler11threadsleepEi+0x2c>
    80001678:	ffe57493          	andi	s1,a0,-2
    8000167c:	0024849b          	addiw	s1,s1,2

    struktura* novo = (struktura*)Memorija::alokacija(sizeof(struktura));
    80001680:	02000513          	li	a0,32
    80001684:	00000097          	auipc	ra,0x0
    80001688:	268080e7          	jalr	616(ra) # 800018ec <_ZN8Memorija9alokacijaEm>

    if(novo == nullptr) return;
    8000168c:	0c050c63          	beqz	a0,80001764 <_ZN9Scheduler11threadsleepEi+0x110>
    novo->t=Nit::running;
    80001690:	0000b797          	auipc	a5,0xb
    80001694:	4487b783          	ld	a5,1096(a5) # 8000cad8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001698:	0007b583          	ld	a1,0(a5)
    8000169c:	00b53023          	sd	a1,0(a0)
    novo->vreme=vreme;
    800016a0:	00952423          	sw	s1,8(a0)

    if(headuspavane==nullptr){
    800016a4:	0000b797          	auipc	a5,0xb
    800016a8:	4847b783          	ld	a5,1156(a5) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
    800016ac:	00078863          	beqz	a5,800016bc <_ZN9Scheduler11threadsleepEi+0x68>
        headuspavane->prev=headuspavane;
    }

    else {
        bool flag=true;
        bool flag1=false;
    800016b0:	00000613          	li	a2,0
        bool flag=true;
    800016b4:	00100713          	li	a4,1
    800016b8:	0380006f          	j	800016f0 <_ZN9Scheduler11threadsleepEi+0x9c>
        headuspavane = novo;
    800016bc:	0000b797          	auipc	a5,0xb
    800016c0:	46a7b623          	sd	a0,1132(a5) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
        headuspavane->next=headuspavane;
    800016c4:	00a53823          	sd	a0,16(a0)
        headuspavane->prev=headuspavane;
    800016c8:	00a53c23          	sd	a0,24(a0)
    800016cc:	0880006f          	j	80001754 <_ZN9Scheduler11threadsleepEi+0x100>
                novo->next=temp;
                novo->prev=temp->prev;
                temp->prev->next=novo;
                temp->prev=novo;

                if(temp==headuspavane) headuspavane=novo;
    800016d0:	0000b717          	auipc	a4,0xb
    800016d4:	44a73c23          	sd	a0,1112(a4) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
                flag1=true;
    800016d8:	00100613          	li	a2,1
    800016dc:	00c0006f          	j	800016e8 <_ZN9Scheduler11threadsleepEi+0x94>
            }
            else{
                novo->vreme-=temp->vreme;
    800016e0:	40d7073b          	subw	a4,a4,a3
    800016e4:	00e52423          	sw	a4,8(a0)
        for(struktura *temp = headuspavane; flag || temp!=headuspavane;temp=temp->next){
    800016e8:	0107b783          	ld	a5,16(a5)
            flag=false;
    800016ec:	00000713          	li	a4,0
        for(struktura *temp = headuspavane; flag || temp!=headuspavane;temp=temp->next){
    800016f0:	00071863          	bnez	a4,80001700 <_ZN9Scheduler11threadsleepEi+0xac>
    800016f4:	0000b717          	auipc	a4,0xb
    800016f8:	43473703          	ld	a4,1076(a4) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
    800016fc:	04f70063          	beq	a4,a5,8000173c <_ZN9Scheduler11threadsleepEi+0xe8>
            if(temp->vreme > novo->vreme){
    80001700:	0087a683          	lw	a3,8(a5)
    80001704:	00852703          	lw	a4,8(a0)
    80001708:	fcd75ce3          	bge	a4,a3,800016e0 <_ZN9Scheduler11threadsleepEi+0x8c>
                temp->vreme-=novo->vreme;
    8000170c:	40e6873b          	subw	a4,a3,a4
    80001710:	00e7a423          	sw	a4,8(a5)
                novo->next=temp;
    80001714:	00f53823          	sd	a5,16(a0)
                novo->prev=temp->prev;
    80001718:	0187b703          	ld	a4,24(a5)
    8000171c:	00e53c23          	sd	a4,24(a0)
                temp->prev->next=novo;
    80001720:	00a73823          	sd	a0,16(a4)
                temp->prev=novo;
    80001724:	00a7bc23          	sd	a0,24(a5)
                if(temp==headuspavane) headuspavane=novo;
    80001728:	0000b717          	auipc	a4,0xb
    8000172c:	40073703          	ld	a4,1024(a4) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
    80001730:	faf700e3          	beq	a4,a5,800016d0 <_ZN9Scheduler11threadsleepEi+0x7c>
                flag1=true;
    80001734:	00100613          	li	a2,1
    80001738:	fb1ff06f          	j	800016e8 <_ZN9Scheduler11threadsleepEi+0x94>
            }
        }
        if(!flag1) {
    8000173c:	00061c63          	bnez	a2,80001754 <_ZN9Scheduler11threadsleepEi+0x100>
            struktura *temp = headuspavane->prev;
    80001740:	01873783          	ld	a5,24(a4)
            temp->next = novo;
    80001744:	00a7b823          	sd	a0,16(a5)
            novo->prev = temp;
    80001748:	00f53c23          	sd	a5,24(a0)
            novo->next = headuspavane;
    8000174c:	00e53823          	sd	a4,16(a0)
            headuspavane->prev = novo;
    80001750:	00a73c23          	sd	a0,24(a4)
        }
    }

    Nit::running->finished=true;
    80001754:	00100793          	li	a5,1
    80001758:	00f58223          	sb	a5,4(a1)
    thread_dispatch();
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	ba0080e7          	jalr	-1120(ra) # 800012fc <_Z15thread_dispatchv>
}
    80001764:	01813083          	ld	ra,24(sp)
    80001768:	01013403          	ld	s0,16(sp)
    8000176c:	00813483          	ld	s1,8(sp)
    80001770:	02010113          	addi	sp,sp,32
    80001774:	00008067          	ret
    80001778:	00008067          	ret

000000008000177c <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    8000177c:	fe010113          	addi	sp,sp,-32
    80001780:	00113c23          	sd	ra,24(sp)
    80001784:	00813823          	sd	s0,16(sp)
    80001788:	00913423          	sd	s1,8(sp)
    8000178c:	02010413          	addi	s0,sp,32
    printString("Running thread ");
    80001790:	00009517          	auipc	a0,0x9
    80001794:	89050513          	addi	a0,a0,-1904 # 8000a020 <CONSOLE_STATUS+0x10>
    80001798:	00004097          	auipc	ra,0x4
    8000179c:	2b0080e7          	jalr	688(ra) # 80005a48 <_Z11printStringPKc>
    Nit::running->print();
    800017a0:	0000b797          	auipc	a5,0xb
    800017a4:	3387b783          	ld	a5,824(a5) # 8000cad8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800017a8:	0007b503          	ld	a0,0(a5)
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	dc8080e7          	jalr	-568(ra) # 80002574 <_ZN3Nit5printEv>

    if(!head) {
    800017b4:	0000b497          	auipc	s1,0xb
    800017b8:	36c4b483          	ld	s1,876(s1) # 8000cb20 <_ZN9Scheduler4headE>
    800017bc:	00048663          	beqz	s1,800017c8 <_ZN9Scheduler5printEv+0x4c>
        printString("No elements\n");
    }
    else {
        bool f=true;
    800017c0:	00100793          	li	a5,1
    800017c4:	02c0006f          	j	800017f0 <_ZN9Scheduler5printEv+0x74>
        printString("No elements\n");
    800017c8:	00009517          	auipc	a0,0x9
    800017cc:	86850513          	addi	a0,a0,-1944 # 8000a030 <CONSOLE_STATUS+0x20>
    800017d0:	00004097          	auipc	ra,0x4
    800017d4:	278080e7          	jalr	632(ra) # 80005a48 <_Z11printStringPKc>
    800017d8:	0280006f          	j	80001800 <_ZN9Scheduler5printEv+0x84>
        for (struktura *temp = head; f||temp!=head; temp = temp->next) {
            f=false;
            temp->t->print();
    800017dc:	0004b503          	ld	a0,0(s1)
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	d94080e7          	jalr	-620(ra) # 80002574 <_ZN3Nit5printEv>
        for (struktura *temp = head; f||temp!=head; temp = temp->next) {
    800017e8:	0104b483          	ld	s1,16(s1)
            f=false;
    800017ec:	00000793          	li	a5,0
        for (struktura *temp = head; f||temp!=head; temp = temp->next) {
    800017f0:	fe0796e3          	bnez	a5,800017dc <_ZN9Scheduler5printEv+0x60>
    800017f4:	0000b797          	auipc	a5,0xb
    800017f8:	32c7b783          	ld	a5,812(a5) # 8000cb20 <_ZN9Scheduler4headE>
    800017fc:	fe9790e3          	bne	a5,s1,800017dc <_ZN9Scheduler5printEv+0x60>
        }
    }
    printString("Threads that sleep:\n");
    80001800:	00009517          	auipc	a0,0x9
    80001804:	84050513          	addi	a0,a0,-1984 # 8000a040 <CONSOLE_STATUS+0x30>
    80001808:	00004097          	auipc	ra,0x4
    8000180c:	240080e7          	jalr	576(ra) # 80005a48 <_Z11printStringPKc>

    if(!headuspavane) {
    80001810:	0000b497          	auipc	s1,0xb
    80001814:	3184b483          	ld	s1,792(s1) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
    80001818:	04048e63          	beqz	s1,80001874 <_ZN9Scheduler5printEv+0xf8>
        printString("No elements\n");
    }
    else {
        for (struktura *temp = headuspavane; temp->next != headuspavane; temp = temp->next) {
    8000181c:	0104b703          	ld	a4,16(s1)
    80001820:	0000b797          	auipc	a5,0xb
    80001824:	3087b783          	ld	a5,776(a5) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
    80001828:	06f70063          	beq	a4,a5,80001888 <_ZN9Scheduler5printEv+0x10c>
            temp->t->print();
    8000182c:	0004b503          	ld	a0,0(s1)
    80001830:	00001097          	auipc	ra,0x1
    80001834:	d44080e7          	jalr	-700(ra) # 80002574 <_ZN3Nit5printEv>
            printString("time: ");
    80001838:	00009517          	auipc	a0,0x9
    8000183c:	82050513          	addi	a0,a0,-2016 # 8000a058 <CONSOLE_STATUS+0x48>
    80001840:	00004097          	auipc	ra,0x4
    80001844:	208080e7          	jalr	520(ra) # 80005a48 <_Z11printStringPKc>
            printInt(temp->vreme);
    80001848:	00000613          	li	a2,0
    8000184c:	00a00593          	li	a1,10
    80001850:	0084a503          	lw	a0,8(s1)
    80001854:	00004097          	auipc	ra,0x4
    80001858:	3a4080e7          	jalr	932(ra) # 80005bf8 <_Z8printIntiii>
            printString("\n");
    8000185c:	00009517          	auipc	a0,0x9
    80001860:	b9450513          	addi	a0,a0,-1132 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80001864:	00004097          	auipc	ra,0x4
    80001868:	1e4080e7          	jalr	484(ra) # 80005a48 <_Z11printStringPKc>
        for (struktura *temp = headuspavane; temp->next != headuspavane; temp = temp->next) {
    8000186c:	0104b483          	ld	s1,16(s1)
    80001870:	fadff06f          	j	8000181c <_ZN9Scheduler5printEv+0xa0>
        printString("No elements\n");
    80001874:	00008517          	auipc	a0,0x8
    80001878:	7bc50513          	addi	a0,a0,1980 # 8000a030 <CONSOLE_STATUS+0x20>
    8000187c:	00004097          	auipc	ra,0x4
    80001880:	1cc080e7          	jalr	460(ra) # 80005a48 <_Z11printStringPKc>
    80001884:	0540006f          	j	800018d8 <_ZN9Scheduler5printEv+0x15c>
        }
        headuspavane->prev->t->print();
    80001888:	0187b783          	ld	a5,24(a5)
    8000188c:	0007b503          	ld	a0,0(a5)
    80001890:	00001097          	auipc	ra,0x1
    80001894:	ce4080e7          	jalr	-796(ra) # 80002574 <_ZN3Nit5printEv>
        printString("time: ");
    80001898:	00008517          	auipc	a0,0x8
    8000189c:	7c050513          	addi	a0,a0,1984 # 8000a058 <CONSOLE_STATUS+0x48>
    800018a0:	00004097          	auipc	ra,0x4
    800018a4:	1a8080e7          	jalr	424(ra) # 80005a48 <_Z11printStringPKc>
        printInt(headuspavane->prev->vreme);
    800018a8:	0000b797          	auipc	a5,0xb
    800018ac:	2807b783          	ld	a5,640(a5) # 8000cb28 <_ZN9Scheduler12headuspavaneE>
    800018b0:	0187b783          	ld	a5,24(a5)
    800018b4:	00000613          	li	a2,0
    800018b8:	00a00593          	li	a1,10
    800018bc:	0087a503          	lw	a0,8(a5)
    800018c0:	00004097          	auipc	ra,0x4
    800018c4:	338080e7          	jalr	824(ra) # 80005bf8 <_Z8printIntiii>
        printString("\n");
    800018c8:	00009517          	auipc	a0,0x9
    800018cc:	b2850513          	addi	a0,a0,-1240 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    800018d0:	00004097          	auipc	ra,0x4
    800018d4:	178080e7          	jalr	376(ra) # 80005a48 <_Z11printStringPKc>
    }
    return;
    800018d8:	01813083          	ld	ra,24(sp)
    800018dc:	01013403          	ld	s0,16(sp)
    800018e0:	00813483          	ld	s1,8(sp)
    800018e4:	02010113          	addi	sp,sp,32
    800018e8:	00008067          	ret

00000000800018ec <_ZN8Memorija9alokacijaEm>:
#include "../h/_KernelMemory.h"
#include "../test/printing.hpp"

Memorija::struktura* Memorija::head = nullptr;

void* Memorija::alokacija(size_t size) {
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00813423          	sd	s0,8(sp)
    800018f4:	01010413          	addi	s0,sp,16

    static void print();
private:

    static void CreateMemorija() {
        if (head == nullptr) {
    800018f8:	0000b797          	auipc	a5,0xb
    800018fc:	2387b783          	ld	a5,568(a5) # 8000cb30 <_ZN8Memorija4headE>
    80001900:	02078a63          	beqz	a5,80001934 <_ZN8Memorija9alokacijaEm+0x48>

    CreateMemorija();

    size+=sizeof(struktura);
    80001904:	01850793          	addi	a5,a0,24
    if(size%MEM_BLOCK_SIZE) size+= MEM_BLOCK_SIZE - size%MEM_BLOCK_SIZE;
    80001908:	03f7f713          	andi	a4,a5,63
    8000190c:	00070663          	beqz	a4,80001918 <_ZN8Memorija9alokacijaEm+0x2c>
    80001910:	fc07f793          	andi	a5,a5,-64
    80001914:	04078793          	addi	a5,a5,64

    struktura *temp = head;
    80001918:	0000b517          	auipc	a0,0xb
    8000191c:	21853503          	ld	a0,536(a0) # 8000cb30 <_ZN8Memorija4headE>
    while(temp){
    80001920:	04050c63          	beqz	a0,80001978 <_ZN8Memorija9alokacijaEm+0x8c>
        if(temp->size>=size) break;
    80001924:	01053703          	ld	a4,16(a0)
    80001928:	04f77863          	bgeu	a4,a5,80001978 <_ZN8Memorija9alokacijaEm+0x8c>
        temp=temp->next;
    8000192c:	00053503          	ld	a0,0(a0)
    while(temp){
    80001930:	ff1ff06f          	j	80001920 <_ZN8Memorija9alokacijaEm+0x34>
            head = (struktura * )(HEAP_START_ADDR);
    80001934:	0000b797          	auipc	a5,0xb
    80001938:	1647b783          	ld	a5,356(a5) # 8000ca98 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000193c:	0007b683          	ld	a3,0(a5)
    80001940:	0000b717          	auipc	a4,0xb
    80001944:	1f070713          	addi	a4,a4,496 # 8000cb30 <_ZN8Memorija4headE>
    80001948:	00d73023          	sd	a3,0(a4)
            head->next = nullptr;
    8000194c:	0006b023          	sd	zero,0(a3)
            head->prev = nullptr;
    80001950:	00073703          	ld	a4,0(a4)
    80001954:	00073423          	sd	zero,8(a4)
            head->size = (char *) HEAP_START_ADDR - (char *) HEAP_END_ADDR - sizeof(struktura);
    80001958:	0007b783          	ld	a5,0(a5)
    8000195c:	0000b697          	auipc	a3,0xb
    80001960:	16c6b683          	ld	a3,364(a3) # 8000cac8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001964:	0006b683          	ld	a3,0(a3)
    80001968:	40d787b3          	sub	a5,a5,a3
    8000196c:	fe878793          	addi	a5,a5,-24
    80001970:	00f73823          	sd	a5,16(a4)
    80001974:	f91ff06f          	j	80001904 <_ZN8Memorija9alokacijaEm+0x18>
    }

    if(temp == nullptr) return nullptr;
    80001978:	04050463          	beqz	a0,800019c0 <_ZN8Memorija9alokacijaEm+0xd4>

    if(temp->size>size) {
    8000197c:	01053703          	ld	a4,16(a0)
    80001980:	04e7fc63          	bgeu	a5,a4,800019d8 <_ZN8Memorija9alokacijaEm+0xec>
        int ostatak = temp->size - size;
    80001984:	40f7073b          	subw	a4,a4,a5
        temp->size = size;
    80001988:	00f53823          	sd	a5,16(a0)
        struktura *temp2 = (struktura *) ((char *) temp + size);
    8000198c:	00f507b3          	add	a5,a0,a5
        temp2->size = ostatak;
    80001990:	00e7b823          	sd	a4,16(a5)
        temp2->next = temp->next;
    80001994:	00053703          	ld	a4,0(a0)
    80001998:	00e7b023          	sd	a4,0(a5)
        temp2->prev = temp->prev;
    8000199c:	00853703          	ld	a4,8(a0)
    800019a0:	00e7b423          	sd	a4,8(a5)
        if (temp->next) temp->next->prev = temp2;
    800019a4:	00053703          	ld	a4,0(a0)
    800019a8:	00070463          	beqz	a4,800019b0 <_ZN8Memorija9alokacijaEm+0xc4>
    800019ac:	00f73423          	sd	a5,8(a4)
        if (temp->prev) temp->prev->next = temp2;
    800019b0:	00853703          	ld	a4,8(a0)
    800019b4:	00070c63          	beqz	a4,800019cc <_ZN8Memorija9alokacijaEm+0xe0>
    800019b8:	00f73023          	sd	a5,0(a4)
        if(temp->next) temp->next->prev = temp->prev;
        if(temp->prev) temp->prev->next = temp->next;
        else head=temp->next;
    }

    return (char*)temp + sizeof(struktura);
    800019bc:	01850513          	addi	a0,a0,24
}
    800019c0:	00813403          	ld	s0,8(sp)
    800019c4:	01010113          	addi	sp,sp,16
    800019c8:	00008067          	ret
        else head=temp2;
    800019cc:	0000b717          	auipc	a4,0xb
    800019d0:	16f73223          	sd	a5,356(a4) # 8000cb30 <_ZN8Memorija4headE>
    800019d4:	fe9ff06f          	j	800019bc <_ZN8Memorija9alokacijaEm+0xd0>
        if(temp->next) temp->next->prev = temp->prev;
    800019d8:	00053783          	ld	a5,0(a0)
    800019dc:	00078663          	beqz	a5,800019e8 <_ZN8Memorija9alokacijaEm+0xfc>
    800019e0:	00853703          	ld	a4,8(a0)
    800019e4:	00e7b423          	sd	a4,8(a5)
        if(temp->prev) temp->prev->next = temp->next;
    800019e8:	00853783          	ld	a5,8(a0)
    800019ec:	00078863          	beqz	a5,800019fc <_ZN8Memorija9alokacijaEm+0x110>
    800019f0:	00053703          	ld	a4,0(a0)
    800019f4:	00e7b023          	sd	a4,0(a5)
    800019f8:	fc5ff06f          	j	800019bc <_ZN8Memorija9alokacijaEm+0xd0>
        else head=temp->next;
    800019fc:	00053783          	ld	a5,0(a0)
    80001a00:	0000b717          	auipc	a4,0xb
    80001a04:	12f73823          	sd	a5,304(a4) # 8000cb30 <_ZN8Memorija4headE>
    80001a08:	fb5ff06f          	j	800019bc <_ZN8Memorija9alokacijaEm+0xd0>

0000000080001a0c <_ZN8Memorija12oslobadjanjeEPv>:

int Memorija::oslobadjanje(void *add) {
    80001a0c:	ff010113          	addi	sp,sp,-16
    80001a10:	00813423          	sd	s0,8(sp)
    80001a14:	01010413          	addi	s0,sp,16

    if(!add) return -1;
    80001a18:	0e050c63          	beqz	a0,80001b10 <_ZN8Memorija12oslobadjanjeEPv+0x104>
    if(!head) return -2;
    80001a1c:	0000b797          	auipc	a5,0xb
    80001a20:	1147b783          	ld	a5,276(a5) # 8000cb30 <_ZN8Memorija4headE>
    80001a24:	00079863          	bnez	a5,80001a34 <_ZN8Memorija12oslobadjanjeEPv+0x28>
    80001a28:	ffe00513          	li	a0,-2
    80001a2c:	06c0006f          	j	80001a98 <_ZN8Memorija12oslobadjanjeEPv+0x8c>
    while((char*)temp < (char*)add){
        if(temp->next==nullptr){
            flag=true;
            break;
        }
        temp=temp->next;
    80001a30:	00070793          	mv	a5,a4
    while((char*)temp < (char*)add){
    80001a34:	00a7fa63          	bgeu	a5,a0,80001a48 <_ZN8Memorija12oslobadjanjeEPv+0x3c>
        if(temp->next==nullptr){
    80001a38:	0007b703          	ld	a4,0(a5)
    80001a3c:	fe071ae3          	bnez	a4,80001a30 <_ZN8Memorija12oslobadjanjeEPv+0x24>
            flag=true;
    80001a40:	00100593          	li	a1,1
    80001a44:	0080006f          	j	80001a4c <_ZN8Memorija12oslobadjanjeEPv+0x40>
    bool flag=false;
    80001a48:	00000593          	li	a1,0
    }

    struktura* novo = (struktura*)((char*)add-sizeof(struktura));
    80001a4c:	fe850693          	addi	a3,a0,-24
    int size = novo->size;
    80001a50:	ff853603          	ld	a2,-8(a0)
    80001a54:	0006071b          	sext.w	a4,a2

    if ((char *) add + size - sizeof(struktura) == (char *) temp) {
    80001a58:	fe870713          	addi	a4,a4,-24
    80001a5c:	00e50733          	add	a4,a0,a4
    80001a60:	04f70263          	beq	a4,a5,80001aa4 <_ZN8Memorija12oslobadjanjeEPv+0x98>
        novo->prev=temp->prev;
        if(temp->prev) temp->prev->next=novo;
        else head=novo;
    }
    else{
        novo->next=temp;
    80001a64:	fef53423          	sd	a5,-24(a0)
        novo->prev=temp->prev;
    80001a68:	0087b703          	ld	a4,8(a5)
    80001a6c:	fee53823          	sd	a4,-16(a0)
        if(temp->prev) temp->prev->next=novo;
    80001a70:	06070863          	beqz	a4,80001ae0 <_ZN8Memorija12oslobadjanjeEPv+0xd4>
    80001a74:	00d73023          	sd	a3,0(a4)
        else head=novo;
        temp->prev=novo;
    80001a78:	00d7b423          	sd	a3,8(a5)
    }

    if(!flag) temp=novo->prev;
    80001a7c:	00059463          	bnez	a1,80001a84 <_ZN8Memorija12oslobadjanjeEPv+0x78>
    80001a80:	ff053783          	ld	a5,-16(a0)

    if (temp && (char *) temp + temp->size == (char *) novo){
    80001a84:	08078a63          	beqz	a5,80001b18 <_ZN8Memorija12oslobadjanjeEPv+0x10c>
    80001a88:	0107b703          	ld	a4,16(a5)
    80001a8c:	00e78633          	add	a2,a5,a4
    80001a90:	04d60e63          	beq	a2,a3,80001aec <_ZN8Memorija12oslobadjanjeEPv+0xe0>
        temp->size+=novo->size;
        temp->next=novo->next;
        if(novo->next) novo->next->prev=temp;
    }

    return 0;
    80001a94:	00000513          	li	a0,0
}
    80001a98:	00813403          	ld	s0,8(sp)
    80001a9c:	01010113          	addi	sp,sp,16
    80001aa0:	00008067          	ret
        novo->size+=temp->size;
    80001aa4:	0107b703          	ld	a4,16(a5)
    80001aa8:	00e60633          	add	a2,a2,a4
    80001aac:	fec53c23          	sd	a2,-8(a0)
        novo->next=temp->next;
    80001ab0:	0007b703          	ld	a4,0(a5)
    80001ab4:	fee53423          	sd	a4,-24(a0)
        if(temp->next) temp->next->prev=novo;
    80001ab8:	00070463          	beqz	a4,80001ac0 <_ZN8Memorija12oslobadjanjeEPv+0xb4>
    80001abc:	00d73423          	sd	a3,8(a4)
        novo->prev=temp->prev;
    80001ac0:	0087b703          	ld	a4,8(a5)
    80001ac4:	fee53823          	sd	a4,-16(a0)
        if(temp->prev) temp->prev->next=novo;
    80001ac8:	00070663          	beqz	a4,80001ad4 <_ZN8Memorija12oslobadjanjeEPv+0xc8>
    80001acc:	00d73023          	sd	a3,0(a4)
    80001ad0:	fadff06f          	j	80001a7c <_ZN8Memorija12oslobadjanjeEPv+0x70>
        else head=novo;
    80001ad4:	0000b717          	auipc	a4,0xb
    80001ad8:	04d73e23          	sd	a3,92(a4) # 8000cb30 <_ZN8Memorija4headE>
    80001adc:	fa1ff06f          	j	80001a7c <_ZN8Memorija12oslobadjanjeEPv+0x70>
        else head=novo;
    80001ae0:	0000b717          	auipc	a4,0xb
    80001ae4:	04d73823          	sd	a3,80(a4) # 8000cb30 <_ZN8Memorija4headE>
    80001ae8:	f91ff06f          	j	80001a78 <_ZN8Memorija12oslobadjanjeEPv+0x6c>
        temp->size+=novo->size;
    80001aec:	ff853683          	ld	a3,-8(a0)
    80001af0:	00d70733          	add	a4,a4,a3
    80001af4:	00e7b823          	sd	a4,16(a5)
        temp->next=novo->next;
    80001af8:	fe853703          	ld	a4,-24(a0)
    80001afc:	00e7b023          	sd	a4,0(a5)
        if(novo->next) novo->next->prev=temp;
    80001b00:	02070063          	beqz	a4,80001b20 <_ZN8Memorija12oslobadjanjeEPv+0x114>
    80001b04:	00f73423          	sd	a5,8(a4)
    return 0;
    80001b08:	00000513          	li	a0,0
    80001b0c:	f8dff06f          	j	80001a98 <_ZN8Memorija12oslobadjanjeEPv+0x8c>
    if(!add) return -1;
    80001b10:	fff00513          	li	a0,-1
    80001b14:	f85ff06f          	j	80001a98 <_ZN8Memorija12oslobadjanjeEPv+0x8c>
    return 0;
    80001b18:	00000513          	li	a0,0
    80001b1c:	f7dff06f          	j	80001a98 <_ZN8Memorija12oslobadjanjeEPv+0x8c>
    80001b20:	00000513          	li	a0,0
    80001b24:	f75ff06f          	j	80001a98 <_ZN8Memorija12oslobadjanjeEPv+0x8c>

0000000080001b28 <_ZN8Memorija5printEv>:

void Memorija::print() {
    80001b28:	fe010113          	addi	sp,sp,-32
    80001b2c:	00113c23          	sd	ra,24(sp)
    80001b30:	00813823          	sd	s0,16(sp)
    80001b34:	00913423          	sd	s1,8(sp)
    80001b38:	02010413          	addi	s0,sp,32
        if (head == nullptr) {
    80001b3c:	0000b797          	auipc	a5,0xb
    80001b40:	ff47b783          	ld	a5,-12(a5) # 8000cb30 <_ZN8Memorija4headE>
    80001b44:	02078e63          	beqz	a5,80001b80 <_ZN8Memorija5printEv+0x58>
    CreateMemorija();
    for(struktura *blk = head; blk!=nullptr; blk=blk->next){
    80001b48:	0000b497          	auipc	s1,0xb
    80001b4c:	fe84b483          	ld	s1,-24(s1) # 8000cb30 <_ZN8Memorija4headE>
    80001b50:	06048a63          	beqz	s1,80001bc4 <_ZN8Memorija5printEv+0x9c>
        printInt(blk->size);
    80001b54:	00000613          	li	a2,0
    80001b58:	00a00593          	li	a1,10
    80001b5c:	0104a503          	lw	a0,16(s1)
    80001b60:	00004097          	auipc	ra,0x4
    80001b64:	098080e7          	jalr	152(ra) # 80005bf8 <_Z8printIntiii>
        printString("\n");
    80001b68:	00009517          	auipc	a0,0x9
    80001b6c:	88850513          	addi	a0,a0,-1912 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80001b70:	00004097          	auipc	ra,0x4
    80001b74:	ed8080e7          	jalr	-296(ra) # 80005a48 <_Z11printStringPKc>
    for(struktura *blk = head; blk!=nullptr; blk=blk->next){
    80001b78:	0004b483          	ld	s1,0(s1)
    80001b7c:	fd5ff06f          	j	80001b50 <_ZN8Memorija5printEv+0x28>
            head = (struktura * )(HEAP_START_ADDR);
    80001b80:	0000b797          	auipc	a5,0xb
    80001b84:	f187b783          	ld	a5,-232(a5) # 8000ca98 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b88:	0007b683          	ld	a3,0(a5)
    80001b8c:	0000b717          	auipc	a4,0xb
    80001b90:	fa470713          	addi	a4,a4,-92 # 8000cb30 <_ZN8Memorija4headE>
    80001b94:	00d73023          	sd	a3,0(a4)
            head->next = nullptr;
    80001b98:	0006b023          	sd	zero,0(a3)
            head->prev = nullptr;
    80001b9c:	00073703          	ld	a4,0(a4)
    80001ba0:	00073423          	sd	zero,8(a4)
            head->size = (char *) HEAP_START_ADDR - (char *) HEAP_END_ADDR - sizeof(struktura);
    80001ba4:	0007b783          	ld	a5,0(a5)
    80001ba8:	0000b697          	auipc	a3,0xb
    80001bac:	f206b683          	ld	a3,-224(a3) # 8000cac8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001bb0:	0006b683          	ld	a3,0(a3)
    80001bb4:	40d787b3          	sub	a5,a5,a3
    80001bb8:	fe878793          	addi	a5,a5,-24
    80001bbc:	00f73823          	sd	a5,16(a4)
    80001bc0:	f89ff06f          	j	80001b48 <_ZN8Memorija5printEv+0x20>
    }
    80001bc4:	01813083          	ld	ra,24(sp)
    80001bc8:	01013403          	ld	s0,16(sp)
    80001bcc:	00813483          	ld	s1,8(sp)
    80001bd0:	02010113          	addi	sp,sp,32
    80001bd4:	00008067          	ret

0000000080001bd8 <_ZN7Semafor4waitEv>:
#include "../test/printing.hpp"

int Semafor::idd=0;

int Semafor::wait() {
    if (--val>=0) return -1;
    80001bd8:	00052783          	lw	a5,0(a0)
    80001bdc:	fff7879b          	addiw	a5,a5,-1
    80001be0:	00f52023          	sw	a5,0(a0)
    80001be4:	02079713          	slli	a4,a5,0x20
    80001be8:	08075663          	bgez	a4,80001c74 <_ZN7Semafor4waitEv+0x9c>
int Semafor::wait() {
    80001bec:	fe010113          	addi	sp,sp,-32
    80001bf0:	00113c23          	sd	ra,24(sp)
    80001bf4:	00813823          	sd	s0,16(sp)
    80001bf8:	00913423          	sd	s1,8(sp)
    80001bfc:	02010413          	addi	s0,sp,32
    80001c00:	00050493          	mv	s1,a0

    struktura* temp = (struktura*)Memorija::alokacija(sizeof(struktura));
    80001c04:	01800513          	li	a0,24
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	ce4080e7          	jalr	-796(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    if(temp==nullptr) return -2;
    80001c10:	06050663          	beqz	a0,80001c7c <_ZN7Semafor4waitEv+0xa4>

    temp->t=Nit::running;
    80001c14:	0000b797          	auipc	a5,0xb
    80001c18:	ec47b783          	ld	a5,-316(a5) # 8000cad8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001c1c:	0007b783          	ld	a5,0(a5)
    80001c20:	00f53023          	sd	a5,0(a0)
    temp->next=nullptr;
    80001c24:	00053423          	sd	zero,8(a0)

    if(head==nullptr){
    80001c28:	0104b703          	ld	a4,16(s1)
    80001c2c:	02070e63          	beqz	a4,80001c68 <_ZN7Semafor4waitEv+0x90>
        head=temp;
        tail=temp;
    }
    else{
        tail->next=temp;
    80001c30:	0084b703          	ld	a4,8(s1)
    80001c34:	00a73423          	sd	a0,8(a4)
        tail=temp;
    80001c38:	00a4b423          	sd	a0,8(s1)
    }

    Nit::running->finished=true;
    80001c3c:	00100713          	li	a4,1
    80001c40:	00e78223          	sb	a4,4(a5)
    return Nit::running->prekid;
    80001c44:	0000b797          	auipc	a5,0xb
    80001c48:	e947b783          	ld	a5,-364(a5) # 8000cad8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001c4c:	0007b783          	ld	a5,0(a5)
    80001c50:	0007a503          	lw	a0,0(a5)
}
    80001c54:	01813083          	ld	ra,24(sp)
    80001c58:	01013403          	ld	s0,16(sp)
    80001c5c:	00813483          	ld	s1,8(sp)
    80001c60:	02010113          	addi	sp,sp,32
    80001c64:	00008067          	ret
        head=temp;
    80001c68:	00a4b823          	sd	a0,16(s1)
        tail=temp;
    80001c6c:	00a4b423          	sd	a0,8(s1)
    80001c70:	fcdff06f          	j	80001c3c <_ZN7Semafor4waitEv+0x64>
    if (--val>=0) return -1;
    80001c74:	fff00513          	li	a0,-1
}
    80001c78:	00008067          	ret
    if(temp==nullptr) return -2;
    80001c7c:	ffe00513          	li	a0,-2
    80001c80:	fd5ff06f          	j	80001c54 <_ZN7Semafor4waitEv+0x7c>

0000000080001c84 <_ZN7Semafor6signalEv>:

int Semafor::signal() {
    if (val++>=0) return -1;
    80001c84:	00052783          	lw	a5,0(a0)
    80001c88:	0017871b          	addiw	a4,a5,1
    80001c8c:	00e52023          	sw	a4,0(a0)
    80001c90:	0607d063          	bgez	a5,80001cf0 <_ZN7Semafor6signalEv+0x6c>
int Semafor::signal() {
    80001c94:	fe010113          	addi	sp,sp,-32
    80001c98:	00113c23          	sd	ra,24(sp)
    80001c9c:	00813823          	sd	s0,16(sp)
    80001ca0:	00913423          	sd	s1,8(sp)
    80001ca4:	02010413          	addi	s0,sp,32

    if(head==nullptr) return -2;
    80001ca8:	01053483          	ld	s1,16(a0)
    80001cac:	04048663          	beqz	s1,80001cf8 <_ZN7Semafor6signalEv+0x74>
    struktura* temp = head;

    head=temp->next;
    80001cb0:	0084b783          	ld	a5,8(s1)
    80001cb4:	00f53823          	sd	a5,16(a0)

    temp->t->finished=false;
    80001cb8:	0004b783          	ld	a5,0(s1)
    80001cbc:	00078223          	sb	zero,4(a5)
    Scheduler::put(temp->t);
    80001cc0:	0004b503          	ld	a0,0(s1)
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	870080e7          	jalr	-1936(ra) # 80001534 <_ZN9Scheduler3putEP3Nit>

    Memorija::oslobadjanje(temp);
    80001ccc:	00048513          	mv	a0,s1
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	d3c080e7          	jalr	-708(ra) # 80001a0c <_ZN8Memorija12oslobadjanjeEPv>
    return 0;
    80001cd8:	00000513          	li	a0,0
}
    80001cdc:	01813083          	ld	ra,24(sp)
    80001ce0:	01013403          	ld	s0,16(sp)
    80001ce4:	00813483          	ld	s1,8(sp)
    80001ce8:	02010113          	addi	sp,sp,32
    80001cec:	00008067          	ret
    if (val++>=0) return -1;
    80001cf0:	fff00513          	li	a0,-1
}
    80001cf4:	00008067          	ret
    if(head==nullptr) return -2;
    80001cf8:	ffe00513          	li	a0,-2
    80001cfc:	fe1ff06f          	j	80001cdc <_ZN7Semafor6signalEv+0x58>

0000000080001d00 <_ZN7Semafor5closeEv>:

void Semafor::close() {
    80001d00:	fe010113          	addi	sp,sp,-32
    80001d04:	00113c23          	sd	ra,24(sp)
    80001d08:	00813823          	sd	s0,16(sp)
    80001d0c:	00913423          	sd	s1,8(sp)
    80001d10:	02010413          	addi	s0,sp,32
    80001d14:	00050493          	mv	s1,a0
    while(this->head){
    80001d18:	0104b783          	ld	a5,16(s1)
    80001d1c:	02078063          	beqz	a5,80001d3c <_ZN7Semafor5closeEv+0x3c>
        this->head->t->prekid=5;
    80001d20:	0007b783          	ld	a5,0(a5)
    80001d24:	00500713          	li	a4,5
    80001d28:	00e7a023          	sw	a4,0(a5)
        this->signal();
    80001d2c:	00048513          	mv	a0,s1
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	f54080e7          	jalr	-172(ra) # 80001c84 <_ZN7Semafor6signalEv>
    while(this->head){
    80001d38:	fe1ff06f          	j	80001d18 <_ZN7Semafor5closeEv+0x18>
    }

    Memorija::oslobadjanje(this);
    80001d3c:	00048513          	mv	a0,s1
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	ccc080e7          	jalr	-820(ra) # 80001a0c <_ZN8Memorija12oslobadjanjeEPv>
}
    80001d48:	01813083          	ld	ra,24(sp)
    80001d4c:	01013403          	ld	s0,16(sp)
    80001d50:	00813483          	ld	s1,8(sp)
    80001d54:	02010113          	addi	sp,sp,32
    80001d58:	00008067          	ret

0000000080001d5c <_ZN7Semafor5printEv>:

void Semafor::print() {
    80001d5c:	fe010113          	addi	sp,sp,-32
    80001d60:	00113c23          	sd	ra,24(sp)
    80001d64:	00813823          	sd	s0,16(sp)
    80001d68:	00913423          	sd	s1,8(sp)
    80001d6c:	02010413          	addi	s0,sp,32
    80001d70:	00050493          	mv	s1,a0
    printString("SemaphoreID: ");
    80001d74:	00008517          	auipc	a0,0x8
    80001d78:	2ec50513          	addi	a0,a0,748 # 8000a060 <CONSOLE_STATUS+0x50>
    80001d7c:	00004097          	auipc	ra,0x4
    80001d80:	ccc080e7          	jalr	-820(ra) # 80005a48 <_Z11printStringPKc>
    printInt(id);
    80001d84:	00000613          	li	a2,0
    80001d88:	00a00593          	li	a1,10
    80001d8c:	0044a503          	lw	a0,4(s1)
    80001d90:	00004097          	auipc	ra,0x4
    80001d94:	e68080e7          	jalr	-408(ra) # 80005bf8 <_Z8printIntiii>
    printString(", val = ");
    80001d98:	00008517          	auipc	a0,0x8
    80001d9c:	2d850513          	addi	a0,a0,728 # 8000a070 <CONSOLE_STATUS+0x60>
    80001da0:	00004097          	auipc	ra,0x4
    80001da4:	ca8080e7          	jalr	-856(ra) # 80005a48 <_Z11printStringPKc>
    printInt(val);
    80001da8:	00000613          	li	a2,0
    80001dac:	00a00593          	li	a1,10
    80001db0:	0004a503          	lw	a0,0(s1)
    80001db4:	00004097          	auipc	ra,0x4
    80001db8:	e44080e7          	jalr	-444(ra) # 80005bf8 <_Z8printIntiii>
    printString("\nBlocked threads:\n");
    80001dbc:	00008517          	auipc	a0,0x8
    80001dc0:	2c450513          	addi	a0,a0,708 # 8000a080 <CONSOLE_STATUS+0x70>
    80001dc4:	00004097          	auipc	ra,0x4
    80001dc8:	c84080e7          	jalr	-892(ra) # 80005a48 <_Z11printStringPKc>
    struktura *temp=head;
    80001dcc:	0104b483          	ld	s1,16(s1)
    while(temp){
    80001dd0:	00048c63          	beqz	s1,80001de8 <_ZN7Semafor5printEv+0x8c>
        temp->t->print();
    80001dd4:	0004b503          	ld	a0,0(s1)
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	79c080e7          	jalr	1948(ra) # 80002574 <_ZN3Nit5printEv>
        temp=temp->next;
    80001de0:	0084b483          	ld	s1,8(s1)
    while(temp){
    80001de4:	fedff06f          	j	80001dd0 <_ZN7Semafor5printEv+0x74>
    }
}
    80001de8:	01813083          	ld	ra,24(sp)
    80001dec:	01013403          	ld	s0,16(sp)
    80001df0:	00813483          	ld	s1,8(sp)
    80001df4:	02010113          	addi	sp,sp,32
    80001df8:	00008067          	ret

0000000080001dfc <_Z9userMain1Pv>:
extern "C++" void userMain();

bool flag=true;
bool flagConsole=true;

void userMain1(void* a){
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00113423          	sd	ra,8(sp)
    80001e04:	00813023          	sd	s0,0(sp)
    80001e08:	01010413          	addi	s0,sp,16
    userMain();
    80001e0c:	00004097          	auipc	ra,0x4
    80001e10:	304080e7          	jalr	772(ra) # 80006110 <_Z8userMainv>
    flag=false;
    80001e14:	0000b797          	auipc	a5,0xb
    80001e18:	a2078623          	sb	zero,-1492(a5) # 8000c840 <flag>
}
    80001e1c:	00813083          	ld	ra,8(sp)
    80001e20:	00013403          	ld	s0,0(sp)
    80001e24:	01010113          	addi	sp,sp,16
    80001e28:	00008067          	ret

0000000080001e2c <_Z12konzolaispisPv>:
void konzolaispis(void* a){
    80001e2c:	ff010113          	addi	sp,sp,-16
    80001e30:	00113423          	sd	ra,8(sp)
    80001e34:	00813023          	sd	s0,0(sp)
    80001e38:	01010413          	addi	s0,sp,16
    promenarezima();
    80001e3c:	fffff097          	auipc	ra,0xfffff
    80001e40:	654080e7          	jalr	1620(ra) # 80001490 <_Z13promenarezimav>
    while(1){
        while(*((uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80001e44:	0000b797          	auipc	a5,0xb
    80001e48:	c447b783          	ld	a5,-956(a5) # 8000ca88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e4c:	0007b783          	ld	a5,0(a5)
    80001e50:	0007c783          	lbu	a5,0(a5)
    80001e54:	0207f793          	andi	a5,a5,32
    80001e58:	fe0786e3          	beqz	a5,80001e44 <_Z12konzolaispisPv+0x18>
            char c = Konzola::getizlaz();
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	64c080e7          	jalr	1612(ra) # 800034a8 <_ZN7Konzola8getizlazEv>
    80001e64:	0ff57513          	andi	a0,a0,255
            if(c) *(char*)CONSOLE_TX_DATA = c;
    80001e68:	00050a63          	beqz	a0,80001e7c <_Z12konzolaispisPv+0x50>
    80001e6c:	0000b797          	auipc	a5,0xb
    80001e70:	c4c7b783          	ld	a5,-948(a5) # 8000cab8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001e74:	0007b783          	ld	a5,0(a5)
    80001e78:	00a78023          	sb	a0,0(a5)
            if(!flag) flagConsole=false;
    80001e7c:	0000b797          	auipc	a5,0xb
    80001e80:	9c47c783          	lbu	a5,-1596(a5) # 8000c840 <flag>
    80001e84:	fc0790e3          	bnez	a5,80001e44 <_Z12konzolaispisPv+0x18>
    80001e88:	0000b797          	auipc	a5,0xb
    80001e8c:	9a078ca3          	sb	zero,-1607(a5) # 8000c841 <flagConsole>
    80001e90:	fb5ff06f          	j	80001e44 <_Z12konzolaispisPv+0x18>

0000000080001e94 <main>:
        }
    }
}

void main(){
    80001e94:	f7010113          	addi	sp,sp,-144
    80001e98:	08113423          	sd	ra,136(sp)
    80001e9c:	08813023          	sd	s0,128(sp)
    80001ea0:	06913c23          	sd	s1,120(sp)
    80001ea4:	07213823          	sd	s2,112(sp)
    80001ea8:	07313423          	sd	s3,104(sp)
    80001eac:	09010413          	addi	s0,sp,144
    __asm__ volatile("csrw stvec, %0" : : "r" (&supervisorTrap));
    80001eb0:	0000b797          	auipc	a5,0xb
    80001eb4:	c007b783          	ld	a5,-1024(a5) # 8000cab0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001eb8:	10579073          	csrw	stvec,a5

    Konzola::baferulaz=(Bafer*) Memorija::alokacija(Konzola::kapacitet*sizeof(Bafer));
    80001ebc:	0000b917          	auipc	s2,0xb
    80001ec0:	bec93903          	ld	s2,-1044(s2) # 8000caa8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ec4:	00092783          	lw	a5,0(s2)
    80001ec8:	00379513          	slli	a0,a5,0x3
    80001ecc:	40f50533          	sub	a0,a0,a5
    80001ed0:	00351513          	slli	a0,a0,0x3
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	a18080e7          	jalr	-1512(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    80001edc:	0000b997          	auipc	s3,0xb
    80001ee0:	bc49b983          	ld	s3,-1084(s3) # 8000caa0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ee4:	00a9b023          	sd	a0,0(s3)
    *Konzola::baferulaz=Bafer(Konzola::kapacitet);
    80001ee8:	00092583          	lw	a1,0(s2)
    80001eec:	f7840493          	addi	s1,s0,-136
    80001ef0:	00048513          	mv	a0,s1
    80001ef4:	00001097          	auipc	ra,0x1
    80001ef8:	0a0080e7          	jalr	160(ra) # 80002f94 <_ZN5BaferC1Ei>
    80001efc:	0009b783          	ld	a5,0(s3)
    80001f00:	f8043803          	ld	a6,-128(s0)
    80001f04:	f8843503          	ld	a0,-120(s0)
    80001f08:	f9043583          	ld	a1,-112(s0)
    80001f0c:	f9843603          	ld	a2,-104(s0)
    80001f10:	fa043683          	ld	a3,-96(s0)
    80001f14:	fa843703          	ld	a4,-88(s0)
    80001f18:	f7843883          	ld	a7,-136(s0)
    80001f1c:	0117b023          	sd	a7,0(a5)
    80001f20:	0107b423          	sd	a6,8(a5)
    80001f24:	00a7b823          	sd	a0,16(a5)
    80001f28:	00b7bc23          	sd	a1,24(a5)
    80001f2c:	02c7b023          	sd	a2,32(a5)
    80001f30:	02d7b423          	sd	a3,40(a5)
    80001f34:	02e7b823          	sd	a4,48(a5)

    Konzola::baferizlaz=(Bafer*) Memorija::alokacija(Konzola::kapacitet*sizeof(Bafer));
    80001f38:	00092783          	lw	a5,0(s2)
    80001f3c:	00379513          	slli	a0,a5,0x3
    80001f40:	40f50533          	sub	a0,a0,a5
    80001f44:	00351513          	slli	a0,a0,0x3
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	9a4080e7          	jalr	-1628(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    80001f50:	0000b997          	auipc	s3,0xb
    80001f54:	b409b983          	ld	s3,-1216(s3) # 8000ca90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001f58:	00a9b023          	sd	a0,0(s3)
    *Konzola::baferizlaz=Bafer(Konzola::kapacitet);
    80001f5c:	00092583          	lw	a1,0(s2)
    80001f60:	00048513          	mv	a0,s1
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	030080e7          	jalr	48(ra) # 80002f94 <_ZN5BaferC1Ei>
    80001f6c:	0009b783          	ld	a5,0(s3)
    80001f70:	f8043803          	ld	a6,-128(s0)
    80001f74:	f8843503          	ld	a0,-120(s0)
    80001f78:	f9043583          	ld	a1,-112(s0)
    80001f7c:	f9843603          	ld	a2,-104(s0)
    80001f80:	fa043683          	ld	a3,-96(s0)
    80001f84:	fa843703          	ld	a4,-88(s0)
    80001f88:	f7843883          	ld	a7,-136(s0)
    80001f8c:	0117b023          	sd	a7,0(a5)
    80001f90:	0107b423          	sd	a6,8(a5)
    80001f94:	00a7b823          	sd	a0,16(a5)
    80001f98:	00b7bc23          	sd	a1,24(a5)
    80001f9c:	02c7b023          	sd	a2,32(a5)
    80001fa0:	02d7b423          	sd	a3,40(a5)
    80001fa4:	02e7b823          	sd	a4,48(a5)

    Nit *t1;
    thread_create(&t1,nullptr,nullptr);
    80001fa8:	00000613          	li	a2,0
    80001fac:	00000593          	li	a1,0
    80001fb0:	fc840513          	addi	a0,s0,-56
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	2e8080e7          	jalr	744(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    Nit *t2;
    thread_create(&t2,&userMain1,nullptr);
    80001fbc:	00000613          	li	a2,0
    80001fc0:	00000597          	auipc	a1,0x0
    80001fc4:	e3c58593          	addi	a1,a1,-452 # 80001dfc <_Z9userMain1Pv>
    80001fc8:	fc040513          	addi	a0,s0,-64
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	2d0080e7          	jalr	720(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    Nit *t3;
    thread_create(&t3,&konzolaispis,nullptr);
    80001fd4:	00000613          	li	a2,0
    80001fd8:	00000597          	auipc	a1,0x0
    80001fdc:	e5458593          	addi	a1,a1,-428 # 80001e2c <_Z12konzolaispisPv>
    80001fe0:	fb840513          	addi	a0,s0,-72
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	2b8080e7          	jalr	696(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>

    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    80001fec:	100027f3          	csrr	a5,sstatus
    80001ff0:	faf43823          	sd	a5,-80(s0)
    sstatus|=2;
    80001ff4:	fb043783          	ld	a5,-80(s0)
    80001ff8:	0027e793          	ori	a5,a5,2
    80001ffc:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
    80002000:	fb043783          	ld	a5,-80(s0)
    80002004:	10079073          	csrw	sstatus,a5

    while(flagConsole){
    80002008:	0000b797          	auipc	a5,0xb
    8000200c:	8397c783          	lbu	a5,-1991(a5) # 8000c841 <flagConsole>
    80002010:	00078863          	beqz	a5,80002020 <main+0x18c>
        thread_dispatch();
    80002014:	fffff097          	auipc	ra,0xfffff
    80002018:	2e8080e7          	jalr	744(ra) # 800012fc <_Z15thread_dispatchv>
    8000201c:	fedff06f          	j	80002008 <main+0x174>
    }

    sstatus=0;
    80002020:	fa043823          	sd	zero,-80(s0)
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
    80002024:	fb043783          	ld	a5,-80(s0)
    80002028:	10079073          	csrw	sstatus,a5
}
    8000202c:	08813083          	ld	ra,136(sp)
    80002030:	08013403          	ld	s0,128(sp)
    80002034:	07813483          	ld	s1,120(sp)
    80002038:	07013903          	ld	s2,112(sp)
    8000203c:	06813983          	ld	s3,104(sp)
    80002040:	09010113          	addi	sp,sp,144
    80002044:	00008067          	ret

0000000080002048 <_ZN12_GLOBAL__N_17wrapperEPv>:
typedef struct struktura {
    void (*body)(void *);
    void *arg;
} struktura;

void wrapper(void *a) {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00113423          	sd	ra,8(sp)
    80002050:	00813023          	sd	s0,0(sp)
    80002054:	01010413          	addi	s0,sp,16
    auto b = static_cast<struktura *>(a);
    b->body(b->arg);
    80002058:	00053783          	ld	a5,0(a0)
    8000205c:	00853503          	ld	a0,8(a0)
    80002060:	000780e7          	jalr	a5
}
    80002064:	00813083          	ld	ra,8(sp)
    80002068:	00013403          	ld	s0,0(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZN6Thread6omotacEPv>:

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

void Thread::omotac(void* arg) {
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00113423          	sd	ra,8(sp)
    8000207c:	00813023          	sd	s0,0(sp)
    80002080:	01010413          	addi	s0,sp,16
    Thread*t = (Thread*)arg;
    t->run();
    80002084:	00053783          	ld	a5,0(a0)
    80002088:	0107b783          	ld	a5,16(a5)
    8000208c:	000780e7          	jalr	a5
}
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00013403          	ld	s0,0(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret

00000000800020a0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00113423          	sd	ra,8(sp)
    800020a8:	00813023          	sd	s0,0(sp)
    800020ac:	01010413          	addi	s0,sp,16
    800020b0:	0000a797          	auipc	a5,0xa
    800020b4:	7a878793          	addi	a5,a5,1960 # 8000c858 <_ZTV6Thread+0x10>
    800020b8:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800020bc:	01853503          	ld	a0,24(a0)
    800020c0:	fffff097          	auipc	ra,0xfffff
    800020c4:	1ac080e7          	jalr	428(ra) # 8000126c <_Z8mem_freePv>
}
    800020c8:	00813083          	ld	ra,8(sp)
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00008067          	ret

00000000800020d8 <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period): Thread() {
    this->period=period;
}

void PeriodicThread::run() {
    800020d8:	fe010113          	addi	sp,sp,-32
    800020dc:	00113c23          	sd	ra,24(sp)
    800020e0:	00813823          	sd	s0,16(sp)
    800020e4:	00913423          	sd	s1,8(sp)
    800020e8:	02010413          	addi	s0,sp,32
    800020ec:	00050493          	mv	s1,a0
    while(flag){
    800020f0:	0204c783          	lbu	a5,32(s1)
    800020f4:	02078263          	beqz	a5,80002118 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    800020f8:	0004b783          	ld	a5,0(s1)
    800020fc:	0187b783          	ld	a5,24(a5)
    80002100:	00048513          	mv	a0,s1
    80002104:	000780e7          	jalr	a5
        time_sleep(period);
    80002108:	0284b503          	ld	a0,40(s1)
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	300080e7          	jalr	768(ra) # 8000140c <_Z10time_sleepm>
    while(flag){
    80002114:	fddff06f          	j	800020f0 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002118:	01813083          	ld	ra,24(sp)
    8000211c:	01013403          	ld	s0,16(sp)
    80002120:	00813483          	ld	s1,8(sp)
    80002124:	02010113          	addi	sp,sp,32
    80002128:	00008067          	ret

000000008000212c <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00113423          	sd	ra,8(sp)
    80002134:	00813023          	sd	s0,0(sp)
    80002138:	01010413          	addi	s0,sp,16
    8000213c:	0000a797          	auipc	a5,0xa
    80002140:	74478793          	addi	a5,a5,1860 # 8000c880 <_ZTV9Semaphore+0x10>
    80002144:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002148:	00853503          	ld	a0,8(a0)
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	230080e7          	jalr	560(ra) # 8000137c <_Z9sem_closeP7Semafor>
}
    80002154:	00813083          	ld	ra,8(sp)
    80002158:	00013403          	ld	s0,0(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret

0000000080002164 <_Znwm>:
void* operator new(size_t h){
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00113423          	sd	ra,8(sp)
    8000216c:	00813023          	sd	s0,0(sp)
    80002170:	01010413          	addi	s0,sp,16
    return mem_alloc(h);
    80002174:	fffff097          	auipc	ra,0xfffff
    80002178:	0cc080e7          	jalr	204(ra) # 80001240 <_Z9mem_allocm>
}
    8000217c:	00813083          	ld	ra,8(sp)
    80002180:	00013403          	ld	s0,0(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret

000000008000218c <_ZdlPv>:
void operator delete(void* x){
    8000218c:	ff010113          	addi	sp,sp,-16
    80002190:	00113423          	sd	ra,8(sp)
    80002194:	00813023          	sd	s0,0(sp)
    80002198:	01010413          	addi	s0,sp,16
    mem_free(x);
    8000219c:	fffff097          	auipc	ra,0xfffff
    800021a0:	0d0080e7          	jalr	208(ra) # 8000126c <_Z8mem_freePv>
}
    800021a4:	00813083          	ld	ra,8(sp)
    800021a8:	00013403          	ld	s0,0(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800021b4:	fe010113          	addi	sp,sp,-32
    800021b8:	00113c23          	sd	ra,24(sp)
    800021bc:	00813823          	sd	s0,16(sp)
    800021c0:	00913423          	sd	s1,8(sp)
    800021c4:	02010413          	addi	s0,sp,32
    800021c8:	00050493          	mv	s1,a0
}
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	ed4080e7          	jalr	-300(ra) # 800020a0 <_ZN6ThreadD1Ev>
    800021d4:	00048513          	mv	a0,s1
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	fb4080e7          	jalr	-76(ra) # 8000218c <_ZdlPv>
    800021e0:	01813083          	ld	ra,24(sp)
    800021e4:	01013403          	ld	s0,16(sp)
    800021e8:	00813483          	ld	s1,8(sp)
    800021ec:	02010113          	addi	sp,sp,32
    800021f0:	00008067          	ret

00000000800021f4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800021f4:	fe010113          	addi	sp,sp,-32
    800021f8:	00113c23          	sd	ra,24(sp)
    800021fc:	00813823          	sd	s0,16(sp)
    80002200:	00913423          	sd	s1,8(sp)
    80002204:	02010413          	addi	s0,sp,32
    80002208:	00050493          	mv	s1,a0
}
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	f20080e7          	jalr	-224(ra) # 8000212c <_ZN9SemaphoreD1Ev>
    80002214:	00048513          	mv	a0,s1
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	f74080e7          	jalr	-140(ra) # 8000218c <_ZdlPv>
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	01013403          	ld	s0,16(sp)
    80002228:	00813483          	ld	s1,8(sp)
    8000222c:	02010113          	addi	sp,sp,32
    80002230:	00008067          	ret

0000000080002234 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    80002240:	0000a797          	auipc	a5,0xa
    80002244:	61878793          	addi	a5,a5,1560 # 8000c858 <_ZTV6Thread+0x10>
    80002248:	00f53023          	sd	a5,0(a0)
    this->body = body;
    8000224c:	00b53423          	sd	a1,8(a0)
    this->arg = arg;
    80002250:	00c53823          	sd	a2,16(a0)
}
    80002254:	00813403          	ld	s0,8(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret

0000000080002260 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00813423          	sd	s0,8(sp)
    80002268:	01010413          	addi	s0,sp,16
    8000226c:	0000a797          	auipc	a5,0xa
    80002270:	5ec78793          	addi	a5,a5,1516 # 8000c858 <_ZTV6Thread+0x10>
    80002274:	00f53023          	sd	a5,0(a0)
    this->body = omotac;
    80002278:	00000797          	auipc	a5,0x0
    8000227c:	dfc78793          	addi	a5,a5,-516 # 80002074 <_ZN6Thread6omotacEPv>
    80002280:	00f53423          	sd	a5,8(a0)
    this->arg = this;
    80002284:	00a53823          	sd	a0,16(a0)
}
    80002288:	00813403          	ld	s0,8(sp)
    8000228c:	01010113          	addi	sp,sp,16
    80002290:	00008067          	ret

0000000080002294 <_ZN6Thread5startEv>:
int Thread::start() {
    80002294:	fe010113          	addi	sp,sp,-32
    80002298:	00113c23          	sd	ra,24(sp)
    8000229c:	00813823          	sd	s0,16(sp)
    800022a0:	00913423          	sd	s1,8(sp)
    800022a4:	02010413          	addi	s0,sp,32
    800022a8:	00050493          	mv	s1,a0
    struktura *s = new struktura;
    800022ac:	01000513          	li	a0,16
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	eb4080e7          	jalr	-332(ra) # 80002164 <_Znwm>
    800022b8:	00050613          	mv	a2,a0
    s->arg=arg;
    800022bc:	0104b783          	ld	a5,16(s1)
    800022c0:	00f53423          	sd	a5,8(a0)
    s->body=body;
    800022c4:	0084b783          	ld	a5,8(s1)
    800022c8:	00f53023          	sd	a5,0(a0)
    return thread_create(&myHandle,&wrapper,s);
    800022cc:	00000597          	auipc	a1,0x0
    800022d0:	d7c58593          	addi	a1,a1,-644 # 80002048 <_ZN12_GLOBAL__N_17wrapperEPv>
    800022d4:	01848513          	addi	a0,s1,24
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	fc4080e7          	jalr	-60(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
}
    800022e0:	01813083          	ld	ra,24(sp)
    800022e4:	01013403          	ld	s0,16(sp)
    800022e8:	00813483          	ld	s1,8(sp)
    800022ec:	02010113          	addi	sp,sp,32
    800022f0:	00008067          	ret

00000000800022f4 <_ZN6Thread4joinEv>:
void Thread::join() {
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00113423          	sd	ra,8(sp)
    800022fc:	00813023          	sd	s0,0(sp)
    80002300:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80002304:	01853503          	ld	a0,24(a0)
    80002308:	fffff097          	auipc	ra,0xfffff
    8000230c:	018080e7          	jalr	24(ra) # 80001320 <_Z11thread_joinP3Nit>
}
    80002310:	00813083          	ld	ra,8(sp)
    80002314:	00013403          	ld	s0,0(sp)
    80002318:	01010113          	addi	sp,sp,16
    8000231c:	00008067          	ret

0000000080002320 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00113423          	sd	ra,8(sp)
    80002328:	00813023          	sd	s0,0(sp)
    8000232c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	fcc080e7          	jalr	-52(ra) # 800012fc <_Z15thread_dispatchv>
}
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00113423          	sd	ra,8(sp)
    80002350:	00813023          	sd	s0,0(sp)
    80002354:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80002358:	fffff097          	auipc	ra,0xfffff
    8000235c:	0b4080e7          	jalr	180(ra) # 8000140c <_Z10time_sleepm>
}
    80002360:	00813083          	ld	ra,8(sp)
    80002364:	00013403          	ld	s0,0(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00113423          	sd	ra,8(sp)
    80002378:	00813023          	sd	s0,0(sp)
    8000237c:	01010413          	addi	s0,sp,16
    80002380:	0000a797          	auipc	a5,0xa
    80002384:	50078793          	addi	a5,a5,1280 # 8000c880 <_ZTV9Semaphore+0x10>
    80002388:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    8000238c:	00850513          	addi	a0,a0,8
    80002390:	fffff097          	auipc	ra,0xfffff
    80002394:	fb8080e7          	jalr	-72(ra) # 80001348 <_Z8sem_openPP7Semaforj>
}
    80002398:	00813083          	ld	ra,8(sp)
    8000239c:	00013403          	ld	s0,0(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret

00000000800023a8 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800023a8:	ff010113          	addi	sp,sp,-16
    800023ac:	00113423          	sd	ra,8(sp)
    800023b0:	00813023          	sd	s0,0(sp)
    800023b4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800023b8:	00853503          	ld	a0,8(a0)
    800023bc:	fffff097          	auipc	ra,0xfffff
    800023c0:	ff0080e7          	jalr	-16(ra) # 800013ac <_Z8sem_waitP7Semafor>
}
    800023c4:	00813083          	ld	ra,8(sp)
    800023c8:	00013403          	ld	s0,0(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00113423          	sd	ra,8(sp)
    800023dc:	00813023          	sd	s0,0(sp)
    800023e0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800023e4:	00853503          	ld	a0,8(a0)
    800023e8:	fffff097          	auipc	ra,0xfffff
    800023ec:	ff4080e7          	jalr	-12(ra) # 800013dc <_Z10sem_signalP7Semafor>
}
    800023f0:	00813083          	ld	ra,8(sp)
    800023f4:	00013403          	ld	s0,0(sp)
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret

0000000080002400 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period): Thread() {
    80002400:	fe010113          	addi	sp,sp,-32
    80002404:	00113c23          	sd	ra,24(sp)
    80002408:	00813823          	sd	s0,16(sp)
    8000240c:	00913423          	sd	s1,8(sp)
    80002410:	01213023          	sd	s2,0(sp)
    80002414:	02010413          	addi	s0,sp,32
    80002418:	00050493          	mv	s1,a0
    8000241c:	00058913          	mv	s2,a1
    80002420:	00000097          	auipc	ra,0x0
    80002424:	e40080e7          	jalr	-448(ra) # 80002260 <_ZN6ThreadC1Ev>
    80002428:	0000a797          	auipc	a5,0xa
    8000242c:	47878793          	addi	a5,a5,1144 # 8000c8a0 <_ZTV14PeriodicThread+0x10>
    80002430:	00f4b023          	sd	a5,0(s1)
    80002434:	00100793          	li	a5,1
    80002438:	02f48023          	sb	a5,32(s1)
    this->period=period;
    8000243c:	0324b423          	sd	s2,40(s1)
}
    80002440:	01813083          	ld	ra,24(sp)
    80002444:	01013403          	ld	s0,16(sp)
    80002448:	00813483          	ld	s1,8(sp)
    8000244c:	00013903          	ld	s2,0(sp)
    80002450:	02010113          	addi	sp,sp,32
    80002454:	00008067          	ret

0000000080002458 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002458:	ff010113          	addi	sp,sp,-16
    8000245c:	00813423          	sd	s0,8(sp)
    80002460:	01010413          	addi	s0,sp,16
    flag=false;
    80002464:	02050023          	sb	zero,32(a0)
}
    80002468:	00813403          	ld	s0,8(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret

0000000080002474 <_ZN7Console4getcEv>:

char Console::getc() {
    80002474:	ff010113          	addi	sp,sp,-16
    80002478:	00113423          	sd	ra,8(sp)
    8000247c:	00813023          	sd	s0,0(sp)
    80002480:	01010413          	addi	s0,sp,16
    return ::getc();
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	fb8080e7          	jalr	-72(ra) # 8000143c <_Z4getcv>
}
    8000248c:	00813083          	ld	ra,8(sp)
    80002490:	00013403          	ld	s0,0(sp)
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret

000000008000249c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000249c:	ff010113          	addi	sp,sp,-16
    800024a0:	00113423          	sd	ra,8(sp)
    800024a4:	00813023          	sd	s0,0(sp)
    800024a8:	01010413          	addi	s0,sp,16
    ::putc(c);
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	fbc080e7          	jalr	-68(ra) # 80001468 <_Z4putcc>
}
    800024b4:	00813083          	ld	ra,8(sp)
    800024b8:	00013403          	ld	s0,0(sp)
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret

00000000800024c4 <_ZN6Thread3runEv>:
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800024c4:	ff010113          	addi	sp,sp,-16
    800024c8:	00813423          	sd	s0,8(sp)
    800024cc:	01010413          	addi	s0,sp,16
    800024d0:	00813403          	ld	s0,8(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_ZN14PeriodicThread18periodicActivationEv>:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
protected:
    virtual void periodicActivation () {}
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00813423          	sd	s0,8(sp)
    800024e4:	01010413          	addi	s0,sp,16
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    80002504:	0000a797          	auipc	a5,0xa
    80002508:	39c78793          	addi	a5,a5,924 # 8000c8a0 <_ZTV14PeriodicThread+0x10>
    8000250c:	00f53023          	sd	a5,0(a0)
    80002510:	00000097          	auipc	ra,0x0
    80002514:	b90080e7          	jalr	-1136(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80002518:	00813083          	ld	ra,8(sp)
    8000251c:	00013403          	ld	s0,0(sp)
    80002520:	01010113          	addi	sp,sp,16
    80002524:	00008067          	ret

0000000080002528 <_ZN14PeriodicThreadD0Ev>:
    80002528:	fe010113          	addi	sp,sp,-32
    8000252c:	00113c23          	sd	ra,24(sp)
    80002530:	00813823          	sd	s0,16(sp)
    80002534:	00913423          	sd	s1,8(sp)
    80002538:	02010413          	addi	s0,sp,32
    8000253c:	00050493          	mv	s1,a0
    80002540:	0000a797          	auipc	a5,0xa
    80002544:	36078793          	addi	a5,a5,864 # 8000c8a0 <_ZTV14PeriodicThread+0x10>
    80002548:	00f53023          	sd	a5,0(a0)
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	b54080e7          	jalr	-1196(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80002554:	00048513          	mv	a0,s1
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	c34080e7          	jalr	-972(ra) # 8000218c <_ZdlPv>
    80002560:	01813083          	ld	ra,24(sp)
    80002564:	01013403          	ld	s0,16(sp)
    80002568:	00813483          	ld	s1,8(sp)
    8000256c:	02010113          	addi	sp,sp,32
    80002570:	00008067          	ret

0000000080002574 <_ZN3Nit5printEv>:

extern "C" void pop();

extern "C" void contextSwitch(Nit::struktura*, Nit::struktura*);

void Nit::print() {
    80002574:	fe010113          	addi	sp,sp,-32
    80002578:	00113c23          	sd	ra,24(sp)
    8000257c:	00813823          	sd	s0,16(sp)
    80002580:	00913423          	sd	s1,8(sp)
    80002584:	02010413          	addi	s0,sp,32
    80002588:	00050493          	mv	s1,a0
    printString("ID: ");
    8000258c:	00008517          	auipc	a0,0x8
    80002590:	b0c50513          	addi	a0,a0,-1268 # 8000a098 <CONSOLE_STATUS+0x88>
    80002594:	00003097          	auipc	ra,0x3
    80002598:	4b4080e7          	jalr	1204(ra) # 80005a48 <_Z11printStringPKc>
    printInt(ID);
    8000259c:	00000613          	li	a2,0
    800025a0:	00a00593          	li	a1,10
    800025a4:	0084a503          	lw	a0,8(s1)
    800025a8:	00003097          	auipc	ra,0x3
    800025ac:	650080e7          	jalr	1616(ra) # 80005bf8 <_Z8printIntiii>
}
    800025b0:	01813083          	ld	ra,24(sp)
    800025b4:	01013403          	ld	s0,16(sp)
    800025b8:	00813483          	ld	s1,8(sp)
    800025bc:	02010113          	addi	sp,sp,32
    800025c0:	00008067          	ret

00000000800025c4 <_ZN3Nit11konstruktorEPFvPvES0_>:

Nit* Nit::konstruktor(body funkcija, void *arg) {
    800025c4:	fd010113          	addi	sp,sp,-48
    800025c8:	02113423          	sd	ra,40(sp)
    800025cc:	02813023          	sd	s0,32(sp)
    800025d0:	00913c23          	sd	s1,24(sp)
    800025d4:	01213823          	sd	s2,16(sp)
    800025d8:	01313423          	sd	s3,8(sp)
    800025dc:	03010413          	addi	s0,sp,48
    800025e0:	00050993          	mv	s3,a0
    800025e4:	00058913          	mv	s2,a1
    static Nit* running;
    int prekid=0;
    bool finished=false;
    bool killed=false;

    static void *operator new(uint64 n){return Memorija::alokacija(n);}
    800025e8:	05000513          	li	a0,80
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	300080e7          	jalr	768(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    800025f4:	00050493          	mv	s1,a0
    void* arg;
    uint64 *stek;
    uint64 vreme;
    List <Nit> onHold;

    Nit(body funkcija1, void* arg){
    800025f8:	00052023          	sw	zero,0(a0)
    800025fc:	00050223          	sb	zero,4(a0)
    80002600:	000502a3          	sb	zero,5(a0)
    80002604:	0000a717          	auipc	a4,0xa
    80002608:	53c70713          	addi	a4,a4,1340 # 8000cb40 <_ZN3Nit3IDDE>
    8000260c:	00072783          	lw	a5,0(a4)
    80002610:	0017869b          	addiw	a3,a5,1
    80002614:	00d72023          	sw	a3,0(a4)
    80002618:	00f52423          	sw	a5,8(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    8000261c:	04053023          	sd	zero,64(a0)
    80002620:	04053423          	sd	zero,72(a0)
        funkcija=funkcija1;
    80002624:	03353023          	sd	s3,32(a0)
        finished=false;
        this->arg=arg;
    80002628:	03253423          	sd	s2,40(a0)
        struktura1.pc=(uint64)&omotac;
    8000262c:	00000797          	auipc	a5,0x0
    80002630:	14c78793          	addi	a5,a5,332 # 80002778 <_ZN3Nit6omotacEv>
    80002634:	00f53823          	sd	a5,16(a0)
        if(funkcija1!=nullptr) stek = (uint64*)Memorija::alokacija(DEFAULT_STACK_SIZE* sizeof(uint64));
    80002638:	00098a63          	beqz	s3,8000264c <_ZN3Nit11konstruktorEPFvPvES0_+0x88>
    8000263c:	00008537          	lui	a0,0x8
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	2ac080e7          	jalr	684(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    80002648:	02a4b823          	sd	a0,48(s1)
        if(funkcija1!=nullptr) struktura1.sp=(uint64)&stek[DEFAULT_STACK_SIZE];
    8000264c:	00098a63          	beqz	s3,80002660 <_ZN3Nit11konstruktorEPFvPvES0_+0x9c>
    80002650:	0304b783          	ld	a5,48(s1)
    80002654:	00008737          	lui	a4,0x8
    80002658:	00e787b3          	add	a5,a5,a4
    8000265c:	00f4bc23          	sd	a5,24(s1)
        if(funkcija1!=nullptr) vreme = DEFAULT_TIME_SLICE;
    80002660:	00098663          	beqz	s3,8000266c <_ZN3Nit11konstruktorEPFvPvES0_+0xa8>
    80002664:	00200793          	li	a5,2
    80002668:	02f4bc23          	sd	a5,56(s1)
    Nit* t = new Nit(funkcija, arg);
    if(Nit::running==nullptr) {Nit::running=t;}
    8000266c:	0000a797          	auipc	a5,0xa
    80002670:	4dc7b783          	ld	a5,1244(a5) # 8000cb48 <_ZN3Nit7runningE>
    80002674:	02078863          	beqz	a5,800026a4 <_ZN3Nit11konstruktorEPFvPvES0_+0xe0>
    Scheduler::put(t);
    80002678:	00048513          	mv	a0,s1
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	eb8080e7          	jalr	-328(ra) # 80001534 <_ZN9Scheduler3putEP3Nit>
    return t;
}
    80002684:	00048513          	mv	a0,s1
    80002688:	02813083          	ld	ra,40(sp)
    8000268c:	02013403          	ld	s0,32(sp)
    80002690:	01813483          	ld	s1,24(sp)
    80002694:	01013903          	ld	s2,16(sp)
    80002698:	00813983          	ld	s3,8(sp)
    8000269c:	03010113          	addi	sp,sp,48
    800026a0:	00008067          	ret
    if(Nit::running==nullptr) {Nit::running=t;}
    800026a4:	0000a797          	auipc	a5,0xa
    800026a8:	4a97b223          	sd	s1,1188(a5) # 8000cb48 <_ZN3Nit7runningE>
    800026ac:	fcdff06f          	j	80002678 <_ZN3Nit11konstruktorEPFvPvES0_+0xb4>
    800026b0:	00050913          	mv	s2,a0
    static void operator delete(void* p){Memorija::oslobadjanje(p);}
    800026b4:	00048513          	mv	a0,s1
    800026b8:	fffff097          	auipc	ra,0xfffff
    800026bc:	354080e7          	jalr	852(ra) # 80001a0c <_ZN8Memorija12oslobadjanjeEPv>
    800026c0:	00090513          	mv	a0,s2
    800026c4:	0000c097          	auipc	ra,0xc
    800026c8:	564080e7          	jalr	1380(ra) # 8000ec28 <_Unwind_Resume>

00000000800026cc <_ZN3Nit8dispatchEv>:

void Nit::dispatch() {
    800026cc:	fe010113          	addi	sp,sp,-32
    800026d0:	00113c23          	sd	ra,24(sp)
    800026d4:	00813823          	sd	s0,16(sp)
    800026d8:	00913423          	sd	s1,8(sp)
    800026dc:	02010413          	addi	s0,sp,32

    Nit* old = Nit::running;
    800026e0:	0000a497          	auipc	s1,0xa
    800026e4:	4684b483          	ld	s1,1128(s1) # 8000cb48 <_ZN3Nit7runningE>
    if(!old->finished  && !old->killed) Scheduler::put(old);
    800026e8:	0044c783          	lbu	a5,4(s1)
    800026ec:	00079663          	bnez	a5,800026f8 <_ZN3Nit8dispatchEv+0x2c>
    800026f0:	0054c783          	lbu	a5,5(s1)
    800026f4:	02078c63          	beqz	a5,8000272c <_ZN3Nit8dispatchEv+0x60>
    running = Scheduler::get();
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	dbc080e7          	jalr	-580(ra) # 800014b4 <_ZN9Scheduler3getEv>
    80002700:	0000a797          	auipc	a5,0xa
    80002704:	44a7b423          	sd	a0,1096(a5) # 8000cb48 <_ZN3Nit7runningE>

    contextSwitch(&old->struktura1,&running->struktura1);
    80002708:	01050593          	addi	a1,a0,16 # 8010 <_entry-0x7fff7ff0>
    8000270c:	01048513          	addi	a0,s1,16
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	af0080e7          	jalr	-1296(ra) # 80001200 <contextSwitch>
}
    80002718:	01813083          	ld	ra,24(sp)
    8000271c:	01013403          	ld	s0,16(sp)
    80002720:	00813483          	ld	s1,8(sp)
    80002724:	02010113          	addi	sp,sp,32
    80002728:	00008067          	ret
    if(!old->finished  && !old->killed) Scheduler::put(old);
    8000272c:	00048513          	mv	a0,s1
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	e04080e7          	jalr	-508(ra) # 80001534 <_ZN9Scheduler3putEP3Nit>
    80002738:	fc1ff06f          	j	800026f8 <_ZN3Nit8dispatchEv+0x2c>

000000008000273c <_ZN3Nit5pomocEv>:

void Nit::pomoc() {
    8000273c:	fe010113          	addi	sp,sp,-32
    80002740:	00813c23          	sd	s0,24(sp)
    80002744:	02010413          	addi	s0,sp,32
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    80002748:	100027f3          	csrr	a5,sstatus
    8000274c:	fef43423          	sd	a5,-24(s0)
    sstatus&=~256;
    80002750:	fe843783          	ld	a5,-24(s0)
    80002754:	eff7f793          	andi	a5,a5,-257
    80002758:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
    8000275c:	fe843783          	ld	a5,-24(s0)
    80002760:	10079073          	csrw	sstatus,a5

    __asm__ volatile("csrw sepc, ra");
    80002764:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002768:	10200073          	sret
}
    8000276c:	01813403          	ld	s0,24(sp)
    80002770:	02010113          	addi	sp,sp,32
    80002774:	00008067          	ret

0000000080002778 <_ZN3Nit6omotacEv>:

void Nit::omotac() {
    80002778:	fe010113          	addi	sp,sp,-32
    8000277c:	00113c23          	sd	ra,24(sp)
    80002780:	00813823          	sd	s0,16(sp)
    80002784:	00913423          	sd	s1,8(sp)
    80002788:	02010413          	addi	s0,sp,32
    Nit::pomoc();
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	fb0080e7          	jalr	-80(ra) # 8000273c <_ZN3Nit5pomocEv>
    running->funkcija(Nit::running->arg);
    80002794:	0000a497          	auipc	s1,0xa
    80002798:	3ac48493          	addi	s1,s1,940 # 8000cb40 <_ZN3Nit3IDDE>
    8000279c:	0084b783          	ld	a5,8(s1)
    800027a0:	0207b703          	ld	a4,32(a5)
    800027a4:	0287b503          	ld	a0,40(a5)
    800027a8:	000700e7          	jalr	a4 # 8000 <_entry-0x7fff8000>
    running->finished=true;
    800027ac:	0084b783          	ld	a5,8(s1)
    800027b0:	00100713          	li	a4,1
    800027b4:	00e78223          	sb	a4,4(a5)
    800027b8:	0240006f          	j	800027dc <_ZN3Nit6omotacEv+0x64>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    800027bc:	0407b423          	sd	zero,72(a5)

        T *ret = elem->data;
    800027c0:	00053483          	ld	s1,0(a0)
        delete elem;
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	9c8080e7          	jalr	-1592(ra) # 8000218c <_ZdlPv>
    while(Nit::running->onHold.peekFirst()!= nullptr){
        Nit* temp = Nit::running->onHold.removeFirst();
        temp->finished=false;
    800027cc:	00048223          	sb	zero,4(s1)
        Scheduler::put(temp);
    800027d0:	00048513          	mv	a0,s1
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	d60080e7          	jalr	-672(ra) # 80001534 <_ZN9Scheduler3putEP3Nit>
    while(Nit::running->onHold.peekFirst()!= nullptr){
    800027dc:	0000a797          	auipc	a5,0xa
    800027e0:	36c7b783          	ld	a5,876(a5) # 8000cb48 <_ZN3Nit7runningE>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    800027e4:	0407b503          	ld	a0,64(a5)
    800027e8:	00050e63          	beqz	a0,80002804 <_ZN3Nit6omotacEv+0x8c>
        return head->data;
    800027ec:	00053703          	ld	a4,0(a0)
    800027f0:	00070a63          	beqz	a4,80002804 <_ZN3Nit6omotacEv+0x8c>
        head = head->next;
    800027f4:	00853703          	ld	a4,8(a0)
    800027f8:	04e7b023          	sd	a4,64(a5)
        if (!head) { tail = 0; }
    800027fc:	fc0712e3          	bnez	a4,800027c0 <_ZN3Nit6omotacEv+0x48>
    80002800:	fbdff06f          	j	800027bc <_ZN3Nit6omotacEv+0x44>
    }
    thread_dispatch();
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	af8080e7          	jalr	-1288(ra) # 800012fc <_Z15thread_dispatchv>
}
    8000280c:	01813083          	ld	ra,24(sp)
    80002810:	01013403          	ld	s0,16(sp)
    80002814:	00813483          	ld	s1,8(sp)
    80002818:	02010113          	addi	sp,sp,32
    8000281c:	00008067          	ret

0000000080002820 <_ZN3Nit4joinEv>:

void Nit::join() {
    80002820:	fe010113          	addi	sp,sp,-32
    80002824:	00113c23          	sd	ra,24(sp)
    80002828:	00813823          	sd	s0,16(sp)
    8000282c:	00913423          	sd	s1,8(sp)
    80002830:	01213023          	sd	s2,0(sp)
    80002834:	02010413          	addi	s0,sp,32
    80002838:	00050493          	mv	s1,a0
    Nit* thread1 = this;
    Nit* thread2 = Nit::running;
    8000283c:	0000a917          	auipc	s2,0xa
    80002840:	30c93903          	ld	s2,780(s2) # 8000cb48 <_ZN3Nit7runningE>
        Elem *elem = new Elem(data, 0);
    80002844:	01000513          	li	a0,16
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	91c080e7          	jalr	-1764(ra) # 80002164 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002850:	01253023          	sd	s2,0(a0)
    80002854:	00053423          	sd	zero,8(a0)
        if (tail)
    80002858:	0484b783          	ld	a5,72(s1)
    8000285c:	02078a63          	beqz	a5,80002890 <_ZN3Nit4joinEv+0x70>
            tail->next = elem;
    80002860:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002864:	04a4b423          	sd	a0,72(s1)

    thread1->onHold.addLast(thread2);
    thread2->finished=true;
    80002868:	00100793          	li	a5,1
    8000286c:	00f90223          	sb	a5,4(s2)

    Nit::dispatch();
    80002870:	00000097          	auipc	ra,0x0
    80002874:	e5c080e7          	jalr	-420(ra) # 800026cc <_ZN3Nit8dispatchEv>
}
    80002878:	01813083          	ld	ra,24(sp)
    8000287c:	01013403          	ld	s0,16(sp)
    80002880:	00813483          	ld	s1,8(sp)
    80002884:	00013903          	ld	s2,0(sp)
    80002888:	02010113          	addi	sp,sp,32
    8000288c:	00008067          	ret
            head = tail = elem;
    80002890:	04a4b423          	sd	a0,72(s1)
    80002894:	04a4b023          	sd	a0,64(s1)
    80002898:	fd1ff06f          	j	80002868 <_ZN3Nit4joinEv+0x48>

000000008000289c <_ZL14initializationv>:





static void initialization(){
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00813423          	sd	s0,8(sp)
    800028a4:	01010413          	addi	s0,sp,16
    functions[0x01] = &mem__alloc;
    800028a8:	0000a797          	auipc	a5,0xa
    800028ac:	2b878793          	addi	a5,a5,696 # 8000cb60 <_ZL9functions>
    800028b0:	00000717          	auipc	a4,0x0
    800028b4:	16c70713          	addi	a4,a4,364 # 80002a1c <_Z10mem__allocv>
    800028b8:	00e7b423          	sd	a4,8(a5)
    functions[0x02] = &mem__free;
    800028bc:	00000717          	auipc	a4,0x0
    800028c0:	21070713          	addi	a4,a4,528 # 80002acc <_Z9mem__freev>
    800028c4:	00e7b823          	sd	a4,16(a5)
    functions[0x11] = &thread__create;
    800028c8:	00000717          	auipc	a4,0x0
    800028cc:	23070713          	addi	a4,a4,560 # 80002af8 <_Z14thread__createv>
    800028d0:	08e7b423          	sd	a4,136(a5)
    functions[0x12] = &thread__exit;
    800028d4:	00000717          	auipc	a4,0x0
    800028d8:	0c470713          	addi	a4,a4,196 # 80002998 <_Z12thread__exitv>
    800028dc:	08e7b823          	sd	a4,144(a5)
    functions[0x13] = &thread__dispatch;
    800028e0:	00000717          	auipc	a4,0x0
    800028e4:	0f470713          	addi	a4,a4,244 # 800029d4 <_Z16thread__dispatchv>
    800028e8:	08e7bc23          	sd	a4,152(a5)
    functions[0x14] = &thread__join;
    800028ec:	00000717          	auipc	a4,0x0
    800028f0:	27c70713          	addi	a4,a4,636 # 80002b68 <_Z12thread__joinv>
    800028f4:	0ae7b023          	sd	a4,160(a5)
    functions[0x21] = &sem__open;
    800028f8:	00000717          	auipc	a4,0x0
    800028fc:	15070713          	addi	a4,a4,336 # 80002a48 <_Z9sem__openv>
    80002900:	10e7b423          	sd	a4,264(a5)
    functions[0x22] = &sem__close;
    80002904:	00000717          	auipc	a4,0x0
    80002908:	2d070713          	addi	a4,a4,720 # 80002bd4 <_Z10sem__closev>
    8000290c:	10e7b823          	sd	a4,272(a5)
    functions[0x23] = &sem__wait;
    80002910:	00000717          	auipc	a4,0x0
    80002914:	30070713          	addi	a4,a4,768 # 80002c10 <_Z9sem__waitv>
    80002918:	10e7bc23          	sd	a4,280(a5)
    functions[0x24] = &sem__signal;
    8000291c:	00000717          	auipc	a4,0x0
    80002920:	37070713          	addi	a4,a4,880 # 80002c8c <_Z11sem__signalv>
    80002924:	12e7b023          	sd	a4,288(a5)
    functions[0x31] = &time__sleep;
    80002928:	00000717          	auipc	a4,0x0
    8000292c:	39870713          	addi	a4,a4,920 # 80002cc0 <_Z11time__sleepv>
    80002930:	18e7b423          	sd	a4,392(a5)
    functions[0x41] = &getc_;
    80002934:	00000717          	auipc	a4,0x0
    80002938:	3bc70713          	addi	a4,a4,956 # 80002cf0 <_Z5getc_v>
    8000293c:	20e7b423          	sd	a4,520(a5)
    functions[0x42] = &putc_;
    80002940:	00000717          	auipc	a4,0x0
    80002944:	3fc70713          	addi	a4,a4,1020 # 80002d3c <_Z5putc_v>
    80002948:	20e7b823          	sd	a4,528(a5)
    functions[0x70] = &promena;
    8000294c:	00000717          	auipc	a4,0x0
    80002950:	01870713          	addi	a4,a4,24 # 80002964 <_Z7promenav>
    80002954:	38e7b023          	sd	a4,896(a5)
}
    80002958:	00813403          	ld	s0,8(sp)
    8000295c:	01010113          	addi	sp,sp,16
    80002960:	00008067          	ret

0000000080002964 <_Z7promenav>:
    Konzola::putizlaz(c);

    __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
}
void promena(){
    80002964:	fe010113          	addi	sp,sp,-32
    80002968:	00813c23          	sd	s0,24(sp)
    8000296c:	02010413          	addi	s0,sp,32
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    80002970:	100027f3          	csrr	a5,sstatus
    80002974:	fef43423          	sd	a5,-24(s0)
    sstatus|=256;
    80002978:	fe843783          	ld	a5,-24(s0)
    8000297c:	1007e793          	ori	a5,a5,256
    80002980:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
    80002984:	fe843783          	ld	a5,-24(s0)
    80002988:	10079073          	csrw	sstatus,a5
    8000298c:	01813403          	ld	s0,24(sp)
    80002990:	02010113          	addi	sp,sp,32
    80002994:	00008067          	ret

0000000080002998 <_Z12thread__exitv>:
void thread__exit(){
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00113423          	sd	ra,8(sp)
    800029a0:	00813023          	sd	s0,0(sp)
    800029a4:	01010413          	addi	s0,sp,16
    Nit::running->finished=true;
    800029a8:	0000a797          	auipc	a5,0xa
    800029ac:	1307b783          	ld	a5,304(a5) # 8000cad8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800029b0:	0007b783          	ld	a5,0(a5)
    800029b4:	00100713          	li	a4,1
    800029b8:	00e78223          	sb	a4,4(a5)
    Nit::dispatch();
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	d10080e7          	jalr	-752(ra) # 800026cc <_ZN3Nit8dispatchEv>
}
    800029c4:	00813083          	ld	ra,8(sp)
    800029c8:	00013403          	ld	s0,0(sp)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret

00000000800029d4 <_Z16thread__dispatchv>:
void thread__dispatch(){
    800029d4:	fe010113          	addi	sp,sp,-32
    800029d8:	00113c23          	sd	ra,24(sp)
    800029dc:	00813823          	sd	s0,16(sp)
    800029e0:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    800029e4:	141027f3          	csrr	a5,sepc
    800029e8:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    800029ec:	100027f3          	csrr	a5,sstatus
    800029f0:	fef43023          	sd	a5,-32(s0)
    Nit::dispatch();
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	cd8080e7          	jalr	-808(ra) # 800026cc <_ZN3Nit8dispatchEv>
    __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    800029fc:	fe843783          	ld	a5,-24(s0)
    80002a00:	14179073          	csrw	sepc,a5
    __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80002a04:	fe043783          	ld	a5,-32(s0)
    80002a08:	10079073          	csrw	sstatus,a5
}
    80002a0c:	01813083          	ld	ra,24(sp)
    80002a10:	01013403          	ld	s0,16(sp)
    80002a14:	02010113          	addi	sp,sp,32
    80002a18:	00008067          	ret

0000000080002a1c <_Z10mem__allocv>:
void mem__alloc(){
    80002a1c:	ff010113          	addi	sp,sp,-16
    80002a20:	00113423          	sd	ra,8(sp)
    80002a24:	00813023          	sd	s0,0(sp)
    80002a28:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv %0, a1" : "=r" (size));
    80002a2c:	00058513          	mv	a0,a1
    Memorija::alokacija(size);
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	ebc080e7          	jalr	-324(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
}
    80002a38:	00813083          	ld	ra,8(sp)
    80002a3c:	00013403          	ld	s0,0(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret

0000000080002a48 <_Z9sem__openv>:
void sem__open(){
    80002a48:	fc010113          	addi	sp,sp,-64
    80002a4c:	02113c23          	sd	ra,56(sp)
    80002a50:	02813823          	sd	s0,48(sp)
    80002a54:	02913423          	sd	s1,40(sp)
    80002a58:	04010413          	addi	s0,sp,64
    __asm__ volatile ("mv %0, a2" : "=r" (val));
    80002a5c:	00060793          	mv	a5,a2
    80002a60:	fcf42a23          	sw	a5,-44(s0)
    __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002a64:	00058793          	mv	a5,a1
    80002a68:	fcf43c23          	sd	a5,-40(s0)
    *handle = new Semafor(val);
    80002a6c:	fd442483          	lw	s1,-44(s0)
    80002a70:	0004849b          	sext.w	s1,s1

    struktura *tail=nullptr;
    struktura *head=nullptr;
public:
    static void *operator new(uint64 n){
        return Memorija::alokacija(n);
    80002a74:	01800513          	li	a0,24
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	e74080e7          	jalr	-396(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    }
    static void operator delete[](void* p){
        Memorija::oslobadjanje(p);
    }

    Semafor(unsigned n=1):val(n){}
    80002a80:	00952023          	sw	s1,0(a0)
    80002a84:	00052223          	sw	zero,4(a0)
    80002a88:	00053423          	sd	zero,8(a0)
    80002a8c:	00053823          	sd	zero,16(a0)
    80002a90:	fd843783          	ld	a5,-40(s0)
    80002a94:	00a7b023          	sd	a0,0(a5)
    if(*handle==nullptr) {
    80002a98:	fd843783          	ld	a5,-40(s0)
    80002a9c:	0007b783          	ld	a5,0(a5)
    80002aa0:	00078c63          	beqz	a5,80002ab8 <_Z9sem__openv+0x70>
}
    80002aa4:	03813083          	ld	ra,56(sp)
    80002aa8:	03013403          	ld	s0,48(sp)
    80002aac:	02813483          	ld	s1,40(sp)
    80002ab0:	04010113          	addi	sp,sp,64
    80002ab4:	00008067          	ret
        uint64 volatile a0=-2;
    80002ab8:	ffe00793          	li	a5,-2
    80002abc:	fcf43423          	sd	a5,-56(s0)
        __asm__ volatile ("mv a0, %0" : : "r" (a0));
    80002ac0:	fc843783          	ld	a5,-56(s0)
    80002ac4:	00078513          	mv	a0,a5
}
    80002ac8:	fddff06f          	j	80002aa4 <_Z9sem__openv+0x5c>

0000000080002acc <_Z9mem__freev>:
void mem__free(){
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00113423          	sd	ra,8(sp)
    80002ad4:	00813023          	sd	s0,0(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv %0, a1" : "=r" (size));
    80002adc:	00058513          	mv	a0,a1
    Memorija::oslobadjanje(size);
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	f2c080e7          	jalr	-212(ra) # 80001a0c <_ZN8Memorija12oslobadjanjeEPv>
}
    80002ae8:	00813083          	ld	ra,8(sp)
    80002aec:	00013403          	ld	s0,0(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret

0000000080002af8 <_Z14thread__createv>:
void thread__create(){
    80002af8:	fc010113          	addi	sp,sp,-64
    80002afc:	02113c23          	sd	ra,56(sp)
    80002b00:	02813823          	sd	s0,48(sp)
    80002b04:	02913423          	sd	s1,40(sp)
    80002b08:	04010413          	addi	s0,sp,64
    __asm__ volatile ("mv %0, a3" : "=r" (arg));
    80002b0c:	00068793          	mv	a5,a3
    80002b10:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("mv %0, a2" : "=r" (start_routine));
    80002b14:	00060513          	mv	a0,a2
    __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002b18:	00058793          	mv	a5,a1
    80002b1c:	fcf43823          	sd	a5,-48(s0)
    *handle = Nit::konstruktor(start_routine,arg);
    80002b20:	fd843583          	ld	a1,-40(s0)
    80002b24:	fd043483          	ld	s1,-48(s0)
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	a9c080e7          	jalr	-1380(ra) # 800025c4 <_ZN3Nit11konstruktorEPFvPvES0_>
    80002b30:	00a4b023          	sd	a0,0(s1)
    if(*handle==nullptr) {
    80002b34:	fd043783          	ld	a5,-48(s0)
    80002b38:	0007b783          	ld	a5,0(a5)
    80002b3c:	00078c63          	beqz	a5,80002b54 <_Z14thread__createv+0x5c>
}
    80002b40:	03813083          	ld	ra,56(sp)
    80002b44:	03013403          	ld	s0,48(sp)
    80002b48:	02813483          	ld	s1,40(sp)
    80002b4c:	04010113          	addi	sp,sp,64
    80002b50:	00008067          	ret
        uint64 volatile a0=-2;
    80002b54:	ffe00793          	li	a5,-2
    80002b58:	fcf43423          	sd	a5,-56(s0)
        __asm__ volatile ("mv a0, %0" : : "r" (a0));
    80002b5c:	fc843783          	ld	a5,-56(s0)
    80002b60:	00078513          	mv	a0,a5
}
    80002b64:	fddff06f          	j	80002b40 <_Z14thread__createv+0x48>

0000000080002b68 <_Z12thread__joinv>:
void thread__join(){
    80002b68:	fd010113          	addi	sp,sp,-48
    80002b6c:	02113423          	sd	ra,40(sp)
    80002b70:	02813023          	sd	s0,32(sp)
    80002b74:	03010413          	addi	s0,sp,48
    __asm__ volatile ("mv %0, a1" : "=r" (thread));
    80002b78:	00058793          	mv	a5,a1
    80002b7c:	fef43423          	sd	a5,-24(s0)
    if(thread!=nullptr && !thread->finished){
    80002b80:	fe843783          	ld	a5,-24(s0)
    80002b84:	00078863          	beqz	a5,80002b94 <_Z12thread__joinv+0x2c>
    80002b88:	fe843783          	ld	a5,-24(s0)
    80002b8c:	0047c783          	lbu	a5,4(a5)
    80002b90:	00078a63          	beqz	a5,80002ba4 <_Z12thread__joinv+0x3c>
}
    80002b94:	02813083          	ld	ra,40(sp)
    80002b98:	02013403          	ld	s0,32(sp)
    80002b9c:	03010113          	addi	sp,sp,48
    80002ba0:	00008067          	ret
        __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    80002ba4:	141027f3          	csrr	a5,sepc
    80002ba8:	fcf43c23          	sd	a5,-40(s0)
        __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    80002bac:	100027f3          	csrr	a5,sstatus
    80002bb0:	fef43023          	sd	a5,-32(s0)
        thread->join();
    80002bb4:	fe843503          	ld	a0,-24(s0)
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	c68080e7          	jalr	-920(ra) # 80002820 <_ZN3Nit4joinEv>
        __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    80002bc0:	fd843783          	ld	a5,-40(s0)
    80002bc4:	14179073          	csrw	sepc,a5
        __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80002bc8:	fe043783          	ld	a5,-32(s0)
    80002bcc:	10079073          	csrw	sstatus,a5
}
    80002bd0:	fc5ff06f          	j	80002b94 <_Z12thread__joinv+0x2c>

0000000080002bd4 <_Z10sem__closev>:
void sem__close(){
    80002bd4:	fe010113          	addi	sp,sp,-32
    80002bd8:	00113c23          	sd	ra,24(sp)
    80002bdc:	00813823          	sd	s0,16(sp)
    80002be0:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv %0, a1" : "=r" (id));
    80002be4:	00058793          	mv	a5,a1
    80002be8:	fef43423          	sd	a5,-24(s0)
    id->close();
    80002bec:	fe843503          	ld	a0,-24(s0)
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	110080e7          	jalr	272(ra) # 80001d00 <_ZN7Semafor5closeEv>
    __asm__ volatile ("mv a0, %0" : : "r" (a0));
    80002bf8:	00000793          	li	a5,0
    80002bfc:	00078513          	mv	a0,a5
}
    80002c00:	01813083          	ld	ra,24(sp)
    80002c04:	01013403          	ld	s0,16(sp)
    80002c08:	02010113          	addi	sp,sp,32
    80002c0c:	00008067          	ret

0000000080002c10 <_Z9sem__waitv>:
void sem__wait(){
    80002c10:	fd010113          	addi	sp,sp,-48
    80002c14:	02113423          	sd	ra,40(sp)
    80002c18:	02813023          	sd	s0,32(sp)
    80002c1c:	03010413          	addi	s0,sp,48
    __asm__ volatile ("mv %0, a1" : "=r" (id));
    80002c20:	00058793          	mv	a5,a1
    80002c24:	fef43423          	sd	a5,-24(s0)
    a0=id->wait();
    80002c28:	fe843503          	ld	a0,-24(s0)
    80002c2c:	fffff097          	auipc	ra,0xfffff
    80002c30:	fac080e7          	jalr	-84(ra) # 80001bd8 <_ZN7Semafor4waitEv>
    80002c34:	fea42223          	sw	a0,-28(s0)
    __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    80002c38:	141027f3          	csrr	a5,sepc
    80002c3c:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    80002c40:	100027f3          	csrr	a5,sstatus
    80002c44:	fcf43823          	sd	a5,-48(s0)
    Nit::dispatch();
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	a84080e7          	jalr	-1404(ra) # 800026cc <_ZN3Nit8dispatchEv>
    __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    80002c50:	fd843783          	ld	a5,-40(s0)
    80002c54:	14179073          	csrw	sepc,a5
    __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80002c58:	fd043783          	ld	a5,-48(s0)
    80002c5c:	10079073          	csrw	sstatus,a5
    a0=Nit::running->prekid;
    80002c60:	0000a797          	auipc	a5,0xa
    80002c64:	e787b783          	ld	a5,-392(a5) # 8000cad8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002c68:	0007b783          	ld	a5,0(a5)
    80002c6c:	0007a783          	lw	a5,0(a5)
    80002c70:	fef42223          	sw	a5,-28(s0)
    __asm__ volatile ("mv a0, %0" : : "r" (a0));
    80002c74:	fe442783          	lw	a5,-28(s0)
    80002c78:	00078513          	mv	a0,a5
}
    80002c7c:	02813083          	ld	ra,40(sp)
    80002c80:	02013403          	ld	s0,32(sp)
    80002c84:	03010113          	addi	sp,sp,48
    80002c88:	00008067          	ret

0000000080002c8c <_Z11sem__signalv>:
void sem__signal(){
    80002c8c:	fe010113          	addi	sp,sp,-32
    80002c90:	00113c23          	sd	ra,24(sp)
    80002c94:	00813823          	sd	s0,16(sp)
    80002c98:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv %0, a1" : "=r" (id));
    80002c9c:	00058793          	mv	a5,a1
    80002ca0:	fef43423          	sd	a5,-24(s0)
    id->signal();
    80002ca4:	fe843503          	ld	a0,-24(s0)
    80002ca8:	fffff097          	auipc	ra,0xfffff
    80002cac:	fdc080e7          	jalr	-36(ra) # 80001c84 <_ZN7Semafor6signalEv>
}
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	01013403          	ld	s0,16(sp)
    80002cb8:	02010113          	addi	sp,sp,32
    80002cbc:	00008067          	ret

0000000080002cc0 <_Z11time__sleepv>:
void time__sleep(){
    80002cc0:	ff010113          	addi	sp,sp,-16
    80002cc4:	00113423          	sd	ra,8(sp)
    80002cc8:	00813023          	sd	s0,0(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv %0, a1" : "=r" (t));
    80002cd0:	00058513          	mv	a0,a1
    Scheduler::threadsleep(t);
    80002cd4:	0005051b          	sext.w	a0,a0
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	97c080e7          	jalr	-1668(ra) # 80001654 <_ZN9Scheduler11threadsleepEi>
}
    80002ce0:	00813083          	ld	ra,8(sp)
    80002ce4:	00013403          	ld	s0,0(sp)
    80002ce8:	01010113          	addi	sp,sp,16
    80002cec:	00008067          	ret

0000000080002cf0 <_Z5getc_v>:
void getc_(){
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    80002d00:	141027f3          	csrr	a5,sepc
    80002d04:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    80002d08:	100027f3          	csrr	a5,sstatus
    80002d0c:	fef43023          	sd	a5,-32(s0)
    Konzola::getulaz();
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	5f8080e7          	jalr	1528(ra) # 80003308 <_ZN7Konzola7getulazEv>
    __asm__ volatile("sd a0, 80(s0)");
    80002d18:	04a43823          	sd	a0,80(s0)
    __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    80002d1c:	fe843783          	ld	a5,-24(s0)
    80002d20:	14179073          	csrw	sepc,a5
    __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80002d24:	fe043783          	ld	a5,-32(s0)
    80002d28:	10079073          	csrw	sstatus,a5
}
    80002d2c:	01813083          	ld	ra,24(sp)
    80002d30:	01013403          	ld	s0,16(sp)
    80002d34:	02010113          	addi	sp,sp,32
    80002d38:	00008067          	ret

0000000080002d3c <_Z5putc_v>:
void putc_(){
    80002d3c:	fd010113          	addi	sp,sp,-48
    80002d40:	02113423          	sd	ra,40(sp)
    80002d44:	02813023          	sd	s0,32(sp)
    80002d48:	03010413          	addi	s0,sp,48
    __asm__ volatile ("mv %0, a1" : "=r" (c));
    80002d4c:	00058793          	mv	a5,a1
    80002d50:	fef407a3          	sb	a5,-17(s0)
    __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    80002d54:	141027f3          	csrr	a5,sepc
    80002d58:	fef43023          	sd	a5,-32(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    80002d5c:	100027f3          	csrr	a5,sstatus
    80002d60:	fcf43c23          	sd	a5,-40(s0)
    Konzola::putizlaz(c);
    80002d64:	fef44503          	lbu	a0,-17(s0)
    80002d68:	0ff57513          	andi	a0,a0,255
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	664080e7          	jalr	1636(ra) # 800033d0 <_ZN7Konzola8putizlazEi>
    __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    80002d74:	fe043783          	ld	a5,-32(s0)
    80002d78:	14179073          	csrw	sepc,a5
    __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80002d7c:	fd843783          	ld	a5,-40(s0)
    80002d80:	10079073          	csrw	sstatus,a5
}
    80002d84:	02813083          	ld	ra,40(sp)
    80002d88:	02013403          	ld	s0,32(sp)
    80002d8c:	03010113          	addi	sp,sp,48
    80002d90:	00008067          	ret

0000000080002d94 <handle>:
extern "C" void handle(){
    80002d94:	fb010113          	addi	sp,sp,-80
    80002d98:	04113423          	sd	ra,72(sp)
    80002d9c:	04813023          	sd	s0,64(sp)
    80002da0:	02913c23          	sd	s1,56(sp)
    80002da4:	05010413          	addi	s0,sp,80
    if(functions[0x01]==nullptr){
    80002da8:	0000a797          	auipc	a5,0xa
    80002dac:	dc07b783          	ld	a5,-576(a5) # 8000cb68 <_ZL9functions+0x8>
    80002db0:	06078463          	beqz	a5,80002e18 <handle+0x84>
    __asm__ volatile("csrr %0, scause" : "=r" (prekid));
    80002db4:	142027f3          	csrr	a5,scause
    80002db8:	fcf43c23          	sd	a5,-40(s0)
    if(prekid%16>=8 && !(prekid >> 63)){
    80002dbc:	fd843783          	ld	a5,-40(s0)
    80002dc0:	0087f793          	andi	a5,a5,8
    80002dc4:	06078063          	beqz	a5,80002e24 <handle+0x90>
    80002dc8:	fd843783          	ld	a5,-40(s0)
    80002dcc:	0407cc63          	bltz	a5,80002e24 <handle+0x90>
        __asm__ volatile("csrr x3, sepc");
    80002dd0:	141021f3          	csrr	gp,sepc
        __asm__ volatile("addi x3,x3,4");
    80002dd4:	00418193          	addi	gp,gp,4
        __asm__ volatile("csrw sepc, x3");
    80002dd8:	14119073          	csrw	sepc,gp
        __asm__ volatile("mv %0, a0" : "=r" (a0));
    80002ddc:	00050793          	mv	a5,a0
    80002de0:	fcf43023          	sd	a5,-64(s0)
        functions[a0]();
    80002de4:	fc043783          	ld	a5,-64(s0)
    80002de8:	00379713          	slli	a4,a5,0x3
    80002dec:	0000a797          	auipc	a5,0xa
    80002df0:	d7478793          	addi	a5,a5,-652 # 8000cb60 <_ZL9functions>
    80002df4:	00e787b3          	add	a5,a5,a4
    80002df8:	0007b783          	ld	a5,0(a5)
    80002dfc:	000780e7          	jalr	a5
        __asm__ volatile ("sd a0, 80(s0)");
    80002e00:	04a43823          	sd	a0,80(s0)
}
    80002e04:	04813083          	ld	ra,72(sp)
    80002e08:	04013403          	ld	s0,64(sp)
    80002e0c:	03813483          	ld	s1,56(sp)
    80002e10:	05010113          	addi	sp,sp,80
    80002e14:	00008067          	ret
        initialization();
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	a84080e7          	jalr	-1404(ra) # 8000289c <_ZL14initializationv>
    80002e20:	f95ff06f          	j	80002db4 <handle+0x20>
        if(prekid == 0x8000000000000001UL){
    80002e24:	fd843703          	ld	a4,-40(s0)
    80002e28:	fff00793          	li	a5,-1
    80002e2c:	03f79793          	slli	a5,a5,0x3f
    80002e30:	00178793          	addi	a5,a5,1
    80002e34:	08f70c63          	beq	a4,a5,80002ecc <handle+0x138>
        else if(prekid == 0x8000000000000009UL){
    80002e38:	fd843703          	ld	a4,-40(s0)
    80002e3c:	fff00793          	li	a5,-1
    80002e40:	03f79793          	slli	a5,a5,0x3f
    80002e44:	00978793          	addi	a5,a5,9
    80002e48:	0ef70663          	beq	a4,a5,80002f34 <handle+0x1a0>
        else if(prekid!=0x8000000000000001UL) {
    80002e4c:	fd843703          	ld	a4,-40(s0)
    80002e50:	fff00793          	li	a5,-1
    80002e54:	03f79793          	slli	a5,a5,0x3f
    80002e58:	00178793          	addi	a5,a5,1
    80002e5c:	faf704e3          	beq	a4,a5,80002e04 <handle+0x70>
            if (scauseFlag == false) {
    80002e60:	0000a797          	auipc	a5,0xa
    80002e64:	cf87c783          	lbu	a5,-776(a5) # 8000cb58 <_ZL10scauseFlag>
    80002e68:	f8079ee3          	bnez	a5,80002e04 <handle+0x70>
                printString("BNT: \n");
    80002e6c:	00007517          	auipc	a0,0x7
    80002e70:	23450513          	addi	a0,a0,564 # 8000a0a0 <CONSOLE_STATUS+0x90>
    80002e74:	00003097          	auipc	ra,0x3
    80002e78:	bd4080e7          	jalr	-1068(ra) # 80005a48 <_Z11printStringPKc>
                printInt(prekid >> 63);
    80002e7c:	fd843503          	ld	a0,-40(s0)
    80002e80:	00000613          	li	a2,0
    80002e84:	00a00593          	li	a1,10
    80002e88:	00052513          	slti	a0,a0,0
    80002e8c:	00003097          	auipc	ra,0x3
    80002e90:	d6c080e7          	jalr	-660(ra) # 80005bf8 <_Z8printIntiii>
                printString("value: \n");
    80002e94:	00007517          	auipc	a0,0x7
    80002e98:	21450513          	addi	a0,a0,532 # 8000a0a8 <CONSOLE_STATUS+0x98>
    80002e9c:	00003097          	auipc	ra,0x3
    80002ea0:	bac080e7          	jalr	-1108(ra) # 80005a48 <_Z11printStringPKc>
                printInt(prekid % 16);
    80002ea4:	fd843503          	ld	a0,-40(s0)
    80002ea8:	00000613          	li	a2,0
    80002eac:	00a00593          	li	a1,10
    80002eb0:	00f57513          	andi	a0,a0,15
    80002eb4:	00003097          	auipc	ra,0x3
    80002eb8:	d44080e7          	jalr	-700(ra) # 80005bf8 <_Z8printIntiii>
                scauseFlag=true;
    80002ebc:	00100793          	li	a5,1
    80002ec0:	0000a717          	auipc	a4,0xa
    80002ec4:	c8f70c23          	sb	a5,-872(a4) # 8000cb58 <_ZL10scauseFlag>
}
    80002ec8:	f3dff06f          	j	80002e04 <handle+0x70>
            Nit::tajmer++;
    80002ecc:	0000a497          	auipc	s1,0xa
    80002ed0:	c044b483          	ld	s1,-1020(s1) # 8000cad0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ed4:	0004a783          	lw	a5,0(s1)
    80002ed8:	0017879b          	addiw	a5,a5,1
    80002edc:	00f4a023          	sw	a5,0(s1)
            Scheduler::dekremntacija(1);
    80002ee0:	00100513          	li	a0,1
    80002ee4:	ffffe097          	auipc	ra,0xffffe
    80002ee8:	6d4080e7          	jalr	1748(ra) # 800015b8 <_ZN9Scheduler13dekremntacijaEi>
            if (Nit::tajmer % (DEFAULT_TIME_SLICE) == 0) {
    80002eec:	0004a783          	lw	a5,0(s1)
    80002ef0:	0017f793          	andi	a5,a5,1
    80002ef4:	00078863          	beqz	a5,80002f04 <handle+0x170>
            __asm__ volatile("csrc sip, %0"::"r" (maska));
    80002ef8:	00200793          	li	a5,2
    80002efc:	1447b073          	csrc	sip,a5
    80002f00:	f05ff06f          	j	80002e04 <handle+0x70>
                __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    80002f04:	141027f3          	csrr	a5,sepc
    80002f08:	fcf43423          	sd	a5,-56(s0)
                __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    80002f0c:	100027f3          	csrr	a5,sstatus
    80002f10:	fcf43823          	sd	a5,-48(s0)
                Nit::dispatch();
    80002f14:	fffff097          	auipc	ra,0xfffff
    80002f18:	7b8080e7          	jalr	1976(ra) # 800026cc <_ZN3Nit8dispatchEv>
                __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    80002f1c:	fc843783          	ld	a5,-56(s0)
    80002f20:	14179073          	csrw	sepc,a5
                __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    80002f24:	fd043783          	ld	a5,-48(s0)
    80002f28:	10079073          	csrw	sstatus,a5
                Nit::tajmer = 0;
    80002f2c:	0004a023          	sw	zero,0(s1)
    80002f30:	fc9ff06f          	j	80002ef8 <handle+0x164>
            int volatile h = plic_claim();
    80002f34:	00005097          	auipc	ra,0x5
    80002f38:	8b0080e7          	jalr	-1872(ra) # 800077e4 <plic_claim>
    80002f3c:	faa42e23          	sw	a0,-68(s0)
            if(h==CONSOLE_IRQ){
    80002f40:	fbc42783          	lw	a5,-68(s0)
    80002f44:	0007879b          	sext.w	a5,a5
    80002f48:	00a00713          	li	a4,10
    80002f4c:	00e78a63          	beq	a5,a4,80002f60 <handle+0x1cc>
            plic_complete(CONSOLE_IRQ);
    80002f50:	00a00513          	li	a0,10
    80002f54:	00005097          	auipc	ra,0x5
    80002f58:	8c8080e7          	jalr	-1848(ra) # 8000781c <plic_complete>
    80002f5c:	ea9ff06f          	j	80002e04 <handle+0x70>
                while(*(uint8*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    80002f60:	0000a797          	auipc	a5,0xa
    80002f64:	b287b783          	ld	a5,-1240(a5) # 8000ca88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f68:	0007b783          	ld	a5,0(a5)
    80002f6c:	0007c783          	lbu	a5,0(a5)
    80002f70:	0017f793          	andi	a5,a5,1
    80002f74:	fc078ee3          	beqz	a5,80002f50 <handle+0x1bc>
                    Konzola::putulaz(*(char*)CONSOLE_RX_DATA);
    80002f78:	0000a797          	auipc	a5,0xa
    80002f7c:	b087b783          	ld	a5,-1272(a5) # 8000ca80 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002f80:	0007b783          	ld	a5,0(a5)
    80002f84:	0007c503          	lbu	a0,0(a5)
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	2a8080e7          	jalr	680(ra) # 80003230 <_ZN7Konzola7putulazEi>
                while(*(uint8*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    80002f90:	fd1ff06f          	j	80002f60 <handle+0x1cc>

0000000080002f94 <_ZN5BaferC1Ei>:
//

#include "../h/_KernelBuffer.h"
#include "../h/_KernelScheduler.h"

Bafer::Bafer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002f94:	fe010113          	addi	sp,sp,-32
    80002f98:	00113c23          	sd	ra,24(sp)
    80002f9c:	00813823          	sd	s0,16(sp)
    80002fa0:	00913423          	sd	s1,8(sp)
    80002fa4:	01213023          	sd	s2,0(sp)
    80002fa8:	02010413          	addi	s0,sp,32
    80002fac:	00050493          	mv	s1,a0
    80002fb0:	00058913          	mv	s2,a1
    80002fb4:	0015879b          	addiw	a5,a1,1
    80002fb8:	0007851b          	sext.w	a0,a5
    80002fbc:	00f4a023          	sw	a5,0(s1)
    80002fc0:	0004a223          	sw	zero,4(s1)
    80002fc4:	0004a823          	sw	zero,16(s1)
    80002fc8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)Memorija::alokacija(sizeof(int) * cap);
    80002fcc:	00251513          	slli	a0,a0,0x2
    80002fd0:	fffff097          	auipc	ra,0xfffff
    80002fd4:	91c080e7          	jalr	-1764(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    80002fd8:	00a4b423          	sd	a0,8(s1)
        return Memorija::alokacija(n);
    80002fdc:	01800513          	li	a0,24
    80002fe0:	fffff097          	auipc	ra,0xfffff
    80002fe4:	90c080e7          	jalr	-1780(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    Semafor(unsigned n=1):val(n){}
    80002fe8:	00052023          	sw	zero,0(a0)
    80002fec:	00052223          	sw	zero,4(a0)
    80002ff0:	00053423          	sd	zero,8(a0)
    80002ff4:	00053823          	sd	zero,16(a0)
    itemAvailable= new Semafor(0);
    80002ff8:	02a4b023          	sd	a0,32(s1)
        return Memorija::alokacija(n);
    80002ffc:	01800513          	li	a0,24
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	8ec080e7          	jalr	-1812(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    Semafor(unsigned n=1):val(n){}
    80003008:	01252023          	sw	s2,0(a0)
    8000300c:	00052223          	sw	zero,4(a0)
    80003010:	00053423          	sd	zero,8(a0)
    80003014:	00053823          	sd	zero,16(a0)
    spaceAvailable=new Semafor(_cap);
    80003018:	00a4bc23          	sd	a0,24(s1)
        return Memorija::alokacija(n);
    8000301c:	01800513          	li	a0,24
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	8cc080e7          	jalr	-1844(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    Semafor(unsigned n=1):val(n){}
    80003028:	00100913          	li	s2,1
    8000302c:	01252023          	sw	s2,0(a0)
    80003030:	00052223          	sw	zero,4(a0)
    80003034:	00053423          	sd	zero,8(a0)
    80003038:	00053823          	sd	zero,16(a0)
    mutexHead = new Semafor(1);
    8000303c:	02a4b423          	sd	a0,40(s1)
        return Memorija::alokacija(n);
    80003040:	01800513          	li	a0,24
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	8a8080e7          	jalr	-1880(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    Semafor(unsigned n=1):val(n){}
    8000304c:	01252023          	sw	s2,0(a0)
    80003050:	00052223          	sw	zero,4(a0)
    80003054:	00053423          	sd	zero,8(a0)
    80003058:	00053823          	sd	zero,16(a0)
    mutexTail = new Semafor(1);
    8000305c:	02a4b823          	sd	a0,48(s1)
}
    80003060:	01813083          	ld	ra,24(sp)
    80003064:	01013403          	ld	s0,16(sp)
    80003068:	00813483          	ld	s1,8(sp)
    8000306c:	00013903          	ld	s2,0(sp)
    80003070:	02010113          	addi	sp,sp,32
    80003074:	00008067          	ret

0000000080003078 <_ZN5Bafer3putEi>:

void Bafer::put(int val) {
    80003078:	fe010113          	addi	sp,sp,-32
    8000307c:	00113c23          	sd	ra,24(sp)
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	01213023          	sd	s2,0(sp)
    8000308c:	02010413          	addi	s0,sp,32
    80003090:	00050493          	mv	s1,a0
    80003094:	00058913          	mv	s2,a1
    if(spaceAvailable->wait()!=-1)
    80003098:	01853503          	ld	a0,24(a0)
    8000309c:	fffff097          	auipc	ra,0xfffff
    800030a0:	b3c080e7          	jalr	-1220(ra) # 80001bd8 <_ZN7Semafor4waitEv>
    800030a4:	fff00793          	li	a5,-1
    800030a8:	08f51463          	bne	a0,a5,80003130 <_ZN5Bafer3putEi+0xb8>
        Nit::dispatch();

    if(mutexTail->wait()!=-1)
    800030ac:	0304b503          	ld	a0,48(s1)
    800030b0:	fffff097          	auipc	ra,0xfffff
    800030b4:	b28080e7          	jalr	-1240(ra) # 80001bd8 <_ZN7Semafor4waitEv>
    800030b8:	fff00793          	li	a5,-1
    800030bc:	08f51063          	bne	a0,a5,8000313c <_ZN5Bafer3putEi+0xc4>
        Nit::dispatch();

    if(cnt<cap) {
    800030c0:	0044a703          	lw	a4,4(s1)
    800030c4:	0004a783          	lw	a5,0(s1)
    800030c8:	02f75c63          	bge	a4,a5,80003100 <_ZN5Bafer3putEi+0x88>
        buffer[tail] = val;
    800030cc:	0084b783          	ld	a5,8(s1)
    800030d0:	0144a703          	lw	a4,20(s1)
    800030d4:	00271713          	slli	a4,a4,0x2
    800030d8:	00e787b3          	add	a5,a5,a4
    800030dc:	0127a023          	sw	s2,0(a5)
        tail = (tail + 1) % cap;
    800030e0:	0144a783          	lw	a5,20(s1)
    800030e4:	0017879b          	addiw	a5,a5,1
    800030e8:	0004a703          	lw	a4,0(s1)
    800030ec:	02e7e7bb          	remw	a5,a5,a4
    800030f0:	00f4aa23          	sw	a5,20(s1)
        cnt++;
    800030f4:	0044a783          	lw	a5,4(s1)
    800030f8:	0017879b          	addiw	a5,a5,1
    800030fc:	00f4a223          	sw	a5,4(s1)
    }

    mutexTail->signal();
    80003100:	0304b503          	ld	a0,48(s1)
    80003104:	fffff097          	auipc	ra,0xfffff
    80003108:	b80080e7          	jalr	-1152(ra) # 80001c84 <_ZN7Semafor6signalEv>
    itemAvailable->signal();
    8000310c:	0204b503          	ld	a0,32(s1)
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	b74080e7          	jalr	-1164(ra) # 80001c84 <_ZN7Semafor6signalEv>
}
    80003118:	01813083          	ld	ra,24(sp)
    8000311c:	01013403          	ld	s0,16(sp)
    80003120:	00813483          	ld	s1,8(sp)
    80003124:	00013903          	ld	s2,0(sp)
    80003128:	02010113          	addi	sp,sp,32
    8000312c:	00008067          	ret
        Nit::dispatch();
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	59c080e7          	jalr	1436(ra) # 800026cc <_ZN3Nit8dispatchEv>
    80003138:	f75ff06f          	j	800030ac <_ZN5Bafer3putEi+0x34>
        Nit::dispatch();
    8000313c:	fffff097          	auipc	ra,0xfffff
    80003140:	590080e7          	jalr	1424(ra) # 800026cc <_ZN3Nit8dispatchEv>
    80003144:	f7dff06f          	j	800030c0 <_ZN5Bafer3putEi+0x48>

0000000080003148 <_ZN5Bafer3getEv>:

int Bafer::get() {
    80003148:	fe010113          	addi	sp,sp,-32
    8000314c:	00113c23          	sd	ra,24(sp)
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00913423          	sd	s1,8(sp)
    80003158:	01213023          	sd	s2,0(sp)
    8000315c:	02010413          	addi	s0,sp,32
    80003160:	00050493          	mv	s1,a0
    if(itemAvailable->wait()!=-1)
    80003164:	02053503          	ld	a0,32(a0)
    80003168:	fffff097          	auipc	ra,0xfffff
    8000316c:	a70080e7          	jalr	-1424(ra) # 80001bd8 <_ZN7Semafor4waitEv>
    80003170:	fff00793          	li	a5,-1
    80003174:	08f51063          	bne	a0,a5,800031f4 <_ZN5Bafer3getEv+0xac>
        Nit::dispatch();

    if(mutexHead->wait()!=-1)
    80003178:	0284b503          	ld	a0,40(s1)
    8000317c:	fffff097          	auipc	ra,0xfffff
    80003180:	a5c080e7          	jalr	-1444(ra) # 80001bd8 <_ZN7Semafor4waitEv>
    80003184:	fff00793          	li	a5,-1
    80003188:	06f51c63          	bne	a0,a5,80003200 <_ZN5Bafer3getEv+0xb8>
        Nit::dispatch();

    int ret=-1;
    if(cnt>0) {
    8000318c:	0044a703          	lw	a4,4(s1)
    80003190:	06e05e63          	blez	a4,8000320c <_ZN5Bafer3getEv+0xc4>
        ret = buffer[head];
    80003194:	0084b683          	ld	a3,8(s1)
    80003198:	0104a783          	lw	a5,16(s1)
    8000319c:	00279613          	slli	a2,a5,0x2
    800031a0:	00c686b3          	add	a3,a3,a2
    800031a4:	0006a903          	lw	s2,0(a3)
        head = (head + 1) % cap;
    800031a8:	0017879b          	addiw	a5,a5,1
    800031ac:	0004a683          	lw	a3,0(s1)
    800031b0:	02d7e7bb          	remw	a5,a5,a3
    800031b4:	00f4a823          	sw	a5,16(s1)
        cnt--;
    800031b8:	fff7071b          	addiw	a4,a4,-1
    800031bc:	00e4a223          	sw	a4,4(s1)
    }

    mutexHead->signal();
    800031c0:	0284b503          	ld	a0,40(s1)
    800031c4:	fffff097          	auipc	ra,0xfffff
    800031c8:	ac0080e7          	jalr	-1344(ra) # 80001c84 <_ZN7Semafor6signalEv>
    spaceAvailable->signal();
    800031cc:	0184b503          	ld	a0,24(s1)
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	ab4080e7          	jalr	-1356(ra) # 80001c84 <_ZN7Semafor6signalEv>

    return ret;
}
    800031d8:	00090513          	mv	a0,s2
    800031dc:	01813083          	ld	ra,24(sp)
    800031e0:	01013403          	ld	s0,16(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	00013903          	ld	s2,0(sp)
    800031ec:	02010113          	addi	sp,sp,32
    800031f0:	00008067          	ret
        Nit::dispatch();
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	4d8080e7          	jalr	1240(ra) # 800026cc <_ZN3Nit8dispatchEv>
    800031fc:	f7dff06f          	j	80003178 <_ZN5Bafer3getEv+0x30>
        Nit::dispatch();
    80003200:	fffff097          	auipc	ra,0xfffff
    80003204:	4cc080e7          	jalr	1228(ra) # 800026cc <_ZN3Nit8dispatchEv>
    80003208:	f85ff06f          	j	8000318c <_ZN5Bafer3getEv+0x44>
    int ret=-1;
    8000320c:	fff00913          	li	s2,-1
    80003210:	fb1ff06f          	j	800031c0 <_ZN5Bafer3getEv+0x78>

0000000080003214 <_ZN5Bafer6getCntEv>:

int Bafer::getCnt() {
    80003214:	ff010113          	addi	sp,sp,-16
    80003218:	00813423          	sd	s0,8(sp)
    8000321c:	01010413          	addi	s0,sp,16
    return cnt;
}
    80003220:	00452503          	lw	a0,4(a0)
    80003224:	00813403          	ld	s0,8(sp)
    80003228:	01010113          	addi	sp,sp,16
    8000322c:	00008067          	ret

0000000080003230 <_ZN7Konzola7putulazEi>:
Bafer* Konzola::baferizlaz = nullptr;
Bafer* Konzola::baferulaz = nullptr;

int Konzola::kapacitet=1024;

void Konzola::putulaz(int val) {
    80003230:	f9010113          	addi	sp,sp,-112
    80003234:	06113423          	sd	ra,104(sp)
    80003238:	06813023          	sd	s0,96(sp)
    8000323c:	04913c23          	sd	s1,88(sp)
    80003240:	05213823          	sd	s2,80(sp)
    80003244:	05313423          	sd	s3,72(sp)
    80003248:	07010413          	addi	s0,sp,112
    8000324c:	00050493          	mv	s1,a0
    if(baferulaz==nullptr) {
    80003250:	0000b797          	auipc	a5,0xb
    80003254:	8b07b783          	ld	a5,-1872(a5) # 8000db00 <_ZN7Konzola9baferulazE>
    80003258:	02078a63          	beqz	a5,8000328c <_ZN7Konzola7putulazEi+0x5c>
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferulaz=Bafer(kapacitet);
    }
    baferulaz->put(val);
    8000325c:	00048593          	mv	a1,s1
    80003260:	0000b517          	auipc	a0,0xb
    80003264:	8a053503          	ld	a0,-1888(a0) # 8000db00 <_ZN7Konzola9baferulazE>
    80003268:	00000097          	auipc	ra,0x0
    8000326c:	e10080e7          	jalr	-496(ra) # 80003078 <_ZN5Bafer3putEi>
}
    80003270:	06813083          	ld	ra,104(sp)
    80003274:	06013403          	ld	s0,96(sp)
    80003278:	05813483          	ld	s1,88(sp)
    8000327c:	05013903          	ld	s2,80(sp)
    80003280:	04813983          	ld	s3,72(sp)
    80003284:	07010113          	addi	sp,sp,112
    80003288:	00008067          	ret
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
    8000328c:	00009997          	auipc	s3,0x9
    80003290:	63c98993          	addi	s3,s3,1596 # 8000c8c8 <_ZN7Konzola9kapacitetE>
    80003294:	0009a783          	lw	a5,0(s3)
    80003298:	00379513          	slli	a0,a5,0x3
    8000329c:	40f50533          	sub	a0,a0,a5
    800032a0:	00351513          	slli	a0,a0,0x3
    800032a4:	ffffe097          	auipc	ra,0xffffe
    800032a8:	648080e7          	jalr	1608(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    800032ac:	0000b917          	auipc	s2,0xb
    800032b0:	85490913          	addi	s2,s2,-1964 # 8000db00 <_ZN7Konzola9baferulazE>
    800032b4:	00a93023          	sd	a0,0(s2)
        *baferulaz=Bafer(kapacitet);
    800032b8:	0009a583          	lw	a1,0(s3)
    800032bc:	f9840513          	addi	a0,s0,-104
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	cd4080e7          	jalr	-812(ra) # 80002f94 <_ZN5BaferC1Ei>
    800032c8:	00093783          	ld	a5,0(s2)
    800032cc:	fa043803          	ld	a6,-96(s0)
    800032d0:	fa843503          	ld	a0,-88(s0)
    800032d4:	fb043583          	ld	a1,-80(s0)
    800032d8:	fb843603          	ld	a2,-72(s0)
    800032dc:	fc043683          	ld	a3,-64(s0)
    800032e0:	fc843703          	ld	a4,-56(s0)
    800032e4:	f9843883          	ld	a7,-104(s0)
    800032e8:	0117b023          	sd	a7,0(a5)
    800032ec:	0107b423          	sd	a6,8(a5)
    800032f0:	00a7b823          	sd	a0,16(a5)
    800032f4:	00b7bc23          	sd	a1,24(a5)
    800032f8:	02c7b023          	sd	a2,32(a5)
    800032fc:	02d7b423          	sd	a3,40(a5)
    80003300:	02e7b823          	sd	a4,48(a5)
    80003304:	f59ff06f          	j	8000325c <_ZN7Konzola7putulazEi+0x2c>

0000000080003308 <_ZN7Konzola7getulazEv>:

int Konzola::getulaz() {
    80003308:	fa010113          	addi	sp,sp,-96
    8000330c:	04113c23          	sd	ra,88(sp)
    80003310:	04813823          	sd	s0,80(sp)
    80003314:	04913423          	sd	s1,72(sp)
    80003318:	05213023          	sd	s2,64(sp)
    8000331c:	06010413          	addi	s0,sp,96
    if(baferulaz==nullptr) {
    80003320:	0000a797          	auipc	a5,0xa
    80003324:	7e07b783          	ld	a5,2016(a5) # 8000db00 <_ZN7Konzola9baferulazE>
    80003328:	02078663          	beqz	a5,80003354 <_ZN7Konzola7getulazEv+0x4c>
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferulaz=Bafer(kapacitet);
    }
    return baferulaz->get();
    8000332c:	0000a517          	auipc	a0,0xa
    80003330:	7d453503          	ld	a0,2004(a0) # 8000db00 <_ZN7Konzola9baferulazE>
    80003334:	00000097          	auipc	ra,0x0
    80003338:	e14080e7          	jalr	-492(ra) # 80003148 <_ZN5Bafer3getEv>
}
    8000333c:	05813083          	ld	ra,88(sp)
    80003340:	05013403          	ld	s0,80(sp)
    80003344:	04813483          	ld	s1,72(sp)
    80003348:	04013903          	ld	s2,64(sp)
    8000334c:	06010113          	addi	sp,sp,96
    80003350:	00008067          	ret
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
    80003354:	00009917          	auipc	s2,0x9
    80003358:	57490913          	addi	s2,s2,1396 # 8000c8c8 <_ZN7Konzola9kapacitetE>
    8000335c:	00092783          	lw	a5,0(s2)
    80003360:	00379513          	slli	a0,a5,0x3
    80003364:	40f50533          	sub	a0,a0,a5
    80003368:	00351513          	slli	a0,a0,0x3
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	580080e7          	jalr	1408(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    80003374:	0000a497          	auipc	s1,0xa
    80003378:	78c48493          	addi	s1,s1,1932 # 8000db00 <_ZN7Konzola9baferulazE>
    8000337c:	00a4b023          	sd	a0,0(s1)
        *baferulaz=Bafer(kapacitet);
    80003380:	00092583          	lw	a1,0(s2)
    80003384:	fa840513          	addi	a0,s0,-88
    80003388:	00000097          	auipc	ra,0x0
    8000338c:	c0c080e7          	jalr	-1012(ra) # 80002f94 <_ZN5BaferC1Ei>
    80003390:	0004b783          	ld	a5,0(s1)
    80003394:	fb043803          	ld	a6,-80(s0)
    80003398:	fb843503          	ld	a0,-72(s0)
    8000339c:	fc043583          	ld	a1,-64(s0)
    800033a0:	fc843603          	ld	a2,-56(s0)
    800033a4:	fd043683          	ld	a3,-48(s0)
    800033a8:	fd843703          	ld	a4,-40(s0)
    800033ac:	fa843883          	ld	a7,-88(s0)
    800033b0:	0117b023          	sd	a7,0(a5)
    800033b4:	0107b423          	sd	a6,8(a5)
    800033b8:	00a7b823          	sd	a0,16(a5)
    800033bc:	00b7bc23          	sd	a1,24(a5)
    800033c0:	02c7b023          	sd	a2,32(a5)
    800033c4:	02d7b423          	sd	a3,40(a5)
    800033c8:	02e7b823          	sd	a4,48(a5)
    800033cc:	f61ff06f          	j	8000332c <_ZN7Konzola7getulazEv+0x24>

00000000800033d0 <_ZN7Konzola8putizlazEi>:

void Konzola::putizlaz(int val) {
    800033d0:	f9010113          	addi	sp,sp,-112
    800033d4:	06113423          	sd	ra,104(sp)
    800033d8:	06813023          	sd	s0,96(sp)
    800033dc:	04913c23          	sd	s1,88(sp)
    800033e0:	05213823          	sd	s2,80(sp)
    800033e4:	05313423          	sd	s3,72(sp)
    800033e8:	07010413          	addi	s0,sp,112
    800033ec:	00050493          	mv	s1,a0
    if(baferizlaz==nullptr) {
    800033f0:	0000a797          	auipc	a5,0xa
    800033f4:	7187b783          	ld	a5,1816(a5) # 8000db08 <_ZN7Konzola10baferizlazE>
    800033f8:	02078a63          	beqz	a5,8000342c <_ZN7Konzola8putizlazEi+0x5c>
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferizlaz=Bafer(kapacitet);
    }
    baferizlaz->put(val);
    800033fc:	00048593          	mv	a1,s1
    80003400:	0000a517          	auipc	a0,0xa
    80003404:	70853503          	ld	a0,1800(a0) # 8000db08 <_ZN7Konzola10baferizlazE>
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	c70080e7          	jalr	-912(ra) # 80003078 <_ZN5Bafer3putEi>
}
    80003410:	06813083          	ld	ra,104(sp)
    80003414:	06013403          	ld	s0,96(sp)
    80003418:	05813483          	ld	s1,88(sp)
    8000341c:	05013903          	ld	s2,80(sp)
    80003420:	04813983          	ld	s3,72(sp)
    80003424:	07010113          	addi	sp,sp,112
    80003428:	00008067          	ret
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
    8000342c:	00009997          	auipc	s3,0x9
    80003430:	49c98993          	addi	s3,s3,1180 # 8000c8c8 <_ZN7Konzola9kapacitetE>
    80003434:	0009a783          	lw	a5,0(s3)
    80003438:	00379513          	slli	a0,a5,0x3
    8000343c:	40f50533          	sub	a0,a0,a5
    80003440:	00351513          	slli	a0,a0,0x3
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	4a8080e7          	jalr	1192(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    8000344c:	0000a917          	auipc	s2,0xa
    80003450:	6b490913          	addi	s2,s2,1716 # 8000db00 <_ZN7Konzola9baferulazE>
    80003454:	00a93423          	sd	a0,8(s2)
        *baferizlaz=Bafer(kapacitet);
    80003458:	0009a583          	lw	a1,0(s3)
    8000345c:	f9840513          	addi	a0,s0,-104
    80003460:	00000097          	auipc	ra,0x0
    80003464:	b34080e7          	jalr	-1228(ra) # 80002f94 <_ZN5BaferC1Ei>
    80003468:	00893783          	ld	a5,8(s2)
    8000346c:	fa043803          	ld	a6,-96(s0)
    80003470:	fa843503          	ld	a0,-88(s0)
    80003474:	fb043583          	ld	a1,-80(s0)
    80003478:	fb843603          	ld	a2,-72(s0)
    8000347c:	fc043683          	ld	a3,-64(s0)
    80003480:	fc843703          	ld	a4,-56(s0)
    80003484:	f9843883          	ld	a7,-104(s0)
    80003488:	0117b023          	sd	a7,0(a5)
    8000348c:	0107b423          	sd	a6,8(a5)
    80003490:	00a7b823          	sd	a0,16(a5)
    80003494:	00b7bc23          	sd	a1,24(a5)
    80003498:	02c7b023          	sd	a2,32(a5)
    8000349c:	02d7b423          	sd	a3,40(a5)
    800034a0:	02e7b823          	sd	a4,48(a5)
    800034a4:	f59ff06f          	j	800033fc <_ZN7Konzola8putizlazEi+0x2c>

00000000800034a8 <_ZN7Konzola8getizlazEv>:

int Konzola::getizlaz() {
    800034a8:	fa010113          	addi	sp,sp,-96
    800034ac:	04113c23          	sd	ra,88(sp)
    800034b0:	04813823          	sd	s0,80(sp)
    800034b4:	04913423          	sd	s1,72(sp)
    800034b8:	05213023          	sd	s2,64(sp)
    800034bc:	06010413          	addi	s0,sp,96
    if(baferizlaz==nullptr) {
    800034c0:	0000a797          	auipc	a5,0xa
    800034c4:	6487b783          	ld	a5,1608(a5) # 8000db08 <_ZN7Konzola10baferizlazE>
    800034c8:	02078663          	beqz	a5,800034f4 <_ZN7Konzola8getizlazEv+0x4c>
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferizlaz=Bafer(kapacitet);
    }
    return baferizlaz->get();
    800034cc:	0000a517          	auipc	a0,0xa
    800034d0:	63c53503          	ld	a0,1596(a0) # 8000db08 <_ZN7Konzola10baferizlazE>
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	c74080e7          	jalr	-908(ra) # 80003148 <_ZN5Bafer3getEv>
}
    800034dc:	05813083          	ld	ra,88(sp)
    800034e0:	05013403          	ld	s0,80(sp)
    800034e4:	04813483          	ld	s1,72(sp)
    800034e8:	04013903          	ld	s2,64(sp)
    800034ec:	06010113          	addi	sp,sp,96
    800034f0:	00008067          	ret
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
    800034f4:	00009917          	auipc	s2,0x9
    800034f8:	3d490913          	addi	s2,s2,980 # 8000c8c8 <_ZN7Konzola9kapacitetE>
    800034fc:	00092783          	lw	a5,0(s2)
    80003500:	00379513          	slli	a0,a5,0x3
    80003504:	40f50533          	sub	a0,a0,a5
    80003508:	00351513          	slli	a0,a0,0x3
    8000350c:	ffffe097          	auipc	ra,0xffffe
    80003510:	3e0080e7          	jalr	992(ra) # 800018ec <_ZN8Memorija9alokacijaEm>
    80003514:	0000a497          	auipc	s1,0xa
    80003518:	5ec48493          	addi	s1,s1,1516 # 8000db00 <_ZN7Konzola9baferulazE>
    8000351c:	00a4b423          	sd	a0,8(s1)
        *baferizlaz=Bafer(kapacitet);
    80003520:	00092583          	lw	a1,0(s2)
    80003524:	fa840513          	addi	a0,s0,-88
    80003528:	00000097          	auipc	ra,0x0
    8000352c:	a6c080e7          	jalr	-1428(ra) # 80002f94 <_ZN5BaferC1Ei>
    80003530:	0084b783          	ld	a5,8(s1)
    80003534:	fb043803          	ld	a6,-80(s0)
    80003538:	fb843503          	ld	a0,-72(s0)
    8000353c:	fc043583          	ld	a1,-64(s0)
    80003540:	fc843603          	ld	a2,-56(s0)
    80003544:	fd043683          	ld	a3,-48(s0)
    80003548:	fd843703          	ld	a4,-40(s0)
    8000354c:	fa843883          	ld	a7,-88(s0)
    80003550:	0117b023          	sd	a7,0(a5)
    80003554:	0107b423          	sd	a6,8(a5)
    80003558:	00a7b823          	sd	a0,16(a5)
    8000355c:	00b7bc23          	sd	a1,24(a5)
    80003560:	02c7b023          	sd	a2,32(a5)
    80003564:	02d7b423          	sd	a3,40(a5)
    80003568:	02e7b823          	sd	a4,48(a5)
    8000356c:	f61ff06f          	j	800034cc <_ZN7Konzola8getizlazEv+0x24>

0000000080003570 <_ZN7Konzola8getcntbiEv>:

int Konzola::getcntbi() {
    80003570:	ff010113          	addi	sp,sp,-16
    80003574:	00113423          	sd	ra,8(sp)
    80003578:	00813023          	sd	s0,0(sp)
    8000357c:	01010413          	addi	s0,sp,16
    return baferizlaz->getCnt();
    80003580:	0000a517          	auipc	a0,0xa
    80003584:	58853503          	ld	a0,1416(a0) # 8000db08 <_ZN7Konzola10baferizlazE>
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	c8c080e7          	jalr	-884(ra) # 80003214 <_ZN5Bafer6getCntEv>
}
    80003590:	00813083          	ld	ra,8(sp)
    80003594:	00013403          	ld	s0,0(sp)
    80003598:	01010113          	addi	sp,sp,16
    8000359c:	00008067          	ret

00000000800035a0 <_ZN7Konzola8getcntbuEv>:

int Konzola::getcntbu() {
    800035a0:	ff010113          	addi	sp,sp,-16
    800035a4:	00113423          	sd	ra,8(sp)
    800035a8:	00813023          	sd	s0,0(sp)
    800035ac:	01010413          	addi	s0,sp,16
    return baferulaz->getCnt();
    800035b0:	0000a517          	auipc	a0,0xa
    800035b4:	55053503          	ld	a0,1360(a0) # 8000db00 <_ZN7Konzola9baferulazE>
    800035b8:	00000097          	auipc	ra,0x0
    800035bc:	c5c080e7          	jalr	-932(ra) # 80003214 <_ZN5Bafer6getCntEv>
}
    800035c0:	00813083          	ld	ra,8(sp)
    800035c4:	00013403          	ld	s0,0(sp)
    800035c8:	01010113          	addi	sp,sp,16
    800035cc:	00008067          	ret

00000000800035d0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800035d0:	fe010113          	addi	sp,sp,-32
    800035d4:	00113c23          	sd	ra,24(sp)
    800035d8:	00813823          	sd	s0,16(sp)
    800035dc:	00913423          	sd	s1,8(sp)
    800035e0:	01213023          	sd	s2,0(sp)
    800035e4:	02010413          	addi	s0,sp,32
    800035e8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800035ec:	00000913          	li	s2,0
    800035f0:	00c0006f          	j	800035fc <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035f4:	ffffe097          	auipc	ra,0xffffe
    800035f8:	d08080e7          	jalr	-760(ra) # 800012fc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	e40080e7          	jalr	-448(ra) # 8000143c <_Z4getcv>
    80003604:	0005059b          	sext.w	a1,a0
    80003608:	01b00793          	li	a5,27
    8000360c:	02f58a63          	beq	a1,a5,80003640 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003610:	0084b503          	ld	a0,8(s1)
    80003614:	00003097          	auipc	ra,0x3
    80003618:	418080e7          	jalr	1048(ra) # 80006a2c <_ZN6Buffer3putEi>
        i++;
    8000361c:	0019071b          	addiw	a4,s2,1
    80003620:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003624:	0004a683          	lw	a3,0(s1)
    80003628:	0026979b          	slliw	a5,a3,0x2
    8000362c:	00d787bb          	addw	a5,a5,a3
    80003630:	0017979b          	slliw	a5,a5,0x1
    80003634:	02f767bb          	remw	a5,a4,a5
    80003638:	fc0792e3          	bnez	a5,800035fc <_ZL16producerKeyboardPv+0x2c>
    8000363c:	fb9ff06f          	j	800035f4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003640:	00100793          	li	a5,1
    80003644:	0000a717          	auipc	a4,0xa
    80003648:	4cf72623          	sw	a5,1228(a4) # 8000db10 <_ZL9threadEnd>
    data->buffer->put('!');
    8000364c:	02100593          	li	a1,33
    80003650:	0084b503          	ld	a0,8(s1)
    80003654:	00003097          	auipc	ra,0x3
    80003658:	3d8080e7          	jalr	984(ra) # 80006a2c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000365c:	0104b503          	ld	a0,16(s1)
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	d7c080e7          	jalr	-644(ra) # 800013dc <_Z10sem_signalP7Semafor>
}
    80003668:	01813083          	ld	ra,24(sp)
    8000366c:	01013403          	ld	s0,16(sp)
    80003670:	00813483          	ld	s1,8(sp)
    80003674:	00013903          	ld	s2,0(sp)
    80003678:	02010113          	addi	sp,sp,32
    8000367c:	00008067          	ret

0000000080003680 <_ZL8producerPv>:

static void producer(void *arg) {
    80003680:	fe010113          	addi	sp,sp,-32
    80003684:	00113c23          	sd	ra,24(sp)
    80003688:	00813823          	sd	s0,16(sp)
    8000368c:	00913423          	sd	s1,8(sp)
    80003690:	01213023          	sd	s2,0(sp)
    80003694:	02010413          	addi	s0,sp,32
    80003698:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000369c:	00000913          	li	s2,0
    800036a0:	00c0006f          	j	800036ac <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	c58080e7          	jalr	-936(ra) # 800012fc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800036ac:	0000a797          	auipc	a5,0xa
    800036b0:	4647a783          	lw	a5,1124(a5) # 8000db10 <_ZL9threadEnd>
    800036b4:	02079e63          	bnez	a5,800036f0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800036b8:	0004a583          	lw	a1,0(s1)
    800036bc:	0305859b          	addiw	a1,a1,48
    800036c0:	0084b503          	ld	a0,8(s1)
    800036c4:	00003097          	auipc	ra,0x3
    800036c8:	368080e7          	jalr	872(ra) # 80006a2c <_ZN6Buffer3putEi>
        i++;
    800036cc:	0019071b          	addiw	a4,s2,1
    800036d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800036d4:	0004a683          	lw	a3,0(s1)
    800036d8:	0026979b          	slliw	a5,a3,0x2
    800036dc:	00d787bb          	addw	a5,a5,a3
    800036e0:	0017979b          	slliw	a5,a5,0x1
    800036e4:	02f767bb          	remw	a5,a4,a5
    800036e8:	fc0792e3          	bnez	a5,800036ac <_ZL8producerPv+0x2c>
    800036ec:	fb9ff06f          	j	800036a4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800036f0:	0104b503          	ld	a0,16(s1)
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	ce8080e7          	jalr	-792(ra) # 800013dc <_Z10sem_signalP7Semafor>
}
    800036fc:	01813083          	ld	ra,24(sp)
    80003700:	01013403          	ld	s0,16(sp)
    80003704:	00813483          	ld	s1,8(sp)
    80003708:	00013903          	ld	s2,0(sp)
    8000370c:	02010113          	addi	sp,sp,32
    80003710:	00008067          	ret

0000000080003714 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003714:	fd010113          	addi	sp,sp,-48
    80003718:	02113423          	sd	ra,40(sp)
    8000371c:	02813023          	sd	s0,32(sp)
    80003720:	00913c23          	sd	s1,24(sp)
    80003724:	01213823          	sd	s2,16(sp)
    80003728:	01313423          	sd	s3,8(sp)
    8000372c:	03010413          	addi	s0,sp,48
    80003730:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003734:	00000993          	li	s3,0
    80003738:	01c0006f          	j	80003754 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	bc0080e7          	jalr	-1088(ra) # 800012fc <_Z15thread_dispatchv>
    80003744:	0500006f          	j	80003794 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003748:	00a00513          	li	a0,10
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	d1c080e7          	jalr	-740(ra) # 80001468 <_Z4putcc>
    while (!threadEnd) {
    80003754:	0000a797          	auipc	a5,0xa
    80003758:	3bc7a783          	lw	a5,956(a5) # 8000db10 <_ZL9threadEnd>
    8000375c:	06079063          	bnez	a5,800037bc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003760:	00893503          	ld	a0,8(s2)
    80003764:	00003097          	auipc	ra,0x3
    80003768:	358080e7          	jalr	856(ra) # 80006abc <_ZN6Buffer3getEv>
        i++;
    8000376c:	0019849b          	addiw	s1,s3,1
    80003770:	0004899b          	sext.w	s3,s1
        putc(key);
    80003774:	0ff57513          	andi	a0,a0,255
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	cf0080e7          	jalr	-784(ra) # 80001468 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003780:	00092703          	lw	a4,0(s2)
    80003784:	0027179b          	slliw	a5,a4,0x2
    80003788:	00e787bb          	addw	a5,a5,a4
    8000378c:	02f4e7bb          	remw	a5,s1,a5
    80003790:	fa0786e3          	beqz	a5,8000373c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003794:	05000793          	li	a5,80
    80003798:	02f4e4bb          	remw	s1,s1,a5
    8000379c:	fa049ce3          	bnez	s1,80003754 <_ZL8consumerPv+0x40>
    800037a0:	fa9ff06f          	j	80003748 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800037a4:	00893503          	ld	a0,8(s2)
    800037a8:	00003097          	auipc	ra,0x3
    800037ac:	314080e7          	jalr	788(ra) # 80006abc <_ZN6Buffer3getEv>
        putc(key);
    800037b0:	0ff57513          	andi	a0,a0,255
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	cb4080e7          	jalr	-844(ra) # 80001468 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800037bc:	00893503          	ld	a0,8(s2)
    800037c0:	00003097          	auipc	ra,0x3
    800037c4:	388080e7          	jalr	904(ra) # 80006b48 <_ZN6Buffer6getCntEv>
    800037c8:	fca04ee3          	bgtz	a0,800037a4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800037cc:	01093503          	ld	a0,16(s2)
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	c0c080e7          	jalr	-1012(ra) # 800013dc <_Z10sem_signalP7Semafor>
}
    800037d8:	02813083          	ld	ra,40(sp)
    800037dc:	02013403          	ld	s0,32(sp)
    800037e0:	01813483          	ld	s1,24(sp)
    800037e4:	01013903          	ld	s2,16(sp)
    800037e8:	00813983          	ld	s3,8(sp)
    800037ec:	03010113          	addi	sp,sp,48
    800037f0:	00008067          	ret

00000000800037f4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800037f4:	f9010113          	addi	sp,sp,-112
    800037f8:	06113423          	sd	ra,104(sp)
    800037fc:	06813023          	sd	s0,96(sp)
    80003800:	04913c23          	sd	s1,88(sp)
    80003804:	05213823          	sd	s2,80(sp)
    80003808:	05313423          	sd	s3,72(sp)
    8000380c:	05413023          	sd	s4,64(sp)
    80003810:	03513c23          	sd	s5,56(sp)
    80003814:	03613823          	sd	s6,48(sp)
    80003818:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000381c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003820:	00007517          	auipc	a0,0x7
    80003824:	89850513          	addi	a0,a0,-1896 # 8000a0b8 <CONSOLE_STATUS+0xa8>
    80003828:	00002097          	auipc	ra,0x2
    8000382c:	220080e7          	jalr	544(ra) # 80005a48 <_Z11printStringPKc>
    getString(input, 30);
    80003830:	01e00593          	li	a1,30
    80003834:	fa040493          	addi	s1,s0,-96
    80003838:	00048513          	mv	a0,s1
    8000383c:	00002097          	auipc	ra,0x2
    80003840:	294080e7          	jalr	660(ra) # 80005ad0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003844:	00048513          	mv	a0,s1
    80003848:	00002097          	auipc	ra,0x2
    8000384c:	360080e7          	jalr	864(ra) # 80005ba8 <_Z11stringToIntPKc>
    80003850:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003854:	00007517          	auipc	a0,0x7
    80003858:	88450513          	addi	a0,a0,-1916 # 8000a0d8 <CONSOLE_STATUS+0xc8>
    8000385c:	00002097          	auipc	ra,0x2
    80003860:	1ec080e7          	jalr	492(ra) # 80005a48 <_Z11printStringPKc>
    getString(input, 30);
    80003864:	01e00593          	li	a1,30
    80003868:	00048513          	mv	a0,s1
    8000386c:	00002097          	auipc	ra,0x2
    80003870:	264080e7          	jalr	612(ra) # 80005ad0 <_Z9getStringPci>
    n = stringToInt(input);
    80003874:	00048513          	mv	a0,s1
    80003878:	00002097          	auipc	ra,0x2
    8000387c:	330080e7          	jalr	816(ra) # 80005ba8 <_Z11stringToIntPKc>
    80003880:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003884:	00007517          	auipc	a0,0x7
    80003888:	87450513          	addi	a0,a0,-1932 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    8000388c:	00002097          	auipc	ra,0x2
    80003890:	1bc080e7          	jalr	444(ra) # 80005a48 <_Z11printStringPKc>
    80003894:	00000613          	li	a2,0
    80003898:	00a00593          	li	a1,10
    8000389c:	00090513          	mv	a0,s2
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	358080e7          	jalr	856(ra) # 80005bf8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800038a8:	00007517          	auipc	a0,0x7
    800038ac:	86850513          	addi	a0,a0,-1944 # 8000a110 <CONSOLE_STATUS+0x100>
    800038b0:	00002097          	auipc	ra,0x2
    800038b4:	198080e7          	jalr	408(ra) # 80005a48 <_Z11printStringPKc>
    800038b8:	00000613          	li	a2,0
    800038bc:	00a00593          	li	a1,10
    800038c0:	00048513          	mv	a0,s1
    800038c4:	00002097          	auipc	ra,0x2
    800038c8:	334080e7          	jalr	820(ra) # 80005bf8 <_Z8printIntiii>
    printString(".\n");
    800038cc:	00007517          	auipc	a0,0x7
    800038d0:	85c50513          	addi	a0,a0,-1956 # 8000a128 <CONSOLE_STATUS+0x118>
    800038d4:	00002097          	auipc	ra,0x2
    800038d8:	174080e7          	jalr	372(ra) # 80005a48 <_Z11printStringPKc>
    if(threadNum > n) {
    800038dc:	0324c463          	blt	s1,s2,80003904 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800038e0:	03205c63          	blez	s2,80003918 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800038e4:	03800513          	li	a0,56
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	87c080e7          	jalr	-1924(ra) # 80002164 <_Znwm>
    800038f0:	00050a13          	mv	s4,a0
    800038f4:	00048593          	mv	a1,s1
    800038f8:	00003097          	auipc	ra,0x3
    800038fc:	098080e7          	jalr	152(ra) # 80006990 <_ZN6BufferC1Ei>
    80003900:	0300006f          	j	80003930 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003904:	00007517          	auipc	a0,0x7
    80003908:	82c50513          	addi	a0,a0,-2004 # 8000a130 <CONSOLE_STATUS+0x120>
    8000390c:	00002097          	auipc	ra,0x2
    80003910:	13c080e7          	jalr	316(ra) # 80005a48 <_Z11printStringPKc>
        return;
    80003914:	0140006f          	j	80003928 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003918:	00007517          	auipc	a0,0x7
    8000391c:	85850513          	addi	a0,a0,-1960 # 8000a170 <CONSOLE_STATUS+0x160>
    80003920:	00002097          	auipc	ra,0x2
    80003924:	128080e7          	jalr	296(ra) # 80005a48 <_Z11printStringPKc>
        return;
    80003928:	000b0113          	mv	sp,s6
    8000392c:	1500006f          	j	80003a7c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003930:	00000593          	li	a1,0
    80003934:	0000a517          	auipc	a0,0xa
    80003938:	1e450513          	addi	a0,a0,484 # 8000db18 <_ZL10waitForAll>
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	a0c080e7          	jalr	-1524(ra) # 80001348 <_Z8sem_openPP7Semaforj>
    thread_t threads[threadNum];
    80003944:	00391793          	slli	a5,s2,0x3
    80003948:	00f78793          	addi	a5,a5,15
    8000394c:	ff07f793          	andi	a5,a5,-16
    80003950:	40f10133          	sub	sp,sp,a5
    80003954:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003958:	0019071b          	addiw	a4,s2,1
    8000395c:	00171793          	slli	a5,a4,0x1
    80003960:	00e787b3          	add	a5,a5,a4
    80003964:	00379793          	slli	a5,a5,0x3
    80003968:	00f78793          	addi	a5,a5,15
    8000396c:	ff07f793          	andi	a5,a5,-16
    80003970:	40f10133          	sub	sp,sp,a5
    80003974:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003978:	00191613          	slli	a2,s2,0x1
    8000397c:	012607b3          	add	a5,a2,s2
    80003980:	00379793          	slli	a5,a5,0x3
    80003984:	00f987b3          	add	a5,s3,a5
    80003988:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000398c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003990:	0000a717          	auipc	a4,0xa
    80003994:	18873703          	ld	a4,392(a4) # 8000db18 <_ZL10waitForAll>
    80003998:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000399c:	00078613          	mv	a2,a5
    800039a0:	00000597          	auipc	a1,0x0
    800039a4:	d7458593          	addi	a1,a1,-652 # 80003714 <_ZL8consumerPv>
    800039a8:	f9840513          	addi	a0,s0,-104
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	8f0080e7          	jalr	-1808(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800039b4:	00000493          	li	s1,0
    800039b8:	0280006f          	j	800039e0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800039bc:	00000597          	auipc	a1,0x0
    800039c0:	c1458593          	addi	a1,a1,-1004 # 800035d0 <_ZL16producerKeyboardPv>
                      data + i);
    800039c4:	00179613          	slli	a2,a5,0x1
    800039c8:	00f60633          	add	a2,a2,a5
    800039cc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800039d0:	00c98633          	add	a2,s3,a2
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	8c8080e7          	jalr	-1848(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800039dc:	0014849b          	addiw	s1,s1,1
    800039e0:	0524d263          	bge	s1,s2,80003a24 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800039e4:	00149793          	slli	a5,s1,0x1
    800039e8:	009787b3          	add	a5,a5,s1
    800039ec:	00379793          	slli	a5,a5,0x3
    800039f0:	00f987b3          	add	a5,s3,a5
    800039f4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800039f8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800039fc:	0000a717          	auipc	a4,0xa
    80003a00:	11c73703          	ld	a4,284(a4) # 8000db18 <_ZL10waitForAll>
    80003a04:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003a08:	00048793          	mv	a5,s1
    80003a0c:	00349513          	slli	a0,s1,0x3
    80003a10:	00aa8533          	add	a0,s5,a0
    80003a14:	fa9054e3          	blez	s1,800039bc <_Z22producerConsumer_C_APIv+0x1c8>
    80003a18:	00000597          	auipc	a1,0x0
    80003a1c:	c6858593          	addi	a1,a1,-920 # 80003680 <_ZL8producerPv>
    80003a20:	fa5ff06f          	j	800039c4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	8d8080e7          	jalr	-1832(ra) # 800012fc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003a2c:	00000493          	li	s1,0
    80003a30:	00994e63          	blt	s2,s1,80003a4c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003a34:	0000a517          	auipc	a0,0xa
    80003a38:	0e453503          	ld	a0,228(a0) # 8000db18 <_ZL10waitForAll>
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	970080e7          	jalr	-1680(ra) # 800013ac <_Z8sem_waitP7Semafor>
    for (int i = 0; i <= threadNum; i++) {
    80003a44:	0014849b          	addiw	s1,s1,1
    80003a48:	fe9ff06f          	j	80003a30 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003a4c:	0000a517          	auipc	a0,0xa
    80003a50:	0cc53503          	ld	a0,204(a0) # 8000db18 <_ZL10waitForAll>
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	928080e7          	jalr	-1752(ra) # 8000137c <_Z9sem_closeP7Semafor>
    delete buffer;
    80003a5c:	000a0e63          	beqz	s4,80003a78 <_Z22producerConsumer_C_APIv+0x284>
    80003a60:	000a0513          	mv	a0,s4
    80003a64:	00003097          	auipc	ra,0x3
    80003a68:	16c080e7          	jalr	364(ra) # 80006bd0 <_ZN6BufferD1Ev>
    80003a6c:	000a0513          	mv	a0,s4
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	71c080e7          	jalr	1820(ra) # 8000218c <_ZdlPv>
    80003a78:	000b0113          	mv	sp,s6

}
    80003a7c:	f9040113          	addi	sp,s0,-112
    80003a80:	06813083          	ld	ra,104(sp)
    80003a84:	06013403          	ld	s0,96(sp)
    80003a88:	05813483          	ld	s1,88(sp)
    80003a8c:	05013903          	ld	s2,80(sp)
    80003a90:	04813983          	ld	s3,72(sp)
    80003a94:	04013a03          	ld	s4,64(sp)
    80003a98:	03813a83          	ld	s5,56(sp)
    80003a9c:	03013b03          	ld	s6,48(sp)
    80003aa0:	07010113          	addi	sp,sp,112
    80003aa4:	00008067          	ret
    80003aa8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003aac:	000a0513          	mv	a0,s4
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	6dc080e7          	jalr	1756(ra) # 8000218c <_ZdlPv>
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	0000b097          	auipc	ra,0xb
    80003ac0:	16c080e7          	jalr	364(ra) # 8000ec28 <_Unwind_Resume>

0000000080003ac4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003ac4:	fe010113          	addi	sp,sp,-32
    80003ac8:	00113c23          	sd	ra,24(sp)
    80003acc:	00813823          	sd	s0,16(sp)
    80003ad0:	00913423          	sd	s1,8(sp)
    80003ad4:	01213023          	sd	s2,0(sp)
    80003ad8:	02010413          	addi	s0,sp,32
    80003adc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003ae0:	00100793          	li	a5,1
    80003ae4:	02a7f863          	bgeu	a5,a0,80003b14 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003ae8:	00a00793          	li	a5,10
    80003aec:	02f577b3          	remu	a5,a0,a5
    80003af0:	02078e63          	beqz	a5,80003b2c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003af4:	fff48513          	addi	a0,s1,-1
    80003af8:	00000097          	auipc	ra,0x0
    80003afc:	fcc080e7          	jalr	-52(ra) # 80003ac4 <_ZL9fibonaccim>
    80003b00:	00050913          	mv	s2,a0
    80003b04:	ffe48513          	addi	a0,s1,-2
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	fbc080e7          	jalr	-68(ra) # 80003ac4 <_ZL9fibonaccim>
    80003b10:	00a90533          	add	a0,s2,a0
}
    80003b14:	01813083          	ld	ra,24(sp)
    80003b18:	01013403          	ld	s0,16(sp)
    80003b1c:	00813483          	ld	s1,8(sp)
    80003b20:	00013903          	ld	s2,0(sp)
    80003b24:	02010113          	addi	sp,sp,32
    80003b28:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b2c:	ffffd097          	auipc	ra,0xffffd
    80003b30:	7d0080e7          	jalr	2000(ra) # 800012fc <_Z15thread_dispatchv>
    80003b34:	fc1ff06f          	j	80003af4 <_ZL9fibonaccim+0x30>

0000000080003b38 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003b38:	fe010113          	addi	sp,sp,-32
    80003b3c:	00113c23          	sd	ra,24(sp)
    80003b40:	00813823          	sd	s0,16(sp)
    80003b44:	00913423          	sd	s1,8(sp)
    80003b48:	01213023          	sd	s2,0(sp)
    80003b4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003b50:	00000913          	li	s2,0
    80003b54:	0380006f          	j	80003b8c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b58:	ffffd097          	auipc	ra,0xffffd
    80003b5c:	7a4080e7          	jalr	1956(ra) # 800012fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b60:	00148493          	addi	s1,s1,1
    80003b64:	000027b7          	lui	a5,0x2
    80003b68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b6c:	0097ee63          	bltu	a5,s1,80003b88 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b70:	00000713          	li	a4,0
    80003b74:	000077b7          	lui	a5,0x7
    80003b78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b7c:	fce7eee3          	bltu	a5,a4,80003b58 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003b80:	00170713          	addi	a4,a4,1
    80003b84:	ff1ff06f          	j	80003b74 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003b88:	00190913          	addi	s2,s2,1
    80003b8c:	00900793          	li	a5,9
    80003b90:	0527e063          	bltu	a5,s2,80003bd0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003b94:	00006517          	auipc	a0,0x6
    80003b98:	60c50513          	addi	a0,a0,1548 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	eac080e7          	jalr	-340(ra) # 80005a48 <_Z11printStringPKc>
    80003ba4:	00000613          	li	a2,0
    80003ba8:	00a00593          	li	a1,10
    80003bac:	0009051b          	sext.w	a0,s2
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	048080e7          	jalr	72(ra) # 80005bf8 <_Z8printIntiii>
    80003bb8:	00007517          	auipc	a0,0x7
    80003bbc:	83850513          	addi	a0,a0,-1992 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80003bc0:	00002097          	auipc	ra,0x2
    80003bc4:	e88080e7          	jalr	-376(ra) # 80005a48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003bc8:	00000493          	li	s1,0
    80003bcc:	f99ff06f          	j	80003b64 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003bd0:	00006517          	auipc	a0,0x6
    80003bd4:	5d850513          	addi	a0,a0,1496 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003bd8:	00002097          	auipc	ra,0x2
    80003bdc:	e70080e7          	jalr	-400(ra) # 80005a48 <_Z11printStringPKc>
    finishedA = true;
    80003be0:	00100793          	li	a5,1
    80003be4:	0000a717          	auipc	a4,0xa
    80003be8:	f2f70e23          	sb	a5,-196(a4) # 8000db20 <_ZL9finishedA>
}
    80003bec:	01813083          	ld	ra,24(sp)
    80003bf0:	01013403          	ld	s0,16(sp)
    80003bf4:	00813483          	ld	s1,8(sp)
    80003bf8:	00013903          	ld	s2,0(sp)
    80003bfc:	02010113          	addi	sp,sp,32
    80003c00:	00008067          	ret

0000000080003c04 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003c04:	fe010113          	addi	sp,sp,-32
    80003c08:	00113c23          	sd	ra,24(sp)
    80003c0c:	00813823          	sd	s0,16(sp)
    80003c10:	00913423          	sd	s1,8(sp)
    80003c14:	01213023          	sd	s2,0(sp)
    80003c18:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003c1c:	00000913          	li	s2,0
    80003c20:	0380006f          	j	80003c58 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003c24:	ffffd097          	auipc	ra,0xffffd
    80003c28:	6d8080e7          	jalr	1752(ra) # 800012fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003c2c:	00148493          	addi	s1,s1,1
    80003c30:	000027b7          	lui	a5,0x2
    80003c34:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c38:	0097ee63          	bltu	a5,s1,80003c54 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c3c:	00000713          	li	a4,0
    80003c40:	000077b7          	lui	a5,0x7
    80003c44:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003c48:	fce7eee3          	bltu	a5,a4,80003c24 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003c4c:	00170713          	addi	a4,a4,1
    80003c50:	ff1ff06f          	j	80003c40 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003c54:	00190913          	addi	s2,s2,1
    80003c58:	00f00793          	li	a5,15
    80003c5c:	0527e063          	bltu	a5,s2,80003c9c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003c60:	00006517          	auipc	a0,0x6
    80003c64:	55850513          	addi	a0,a0,1368 # 8000a1b8 <CONSOLE_STATUS+0x1a8>
    80003c68:	00002097          	auipc	ra,0x2
    80003c6c:	de0080e7          	jalr	-544(ra) # 80005a48 <_Z11printStringPKc>
    80003c70:	00000613          	li	a2,0
    80003c74:	00a00593          	li	a1,10
    80003c78:	0009051b          	sext.w	a0,s2
    80003c7c:	00002097          	auipc	ra,0x2
    80003c80:	f7c080e7          	jalr	-132(ra) # 80005bf8 <_Z8printIntiii>
    80003c84:	00006517          	auipc	a0,0x6
    80003c88:	76c50513          	addi	a0,a0,1900 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80003c8c:	00002097          	auipc	ra,0x2
    80003c90:	dbc080e7          	jalr	-580(ra) # 80005a48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003c94:	00000493          	li	s1,0
    80003c98:	f99ff06f          	j	80003c30 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003c9c:	00006517          	auipc	a0,0x6
    80003ca0:	52450513          	addi	a0,a0,1316 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80003ca4:	00002097          	auipc	ra,0x2
    80003ca8:	da4080e7          	jalr	-604(ra) # 80005a48 <_Z11printStringPKc>
    finishedB = true;
    80003cac:	00100793          	li	a5,1
    80003cb0:	0000a717          	auipc	a4,0xa
    80003cb4:	e6f708a3          	sb	a5,-399(a4) # 8000db21 <_ZL9finishedB>
    thread_dispatch();
    80003cb8:	ffffd097          	auipc	ra,0xffffd
    80003cbc:	644080e7          	jalr	1604(ra) # 800012fc <_Z15thread_dispatchv>
}
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	01013403          	ld	s0,16(sp)
    80003cc8:	00813483          	ld	s1,8(sp)
    80003ccc:	00013903          	ld	s2,0(sp)
    80003cd0:	02010113          	addi	sp,sp,32
    80003cd4:	00008067          	ret

0000000080003cd8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003cd8:	fe010113          	addi	sp,sp,-32
    80003cdc:	00113c23          	sd	ra,24(sp)
    80003ce0:	00813823          	sd	s0,16(sp)
    80003ce4:	00913423          	sd	s1,8(sp)
    80003ce8:	01213023          	sd	s2,0(sp)
    80003cec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003cf0:	00000493          	li	s1,0
    80003cf4:	0400006f          	j	80003d34 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003cf8:	00006517          	auipc	a0,0x6
    80003cfc:	4d850513          	addi	a0,a0,1240 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    80003d00:	00002097          	auipc	ra,0x2
    80003d04:	d48080e7          	jalr	-696(ra) # 80005a48 <_Z11printStringPKc>
    80003d08:	00000613          	li	a2,0
    80003d0c:	00a00593          	li	a1,10
    80003d10:	00048513          	mv	a0,s1
    80003d14:	00002097          	auipc	ra,0x2
    80003d18:	ee4080e7          	jalr	-284(ra) # 80005bf8 <_Z8printIntiii>
    80003d1c:	00006517          	auipc	a0,0x6
    80003d20:	6d450513          	addi	a0,a0,1748 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80003d24:	00002097          	auipc	ra,0x2
    80003d28:	d24080e7          	jalr	-732(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d2c:	0014849b          	addiw	s1,s1,1
    80003d30:	0ff4f493          	andi	s1,s1,255
    80003d34:	00200793          	li	a5,2
    80003d38:	fc97f0e3          	bgeu	a5,s1,80003cf8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003d3c:	00006517          	auipc	a0,0x6
    80003d40:	49c50513          	addi	a0,a0,1180 # 8000a1d8 <CONSOLE_STATUS+0x1c8>
    80003d44:	00002097          	auipc	ra,0x2
    80003d48:	d04080e7          	jalr	-764(ra) # 80005a48 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d4c:	00700313          	li	t1,7
    thread_dispatch();
    80003d50:	ffffd097          	auipc	ra,0xffffd
    80003d54:	5ac080e7          	jalr	1452(ra) # 800012fc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d58:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003d5c:	00006517          	auipc	a0,0x6
    80003d60:	48c50513          	addi	a0,a0,1164 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	ce4080e7          	jalr	-796(ra) # 80005a48 <_Z11printStringPKc>
    80003d6c:	00000613          	li	a2,0
    80003d70:	00a00593          	li	a1,10
    80003d74:	0009051b          	sext.w	a0,s2
    80003d78:	00002097          	auipc	ra,0x2
    80003d7c:	e80080e7          	jalr	-384(ra) # 80005bf8 <_Z8printIntiii>
    80003d80:	00006517          	auipc	a0,0x6
    80003d84:	67050513          	addi	a0,a0,1648 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80003d88:	00002097          	auipc	ra,0x2
    80003d8c:	cc0080e7          	jalr	-832(ra) # 80005a48 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003d90:	00c00513          	li	a0,12
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	d30080e7          	jalr	-720(ra) # 80003ac4 <_ZL9fibonaccim>
    80003d9c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003da0:	00006517          	auipc	a0,0x6
    80003da4:	45050513          	addi	a0,a0,1104 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	ca0080e7          	jalr	-864(ra) # 80005a48 <_Z11printStringPKc>
    80003db0:	00000613          	li	a2,0
    80003db4:	00a00593          	li	a1,10
    80003db8:	0009051b          	sext.w	a0,s2
    80003dbc:	00002097          	auipc	ra,0x2
    80003dc0:	e3c080e7          	jalr	-452(ra) # 80005bf8 <_Z8printIntiii>
    80003dc4:	00006517          	auipc	a0,0x6
    80003dc8:	62c50513          	addi	a0,a0,1580 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80003dcc:	00002097          	auipc	ra,0x2
    80003dd0:	c7c080e7          	jalr	-900(ra) # 80005a48 <_Z11printStringPKc>
    80003dd4:	0400006f          	j	80003e14 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003dd8:	00006517          	auipc	a0,0x6
    80003ddc:	3f850513          	addi	a0,a0,1016 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    80003de0:	00002097          	auipc	ra,0x2
    80003de4:	c68080e7          	jalr	-920(ra) # 80005a48 <_Z11printStringPKc>
    80003de8:	00000613          	li	a2,0
    80003dec:	00a00593          	li	a1,10
    80003df0:	00048513          	mv	a0,s1
    80003df4:	00002097          	auipc	ra,0x2
    80003df8:	e04080e7          	jalr	-508(ra) # 80005bf8 <_Z8printIntiii>
    80003dfc:	00006517          	auipc	a0,0x6
    80003e00:	5f450513          	addi	a0,a0,1524 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80003e04:	00002097          	auipc	ra,0x2
    80003e08:	c44080e7          	jalr	-956(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e0c:	0014849b          	addiw	s1,s1,1
    80003e10:	0ff4f493          	andi	s1,s1,255
    80003e14:	00500793          	li	a5,5
    80003e18:	fc97f0e3          	bgeu	a5,s1,80003dd8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003e1c:	00006517          	auipc	a0,0x6
    80003e20:	38c50513          	addi	a0,a0,908 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003e24:	00002097          	auipc	ra,0x2
    80003e28:	c24080e7          	jalr	-988(ra) # 80005a48 <_Z11printStringPKc>
    finishedC = true;
    80003e2c:	00100793          	li	a5,1
    80003e30:	0000a717          	auipc	a4,0xa
    80003e34:	cef70923          	sb	a5,-782(a4) # 8000db22 <_ZL9finishedC>
    thread_dispatch();
    80003e38:	ffffd097          	auipc	ra,0xffffd
    80003e3c:	4c4080e7          	jalr	1220(ra) # 800012fc <_Z15thread_dispatchv>
}
    80003e40:	01813083          	ld	ra,24(sp)
    80003e44:	01013403          	ld	s0,16(sp)
    80003e48:	00813483          	ld	s1,8(sp)
    80003e4c:	00013903          	ld	s2,0(sp)
    80003e50:	02010113          	addi	sp,sp,32
    80003e54:	00008067          	ret

0000000080003e58 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003e58:	fe010113          	addi	sp,sp,-32
    80003e5c:	00113c23          	sd	ra,24(sp)
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	01213023          	sd	s2,0(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e70:	00a00493          	li	s1,10
    80003e74:	0400006f          	j	80003eb4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e78:	00006517          	auipc	a0,0x6
    80003e7c:	38850513          	addi	a0,a0,904 # 8000a200 <CONSOLE_STATUS+0x1f0>
    80003e80:	00002097          	auipc	ra,0x2
    80003e84:	bc8080e7          	jalr	-1080(ra) # 80005a48 <_Z11printStringPKc>
    80003e88:	00000613          	li	a2,0
    80003e8c:	00a00593          	li	a1,10
    80003e90:	00048513          	mv	a0,s1
    80003e94:	00002097          	auipc	ra,0x2
    80003e98:	d64080e7          	jalr	-668(ra) # 80005bf8 <_Z8printIntiii>
    80003e9c:	00006517          	auipc	a0,0x6
    80003ea0:	55450513          	addi	a0,a0,1364 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80003ea4:	00002097          	auipc	ra,0x2
    80003ea8:	ba4080e7          	jalr	-1116(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003eac:	0014849b          	addiw	s1,s1,1
    80003eb0:	0ff4f493          	andi	s1,s1,255
    80003eb4:	00c00793          	li	a5,12
    80003eb8:	fc97f0e3          	bgeu	a5,s1,80003e78 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003ebc:	00006517          	auipc	a0,0x6
    80003ec0:	34c50513          	addi	a0,a0,844 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80003ec4:	00002097          	auipc	ra,0x2
    80003ec8:	b84080e7          	jalr	-1148(ra) # 80005a48 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ecc:	00500313          	li	t1,5
    thread_dispatch();
    80003ed0:	ffffd097          	auipc	ra,0xffffd
    80003ed4:	42c080e7          	jalr	1068(ra) # 800012fc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003ed8:	01000513          	li	a0,16
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	be8080e7          	jalr	-1048(ra) # 80003ac4 <_ZL9fibonaccim>
    80003ee4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003ee8:	00006517          	auipc	a0,0x6
    80003eec:	33050513          	addi	a0,a0,816 # 8000a218 <CONSOLE_STATUS+0x208>
    80003ef0:	00002097          	auipc	ra,0x2
    80003ef4:	b58080e7          	jalr	-1192(ra) # 80005a48 <_Z11printStringPKc>
    80003ef8:	00000613          	li	a2,0
    80003efc:	00a00593          	li	a1,10
    80003f00:	0009051b          	sext.w	a0,s2
    80003f04:	00002097          	auipc	ra,0x2
    80003f08:	cf4080e7          	jalr	-780(ra) # 80005bf8 <_Z8printIntiii>
    80003f0c:	00006517          	auipc	a0,0x6
    80003f10:	4e450513          	addi	a0,a0,1252 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80003f14:	00002097          	auipc	ra,0x2
    80003f18:	b34080e7          	jalr	-1228(ra) # 80005a48 <_Z11printStringPKc>
    80003f1c:	0400006f          	j	80003f5c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f20:	00006517          	auipc	a0,0x6
    80003f24:	2e050513          	addi	a0,a0,736 # 8000a200 <CONSOLE_STATUS+0x1f0>
    80003f28:	00002097          	auipc	ra,0x2
    80003f2c:	b20080e7          	jalr	-1248(ra) # 80005a48 <_Z11printStringPKc>
    80003f30:	00000613          	li	a2,0
    80003f34:	00a00593          	li	a1,10
    80003f38:	00048513          	mv	a0,s1
    80003f3c:	00002097          	auipc	ra,0x2
    80003f40:	cbc080e7          	jalr	-836(ra) # 80005bf8 <_Z8printIntiii>
    80003f44:	00006517          	auipc	a0,0x6
    80003f48:	4ac50513          	addi	a0,a0,1196 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80003f4c:	00002097          	auipc	ra,0x2
    80003f50:	afc080e7          	jalr	-1284(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003f54:	0014849b          	addiw	s1,s1,1
    80003f58:	0ff4f493          	andi	s1,s1,255
    80003f5c:	00f00793          	li	a5,15
    80003f60:	fc97f0e3          	bgeu	a5,s1,80003f20 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003f64:	00006517          	auipc	a0,0x6
    80003f68:	2c450513          	addi	a0,a0,708 # 8000a228 <CONSOLE_STATUS+0x218>
    80003f6c:	00002097          	auipc	ra,0x2
    80003f70:	adc080e7          	jalr	-1316(ra) # 80005a48 <_Z11printStringPKc>
    finishedD = true;
    80003f74:	00100793          	li	a5,1
    80003f78:	0000a717          	auipc	a4,0xa
    80003f7c:	baf705a3          	sb	a5,-1109(a4) # 8000db23 <_ZL9finishedD>
    thread_dispatch();
    80003f80:	ffffd097          	auipc	ra,0xffffd
    80003f84:	37c080e7          	jalr	892(ra) # 800012fc <_Z15thread_dispatchv>
}
    80003f88:	01813083          	ld	ra,24(sp)
    80003f8c:	01013403          	ld	s0,16(sp)
    80003f90:	00813483          	ld	s1,8(sp)
    80003f94:	00013903          	ld	s2,0(sp)
    80003f98:	02010113          	addi	sp,sp,32
    80003f9c:	00008067          	ret

0000000080003fa0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003fa0:	fc010113          	addi	sp,sp,-64
    80003fa4:	02113c23          	sd	ra,56(sp)
    80003fa8:	02813823          	sd	s0,48(sp)
    80003fac:	02913423          	sd	s1,40(sp)
    80003fb0:	03213023          	sd	s2,32(sp)
    80003fb4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003fb8:	02000513          	li	a0,32
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	1a8080e7          	jalr	424(ra) # 80002164 <_Znwm>
    80003fc4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	298080e7          	jalr	664(ra) # 80002260 <_ZN6ThreadC1Ev>
    80003fd0:	00009797          	auipc	a5,0x9
    80003fd4:	91078793          	addi	a5,a5,-1776 # 8000c8e0 <_ZTV7WorkerA+0x10>
    80003fd8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003fdc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003fe0:	00006517          	auipc	a0,0x6
    80003fe4:	25850513          	addi	a0,a0,600 # 8000a238 <CONSOLE_STATUS+0x228>
    80003fe8:	00002097          	auipc	ra,0x2
    80003fec:	a60080e7          	jalr	-1440(ra) # 80005a48 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ff0:	02000513          	li	a0,32
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	170080e7          	jalr	368(ra) # 80002164 <_Znwm>
    80003ffc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	260080e7          	jalr	608(ra) # 80002260 <_ZN6ThreadC1Ev>
    80004008:	00009797          	auipc	a5,0x9
    8000400c:	90078793          	addi	a5,a5,-1792 # 8000c908 <_ZTV7WorkerB+0x10>
    80004010:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004014:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004018:	00006517          	auipc	a0,0x6
    8000401c:	23850513          	addi	a0,a0,568 # 8000a250 <CONSOLE_STATUS+0x240>
    80004020:	00002097          	auipc	ra,0x2
    80004024:	a28080e7          	jalr	-1496(ra) # 80005a48 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004028:	02000513          	li	a0,32
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	138080e7          	jalr	312(ra) # 80002164 <_Znwm>
    80004034:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	228080e7          	jalr	552(ra) # 80002260 <_ZN6ThreadC1Ev>
    80004040:	00009797          	auipc	a5,0x9
    80004044:	8f078793          	addi	a5,a5,-1808 # 8000c930 <_ZTV7WorkerC+0x10>
    80004048:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000404c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004050:	00006517          	auipc	a0,0x6
    80004054:	21850513          	addi	a0,a0,536 # 8000a268 <CONSOLE_STATUS+0x258>
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	9f0080e7          	jalr	-1552(ra) # 80005a48 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004060:	02000513          	li	a0,32
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	100080e7          	jalr	256(ra) # 80002164 <_Znwm>
    8000406c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	1f0080e7          	jalr	496(ra) # 80002260 <_ZN6ThreadC1Ev>
    80004078:	00009797          	auipc	a5,0x9
    8000407c:	8e078793          	addi	a5,a5,-1824 # 8000c958 <_ZTV7WorkerD+0x10>
    80004080:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004084:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004088:	00006517          	auipc	a0,0x6
    8000408c:	1f850513          	addi	a0,a0,504 # 8000a280 <CONSOLE_STATUS+0x270>
    80004090:	00002097          	auipc	ra,0x2
    80004094:	9b8080e7          	jalr	-1608(ra) # 80005a48 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004098:	00000493          	li	s1,0
    8000409c:	00300793          	li	a5,3
    800040a0:	0297c663          	blt	a5,s1,800040cc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800040a4:	00349793          	slli	a5,s1,0x3
    800040a8:	fe040713          	addi	a4,s0,-32
    800040ac:	00f707b3          	add	a5,a4,a5
    800040b0:	fe07b503          	ld	a0,-32(a5)
    800040b4:	ffffe097          	auipc	ra,0xffffe
    800040b8:	1e0080e7          	jalr	480(ra) # 80002294 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800040bc:	0014849b          	addiw	s1,s1,1
    800040c0:	fddff06f          	j	8000409c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	25c080e7          	jalr	604(ra) # 80002320 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800040cc:	0000a797          	auipc	a5,0xa
    800040d0:	a547c783          	lbu	a5,-1452(a5) # 8000db20 <_ZL9finishedA>
    800040d4:	fe0788e3          	beqz	a5,800040c4 <_Z20Threads_CPP_API_testv+0x124>
    800040d8:	0000a797          	auipc	a5,0xa
    800040dc:	a497c783          	lbu	a5,-1463(a5) # 8000db21 <_ZL9finishedB>
    800040e0:	fe0782e3          	beqz	a5,800040c4 <_Z20Threads_CPP_API_testv+0x124>
    800040e4:	0000a797          	auipc	a5,0xa
    800040e8:	a3e7c783          	lbu	a5,-1474(a5) # 8000db22 <_ZL9finishedC>
    800040ec:	fc078ce3          	beqz	a5,800040c4 <_Z20Threads_CPP_API_testv+0x124>
    800040f0:	0000a797          	auipc	a5,0xa
    800040f4:	a337c783          	lbu	a5,-1485(a5) # 8000db23 <_ZL9finishedD>
    800040f8:	fc0786e3          	beqz	a5,800040c4 <_Z20Threads_CPP_API_testv+0x124>
    800040fc:	fc040493          	addi	s1,s0,-64
    80004100:	0080006f          	j	80004108 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004104:	00848493          	addi	s1,s1,8
    80004108:	fe040793          	addi	a5,s0,-32
    8000410c:	08f48663          	beq	s1,a5,80004198 <_Z20Threads_CPP_API_testv+0x1f8>
    80004110:	0004b503          	ld	a0,0(s1)
    80004114:	fe0508e3          	beqz	a0,80004104 <_Z20Threads_CPP_API_testv+0x164>
    80004118:	00053783          	ld	a5,0(a0)
    8000411c:	0087b783          	ld	a5,8(a5)
    80004120:	000780e7          	jalr	a5
    80004124:	fe1ff06f          	j	80004104 <_Z20Threads_CPP_API_testv+0x164>
    80004128:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000412c:	00048513          	mv	a0,s1
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	05c080e7          	jalr	92(ra) # 8000218c <_ZdlPv>
    80004138:	00090513          	mv	a0,s2
    8000413c:	0000b097          	auipc	ra,0xb
    80004140:	aec080e7          	jalr	-1300(ra) # 8000ec28 <_Unwind_Resume>
    80004144:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004148:	00048513          	mv	a0,s1
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	040080e7          	jalr	64(ra) # 8000218c <_ZdlPv>
    80004154:	00090513          	mv	a0,s2
    80004158:	0000b097          	auipc	ra,0xb
    8000415c:	ad0080e7          	jalr	-1328(ra) # 8000ec28 <_Unwind_Resume>
    80004160:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004164:	00048513          	mv	a0,s1
    80004168:	ffffe097          	auipc	ra,0xffffe
    8000416c:	024080e7          	jalr	36(ra) # 8000218c <_ZdlPv>
    80004170:	00090513          	mv	a0,s2
    80004174:	0000b097          	auipc	ra,0xb
    80004178:	ab4080e7          	jalr	-1356(ra) # 8000ec28 <_Unwind_Resume>
    8000417c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004180:	00048513          	mv	a0,s1
    80004184:	ffffe097          	auipc	ra,0xffffe
    80004188:	008080e7          	jalr	8(ra) # 8000218c <_ZdlPv>
    8000418c:	00090513          	mv	a0,s2
    80004190:	0000b097          	auipc	ra,0xb
    80004194:	a98080e7          	jalr	-1384(ra) # 8000ec28 <_Unwind_Resume>
}
    80004198:	03813083          	ld	ra,56(sp)
    8000419c:	03013403          	ld	s0,48(sp)
    800041a0:	02813483          	ld	s1,40(sp)
    800041a4:	02013903          	ld	s2,32(sp)
    800041a8:	04010113          	addi	sp,sp,64
    800041ac:	00008067          	ret

00000000800041b0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800041b0:	ff010113          	addi	sp,sp,-16
    800041b4:	00113423          	sd	ra,8(sp)
    800041b8:	00813023          	sd	s0,0(sp)
    800041bc:	01010413          	addi	s0,sp,16
    800041c0:	00008797          	auipc	a5,0x8
    800041c4:	72078793          	addi	a5,a5,1824 # 8000c8e0 <_ZTV7WorkerA+0x10>
    800041c8:	00f53023          	sd	a5,0(a0)
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	ed4080e7          	jalr	-300(ra) # 800020a0 <_ZN6ThreadD1Ev>
    800041d4:	00813083          	ld	ra,8(sp)
    800041d8:	00013403          	ld	s0,0(sp)
    800041dc:	01010113          	addi	sp,sp,16
    800041e0:	00008067          	ret

00000000800041e4 <_ZN7WorkerAD0Ev>:
    800041e4:	fe010113          	addi	sp,sp,-32
    800041e8:	00113c23          	sd	ra,24(sp)
    800041ec:	00813823          	sd	s0,16(sp)
    800041f0:	00913423          	sd	s1,8(sp)
    800041f4:	02010413          	addi	s0,sp,32
    800041f8:	00050493          	mv	s1,a0
    800041fc:	00008797          	auipc	a5,0x8
    80004200:	6e478793          	addi	a5,a5,1764 # 8000c8e0 <_ZTV7WorkerA+0x10>
    80004204:	00f53023          	sd	a5,0(a0)
    80004208:	ffffe097          	auipc	ra,0xffffe
    8000420c:	e98080e7          	jalr	-360(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004210:	00048513          	mv	a0,s1
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	f78080e7          	jalr	-136(ra) # 8000218c <_ZdlPv>
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00008067          	ret

0000000080004230 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00113423          	sd	ra,8(sp)
    80004238:	00813023          	sd	s0,0(sp)
    8000423c:	01010413          	addi	s0,sp,16
    80004240:	00008797          	auipc	a5,0x8
    80004244:	6c878793          	addi	a5,a5,1736 # 8000c908 <_ZTV7WorkerB+0x10>
    80004248:	00f53023          	sd	a5,0(a0)
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	e54080e7          	jalr	-428(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004254:	00813083          	ld	ra,8(sp)
    80004258:	00013403          	ld	s0,0(sp)
    8000425c:	01010113          	addi	sp,sp,16
    80004260:	00008067          	ret

0000000080004264 <_ZN7WorkerBD0Ev>:
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00113c23          	sd	ra,24(sp)
    8000426c:	00813823          	sd	s0,16(sp)
    80004270:	00913423          	sd	s1,8(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	00050493          	mv	s1,a0
    8000427c:	00008797          	auipc	a5,0x8
    80004280:	68c78793          	addi	a5,a5,1676 # 8000c908 <_ZTV7WorkerB+0x10>
    80004284:	00f53023          	sd	a5,0(a0)
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	e18080e7          	jalr	-488(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004290:	00048513          	mv	a0,s1
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	ef8080e7          	jalr	-264(ra) # 8000218c <_ZdlPv>
    8000429c:	01813083          	ld	ra,24(sp)
    800042a0:	01013403          	ld	s0,16(sp)
    800042a4:	00813483          	ld	s1,8(sp)
    800042a8:	02010113          	addi	sp,sp,32
    800042ac:	00008067          	ret

00000000800042b0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800042b0:	ff010113          	addi	sp,sp,-16
    800042b4:	00113423          	sd	ra,8(sp)
    800042b8:	00813023          	sd	s0,0(sp)
    800042bc:	01010413          	addi	s0,sp,16
    800042c0:	00008797          	auipc	a5,0x8
    800042c4:	67078793          	addi	a5,a5,1648 # 8000c930 <_ZTV7WorkerC+0x10>
    800042c8:	00f53023          	sd	a5,0(a0)
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	dd4080e7          	jalr	-556(ra) # 800020a0 <_ZN6ThreadD1Ev>
    800042d4:	00813083          	ld	ra,8(sp)
    800042d8:	00013403          	ld	s0,0(sp)
    800042dc:	01010113          	addi	sp,sp,16
    800042e0:	00008067          	ret

00000000800042e4 <_ZN7WorkerCD0Ev>:
    800042e4:	fe010113          	addi	sp,sp,-32
    800042e8:	00113c23          	sd	ra,24(sp)
    800042ec:	00813823          	sd	s0,16(sp)
    800042f0:	00913423          	sd	s1,8(sp)
    800042f4:	02010413          	addi	s0,sp,32
    800042f8:	00050493          	mv	s1,a0
    800042fc:	00008797          	auipc	a5,0x8
    80004300:	63478793          	addi	a5,a5,1588 # 8000c930 <_ZTV7WorkerC+0x10>
    80004304:	00f53023          	sd	a5,0(a0)
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	d98080e7          	jalr	-616(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004310:	00048513          	mv	a0,s1
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	e78080e7          	jalr	-392(ra) # 8000218c <_ZdlPv>
    8000431c:	01813083          	ld	ra,24(sp)
    80004320:	01013403          	ld	s0,16(sp)
    80004324:	00813483          	ld	s1,8(sp)
    80004328:	02010113          	addi	sp,sp,32
    8000432c:	00008067          	ret

0000000080004330 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004330:	ff010113          	addi	sp,sp,-16
    80004334:	00113423          	sd	ra,8(sp)
    80004338:	00813023          	sd	s0,0(sp)
    8000433c:	01010413          	addi	s0,sp,16
    80004340:	00008797          	auipc	a5,0x8
    80004344:	61878793          	addi	a5,a5,1560 # 8000c958 <_ZTV7WorkerD+0x10>
    80004348:	00f53023          	sd	a5,0(a0)
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	d54080e7          	jalr	-684(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004354:	00813083          	ld	ra,8(sp)
    80004358:	00013403          	ld	s0,0(sp)
    8000435c:	01010113          	addi	sp,sp,16
    80004360:	00008067          	ret

0000000080004364 <_ZN7WorkerDD0Ev>:
    80004364:	fe010113          	addi	sp,sp,-32
    80004368:	00113c23          	sd	ra,24(sp)
    8000436c:	00813823          	sd	s0,16(sp)
    80004370:	00913423          	sd	s1,8(sp)
    80004374:	02010413          	addi	s0,sp,32
    80004378:	00050493          	mv	s1,a0
    8000437c:	00008797          	auipc	a5,0x8
    80004380:	5dc78793          	addi	a5,a5,1500 # 8000c958 <_ZTV7WorkerD+0x10>
    80004384:	00f53023          	sd	a5,0(a0)
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	d18080e7          	jalr	-744(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004390:	00048513          	mv	a0,s1
    80004394:	ffffe097          	auipc	ra,0xffffe
    80004398:	df8080e7          	jalr	-520(ra) # 8000218c <_ZdlPv>
    8000439c:	01813083          	ld	ra,24(sp)
    800043a0:	01013403          	ld	s0,16(sp)
    800043a4:	00813483          	ld	s1,8(sp)
    800043a8:	02010113          	addi	sp,sp,32
    800043ac:	00008067          	ret

00000000800043b0 <_ZN7WorkerA3runEv>:
    void run() override {
    800043b0:	ff010113          	addi	sp,sp,-16
    800043b4:	00113423          	sd	ra,8(sp)
    800043b8:	00813023          	sd	s0,0(sp)
    800043bc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800043c0:	00000593          	li	a1,0
    800043c4:	fffff097          	auipc	ra,0xfffff
    800043c8:	774080e7          	jalr	1908(ra) # 80003b38 <_ZN7WorkerA11workerBodyAEPv>
    }
    800043cc:	00813083          	ld	ra,8(sp)
    800043d0:	00013403          	ld	s0,0(sp)
    800043d4:	01010113          	addi	sp,sp,16
    800043d8:	00008067          	ret

00000000800043dc <_ZN7WorkerB3runEv>:
    void run() override {
    800043dc:	ff010113          	addi	sp,sp,-16
    800043e0:	00113423          	sd	ra,8(sp)
    800043e4:	00813023          	sd	s0,0(sp)
    800043e8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800043ec:	00000593          	li	a1,0
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	814080e7          	jalr	-2028(ra) # 80003c04 <_ZN7WorkerB11workerBodyBEPv>
    }
    800043f8:	00813083          	ld	ra,8(sp)
    800043fc:	00013403          	ld	s0,0(sp)
    80004400:	01010113          	addi	sp,sp,16
    80004404:	00008067          	ret

0000000080004408 <_ZN7WorkerC3runEv>:
    void run() override {
    80004408:	ff010113          	addi	sp,sp,-16
    8000440c:	00113423          	sd	ra,8(sp)
    80004410:	00813023          	sd	s0,0(sp)
    80004414:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004418:	00000593          	li	a1,0
    8000441c:	00000097          	auipc	ra,0x0
    80004420:	8bc080e7          	jalr	-1860(ra) # 80003cd8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004424:	00813083          	ld	ra,8(sp)
    80004428:	00013403          	ld	s0,0(sp)
    8000442c:	01010113          	addi	sp,sp,16
    80004430:	00008067          	ret

0000000080004434 <_ZN7WorkerD3runEv>:
    void run() override {
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	00813023          	sd	s0,0(sp)
    80004440:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004444:	00000593          	li	a1,0
    80004448:	00000097          	auipc	ra,0x0
    8000444c:	a10080e7          	jalr	-1520(ra) # 80003e58 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004450:	00813083          	ld	ra,8(sp)
    80004454:	00013403          	ld	s0,0(sp)
    80004458:	01010113          	addi	sp,sp,16
    8000445c:	00008067          	ret

0000000080004460 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004460:	f8010113          	addi	sp,sp,-128
    80004464:	06113c23          	sd	ra,120(sp)
    80004468:	06813823          	sd	s0,112(sp)
    8000446c:	06913423          	sd	s1,104(sp)
    80004470:	07213023          	sd	s2,96(sp)
    80004474:	05313c23          	sd	s3,88(sp)
    80004478:	05413823          	sd	s4,80(sp)
    8000447c:	05513423          	sd	s5,72(sp)
    80004480:	05613023          	sd	s6,64(sp)
    80004484:	03713c23          	sd	s7,56(sp)
    80004488:	03813823          	sd	s8,48(sp)
    8000448c:	03913423          	sd	s9,40(sp)
    80004490:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004494:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004498:	00006517          	auipc	a0,0x6
    8000449c:	c2050513          	addi	a0,a0,-992 # 8000a0b8 <CONSOLE_STATUS+0xa8>
    800044a0:	00001097          	auipc	ra,0x1
    800044a4:	5a8080e7          	jalr	1448(ra) # 80005a48 <_Z11printStringPKc>
    getString(input, 30);
    800044a8:	01e00593          	li	a1,30
    800044ac:	f8040493          	addi	s1,s0,-128
    800044b0:	00048513          	mv	a0,s1
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	61c080e7          	jalr	1564(ra) # 80005ad0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800044bc:	00048513          	mv	a0,s1
    800044c0:	00001097          	auipc	ra,0x1
    800044c4:	6e8080e7          	jalr	1768(ra) # 80005ba8 <_Z11stringToIntPKc>
    800044c8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800044cc:	00006517          	auipc	a0,0x6
    800044d0:	c0c50513          	addi	a0,a0,-1012 # 8000a0d8 <CONSOLE_STATUS+0xc8>
    800044d4:	00001097          	auipc	ra,0x1
    800044d8:	574080e7          	jalr	1396(ra) # 80005a48 <_Z11printStringPKc>
    getString(input, 30);
    800044dc:	01e00593          	li	a1,30
    800044e0:	00048513          	mv	a0,s1
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	5ec080e7          	jalr	1516(ra) # 80005ad0 <_Z9getStringPci>
    n = stringToInt(input);
    800044ec:	00048513          	mv	a0,s1
    800044f0:	00001097          	auipc	ra,0x1
    800044f4:	6b8080e7          	jalr	1720(ra) # 80005ba8 <_Z11stringToIntPKc>
    800044f8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800044fc:	00006517          	auipc	a0,0x6
    80004500:	bfc50513          	addi	a0,a0,-1028 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    80004504:	00001097          	auipc	ra,0x1
    80004508:	544080e7          	jalr	1348(ra) # 80005a48 <_Z11printStringPKc>
    printInt(threadNum);
    8000450c:	00000613          	li	a2,0
    80004510:	00a00593          	li	a1,10
    80004514:	00098513          	mv	a0,s3
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	6e0080e7          	jalr	1760(ra) # 80005bf8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004520:	00006517          	auipc	a0,0x6
    80004524:	bf050513          	addi	a0,a0,-1040 # 8000a110 <CONSOLE_STATUS+0x100>
    80004528:	00001097          	auipc	ra,0x1
    8000452c:	520080e7          	jalr	1312(ra) # 80005a48 <_Z11printStringPKc>
    printInt(n);
    80004530:	00000613          	li	a2,0
    80004534:	00a00593          	li	a1,10
    80004538:	00048513          	mv	a0,s1
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	6bc080e7          	jalr	1724(ra) # 80005bf8 <_Z8printIntiii>
    printString(".\n");
    80004544:	00006517          	auipc	a0,0x6
    80004548:	be450513          	addi	a0,a0,-1052 # 8000a128 <CONSOLE_STATUS+0x118>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	4fc080e7          	jalr	1276(ra) # 80005a48 <_Z11printStringPKc>
    if (threadNum > n) {
    80004554:	0334c463          	blt	s1,s3,8000457c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004558:	03305c63          	blez	s3,80004590 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000455c:	03800513          	li	a0,56
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	c04080e7          	jalr	-1020(ra) # 80002164 <_Znwm>
    80004568:	00050a93          	mv	s5,a0
    8000456c:	00048593          	mv	a1,s1
    80004570:	00001097          	auipc	ra,0x1
    80004574:	7a8080e7          	jalr	1960(ra) # 80005d18 <_ZN9BufferCPPC1Ei>
    80004578:	0300006f          	j	800045a8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000457c:	00006517          	auipc	a0,0x6
    80004580:	bb450513          	addi	a0,a0,-1100 # 8000a130 <CONSOLE_STATUS+0x120>
    80004584:	00001097          	auipc	ra,0x1
    80004588:	4c4080e7          	jalr	1220(ra) # 80005a48 <_Z11printStringPKc>
        return;
    8000458c:	0140006f          	j	800045a0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004590:	00006517          	auipc	a0,0x6
    80004594:	be050513          	addi	a0,a0,-1056 # 8000a170 <CONSOLE_STATUS+0x160>
    80004598:	00001097          	auipc	ra,0x1
    8000459c:	4b0080e7          	jalr	1200(ra) # 80005a48 <_Z11printStringPKc>
        return;
    800045a0:	000c0113          	mv	sp,s8
    800045a4:	2140006f          	j	800047b8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800045a8:	01000513          	li	a0,16
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	bb8080e7          	jalr	-1096(ra) # 80002164 <_Znwm>
    800045b4:	00050913          	mv	s2,a0
    800045b8:	00000593          	li	a1,0
    800045bc:	ffffe097          	auipc	ra,0xffffe
    800045c0:	db4080e7          	jalr	-588(ra) # 80002370 <_ZN9SemaphoreC1Ej>
    800045c4:	00009797          	auipc	a5,0x9
    800045c8:	5727b623          	sd	s2,1388(a5) # 8000db30 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800045cc:	00399793          	slli	a5,s3,0x3
    800045d0:	00f78793          	addi	a5,a5,15
    800045d4:	ff07f793          	andi	a5,a5,-16
    800045d8:	40f10133          	sub	sp,sp,a5
    800045dc:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800045e0:	0019871b          	addiw	a4,s3,1
    800045e4:	00171793          	slli	a5,a4,0x1
    800045e8:	00e787b3          	add	a5,a5,a4
    800045ec:	00379793          	slli	a5,a5,0x3
    800045f0:	00f78793          	addi	a5,a5,15
    800045f4:	ff07f793          	andi	a5,a5,-16
    800045f8:	40f10133          	sub	sp,sp,a5
    800045fc:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004600:	00199493          	slli	s1,s3,0x1
    80004604:	013484b3          	add	s1,s1,s3
    80004608:	00349493          	slli	s1,s1,0x3
    8000460c:	009b04b3          	add	s1,s6,s1
    80004610:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004614:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004618:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000461c:	02800513          	li	a0,40
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	b44080e7          	jalr	-1212(ra) # 80002164 <_Znwm>
    80004628:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000462c:	ffffe097          	auipc	ra,0xffffe
    80004630:	c34080e7          	jalr	-972(ra) # 80002260 <_ZN6ThreadC1Ev>
    80004634:	00008797          	auipc	a5,0x8
    80004638:	39c78793          	addi	a5,a5,924 # 8000c9d0 <_ZTV8Consumer+0x10>
    8000463c:	00fbb023          	sd	a5,0(s7)
    80004640:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004644:	000b8513          	mv	a0,s7
    80004648:	ffffe097          	auipc	ra,0xffffe
    8000464c:	c4c080e7          	jalr	-948(ra) # 80002294 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004650:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004654:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004658:	00009797          	auipc	a5,0x9
    8000465c:	4d87b783          	ld	a5,1240(a5) # 8000db30 <_ZL10waitForAll>
    80004660:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004664:	02800513          	li	a0,40
    80004668:	ffffe097          	auipc	ra,0xffffe
    8000466c:	afc080e7          	jalr	-1284(ra) # 80002164 <_Znwm>
    80004670:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004674:	ffffe097          	auipc	ra,0xffffe
    80004678:	bec080e7          	jalr	-1044(ra) # 80002260 <_ZN6ThreadC1Ev>
    8000467c:	00008797          	auipc	a5,0x8
    80004680:	30478793          	addi	a5,a5,772 # 8000c980 <_ZTV16ProducerKeyborad+0x10>
    80004684:	00f4b023          	sd	a5,0(s1)
    80004688:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000468c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004690:	00048513          	mv	a0,s1
    80004694:	ffffe097          	auipc	ra,0xffffe
    80004698:	c00080e7          	jalr	-1024(ra) # 80002294 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000469c:	00100913          	li	s2,1
    800046a0:	0300006f          	j	800046d0 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800046a4:	00008797          	auipc	a5,0x8
    800046a8:	30478793          	addi	a5,a5,772 # 8000c9a8 <_ZTV8Producer+0x10>
    800046ac:	00fcb023          	sd	a5,0(s9)
    800046b0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800046b4:	00391793          	slli	a5,s2,0x3
    800046b8:	00fa07b3          	add	a5,s4,a5
    800046bc:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800046c0:	000c8513          	mv	a0,s9
    800046c4:	ffffe097          	auipc	ra,0xffffe
    800046c8:	bd0080e7          	jalr	-1072(ra) # 80002294 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800046cc:	0019091b          	addiw	s2,s2,1
    800046d0:	05395263          	bge	s2,s3,80004714 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800046d4:	00191493          	slli	s1,s2,0x1
    800046d8:	012484b3          	add	s1,s1,s2
    800046dc:	00349493          	slli	s1,s1,0x3
    800046e0:	009b04b3          	add	s1,s6,s1
    800046e4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800046e8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800046ec:	00009797          	auipc	a5,0x9
    800046f0:	4447b783          	ld	a5,1092(a5) # 8000db30 <_ZL10waitForAll>
    800046f4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800046f8:	02800513          	li	a0,40
    800046fc:	ffffe097          	auipc	ra,0xffffe
    80004700:	a68080e7          	jalr	-1432(ra) # 80002164 <_Znwm>
    80004704:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004708:	ffffe097          	auipc	ra,0xffffe
    8000470c:	b58080e7          	jalr	-1192(ra) # 80002260 <_ZN6ThreadC1Ev>
    80004710:	f95ff06f          	j	800046a4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004714:	ffffe097          	auipc	ra,0xffffe
    80004718:	c0c080e7          	jalr	-1012(ra) # 80002320 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000471c:	00000493          	li	s1,0
    80004720:	0099ce63          	blt	s3,s1,8000473c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004724:	00009517          	auipc	a0,0x9
    80004728:	40c53503          	ld	a0,1036(a0) # 8000db30 <_ZL10waitForAll>
    8000472c:	ffffe097          	auipc	ra,0xffffe
    80004730:	c7c080e7          	jalr	-900(ra) # 800023a8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004734:	0014849b          	addiw	s1,s1,1
    80004738:	fe9ff06f          	j	80004720 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    8000473c:	00009517          	auipc	a0,0x9
    80004740:	3f453503          	ld	a0,1012(a0) # 8000db30 <_ZL10waitForAll>
    80004744:	00050863          	beqz	a0,80004754 <_Z20testConsumerProducerv+0x2f4>
    80004748:	00053783          	ld	a5,0(a0)
    8000474c:	0087b783          	ld	a5,8(a5)
    80004750:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004754:	00000493          	li	s1,0
    80004758:	0080006f          	j	80004760 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000475c:	0014849b          	addiw	s1,s1,1
    80004760:	0334d263          	bge	s1,s3,80004784 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004764:	00349793          	slli	a5,s1,0x3
    80004768:	00fa07b3          	add	a5,s4,a5
    8000476c:	0007b503          	ld	a0,0(a5)
    80004770:	fe0506e3          	beqz	a0,8000475c <_Z20testConsumerProducerv+0x2fc>
    80004774:	00053783          	ld	a5,0(a0)
    80004778:	0087b783          	ld	a5,8(a5)
    8000477c:	000780e7          	jalr	a5
    80004780:	fddff06f          	j	8000475c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004784:	000b8a63          	beqz	s7,80004798 <_Z20testConsumerProducerv+0x338>
    80004788:	000bb783          	ld	a5,0(s7)
    8000478c:	0087b783          	ld	a5,8(a5)
    80004790:	000b8513          	mv	a0,s7
    80004794:	000780e7          	jalr	a5
    delete buffer;
    80004798:	000a8e63          	beqz	s5,800047b4 <_Z20testConsumerProducerv+0x354>
    8000479c:	000a8513          	mv	a0,s5
    800047a0:	00002097          	auipc	ra,0x2
    800047a4:	870080e7          	jalr	-1936(ra) # 80006010 <_ZN9BufferCPPD1Ev>
    800047a8:	000a8513          	mv	a0,s5
    800047ac:	ffffe097          	auipc	ra,0xffffe
    800047b0:	9e0080e7          	jalr	-1568(ra) # 8000218c <_ZdlPv>
    800047b4:	000c0113          	mv	sp,s8
}
    800047b8:	f8040113          	addi	sp,s0,-128
    800047bc:	07813083          	ld	ra,120(sp)
    800047c0:	07013403          	ld	s0,112(sp)
    800047c4:	06813483          	ld	s1,104(sp)
    800047c8:	06013903          	ld	s2,96(sp)
    800047cc:	05813983          	ld	s3,88(sp)
    800047d0:	05013a03          	ld	s4,80(sp)
    800047d4:	04813a83          	ld	s5,72(sp)
    800047d8:	04013b03          	ld	s6,64(sp)
    800047dc:	03813b83          	ld	s7,56(sp)
    800047e0:	03013c03          	ld	s8,48(sp)
    800047e4:	02813c83          	ld	s9,40(sp)
    800047e8:	08010113          	addi	sp,sp,128
    800047ec:	00008067          	ret
    800047f0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800047f4:	000a8513          	mv	a0,s5
    800047f8:	ffffe097          	auipc	ra,0xffffe
    800047fc:	994080e7          	jalr	-1644(ra) # 8000218c <_ZdlPv>
    80004800:	00048513          	mv	a0,s1
    80004804:	0000a097          	auipc	ra,0xa
    80004808:	424080e7          	jalr	1060(ra) # 8000ec28 <_Unwind_Resume>
    8000480c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004810:	00090513          	mv	a0,s2
    80004814:	ffffe097          	auipc	ra,0xffffe
    80004818:	978080e7          	jalr	-1672(ra) # 8000218c <_ZdlPv>
    8000481c:	00048513          	mv	a0,s1
    80004820:	0000a097          	auipc	ra,0xa
    80004824:	408080e7          	jalr	1032(ra) # 8000ec28 <_Unwind_Resume>
    80004828:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000482c:	000b8513          	mv	a0,s7
    80004830:	ffffe097          	auipc	ra,0xffffe
    80004834:	95c080e7          	jalr	-1700(ra) # 8000218c <_ZdlPv>
    80004838:	00048513          	mv	a0,s1
    8000483c:	0000a097          	auipc	ra,0xa
    80004840:	3ec080e7          	jalr	1004(ra) # 8000ec28 <_Unwind_Resume>
    80004844:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004848:	00048513          	mv	a0,s1
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	940080e7          	jalr	-1728(ra) # 8000218c <_ZdlPv>
    80004854:	00090513          	mv	a0,s2
    80004858:	0000a097          	auipc	ra,0xa
    8000485c:	3d0080e7          	jalr	976(ra) # 8000ec28 <_Unwind_Resume>
    80004860:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004864:	000c8513          	mv	a0,s9
    80004868:	ffffe097          	auipc	ra,0xffffe
    8000486c:	924080e7          	jalr	-1756(ra) # 8000218c <_ZdlPv>
    80004870:	00048513          	mv	a0,s1
    80004874:	0000a097          	auipc	ra,0xa
    80004878:	3b4080e7          	jalr	948(ra) # 8000ec28 <_Unwind_Resume>

000000008000487c <_ZN8Consumer3runEv>:
    void run() override {
    8000487c:	fd010113          	addi	sp,sp,-48
    80004880:	02113423          	sd	ra,40(sp)
    80004884:	02813023          	sd	s0,32(sp)
    80004888:	00913c23          	sd	s1,24(sp)
    8000488c:	01213823          	sd	s2,16(sp)
    80004890:	01313423          	sd	s3,8(sp)
    80004894:	03010413          	addi	s0,sp,48
    80004898:	00050913          	mv	s2,a0
        int i = 0;
    8000489c:	00000993          	li	s3,0
    800048a0:	0100006f          	j	800048b0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800048a4:	00a00513          	li	a0,10
    800048a8:	ffffe097          	auipc	ra,0xffffe
    800048ac:	bf4080e7          	jalr	-1036(ra) # 8000249c <_ZN7Console4putcEc>
        while (!threadEnd) {
    800048b0:	00009797          	auipc	a5,0x9
    800048b4:	2787a783          	lw	a5,632(a5) # 8000db28 <_ZL9threadEnd>
    800048b8:	04079a63          	bnez	a5,8000490c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800048bc:	02093783          	ld	a5,32(s2)
    800048c0:	0087b503          	ld	a0,8(a5)
    800048c4:	00001097          	auipc	ra,0x1
    800048c8:	638080e7          	jalr	1592(ra) # 80005efc <_ZN9BufferCPP3getEv>
            i++;
    800048cc:	0019849b          	addiw	s1,s3,1
    800048d0:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800048d4:	0ff57513          	andi	a0,a0,255
    800048d8:	ffffe097          	auipc	ra,0xffffe
    800048dc:	bc4080e7          	jalr	-1084(ra) # 8000249c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800048e0:	05000793          	li	a5,80
    800048e4:	02f4e4bb          	remw	s1,s1,a5
    800048e8:	fc0494e3          	bnez	s1,800048b0 <_ZN8Consumer3runEv+0x34>
    800048ec:	fb9ff06f          	j	800048a4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800048f0:	02093783          	ld	a5,32(s2)
    800048f4:	0087b503          	ld	a0,8(a5)
    800048f8:	00001097          	auipc	ra,0x1
    800048fc:	604080e7          	jalr	1540(ra) # 80005efc <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004900:	0ff57513          	andi	a0,a0,255
    80004904:	ffffe097          	auipc	ra,0xffffe
    80004908:	b98080e7          	jalr	-1128(ra) # 8000249c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000490c:	02093783          	ld	a5,32(s2)
    80004910:	0087b503          	ld	a0,8(a5)
    80004914:	00001097          	auipc	ra,0x1
    80004918:	674080e7          	jalr	1652(ra) # 80005f88 <_ZN9BufferCPP6getCntEv>
    8000491c:	fca04ae3          	bgtz	a0,800048f0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004920:	02093783          	ld	a5,32(s2)
    80004924:	0107b503          	ld	a0,16(a5)
    80004928:	ffffe097          	auipc	ra,0xffffe
    8000492c:	aac080e7          	jalr	-1364(ra) # 800023d4 <_ZN9Semaphore6signalEv>
    }
    80004930:	02813083          	ld	ra,40(sp)
    80004934:	02013403          	ld	s0,32(sp)
    80004938:	01813483          	ld	s1,24(sp)
    8000493c:	01013903          	ld	s2,16(sp)
    80004940:	00813983          	ld	s3,8(sp)
    80004944:	03010113          	addi	sp,sp,48
    80004948:	00008067          	ret

000000008000494c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000494c:	ff010113          	addi	sp,sp,-16
    80004950:	00113423          	sd	ra,8(sp)
    80004954:	00813023          	sd	s0,0(sp)
    80004958:	01010413          	addi	s0,sp,16
    8000495c:	00008797          	auipc	a5,0x8
    80004960:	07478793          	addi	a5,a5,116 # 8000c9d0 <_ZTV8Consumer+0x10>
    80004964:	00f53023          	sd	a5,0(a0)
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	738080e7          	jalr	1848(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004970:	00813083          	ld	ra,8(sp)
    80004974:	00013403          	ld	s0,0(sp)
    80004978:	01010113          	addi	sp,sp,16
    8000497c:	00008067          	ret

0000000080004980 <_ZN8ConsumerD0Ev>:
    80004980:	fe010113          	addi	sp,sp,-32
    80004984:	00113c23          	sd	ra,24(sp)
    80004988:	00813823          	sd	s0,16(sp)
    8000498c:	00913423          	sd	s1,8(sp)
    80004990:	02010413          	addi	s0,sp,32
    80004994:	00050493          	mv	s1,a0
    80004998:	00008797          	auipc	a5,0x8
    8000499c:	03878793          	addi	a5,a5,56 # 8000c9d0 <_ZTV8Consumer+0x10>
    800049a0:	00f53023          	sd	a5,0(a0)
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	6fc080e7          	jalr	1788(ra) # 800020a0 <_ZN6ThreadD1Ev>
    800049ac:	00048513          	mv	a0,s1
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	7dc080e7          	jalr	2012(ra) # 8000218c <_ZdlPv>
    800049b8:	01813083          	ld	ra,24(sp)
    800049bc:	01013403          	ld	s0,16(sp)
    800049c0:	00813483          	ld	s1,8(sp)
    800049c4:	02010113          	addi	sp,sp,32
    800049c8:	00008067          	ret

00000000800049cc <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800049cc:	ff010113          	addi	sp,sp,-16
    800049d0:	00113423          	sd	ra,8(sp)
    800049d4:	00813023          	sd	s0,0(sp)
    800049d8:	01010413          	addi	s0,sp,16
    800049dc:	00008797          	auipc	a5,0x8
    800049e0:	fa478793          	addi	a5,a5,-92 # 8000c980 <_ZTV16ProducerKeyborad+0x10>
    800049e4:	00f53023          	sd	a5,0(a0)
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	6b8080e7          	jalr	1720(ra) # 800020a0 <_ZN6ThreadD1Ev>
    800049f0:	00813083          	ld	ra,8(sp)
    800049f4:	00013403          	ld	s0,0(sp)
    800049f8:	01010113          	addi	sp,sp,16
    800049fc:	00008067          	ret

0000000080004a00 <_ZN16ProducerKeyboradD0Ev>:
    80004a00:	fe010113          	addi	sp,sp,-32
    80004a04:	00113c23          	sd	ra,24(sp)
    80004a08:	00813823          	sd	s0,16(sp)
    80004a0c:	00913423          	sd	s1,8(sp)
    80004a10:	02010413          	addi	s0,sp,32
    80004a14:	00050493          	mv	s1,a0
    80004a18:	00008797          	auipc	a5,0x8
    80004a1c:	f6878793          	addi	a5,a5,-152 # 8000c980 <_ZTV16ProducerKeyborad+0x10>
    80004a20:	00f53023          	sd	a5,0(a0)
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	67c080e7          	jalr	1660(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004a2c:	00048513          	mv	a0,s1
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	75c080e7          	jalr	1884(ra) # 8000218c <_ZdlPv>
    80004a38:	01813083          	ld	ra,24(sp)
    80004a3c:	01013403          	ld	s0,16(sp)
    80004a40:	00813483          	ld	s1,8(sp)
    80004a44:	02010113          	addi	sp,sp,32
    80004a48:	00008067          	ret

0000000080004a4c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004a4c:	ff010113          	addi	sp,sp,-16
    80004a50:	00113423          	sd	ra,8(sp)
    80004a54:	00813023          	sd	s0,0(sp)
    80004a58:	01010413          	addi	s0,sp,16
    80004a5c:	00008797          	auipc	a5,0x8
    80004a60:	f4c78793          	addi	a5,a5,-180 # 8000c9a8 <_ZTV8Producer+0x10>
    80004a64:	00f53023          	sd	a5,0(a0)
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	638080e7          	jalr	1592(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004a70:	00813083          	ld	ra,8(sp)
    80004a74:	00013403          	ld	s0,0(sp)
    80004a78:	01010113          	addi	sp,sp,16
    80004a7c:	00008067          	ret

0000000080004a80 <_ZN8ProducerD0Ev>:
    80004a80:	fe010113          	addi	sp,sp,-32
    80004a84:	00113c23          	sd	ra,24(sp)
    80004a88:	00813823          	sd	s0,16(sp)
    80004a8c:	00913423          	sd	s1,8(sp)
    80004a90:	02010413          	addi	s0,sp,32
    80004a94:	00050493          	mv	s1,a0
    80004a98:	00008797          	auipc	a5,0x8
    80004a9c:	f1078793          	addi	a5,a5,-240 # 8000c9a8 <_ZTV8Producer+0x10>
    80004aa0:	00f53023          	sd	a5,0(a0)
    80004aa4:	ffffd097          	auipc	ra,0xffffd
    80004aa8:	5fc080e7          	jalr	1532(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80004aac:	00048513          	mv	a0,s1
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	6dc080e7          	jalr	1756(ra) # 8000218c <_ZdlPv>
    80004ab8:	01813083          	ld	ra,24(sp)
    80004abc:	01013403          	ld	s0,16(sp)
    80004ac0:	00813483          	ld	s1,8(sp)
    80004ac4:	02010113          	addi	sp,sp,32
    80004ac8:	00008067          	ret

0000000080004acc <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004acc:	fe010113          	addi	sp,sp,-32
    80004ad0:	00113c23          	sd	ra,24(sp)
    80004ad4:	00813823          	sd	s0,16(sp)
    80004ad8:	00913423          	sd	s1,8(sp)
    80004adc:	02010413          	addi	s0,sp,32
    80004ae0:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004ae4:	ffffd097          	auipc	ra,0xffffd
    80004ae8:	958080e7          	jalr	-1704(ra) # 8000143c <_Z4getcv>
    80004aec:	0005059b          	sext.w	a1,a0
    80004af0:	01b00793          	li	a5,27
    80004af4:	00f58c63          	beq	a1,a5,80004b0c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004af8:	0204b783          	ld	a5,32(s1)
    80004afc:	0087b503          	ld	a0,8(a5)
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	36c080e7          	jalr	876(ra) # 80005e6c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004b08:	fddff06f          	j	80004ae4 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004b0c:	00100793          	li	a5,1
    80004b10:	00009717          	auipc	a4,0x9
    80004b14:	00f72c23          	sw	a5,24(a4) # 8000db28 <_ZL9threadEnd>
        td->buffer->put('!');
    80004b18:	0204b783          	ld	a5,32(s1)
    80004b1c:	02100593          	li	a1,33
    80004b20:	0087b503          	ld	a0,8(a5)
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	348080e7          	jalr	840(ra) # 80005e6c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004b2c:	0204b783          	ld	a5,32(s1)
    80004b30:	0107b503          	ld	a0,16(a5)
    80004b34:	ffffe097          	auipc	ra,0xffffe
    80004b38:	8a0080e7          	jalr	-1888(ra) # 800023d4 <_ZN9Semaphore6signalEv>
    }
    80004b3c:	01813083          	ld	ra,24(sp)
    80004b40:	01013403          	ld	s0,16(sp)
    80004b44:	00813483          	ld	s1,8(sp)
    80004b48:	02010113          	addi	sp,sp,32
    80004b4c:	00008067          	ret

0000000080004b50 <_ZN8Producer3runEv>:
    void run() override {
    80004b50:	fe010113          	addi	sp,sp,-32
    80004b54:	00113c23          	sd	ra,24(sp)
    80004b58:	00813823          	sd	s0,16(sp)
    80004b5c:	00913423          	sd	s1,8(sp)
    80004b60:	01213023          	sd	s2,0(sp)
    80004b64:	02010413          	addi	s0,sp,32
    80004b68:	00050493          	mv	s1,a0
        int i = 0;
    80004b6c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004b70:	00009797          	auipc	a5,0x9
    80004b74:	fb87a783          	lw	a5,-72(a5) # 8000db28 <_ZL9threadEnd>
    80004b78:	04079263          	bnez	a5,80004bbc <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004b7c:	0204b783          	ld	a5,32(s1)
    80004b80:	0007a583          	lw	a1,0(a5)
    80004b84:	0305859b          	addiw	a1,a1,48
    80004b88:	0087b503          	ld	a0,8(a5)
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	2e0080e7          	jalr	736(ra) # 80005e6c <_ZN9BufferCPP3putEi>
            i++;
    80004b94:	0019071b          	addiw	a4,s2,1
    80004b98:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004b9c:	0204b783          	ld	a5,32(s1)
    80004ba0:	0007a783          	lw	a5,0(a5)
    80004ba4:	00e787bb          	addw	a5,a5,a4
    80004ba8:	00500513          	li	a0,5
    80004bac:	02a7e53b          	remw	a0,a5,a0
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	798080e7          	jalr	1944(ra) # 80002348 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004bb8:	fb9ff06f          	j	80004b70 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004bbc:	0204b783          	ld	a5,32(s1)
    80004bc0:	0107b503          	ld	a0,16(a5)
    80004bc4:	ffffe097          	auipc	ra,0xffffe
    80004bc8:	810080e7          	jalr	-2032(ra) # 800023d4 <_ZN9Semaphore6signalEv>
    }
    80004bcc:	01813083          	ld	ra,24(sp)
    80004bd0:	01013403          	ld	s0,16(sp)
    80004bd4:	00813483          	ld	s1,8(sp)
    80004bd8:	00013903          	ld	s2,0(sp)
    80004bdc:	02010113          	addi	sp,sp,32
    80004be0:	00008067          	ret

0000000080004be4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004be4:	fe010113          	addi	sp,sp,-32
    80004be8:	00113c23          	sd	ra,24(sp)
    80004bec:	00813823          	sd	s0,16(sp)
    80004bf0:	00913423          	sd	s1,8(sp)
    80004bf4:	01213023          	sd	s2,0(sp)
    80004bf8:	02010413          	addi	s0,sp,32
    80004bfc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004c00:	00100793          	li	a5,1
    80004c04:	02a7f863          	bgeu	a5,a0,80004c34 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004c08:	00a00793          	li	a5,10
    80004c0c:	02f577b3          	remu	a5,a0,a5
    80004c10:	02078e63          	beqz	a5,80004c4c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c14:	fff48513          	addi	a0,s1,-1
    80004c18:	00000097          	auipc	ra,0x0
    80004c1c:	fcc080e7          	jalr	-52(ra) # 80004be4 <_ZL9fibonaccim>
    80004c20:	00050913          	mv	s2,a0
    80004c24:	ffe48513          	addi	a0,s1,-2
    80004c28:	00000097          	auipc	ra,0x0
    80004c2c:	fbc080e7          	jalr	-68(ra) # 80004be4 <_ZL9fibonaccim>
    80004c30:	00a90533          	add	a0,s2,a0
}
    80004c34:	01813083          	ld	ra,24(sp)
    80004c38:	01013403          	ld	s0,16(sp)
    80004c3c:	00813483          	ld	s1,8(sp)
    80004c40:	00013903          	ld	s2,0(sp)
    80004c44:	02010113          	addi	sp,sp,32
    80004c48:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004c4c:	ffffc097          	auipc	ra,0xffffc
    80004c50:	6b0080e7          	jalr	1712(ra) # 800012fc <_Z15thread_dispatchv>
    80004c54:	fc1ff06f          	j	80004c14 <_ZL9fibonaccim+0x30>

0000000080004c58 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004c58:	fe010113          	addi	sp,sp,-32
    80004c5c:	00113c23          	sd	ra,24(sp)
    80004c60:	00813823          	sd	s0,16(sp)
    80004c64:	00913423          	sd	s1,8(sp)
    80004c68:	01213023          	sd	s2,0(sp)
    80004c6c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004c70:	00a00493          	li	s1,10
    80004c74:	0400006f          	j	80004cb4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c78:	00005517          	auipc	a0,0x5
    80004c7c:	58850513          	addi	a0,a0,1416 # 8000a200 <CONSOLE_STATUS+0x1f0>
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	dc8080e7          	jalr	-568(ra) # 80005a48 <_Z11printStringPKc>
    80004c88:	00000613          	li	a2,0
    80004c8c:	00a00593          	li	a1,10
    80004c90:	00048513          	mv	a0,s1
    80004c94:	00001097          	auipc	ra,0x1
    80004c98:	f64080e7          	jalr	-156(ra) # 80005bf8 <_Z8printIntiii>
    80004c9c:	00005517          	auipc	a0,0x5
    80004ca0:	75450513          	addi	a0,a0,1876 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80004ca4:	00001097          	auipc	ra,0x1
    80004ca8:	da4080e7          	jalr	-604(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004cac:	0014849b          	addiw	s1,s1,1
    80004cb0:	0ff4f493          	andi	s1,s1,255
    80004cb4:	00c00793          	li	a5,12
    80004cb8:	fc97f0e3          	bgeu	a5,s1,80004c78 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004cbc:	00005517          	auipc	a0,0x5
    80004cc0:	54c50513          	addi	a0,a0,1356 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	d84080e7          	jalr	-636(ra) # 80005a48 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004ccc:	00500313          	li	t1,5
    thread_dispatch();
    80004cd0:	ffffc097          	auipc	ra,0xffffc
    80004cd4:	62c080e7          	jalr	1580(ra) # 800012fc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004cd8:	01000513          	li	a0,16
    80004cdc:	00000097          	auipc	ra,0x0
    80004ce0:	f08080e7          	jalr	-248(ra) # 80004be4 <_ZL9fibonaccim>
    80004ce4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004ce8:	00005517          	auipc	a0,0x5
    80004cec:	53050513          	addi	a0,a0,1328 # 8000a218 <CONSOLE_STATUS+0x208>
    80004cf0:	00001097          	auipc	ra,0x1
    80004cf4:	d58080e7          	jalr	-680(ra) # 80005a48 <_Z11printStringPKc>
    80004cf8:	00000613          	li	a2,0
    80004cfc:	00a00593          	li	a1,10
    80004d00:	0009051b          	sext.w	a0,s2
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	ef4080e7          	jalr	-268(ra) # 80005bf8 <_Z8printIntiii>
    80004d0c:	00005517          	auipc	a0,0x5
    80004d10:	6e450513          	addi	a0,a0,1764 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80004d14:	00001097          	auipc	ra,0x1
    80004d18:	d34080e7          	jalr	-716(ra) # 80005a48 <_Z11printStringPKc>
    80004d1c:	0400006f          	j	80004d5c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d20:	00005517          	auipc	a0,0x5
    80004d24:	4e050513          	addi	a0,a0,1248 # 8000a200 <CONSOLE_STATUS+0x1f0>
    80004d28:	00001097          	auipc	ra,0x1
    80004d2c:	d20080e7          	jalr	-736(ra) # 80005a48 <_Z11printStringPKc>
    80004d30:	00000613          	li	a2,0
    80004d34:	00a00593          	li	a1,10
    80004d38:	00048513          	mv	a0,s1
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	ebc080e7          	jalr	-324(ra) # 80005bf8 <_Z8printIntiii>
    80004d44:	00005517          	auipc	a0,0x5
    80004d48:	6ac50513          	addi	a0,a0,1708 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	cfc080e7          	jalr	-772(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004d54:	0014849b          	addiw	s1,s1,1
    80004d58:	0ff4f493          	andi	s1,s1,255
    80004d5c:	00f00793          	li	a5,15
    80004d60:	fc97f0e3          	bgeu	a5,s1,80004d20 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004d64:	00005517          	auipc	a0,0x5
    80004d68:	4c450513          	addi	a0,a0,1220 # 8000a228 <CONSOLE_STATUS+0x218>
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	cdc080e7          	jalr	-804(ra) # 80005a48 <_Z11printStringPKc>
    finishedD = true;
    80004d74:	00100793          	li	a5,1
    80004d78:	00009717          	auipc	a4,0x9
    80004d7c:	dcf70023          	sb	a5,-576(a4) # 8000db38 <_ZL9finishedD>
    thread_dispatch();
    80004d80:	ffffc097          	auipc	ra,0xffffc
    80004d84:	57c080e7          	jalr	1404(ra) # 800012fc <_Z15thread_dispatchv>
}
    80004d88:	01813083          	ld	ra,24(sp)
    80004d8c:	01013403          	ld	s0,16(sp)
    80004d90:	00813483          	ld	s1,8(sp)
    80004d94:	00013903          	ld	s2,0(sp)
    80004d98:	02010113          	addi	sp,sp,32
    80004d9c:	00008067          	ret

0000000080004da0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004da0:	fe010113          	addi	sp,sp,-32
    80004da4:	00113c23          	sd	ra,24(sp)
    80004da8:	00813823          	sd	s0,16(sp)
    80004dac:	00913423          	sd	s1,8(sp)
    80004db0:	01213023          	sd	s2,0(sp)
    80004db4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004db8:	00000493          	li	s1,0
    80004dbc:	0400006f          	j	80004dfc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004dc0:	00005517          	auipc	a0,0x5
    80004dc4:	41050513          	addi	a0,a0,1040 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    80004dc8:	00001097          	auipc	ra,0x1
    80004dcc:	c80080e7          	jalr	-896(ra) # 80005a48 <_Z11printStringPKc>
    80004dd0:	00000613          	li	a2,0
    80004dd4:	00a00593          	li	a1,10
    80004dd8:	00048513          	mv	a0,s1
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	e1c080e7          	jalr	-484(ra) # 80005bf8 <_Z8printIntiii>
    80004de4:	00005517          	auipc	a0,0x5
    80004de8:	60c50513          	addi	a0,a0,1548 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	c5c080e7          	jalr	-932(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004df4:	0014849b          	addiw	s1,s1,1
    80004df8:	0ff4f493          	andi	s1,s1,255
    80004dfc:	00200793          	li	a5,2
    80004e00:	fc97f0e3          	bgeu	a5,s1,80004dc0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004e04:	00005517          	auipc	a0,0x5
    80004e08:	3d450513          	addi	a0,a0,980 # 8000a1d8 <CONSOLE_STATUS+0x1c8>
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	c3c080e7          	jalr	-964(ra) # 80005a48 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e14:	00700313          	li	t1,7
    thread_dispatch();
    80004e18:	ffffc097          	auipc	ra,0xffffc
    80004e1c:	4e4080e7          	jalr	1252(ra) # 800012fc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e20:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004e24:	00005517          	auipc	a0,0x5
    80004e28:	3c450513          	addi	a0,a0,964 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80004e2c:	00001097          	auipc	ra,0x1
    80004e30:	c1c080e7          	jalr	-996(ra) # 80005a48 <_Z11printStringPKc>
    80004e34:	00000613          	li	a2,0
    80004e38:	00a00593          	li	a1,10
    80004e3c:	0009051b          	sext.w	a0,s2
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	db8080e7          	jalr	-584(ra) # 80005bf8 <_Z8printIntiii>
    80004e48:	00005517          	auipc	a0,0x5
    80004e4c:	5a850513          	addi	a0,a0,1448 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	bf8080e7          	jalr	-1032(ra) # 80005a48 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004e58:	00c00513          	li	a0,12
    80004e5c:	00000097          	auipc	ra,0x0
    80004e60:	d88080e7          	jalr	-632(ra) # 80004be4 <_ZL9fibonaccim>
    80004e64:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004e68:	00005517          	auipc	a0,0x5
    80004e6c:	38850513          	addi	a0,a0,904 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    80004e70:	00001097          	auipc	ra,0x1
    80004e74:	bd8080e7          	jalr	-1064(ra) # 80005a48 <_Z11printStringPKc>
    80004e78:	00000613          	li	a2,0
    80004e7c:	00a00593          	li	a1,10
    80004e80:	0009051b          	sext.w	a0,s2
    80004e84:	00001097          	auipc	ra,0x1
    80004e88:	d74080e7          	jalr	-652(ra) # 80005bf8 <_Z8printIntiii>
    80004e8c:	00005517          	auipc	a0,0x5
    80004e90:	56450513          	addi	a0,a0,1380 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80004e94:	00001097          	auipc	ra,0x1
    80004e98:	bb4080e7          	jalr	-1100(ra) # 80005a48 <_Z11printStringPKc>
    80004e9c:	0400006f          	j	80004edc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004ea0:	00005517          	auipc	a0,0x5
    80004ea4:	33050513          	addi	a0,a0,816 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    80004ea8:	00001097          	auipc	ra,0x1
    80004eac:	ba0080e7          	jalr	-1120(ra) # 80005a48 <_Z11printStringPKc>
    80004eb0:	00000613          	li	a2,0
    80004eb4:	00a00593          	li	a1,10
    80004eb8:	00048513          	mv	a0,s1
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	d3c080e7          	jalr	-708(ra) # 80005bf8 <_Z8printIntiii>
    80004ec4:	00005517          	auipc	a0,0x5
    80004ec8:	52c50513          	addi	a0,a0,1324 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	b7c080e7          	jalr	-1156(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ed4:	0014849b          	addiw	s1,s1,1
    80004ed8:	0ff4f493          	andi	s1,s1,255
    80004edc:	00500793          	li	a5,5
    80004ee0:	fc97f0e3          	bgeu	a5,s1,80004ea0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004ee4:	00005517          	auipc	a0,0x5
    80004ee8:	2c450513          	addi	a0,a0,708 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80004eec:	00001097          	auipc	ra,0x1
    80004ef0:	b5c080e7          	jalr	-1188(ra) # 80005a48 <_Z11printStringPKc>
    finishedC = true;
    80004ef4:	00100793          	li	a5,1
    80004ef8:	00009717          	auipc	a4,0x9
    80004efc:	c4f700a3          	sb	a5,-959(a4) # 8000db39 <_ZL9finishedC>
    thread_dispatch();
    80004f00:	ffffc097          	auipc	ra,0xffffc
    80004f04:	3fc080e7          	jalr	1020(ra) # 800012fc <_Z15thread_dispatchv>
}
    80004f08:	01813083          	ld	ra,24(sp)
    80004f0c:	01013403          	ld	s0,16(sp)
    80004f10:	00813483          	ld	s1,8(sp)
    80004f14:	00013903          	ld	s2,0(sp)
    80004f18:	02010113          	addi	sp,sp,32
    80004f1c:	00008067          	ret

0000000080004f20 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004f20:	fe010113          	addi	sp,sp,-32
    80004f24:	00113c23          	sd	ra,24(sp)
    80004f28:	00813823          	sd	s0,16(sp)
    80004f2c:	00913423          	sd	s1,8(sp)
    80004f30:	01213023          	sd	s2,0(sp)
    80004f34:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004f38:	00000913          	li	s2,0
    80004f3c:	0380006f          	j	80004f74 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004f40:	ffffc097          	auipc	ra,0xffffc
    80004f44:	3bc080e7          	jalr	956(ra) # 800012fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f48:	00148493          	addi	s1,s1,1
    80004f4c:	000027b7          	lui	a5,0x2
    80004f50:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f54:	0097ee63          	bltu	a5,s1,80004f70 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f58:	00000713          	li	a4,0
    80004f5c:	000077b7          	lui	a5,0x7
    80004f60:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f64:	fce7eee3          	bltu	a5,a4,80004f40 <_ZL11workerBodyBPv+0x20>
    80004f68:	00170713          	addi	a4,a4,1
    80004f6c:	ff1ff06f          	j	80004f5c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004f70:	00190913          	addi	s2,s2,1
    80004f74:	00f00793          	li	a5,15
    80004f78:	0527e063          	bltu	a5,s2,80004fb8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004f7c:	00005517          	auipc	a0,0x5
    80004f80:	23c50513          	addi	a0,a0,572 # 8000a1b8 <CONSOLE_STATUS+0x1a8>
    80004f84:	00001097          	auipc	ra,0x1
    80004f88:	ac4080e7          	jalr	-1340(ra) # 80005a48 <_Z11printStringPKc>
    80004f8c:	00000613          	li	a2,0
    80004f90:	00a00593          	li	a1,10
    80004f94:	0009051b          	sext.w	a0,s2
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	c60080e7          	jalr	-928(ra) # 80005bf8 <_Z8printIntiii>
    80004fa0:	00005517          	auipc	a0,0x5
    80004fa4:	45050513          	addi	a0,a0,1104 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	aa0080e7          	jalr	-1376(ra) # 80005a48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004fb0:	00000493          	li	s1,0
    80004fb4:	f99ff06f          	j	80004f4c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004fb8:	00005517          	auipc	a0,0x5
    80004fbc:	20850513          	addi	a0,a0,520 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	a88080e7          	jalr	-1400(ra) # 80005a48 <_Z11printStringPKc>
    finishedB = true;
    80004fc8:	00100793          	li	a5,1
    80004fcc:	00009717          	auipc	a4,0x9
    80004fd0:	b6f70723          	sb	a5,-1170(a4) # 8000db3a <_ZL9finishedB>
    thread_dispatch();
    80004fd4:	ffffc097          	auipc	ra,0xffffc
    80004fd8:	328080e7          	jalr	808(ra) # 800012fc <_Z15thread_dispatchv>
}
    80004fdc:	01813083          	ld	ra,24(sp)
    80004fe0:	01013403          	ld	s0,16(sp)
    80004fe4:	00813483          	ld	s1,8(sp)
    80004fe8:	00013903          	ld	s2,0(sp)
    80004fec:	02010113          	addi	sp,sp,32
    80004ff0:	00008067          	ret

0000000080004ff4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004ff4:	fe010113          	addi	sp,sp,-32
    80004ff8:	00113c23          	sd	ra,24(sp)
    80004ffc:	00813823          	sd	s0,16(sp)
    80005000:	00913423          	sd	s1,8(sp)
    80005004:	01213023          	sd	s2,0(sp)
    80005008:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000500c:	00000913          	li	s2,0
    80005010:	0380006f          	j	80005048 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	2e8080e7          	jalr	744(ra) # 800012fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000501c:	00148493          	addi	s1,s1,1
    80005020:	000027b7          	lui	a5,0x2
    80005024:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005028:	0097ee63          	bltu	a5,s1,80005044 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000502c:	00000713          	li	a4,0
    80005030:	000077b7          	lui	a5,0x7
    80005034:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005038:	fce7eee3          	bltu	a5,a4,80005014 <_ZL11workerBodyAPv+0x20>
    8000503c:	00170713          	addi	a4,a4,1
    80005040:	ff1ff06f          	j	80005030 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005044:	00190913          	addi	s2,s2,1
    80005048:	00900793          	li	a5,9
    8000504c:	0527e063          	bltu	a5,s2,8000508c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005050:	00005517          	auipc	a0,0x5
    80005054:	15050513          	addi	a0,a0,336 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005058:	00001097          	auipc	ra,0x1
    8000505c:	9f0080e7          	jalr	-1552(ra) # 80005a48 <_Z11printStringPKc>
    80005060:	00000613          	li	a2,0
    80005064:	00a00593          	li	a1,10
    80005068:	0009051b          	sext.w	a0,s2
    8000506c:	00001097          	auipc	ra,0x1
    80005070:	b8c080e7          	jalr	-1140(ra) # 80005bf8 <_Z8printIntiii>
    80005074:	00005517          	auipc	a0,0x5
    80005078:	37c50513          	addi	a0,a0,892 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    8000507c:	00001097          	auipc	ra,0x1
    80005080:	9cc080e7          	jalr	-1588(ra) # 80005a48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005084:	00000493          	li	s1,0
    80005088:	f99ff06f          	j	80005020 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000508c:	00005517          	auipc	a0,0x5
    80005090:	11c50513          	addi	a0,a0,284 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005094:	00001097          	auipc	ra,0x1
    80005098:	9b4080e7          	jalr	-1612(ra) # 80005a48 <_Z11printStringPKc>
    finishedA = true;
    8000509c:	00100793          	li	a5,1
    800050a0:	00009717          	auipc	a4,0x9
    800050a4:	a8f70da3          	sb	a5,-1381(a4) # 8000db3b <_ZL9finishedA>
}
    800050a8:	01813083          	ld	ra,24(sp)
    800050ac:	01013403          	ld	s0,16(sp)
    800050b0:	00813483          	ld	s1,8(sp)
    800050b4:	00013903          	ld	s2,0(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret

00000000800050c0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800050c0:	fd010113          	addi	sp,sp,-48
    800050c4:	02113423          	sd	ra,40(sp)
    800050c8:	02813023          	sd	s0,32(sp)
    800050cc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800050d0:	00000613          	li	a2,0
    800050d4:	00000597          	auipc	a1,0x0
    800050d8:	f2058593          	addi	a1,a1,-224 # 80004ff4 <_ZL11workerBodyAPv>
    800050dc:	fd040513          	addi	a0,s0,-48
    800050e0:	ffffc097          	auipc	ra,0xffffc
    800050e4:	1bc080e7          	jalr	444(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    printString("ThreadA created\n");
    800050e8:	00005517          	auipc	a0,0x5
    800050ec:	15050513          	addi	a0,a0,336 # 8000a238 <CONSOLE_STATUS+0x228>
    800050f0:	00001097          	auipc	ra,0x1
    800050f4:	958080e7          	jalr	-1704(ra) # 80005a48 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800050f8:	00000613          	li	a2,0
    800050fc:	00000597          	auipc	a1,0x0
    80005100:	e2458593          	addi	a1,a1,-476 # 80004f20 <_ZL11workerBodyBPv>
    80005104:	fd840513          	addi	a0,s0,-40
    80005108:	ffffc097          	auipc	ra,0xffffc
    8000510c:	194080e7          	jalr	404(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    printString("ThreadB created\n");
    80005110:	00005517          	auipc	a0,0x5
    80005114:	14050513          	addi	a0,a0,320 # 8000a250 <CONSOLE_STATUS+0x240>
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	930080e7          	jalr	-1744(ra) # 80005a48 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005120:	00000613          	li	a2,0
    80005124:	00000597          	auipc	a1,0x0
    80005128:	c7c58593          	addi	a1,a1,-900 # 80004da0 <_ZL11workerBodyCPv>
    8000512c:	fe040513          	addi	a0,s0,-32
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	16c080e7          	jalr	364(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    printString("ThreadC created\n");
    80005138:	00005517          	auipc	a0,0x5
    8000513c:	13050513          	addi	a0,a0,304 # 8000a268 <CONSOLE_STATUS+0x258>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	908080e7          	jalr	-1784(ra) # 80005a48 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005148:	00000613          	li	a2,0
    8000514c:	00000597          	auipc	a1,0x0
    80005150:	b0c58593          	addi	a1,a1,-1268 # 80004c58 <_ZL11workerBodyDPv>
    80005154:	fe840513          	addi	a0,s0,-24
    80005158:	ffffc097          	auipc	ra,0xffffc
    8000515c:	144080e7          	jalr	324(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    printString("ThreadD created\n");
    80005160:	00005517          	auipc	a0,0x5
    80005164:	12050513          	addi	a0,a0,288 # 8000a280 <CONSOLE_STATUS+0x270>
    80005168:	00001097          	auipc	ra,0x1
    8000516c:	8e0080e7          	jalr	-1824(ra) # 80005a48 <_Z11printStringPKc>
    80005170:	00c0006f          	j	8000517c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005174:	ffffc097          	auipc	ra,0xffffc
    80005178:	188080e7          	jalr	392(ra) # 800012fc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000517c:	00009797          	auipc	a5,0x9
    80005180:	9bf7c783          	lbu	a5,-1601(a5) # 8000db3b <_ZL9finishedA>
    80005184:	fe0788e3          	beqz	a5,80005174 <_Z18Threads_C_API_testv+0xb4>
    80005188:	00009797          	auipc	a5,0x9
    8000518c:	9b27c783          	lbu	a5,-1614(a5) # 8000db3a <_ZL9finishedB>
    80005190:	fe0782e3          	beqz	a5,80005174 <_Z18Threads_C_API_testv+0xb4>
    80005194:	00009797          	auipc	a5,0x9
    80005198:	9a57c783          	lbu	a5,-1627(a5) # 8000db39 <_ZL9finishedC>
    8000519c:	fc078ce3          	beqz	a5,80005174 <_Z18Threads_C_API_testv+0xb4>
    800051a0:	00009797          	auipc	a5,0x9
    800051a4:	9987c783          	lbu	a5,-1640(a5) # 8000db38 <_ZL9finishedD>
    800051a8:	fc0786e3          	beqz	a5,80005174 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800051ac:	02813083          	ld	ra,40(sp)
    800051b0:	02013403          	ld	s0,32(sp)
    800051b4:	03010113          	addi	sp,sp,48
    800051b8:	00008067          	ret

00000000800051bc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800051bc:	fd010113          	addi	sp,sp,-48
    800051c0:	02113423          	sd	ra,40(sp)
    800051c4:	02813023          	sd	s0,32(sp)
    800051c8:	00913c23          	sd	s1,24(sp)
    800051cc:	01213823          	sd	s2,16(sp)
    800051d0:	01313423          	sd	s3,8(sp)
    800051d4:	03010413          	addi	s0,sp,48
    800051d8:	00050993          	mv	s3,a0
    800051dc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800051e0:	00000913          	li	s2,0
    800051e4:	00c0006f          	j	800051f0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800051e8:	ffffd097          	auipc	ra,0xffffd
    800051ec:	138080e7          	jalr	312(ra) # 80002320 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800051f0:	ffffc097          	auipc	ra,0xffffc
    800051f4:	24c080e7          	jalr	588(ra) # 8000143c <_Z4getcv>
    800051f8:	0005059b          	sext.w	a1,a0
    800051fc:	01b00793          	li	a5,27
    80005200:	02f58a63          	beq	a1,a5,80005234 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005204:	0084b503          	ld	a0,8(s1)
    80005208:	00001097          	auipc	ra,0x1
    8000520c:	c64080e7          	jalr	-924(ra) # 80005e6c <_ZN9BufferCPP3putEi>
        i++;
    80005210:	0019071b          	addiw	a4,s2,1
    80005214:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005218:	0004a683          	lw	a3,0(s1)
    8000521c:	0026979b          	slliw	a5,a3,0x2
    80005220:	00d787bb          	addw	a5,a5,a3
    80005224:	0017979b          	slliw	a5,a5,0x1
    80005228:	02f767bb          	remw	a5,a4,a5
    8000522c:	fc0792e3          	bnez	a5,800051f0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005230:	fb9ff06f          	j	800051e8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005234:	00100793          	li	a5,1
    80005238:	00009717          	auipc	a4,0x9
    8000523c:	90f72423          	sw	a5,-1784(a4) # 8000db40 <_ZL9threadEnd>
    td->buffer->put('!');
    80005240:	0209b783          	ld	a5,32(s3)
    80005244:	02100593          	li	a1,33
    80005248:	0087b503          	ld	a0,8(a5)
    8000524c:	00001097          	auipc	ra,0x1
    80005250:	c20080e7          	jalr	-992(ra) # 80005e6c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005254:	0104b503          	ld	a0,16(s1)
    80005258:	ffffd097          	auipc	ra,0xffffd
    8000525c:	17c080e7          	jalr	380(ra) # 800023d4 <_ZN9Semaphore6signalEv>
}
    80005260:	02813083          	ld	ra,40(sp)
    80005264:	02013403          	ld	s0,32(sp)
    80005268:	01813483          	ld	s1,24(sp)
    8000526c:	01013903          	ld	s2,16(sp)
    80005270:	00813983          	ld	s3,8(sp)
    80005274:	03010113          	addi	sp,sp,48
    80005278:	00008067          	ret

000000008000527c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000527c:	fe010113          	addi	sp,sp,-32
    80005280:	00113c23          	sd	ra,24(sp)
    80005284:	00813823          	sd	s0,16(sp)
    80005288:	00913423          	sd	s1,8(sp)
    8000528c:	01213023          	sd	s2,0(sp)
    80005290:	02010413          	addi	s0,sp,32
    80005294:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005298:	00000913          	li	s2,0
    8000529c:	00c0006f          	j	800052a8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	080080e7          	jalr	128(ra) # 80002320 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800052a8:	00009797          	auipc	a5,0x9
    800052ac:	8987a783          	lw	a5,-1896(a5) # 8000db40 <_ZL9threadEnd>
    800052b0:	02079e63          	bnez	a5,800052ec <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800052b4:	0004a583          	lw	a1,0(s1)
    800052b8:	0305859b          	addiw	a1,a1,48
    800052bc:	0084b503          	ld	a0,8(s1)
    800052c0:	00001097          	auipc	ra,0x1
    800052c4:	bac080e7          	jalr	-1108(ra) # 80005e6c <_ZN9BufferCPP3putEi>
        i++;
    800052c8:	0019071b          	addiw	a4,s2,1
    800052cc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800052d0:	0004a683          	lw	a3,0(s1)
    800052d4:	0026979b          	slliw	a5,a3,0x2
    800052d8:	00d787bb          	addw	a5,a5,a3
    800052dc:	0017979b          	slliw	a5,a5,0x1
    800052e0:	02f767bb          	remw	a5,a4,a5
    800052e4:	fc0792e3          	bnez	a5,800052a8 <_ZN12ProducerSync8producerEPv+0x2c>
    800052e8:	fb9ff06f          	j	800052a0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800052ec:	0104b503          	ld	a0,16(s1)
    800052f0:	ffffd097          	auipc	ra,0xffffd
    800052f4:	0e4080e7          	jalr	228(ra) # 800023d4 <_ZN9Semaphore6signalEv>
}
    800052f8:	01813083          	ld	ra,24(sp)
    800052fc:	01013403          	ld	s0,16(sp)
    80005300:	00813483          	ld	s1,8(sp)
    80005304:	00013903          	ld	s2,0(sp)
    80005308:	02010113          	addi	sp,sp,32
    8000530c:	00008067          	ret

0000000080005310 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005310:	fd010113          	addi	sp,sp,-48
    80005314:	02113423          	sd	ra,40(sp)
    80005318:	02813023          	sd	s0,32(sp)
    8000531c:	00913c23          	sd	s1,24(sp)
    80005320:	01213823          	sd	s2,16(sp)
    80005324:	01313423          	sd	s3,8(sp)
    80005328:	01413023          	sd	s4,0(sp)
    8000532c:	03010413          	addi	s0,sp,48
    80005330:	00050993          	mv	s3,a0
    80005334:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005338:	00000a13          	li	s4,0
    8000533c:	01c0006f          	j	80005358 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005340:	ffffd097          	auipc	ra,0xffffd
    80005344:	fe0080e7          	jalr	-32(ra) # 80002320 <_ZN6Thread8dispatchEv>
    80005348:	0500006f          	j	80005398 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000534c:	00a00513          	li	a0,10
    80005350:	ffffc097          	auipc	ra,0xffffc
    80005354:	118080e7          	jalr	280(ra) # 80001468 <_Z4putcc>
    while (!threadEnd) {
    80005358:	00008797          	auipc	a5,0x8
    8000535c:	7e87a783          	lw	a5,2024(a5) # 8000db40 <_ZL9threadEnd>
    80005360:	06079263          	bnez	a5,800053c4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005364:	00893503          	ld	a0,8(s2)
    80005368:	00001097          	auipc	ra,0x1
    8000536c:	b94080e7          	jalr	-1132(ra) # 80005efc <_ZN9BufferCPP3getEv>
        i++;
    80005370:	001a049b          	addiw	s1,s4,1
    80005374:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005378:	0ff57513          	andi	a0,a0,255
    8000537c:	ffffc097          	auipc	ra,0xffffc
    80005380:	0ec080e7          	jalr	236(ra) # 80001468 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005384:	00092703          	lw	a4,0(s2)
    80005388:	0027179b          	slliw	a5,a4,0x2
    8000538c:	00e787bb          	addw	a5,a5,a4
    80005390:	02f4e7bb          	remw	a5,s1,a5
    80005394:	fa0786e3          	beqz	a5,80005340 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005398:	05000793          	li	a5,80
    8000539c:	02f4e4bb          	remw	s1,s1,a5
    800053a0:	fa049ce3          	bnez	s1,80005358 <_ZN12ConsumerSync8consumerEPv+0x48>
    800053a4:	fa9ff06f          	j	8000534c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800053a8:	0209b783          	ld	a5,32(s3)
    800053ac:	0087b503          	ld	a0,8(a5)
    800053b0:	00001097          	auipc	ra,0x1
    800053b4:	b4c080e7          	jalr	-1204(ra) # 80005efc <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800053b8:	0ff57513          	andi	a0,a0,255
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	0e0080e7          	jalr	224(ra) # 8000249c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800053c4:	0209b783          	ld	a5,32(s3)
    800053c8:	0087b503          	ld	a0,8(a5)
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	bbc080e7          	jalr	-1092(ra) # 80005f88 <_ZN9BufferCPP6getCntEv>
    800053d4:	fca04ae3          	bgtz	a0,800053a8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800053d8:	01093503          	ld	a0,16(s2)
    800053dc:	ffffd097          	auipc	ra,0xffffd
    800053e0:	ff8080e7          	jalr	-8(ra) # 800023d4 <_ZN9Semaphore6signalEv>
}
    800053e4:	02813083          	ld	ra,40(sp)
    800053e8:	02013403          	ld	s0,32(sp)
    800053ec:	01813483          	ld	s1,24(sp)
    800053f0:	01013903          	ld	s2,16(sp)
    800053f4:	00813983          	ld	s3,8(sp)
    800053f8:	00013a03          	ld	s4,0(sp)
    800053fc:	03010113          	addi	sp,sp,48
    80005400:	00008067          	ret

0000000080005404 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005404:	f8010113          	addi	sp,sp,-128
    80005408:	06113c23          	sd	ra,120(sp)
    8000540c:	06813823          	sd	s0,112(sp)
    80005410:	06913423          	sd	s1,104(sp)
    80005414:	07213023          	sd	s2,96(sp)
    80005418:	05313c23          	sd	s3,88(sp)
    8000541c:	05413823          	sd	s4,80(sp)
    80005420:	05513423          	sd	s5,72(sp)
    80005424:	05613023          	sd	s6,64(sp)
    80005428:	03713c23          	sd	s7,56(sp)
    8000542c:	03813823          	sd	s8,48(sp)
    80005430:	03913423          	sd	s9,40(sp)
    80005434:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005438:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000543c:	00005517          	auipc	a0,0x5
    80005440:	c7c50513          	addi	a0,a0,-900 # 8000a0b8 <CONSOLE_STATUS+0xa8>
    80005444:	00000097          	auipc	ra,0x0
    80005448:	604080e7          	jalr	1540(ra) # 80005a48 <_Z11printStringPKc>
    getString(input, 30);
    8000544c:	01e00593          	li	a1,30
    80005450:	f8040493          	addi	s1,s0,-128
    80005454:	00048513          	mv	a0,s1
    80005458:	00000097          	auipc	ra,0x0
    8000545c:	678080e7          	jalr	1656(ra) # 80005ad0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005460:	00048513          	mv	a0,s1
    80005464:	00000097          	auipc	ra,0x0
    80005468:	744080e7          	jalr	1860(ra) # 80005ba8 <_Z11stringToIntPKc>
    8000546c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005470:	00005517          	auipc	a0,0x5
    80005474:	c6850513          	addi	a0,a0,-920 # 8000a0d8 <CONSOLE_STATUS+0xc8>
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	5d0080e7          	jalr	1488(ra) # 80005a48 <_Z11printStringPKc>
    getString(input, 30);
    80005480:	01e00593          	li	a1,30
    80005484:	00048513          	mv	a0,s1
    80005488:	00000097          	auipc	ra,0x0
    8000548c:	648080e7          	jalr	1608(ra) # 80005ad0 <_Z9getStringPci>
    n = stringToInt(input);
    80005490:	00048513          	mv	a0,s1
    80005494:	00000097          	auipc	ra,0x0
    80005498:	714080e7          	jalr	1812(ra) # 80005ba8 <_Z11stringToIntPKc>
    8000549c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800054a0:	00005517          	auipc	a0,0x5
    800054a4:	c5850513          	addi	a0,a0,-936 # 8000a0f8 <CONSOLE_STATUS+0xe8>
    800054a8:	00000097          	auipc	ra,0x0
    800054ac:	5a0080e7          	jalr	1440(ra) # 80005a48 <_Z11printStringPKc>
    800054b0:	00000613          	li	a2,0
    800054b4:	00a00593          	li	a1,10
    800054b8:	00090513          	mv	a0,s2
    800054bc:	00000097          	auipc	ra,0x0
    800054c0:	73c080e7          	jalr	1852(ra) # 80005bf8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800054c4:	00005517          	auipc	a0,0x5
    800054c8:	c4c50513          	addi	a0,a0,-948 # 8000a110 <CONSOLE_STATUS+0x100>
    800054cc:	00000097          	auipc	ra,0x0
    800054d0:	57c080e7          	jalr	1404(ra) # 80005a48 <_Z11printStringPKc>
    800054d4:	00000613          	li	a2,0
    800054d8:	00a00593          	li	a1,10
    800054dc:	00048513          	mv	a0,s1
    800054e0:	00000097          	auipc	ra,0x0
    800054e4:	718080e7          	jalr	1816(ra) # 80005bf8 <_Z8printIntiii>
    printString(".\n");
    800054e8:	00005517          	auipc	a0,0x5
    800054ec:	c4050513          	addi	a0,a0,-960 # 8000a128 <CONSOLE_STATUS+0x118>
    800054f0:	00000097          	auipc	ra,0x0
    800054f4:	558080e7          	jalr	1368(ra) # 80005a48 <_Z11printStringPKc>
    if(threadNum > n) {
    800054f8:	0324c463          	blt	s1,s2,80005520 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800054fc:	03205c63          	blez	s2,80005534 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005500:	03800513          	li	a0,56
    80005504:	ffffd097          	auipc	ra,0xffffd
    80005508:	c60080e7          	jalr	-928(ra) # 80002164 <_Znwm>
    8000550c:	00050a93          	mv	s5,a0
    80005510:	00048593          	mv	a1,s1
    80005514:	00001097          	auipc	ra,0x1
    80005518:	804080e7          	jalr	-2044(ra) # 80005d18 <_ZN9BufferCPPC1Ei>
    8000551c:	0300006f          	j	8000554c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005520:	00005517          	auipc	a0,0x5
    80005524:	c1050513          	addi	a0,a0,-1008 # 8000a130 <CONSOLE_STATUS+0x120>
    80005528:	00000097          	auipc	ra,0x0
    8000552c:	520080e7          	jalr	1312(ra) # 80005a48 <_Z11printStringPKc>
        return;
    80005530:	0140006f          	j	80005544 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005534:	00005517          	auipc	a0,0x5
    80005538:	c3c50513          	addi	a0,a0,-964 # 8000a170 <CONSOLE_STATUS+0x160>
    8000553c:	00000097          	auipc	ra,0x0
    80005540:	50c080e7          	jalr	1292(ra) # 80005a48 <_Z11printStringPKc>
        return;
    80005544:	000b8113          	mv	sp,s7
    80005548:	2380006f          	j	80005780 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000554c:	01000513          	li	a0,16
    80005550:	ffffd097          	auipc	ra,0xffffd
    80005554:	c14080e7          	jalr	-1004(ra) # 80002164 <_Znwm>
    80005558:	00050493          	mv	s1,a0
    8000555c:	00000593          	li	a1,0
    80005560:	ffffd097          	auipc	ra,0xffffd
    80005564:	e10080e7          	jalr	-496(ra) # 80002370 <_ZN9SemaphoreC1Ej>
    80005568:	00008797          	auipc	a5,0x8
    8000556c:	5e97b023          	sd	s1,1504(a5) # 8000db48 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005570:	00391793          	slli	a5,s2,0x3
    80005574:	00f78793          	addi	a5,a5,15
    80005578:	ff07f793          	andi	a5,a5,-16
    8000557c:	40f10133          	sub	sp,sp,a5
    80005580:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005584:	0019071b          	addiw	a4,s2,1
    80005588:	00171793          	slli	a5,a4,0x1
    8000558c:	00e787b3          	add	a5,a5,a4
    80005590:	00379793          	slli	a5,a5,0x3
    80005594:	00f78793          	addi	a5,a5,15
    80005598:	ff07f793          	andi	a5,a5,-16
    8000559c:	40f10133          	sub	sp,sp,a5
    800055a0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800055a4:	00191c13          	slli	s8,s2,0x1
    800055a8:	012c07b3          	add	a5,s8,s2
    800055ac:	00379793          	slli	a5,a5,0x3
    800055b0:	00fa07b3          	add	a5,s4,a5
    800055b4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800055b8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800055bc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800055c0:	02800513          	li	a0,40
    800055c4:	ffffd097          	auipc	ra,0xffffd
    800055c8:	ba0080e7          	jalr	-1120(ra) # 80002164 <_Znwm>
    800055cc:	00050b13          	mv	s6,a0
    800055d0:	012c0c33          	add	s8,s8,s2
    800055d4:	003c1c13          	slli	s8,s8,0x3
    800055d8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800055dc:	ffffd097          	auipc	ra,0xffffd
    800055e0:	c84080e7          	jalr	-892(ra) # 80002260 <_ZN6ThreadC1Ev>
    800055e4:	00007797          	auipc	a5,0x7
    800055e8:	46478793          	addi	a5,a5,1124 # 8000ca48 <_ZTV12ConsumerSync+0x10>
    800055ec:	00fb3023          	sd	a5,0(s6)
    800055f0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800055f4:	000b0513          	mv	a0,s6
    800055f8:	ffffd097          	auipc	ra,0xffffd
    800055fc:	c9c080e7          	jalr	-868(ra) # 80002294 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005600:	00000493          	li	s1,0
    80005604:	0380006f          	j	8000563c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005608:	00007797          	auipc	a5,0x7
    8000560c:	41878793          	addi	a5,a5,1048 # 8000ca20 <_ZTV12ProducerSync+0x10>
    80005610:	00fcb023          	sd	a5,0(s9)
    80005614:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005618:	00349793          	slli	a5,s1,0x3
    8000561c:	00f987b3          	add	a5,s3,a5
    80005620:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005624:	00349793          	slli	a5,s1,0x3
    80005628:	00f987b3          	add	a5,s3,a5
    8000562c:	0007b503          	ld	a0,0(a5)
    80005630:	ffffd097          	auipc	ra,0xffffd
    80005634:	c64080e7          	jalr	-924(ra) # 80002294 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005638:	0014849b          	addiw	s1,s1,1
    8000563c:	0b24d063          	bge	s1,s2,800056dc <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005640:	00149793          	slli	a5,s1,0x1
    80005644:	009787b3          	add	a5,a5,s1
    80005648:	00379793          	slli	a5,a5,0x3
    8000564c:	00fa07b3          	add	a5,s4,a5
    80005650:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005654:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005658:	00008717          	auipc	a4,0x8
    8000565c:	4f073703          	ld	a4,1264(a4) # 8000db48 <_ZL10waitForAll>
    80005660:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005664:	02905863          	blez	s1,80005694 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005668:	02800513          	li	a0,40
    8000566c:	ffffd097          	auipc	ra,0xffffd
    80005670:	af8080e7          	jalr	-1288(ra) # 80002164 <_Znwm>
    80005674:	00050c93          	mv	s9,a0
    80005678:	00149c13          	slli	s8,s1,0x1
    8000567c:	009c0c33          	add	s8,s8,s1
    80005680:	003c1c13          	slli	s8,s8,0x3
    80005684:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005688:	ffffd097          	auipc	ra,0xffffd
    8000568c:	bd8080e7          	jalr	-1064(ra) # 80002260 <_ZN6ThreadC1Ev>
    80005690:	f79ff06f          	j	80005608 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005694:	02800513          	li	a0,40
    80005698:	ffffd097          	auipc	ra,0xffffd
    8000569c:	acc080e7          	jalr	-1332(ra) # 80002164 <_Znwm>
    800056a0:	00050c93          	mv	s9,a0
    800056a4:	00149c13          	slli	s8,s1,0x1
    800056a8:	009c0c33          	add	s8,s8,s1
    800056ac:	003c1c13          	slli	s8,s8,0x3
    800056b0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	bac080e7          	jalr	-1108(ra) # 80002260 <_ZN6ThreadC1Ev>
    800056bc:	00007797          	auipc	a5,0x7
    800056c0:	33c78793          	addi	a5,a5,828 # 8000c9f8 <_ZTV16ProducerKeyboard+0x10>
    800056c4:	00fcb023          	sd	a5,0(s9)
    800056c8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800056cc:	00349793          	slli	a5,s1,0x3
    800056d0:	00f987b3          	add	a5,s3,a5
    800056d4:	0197b023          	sd	s9,0(a5)
    800056d8:	f4dff06f          	j	80005624 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800056dc:	ffffd097          	auipc	ra,0xffffd
    800056e0:	c44080e7          	jalr	-956(ra) # 80002320 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800056e4:	00000493          	li	s1,0
    800056e8:	00994e63          	blt	s2,s1,80005704 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800056ec:	00008517          	auipc	a0,0x8
    800056f0:	45c53503          	ld	a0,1116(a0) # 8000db48 <_ZL10waitForAll>
    800056f4:	ffffd097          	auipc	ra,0xffffd
    800056f8:	cb4080e7          	jalr	-844(ra) # 800023a8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800056fc:	0014849b          	addiw	s1,s1,1
    80005700:	fe9ff06f          	j	800056e8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005704:	00000493          	li	s1,0
    80005708:	0080006f          	j	80005710 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000570c:	0014849b          	addiw	s1,s1,1
    80005710:	0324d263          	bge	s1,s2,80005734 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005714:	00349793          	slli	a5,s1,0x3
    80005718:	00f987b3          	add	a5,s3,a5
    8000571c:	0007b503          	ld	a0,0(a5)
    80005720:	fe0506e3          	beqz	a0,8000570c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005724:	00053783          	ld	a5,0(a0)
    80005728:	0087b783          	ld	a5,8(a5)
    8000572c:	000780e7          	jalr	a5
    80005730:	fddff06f          	j	8000570c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005734:	000b0a63          	beqz	s6,80005748 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005738:	000b3783          	ld	a5,0(s6)
    8000573c:	0087b783          	ld	a5,8(a5)
    80005740:	000b0513          	mv	a0,s6
    80005744:	000780e7          	jalr	a5
    delete waitForAll;
    80005748:	00008517          	auipc	a0,0x8
    8000574c:	40053503          	ld	a0,1024(a0) # 8000db48 <_ZL10waitForAll>
    80005750:	00050863          	beqz	a0,80005760 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005754:	00053783          	ld	a5,0(a0)
    80005758:	0087b783          	ld	a5,8(a5)
    8000575c:	000780e7          	jalr	a5
    delete buffer;
    80005760:	000a8e63          	beqz	s5,8000577c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005764:	000a8513          	mv	a0,s5
    80005768:	00001097          	auipc	ra,0x1
    8000576c:	8a8080e7          	jalr	-1880(ra) # 80006010 <_ZN9BufferCPPD1Ev>
    80005770:	000a8513          	mv	a0,s5
    80005774:	ffffd097          	auipc	ra,0xffffd
    80005778:	a18080e7          	jalr	-1512(ra) # 8000218c <_ZdlPv>
    8000577c:	000b8113          	mv	sp,s7

}
    80005780:	f8040113          	addi	sp,s0,-128
    80005784:	07813083          	ld	ra,120(sp)
    80005788:	07013403          	ld	s0,112(sp)
    8000578c:	06813483          	ld	s1,104(sp)
    80005790:	06013903          	ld	s2,96(sp)
    80005794:	05813983          	ld	s3,88(sp)
    80005798:	05013a03          	ld	s4,80(sp)
    8000579c:	04813a83          	ld	s5,72(sp)
    800057a0:	04013b03          	ld	s6,64(sp)
    800057a4:	03813b83          	ld	s7,56(sp)
    800057a8:	03013c03          	ld	s8,48(sp)
    800057ac:	02813c83          	ld	s9,40(sp)
    800057b0:	08010113          	addi	sp,sp,128
    800057b4:	00008067          	ret
    800057b8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800057bc:	000a8513          	mv	a0,s5
    800057c0:	ffffd097          	auipc	ra,0xffffd
    800057c4:	9cc080e7          	jalr	-1588(ra) # 8000218c <_ZdlPv>
    800057c8:	00048513          	mv	a0,s1
    800057cc:	00009097          	auipc	ra,0x9
    800057d0:	45c080e7          	jalr	1116(ra) # 8000ec28 <_Unwind_Resume>
    800057d4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800057d8:	00048513          	mv	a0,s1
    800057dc:	ffffd097          	auipc	ra,0xffffd
    800057e0:	9b0080e7          	jalr	-1616(ra) # 8000218c <_ZdlPv>
    800057e4:	00090513          	mv	a0,s2
    800057e8:	00009097          	auipc	ra,0x9
    800057ec:	440080e7          	jalr	1088(ra) # 8000ec28 <_Unwind_Resume>
    800057f0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800057f4:	000b0513          	mv	a0,s6
    800057f8:	ffffd097          	auipc	ra,0xffffd
    800057fc:	994080e7          	jalr	-1644(ra) # 8000218c <_ZdlPv>
    80005800:	00048513          	mv	a0,s1
    80005804:	00009097          	auipc	ra,0x9
    80005808:	424080e7          	jalr	1060(ra) # 8000ec28 <_Unwind_Resume>
    8000580c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005810:	000c8513          	mv	a0,s9
    80005814:	ffffd097          	auipc	ra,0xffffd
    80005818:	978080e7          	jalr	-1672(ra) # 8000218c <_ZdlPv>
    8000581c:	00048513          	mv	a0,s1
    80005820:	00009097          	auipc	ra,0x9
    80005824:	408080e7          	jalr	1032(ra) # 8000ec28 <_Unwind_Resume>
    80005828:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000582c:	000c8513          	mv	a0,s9
    80005830:	ffffd097          	auipc	ra,0xffffd
    80005834:	95c080e7          	jalr	-1700(ra) # 8000218c <_ZdlPv>
    80005838:	00048513          	mv	a0,s1
    8000583c:	00009097          	auipc	ra,0x9
    80005840:	3ec080e7          	jalr	1004(ra) # 8000ec28 <_Unwind_Resume>

0000000080005844 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005844:	ff010113          	addi	sp,sp,-16
    80005848:	00113423          	sd	ra,8(sp)
    8000584c:	00813023          	sd	s0,0(sp)
    80005850:	01010413          	addi	s0,sp,16
    80005854:	00007797          	auipc	a5,0x7
    80005858:	1f478793          	addi	a5,a5,500 # 8000ca48 <_ZTV12ConsumerSync+0x10>
    8000585c:	00f53023          	sd	a5,0(a0)
    80005860:	ffffd097          	auipc	ra,0xffffd
    80005864:	840080e7          	jalr	-1984(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80005868:	00813083          	ld	ra,8(sp)
    8000586c:	00013403          	ld	s0,0(sp)
    80005870:	01010113          	addi	sp,sp,16
    80005874:	00008067          	ret

0000000080005878 <_ZN12ConsumerSyncD0Ev>:
    80005878:	fe010113          	addi	sp,sp,-32
    8000587c:	00113c23          	sd	ra,24(sp)
    80005880:	00813823          	sd	s0,16(sp)
    80005884:	00913423          	sd	s1,8(sp)
    80005888:	02010413          	addi	s0,sp,32
    8000588c:	00050493          	mv	s1,a0
    80005890:	00007797          	auipc	a5,0x7
    80005894:	1b878793          	addi	a5,a5,440 # 8000ca48 <_ZTV12ConsumerSync+0x10>
    80005898:	00f53023          	sd	a5,0(a0)
    8000589c:	ffffd097          	auipc	ra,0xffffd
    800058a0:	804080e7          	jalr	-2044(ra) # 800020a0 <_ZN6ThreadD1Ev>
    800058a4:	00048513          	mv	a0,s1
    800058a8:	ffffd097          	auipc	ra,0xffffd
    800058ac:	8e4080e7          	jalr	-1820(ra) # 8000218c <_ZdlPv>
    800058b0:	01813083          	ld	ra,24(sp)
    800058b4:	01013403          	ld	s0,16(sp)
    800058b8:	00813483          	ld	s1,8(sp)
    800058bc:	02010113          	addi	sp,sp,32
    800058c0:	00008067          	ret

00000000800058c4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800058c4:	ff010113          	addi	sp,sp,-16
    800058c8:	00113423          	sd	ra,8(sp)
    800058cc:	00813023          	sd	s0,0(sp)
    800058d0:	01010413          	addi	s0,sp,16
    800058d4:	00007797          	auipc	a5,0x7
    800058d8:	14c78793          	addi	a5,a5,332 # 8000ca20 <_ZTV12ProducerSync+0x10>
    800058dc:	00f53023          	sd	a5,0(a0)
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	7c0080e7          	jalr	1984(ra) # 800020a0 <_ZN6ThreadD1Ev>
    800058e8:	00813083          	ld	ra,8(sp)
    800058ec:	00013403          	ld	s0,0(sp)
    800058f0:	01010113          	addi	sp,sp,16
    800058f4:	00008067          	ret

00000000800058f8 <_ZN12ProducerSyncD0Ev>:
    800058f8:	fe010113          	addi	sp,sp,-32
    800058fc:	00113c23          	sd	ra,24(sp)
    80005900:	00813823          	sd	s0,16(sp)
    80005904:	00913423          	sd	s1,8(sp)
    80005908:	02010413          	addi	s0,sp,32
    8000590c:	00050493          	mv	s1,a0
    80005910:	00007797          	auipc	a5,0x7
    80005914:	11078793          	addi	a5,a5,272 # 8000ca20 <_ZTV12ProducerSync+0x10>
    80005918:	00f53023          	sd	a5,0(a0)
    8000591c:	ffffc097          	auipc	ra,0xffffc
    80005920:	784080e7          	jalr	1924(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80005924:	00048513          	mv	a0,s1
    80005928:	ffffd097          	auipc	ra,0xffffd
    8000592c:	864080e7          	jalr	-1948(ra) # 8000218c <_ZdlPv>
    80005930:	01813083          	ld	ra,24(sp)
    80005934:	01013403          	ld	s0,16(sp)
    80005938:	00813483          	ld	s1,8(sp)
    8000593c:	02010113          	addi	sp,sp,32
    80005940:	00008067          	ret

0000000080005944 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005944:	ff010113          	addi	sp,sp,-16
    80005948:	00113423          	sd	ra,8(sp)
    8000594c:	00813023          	sd	s0,0(sp)
    80005950:	01010413          	addi	s0,sp,16
    80005954:	00007797          	auipc	a5,0x7
    80005958:	0a478793          	addi	a5,a5,164 # 8000c9f8 <_ZTV16ProducerKeyboard+0x10>
    8000595c:	00f53023          	sd	a5,0(a0)
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	740080e7          	jalr	1856(ra) # 800020a0 <_ZN6ThreadD1Ev>
    80005968:	00813083          	ld	ra,8(sp)
    8000596c:	00013403          	ld	s0,0(sp)
    80005970:	01010113          	addi	sp,sp,16
    80005974:	00008067          	ret

0000000080005978 <_ZN16ProducerKeyboardD0Ev>:
    80005978:	fe010113          	addi	sp,sp,-32
    8000597c:	00113c23          	sd	ra,24(sp)
    80005980:	00813823          	sd	s0,16(sp)
    80005984:	00913423          	sd	s1,8(sp)
    80005988:	02010413          	addi	s0,sp,32
    8000598c:	00050493          	mv	s1,a0
    80005990:	00007797          	auipc	a5,0x7
    80005994:	06878793          	addi	a5,a5,104 # 8000c9f8 <_ZTV16ProducerKeyboard+0x10>
    80005998:	00f53023          	sd	a5,0(a0)
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	704080e7          	jalr	1796(ra) # 800020a0 <_ZN6ThreadD1Ev>
    800059a4:	00048513          	mv	a0,s1
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	7e4080e7          	jalr	2020(ra) # 8000218c <_ZdlPv>
    800059b0:	01813083          	ld	ra,24(sp)
    800059b4:	01013403          	ld	s0,16(sp)
    800059b8:	00813483          	ld	s1,8(sp)
    800059bc:	02010113          	addi	sp,sp,32
    800059c0:	00008067          	ret

00000000800059c4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800059c4:	ff010113          	addi	sp,sp,-16
    800059c8:	00113423          	sd	ra,8(sp)
    800059cc:	00813023          	sd	s0,0(sp)
    800059d0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800059d4:	02053583          	ld	a1,32(a0)
    800059d8:	fffff097          	auipc	ra,0xfffff
    800059dc:	7e4080e7          	jalr	2020(ra) # 800051bc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800059e0:	00813083          	ld	ra,8(sp)
    800059e4:	00013403          	ld	s0,0(sp)
    800059e8:	01010113          	addi	sp,sp,16
    800059ec:	00008067          	ret

00000000800059f0 <_ZN12ProducerSync3runEv>:
    void run() override {
    800059f0:	ff010113          	addi	sp,sp,-16
    800059f4:	00113423          	sd	ra,8(sp)
    800059f8:	00813023          	sd	s0,0(sp)
    800059fc:	01010413          	addi	s0,sp,16
        producer(td);
    80005a00:	02053583          	ld	a1,32(a0)
    80005a04:	00000097          	auipc	ra,0x0
    80005a08:	878080e7          	jalr	-1928(ra) # 8000527c <_ZN12ProducerSync8producerEPv>
    }
    80005a0c:	00813083          	ld	ra,8(sp)
    80005a10:	00013403          	ld	s0,0(sp)
    80005a14:	01010113          	addi	sp,sp,16
    80005a18:	00008067          	ret

0000000080005a1c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005a1c:	ff010113          	addi	sp,sp,-16
    80005a20:	00113423          	sd	ra,8(sp)
    80005a24:	00813023          	sd	s0,0(sp)
    80005a28:	01010413          	addi	s0,sp,16
        consumer(td);
    80005a2c:	02053583          	ld	a1,32(a0)
    80005a30:	00000097          	auipc	ra,0x0
    80005a34:	8e0080e7          	jalr	-1824(ra) # 80005310 <_ZN12ConsumerSync8consumerEPv>
    }
    80005a38:	00813083          	ld	ra,8(sp)
    80005a3c:	00013403          	ld	s0,0(sp)
    80005a40:	01010113          	addi	sp,sp,16
    80005a44:	00008067          	ret

0000000080005a48 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005a48:	fe010113          	addi	sp,sp,-32
    80005a4c:	00113c23          	sd	ra,24(sp)
    80005a50:	00813823          	sd	s0,16(sp)
    80005a54:	00913423          	sd	s1,8(sp)
    80005a58:	02010413          	addi	s0,sp,32
    80005a5c:	00050493          	mv	s1,a0
    LOCK();
    80005a60:	00100613          	li	a2,1
    80005a64:	00000593          	li	a1,0
    80005a68:	00008517          	auipc	a0,0x8
    80005a6c:	0e850513          	addi	a0,a0,232 # 8000db50 <lockPrint>
    80005a70:	ffffb097          	auipc	ra,0xffffb
    80005a74:	7b0080e7          	jalr	1968(ra) # 80001220 <copy_and_swap>
    80005a78:	00050863          	beqz	a0,80005a88 <_Z11printStringPKc+0x40>
    80005a7c:	ffffc097          	auipc	ra,0xffffc
    80005a80:	880080e7          	jalr	-1920(ra) # 800012fc <_Z15thread_dispatchv>
    80005a84:	fddff06f          	j	80005a60 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005a88:	0004c503          	lbu	a0,0(s1)
    80005a8c:	00050a63          	beqz	a0,80005aa0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	9d8080e7          	jalr	-1576(ra) # 80001468 <_Z4putcc>
        string++;
    80005a98:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005a9c:	fedff06f          	j	80005a88 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005aa0:	00000613          	li	a2,0
    80005aa4:	00100593          	li	a1,1
    80005aa8:	00008517          	auipc	a0,0x8
    80005aac:	0a850513          	addi	a0,a0,168 # 8000db50 <lockPrint>
    80005ab0:	ffffb097          	auipc	ra,0xffffb
    80005ab4:	770080e7          	jalr	1904(ra) # 80001220 <copy_and_swap>
    80005ab8:	fe0514e3          	bnez	a0,80005aa0 <_Z11printStringPKc+0x58>
}
    80005abc:	01813083          	ld	ra,24(sp)
    80005ac0:	01013403          	ld	s0,16(sp)
    80005ac4:	00813483          	ld	s1,8(sp)
    80005ac8:	02010113          	addi	sp,sp,32
    80005acc:	00008067          	ret

0000000080005ad0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005ad0:	fd010113          	addi	sp,sp,-48
    80005ad4:	02113423          	sd	ra,40(sp)
    80005ad8:	02813023          	sd	s0,32(sp)
    80005adc:	00913c23          	sd	s1,24(sp)
    80005ae0:	01213823          	sd	s2,16(sp)
    80005ae4:	01313423          	sd	s3,8(sp)
    80005ae8:	01413023          	sd	s4,0(sp)
    80005aec:	03010413          	addi	s0,sp,48
    80005af0:	00050993          	mv	s3,a0
    80005af4:	00058a13          	mv	s4,a1
    LOCK();
    80005af8:	00100613          	li	a2,1
    80005afc:	00000593          	li	a1,0
    80005b00:	00008517          	auipc	a0,0x8
    80005b04:	05050513          	addi	a0,a0,80 # 8000db50 <lockPrint>
    80005b08:	ffffb097          	auipc	ra,0xffffb
    80005b0c:	718080e7          	jalr	1816(ra) # 80001220 <copy_and_swap>
    80005b10:	00050863          	beqz	a0,80005b20 <_Z9getStringPci+0x50>
    80005b14:	ffffb097          	auipc	ra,0xffffb
    80005b18:	7e8080e7          	jalr	2024(ra) # 800012fc <_Z15thread_dispatchv>
    80005b1c:	fddff06f          	j	80005af8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005b20:	00000913          	li	s2,0
    80005b24:	00090493          	mv	s1,s2
    80005b28:	0019091b          	addiw	s2,s2,1
    80005b2c:	03495a63          	bge	s2,s4,80005b60 <_Z9getStringPci+0x90>
        cc = getc();
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	90c080e7          	jalr	-1780(ra) # 8000143c <_Z4getcv>
        if(cc < 1)
    80005b38:	02050463          	beqz	a0,80005b60 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005b3c:	009984b3          	add	s1,s3,s1
    80005b40:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005b44:	00a00793          	li	a5,10
    80005b48:	00f50a63          	beq	a0,a5,80005b5c <_Z9getStringPci+0x8c>
    80005b4c:	00d00793          	li	a5,13
    80005b50:	fcf51ae3          	bne	a0,a5,80005b24 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005b54:	00090493          	mv	s1,s2
    80005b58:	0080006f          	j	80005b60 <_Z9getStringPci+0x90>
    80005b5c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005b60:	009984b3          	add	s1,s3,s1
    80005b64:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005b68:	00000613          	li	a2,0
    80005b6c:	00100593          	li	a1,1
    80005b70:	00008517          	auipc	a0,0x8
    80005b74:	fe050513          	addi	a0,a0,-32 # 8000db50 <lockPrint>
    80005b78:	ffffb097          	auipc	ra,0xffffb
    80005b7c:	6a8080e7          	jalr	1704(ra) # 80001220 <copy_and_swap>
    80005b80:	fe0514e3          	bnez	a0,80005b68 <_Z9getStringPci+0x98>
    return buf;
}
    80005b84:	00098513          	mv	a0,s3
    80005b88:	02813083          	ld	ra,40(sp)
    80005b8c:	02013403          	ld	s0,32(sp)
    80005b90:	01813483          	ld	s1,24(sp)
    80005b94:	01013903          	ld	s2,16(sp)
    80005b98:	00813983          	ld	s3,8(sp)
    80005b9c:	00013a03          	ld	s4,0(sp)
    80005ba0:	03010113          	addi	sp,sp,48
    80005ba4:	00008067          	ret

0000000080005ba8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005ba8:	ff010113          	addi	sp,sp,-16
    80005bac:	00813423          	sd	s0,8(sp)
    80005bb0:	01010413          	addi	s0,sp,16
    80005bb4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005bb8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005bbc:	0006c603          	lbu	a2,0(a3)
    80005bc0:	fd06071b          	addiw	a4,a2,-48
    80005bc4:	0ff77713          	andi	a4,a4,255
    80005bc8:	00900793          	li	a5,9
    80005bcc:	02e7e063          	bltu	a5,a4,80005bec <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005bd0:	0025179b          	slliw	a5,a0,0x2
    80005bd4:	00a787bb          	addw	a5,a5,a0
    80005bd8:	0017979b          	slliw	a5,a5,0x1
    80005bdc:	00168693          	addi	a3,a3,1
    80005be0:	00c787bb          	addw	a5,a5,a2
    80005be4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005be8:	fd5ff06f          	j	80005bbc <_Z11stringToIntPKc+0x14>
    return n;
}
    80005bec:	00813403          	ld	s0,8(sp)
    80005bf0:	01010113          	addi	sp,sp,16
    80005bf4:	00008067          	ret

0000000080005bf8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005bf8:	fc010113          	addi	sp,sp,-64
    80005bfc:	02113c23          	sd	ra,56(sp)
    80005c00:	02813823          	sd	s0,48(sp)
    80005c04:	02913423          	sd	s1,40(sp)
    80005c08:	03213023          	sd	s2,32(sp)
    80005c0c:	01313c23          	sd	s3,24(sp)
    80005c10:	04010413          	addi	s0,sp,64
    80005c14:	00050493          	mv	s1,a0
    80005c18:	00058913          	mv	s2,a1
    80005c1c:	00060993          	mv	s3,a2
    LOCK();
    80005c20:	00100613          	li	a2,1
    80005c24:	00000593          	li	a1,0
    80005c28:	00008517          	auipc	a0,0x8
    80005c2c:	f2850513          	addi	a0,a0,-216 # 8000db50 <lockPrint>
    80005c30:	ffffb097          	auipc	ra,0xffffb
    80005c34:	5f0080e7          	jalr	1520(ra) # 80001220 <copy_and_swap>
    80005c38:	00050863          	beqz	a0,80005c48 <_Z8printIntiii+0x50>
    80005c3c:	ffffb097          	auipc	ra,0xffffb
    80005c40:	6c0080e7          	jalr	1728(ra) # 800012fc <_Z15thread_dispatchv>
    80005c44:	fddff06f          	j	80005c20 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005c48:	00098463          	beqz	s3,80005c50 <_Z8printIntiii+0x58>
    80005c4c:	0804c463          	bltz	s1,80005cd4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005c50:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005c54:	00000593          	li	a1,0
    }

    i = 0;
    80005c58:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005c5c:	0009079b          	sext.w	a5,s2
    80005c60:	0325773b          	remuw	a4,a0,s2
    80005c64:	00048613          	mv	a2,s1
    80005c68:	0014849b          	addiw	s1,s1,1
    80005c6c:	02071693          	slli	a3,a4,0x20
    80005c70:	0206d693          	srli	a3,a3,0x20
    80005c74:	00007717          	auipc	a4,0x7
    80005c78:	dec70713          	addi	a4,a4,-532 # 8000ca60 <digits>
    80005c7c:	00d70733          	add	a4,a4,a3
    80005c80:	00074683          	lbu	a3,0(a4)
    80005c84:	fd040713          	addi	a4,s0,-48
    80005c88:	00c70733          	add	a4,a4,a2
    80005c8c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005c90:	0005071b          	sext.w	a4,a0
    80005c94:	0325553b          	divuw	a0,a0,s2
    80005c98:	fcf772e3          	bgeu	a4,a5,80005c5c <_Z8printIntiii+0x64>
    if(neg)
    80005c9c:	00058c63          	beqz	a1,80005cb4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005ca0:	fd040793          	addi	a5,s0,-48
    80005ca4:	009784b3          	add	s1,a5,s1
    80005ca8:	02d00793          	li	a5,45
    80005cac:	fef48823          	sb	a5,-16(s1)
    80005cb0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005cb4:	fff4849b          	addiw	s1,s1,-1
    80005cb8:	0204c463          	bltz	s1,80005ce0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005cbc:	fd040793          	addi	a5,s0,-48
    80005cc0:	009787b3          	add	a5,a5,s1
    80005cc4:	ff07c503          	lbu	a0,-16(a5)
    80005cc8:	ffffb097          	auipc	ra,0xffffb
    80005ccc:	7a0080e7          	jalr	1952(ra) # 80001468 <_Z4putcc>
    80005cd0:	fe5ff06f          	j	80005cb4 <_Z8printIntiii+0xbc>
        x = -xx;
    80005cd4:	4090053b          	negw	a0,s1
        neg = 1;
    80005cd8:	00100593          	li	a1,1
        x = -xx;
    80005cdc:	f7dff06f          	j	80005c58 <_Z8printIntiii+0x60>

    UNLOCK();
    80005ce0:	00000613          	li	a2,0
    80005ce4:	00100593          	li	a1,1
    80005ce8:	00008517          	auipc	a0,0x8
    80005cec:	e6850513          	addi	a0,a0,-408 # 8000db50 <lockPrint>
    80005cf0:	ffffb097          	auipc	ra,0xffffb
    80005cf4:	530080e7          	jalr	1328(ra) # 80001220 <copy_and_swap>
    80005cf8:	fe0514e3          	bnez	a0,80005ce0 <_Z8printIntiii+0xe8>
    80005cfc:	03813083          	ld	ra,56(sp)
    80005d00:	03013403          	ld	s0,48(sp)
    80005d04:	02813483          	ld	s1,40(sp)
    80005d08:	02013903          	ld	s2,32(sp)
    80005d0c:	01813983          	ld	s3,24(sp)
    80005d10:	04010113          	addi	sp,sp,64
    80005d14:	00008067          	ret

0000000080005d18 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d18:	fd010113          	addi	sp,sp,-48
    80005d1c:	02113423          	sd	ra,40(sp)
    80005d20:	02813023          	sd	s0,32(sp)
    80005d24:	00913c23          	sd	s1,24(sp)
    80005d28:	01213823          	sd	s2,16(sp)
    80005d2c:	01313423          	sd	s3,8(sp)
    80005d30:	03010413          	addi	s0,sp,48
    80005d34:	00050493          	mv	s1,a0
    80005d38:	00058913          	mv	s2,a1
    80005d3c:	0015879b          	addiw	a5,a1,1
    80005d40:	0007851b          	sext.w	a0,a5
    80005d44:	00f4a023          	sw	a5,0(s1)
    80005d48:	0004a823          	sw	zero,16(s1)
    80005d4c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005d50:	00251513          	slli	a0,a0,0x2
    80005d54:	ffffb097          	auipc	ra,0xffffb
    80005d58:	4ec080e7          	jalr	1260(ra) # 80001240 <_Z9mem_allocm>
    80005d5c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005d60:	01000513          	li	a0,16
    80005d64:	ffffc097          	auipc	ra,0xffffc
    80005d68:	400080e7          	jalr	1024(ra) # 80002164 <_Znwm>
    80005d6c:	00050993          	mv	s3,a0
    80005d70:	00000593          	li	a1,0
    80005d74:	ffffc097          	auipc	ra,0xffffc
    80005d78:	5fc080e7          	jalr	1532(ra) # 80002370 <_ZN9SemaphoreC1Ej>
    80005d7c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005d80:	01000513          	li	a0,16
    80005d84:	ffffc097          	auipc	ra,0xffffc
    80005d88:	3e0080e7          	jalr	992(ra) # 80002164 <_Znwm>
    80005d8c:	00050993          	mv	s3,a0
    80005d90:	00090593          	mv	a1,s2
    80005d94:	ffffc097          	auipc	ra,0xffffc
    80005d98:	5dc080e7          	jalr	1500(ra) # 80002370 <_ZN9SemaphoreC1Ej>
    80005d9c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005da0:	01000513          	li	a0,16
    80005da4:	ffffc097          	auipc	ra,0xffffc
    80005da8:	3c0080e7          	jalr	960(ra) # 80002164 <_Znwm>
    80005dac:	00050913          	mv	s2,a0
    80005db0:	00100593          	li	a1,1
    80005db4:	ffffc097          	auipc	ra,0xffffc
    80005db8:	5bc080e7          	jalr	1468(ra) # 80002370 <_ZN9SemaphoreC1Ej>
    80005dbc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005dc0:	01000513          	li	a0,16
    80005dc4:	ffffc097          	auipc	ra,0xffffc
    80005dc8:	3a0080e7          	jalr	928(ra) # 80002164 <_Znwm>
    80005dcc:	00050913          	mv	s2,a0
    80005dd0:	00100593          	li	a1,1
    80005dd4:	ffffc097          	auipc	ra,0xffffc
    80005dd8:	59c080e7          	jalr	1436(ra) # 80002370 <_ZN9SemaphoreC1Ej>
    80005ddc:	0324b823          	sd	s2,48(s1)
}
    80005de0:	02813083          	ld	ra,40(sp)
    80005de4:	02013403          	ld	s0,32(sp)
    80005de8:	01813483          	ld	s1,24(sp)
    80005dec:	01013903          	ld	s2,16(sp)
    80005df0:	00813983          	ld	s3,8(sp)
    80005df4:	03010113          	addi	sp,sp,48
    80005df8:	00008067          	ret
    80005dfc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005e00:	00098513          	mv	a0,s3
    80005e04:	ffffc097          	auipc	ra,0xffffc
    80005e08:	388080e7          	jalr	904(ra) # 8000218c <_ZdlPv>
    80005e0c:	00048513          	mv	a0,s1
    80005e10:	00009097          	auipc	ra,0x9
    80005e14:	e18080e7          	jalr	-488(ra) # 8000ec28 <_Unwind_Resume>
    80005e18:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005e1c:	00098513          	mv	a0,s3
    80005e20:	ffffc097          	auipc	ra,0xffffc
    80005e24:	36c080e7          	jalr	876(ra) # 8000218c <_ZdlPv>
    80005e28:	00048513          	mv	a0,s1
    80005e2c:	00009097          	auipc	ra,0x9
    80005e30:	dfc080e7          	jalr	-516(ra) # 8000ec28 <_Unwind_Resume>
    80005e34:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005e38:	00090513          	mv	a0,s2
    80005e3c:	ffffc097          	auipc	ra,0xffffc
    80005e40:	350080e7          	jalr	848(ra) # 8000218c <_ZdlPv>
    80005e44:	00048513          	mv	a0,s1
    80005e48:	00009097          	auipc	ra,0x9
    80005e4c:	de0080e7          	jalr	-544(ra) # 8000ec28 <_Unwind_Resume>
    80005e50:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005e54:	00090513          	mv	a0,s2
    80005e58:	ffffc097          	auipc	ra,0xffffc
    80005e5c:	334080e7          	jalr	820(ra) # 8000218c <_ZdlPv>
    80005e60:	00048513          	mv	a0,s1
    80005e64:	00009097          	auipc	ra,0x9
    80005e68:	dc4080e7          	jalr	-572(ra) # 8000ec28 <_Unwind_Resume>

0000000080005e6c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005e6c:	fe010113          	addi	sp,sp,-32
    80005e70:	00113c23          	sd	ra,24(sp)
    80005e74:	00813823          	sd	s0,16(sp)
    80005e78:	00913423          	sd	s1,8(sp)
    80005e7c:	01213023          	sd	s2,0(sp)
    80005e80:	02010413          	addi	s0,sp,32
    80005e84:	00050493          	mv	s1,a0
    80005e88:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005e8c:	01853503          	ld	a0,24(a0)
    80005e90:	ffffc097          	auipc	ra,0xffffc
    80005e94:	518080e7          	jalr	1304(ra) # 800023a8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005e98:	0304b503          	ld	a0,48(s1)
    80005e9c:	ffffc097          	auipc	ra,0xffffc
    80005ea0:	50c080e7          	jalr	1292(ra) # 800023a8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ea4:	0084b783          	ld	a5,8(s1)
    80005ea8:	0144a703          	lw	a4,20(s1)
    80005eac:	00271713          	slli	a4,a4,0x2
    80005eb0:	00e787b3          	add	a5,a5,a4
    80005eb4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005eb8:	0144a783          	lw	a5,20(s1)
    80005ebc:	0017879b          	addiw	a5,a5,1
    80005ec0:	0004a703          	lw	a4,0(s1)
    80005ec4:	02e7e7bb          	remw	a5,a5,a4
    80005ec8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ecc:	0304b503          	ld	a0,48(s1)
    80005ed0:	ffffc097          	auipc	ra,0xffffc
    80005ed4:	504080e7          	jalr	1284(ra) # 800023d4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005ed8:	0204b503          	ld	a0,32(s1)
    80005edc:	ffffc097          	auipc	ra,0xffffc
    80005ee0:	4f8080e7          	jalr	1272(ra) # 800023d4 <_ZN9Semaphore6signalEv>

}
    80005ee4:	01813083          	ld	ra,24(sp)
    80005ee8:	01013403          	ld	s0,16(sp)
    80005eec:	00813483          	ld	s1,8(sp)
    80005ef0:	00013903          	ld	s2,0(sp)
    80005ef4:	02010113          	addi	sp,sp,32
    80005ef8:	00008067          	ret

0000000080005efc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005efc:	fe010113          	addi	sp,sp,-32
    80005f00:	00113c23          	sd	ra,24(sp)
    80005f04:	00813823          	sd	s0,16(sp)
    80005f08:	00913423          	sd	s1,8(sp)
    80005f0c:	01213023          	sd	s2,0(sp)
    80005f10:	02010413          	addi	s0,sp,32
    80005f14:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005f18:	02053503          	ld	a0,32(a0)
    80005f1c:	ffffc097          	auipc	ra,0xffffc
    80005f20:	48c080e7          	jalr	1164(ra) # 800023a8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005f24:	0284b503          	ld	a0,40(s1)
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	480080e7          	jalr	1152(ra) # 800023a8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005f30:	0084b703          	ld	a4,8(s1)
    80005f34:	0104a783          	lw	a5,16(s1)
    80005f38:	00279693          	slli	a3,a5,0x2
    80005f3c:	00d70733          	add	a4,a4,a3
    80005f40:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005f44:	0017879b          	addiw	a5,a5,1
    80005f48:	0004a703          	lw	a4,0(s1)
    80005f4c:	02e7e7bb          	remw	a5,a5,a4
    80005f50:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005f54:	0284b503          	ld	a0,40(s1)
    80005f58:	ffffc097          	auipc	ra,0xffffc
    80005f5c:	47c080e7          	jalr	1148(ra) # 800023d4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005f60:	0184b503          	ld	a0,24(s1)
    80005f64:	ffffc097          	auipc	ra,0xffffc
    80005f68:	470080e7          	jalr	1136(ra) # 800023d4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f6c:	00090513          	mv	a0,s2
    80005f70:	01813083          	ld	ra,24(sp)
    80005f74:	01013403          	ld	s0,16(sp)
    80005f78:	00813483          	ld	s1,8(sp)
    80005f7c:	00013903          	ld	s2,0(sp)
    80005f80:	02010113          	addi	sp,sp,32
    80005f84:	00008067          	ret

0000000080005f88 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005f88:	fe010113          	addi	sp,sp,-32
    80005f8c:	00113c23          	sd	ra,24(sp)
    80005f90:	00813823          	sd	s0,16(sp)
    80005f94:	00913423          	sd	s1,8(sp)
    80005f98:	01213023          	sd	s2,0(sp)
    80005f9c:	02010413          	addi	s0,sp,32
    80005fa0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005fa4:	02853503          	ld	a0,40(a0)
    80005fa8:	ffffc097          	auipc	ra,0xffffc
    80005fac:	400080e7          	jalr	1024(ra) # 800023a8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005fb0:	0304b503          	ld	a0,48(s1)
    80005fb4:	ffffc097          	auipc	ra,0xffffc
    80005fb8:	3f4080e7          	jalr	1012(ra) # 800023a8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005fbc:	0144a783          	lw	a5,20(s1)
    80005fc0:	0104a903          	lw	s2,16(s1)
    80005fc4:	0327ce63          	blt	a5,s2,80006000 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005fc8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005fcc:	0304b503          	ld	a0,48(s1)
    80005fd0:	ffffc097          	auipc	ra,0xffffc
    80005fd4:	404080e7          	jalr	1028(ra) # 800023d4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005fd8:	0284b503          	ld	a0,40(s1)
    80005fdc:	ffffc097          	auipc	ra,0xffffc
    80005fe0:	3f8080e7          	jalr	1016(ra) # 800023d4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005fe4:	00090513          	mv	a0,s2
    80005fe8:	01813083          	ld	ra,24(sp)
    80005fec:	01013403          	ld	s0,16(sp)
    80005ff0:	00813483          	ld	s1,8(sp)
    80005ff4:	00013903          	ld	s2,0(sp)
    80005ff8:	02010113          	addi	sp,sp,32
    80005ffc:	00008067          	ret
        ret = cap - head + tail;
    80006000:	0004a703          	lw	a4,0(s1)
    80006004:	4127093b          	subw	s2,a4,s2
    80006008:	00f9093b          	addw	s2,s2,a5
    8000600c:	fc1ff06f          	j	80005fcc <_ZN9BufferCPP6getCntEv+0x44>

0000000080006010 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006010:	fe010113          	addi	sp,sp,-32
    80006014:	00113c23          	sd	ra,24(sp)
    80006018:	00813823          	sd	s0,16(sp)
    8000601c:	00913423          	sd	s1,8(sp)
    80006020:	02010413          	addi	s0,sp,32
    80006024:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006028:	00a00513          	li	a0,10
    8000602c:	ffffc097          	auipc	ra,0xffffc
    80006030:	470080e7          	jalr	1136(ra) # 8000249c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006034:	00004517          	auipc	a0,0x4
    80006038:	26450513          	addi	a0,a0,612 # 8000a298 <CONSOLE_STATUS+0x288>
    8000603c:	00000097          	auipc	ra,0x0
    80006040:	a0c080e7          	jalr	-1524(ra) # 80005a48 <_Z11printStringPKc>
    while (getCnt()) {
    80006044:	00048513          	mv	a0,s1
    80006048:	00000097          	auipc	ra,0x0
    8000604c:	f40080e7          	jalr	-192(ra) # 80005f88 <_ZN9BufferCPP6getCntEv>
    80006050:	02050c63          	beqz	a0,80006088 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006054:	0084b783          	ld	a5,8(s1)
    80006058:	0104a703          	lw	a4,16(s1)
    8000605c:	00271713          	slli	a4,a4,0x2
    80006060:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006064:	0007c503          	lbu	a0,0(a5)
    80006068:	ffffc097          	auipc	ra,0xffffc
    8000606c:	434080e7          	jalr	1076(ra) # 8000249c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006070:	0104a783          	lw	a5,16(s1)
    80006074:	0017879b          	addiw	a5,a5,1
    80006078:	0004a703          	lw	a4,0(s1)
    8000607c:	02e7e7bb          	remw	a5,a5,a4
    80006080:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006084:	fc1ff06f          	j	80006044 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006088:	02100513          	li	a0,33
    8000608c:	ffffc097          	auipc	ra,0xffffc
    80006090:	410080e7          	jalr	1040(ra) # 8000249c <_ZN7Console4putcEc>
    Console::putc('\n');
    80006094:	00a00513          	li	a0,10
    80006098:	ffffc097          	auipc	ra,0xffffc
    8000609c:	404080e7          	jalr	1028(ra) # 8000249c <_ZN7Console4putcEc>
    mem_free(buffer);
    800060a0:	0084b503          	ld	a0,8(s1)
    800060a4:	ffffb097          	auipc	ra,0xffffb
    800060a8:	1c8080e7          	jalr	456(ra) # 8000126c <_Z8mem_freePv>
    delete itemAvailable;
    800060ac:	0204b503          	ld	a0,32(s1)
    800060b0:	00050863          	beqz	a0,800060c0 <_ZN9BufferCPPD1Ev+0xb0>
    800060b4:	00053783          	ld	a5,0(a0)
    800060b8:	0087b783          	ld	a5,8(a5)
    800060bc:	000780e7          	jalr	a5
    delete spaceAvailable;
    800060c0:	0184b503          	ld	a0,24(s1)
    800060c4:	00050863          	beqz	a0,800060d4 <_ZN9BufferCPPD1Ev+0xc4>
    800060c8:	00053783          	ld	a5,0(a0)
    800060cc:	0087b783          	ld	a5,8(a5)
    800060d0:	000780e7          	jalr	a5
    delete mutexTail;
    800060d4:	0304b503          	ld	a0,48(s1)
    800060d8:	00050863          	beqz	a0,800060e8 <_ZN9BufferCPPD1Ev+0xd8>
    800060dc:	00053783          	ld	a5,0(a0)
    800060e0:	0087b783          	ld	a5,8(a5)
    800060e4:	000780e7          	jalr	a5
    delete mutexHead;
    800060e8:	0284b503          	ld	a0,40(s1)
    800060ec:	00050863          	beqz	a0,800060fc <_ZN9BufferCPPD1Ev+0xec>
    800060f0:	00053783          	ld	a5,0(a0)
    800060f4:	0087b783          	ld	a5,8(a5)
    800060f8:	000780e7          	jalr	a5
}
    800060fc:	01813083          	ld	ra,24(sp)
    80006100:	01013403          	ld	s0,16(sp)
    80006104:	00813483          	ld	s1,8(sp)
    80006108:	02010113          	addi	sp,sp,32
    8000610c:	00008067          	ret

0000000080006110 <_Z8userMainv>:
#include "../h/syscall_cpp.h"

#endif


void userMain() {
    80006110:	fe010113          	addi	sp,sp,-32
    80006114:	00113c23          	sd	ra,24(sp)
    80006118:	00813823          	sd	s0,16(sp)
    8000611c:	00913423          	sd	s1,8(sp)
    80006120:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-8]\n");
    80006124:	00004517          	auipc	a0,0x4
    80006128:	18c50513          	addi	a0,a0,396 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    8000612c:	00000097          	auipc	ra,0x0
    80006130:	91c080e7          	jalr	-1764(ra) # 80005a48 <_Z11printStringPKc>
    int test = getc() - '0';
    80006134:	ffffb097          	auipc	ra,0xffffb
    80006138:	308080e7          	jalr	776(ra) # 8000143c <_Z4getcv>
    8000613c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	2fc080e7          	jalr	764(ra) # 8000143c <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006148:	00800793          	li	a5,8
    8000614c:	1097ee63          	bltu	a5,s1,80006268 <_Z8userMainv+0x158>
    80006150:	00249493          	slli	s1,s1,0x2
    80006154:	00004717          	auipc	a4,0x4
    80006158:	3cc70713          	addi	a4,a4,972 # 8000a520 <CONSOLE_STATUS+0x510>
    8000615c:	00e484b3          	add	s1,s1,a4
    80006160:	0004a783          	lw	a5,0(s1)
    80006164:	00e787b3          	add	a5,a5,a4
    80006168:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000616c:	fffff097          	auipc	ra,0xfffff
    80006170:	f54080e7          	jalr	-172(ra) # 800050c0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006174:	00004517          	auipc	a0,0x4
    80006178:	15c50513          	addi	a0,a0,348 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    8000617c:	00000097          	auipc	ra,0x0
    80006180:	8cc080e7          	jalr	-1844(ra) # 80005a48 <_Z11printStringPKc>
#endif
            break;
    80006184:	0d00006f          	j	80006254 <_Z8userMainv+0x144>
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80006188:	ffffe097          	auipc	ra,0xffffe
    8000618c:	e18080e7          	jalr	-488(ra) # 80003fa0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006190:	00004517          	auipc	a0,0x4
    80006194:	18050513          	addi	a0,a0,384 # 8000a310 <CONSOLE_STATUS+0x300>
    80006198:	00000097          	auipc	ra,0x0
    8000619c:	8b0080e7          	jalr	-1872(ra) # 80005a48 <_Z11printStringPKc>
#endif
            break;
    800061a0:	0b40006f          	j	80006254 <_Z8userMainv+0x144>
        case 3:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_C_API();
    800061a4:	ffffd097          	auipc	ra,0xffffd
    800061a8:	650080e7          	jalr	1616(ra) # 800037f4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800061ac:	00004517          	auipc	a0,0x4
    800061b0:	1a450513          	addi	a0,a0,420 # 8000a350 <CONSOLE_STATUS+0x340>
    800061b4:	00000097          	auipc	ra,0x0
    800061b8:	894080e7          	jalr	-1900(ra) # 80005a48 <_Z11printStringPKc>
#endif
            break;
    800061bc:	0980006f          	j	80006254 <_Z8userMainv+0x144>
        case 4:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_CPP_Sync_API();
    800061c0:	fffff097          	auipc	ra,0xfffff
    800061c4:	244080e7          	jalr	580(ra) # 80005404 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800061c8:	00004517          	auipc	a0,0x4
    800061cc:	1d850513          	addi	a0,a0,472 # 8000a3a0 <CONSOLE_STATUS+0x390>
    800061d0:	00000097          	auipc	ra,0x0
    800061d4:	878080e7          	jalr	-1928(ra) # 80005a48 <_Z11printStringPKc>
#endif
            break;
    800061d8:	07c0006f          	j	80006254 <_Z8userMainv+0x144>
        case 5:
#if LEVEL_4_IMPLEMENTED == 1
            testSleeping();
    800061dc:	00000097          	auipc	ra,0x0
    800061e0:	144080e7          	jalr	324(ra) # 80006320 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800061e4:	00004517          	auipc	a0,0x4
    800061e8:	21450513          	addi	a0,a0,532 # 8000a3f8 <CONSOLE_STATUS+0x3e8>
    800061ec:	00000097          	auipc	ra,0x0
    800061f0:	85c080e7          	jalr	-1956(ra) # 80005a48 <_Z11printStringPKc>
#endif
            break;
    800061f4:	0600006f          	j	80006254 <_Z8userMainv+0x144>
        case 6:
#if LEVEL_4_IMPLEMENTED == 1
            testConsumerProducer();
    800061f8:	ffffe097          	auipc	ra,0xffffe
    800061fc:	268080e7          	jalr	616(ra) # 80004460 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006200:	00004517          	auipc	a0,0x4
    80006204:	22850513          	addi	a0,a0,552 # 8000a428 <CONSOLE_STATUS+0x418>
    80006208:	00000097          	auipc	ra,0x0
    8000620c:	840080e7          	jalr	-1984(ra) # 80005a48 <_Z11printStringPKc>
#endif
            break;
    80006210:	0440006f          	j	80006254 <_Z8userMainv+0x144>
        case 7:
#if LEVEL_2_IMPLEMENTED == 1
            System_Mode_test();
    80006214:	00000097          	auipc	ra,0x0
    80006218:	680080e7          	jalr	1664(ra) # 80006894 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000621c:	00004517          	auipc	a0,0x4
    80006220:	24c50513          	addi	a0,a0,588 # 8000a468 <CONSOLE_STATUS+0x458>
    80006224:	00000097          	auipc	ra,0x0
    80006228:	824080e7          	jalr	-2012(ra) # 80005a48 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000622c:	00004517          	auipc	a0,0x4
    80006230:	25c50513          	addi	a0,a0,604 # 8000a488 <CONSOLE_STATUS+0x478>
    80006234:	00000097          	auipc	ra,0x0
    80006238:	814080e7          	jalr	-2028(ra) # 80005a48 <_Z11printStringPKc>
#endif
        case 8:
            testMatrixSum();
    8000623c:	00001097          	auipc	ra,0x1
    80006240:	aec080e7          	jalr	-1300(ra) # 80006d28 <_Z13testMatrixSumv>
            printString("Test 8 uspesno zavrsen\n");
    80006244:	00004517          	auipc	a0,0x4
    80006248:	29c50513          	addi	a0,a0,668 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    8000624c:	fffff097          	auipc	ra,0xfffff
    80006250:	7fc080e7          	jalr	2044(ra) # 80005a48 <_Z11printStringPKc>
            break;

        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006254:	01813083          	ld	ra,24(sp)
    80006258:	01013403          	ld	s0,16(sp)
    8000625c:	00813483          	ld	s1,8(sp)
    80006260:	02010113          	addi	sp,sp,32
    80006264:	00008067          	ret
            printString("Niste uneli odgovarajuci broj za test\n");
    80006268:	00004517          	auipc	a0,0x4
    8000626c:	29050513          	addi	a0,a0,656 # 8000a4f8 <CONSOLE_STATUS+0x4e8>
    80006270:	fffff097          	auipc	ra,0xfffff
    80006274:	7d8080e7          	jalr	2008(ra) # 80005a48 <_Z11printStringPKc>
    80006278:	fddff06f          	j	80006254 <_Z8userMainv+0x144>

000000008000627c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000627c:	fe010113          	addi	sp,sp,-32
    80006280:	00113c23          	sd	ra,24(sp)
    80006284:	00813823          	sd	s0,16(sp)
    80006288:	00913423          	sd	s1,8(sp)
    8000628c:	01213023          	sd	s2,0(sp)
    80006290:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006294:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006298:	00600493          	li	s1,6
    while (--i > 0) {
    8000629c:	fff4849b          	addiw	s1,s1,-1
    800062a0:	04905463          	blez	s1,800062e8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800062a4:	00004517          	auipc	a0,0x4
    800062a8:	2a450513          	addi	a0,a0,676 # 8000a548 <CONSOLE_STATUS+0x538>
    800062ac:	fffff097          	auipc	ra,0xfffff
    800062b0:	79c080e7          	jalr	1948(ra) # 80005a48 <_Z11printStringPKc>
        printInt(sleep_time);
    800062b4:	00000613          	li	a2,0
    800062b8:	00a00593          	li	a1,10
    800062bc:	0009051b          	sext.w	a0,s2
    800062c0:	00000097          	auipc	ra,0x0
    800062c4:	938080e7          	jalr	-1736(ra) # 80005bf8 <_Z8printIntiii>
        printString(" !\n");
    800062c8:	00004517          	auipc	a0,0x4
    800062cc:	28850513          	addi	a0,a0,648 # 8000a550 <CONSOLE_STATUS+0x540>
    800062d0:	fffff097          	auipc	ra,0xfffff
    800062d4:	778080e7          	jalr	1912(ra) # 80005a48 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062d8:	00090513          	mv	a0,s2
    800062dc:	ffffb097          	auipc	ra,0xffffb
    800062e0:	130080e7          	jalr	304(ra) # 8000140c <_Z10time_sleepm>
    while (--i > 0) {
    800062e4:	fb9ff06f          	j	8000629c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800062e8:	00a00793          	li	a5,10
    800062ec:	02f95933          	divu	s2,s2,a5
    800062f0:	fff90913          	addi	s2,s2,-1
    800062f4:	00008797          	auipc	a5,0x8
    800062f8:	86478793          	addi	a5,a5,-1948 # 8000db58 <_ZL8finished>
    800062fc:	01278933          	add	s2,a5,s2
    80006300:	00100793          	li	a5,1
    80006304:	00f90023          	sb	a5,0(s2)
}
    80006308:	01813083          	ld	ra,24(sp)
    8000630c:	01013403          	ld	s0,16(sp)
    80006310:	00813483          	ld	s1,8(sp)
    80006314:	00013903          	ld	s2,0(sp)
    80006318:	02010113          	addi	sp,sp,32
    8000631c:	00008067          	ret

0000000080006320 <_Z12testSleepingv>:

void testSleeping() {
    80006320:	fc010113          	addi	sp,sp,-64
    80006324:	02113c23          	sd	ra,56(sp)
    80006328:	02813823          	sd	s0,48(sp)
    8000632c:	02913423          	sd	s1,40(sp)
    80006330:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006334:	00a00793          	li	a5,10
    80006338:	fcf43823          	sd	a5,-48(s0)
    8000633c:	01400793          	li	a5,20
    80006340:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006344:	00000493          	li	s1,0
    80006348:	02c0006f          	j	80006374 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000634c:	00349793          	slli	a5,s1,0x3
    80006350:	fd040613          	addi	a2,s0,-48
    80006354:	00f60633          	add	a2,a2,a5
    80006358:	00000597          	auipc	a1,0x0
    8000635c:	f2458593          	addi	a1,a1,-220 # 8000627c <_ZL9sleepyRunPv>
    80006360:	fc040513          	addi	a0,s0,-64
    80006364:	00f50533          	add	a0,a0,a5
    80006368:	ffffb097          	auipc	ra,0xffffb
    8000636c:	f34080e7          	jalr	-204(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006370:	0014849b          	addiw	s1,s1,1
    80006374:	00100793          	li	a5,1
    80006378:	fc97dae3          	bge	a5,s1,8000634c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000637c:	00007797          	auipc	a5,0x7
    80006380:	7dc7c783          	lbu	a5,2012(a5) # 8000db58 <_ZL8finished>
    80006384:	fe078ce3          	beqz	a5,8000637c <_Z12testSleepingv+0x5c>
    80006388:	00007797          	auipc	a5,0x7
    8000638c:	7d17c783          	lbu	a5,2001(a5) # 8000db59 <_ZL8finished+0x1>
    80006390:	fe0786e3          	beqz	a5,8000637c <_Z12testSleepingv+0x5c>
}
    80006394:	03813083          	ld	ra,56(sp)
    80006398:	03013403          	ld	s0,48(sp)
    8000639c:	02813483          	ld	s1,40(sp)
    800063a0:	04010113          	addi	sp,sp,64
    800063a4:	00008067          	ret

00000000800063a8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800063a8:	fe010113          	addi	sp,sp,-32
    800063ac:	00113c23          	sd	ra,24(sp)
    800063b0:	00813823          	sd	s0,16(sp)
    800063b4:	00913423          	sd	s1,8(sp)
    800063b8:	01213023          	sd	s2,0(sp)
    800063bc:	02010413          	addi	s0,sp,32
    800063c0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800063c4:	00100793          	li	a5,1
    800063c8:	02a7f863          	bgeu	a5,a0,800063f8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800063cc:	00a00793          	li	a5,10
    800063d0:	02f577b3          	remu	a5,a0,a5
    800063d4:	02078e63          	beqz	a5,80006410 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800063d8:	fff48513          	addi	a0,s1,-1
    800063dc:	00000097          	auipc	ra,0x0
    800063e0:	fcc080e7          	jalr	-52(ra) # 800063a8 <_ZL9fibonaccim>
    800063e4:	00050913          	mv	s2,a0
    800063e8:	ffe48513          	addi	a0,s1,-2
    800063ec:	00000097          	auipc	ra,0x0
    800063f0:	fbc080e7          	jalr	-68(ra) # 800063a8 <_ZL9fibonaccim>
    800063f4:	00a90533          	add	a0,s2,a0
}
    800063f8:	01813083          	ld	ra,24(sp)
    800063fc:	01013403          	ld	s0,16(sp)
    80006400:	00813483          	ld	s1,8(sp)
    80006404:	00013903          	ld	s2,0(sp)
    80006408:	02010113          	addi	sp,sp,32
    8000640c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006410:	ffffb097          	auipc	ra,0xffffb
    80006414:	eec080e7          	jalr	-276(ra) # 800012fc <_Z15thread_dispatchv>
    80006418:	fc1ff06f          	j	800063d8 <_ZL9fibonaccim+0x30>

000000008000641c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000641c:	fe010113          	addi	sp,sp,-32
    80006420:	00113c23          	sd	ra,24(sp)
    80006424:	00813823          	sd	s0,16(sp)
    80006428:	00913423          	sd	s1,8(sp)
    8000642c:	01213023          	sd	s2,0(sp)
    80006430:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006434:	00a00493          	li	s1,10
    80006438:	0400006f          	j	80006478 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000643c:	00004517          	auipc	a0,0x4
    80006440:	dc450513          	addi	a0,a0,-572 # 8000a200 <CONSOLE_STATUS+0x1f0>
    80006444:	fffff097          	auipc	ra,0xfffff
    80006448:	604080e7          	jalr	1540(ra) # 80005a48 <_Z11printStringPKc>
    8000644c:	00000613          	li	a2,0
    80006450:	00a00593          	li	a1,10
    80006454:	00048513          	mv	a0,s1
    80006458:	fffff097          	auipc	ra,0xfffff
    8000645c:	7a0080e7          	jalr	1952(ra) # 80005bf8 <_Z8printIntiii>
    80006460:	00004517          	auipc	a0,0x4
    80006464:	f9050513          	addi	a0,a0,-112 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80006468:	fffff097          	auipc	ra,0xfffff
    8000646c:	5e0080e7          	jalr	1504(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006470:	0014849b          	addiw	s1,s1,1
    80006474:	0ff4f493          	andi	s1,s1,255
    80006478:	00c00793          	li	a5,12
    8000647c:	fc97f0e3          	bgeu	a5,s1,8000643c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006480:	00004517          	auipc	a0,0x4
    80006484:	d8850513          	addi	a0,a0,-632 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	5c0080e7          	jalr	1472(ra) # 80005a48 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006490:	00500313          	li	t1,5
    thread_dispatch();
    80006494:	ffffb097          	auipc	ra,0xffffb
    80006498:	e68080e7          	jalr	-408(ra) # 800012fc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000649c:	01000513          	li	a0,16
    800064a0:	00000097          	auipc	ra,0x0
    800064a4:	f08080e7          	jalr	-248(ra) # 800063a8 <_ZL9fibonaccim>
    800064a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800064ac:	00004517          	auipc	a0,0x4
    800064b0:	d6c50513          	addi	a0,a0,-660 # 8000a218 <CONSOLE_STATUS+0x208>
    800064b4:	fffff097          	auipc	ra,0xfffff
    800064b8:	594080e7          	jalr	1428(ra) # 80005a48 <_Z11printStringPKc>
    800064bc:	00000613          	li	a2,0
    800064c0:	00a00593          	li	a1,10
    800064c4:	0009051b          	sext.w	a0,s2
    800064c8:	fffff097          	auipc	ra,0xfffff
    800064cc:	730080e7          	jalr	1840(ra) # 80005bf8 <_Z8printIntiii>
    800064d0:	00004517          	auipc	a0,0x4
    800064d4:	f2050513          	addi	a0,a0,-224 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    800064d8:	fffff097          	auipc	ra,0xfffff
    800064dc:	570080e7          	jalr	1392(ra) # 80005a48 <_Z11printStringPKc>
    800064e0:	0400006f          	j	80006520 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800064e4:	00004517          	auipc	a0,0x4
    800064e8:	d1c50513          	addi	a0,a0,-740 # 8000a200 <CONSOLE_STATUS+0x1f0>
    800064ec:	fffff097          	auipc	ra,0xfffff
    800064f0:	55c080e7          	jalr	1372(ra) # 80005a48 <_Z11printStringPKc>
    800064f4:	00000613          	li	a2,0
    800064f8:	00a00593          	li	a1,10
    800064fc:	00048513          	mv	a0,s1
    80006500:	fffff097          	auipc	ra,0xfffff
    80006504:	6f8080e7          	jalr	1784(ra) # 80005bf8 <_Z8printIntiii>
    80006508:	00004517          	auipc	a0,0x4
    8000650c:	ee850513          	addi	a0,a0,-280 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80006510:	fffff097          	auipc	ra,0xfffff
    80006514:	538080e7          	jalr	1336(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006518:	0014849b          	addiw	s1,s1,1
    8000651c:	0ff4f493          	andi	s1,s1,255
    80006520:	00f00793          	li	a5,15
    80006524:	fc97f0e3          	bgeu	a5,s1,800064e4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006528:	00004517          	auipc	a0,0x4
    8000652c:	d0050513          	addi	a0,a0,-768 # 8000a228 <CONSOLE_STATUS+0x218>
    80006530:	fffff097          	auipc	ra,0xfffff
    80006534:	518080e7          	jalr	1304(ra) # 80005a48 <_Z11printStringPKc>
    finishedD = true;
    80006538:	00100793          	li	a5,1
    8000653c:	00007717          	auipc	a4,0x7
    80006540:	60f70f23          	sb	a5,1566(a4) # 8000db5a <_ZL9finishedD>
    thread_dispatch();
    80006544:	ffffb097          	auipc	ra,0xffffb
    80006548:	db8080e7          	jalr	-584(ra) # 800012fc <_Z15thread_dispatchv>
}
    8000654c:	01813083          	ld	ra,24(sp)
    80006550:	01013403          	ld	s0,16(sp)
    80006554:	00813483          	ld	s1,8(sp)
    80006558:	00013903          	ld	s2,0(sp)
    8000655c:	02010113          	addi	sp,sp,32
    80006560:	00008067          	ret

0000000080006564 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006564:	fe010113          	addi	sp,sp,-32
    80006568:	00113c23          	sd	ra,24(sp)
    8000656c:	00813823          	sd	s0,16(sp)
    80006570:	00913423          	sd	s1,8(sp)
    80006574:	01213023          	sd	s2,0(sp)
    80006578:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000657c:	00000493          	li	s1,0
    80006580:	0400006f          	j	800065c0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006584:	00004517          	auipc	a0,0x4
    80006588:	c4c50513          	addi	a0,a0,-948 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    8000658c:	fffff097          	auipc	ra,0xfffff
    80006590:	4bc080e7          	jalr	1212(ra) # 80005a48 <_Z11printStringPKc>
    80006594:	00000613          	li	a2,0
    80006598:	00a00593          	li	a1,10
    8000659c:	00048513          	mv	a0,s1
    800065a0:	fffff097          	auipc	ra,0xfffff
    800065a4:	658080e7          	jalr	1624(ra) # 80005bf8 <_Z8printIntiii>
    800065a8:	00004517          	auipc	a0,0x4
    800065ac:	e4850513          	addi	a0,a0,-440 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    800065b0:	fffff097          	auipc	ra,0xfffff
    800065b4:	498080e7          	jalr	1176(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800065b8:	0014849b          	addiw	s1,s1,1
    800065bc:	0ff4f493          	andi	s1,s1,255
    800065c0:	00200793          	li	a5,2
    800065c4:	fc97f0e3          	bgeu	a5,s1,80006584 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800065c8:	00004517          	auipc	a0,0x4
    800065cc:	c1050513          	addi	a0,a0,-1008 # 8000a1d8 <CONSOLE_STATUS+0x1c8>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	478080e7          	jalr	1144(ra) # 80005a48 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800065d8:	00700313          	li	t1,7
    thread_dispatch();
    800065dc:	ffffb097          	auipc	ra,0xffffb
    800065e0:	d20080e7          	jalr	-736(ra) # 800012fc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800065e4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800065e8:	00004517          	auipc	a0,0x4
    800065ec:	c0050513          	addi	a0,a0,-1024 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	458080e7          	jalr	1112(ra) # 80005a48 <_Z11printStringPKc>
    800065f8:	00000613          	li	a2,0
    800065fc:	00a00593          	li	a1,10
    80006600:	0009051b          	sext.w	a0,s2
    80006604:	fffff097          	auipc	ra,0xfffff
    80006608:	5f4080e7          	jalr	1524(ra) # 80005bf8 <_Z8printIntiii>
    8000660c:	00004517          	auipc	a0,0x4
    80006610:	de450513          	addi	a0,a0,-540 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80006614:	fffff097          	auipc	ra,0xfffff
    80006618:	434080e7          	jalr	1076(ra) # 80005a48 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000661c:	00c00513          	li	a0,12
    80006620:	00000097          	auipc	ra,0x0
    80006624:	d88080e7          	jalr	-632(ra) # 800063a8 <_ZL9fibonaccim>
    80006628:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000662c:	00004517          	auipc	a0,0x4
    80006630:	bc450513          	addi	a0,a0,-1084 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    80006634:	fffff097          	auipc	ra,0xfffff
    80006638:	414080e7          	jalr	1044(ra) # 80005a48 <_Z11printStringPKc>
    8000663c:	00000613          	li	a2,0
    80006640:	00a00593          	li	a1,10
    80006644:	0009051b          	sext.w	a0,s2
    80006648:	fffff097          	auipc	ra,0xfffff
    8000664c:	5b0080e7          	jalr	1456(ra) # 80005bf8 <_Z8printIntiii>
    80006650:	00004517          	auipc	a0,0x4
    80006654:	da050513          	addi	a0,a0,-608 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80006658:	fffff097          	auipc	ra,0xfffff
    8000665c:	3f0080e7          	jalr	1008(ra) # 80005a48 <_Z11printStringPKc>
    80006660:	0400006f          	j	800066a0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006664:	00004517          	auipc	a0,0x4
    80006668:	b6c50513          	addi	a0,a0,-1172 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    8000666c:	fffff097          	auipc	ra,0xfffff
    80006670:	3dc080e7          	jalr	988(ra) # 80005a48 <_Z11printStringPKc>
    80006674:	00000613          	li	a2,0
    80006678:	00a00593          	li	a1,10
    8000667c:	00048513          	mv	a0,s1
    80006680:	fffff097          	auipc	ra,0xfffff
    80006684:	578080e7          	jalr	1400(ra) # 80005bf8 <_Z8printIntiii>
    80006688:	00004517          	auipc	a0,0x4
    8000668c:	d6850513          	addi	a0,a0,-664 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80006690:	fffff097          	auipc	ra,0xfffff
    80006694:	3b8080e7          	jalr	952(ra) # 80005a48 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006698:	0014849b          	addiw	s1,s1,1
    8000669c:	0ff4f493          	andi	s1,s1,255
    800066a0:	00500793          	li	a5,5
    800066a4:	fc97f0e3          	bgeu	a5,s1,80006664 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800066a8:	00004517          	auipc	a0,0x4
    800066ac:	b0050513          	addi	a0,a0,-1280 # 8000a1a8 <CONSOLE_STATUS+0x198>
    800066b0:	fffff097          	auipc	ra,0xfffff
    800066b4:	398080e7          	jalr	920(ra) # 80005a48 <_Z11printStringPKc>
    finishedC = true;
    800066b8:	00100793          	li	a5,1
    800066bc:	00007717          	auipc	a4,0x7
    800066c0:	48f70fa3          	sb	a5,1183(a4) # 8000db5b <_ZL9finishedC>
    thread_dispatch();
    800066c4:	ffffb097          	auipc	ra,0xffffb
    800066c8:	c38080e7          	jalr	-968(ra) # 800012fc <_Z15thread_dispatchv>
}
    800066cc:	01813083          	ld	ra,24(sp)
    800066d0:	01013403          	ld	s0,16(sp)
    800066d4:	00813483          	ld	s1,8(sp)
    800066d8:	00013903          	ld	s2,0(sp)
    800066dc:	02010113          	addi	sp,sp,32
    800066e0:	00008067          	ret

00000000800066e4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800066e4:	fe010113          	addi	sp,sp,-32
    800066e8:	00113c23          	sd	ra,24(sp)
    800066ec:	00813823          	sd	s0,16(sp)
    800066f0:	00913423          	sd	s1,8(sp)
    800066f4:	01213023          	sd	s2,0(sp)
    800066f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800066fc:	00000913          	li	s2,0
    80006700:	0400006f          	j	80006740 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006704:	ffffb097          	auipc	ra,0xffffb
    80006708:	bf8080e7          	jalr	-1032(ra) # 800012fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000670c:	00148493          	addi	s1,s1,1
    80006710:	000027b7          	lui	a5,0x2
    80006714:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006718:	0097ee63          	bltu	a5,s1,80006734 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000671c:	00000713          	li	a4,0
    80006720:	000077b7          	lui	a5,0x7
    80006724:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006728:	fce7eee3          	bltu	a5,a4,80006704 <_ZL11workerBodyBPv+0x20>
    8000672c:	00170713          	addi	a4,a4,1
    80006730:	ff1ff06f          	j	80006720 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006734:	00a00793          	li	a5,10
    80006738:	04f90663          	beq	s2,a5,80006784 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000673c:	00190913          	addi	s2,s2,1
    80006740:	00f00793          	li	a5,15
    80006744:	0527e463          	bltu	a5,s2,8000678c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006748:	00004517          	auipc	a0,0x4
    8000674c:	a7050513          	addi	a0,a0,-1424 # 8000a1b8 <CONSOLE_STATUS+0x1a8>
    80006750:	fffff097          	auipc	ra,0xfffff
    80006754:	2f8080e7          	jalr	760(ra) # 80005a48 <_Z11printStringPKc>
    80006758:	00000613          	li	a2,0
    8000675c:	00a00593          	li	a1,10
    80006760:	0009051b          	sext.w	a0,s2
    80006764:	fffff097          	auipc	ra,0xfffff
    80006768:	494080e7          	jalr	1172(ra) # 80005bf8 <_Z8printIntiii>
    8000676c:	00004517          	auipc	a0,0x4
    80006770:	c8450513          	addi	a0,a0,-892 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80006774:	fffff097          	auipc	ra,0xfffff
    80006778:	2d4080e7          	jalr	724(ra) # 80005a48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000677c:	00000493          	li	s1,0
    80006780:	f91ff06f          	j	80006710 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006784:	14102ff3          	csrr	t6,sepc
    80006788:	fb5ff06f          	j	8000673c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000678c:	00004517          	auipc	a0,0x4
    80006790:	a3450513          	addi	a0,a0,-1484 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80006794:	fffff097          	auipc	ra,0xfffff
    80006798:	2b4080e7          	jalr	692(ra) # 80005a48 <_Z11printStringPKc>
    finishedB = true;
    8000679c:	00100793          	li	a5,1
    800067a0:	00007717          	auipc	a4,0x7
    800067a4:	3af70e23          	sb	a5,956(a4) # 8000db5c <_ZL9finishedB>
    thread_dispatch();
    800067a8:	ffffb097          	auipc	ra,0xffffb
    800067ac:	b54080e7          	jalr	-1196(ra) # 800012fc <_Z15thread_dispatchv>
}
    800067b0:	01813083          	ld	ra,24(sp)
    800067b4:	01013403          	ld	s0,16(sp)
    800067b8:	00813483          	ld	s1,8(sp)
    800067bc:	00013903          	ld	s2,0(sp)
    800067c0:	02010113          	addi	sp,sp,32
    800067c4:	00008067          	ret

00000000800067c8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800067c8:	fe010113          	addi	sp,sp,-32
    800067cc:	00113c23          	sd	ra,24(sp)
    800067d0:	00813823          	sd	s0,16(sp)
    800067d4:	00913423          	sd	s1,8(sp)
    800067d8:	01213023          	sd	s2,0(sp)
    800067dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800067e0:	00000913          	li	s2,0
    800067e4:	0380006f          	j	8000681c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	b14080e7          	jalr	-1260(ra) # 800012fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800067f0:	00148493          	addi	s1,s1,1
    800067f4:	000027b7          	lui	a5,0x2
    800067f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067fc:	0097ee63          	bltu	a5,s1,80006818 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006800:	00000713          	li	a4,0
    80006804:	000077b7          	lui	a5,0x7
    80006808:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000680c:	fce7eee3          	bltu	a5,a4,800067e8 <_ZL11workerBodyAPv+0x20>
    80006810:	00170713          	addi	a4,a4,1
    80006814:	ff1ff06f          	j	80006804 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006818:	00190913          	addi	s2,s2,1
    8000681c:	00900793          	li	a5,9
    80006820:	0527e063          	bltu	a5,s2,80006860 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006824:	00004517          	auipc	a0,0x4
    80006828:	97c50513          	addi	a0,a0,-1668 # 8000a1a0 <CONSOLE_STATUS+0x190>
    8000682c:	fffff097          	auipc	ra,0xfffff
    80006830:	21c080e7          	jalr	540(ra) # 80005a48 <_Z11printStringPKc>
    80006834:	00000613          	li	a2,0
    80006838:	00a00593          	li	a1,10
    8000683c:	0009051b          	sext.w	a0,s2
    80006840:	fffff097          	auipc	ra,0xfffff
    80006844:	3b8080e7          	jalr	952(ra) # 80005bf8 <_Z8printIntiii>
    80006848:	00004517          	auipc	a0,0x4
    8000684c:	ba850513          	addi	a0,a0,-1112 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80006850:	fffff097          	auipc	ra,0xfffff
    80006854:	1f8080e7          	jalr	504(ra) # 80005a48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006858:	00000493          	li	s1,0
    8000685c:	f99ff06f          	j	800067f4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006860:	00004517          	auipc	a0,0x4
    80006864:	94850513          	addi	a0,a0,-1720 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80006868:	fffff097          	auipc	ra,0xfffff
    8000686c:	1e0080e7          	jalr	480(ra) # 80005a48 <_Z11printStringPKc>
    finishedA = true;
    80006870:	00100793          	li	a5,1
    80006874:	00007717          	auipc	a4,0x7
    80006878:	2ef704a3          	sb	a5,745(a4) # 8000db5d <_ZL9finishedA>
}
    8000687c:	01813083          	ld	ra,24(sp)
    80006880:	01013403          	ld	s0,16(sp)
    80006884:	00813483          	ld	s1,8(sp)
    80006888:	00013903          	ld	s2,0(sp)
    8000688c:	02010113          	addi	sp,sp,32
    80006890:	00008067          	ret

0000000080006894 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006894:	fd010113          	addi	sp,sp,-48
    80006898:	02113423          	sd	ra,40(sp)
    8000689c:	02813023          	sd	s0,32(sp)
    800068a0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800068a4:	00000613          	li	a2,0
    800068a8:	00000597          	auipc	a1,0x0
    800068ac:	f2058593          	addi	a1,a1,-224 # 800067c8 <_ZL11workerBodyAPv>
    800068b0:	fd040513          	addi	a0,s0,-48
    800068b4:	ffffb097          	auipc	ra,0xffffb
    800068b8:	9e8080e7          	jalr	-1560(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    printString("ThreadA created\n");
    800068bc:	00004517          	auipc	a0,0x4
    800068c0:	97c50513          	addi	a0,a0,-1668 # 8000a238 <CONSOLE_STATUS+0x228>
    800068c4:	fffff097          	auipc	ra,0xfffff
    800068c8:	184080e7          	jalr	388(ra) # 80005a48 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800068cc:	00000613          	li	a2,0
    800068d0:	00000597          	auipc	a1,0x0
    800068d4:	e1458593          	addi	a1,a1,-492 # 800066e4 <_ZL11workerBodyBPv>
    800068d8:	fd840513          	addi	a0,s0,-40
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	9c0080e7          	jalr	-1600(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    printString("ThreadB created\n");
    800068e4:	00004517          	auipc	a0,0x4
    800068e8:	96c50513          	addi	a0,a0,-1684 # 8000a250 <CONSOLE_STATUS+0x240>
    800068ec:	fffff097          	auipc	ra,0xfffff
    800068f0:	15c080e7          	jalr	348(ra) # 80005a48 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800068f4:	00000613          	li	a2,0
    800068f8:	00000597          	auipc	a1,0x0
    800068fc:	c6c58593          	addi	a1,a1,-916 # 80006564 <_ZL11workerBodyCPv>
    80006900:	fe040513          	addi	a0,s0,-32
    80006904:	ffffb097          	auipc	ra,0xffffb
    80006908:	998080e7          	jalr	-1640(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    printString("ThreadC created\n");
    8000690c:	00004517          	auipc	a0,0x4
    80006910:	95c50513          	addi	a0,a0,-1700 # 8000a268 <CONSOLE_STATUS+0x258>
    80006914:	fffff097          	auipc	ra,0xfffff
    80006918:	134080e7          	jalr	308(ra) # 80005a48 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000691c:	00000613          	li	a2,0
    80006920:	00000597          	auipc	a1,0x0
    80006924:	afc58593          	addi	a1,a1,-1284 # 8000641c <_ZL11workerBodyDPv>
    80006928:	fe840513          	addi	a0,s0,-24
    8000692c:	ffffb097          	auipc	ra,0xffffb
    80006930:	970080e7          	jalr	-1680(ra) # 8000129c <_Z13thread_createPP3NitPFvPvES2_>
    printString("ThreadD created\n");
    80006934:	00004517          	auipc	a0,0x4
    80006938:	94c50513          	addi	a0,a0,-1716 # 8000a280 <CONSOLE_STATUS+0x270>
    8000693c:	fffff097          	auipc	ra,0xfffff
    80006940:	10c080e7          	jalr	268(ra) # 80005a48 <_Z11printStringPKc>
    80006944:	00c0006f          	j	80006950 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006948:	ffffb097          	auipc	ra,0xffffb
    8000694c:	9b4080e7          	jalr	-1612(ra) # 800012fc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006950:	00007797          	auipc	a5,0x7
    80006954:	20d7c783          	lbu	a5,525(a5) # 8000db5d <_ZL9finishedA>
    80006958:	fe0788e3          	beqz	a5,80006948 <_Z16System_Mode_testv+0xb4>
    8000695c:	00007797          	auipc	a5,0x7
    80006960:	2007c783          	lbu	a5,512(a5) # 8000db5c <_ZL9finishedB>
    80006964:	fe0782e3          	beqz	a5,80006948 <_Z16System_Mode_testv+0xb4>
    80006968:	00007797          	auipc	a5,0x7
    8000696c:	1f37c783          	lbu	a5,499(a5) # 8000db5b <_ZL9finishedC>
    80006970:	fc078ce3          	beqz	a5,80006948 <_Z16System_Mode_testv+0xb4>
    80006974:	00007797          	auipc	a5,0x7
    80006978:	1e67c783          	lbu	a5,486(a5) # 8000db5a <_ZL9finishedD>
    8000697c:	fc0786e3          	beqz	a5,80006948 <_Z16System_Mode_testv+0xb4>
    }

}
    80006980:	02813083          	ld	ra,40(sp)
    80006984:	02013403          	ld	s0,32(sp)
    80006988:	03010113          	addi	sp,sp,48
    8000698c:	00008067          	ret

0000000080006990 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006990:	fe010113          	addi	sp,sp,-32
    80006994:	00113c23          	sd	ra,24(sp)
    80006998:	00813823          	sd	s0,16(sp)
    8000699c:	00913423          	sd	s1,8(sp)
    800069a0:	01213023          	sd	s2,0(sp)
    800069a4:	02010413          	addi	s0,sp,32
    800069a8:	00050493          	mv	s1,a0
    800069ac:	00058913          	mv	s2,a1
    800069b0:	0015879b          	addiw	a5,a1,1
    800069b4:	0007851b          	sext.w	a0,a5
    800069b8:	00f4a023          	sw	a5,0(s1)
    800069bc:	0004a823          	sw	zero,16(s1)
    800069c0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800069c4:	00251513          	slli	a0,a0,0x2
    800069c8:	ffffb097          	auipc	ra,0xffffb
    800069cc:	878080e7          	jalr	-1928(ra) # 80001240 <_Z9mem_allocm>
    800069d0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800069d4:	00000593          	li	a1,0
    800069d8:	02048513          	addi	a0,s1,32
    800069dc:	ffffb097          	auipc	ra,0xffffb
    800069e0:	96c080e7          	jalr	-1684(ra) # 80001348 <_Z8sem_openPP7Semaforj>
    sem_open(&spaceAvailable, _cap);
    800069e4:	00090593          	mv	a1,s2
    800069e8:	01848513          	addi	a0,s1,24
    800069ec:	ffffb097          	auipc	ra,0xffffb
    800069f0:	95c080e7          	jalr	-1700(ra) # 80001348 <_Z8sem_openPP7Semaforj>
    sem_open(&mutexHead, 1);
    800069f4:	00100593          	li	a1,1
    800069f8:	02848513          	addi	a0,s1,40
    800069fc:	ffffb097          	auipc	ra,0xffffb
    80006a00:	94c080e7          	jalr	-1716(ra) # 80001348 <_Z8sem_openPP7Semaforj>
    sem_open(&mutexTail, 1);
    80006a04:	00100593          	li	a1,1
    80006a08:	03048513          	addi	a0,s1,48
    80006a0c:	ffffb097          	auipc	ra,0xffffb
    80006a10:	93c080e7          	jalr	-1732(ra) # 80001348 <_Z8sem_openPP7Semaforj>
}
    80006a14:	01813083          	ld	ra,24(sp)
    80006a18:	01013403          	ld	s0,16(sp)
    80006a1c:	00813483          	ld	s1,8(sp)
    80006a20:	00013903          	ld	s2,0(sp)
    80006a24:	02010113          	addi	sp,sp,32
    80006a28:	00008067          	ret

0000000080006a2c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a2c:	fe010113          	addi	sp,sp,-32
    80006a30:	00113c23          	sd	ra,24(sp)
    80006a34:	00813823          	sd	s0,16(sp)
    80006a38:	00913423          	sd	s1,8(sp)
    80006a3c:	01213023          	sd	s2,0(sp)
    80006a40:	02010413          	addi	s0,sp,32
    80006a44:	00050493          	mv	s1,a0
    80006a48:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a4c:	01853503          	ld	a0,24(a0)
    80006a50:	ffffb097          	auipc	ra,0xffffb
    80006a54:	95c080e7          	jalr	-1700(ra) # 800013ac <_Z8sem_waitP7Semafor>

    sem_wait(mutexTail);
    80006a58:	0304b503          	ld	a0,48(s1)
    80006a5c:	ffffb097          	auipc	ra,0xffffb
    80006a60:	950080e7          	jalr	-1712(ra) # 800013ac <_Z8sem_waitP7Semafor>
    buffer[tail] = val;
    80006a64:	0084b783          	ld	a5,8(s1)
    80006a68:	0144a703          	lw	a4,20(s1)
    80006a6c:	00271713          	slli	a4,a4,0x2
    80006a70:	00e787b3          	add	a5,a5,a4
    80006a74:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a78:	0144a783          	lw	a5,20(s1)
    80006a7c:	0017879b          	addiw	a5,a5,1
    80006a80:	0004a703          	lw	a4,0(s1)
    80006a84:	02e7e7bb          	remw	a5,a5,a4
    80006a88:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a8c:	0304b503          	ld	a0,48(s1)
    80006a90:	ffffb097          	auipc	ra,0xffffb
    80006a94:	94c080e7          	jalr	-1716(ra) # 800013dc <_Z10sem_signalP7Semafor>

    sem_signal(itemAvailable);
    80006a98:	0204b503          	ld	a0,32(s1)
    80006a9c:	ffffb097          	auipc	ra,0xffffb
    80006aa0:	940080e7          	jalr	-1728(ra) # 800013dc <_Z10sem_signalP7Semafor>

}
    80006aa4:	01813083          	ld	ra,24(sp)
    80006aa8:	01013403          	ld	s0,16(sp)
    80006aac:	00813483          	ld	s1,8(sp)
    80006ab0:	00013903          	ld	s2,0(sp)
    80006ab4:	02010113          	addi	sp,sp,32
    80006ab8:	00008067          	ret

0000000080006abc <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006abc:	fe010113          	addi	sp,sp,-32
    80006ac0:	00113c23          	sd	ra,24(sp)
    80006ac4:	00813823          	sd	s0,16(sp)
    80006ac8:	00913423          	sd	s1,8(sp)
    80006acc:	01213023          	sd	s2,0(sp)
    80006ad0:	02010413          	addi	s0,sp,32
    80006ad4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ad8:	02053503          	ld	a0,32(a0)
    80006adc:	ffffb097          	auipc	ra,0xffffb
    80006ae0:	8d0080e7          	jalr	-1840(ra) # 800013ac <_Z8sem_waitP7Semafor>

    sem_wait(mutexHead);
    80006ae4:	0284b503          	ld	a0,40(s1)
    80006ae8:	ffffb097          	auipc	ra,0xffffb
    80006aec:	8c4080e7          	jalr	-1852(ra) # 800013ac <_Z8sem_waitP7Semafor>

    int ret = buffer[head];
    80006af0:	0084b703          	ld	a4,8(s1)
    80006af4:	0104a783          	lw	a5,16(s1)
    80006af8:	00279693          	slli	a3,a5,0x2
    80006afc:	00d70733          	add	a4,a4,a3
    80006b00:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006b04:	0017879b          	addiw	a5,a5,1
    80006b08:	0004a703          	lw	a4,0(s1)
    80006b0c:	02e7e7bb          	remw	a5,a5,a4
    80006b10:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006b14:	0284b503          	ld	a0,40(s1)
    80006b18:	ffffb097          	auipc	ra,0xffffb
    80006b1c:	8c4080e7          	jalr	-1852(ra) # 800013dc <_Z10sem_signalP7Semafor>

    sem_signal(spaceAvailable);
    80006b20:	0184b503          	ld	a0,24(s1)
    80006b24:	ffffb097          	auipc	ra,0xffffb
    80006b28:	8b8080e7          	jalr	-1864(ra) # 800013dc <_Z10sem_signalP7Semafor>

    return ret;
}
    80006b2c:	00090513          	mv	a0,s2
    80006b30:	01813083          	ld	ra,24(sp)
    80006b34:	01013403          	ld	s0,16(sp)
    80006b38:	00813483          	ld	s1,8(sp)
    80006b3c:	00013903          	ld	s2,0(sp)
    80006b40:	02010113          	addi	sp,sp,32
    80006b44:	00008067          	ret

0000000080006b48 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b48:	fe010113          	addi	sp,sp,-32
    80006b4c:	00113c23          	sd	ra,24(sp)
    80006b50:	00813823          	sd	s0,16(sp)
    80006b54:	00913423          	sd	s1,8(sp)
    80006b58:	01213023          	sd	s2,0(sp)
    80006b5c:	02010413          	addi	s0,sp,32
    80006b60:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b64:	02853503          	ld	a0,40(a0)
    80006b68:	ffffb097          	auipc	ra,0xffffb
    80006b6c:	844080e7          	jalr	-1980(ra) # 800013ac <_Z8sem_waitP7Semafor>
    sem_wait(mutexTail);
    80006b70:	0304b503          	ld	a0,48(s1)
    80006b74:	ffffb097          	auipc	ra,0xffffb
    80006b78:	838080e7          	jalr	-1992(ra) # 800013ac <_Z8sem_waitP7Semafor>

    if (tail >= head) {
    80006b7c:	0144a783          	lw	a5,20(s1)
    80006b80:	0104a903          	lw	s2,16(s1)
    80006b84:	0327ce63          	blt	a5,s2,80006bc0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b88:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b8c:	0304b503          	ld	a0,48(s1)
    80006b90:	ffffb097          	auipc	ra,0xffffb
    80006b94:	84c080e7          	jalr	-1972(ra) # 800013dc <_Z10sem_signalP7Semafor>
    sem_signal(mutexHead);
    80006b98:	0284b503          	ld	a0,40(s1)
    80006b9c:	ffffb097          	auipc	ra,0xffffb
    80006ba0:	840080e7          	jalr	-1984(ra) # 800013dc <_Z10sem_signalP7Semafor>

    return ret;
}
    80006ba4:	00090513          	mv	a0,s2
    80006ba8:	01813083          	ld	ra,24(sp)
    80006bac:	01013403          	ld	s0,16(sp)
    80006bb0:	00813483          	ld	s1,8(sp)
    80006bb4:	00013903          	ld	s2,0(sp)
    80006bb8:	02010113          	addi	sp,sp,32
    80006bbc:	00008067          	ret
        ret = cap - head + tail;
    80006bc0:	0004a703          	lw	a4,0(s1)
    80006bc4:	4127093b          	subw	s2,a4,s2
    80006bc8:	00f9093b          	addw	s2,s2,a5
    80006bcc:	fc1ff06f          	j	80006b8c <_ZN6Buffer6getCntEv+0x44>

0000000080006bd0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006bd0:	fe010113          	addi	sp,sp,-32
    80006bd4:	00113c23          	sd	ra,24(sp)
    80006bd8:	00813823          	sd	s0,16(sp)
    80006bdc:	00913423          	sd	s1,8(sp)
    80006be0:	02010413          	addi	s0,sp,32
    80006be4:	00050493          	mv	s1,a0
    putc('\n');
    80006be8:	00a00513          	li	a0,10
    80006bec:	ffffb097          	auipc	ra,0xffffb
    80006bf0:	87c080e7          	jalr	-1924(ra) # 80001468 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006bf4:	00003517          	auipc	a0,0x3
    80006bf8:	6a450513          	addi	a0,a0,1700 # 8000a298 <CONSOLE_STATUS+0x288>
    80006bfc:	fffff097          	auipc	ra,0xfffff
    80006c00:	e4c080e7          	jalr	-436(ra) # 80005a48 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006c04:	00048513          	mv	a0,s1
    80006c08:	00000097          	auipc	ra,0x0
    80006c0c:	f40080e7          	jalr	-192(ra) # 80006b48 <_ZN6Buffer6getCntEv>
    80006c10:	02a05c63          	blez	a0,80006c48 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006c14:	0084b783          	ld	a5,8(s1)
    80006c18:	0104a703          	lw	a4,16(s1)
    80006c1c:	00271713          	slli	a4,a4,0x2
    80006c20:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006c24:	0007c503          	lbu	a0,0(a5)
    80006c28:	ffffb097          	auipc	ra,0xffffb
    80006c2c:	840080e7          	jalr	-1984(ra) # 80001468 <_Z4putcc>
        head = (head + 1) % cap;
    80006c30:	0104a783          	lw	a5,16(s1)
    80006c34:	0017879b          	addiw	a5,a5,1
    80006c38:	0004a703          	lw	a4,0(s1)
    80006c3c:	02e7e7bb          	remw	a5,a5,a4
    80006c40:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c44:	fc1ff06f          	j	80006c04 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c48:	02100513          	li	a0,33
    80006c4c:	ffffb097          	auipc	ra,0xffffb
    80006c50:	81c080e7          	jalr	-2020(ra) # 80001468 <_Z4putcc>
    putc('\n');
    80006c54:	00a00513          	li	a0,10
    80006c58:	ffffb097          	auipc	ra,0xffffb
    80006c5c:	810080e7          	jalr	-2032(ra) # 80001468 <_Z4putcc>
    mem_free(buffer);
    80006c60:	0084b503          	ld	a0,8(s1)
    80006c64:	ffffa097          	auipc	ra,0xffffa
    80006c68:	608080e7          	jalr	1544(ra) # 8000126c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c6c:	0204b503          	ld	a0,32(s1)
    80006c70:	ffffa097          	auipc	ra,0xffffa
    80006c74:	70c080e7          	jalr	1804(ra) # 8000137c <_Z9sem_closeP7Semafor>
    sem_close(spaceAvailable);
    80006c78:	0184b503          	ld	a0,24(s1)
    80006c7c:	ffffa097          	auipc	ra,0xffffa
    80006c80:	700080e7          	jalr	1792(ra) # 8000137c <_Z9sem_closeP7Semafor>
    sem_close(mutexTail);
    80006c84:	0304b503          	ld	a0,48(s1)
    80006c88:	ffffa097          	auipc	ra,0xffffa
    80006c8c:	6f4080e7          	jalr	1780(ra) # 8000137c <_Z9sem_closeP7Semafor>
    sem_close(mutexHead);
    80006c90:	0284b503          	ld	a0,40(s1)
    80006c94:	ffffa097          	auipc	ra,0xffffa
    80006c98:	6e8080e7          	jalr	1768(ra) # 8000137c <_Z9sem_closeP7Semafor>
}
    80006c9c:	01813083          	ld	ra,24(sp)
    80006ca0:	01013403          	ld	s0,16(sp)
    80006ca4:	00813483          	ld	s1,8(sp)
    80006ca8:	02010113          	addi	sp,sp,32
    80006cac:	00008067          	ret

0000000080006cb0 <_Z8functionPv>:
        int m;
        int id;
    }struktura;
}

void function(void* a){
    80006cb0:	ff010113          	addi	sp,sp,-16
    80006cb4:	00813423          	sd	s0,8(sp)
    80006cb8:	01010413          	addi	s0,sp,16
    struktura *s = static_cast<struktura*>(a);
    s->rez[s->id]=0;
    80006cbc:	00853783          	ld	a5,8(a0)
    80006cc0:	01852703          	lw	a4,24(a0)
    80006cc4:	00271713          	slli	a4,a4,0x2
    80006cc8:	00e787b3          	add	a5,a5,a4
    80006ccc:	0007a023          	sw	zero,0(a5)
    for(int i=0;i < s->n;i++){
    80006cd0:	00000693          	li	a3,0
    80006cd4:	01052783          	lw	a5,16(a0)
    80006cd8:	04f6d263          	bge	a3,a5,80006d1c <_Z8functionPv+0x6c>
        s->rez[s->id]+= s->matrix[s->id][i];
    80006cdc:	00853783          	ld	a5,8(a0)
    80006ce0:	01852703          	lw	a4,24(a0)
    80006ce4:	00271613          	slli	a2,a4,0x2
    80006ce8:	00c787b3          	add	a5,a5,a2
    80006cec:	00053603          	ld	a2,0(a0)
    80006cf0:	00371713          	slli	a4,a4,0x3
    80006cf4:	00e60733          	add	a4,a2,a4
    80006cf8:	00073703          	ld	a4,0(a4)
    80006cfc:	00269613          	slli	a2,a3,0x2
    80006d00:	00c70733          	add	a4,a4,a2
    80006d04:	00072603          	lw	a2,0(a4)
    80006d08:	0007a703          	lw	a4,0(a5)
    80006d0c:	00c7073b          	addw	a4,a4,a2
    80006d10:	00e7a023          	sw	a4,0(a5)
    for(int i=0;i < s->n;i++){
    80006d14:	0016869b          	addiw	a3,a3,1
    80006d18:	fbdff06f          	j	80006cd4 <_Z8functionPv+0x24>
    }
}
    80006d1c:	00813403          	ld	s0,8(sp)
    80006d20:	01010113          	addi	sp,sp,16
    80006d24:	00008067          	ret

0000000080006d28 <_Z13testMatrixSumv>:

void testMatrixSum(){
    80006d28:	f8010113          	addi	sp,sp,-128
    80006d2c:	06113c23          	sd	ra,120(sp)
    80006d30:	06813823          	sd	s0,112(sp)
    80006d34:	06913423          	sd	s1,104(sp)
    80006d38:	07213023          	sd	s2,96(sp)
    80006d3c:	05313c23          	sd	s3,88(sp)
    80006d40:	05413823          	sd	s4,80(sp)
    80006d44:	05513423          	sd	s5,72(sp)
    80006d48:	05613023          	sd	s6,64(sp)
    80006d4c:	03713c23          	sd	s7,56(sp)
    80006d50:	03813823          	sd	s8,48(sp)
    80006d54:	03913423          	sd	s9,40(sp)
    80006d58:	08010413          	addi	s0,sp,128
    char input[30];
    int n, m;

    printString("Unesite n i m dimenzije matrice:\n");
    80006d5c:	00003517          	auipc	a0,0x3
    80006d60:	7fc50513          	addi	a0,a0,2044 # 8000a558 <CONSOLE_STATUS+0x548>
    80006d64:	fffff097          	auipc	ra,0xfffff
    80006d68:	ce4080e7          	jalr	-796(ra) # 80005a48 <_Z11printStringPKc>
    getString(input, 30);
    80006d6c:	01e00593          	li	a1,30
    80006d70:	f8040493          	addi	s1,s0,-128
    80006d74:	00048513          	mv	a0,s1
    80006d78:	fffff097          	auipc	ra,0xfffff
    80006d7c:	d58080e7          	jalr	-680(ra) # 80005ad0 <_Z9getStringPci>
    n = stringToInt(input);
    80006d80:	00048513          	mv	a0,s1
    80006d84:	fffff097          	auipc	ra,0xfffff
    80006d88:	e24080e7          	jalr	-476(ra) # 80005ba8 <_Z11stringToIntPKc>
    80006d8c:	00050a93          	mv	s5,a0
    getString(input, 30);
    80006d90:	01e00593          	li	a1,30
    80006d94:	00048513          	mv	a0,s1
    80006d98:	fffff097          	auipc	ra,0xfffff
    80006d9c:	d38080e7          	jalr	-712(ra) # 80005ad0 <_Z9getStringPci>
    m = stringToInt(input);
    80006da0:	00048513          	mv	a0,s1
    80006da4:	fffff097          	auipc	ra,0xfffff
    80006da8:	e04080e7          	jalr	-508(ra) # 80005ba8 <_Z11stringToIntPKc>
    80006dac:	00050b13          	mv	s6,a0

    int** matrix = (int**) mem_alloc(m*sizeof(int*));
    80006db0:	00351c93          	slli	s9,a0,0x3
    80006db4:	000c8513          	mv	a0,s9
    80006db8:	ffffa097          	auipc	ra,0xffffa
    80006dbc:	488080e7          	jalr	1160(ra) # 80001240 <_Z9mem_allocm>
    80006dc0:	00050c13          	mv	s8,a0
    for(int i=0;i<m;i++){
    80006dc4:	00000b93          	li	s7,0
    80006dc8:	0080006f          	j	80006dd0 <_Z13testMatrixSumv+0xa8>
    80006dcc:	001b8b9b          	addiw	s7,s7,1
    80006dd0:	056bde63          	bge	s7,s6,80006e2c <_Z13testMatrixSumv+0x104>
        matrix[i] = (int*) mem_alloc(n*sizeof(int));
    80006dd4:	003b9a13          	slli	s4,s7,0x3
    80006dd8:	014c0a33          	add	s4,s8,s4
    80006ddc:	002a9513          	slli	a0,s5,0x2
    80006de0:	ffffa097          	auipc	ra,0xffffa
    80006de4:	460080e7          	jalr	1120(ra) # 80001240 <_Z9mem_allocm>
    80006de8:	00aa3023          	sd	a0,0(s4)
        for (int j = 0; j < n; j++) {
    80006dec:	00000913          	li	s2,0
    80006df0:	fd595ee3          	bge	s2,s5,80006dcc <_Z13testMatrixSumv+0xa4>
            getString(input,30);
    80006df4:	01e00593          	li	a1,30
    80006df8:	f8040493          	addi	s1,s0,-128
    80006dfc:	00048513          	mv	a0,s1
    80006e00:	fffff097          	auipc	ra,0xfffff
    80006e04:	cd0080e7          	jalr	-816(ra) # 80005ad0 <_Z9getStringPci>
            matrix[i][j] = stringToInt(input);
    80006e08:	000a3983          	ld	s3,0(s4)
    80006e0c:	00291793          	slli	a5,s2,0x2
    80006e10:	00f989b3          	add	s3,s3,a5
    80006e14:	00048513          	mv	a0,s1
    80006e18:	fffff097          	auipc	ra,0xfffff
    80006e1c:	d90080e7          	jalr	-624(ra) # 80005ba8 <_Z11stringToIntPKc>
    80006e20:	00a9a023          	sw	a0,0(s3)
        for (int j = 0; j < n; j++) {
    80006e24:	0019091b          	addiw	s2,s2,1
    80006e28:	fc9ff06f          	j	80006df0 <_Z13testMatrixSumv+0xc8>
        }
    }

    int* rez = (int*) mem_alloc(m*sizeof(int));
    80006e2c:	002b1513          	slli	a0,s6,0x2
    80006e30:	ffffa097          	auipc	ra,0xffffa
    80006e34:	410080e7          	jalr	1040(ra) # 80001240 <_Z9mem_allocm>
    80006e38:	00050a13          	mv	s4,a0

    Thread* thread[m];
    80006e3c:	00fc8793          	addi	a5,s9,15
    80006e40:	ff07f793          	andi	a5,a5,-16
    80006e44:	40f10133          	sub	sp,sp,a5
    80006e48:	00010b93          	mv	s7,sp
    for(int i=0;i<m;i++){
    80006e4c:	00000913          	li	s2,0
    80006e50:	0200006f          	j	80006e70 <_Z13testMatrixSumv+0x148>
        s->matrix=matrix;
        s->rez=rez;
        s->m=m;
        s->n=n;
        s->id=i;
        thread[i] = new Thread(&function, (void*)s);
    80006e54:	00391793          	slli	a5,s2,0x3
    80006e58:	00fb87b3          	add	a5,s7,a5
    80006e5c:	0137b023          	sd	s3,0(a5)
        thread[i]->start();
    80006e60:	00098513          	mv	a0,s3
    80006e64:	ffffb097          	auipc	ra,0xffffb
    80006e68:	430080e7          	jalr	1072(ra) # 80002294 <_ZN6Thread5startEv>
    for(int i=0;i<m;i++){
    80006e6c:	0019091b          	addiw	s2,s2,1
    80006e70:	05695863          	bge	s2,s6,80006ec0 <_Z13testMatrixSumv+0x198>
        struktura* s = new struktura;
    80006e74:	02000513          	li	a0,32
    80006e78:	ffffb097          	auipc	ra,0xffffb
    80006e7c:	2ec080e7          	jalr	748(ra) # 80002164 <_Znwm>
    80006e80:	00050493          	mv	s1,a0
        s->matrix=matrix;
    80006e84:	01853023          	sd	s8,0(a0)
        s->rez=rez;
    80006e88:	01453423          	sd	s4,8(a0)
        s->m=m;
    80006e8c:	01652a23          	sw	s6,20(a0)
        s->n=n;
    80006e90:	01552823          	sw	s5,16(a0)
        s->id=i;
    80006e94:	01252c23          	sw	s2,24(a0)
        thread[i] = new Thread(&function, (void*)s);
    80006e98:	02000513          	li	a0,32
    80006e9c:	ffffb097          	auipc	ra,0xffffb
    80006ea0:	2c8080e7          	jalr	712(ra) # 80002164 <_Znwm>
    80006ea4:	00050993          	mv	s3,a0
    80006ea8:	00048613          	mv	a2,s1
    80006eac:	00000597          	auipc	a1,0x0
    80006eb0:	e0458593          	addi	a1,a1,-508 # 80006cb0 <_Z8functionPv>
    80006eb4:	ffffb097          	auipc	ra,0xffffb
    80006eb8:	380080e7          	jalr	896(ra) # 80002234 <_ZN6ThreadC1EPFvPvES0_>
    80006ebc:	f99ff06f          	j	80006e54 <_Z13testMatrixSumv+0x12c>
    }

    for(int i=0;i<m;i++){
    80006ec0:	00000493          	li	s1,0
    80006ec4:	0364d063          	bge	s1,s6,80006ee4 <_Z13testMatrixSumv+0x1bc>
        thread[i]->join();
    80006ec8:	00349793          	slli	a5,s1,0x3
    80006ecc:	00fb87b3          	add	a5,s7,a5
    80006ed0:	0007b503          	ld	a0,0(a5)
    80006ed4:	ffffb097          	auipc	ra,0xffffb
    80006ed8:	420080e7          	jalr	1056(ra) # 800022f4 <_ZN6Thread4joinEv>
    for(int i=0;i<m;i++){
    80006edc:	0014849b          	addiw	s1,s1,1
    80006ee0:	fe5ff06f          	j	80006ec4 <_Z13testMatrixSumv+0x19c>
    }
    int sum=0;
    for(int i=0;i<m;i++){
    80006ee4:	00000793          	li	a5,0
    int sum=0;
    80006ee8:	00000493          	li	s1,0
    for(int i=0;i<m;i++){
    80006eec:	0167de63          	bge	a5,s6,80006f08 <_Z13testMatrixSumv+0x1e0>
        sum+=rez[i];
    80006ef0:	00279713          	slli	a4,a5,0x2
    80006ef4:	00ea0733          	add	a4,s4,a4
    80006ef8:	00072703          	lw	a4,0(a4)
    80006efc:	00e484bb          	addw	s1,s1,a4
    for(int i=0;i<m;i++){
    80006f00:	0017879b          	addiw	a5,a5,1
    80006f04:	fe9ff06f          	j	80006eec <_Z13testMatrixSumv+0x1c4>
    }

    printString("Suma matrice je: ");
    80006f08:	00003517          	auipc	a0,0x3
    80006f0c:	67850513          	addi	a0,a0,1656 # 8000a580 <CONSOLE_STATUS+0x570>
    80006f10:	fffff097          	auipc	ra,0xfffff
    80006f14:	b38080e7          	jalr	-1224(ra) # 80005a48 <_Z11printStringPKc>
    printInt(sum);
    80006f18:	00000613          	li	a2,0
    80006f1c:	00a00593          	li	a1,10
    80006f20:	00048513          	mv	a0,s1
    80006f24:	fffff097          	auipc	ra,0xfffff
    80006f28:	cd4080e7          	jalr	-812(ra) # 80005bf8 <_Z8printIntiii>
    printString("\n");
    80006f2c:	00003517          	auipc	a0,0x3
    80006f30:	4c450513          	addi	a0,a0,1220 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80006f34:	fffff097          	auipc	ra,0xfffff
    80006f38:	b14080e7          	jalr	-1260(ra) # 80005a48 <_Z11printStringPKc>
    80006f3c:	f8040113          	addi	sp,s0,-128
    80006f40:	07813083          	ld	ra,120(sp)
    80006f44:	07013403          	ld	s0,112(sp)
    80006f48:	06813483          	ld	s1,104(sp)
    80006f4c:	06013903          	ld	s2,96(sp)
    80006f50:	05813983          	ld	s3,88(sp)
    80006f54:	05013a03          	ld	s4,80(sp)
    80006f58:	04813a83          	ld	s5,72(sp)
    80006f5c:	04013b03          	ld	s6,64(sp)
    80006f60:	03813b83          	ld	s7,56(sp)
    80006f64:	03013c03          	ld	s8,48(sp)
    80006f68:	02813c83          	ld	s9,40(sp)
    80006f6c:	08010113          	addi	sp,sp,128
    80006f70:	00008067          	ret
    80006f74:	00050493          	mv	s1,a0
        thread[i] = new Thread(&function, (void*)s);
    80006f78:	00098513          	mv	a0,s3
    80006f7c:	ffffb097          	auipc	ra,0xffffb
    80006f80:	210080e7          	jalr	528(ra) # 8000218c <_ZdlPv>
    80006f84:	00048513          	mv	a0,s1
    80006f88:	00008097          	auipc	ra,0x8
    80006f8c:	ca0080e7          	jalr	-864(ra) # 8000ec28 <_Unwind_Resume>

0000000080006f90 <start>:
    80006f90:	ff010113          	addi	sp,sp,-16
    80006f94:	00813423          	sd	s0,8(sp)
    80006f98:	01010413          	addi	s0,sp,16
    80006f9c:	300027f3          	csrr	a5,mstatus
    80006fa0:	ffffe737          	lui	a4,0xffffe
    80006fa4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffefa3f>
    80006fa8:	00e7f7b3          	and	a5,a5,a4
    80006fac:	00001737          	lui	a4,0x1
    80006fb0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006fb4:	00e7e7b3          	or	a5,a5,a4
    80006fb8:	30079073          	csrw	mstatus,a5
    80006fbc:	00000797          	auipc	a5,0x0
    80006fc0:	16078793          	addi	a5,a5,352 # 8000711c <system_main>
    80006fc4:	34179073          	csrw	mepc,a5
    80006fc8:	00000793          	li	a5,0
    80006fcc:	18079073          	csrw	satp,a5
    80006fd0:	000107b7          	lui	a5,0x10
    80006fd4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006fd8:	30279073          	csrw	medeleg,a5
    80006fdc:	30379073          	csrw	mideleg,a5
    80006fe0:	104027f3          	csrr	a5,sie
    80006fe4:	2227e793          	ori	a5,a5,546
    80006fe8:	10479073          	csrw	sie,a5
    80006fec:	fff00793          	li	a5,-1
    80006ff0:	00a7d793          	srli	a5,a5,0xa
    80006ff4:	3b079073          	csrw	pmpaddr0,a5
    80006ff8:	00f00793          	li	a5,15
    80006ffc:	3a079073          	csrw	pmpcfg0,a5
    80007000:	f14027f3          	csrr	a5,mhartid
    80007004:	0200c737          	lui	a4,0x200c
    80007008:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000700c:	0007869b          	sext.w	a3,a5
    80007010:	00269713          	slli	a4,a3,0x2
    80007014:	000f4637          	lui	a2,0xf4
    80007018:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000701c:	00d70733          	add	a4,a4,a3
    80007020:	0037979b          	slliw	a5,a5,0x3
    80007024:	020046b7          	lui	a3,0x2004
    80007028:	00d787b3          	add	a5,a5,a3
    8000702c:	00c585b3          	add	a1,a1,a2
    80007030:	00371693          	slli	a3,a4,0x3
    80007034:	00007717          	auipc	a4,0x7
    80007038:	b2c70713          	addi	a4,a4,-1236 # 8000db60 <timer_scratch>
    8000703c:	00b7b023          	sd	a1,0(a5)
    80007040:	00d70733          	add	a4,a4,a3
    80007044:	00f73c23          	sd	a5,24(a4)
    80007048:	02c73023          	sd	a2,32(a4)
    8000704c:	34071073          	csrw	mscratch,a4
    80007050:	00000797          	auipc	a5,0x0
    80007054:	6e078793          	addi	a5,a5,1760 # 80007730 <timervec>
    80007058:	30579073          	csrw	mtvec,a5
    8000705c:	300027f3          	csrr	a5,mstatus
    80007060:	0087e793          	ori	a5,a5,8
    80007064:	30079073          	csrw	mstatus,a5
    80007068:	304027f3          	csrr	a5,mie
    8000706c:	0807e793          	ori	a5,a5,128
    80007070:	30479073          	csrw	mie,a5
    80007074:	f14027f3          	csrr	a5,mhartid
    80007078:	0007879b          	sext.w	a5,a5
    8000707c:	00078213          	mv	tp,a5
    80007080:	30200073          	mret
    80007084:	00813403          	ld	s0,8(sp)
    80007088:	01010113          	addi	sp,sp,16
    8000708c:	00008067          	ret

0000000080007090 <timerinit>:
    80007090:	ff010113          	addi	sp,sp,-16
    80007094:	00813423          	sd	s0,8(sp)
    80007098:	01010413          	addi	s0,sp,16
    8000709c:	f14027f3          	csrr	a5,mhartid
    800070a0:	0200c737          	lui	a4,0x200c
    800070a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800070a8:	0007869b          	sext.w	a3,a5
    800070ac:	00269713          	slli	a4,a3,0x2
    800070b0:	000f4637          	lui	a2,0xf4
    800070b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800070b8:	00d70733          	add	a4,a4,a3
    800070bc:	0037979b          	slliw	a5,a5,0x3
    800070c0:	020046b7          	lui	a3,0x2004
    800070c4:	00d787b3          	add	a5,a5,a3
    800070c8:	00c585b3          	add	a1,a1,a2
    800070cc:	00371693          	slli	a3,a4,0x3
    800070d0:	00007717          	auipc	a4,0x7
    800070d4:	a9070713          	addi	a4,a4,-1392 # 8000db60 <timer_scratch>
    800070d8:	00b7b023          	sd	a1,0(a5)
    800070dc:	00d70733          	add	a4,a4,a3
    800070e0:	00f73c23          	sd	a5,24(a4)
    800070e4:	02c73023          	sd	a2,32(a4)
    800070e8:	34071073          	csrw	mscratch,a4
    800070ec:	00000797          	auipc	a5,0x0
    800070f0:	64478793          	addi	a5,a5,1604 # 80007730 <timervec>
    800070f4:	30579073          	csrw	mtvec,a5
    800070f8:	300027f3          	csrr	a5,mstatus
    800070fc:	0087e793          	ori	a5,a5,8
    80007100:	30079073          	csrw	mstatus,a5
    80007104:	304027f3          	csrr	a5,mie
    80007108:	0807e793          	ori	a5,a5,128
    8000710c:	30479073          	csrw	mie,a5
    80007110:	00813403          	ld	s0,8(sp)
    80007114:	01010113          	addi	sp,sp,16
    80007118:	00008067          	ret

000000008000711c <system_main>:
    8000711c:	fe010113          	addi	sp,sp,-32
    80007120:	00813823          	sd	s0,16(sp)
    80007124:	00913423          	sd	s1,8(sp)
    80007128:	00113c23          	sd	ra,24(sp)
    8000712c:	02010413          	addi	s0,sp,32
    80007130:	00000097          	auipc	ra,0x0
    80007134:	0c4080e7          	jalr	196(ra) # 800071f4 <cpuid>
    80007138:	00006497          	auipc	s1,0x6
    8000713c:	9b848493          	addi	s1,s1,-1608 # 8000caf0 <started>
    80007140:	02050263          	beqz	a0,80007164 <system_main+0x48>
    80007144:	0004a783          	lw	a5,0(s1)
    80007148:	0007879b          	sext.w	a5,a5
    8000714c:	fe078ce3          	beqz	a5,80007144 <system_main+0x28>
    80007150:	0ff0000f          	fence
    80007154:	00003517          	auipc	a0,0x3
    80007158:	47450513          	addi	a0,a0,1140 # 8000a5c8 <CONSOLE_STATUS+0x5b8>
    8000715c:	00001097          	auipc	ra,0x1
    80007160:	a70080e7          	jalr	-1424(ra) # 80007bcc <panic>
    80007164:	00001097          	auipc	ra,0x1
    80007168:	9c4080e7          	jalr	-1596(ra) # 80007b28 <consoleinit>
    8000716c:	00001097          	auipc	ra,0x1
    80007170:	150080e7          	jalr	336(ra) # 800082bc <printfinit>
    80007174:	00003517          	auipc	a0,0x3
    80007178:	27c50513          	addi	a0,a0,636 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    8000717c:	00001097          	auipc	ra,0x1
    80007180:	aac080e7          	jalr	-1364(ra) # 80007c28 <__printf>
    80007184:	00003517          	auipc	a0,0x3
    80007188:	41450513          	addi	a0,a0,1044 # 8000a598 <CONSOLE_STATUS+0x588>
    8000718c:	00001097          	auipc	ra,0x1
    80007190:	a9c080e7          	jalr	-1380(ra) # 80007c28 <__printf>
    80007194:	00003517          	auipc	a0,0x3
    80007198:	25c50513          	addi	a0,a0,604 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    8000719c:	00001097          	auipc	ra,0x1
    800071a0:	a8c080e7          	jalr	-1396(ra) # 80007c28 <__printf>
    800071a4:	00001097          	auipc	ra,0x1
    800071a8:	4a4080e7          	jalr	1188(ra) # 80008648 <kinit>
    800071ac:	00000097          	auipc	ra,0x0
    800071b0:	148080e7          	jalr	328(ra) # 800072f4 <trapinit>
    800071b4:	00000097          	auipc	ra,0x0
    800071b8:	16c080e7          	jalr	364(ra) # 80007320 <trapinithart>
    800071bc:	00000097          	auipc	ra,0x0
    800071c0:	5b4080e7          	jalr	1460(ra) # 80007770 <plicinit>
    800071c4:	00000097          	auipc	ra,0x0
    800071c8:	5d4080e7          	jalr	1492(ra) # 80007798 <plicinithart>
    800071cc:	00000097          	auipc	ra,0x0
    800071d0:	078080e7          	jalr	120(ra) # 80007244 <userinit>
    800071d4:	0ff0000f          	fence
    800071d8:	00100793          	li	a5,1
    800071dc:	00003517          	auipc	a0,0x3
    800071e0:	3d450513          	addi	a0,a0,980 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    800071e4:	00f4a023          	sw	a5,0(s1)
    800071e8:	00001097          	auipc	ra,0x1
    800071ec:	a40080e7          	jalr	-1472(ra) # 80007c28 <__printf>
    800071f0:	0000006f          	j	800071f0 <system_main+0xd4>

00000000800071f4 <cpuid>:
    800071f4:	ff010113          	addi	sp,sp,-16
    800071f8:	00813423          	sd	s0,8(sp)
    800071fc:	01010413          	addi	s0,sp,16
    80007200:	00020513          	mv	a0,tp
    80007204:	00813403          	ld	s0,8(sp)
    80007208:	0005051b          	sext.w	a0,a0
    8000720c:	01010113          	addi	sp,sp,16
    80007210:	00008067          	ret

0000000080007214 <mycpu>:
    80007214:	ff010113          	addi	sp,sp,-16
    80007218:	00813423          	sd	s0,8(sp)
    8000721c:	01010413          	addi	s0,sp,16
    80007220:	00020793          	mv	a5,tp
    80007224:	00813403          	ld	s0,8(sp)
    80007228:	0007879b          	sext.w	a5,a5
    8000722c:	00779793          	slli	a5,a5,0x7
    80007230:	00008517          	auipc	a0,0x8
    80007234:	96050513          	addi	a0,a0,-1696 # 8000eb90 <cpus>
    80007238:	00f50533          	add	a0,a0,a5
    8000723c:	01010113          	addi	sp,sp,16
    80007240:	00008067          	ret

0000000080007244 <userinit>:
    80007244:	ff010113          	addi	sp,sp,-16
    80007248:	00813423          	sd	s0,8(sp)
    8000724c:	01010413          	addi	s0,sp,16
    80007250:	00813403          	ld	s0,8(sp)
    80007254:	01010113          	addi	sp,sp,16
    80007258:	ffffb317          	auipc	t1,0xffffb
    8000725c:	c3c30067          	jr	-964(t1) # 80001e94 <main>

0000000080007260 <either_copyout>:
    80007260:	ff010113          	addi	sp,sp,-16
    80007264:	00813023          	sd	s0,0(sp)
    80007268:	00113423          	sd	ra,8(sp)
    8000726c:	01010413          	addi	s0,sp,16
    80007270:	02051663          	bnez	a0,8000729c <either_copyout+0x3c>
    80007274:	00058513          	mv	a0,a1
    80007278:	00060593          	mv	a1,a2
    8000727c:	0006861b          	sext.w	a2,a3
    80007280:	00002097          	auipc	ra,0x2
    80007284:	c54080e7          	jalr	-940(ra) # 80008ed4 <__memmove>
    80007288:	00813083          	ld	ra,8(sp)
    8000728c:	00013403          	ld	s0,0(sp)
    80007290:	00000513          	li	a0,0
    80007294:	01010113          	addi	sp,sp,16
    80007298:	00008067          	ret
    8000729c:	00003517          	auipc	a0,0x3
    800072a0:	35450513          	addi	a0,a0,852 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    800072a4:	00001097          	auipc	ra,0x1
    800072a8:	928080e7          	jalr	-1752(ra) # 80007bcc <panic>

00000000800072ac <either_copyin>:
    800072ac:	ff010113          	addi	sp,sp,-16
    800072b0:	00813023          	sd	s0,0(sp)
    800072b4:	00113423          	sd	ra,8(sp)
    800072b8:	01010413          	addi	s0,sp,16
    800072bc:	02059463          	bnez	a1,800072e4 <either_copyin+0x38>
    800072c0:	00060593          	mv	a1,a2
    800072c4:	0006861b          	sext.w	a2,a3
    800072c8:	00002097          	auipc	ra,0x2
    800072cc:	c0c080e7          	jalr	-1012(ra) # 80008ed4 <__memmove>
    800072d0:	00813083          	ld	ra,8(sp)
    800072d4:	00013403          	ld	s0,0(sp)
    800072d8:	00000513          	li	a0,0
    800072dc:	01010113          	addi	sp,sp,16
    800072e0:	00008067          	ret
    800072e4:	00003517          	auipc	a0,0x3
    800072e8:	33450513          	addi	a0,a0,820 # 8000a618 <CONSOLE_STATUS+0x608>
    800072ec:	00001097          	auipc	ra,0x1
    800072f0:	8e0080e7          	jalr	-1824(ra) # 80007bcc <panic>

00000000800072f4 <trapinit>:
    800072f4:	ff010113          	addi	sp,sp,-16
    800072f8:	00813423          	sd	s0,8(sp)
    800072fc:	01010413          	addi	s0,sp,16
    80007300:	00813403          	ld	s0,8(sp)
    80007304:	00003597          	auipc	a1,0x3
    80007308:	33c58593          	addi	a1,a1,828 # 8000a640 <CONSOLE_STATUS+0x630>
    8000730c:	00008517          	auipc	a0,0x8
    80007310:	90450513          	addi	a0,a0,-1788 # 8000ec10 <tickslock>
    80007314:	01010113          	addi	sp,sp,16
    80007318:	00001317          	auipc	t1,0x1
    8000731c:	5c030067          	jr	1472(t1) # 800088d8 <initlock>

0000000080007320 <trapinithart>:
    80007320:	ff010113          	addi	sp,sp,-16
    80007324:	00813423          	sd	s0,8(sp)
    80007328:	01010413          	addi	s0,sp,16
    8000732c:	00000797          	auipc	a5,0x0
    80007330:	2f478793          	addi	a5,a5,756 # 80007620 <kernelvec>
    80007334:	10579073          	csrw	stvec,a5
    80007338:	00813403          	ld	s0,8(sp)
    8000733c:	01010113          	addi	sp,sp,16
    80007340:	00008067          	ret

0000000080007344 <usertrap>:
    80007344:	ff010113          	addi	sp,sp,-16
    80007348:	00813423          	sd	s0,8(sp)
    8000734c:	01010413          	addi	s0,sp,16
    80007350:	00813403          	ld	s0,8(sp)
    80007354:	01010113          	addi	sp,sp,16
    80007358:	00008067          	ret

000000008000735c <usertrapret>:
    8000735c:	ff010113          	addi	sp,sp,-16
    80007360:	00813423          	sd	s0,8(sp)
    80007364:	01010413          	addi	s0,sp,16
    80007368:	00813403          	ld	s0,8(sp)
    8000736c:	01010113          	addi	sp,sp,16
    80007370:	00008067          	ret

0000000080007374 <kerneltrap>:
    80007374:	fe010113          	addi	sp,sp,-32
    80007378:	00813823          	sd	s0,16(sp)
    8000737c:	00113c23          	sd	ra,24(sp)
    80007380:	00913423          	sd	s1,8(sp)
    80007384:	02010413          	addi	s0,sp,32
    80007388:	142025f3          	csrr	a1,scause
    8000738c:	100027f3          	csrr	a5,sstatus
    80007390:	0027f793          	andi	a5,a5,2
    80007394:	10079c63          	bnez	a5,800074ac <kerneltrap+0x138>
    80007398:	142027f3          	csrr	a5,scause
    8000739c:	0207ce63          	bltz	a5,800073d8 <kerneltrap+0x64>
    800073a0:	00003517          	auipc	a0,0x3
    800073a4:	2e850513          	addi	a0,a0,744 # 8000a688 <CONSOLE_STATUS+0x678>
    800073a8:	00001097          	auipc	ra,0x1
    800073ac:	880080e7          	jalr	-1920(ra) # 80007c28 <__printf>
    800073b0:	141025f3          	csrr	a1,sepc
    800073b4:	14302673          	csrr	a2,stval
    800073b8:	00003517          	auipc	a0,0x3
    800073bc:	2e050513          	addi	a0,a0,736 # 8000a698 <CONSOLE_STATUS+0x688>
    800073c0:	00001097          	auipc	ra,0x1
    800073c4:	868080e7          	jalr	-1944(ra) # 80007c28 <__printf>
    800073c8:	00003517          	auipc	a0,0x3
    800073cc:	2e850513          	addi	a0,a0,744 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    800073d0:	00000097          	auipc	ra,0x0
    800073d4:	7fc080e7          	jalr	2044(ra) # 80007bcc <panic>
    800073d8:	0ff7f713          	andi	a4,a5,255
    800073dc:	00900693          	li	a3,9
    800073e0:	04d70063          	beq	a4,a3,80007420 <kerneltrap+0xac>
    800073e4:	fff00713          	li	a4,-1
    800073e8:	03f71713          	slli	a4,a4,0x3f
    800073ec:	00170713          	addi	a4,a4,1
    800073f0:	fae798e3          	bne	a5,a4,800073a0 <kerneltrap+0x2c>
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	e00080e7          	jalr	-512(ra) # 800071f4 <cpuid>
    800073fc:	06050663          	beqz	a0,80007468 <kerneltrap+0xf4>
    80007400:	144027f3          	csrr	a5,sip
    80007404:	ffd7f793          	andi	a5,a5,-3
    80007408:	14479073          	csrw	sip,a5
    8000740c:	01813083          	ld	ra,24(sp)
    80007410:	01013403          	ld	s0,16(sp)
    80007414:	00813483          	ld	s1,8(sp)
    80007418:	02010113          	addi	sp,sp,32
    8000741c:	00008067          	ret
    80007420:	00000097          	auipc	ra,0x0
    80007424:	3c4080e7          	jalr	964(ra) # 800077e4 <plic_claim>
    80007428:	00a00793          	li	a5,10
    8000742c:	00050493          	mv	s1,a0
    80007430:	06f50863          	beq	a0,a5,800074a0 <kerneltrap+0x12c>
    80007434:	fc050ce3          	beqz	a0,8000740c <kerneltrap+0x98>
    80007438:	00050593          	mv	a1,a0
    8000743c:	00003517          	auipc	a0,0x3
    80007440:	22c50513          	addi	a0,a0,556 # 8000a668 <CONSOLE_STATUS+0x658>
    80007444:	00000097          	auipc	ra,0x0
    80007448:	7e4080e7          	jalr	2020(ra) # 80007c28 <__printf>
    8000744c:	01013403          	ld	s0,16(sp)
    80007450:	01813083          	ld	ra,24(sp)
    80007454:	00048513          	mv	a0,s1
    80007458:	00813483          	ld	s1,8(sp)
    8000745c:	02010113          	addi	sp,sp,32
    80007460:	00000317          	auipc	t1,0x0
    80007464:	3bc30067          	jr	956(t1) # 8000781c <plic_complete>
    80007468:	00007517          	auipc	a0,0x7
    8000746c:	7a850513          	addi	a0,a0,1960 # 8000ec10 <tickslock>
    80007470:	00001097          	auipc	ra,0x1
    80007474:	48c080e7          	jalr	1164(ra) # 800088fc <acquire>
    80007478:	00005717          	auipc	a4,0x5
    8000747c:	67c70713          	addi	a4,a4,1660 # 8000caf4 <ticks>
    80007480:	00072783          	lw	a5,0(a4)
    80007484:	00007517          	auipc	a0,0x7
    80007488:	78c50513          	addi	a0,a0,1932 # 8000ec10 <tickslock>
    8000748c:	0017879b          	addiw	a5,a5,1
    80007490:	00f72023          	sw	a5,0(a4)
    80007494:	00001097          	auipc	ra,0x1
    80007498:	534080e7          	jalr	1332(ra) # 800089c8 <release>
    8000749c:	f65ff06f          	j	80007400 <kerneltrap+0x8c>
    800074a0:	00001097          	auipc	ra,0x1
    800074a4:	090080e7          	jalr	144(ra) # 80008530 <uartintr>
    800074a8:	fa5ff06f          	j	8000744c <kerneltrap+0xd8>
    800074ac:	00003517          	auipc	a0,0x3
    800074b0:	19c50513          	addi	a0,a0,412 # 8000a648 <CONSOLE_STATUS+0x638>
    800074b4:	00000097          	auipc	ra,0x0
    800074b8:	718080e7          	jalr	1816(ra) # 80007bcc <panic>

00000000800074bc <clockintr>:
    800074bc:	fe010113          	addi	sp,sp,-32
    800074c0:	00813823          	sd	s0,16(sp)
    800074c4:	00913423          	sd	s1,8(sp)
    800074c8:	00113c23          	sd	ra,24(sp)
    800074cc:	02010413          	addi	s0,sp,32
    800074d0:	00007497          	auipc	s1,0x7
    800074d4:	74048493          	addi	s1,s1,1856 # 8000ec10 <tickslock>
    800074d8:	00048513          	mv	a0,s1
    800074dc:	00001097          	auipc	ra,0x1
    800074e0:	420080e7          	jalr	1056(ra) # 800088fc <acquire>
    800074e4:	00005717          	auipc	a4,0x5
    800074e8:	61070713          	addi	a4,a4,1552 # 8000caf4 <ticks>
    800074ec:	00072783          	lw	a5,0(a4)
    800074f0:	01013403          	ld	s0,16(sp)
    800074f4:	01813083          	ld	ra,24(sp)
    800074f8:	00048513          	mv	a0,s1
    800074fc:	0017879b          	addiw	a5,a5,1
    80007500:	00813483          	ld	s1,8(sp)
    80007504:	00f72023          	sw	a5,0(a4)
    80007508:	02010113          	addi	sp,sp,32
    8000750c:	00001317          	auipc	t1,0x1
    80007510:	4bc30067          	jr	1212(t1) # 800089c8 <release>

0000000080007514 <devintr>:
    80007514:	142027f3          	csrr	a5,scause
    80007518:	00000513          	li	a0,0
    8000751c:	0007c463          	bltz	a5,80007524 <devintr+0x10>
    80007520:	00008067          	ret
    80007524:	fe010113          	addi	sp,sp,-32
    80007528:	00813823          	sd	s0,16(sp)
    8000752c:	00113c23          	sd	ra,24(sp)
    80007530:	00913423          	sd	s1,8(sp)
    80007534:	02010413          	addi	s0,sp,32
    80007538:	0ff7f713          	andi	a4,a5,255
    8000753c:	00900693          	li	a3,9
    80007540:	04d70c63          	beq	a4,a3,80007598 <devintr+0x84>
    80007544:	fff00713          	li	a4,-1
    80007548:	03f71713          	slli	a4,a4,0x3f
    8000754c:	00170713          	addi	a4,a4,1
    80007550:	00e78c63          	beq	a5,a4,80007568 <devintr+0x54>
    80007554:	01813083          	ld	ra,24(sp)
    80007558:	01013403          	ld	s0,16(sp)
    8000755c:	00813483          	ld	s1,8(sp)
    80007560:	02010113          	addi	sp,sp,32
    80007564:	00008067          	ret
    80007568:	00000097          	auipc	ra,0x0
    8000756c:	c8c080e7          	jalr	-884(ra) # 800071f4 <cpuid>
    80007570:	06050663          	beqz	a0,800075dc <devintr+0xc8>
    80007574:	144027f3          	csrr	a5,sip
    80007578:	ffd7f793          	andi	a5,a5,-3
    8000757c:	14479073          	csrw	sip,a5
    80007580:	01813083          	ld	ra,24(sp)
    80007584:	01013403          	ld	s0,16(sp)
    80007588:	00813483          	ld	s1,8(sp)
    8000758c:	00200513          	li	a0,2
    80007590:	02010113          	addi	sp,sp,32
    80007594:	00008067          	ret
    80007598:	00000097          	auipc	ra,0x0
    8000759c:	24c080e7          	jalr	588(ra) # 800077e4 <plic_claim>
    800075a0:	00a00793          	li	a5,10
    800075a4:	00050493          	mv	s1,a0
    800075a8:	06f50663          	beq	a0,a5,80007614 <devintr+0x100>
    800075ac:	00100513          	li	a0,1
    800075b0:	fa0482e3          	beqz	s1,80007554 <devintr+0x40>
    800075b4:	00048593          	mv	a1,s1
    800075b8:	00003517          	auipc	a0,0x3
    800075bc:	0b050513          	addi	a0,a0,176 # 8000a668 <CONSOLE_STATUS+0x658>
    800075c0:	00000097          	auipc	ra,0x0
    800075c4:	668080e7          	jalr	1640(ra) # 80007c28 <__printf>
    800075c8:	00048513          	mv	a0,s1
    800075cc:	00000097          	auipc	ra,0x0
    800075d0:	250080e7          	jalr	592(ra) # 8000781c <plic_complete>
    800075d4:	00100513          	li	a0,1
    800075d8:	f7dff06f          	j	80007554 <devintr+0x40>
    800075dc:	00007517          	auipc	a0,0x7
    800075e0:	63450513          	addi	a0,a0,1588 # 8000ec10 <tickslock>
    800075e4:	00001097          	auipc	ra,0x1
    800075e8:	318080e7          	jalr	792(ra) # 800088fc <acquire>
    800075ec:	00005717          	auipc	a4,0x5
    800075f0:	50870713          	addi	a4,a4,1288 # 8000caf4 <ticks>
    800075f4:	00072783          	lw	a5,0(a4)
    800075f8:	00007517          	auipc	a0,0x7
    800075fc:	61850513          	addi	a0,a0,1560 # 8000ec10 <tickslock>
    80007600:	0017879b          	addiw	a5,a5,1
    80007604:	00f72023          	sw	a5,0(a4)
    80007608:	00001097          	auipc	ra,0x1
    8000760c:	3c0080e7          	jalr	960(ra) # 800089c8 <release>
    80007610:	f65ff06f          	j	80007574 <devintr+0x60>
    80007614:	00001097          	auipc	ra,0x1
    80007618:	f1c080e7          	jalr	-228(ra) # 80008530 <uartintr>
    8000761c:	fadff06f          	j	800075c8 <devintr+0xb4>

0000000080007620 <kernelvec>:
    80007620:	f0010113          	addi	sp,sp,-256
    80007624:	00113023          	sd	ra,0(sp)
    80007628:	00213423          	sd	sp,8(sp)
    8000762c:	00313823          	sd	gp,16(sp)
    80007630:	00413c23          	sd	tp,24(sp)
    80007634:	02513023          	sd	t0,32(sp)
    80007638:	02613423          	sd	t1,40(sp)
    8000763c:	02713823          	sd	t2,48(sp)
    80007640:	02813c23          	sd	s0,56(sp)
    80007644:	04913023          	sd	s1,64(sp)
    80007648:	04a13423          	sd	a0,72(sp)
    8000764c:	04b13823          	sd	a1,80(sp)
    80007650:	04c13c23          	sd	a2,88(sp)
    80007654:	06d13023          	sd	a3,96(sp)
    80007658:	06e13423          	sd	a4,104(sp)
    8000765c:	06f13823          	sd	a5,112(sp)
    80007660:	07013c23          	sd	a6,120(sp)
    80007664:	09113023          	sd	a7,128(sp)
    80007668:	09213423          	sd	s2,136(sp)
    8000766c:	09313823          	sd	s3,144(sp)
    80007670:	09413c23          	sd	s4,152(sp)
    80007674:	0b513023          	sd	s5,160(sp)
    80007678:	0b613423          	sd	s6,168(sp)
    8000767c:	0b713823          	sd	s7,176(sp)
    80007680:	0b813c23          	sd	s8,184(sp)
    80007684:	0d913023          	sd	s9,192(sp)
    80007688:	0da13423          	sd	s10,200(sp)
    8000768c:	0db13823          	sd	s11,208(sp)
    80007690:	0dc13c23          	sd	t3,216(sp)
    80007694:	0fd13023          	sd	t4,224(sp)
    80007698:	0fe13423          	sd	t5,232(sp)
    8000769c:	0ff13823          	sd	t6,240(sp)
    800076a0:	cd5ff0ef          	jal	ra,80007374 <kerneltrap>
    800076a4:	00013083          	ld	ra,0(sp)
    800076a8:	00813103          	ld	sp,8(sp)
    800076ac:	01013183          	ld	gp,16(sp)
    800076b0:	02013283          	ld	t0,32(sp)
    800076b4:	02813303          	ld	t1,40(sp)
    800076b8:	03013383          	ld	t2,48(sp)
    800076bc:	03813403          	ld	s0,56(sp)
    800076c0:	04013483          	ld	s1,64(sp)
    800076c4:	04813503          	ld	a0,72(sp)
    800076c8:	05013583          	ld	a1,80(sp)
    800076cc:	05813603          	ld	a2,88(sp)
    800076d0:	06013683          	ld	a3,96(sp)
    800076d4:	06813703          	ld	a4,104(sp)
    800076d8:	07013783          	ld	a5,112(sp)
    800076dc:	07813803          	ld	a6,120(sp)
    800076e0:	08013883          	ld	a7,128(sp)
    800076e4:	08813903          	ld	s2,136(sp)
    800076e8:	09013983          	ld	s3,144(sp)
    800076ec:	09813a03          	ld	s4,152(sp)
    800076f0:	0a013a83          	ld	s5,160(sp)
    800076f4:	0a813b03          	ld	s6,168(sp)
    800076f8:	0b013b83          	ld	s7,176(sp)
    800076fc:	0b813c03          	ld	s8,184(sp)
    80007700:	0c013c83          	ld	s9,192(sp)
    80007704:	0c813d03          	ld	s10,200(sp)
    80007708:	0d013d83          	ld	s11,208(sp)
    8000770c:	0d813e03          	ld	t3,216(sp)
    80007710:	0e013e83          	ld	t4,224(sp)
    80007714:	0e813f03          	ld	t5,232(sp)
    80007718:	0f013f83          	ld	t6,240(sp)
    8000771c:	10010113          	addi	sp,sp,256
    80007720:	10200073          	sret
    80007724:	00000013          	nop
    80007728:	00000013          	nop
    8000772c:	00000013          	nop

0000000080007730 <timervec>:
    80007730:	34051573          	csrrw	a0,mscratch,a0
    80007734:	00b53023          	sd	a1,0(a0)
    80007738:	00c53423          	sd	a2,8(a0)
    8000773c:	00d53823          	sd	a3,16(a0)
    80007740:	01853583          	ld	a1,24(a0)
    80007744:	02053603          	ld	a2,32(a0)
    80007748:	0005b683          	ld	a3,0(a1)
    8000774c:	00c686b3          	add	a3,a3,a2
    80007750:	00d5b023          	sd	a3,0(a1)
    80007754:	00200593          	li	a1,2
    80007758:	14459073          	csrw	sip,a1
    8000775c:	01053683          	ld	a3,16(a0)
    80007760:	00853603          	ld	a2,8(a0)
    80007764:	00053583          	ld	a1,0(a0)
    80007768:	34051573          	csrrw	a0,mscratch,a0
    8000776c:	30200073          	mret

0000000080007770 <plicinit>:
    80007770:	ff010113          	addi	sp,sp,-16
    80007774:	00813423          	sd	s0,8(sp)
    80007778:	01010413          	addi	s0,sp,16
    8000777c:	00813403          	ld	s0,8(sp)
    80007780:	0c0007b7          	lui	a5,0xc000
    80007784:	00100713          	li	a4,1
    80007788:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000778c:	00e7a223          	sw	a4,4(a5)
    80007790:	01010113          	addi	sp,sp,16
    80007794:	00008067          	ret

0000000080007798 <plicinithart>:
    80007798:	ff010113          	addi	sp,sp,-16
    8000779c:	00813023          	sd	s0,0(sp)
    800077a0:	00113423          	sd	ra,8(sp)
    800077a4:	01010413          	addi	s0,sp,16
    800077a8:	00000097          	auipc	ra,0x0
    800077ac:	a4c080e7          	jalr	-1460(ra) # 800071f4 <cpuid>
    800077b0:	0085171b          	slliw	a4,a0,0x8
    800077b4:	0c0027b7          	lui	a5,0xc002
    800077b8:	00e787b3          	add	a5,a5,a4
    800077bc:	40200713          	li	a4,1026
    800077c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800077c4:	00813083          	ld	ra,8(sp)
    800077c8:	00013403          	ld	s0,0(sp)
    800077cc:	00d5151b          	slliw	a0,a0,0xd
    800077d0:	0c2017b7          	lui	a5,0xc201
    800077d4:	00a78533          	add	a0,a5,a0
    800077d8:	00052023          	sw	zero,0(a0)
    800077dc:	01010113          	addi	sp,sp,16
    800077e0:	00008067          	ret

00000000800077e4 <plic_claim>:
    800077e4:	ff010113          	addi	sp,sp,-16
    800077e8:	00813023          	sd	s0,0(sp)
    800077ec:	00113423          	sd	ra,8(sp)
    800077f0:	01010413          	addi	s0,sp,16
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	a00080e7          	jalr	-1536(ra) # 800071f4 <cpuid>
    800077fc:	00813083          	ld	ra,8(sp)
    80007800:	00013403          	ld	s0,0(sp)
    80007804:	00d5151b          	slliw	a0,a0,0xd
    80007808:	0c2017b7          	lui	a5,0xc201
    8000780c:	00a78533          	add	a0,a5,a0
    80007810:	00452503          	lw	a0,4(a0)
    80007814:	01010113          	addi	sp,sp,16
    80007818:	00008067          	ret

000000008000781c <plic_complete>:
    8000781c:	fe010113          	addi	sp,sp,-32
    80007820:	00813823          	sd	s0,16(sp)
    80007824:	00913423          	sd	s1,8(sp)
    80007828:	00113c23          	sd	ra,24(sp)
    8000782c:	02010413          	addi	s0,sp,32
    80007830:	00050493          	mv	s1,a0
    80007834:	00000097          	auipc	ra,0x0
    80007838:	9c0080e7          	jalr	-1600(ra) # 800071f4 <cpuid>
    8000783c:	01813083          	ld	ra,24(sp)
    80007840:	01013403          	ld	s0,16(sp)
    80007844:	00d5179b          	slliw	a5,a0,0xd
    80007848:	0c201737          	lui	a4,0xc201
    8000784c:	00f707b3          	add	a5,a4,a5
    80007850:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007854:	00813483          	ld	s1,8(sp)
    80007858:	02010113          	addi	sp,sp,32
    8000785c:	00008067          	ret

0000000080007860 <consolewrite>:
    80007860:	fb010113          	addi	sp,sp,-80
    80007864:	04813023          	sd	s0,64(sp)
    80007868:	04113423          	sd	ra,72(sp)
    8000786c:	02913c23          	sd	s1,56(sp)
    80007870:	03213823          	sd	s2,48(sp)
    80007874:	03313423          	sd	s3,40(sp)
    80007878:	03413023          	sd	s4,32(sp)
    8000787c:	01513c23          	sd	s5,24(sp)
    80007880:	05010413          	addi	s0,sp,80
    80007884:	06c05c63          	blez	a2,800078fc <consolewrite+0x9c>
    80007888:	00060993          	mv	s3,a2
    8000788c:	00050a13          	mv	s4,a0
    80007890:	00058493          	mv	s1,a1
    80007894:	00000913          	li	s2,0
    80007898:	fff00a93          	li	s5,-1
    8000789c:	01c0006f          	j	800078b8 <consolewrite+0x58>
    800078a0:	fbf44503          	lbu	a0,-65(s0)
    800078a4:	0019091b          	addiw	s2,s2,1
    800078a8:	00148493          	addi	s1,s1,1
    800078ac:	00001097          	auipc	ra,0x1
    800078b0:	a9c080e7          	jalr	-1380(ra) # 80008348 <uartputc>
    800078b4:	03298063          	beq	s3,s2,800078d4 <consolewrite+0x74>
    800078b8:	00048613          	mv	a2,s1
    800078bc:	00100693          	li	a3,1
    800078c0:	000a0593          	mv	a1,s4
    800078c4:	fbf40513          	addi	a0,s0,-65
    800078c8:	00000097          	auipc	ra,0x0
    800078cc:	9e4080e7          	jalr	-1564(ra) # 800072ac <either_copyin>
    800078d0:	fd5518e3          	bne	a0,s5,800078a0 <consolewrite+0x40>
    800078d4:	04813083          	ld	ra,72(sp)
    800078d8:	04013403          	ld	s0,64(sp)
    800078dc:	03813483          	ld	s1,56(sp)
    800078e0:	02813983          	ld	s3,40(sp)
    800078e4:	02013a03          	ld	s4,32(sp)
    800078e8:	01813a83          	ld	s5,24(sp)
    800078ec:	00090513          	mv	a0,s2
    800078f0:	03013903          	ld	s2,48(sp)
    800078f4:	05010113          	addi	sp,sp,80
    800078f8:	00008067          	ret
    800078fc:	00000913          	li	s2,0
    80007900:	fd5ff06f          	j	800078d4 <consolewrite+0x74>

0000000080007904 <consoleread>:
    80007904:	f9010113          	addi	sp,sp,-112
    80007908:	06813023          	sd	s0,96(sp)
    8000790c:	04913c23          	sd	s1,88(sp)
    80007910:	05213823          	sd	s2,80(sp)
    80007914:	05313423          	sd	s3,72(sp)
    80007918:	05413023          	sd	s4,64(sp)
    8000791c:	03513c23          	sd	s5,56(sp)
    80007920:	03613823          	sd	s6,48(sp)
    80007924:	03713423          	sd	s7,40(sp)
    80007928:	03813023          	sd	s8,32(sp)
    8000792c:	06113423          	sd	ra,104(sp)
    80007930:	01913c23          	sd	s9,24(sp)
    80007934:	07010413          	addi	s0,sp,112
    80007938:	00060b93          	mv	s7,a2
    8000793c:	00050913          	mv	s2,a0
    80007940:	00058c13          	mv	s8,a1
    80007944:	00060b1b          	sext.w	s6,a2
    80007948:	00007497          	auipc	s1,0x7
    8000794c:	2f048493          	addi	s1,s1,752 # 8000ec38 <cons>
    80007950:	00400993          	li	s3,4
    80007954:	fff00a13          	li	s4,-1
    80007958:	00a00a93          	li	s5,10
    8000795c:	05705e63          	blez	s7,800079b8 <consoleread+0xb4>
    80007960:	09c4a703          	lw	a4,156(s1)
    80007964:	0984a783          	lw	a5,152(s1)
    80007968:	0007071b          	sext.w	a4,a4
    8000796c:	08e78463          	beq	a5,a4,800079f4 <consoleread+0xf0>
    80007970:	07f7f713          	andi	a4,a5,127
    80007974:	00e48733          	add	a4,s1,a4
    80007978:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000797c:	0017869b          	addiw	a3,a5,1
    80007980:	08d4ac23          	sw	a3,152(s1)
    80007984:	00070c9b          	sext.w	s9,a4
    80007988:	0b370663          	beq	a4,s3,80007a34 <consoleread+0x130>
    8000798c:	00100693          	li	a3,1
    80007990:	f9f40613          	addi	a2,s0,-97
    80007994:	000c0593          	mv	a1,s8
    80007998:	00090513          	mv	a0,s2
    8000799c:	f8e40fa3          	sb	a4,-97(s0)
    800079a0:	00000097          	auipc	ra,0x0
    800079a4:	8c0080e7          	jalr	-1856(ra) # 80007260 <either_copyout>
    800079a8:	01450863          	beq	a0,s4,800079b8 <consoleread+0xb4>
    800079ac:	001c0c13          	addi	s8,s8,1
    800079b0:	fffb8b9b          	addiw	s7,s7,-1
    800079b4:	fb5c94e3          	bne	s9,s5,8000795c <consoleread+0x58>
    800079b8:	000b851b          	sext.w	a0,s7
    800079bc:	06813083          	ld	ra,104(sp)
    800079c0:	06013403          	ld	s0,96(sp)
    800079c4:	05813483          	ld	s1,88(sp)
    800079c8:	05013903          	ld	s2,80(sp)
    800079cc:	04813983          	ld	s3,72(sp)
    800079d0:	04013a03          	ld	s4,64(sp)
    800079d4:	03813a83          	ld	s5,56(sp)
    800079d8:	02813b83          	ld	s7,40(sp)
    800079dc:	02013c03          	ld	s8,32(sp)
    800079e0:	01813c83          	ld	s9,24(sp)
    800079e4:	40ab053b          	subw	a0,s6,a0
    800079e8:	03013b03          	ld	s6,48(sp)
    800079ec:	07010113          	addi	sp,sp,112
    800079f0:	00008067          	ret
    800079f4:	00001097          	auipc	ra,0x1
    800079f8:	1d8080e7          	jalr	472(ra) # 80008bcc <push_on>
    800079fc:	0984a703          	lw	a4,152(s1)
    80007a00:	09c4a783          	lw	a5,156(s1)
    80007a04:	0007879b          	sext.w	a5,a5
    80007a08:	fef70ce3          	beq	a4,a5,80007a00 <consoleread+0xfc>
    80007a0c:	00001097          	auipc	ra,0x1
    80007a10:	234080e7          	jalr	564(ra) # 80008c40 <pop_on>
    80007a14:	0984a783          	lw	a5,152(s1)
    80007a18:	07f7f713          	andi	a4,a5,127
    80007a1c:	00e48733          	add	a4,s1,a4
    80007a20:	01874703          	lbu	a4,24(a4)
    80007a24:	0017869b          	addiw	a3,a5,1
    80007a28:	08d4ac23          	sw	a3,152(s1)
    80007a2c:	00070c9b          	sext.w	s9,a4
    80007a30:	f5371ee3          	bne	a4,s3,8000798c <consoleread+0x88>
    80007a34:	000b851b          	sext.w	a0,s7
    80007a38:	f96bf2e3          	bgeu	s7,s6,800079bc <consoleread+0xb8>
    80007a3c:	08f4ac23          	sw	a5,152(s1)
    80007a40:	f7dff06f          	j	800079bc <consoleread+0xb8>

0000000080007a44 <consputc>:
    80007a44:	10000793          	li	a5,256
    80007a48:	00f50663          	beq	a0,a5,80007a54 <consputc+0x10>
    80007a4c:	00001317          	auipc	t1,0x1
    80007a50:	9f430067          	jr	-1548(t1) # 80008440 <uartputc_sync>
    80007a54:	ff010113          	addi	sp,sp,-16
    80007a58:	00113423          	sd	ra,8(sp)
    80007a5c:	00813023          	sd	s0,0(sp)
    80007a60:	01010413          	addi	s0,sp,16
    80007a64:	00800513          	li	a0,8
    80007a68:	00001097          	auipc	ra,0x1
    80007a6c:	9d8080e7          	jalr	-1576(ra) # 80008440 <uartputc_sync>
    80007a70:	02000513          	li	a0,32
    80007a74:	00001097          	auipc	ra,0x1
    80007a78:	9cc080e7          	jalr	-1588(ra) # 80008440 <uartputc_sync>
    80007a7c:	00013403          	ld	s0,0(sp)
    80007a80:	00813083          	ld	ra,8(sp)
    80007a84:	00800513          	li	a0,8
    80007a88:	01010113          	addi	sp,sp,16
    80007a8c:	00001317          	auipc	t1,0x1
    80007a90:	9b430067          	jr	-1612(t1) # 80008440 <uartputc_sync>

0000000080007a94 <consoleintr>:
    80007a94:	fe010113          	addi	sp,sp,-32
    80007a98:	00813823          	sd	s0,16(sp)
    80007a9c:	00913423          	sd	s1,8(sp)
    80007aa0:	01213023          	sd	s2,0(sp)
    80007aa4:	00113c23          	sd	ra,24(sp)
    80007aa8:	02010413          	addi	s0,sp,32
    80007aac:	00007917          	auipc	s2,0x7
    80007ab0:	18c90913          	addi	s2,s2,396 # 8000ec38 <cons>
    80007ab4:	00050493          	mv	s1,a0
    80007ab8:	00090513          	mv	a0,s2
    80007abc:	00001097          	auipc	ra,0x1
    80007ac0:	e40080e7          	jalr	-448(ra) # 800088fc <acquire>
    80007ac4:	02048c63          	beqz	s1,80007afc <consoleintr+0x68>
    80007ac8:	0a092783          	lw	a5,160(s2)
    80007acc:	09892703          	lw	a4,152(s2)
    80007ad0:	07f00693          	li	a3,127
    80007ad4:	40e7873b          	subw	a4,a5,a4
    80007ad8:	02e6e263          	bltu	a3,a4,80007afc <consoleintr+0x68>
    80007adc:	00d00713          	li	a4,13
    80007ae0:	04e48063          	beq	s1,a4,80007b20 <consoleintr+0x8c>
    80007ae4:	07f7f713          	andi	a4,a5,127
    80007ae8:	00e90733          	add	a4,s2,a4
    80007aec:	0017879b          	addiw	a5,a5,1
    80007af0:	0af92023          	sw	a5,160(s2)
    80007af4:	00970c23          	sb	s1,24(a4)
    80007af8:	08f92e23          	sw	a5,156(s2)
    80007afc:	01013403          	ld	s0,16(sp)
    80007b00:	01813083          	ld	ra,24(sp)
    80007b04:	00813483          	ld	s1,8(sp)
    80007b08:	00013903          	ld	s2,0(sp)
    80007b0c:	00007517          	auipc	a0,0x7
    80007b10:	12c50513          	addi	a0,a0,300 # 8000ec38 <cons>
    80007b14:	02010113          	addi	sp,sp,32
    80007b18:	00001317          	auipc	t1,0x1
    80007b1c:	eb030067          	jr	-336(t1) # 800089c8 <release>
    80007b20:	00a00493          	li	s1,10
    80007b24:	fc1ff06f          	j	80007ae4 <consoleintr+0x50>

0000000080007b28 <consoleinit>:
    80007b28:	fe010113          	addi	sp,sp,-32
    80007b2c:	00113c23          	sd	ra,24(sp)
    80007b30:	00813823          	sd	s0,16(sp)
    80007b34:	00913423          	sd	s1,8(sp)
    80007b38:	02010413          	addi	s0,sp,32
    80007b3c:	00007497          	auipc	s1,0x7
    80007b40:	0fc48493          	addi	s1,s1,252 # 8000ec38 <cons>
    80007b44:	00048513          	mv	a0,s1
    80007b48:	00003597          	auipc	a1,0x3
    80007b4c:	b7858593          	addi	a1,a1,-1160 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    80007b50:	00001097          	auipc	ra,0x1
    80007b54:	d88080e7          	jalr	-632(ra) # 800088d8 <initlock>
    80007b58:	00000097          	auipc	ra,0x0
    80007b5c:	7ac080e7          	jalr	1964(ra) # 80008304 <uartinit>
    80007b60:	01813083          	ld	ra,24(sp)
    80007b64:	01013403          	ld	s0,16(sp)
    80007b68:	00000797          	auipc	a5,0x0
    80007b6c:	d9c78793          	addi	a5,a5,-612 # 80007904 <consoleread>
    80007b70:	0af4bc23          	sd	a5,184(s1)
    80007b74:	00000797          	auipc	a5,0x0
    80007b78:	cec78793          	addi	a5,a5,-788 # 80007860 <consolewrite>
    80007b7c:	0cf4b023          	sd	a5,192(s1)
    80007b80:	00813483          	ld	s1,8(sp)
    80007b84:	02010113          	addi	sp,sp,32
    80007b88:	00008067          	ret

0000000080007b8c <console_read>:
    80007b8c:	ff010113          	addi	sp,sp,-16
    80007b90:	00813423          	sd	s0,8(sp)
    80007b94:	01010413          	addi	s0,sp,16
    80007b98:	00813403          	ld	s0,8(sp)
    80007b9c:	00007317          	auipc	t1,0x7
    80007ba0:	15433303          	ld	t1,340(t1) # 8000ecf0 <devsw+0x10>
    80007ba4:	01010113          	addi	sp,sp,16
    80007ba8:	00030067          	jr	t1

0000000080007bac <console_write>:
    80007bac:	ff010113          	addi	sp,sp,-16
    80007bb0:	00813423          	sd	s0,8(sp)
    80007bb4:	01010413          	addi	s0,sp,16
    80007bb8:	00813403          	ld	s0,8(sp)
    80007bbc:	00007317          	auipc	t1,0x7
    80007bc0:	13c33303          	ld	t1,316(t1) # 8000ecf8 <devsw+0x18>
    80007bc4:	01010113          	addi	sp,sp,16
    80007bc8:	00030067          	jr	t1

0000000080007bcc <panic>:
    80007bcc:	fe010113          	addi	sp,sp,-32
    80007bd0:	00113c23          	sd	ra,24(sp)
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00913423          	sd	s1,8(sp)
    80007bdc:	02010413          	addi	s0,sp,32
    80007be0:	00050493          	mv	s1,a0
    80007be4:	00003517          	auipc	a0,0x3
    80007be8:	ae450513          	addi	a0,a0,-1308 # 8000a6c8 <CONSOLE_STATUS+0x6b8>
    80007bec:	00007797          	auipc	a5,0x7
    80007bf0:	1a07a623          	sw	zero,428(a5) # 8000ed98 <pr+0x18>
    80007bf4:	00000097          	auipc	ra,0x0
    80007bf8:	034080e7          	jalr	52(ra) # 80007c28 <__printf>
    80007bfc:	00048513          	mv	a0,s1
    80007c00:	00000097          	auipc	ra,0x0
    80007c04:	028080e7          	jalr	40(ra) # 80007c28 <__printf>
    80007c08:	00002517          	auipc	a0,0x2
    80007c0c:	7e850513          	addi	a0,a0,2024 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    80007c10:	00000097          	auipc	ra,0x0
    80007c14:	018080e7          	jalr	24(ra) # 80007c28 <__printf>
    80007c18:	00100793          	li	a5,1
    80007c1c:	00005717          	auipc	a4,0x5
    80007c20:	ecf72e23          	sw	a5,-292(a4) # 8000caf8 <panicked>
    80007c24:	0000006f          	j	80007c24 <panic+0x58>

0000000080007c28 <__printf>:
    80007c28:	f3010113          	addi	sp,sp,-208
    80007c2c:	08813023          	sd	s0,128(sp)
    80007c30:	07313423          	sd	s3,104(sp)
    80007c34:	09010413          	addi	s0,sp,144
    80007c38:	05813023          	sd	s8,64(sp)
    80007c3c:	08113423          	sd	ra,136(sp)
    80007c40:	06913c23          	sd	s1,120(sp)
    80007c44:	07213823          	sd	s2,112(sp)
    80007c48:	07413023          	sd	s4,96(sp)
    80007c4c:	05513c23          	sd	s5,88(sp)
    80007c50:	05613823          	sd	s6,80(sp)
    80007c54:	05713423          	sd	s7,72(sp)
    80007c58:	03913c23          	sd	s9,56(sp)
    80007c5c:	03a13823          	sd	s10,48(sp)
    80007c60:	03b13423          	sd	s11,40(sp)
    80007c64:	00007317          	auipc	t1,0x7
    80007c68:	11c30313          	addi	t1,t1,284 # 8000ed80 <pr>
    80007c6c:	01832c03          	lw	s8,24(t1)
    80007c70:	00b43423          	sd	a1,8(s0)
    80007c74:	00c43823          	sd	a2,16(s0)
    80007c78:	00d43c23          	sd	a3,24(s0)
    80007c7c:	02e43023          	sd	a4,32(s0)
    80007c80:	02f43423          	sd	a5,40(s0)
    80007c84:	03043823          	sd	a6,48(s0)
    80007c88:	03143c23          	sd	a7,56(s0)
    80007c8c:	00050993          	mv	s3,a0
    80007c90:	4a0c1663          	bnez	s8,8000813c <__printf+0x514>
    80007c94:	60098c63          	beqz	s3,800082ac <__printf+0x684>
    80007c98:	0009c503          	lbu	a0,0(s3)
    80007c9c:	00840793          	addi	a5,s0,8
    80007ca0:	f6f43c23          	sd	a5,-136(s0)
    80007ca4:	00000493          	li	s1,0
    80007ca8:	22050063          	beqz	a0,80007ec8 <__printf+0x2a0>
    80007cac:	00002a37          	lui	s4,0x2
    80007cb0:	00018ab7          	lui	s5,0x18
    80007cb4:	000f4b37          	lui	s6,0xf4
    80007cb8:	00989bb7          	lui	s7,0x989
    80007cbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007cc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007cc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007cc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007ccc:	00148c9b          	addiw	s9,s1,1
    80007cd0:	02500793          	li	a5,37
    80007cd4:	01998933          	add	s2,s3,s9
    80007cd8:	38f51263          	bne	a0,a5,8000805c <__printf+0x434>
    80007cdc:	00094783          	lbu	a5,0(s2)
    80007ce0:	00078c9b          	sext.w	s9,a5
    80007ce4:	1e078263          	beqz	a5,80007ec8 <__printf+0x2a0>
    80007ce8:	0024849b          	addiw	s1,s1,2
    80007cec:	07000713          	li	a4,112
    80007cf0:	00998933          	add	s2,s3,s1
    80007cf4:	38e78a63          	beq	a5,a4,80008088 <__printf+0x460>
    80007cf8:	20f76863          	bltu	a4,a5,80007f08 <__printf+0x2e0>
    80007cfc:	42a78863          	beq	a5,a0,8000812c <__printf+0x504>
    80007d00:	06400713          	li	a4,100
    80007d04:	40e79663          	bne	a5,a4,80008110 <__printf+0x4e8>
    80007d08:	f7843783          	ld	a5,-136(s0)
    80007d0c:	0007a603          	lw	a2,0(a5)
    80007d10:	00878793          	addi	a5,a5,8
    80007d14:	f6f43c23          	sd	a5,-136(s0)
    80007d18:	42064a63          	bltz	a2,8000814c <__printf+0x524>
    80007d1c:	00a00713          	li	a4,10
    80007d20:	02e677bb          	remuw	a5,a2,a4
    80007d24:	00003d97          	auipc	s11,0x3
    80007d28:	9ccd8d93          	addi	s11,s11,-1588 # 8000a6f0 <digits>
    80007d2c:	00900593          	li	a1,9
    80007d30:	0006051b          	sext.w	a0,a2
    80007d34:	00000c93          	li	s9,0
    80007d38:	02079793          	slli	a5,a5,0x20
    80007d3c:	0207d793          	srli	a5,a5,0x20
    80007d40:	00fd87b3          	add	a5,s11,a5
    80007d44:	0007c783          	lbu	a5,0(a5)
    80007d48:	02e656bb          	divuw	a3,a2,a4
    80007d4c:	f8f40023          	sb	a5,-128(s0)
    80007d50:	14c5d863          	bge	a1,a2,80007ea0 <__printf+0x278>
    80007d54:	06300593          	li	a1,99
    80007d58:	00100c93          	li	s9,1
    80007d5c:	02e6f7bb          	remuw	a5,a3,a4
    80007d60:	02079793          	slli	a5,a5,0x20
    80007d64:	0207d793          	srli	a5,a5,0x20
    80007d68:	00fd87b3          	add	a5,s11,a5
    80007d6c:	0007c783          	lbu	a5,0(a5)
    80007d70:	02e6d73b          	divuw	a4,a3,a4
    80007d74:	f8f400a3          	sb	a5,-127(s0)
    80007d78:	12a5f463          	bgeu	a1,a0,80007ea0 <__printf+0x278>
    80007d7c:	00a00693          	li	a3,10
    80007d80:	00900593          	li	a1,9
    80007d84:	02d777bb          	remuw	a5,a4,a3
    80007d88:	02079793          	slli	a5,a5,0x20
    80007d8c:	0207d793          	srli	a5,a5,0x20
    80007d90:	00fd87b3          	add	a5,s11,a5
    80007d94:	0007c503          	lbu	a0,0(a5)
    80007d98:	02d757bb          	divuw	a5,a4,a3
    80007d9c:	f8a40123          	sb	a0,-126(s0)
    80007da0:	48e5f263          	bgeu	a1,a4,80008224 <__printf+0x5fc>
    80007da4:	06300513          	li	a0,99
    80007da8:	02d7f5bb          	remuw	a1,a5,a3
    80007dac:	02059593          	slli	a1,a1,0x20
    80007db0:	0205d593          	srli	a1,a1,0x20
    80007db4:	00bd85b3          	add	a1,s11,a1
    80007db8:	0005c583          	lbu	a1,0(a1)
    80007dbc:	02d7d7bb          	divuw	a5,a5,a3
    80007dc0:	f8b401a3          	sb	a1,-125(s0)
    80007dc4:	48e57263          	bgeu	a0,a4,80008248 <__printf+0x620>
    80007dc8:	3e700513          	li	a0,999
    80007dcc:	02d7f5bb          	remuw	a1,a5,a3
    80007dd0:	02059593          	slli	a1,a1,0x20
    80007dd4:	0205d593          	srli	a1,a1,0x20
    80007dd8:	00bd85b3          	add	a1,s11,a1
    80007ddc:	0005c583          	lbu	a1,0(a1)
    80007de0:	02d7d7bb          	divuw	a5,a5,a3
    80007de4:	f8b40223          	sb	a1,-124(s0)
    80007de8:	46e57663          	bgeu	a0,a4,80008254 <__printf+0x62c>
    80007dec:	02d7f5bb          	remuw	a1,a5,a3
    80007df0:	02059593          	slli	a1,a1,0x20
    80007df4:	0205d593          	srli	a1,a1,0x20
    80007df8:	00bd85b3          	add	a1,s11,a1
    80007dfc:	0005c583          	lbu	a1,0(a1)
    80007e00:	02d7d7bb          	divuw	a5,a5,a3
    80007e04:	f8b402a3          	sb	a1,-123(s0)
    80007e08:	46ea7863          	bgeu	s4,a4,80008278 <__printf+0x650>
    80007e0c:	02d7f5bb          	remuw	a1,a5,a3
    80007e10:	02059593          	slli	a1,a1,0x20
    80007e14:	0205d593          	srli	a1,a1,0x20
    80007e18:	00bd85b3          	add	a1,s11,a1
    80007e1c:	0005c583          	lbu	a1,0(a1)
    80007e20:	02d7d7bb          	divuw	a5,a5,a3
    80007e24:	f8b40323          	sb	a1,-122(s0)
    80007e28:	3eeaf863          	bgeu	s5,a4,80008218 <__printf+0x5f0>
    80007e2c:	02d7f5bb          	remuw	a1,a5,a3
    80007e30:	02059593          	slli	a1,a1,0x20
    80007e34:	0205d593          	srli	a1,a1,0x20
    80007e38:	00bd85b3          	add	a1,s11,a1
    80007e3c:	0005c583          	lbu	a1,0(a1)
    80007e40:	02d7d7bb          	divuw	a5,a5,a3
    80007e44:	f8b403a3          	sb	a1,-121(s0)
    80007e48:	42eb7e63          	bgeu	s6,a4,80008284 <__printf+0x65c>
    80007e4c:	02d7f5bb          	remuw	a1,a5,a3
    80007e50:	02059593          	slli	a1,a1,0x20
    80007e54:	0205d593          	srli	a1,a1,0x20
    80007e58:	00bd85b3          	add	a1,s11,a1
    80007e5c:	0005c583          	lbu	a1,0(a1)
    80007e60:	02d7d7bb          	divuw	a5,a5,a3
    80007e64:	f8b40423          	sb	a1,-120(s0)
    80007e68:	42ebfc63          	bgeu	s7,a4,800082a0 <__printf+0x678>
    80007e6c:	02079793          	slli	a5,a5,0x20
    80007e70:	0207d793          	srli	a5,a5,0x20
    80007e74:	00fd8db3          	add	s11,s11,a5
    80007e78:	000dc703          	lbu	a4,0(s11)
    80007e7c:	00a00793          	li	a5,10
    80007e80:	00900c93          	li	s9,9
    80007e84:	f8e404a3          	sb	a4,-119(s0)
    80007e88:	00065c63          	bgez	a2,80007ea0 <__printf+0x278>
    80007e8c:	f9040713          	addi	a4,s0,-112
    80007e90:	00f70733          	add	a4,a4,a5
    80007e94:	02d00693          	li	a3,45
    80007e98:	fed70823          	sb	a3,-16(a4)
    80007e9c:	00078c93          	mv	s9,a5
    80007ea0:	f8040793          	addi	a5,s0,-128
    80007ea4:	01978cb3          	add	s9,a5,s9
    80007ea8:	f7f40d13          	addi	s10,s0,-129
    80007eac:	000cc503          	lbu	a0,0(s9)
    80007eb0:	fffc8c93          	addi	s9,s9,-1
    80007eb4:	00000097          	auipc	ra,0x0
    80007eb8:	b90080e7          	jalr	-1136(ra) # 80007a44 <consputc>
    80007ebc:	ffac98e3          	bne	s9,s10,80007eac <__printf+0x284>
    80007ec0:	00094503          	lbu	a0,0(s2)
    80007ec4:	e00514e3          	bnez	a0,80007ccc <__printf+0xa4>
    80007ec8:	1a0c1663          	bnez	s8,80008074 <__printf+0x44c>
    80007ecc:	08813083          	ld	ra,136(sp)
    80007ed0:	08013403          	ld	s0,128(sp)
    80007ed4:	07813483          	ld	s1,120(sp)
    80007ed8:	07013903          	ld	s2,112(sp)
    80007edc:	06813983          	ld	s3,104(sp)
    80007ee0:	06013a03          	ld	s4,96(sp)
    80007ee4:	05813a83          	ld	s5,88(sp)
    80007ee8:	05013b03          	ld	s6,80(sp)
    80007eec:	04813b83          	ld	s7,72(sp)
    80007ef0:	04013c03          	ld	s8,64(sp)
    80007ef4:	03813c83          	ld	s9,56(sp)
    80007ef8:	03013d03          	ld	s10,48(sp)
    80007efc:	02813d83          	ld	s11,40(sp)
    80007f00:	0d010113          	addi	sp,sp,208
    80007f04:	00008067          	ret
    80007f08:	07300713          	li	a4,115
    80007f0c:	1ce78a63          	beq	a5,a4,800080e0 <__printf+0x4b8>
    80007f10:	07800713          	li	a4,120
    80007f14:	1ee79e63          	bne	a5,a4,80008110 <__printf+0x4e8>
    80007f18:	f7843783          	ld	a5,-136(s0)
    80007f1c:	0007a703          	lw	a4,0(a5)
    80007f20:	00878793          	addi	a5,a5,8
    80007f24:	f6f43c23          	sd	a5,-136(s0)
    80007f28:	28074263          	bltz	a4,800081ac <__printf+0x584>
    80007f2c:	00002d97          	auipc	s11,0x2
    80007f30:	7c4d8d93          	addi	s11,s11,1988 # 8000a6f0 <digits>
    80007f34:	00f77793          	andi	a5,a4,15
    80007f38:	00fd87b3          	add	a5,s11,a5
    80007f3c:	0007c683          	lbu	a3,0(a5)
    80007f40:	00f00613          	li	a2,15
    80007f44:	0007079b          	sext.w	a5,a4
    80007f48:	f8d40023          	sb	a3,-128(s0)
    80007f4c:	0047559b          	srliw	a1,a4,0x4
    80007f50:	0047569b          	srliw	a3,a4,0x4
    80007f54:	00000c93          	li	s9,0
    80007f58:	0ee65063          	bge	a2,a4,80008038 <__printf+0x410>
    80007f5c:	00f6f693          	andi	a3,a3,15
    80007f60:	00dd86b3          	add	a3,s11,a3
    80007f64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007f68:	0087d79b          	srliw	a5,a5,0x8
    80007f6c:	00100c93          	li	s9,1
    80007f70:	f8d400a3          	sb	a3,-127(s0)
    80007f74:	0cb67263          	bgeu	a2,a1,80008038 <__printf+0x410>
    80007f78:	00f7f693          	andi	a3,a5,15
    80007f7c:	00dd86b3          	add	a3,s11,a3
    80007f80:	0006c583          	lbu	a1,0(a3)
    80007f84:	00f00613          	li	a2,15
    80007f88:	0047d69b          	srliw	a3,a5,0x4
    80007f8c:	f8b40123          	sb	a1,-126(s0)
    80007f90:	0047d593          	srli	a1,a5,0x4
    80007f94:	28f67e63          	bgeu	a2,a5,80008230 <__printf+0x608>
    80007f98:	00f6f693          	andi	a3,a3,15
    80007f9c:	00dd86b3          	add	a3,s11,a3
    80007fa0:	0006c503          	lbu	a0,0(a3)
    80007fa4:	0087d813          	srli	a6,a5,0x8
    80007fa8:	0087d69b          	srliw	a3,a5,0x8
    80007fac:	f8a401a3          	sb	a0,-125(s0)
    80007fb0:	28b67663          	bgeu	a2,a1,8000823c <__printf+0x614>
    80007fb4:	00f6f693          	andi	a3,a3,15
    80007fb8:	00dd86b3          	add	a3,s11,a3
    80007fbc:	0006c583          	lbu	a1,0(a3)
    80007fc0:	00c7d513          	srli	a0,a5,0xc
    80007fc4:	00c7d69b          	srliw	a3,a5,0xc
    80007fc8:	f8b40223          	sb	a1,-124(s0)
    80007fcc:	29067a63          	bgeu	a2,a6,80008260 <__printf+0x638>
    80007fd0:	00f6f693          	andi	a3,a3,15
    80007fd4:	00dd86b3          	add	a3,s11,a3
    80007fd8:	0006c583          	lbu	a1,0(a3)
    80007fdc:	0107d813          	srli	a6,a5,0x10
    80007fe0:	0107d69b          	srliw	a3,a5,0x10
    80007fe4:	f8b402a3          	sb	a1,-123(s0)
    80007fe8:	28a67263          	bgeu	a2,a0,8000826c <__printf+0x644>
    80007fec:	00f6f693          	andi	a3,a3,15
    80007ff0:	00dd86b3          	add	a3,s11,a3
    80007ff4:	0006c683          	lbu	a3,0(a3)
    80007ff8:	0147d79b          	srliw	a5,a5,0x14
    80007ffc:	f8d40323          	sb	a3,-122(s0)
    80008000:	21067663          	bgeu	a2,a6,8000820c <__printf+0x5e4>
    80008004:	02079793          	slli	a5,a5,0x20
    80008008:	0207d793          	srli	a5,a5,0x20
    8000800c:	00fd8db3          	add	s11,s11,a5
    80008010:	000dc683          	lbu	a3,0(s11)
    80008014:	00800793          	li	a5,8
    80008018:	00700c93          	li	s9,7
    8000801c:	f8d403a3          	sb	a3,-121(s0)
    80008020:	00075c63          	bgez	a4,80008038 <__printf+0x410>
    80008024:	f9040713          	addi	a4,s0,-112
    80008028:	00f70733          	add	a4,a4,a5
    8000802c:	02d00693          	li	a3,45
    80008030:	fed70823          	sb	a3,-16(a4)
    80008034:	00078c93          	mv	s9,a5
    80008038:	f8040793          	addi	a5,s0,-128
    8000803c:	01978cb3          	add	s9,a5,s9
    80008040:	f7f40d13          	addi	s10,s0,-129
    80008044:	000cc503          	lbu	a0,0(s9)
    80008048:	fffc8c93          	addi	s9,s9,-1
    8000804c:	00000097          	auipc	ra,0x0
    80008050:	9f8080e7          	jalr	-1544(ra) # 80007a44 <consputc>
    80008054:	ff9d18e3          	bne	s10,s9,80008044 <__printf+0x41c>
    80008058:	0100006f          	j	80008068 <__printf+0x440>
    8000805c:	00000097          	auipc	ra,0x0
    80008060:	9e8080e7          	jalr	-1560(ra) # 80007a44 <consputc>
    80008064:	000c8493          	mv	s1,s9
    80008068:	00094503          	lbu	a0,0(s2)
    8000806c:	c60510e3          	bnez	a0,80007ccc <__printf+0xa4>
    80008070:	e40c0ee3          	beqz	s8,80007ecc <__printf+0x2a4>
    80008074:	00007517          	auipc	a0,0x7
    80008078:	d0c50513          	addi	a0,a0,-756 # 8000ed80 <pr>
    8000807c:	00001097          	auipc	ra,0x1
    80008080:	94c080e7          	jalr	-1716(ra) # 800089c8 <release>
    80008084:	e49ff06f          	j	80007ecc <__printf+0x2a4>
    80008088:	f7843783          	ld	a5,-136(s0)
    8000808c:	03000513          	li	a0,48
    80008090:	01000d13          	li	s10,16
    80008094:	00878713          	addi	a4,a5,8
    80008098:	0007bc83          	ld	s9,0(a5)
    8000809c:	f6e43c23          	sd	a4,-136(s0)
    800080a0:	00000097          	auipc	ra,0x0
    800080a4:	9a4080e7          	jalr	-1628(ra) # 80007a44 <consputc>
    800080a8:	07800513          	li	a0,120
    800080ac:	00000097          	auipc	ra,0x0
    800080b0:	998080e7          	jalr	-1640(ra) # 80007a44 <consputc>
    800080b4:	00002d97          	auipc	s11,0x2
    800080b8:	63cd8d93          	addi	s11,s11,1596 # 8000a6f0 <digits>
    800080bc:	03ccd793          	srli	a5,s9,0x3c
    800080c0:	00fd87b3          	add	a5,s11,a5
    800080c4:	0007c503          	lbu	a0,0(a5)
    800080c8:	fffd0d1b          	addiw	s10,s10,-1
    800080cc:	004c9c93          	slli	s9,s9,0x4
    800080d0:	00000097          	auipc	ra,0x0
    800080d4:	974080e7          	jalr	-1676(ra) # 80007a44 <consputc>
    800080d8:	fe0d12e3          	bnez	s10,800080bc <__printf+0x494>
    800080dc:	f8dff06f          	j	80008068 <__printf+0x440>
    800080e0:	f7843783          	ld	a5,-136(s0)
    800080e4:	0007bc83          	ld	s9,0(a5)
    800080e8:	00878793          	addi	a5,a5,8
    800080ec:	f6f43c23          	sd	a5,-136(s0)
    800080f0:	000c9a63          	bnez	s9,80008104 <__printf+0x4dc>
    800080f4:	1080006f          	j	800081fc <__printf+0x5d4>
    800080f8:	001c8c93          	addi	s9,s9,1
    800080fc:	00000097          	auipc	ra,0x0
    80008100:	948080e7          	jalr	-1720(ra) # 80007a44 <consputc>
    80008104:	000cc503          	lbu	a0,0(s9)
    80008108:	fe0518e3          	bnez	a0,800080f8 <__printf+0x4d0>
    8000810c:	f5dff06f          	j	80008068 <__printf+0x440>
    80008110:	02500513          	li	a0,37
    80008114:	00000097          	auipc	ra,0x0
    80008118:	930080e7          	jalr	-1744(ra) # 80007a44 <consputc>
    8000811c:	000c8513          	mv	a0,s9
    80008120:	00000097          	auipc	ra,0x0
    80008124:	924080e7          	jalr	-1756(ra) # 80007a44 <consputc>
    80008128:	f41ff06f          	j	80008068 <__printf+0x440>
    8000812c:	02500513          	li	a0,37
    80008130:	00000097          	auipc	ra,0x0
    80008134:	914080e7          	jalr	-1772(ra) # 80007a44 <consputc>
    80008138:	f31ff06f          	j	80008068 <__printf+0x440>
    8000813c:	00030513          	mv	a0,t1
    80008140:	00000097          	auipc	ra,0x0
    80008144:	7bc080e7          	jalr	1980(ra) # 800088fc <acquire>
    80008148:	b4dff06f          	j	80007c94 <__printf+0x6c>
    8000814c:	40c0053b          	negw	a0,a2
    80008150:	00a00713          	li	a4,10
    80008154:	02e576bb          	remuw	a3,a0,a4
    80008158:	00002d97          	auipc	s11,0x2
    8000815c:	598d8d93          	addi	s11,s11,1432 # 8000a6f0 <digits>
    80008160:	ff700593          	li	a1,-9
    80008164:	02069693          	slli	a3,a3,0x20
    80008168:	0206d693          	srli	a3,a3,0x20
    8000816c:	00dd86b3          	add	a3,s11,a3
    80008170:	0006c683          	lbu	a3,0(a3)
    80008174:	02e557bb          	divuw	a5,a0,a4
    80008178:	f8d40023          	sb	a3,-128(s0)
    8000817c:	10b65e63          	bge	a2,a1,80008298 <__printf+0x670>
    80008180:	06300593          	li	a1,99
    80008184:	02e7f6bb          	remuw	a3,a5,a4
    80008188:	02069693          	slli	a3,a3,0x20
    8000818c:	0206d693          	srli	a3,a3,0x20
    80008190:	00dd86b3          	add	a3,s11,a3
    80008194:	0006c683          	lbu	a3,0(a3)
    80008198:	02e7d73b          	divuw	a4,a5,a4
    8000819c:	00200793          	li	a5,2
    800081a0:	f8d400a3          	sb	a3,-127(s0)
    800081a4:	bca5ece3          	bltu	a1,a0,80007d7c <__printf+0x154>
    800081a8:	ce5ff06f          	j	80007e8c <__printf+0x264>
    800081ac:	40e007bb          	negw	a5,a4
    800081b0:	00002d97          	auipc	s11,0x2
    800081b4:	540d8d93          	addi	s11,s11,1344 # 8000a6f0 <digits>
    800081b8:	00f7f693          	andi	a3,a5,15
    800081bc:	00dd86b3          	add	a3,s11,a3
    800081c0:	0006c583          	lbu	a1,0(a3)
    800081c4:	ff100613          	li	a2,-15
    800081c8:	0047d69b          	srliw	a3,a5,0x4
    800081cc:	f8b40023          	sb	a1,-128(s0)
    800081d0:	0047d59b          	srliw	a1,a5,0x4
    800081d4:	0ac75e63          	bge	a4,a2,80008290 <__printf+0x668>
    800081d8:	00f6f693          	andi	a3,a3,15
    800081dc:	00dd86b3          	add	a3,s11,a3
    800081e0:	0006c603          	lbu	a2,0(a3)
    800081e4:	00f00693          	li	a3,15
    800081e8:	0087d79b          	srliw	a5,a5,0x8
    800081ec:	f8c400a3          	sb	a2,-127(s0)
    800081f0:	d8b6e4e3          	bltu	a3,a1,80007f78 <__printf+0x350>
    800081f4:	00200793          	li	a5,2
    800081f8:	e2dff06f          	j	80008024 <__printf+0x3fc>
    800081fc:	00002c97          	auipc	s9,0x2
    80008200:	4d4c8c93          	addi	s9,s9,1236 # 8000a6d0 <CONSOLE_STATUS+0x6c0>
    80008204:	02800513          	li	a0,40
    80008208:	ef1ff06f          	j	800080f8 <__printf+0x4d0>
    8000820c:	00700793          	li	a5,7
    80008210:	00600c93          	li	s9,6
    80008214:	e0dff06f          	j	80008020 <__printf+0x3f8>
    80008218:	00700793          	li	a5,7
    8000821c:	00600c93          	li	s9,6
    80008220:	c69ff06f          	j	80007e88 <__printf+0x260>
    80008224:	00300793          	li	a5,3
    80008228:	00200c93          	li	s9,2
    8000822c:	c5dff06f          	j	80007e88 <__printf+0x260>
    80008230:	00300793          	li	a5,3
    80008234:	00200c93          	li	s9,2
    80008238:	de9ff06f          	j	80008020 <__printf+0x3f8>
    8000823c:	00400793          	li	a5,4
    80008240:	00300c93          	li	s9,3
    80008244:	dddff06f          	j	80008020 <__printf+0x3f8>
    80008248:	00400793          	li	a5,4
    8000824c:	00300c93          	li	s9,3
    80008250:	c39ff06f          	j	80007e88 <__printf+0x260>
    80008254:	00500793          	li	a5,5
    80008258:	00400c93          	li	s9,4
    8000825c:	c2dff06f          	j	80007e88 <__printf+0x260>
    80008260:	00500793          	li	a5,5
    80008264:	00400c93          	li	s9,4
    80008268:	db9ff06f          	j	80008020 <__printf+0x3f8>
    8000826c:	00600793          	li	a5,6
    80008270:	00500c93          	li	s9,5
    80008274:	dadff06f          	j	80008020 <__printf+0x3f8>
    80008278:	00600793          	li	a5,6
    8000827c:	00500c93          	li	s9,5
    80008280:	c09ff06f          	j	80007e88 <__printf+0x260>
    80008284:	00800793          	li	a5,8
    80008288:	00700c93          	li	s9,7
    8000828c:	bfdff06f          	j	80007e88 <__printf+0x260>
    80008290:	00100793          	li	a5,1
    80008294:	d91ff06f          	j	80008024 <__printf+0x3fc>
    80008298:	00100793          	li	a5,1
    8000829c:	bf1ff06f          	j	80007e8c <__printf+0x264>
    800082a0:	00900793          	li	a5,9
    800082a4:	00800c93          	li	s9,8
    800082a8:	be1ff06f          	j	80007e88 <__printf+0x260>
    800082ac:	00002517          	auipc	a0,0x2
    800082b0:	42c50513          	addi	a0,a0,1068 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    800082b4:	00000097          	auipc	ra,0x0
    800082b8:	918080e7          	jalr	-1768(ra) # 80007bcc <panic>

00000000800082bc <printfinit>:
    800082bc:	fe010113          	addi	sp,sp,-32
    800082c0:	00813823          	sd	s0,16(sp)
    800082c4:	00913423          	sd	s1,8(sp)
    800082c8:	00113c23          	sd	ra,24(sp)
    800082cc:	02010413          	addi	s0,sp,32
    800082d0:	00007497          	auipc	s1,0x7
    800082d4:	ab048493          	addi	s1,s1,-1360 # 8000ed80 <pr>
    800082d8:	00048513          	mv	a0,s1
    800082dc:	00002597          	auipc	a1,0x2
    800082e0:	40c58593          	addi	a1,a1,1036 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    800082e4:	00000097          	auipc	ra,0x0
    800082e8:	5f4080e7          	jalr	1524(ra) # 800088d8 <initlock>
    800082ec:	01813083          	ld	ra,24(sp)
    800082f0:	01013403          	ld	s0,16(sp)
    800082f4:	0004ac23          	sw	zero,24(s1)
    800082f8:	00813483          	ld	s1,8(sp)
    800082fc:	02010113          	addi	sp,sp,32
    80008300:	00008067          	ret

0000000080008304 <uartinit>:
    80008304:	ff010113          	addi	sp,sp,-16
    80008308:	00813423          	sd	s0,8(sp)
    8000830c:	01010413          	addi	s0,sp,16
    80008310:	100007b7          	lui	a5,0x10000
    80008314:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008318:	f8000713          	li	a4,-128
    8000831c:	00e781a3          	sb	a4,3(a5)
    80008320:	00300713          	li	a4,3
    80008324:	00e78023          	sb	a4,0(a5)
    80008328:	000780a3          	sb	zero,1(a5)
    8000832c:	00e781a3          	sb	a4,3(a5)
    80008330:	00700693          	li	a3,7
    80008334:	00d78123          	sb	a3,2(a5)
    80008338:	00e780a3          	sb	a4,1(a5)
    8000833c:	00813403          	ld	s0,8(sp)
    80008340:	01010113          	addi	sp,sp,16
    80008344:	00008067          	ret

0000000080008348 <uartputc>:
    80008348:	00004797          	auipc	a5,0x4
    8000834c:	7b07a783          	lw	a5,1968(a5) # 8000caf8 <panicked>
    80008350:	00078463          	beqz	a5,80008358 <uartputc+0x10>
    80008354:	0000006f          	j	80008354 <uartputc+0xc>
    80008358:	fd010113          	addi	sp,sp,-48
    8000835c:	02813023          	sd	s0,32(sp)
    80008360:	00913c23          	sd	s1,24(sp)
    80008364:	01213823          	sd	s2,16(sp)
    80008368:	01313423          	sd	s3,8(sp)
    8000836c:	02113423          	sd	ra,40(sp)
    80008370:	03010413          	addi	s0,sp,48
    80008374:	00004917          	auipc	s2,0x4
    80008378:	78c90913          	addi	s2,s2,1932 # 8000cb00 <uart_tx_r>
    8000837c:	00093783          	ld	a5,0(s2)
    80008380:	00004497          	auipc	s1,0x4
    80008384:	78848493          	addi	s1,s1,1928 # 8000cb08 <uart_tx_w>
    80008388:	0004b703          	ld	a4,0(s1)
    8000838c:	02078693          	addi	a3,a5,32
    80008390:	00050993          	mv	s3,a0
    80008394:	02e69c63          	bne	a3,a4,800083cc <uartputc+0x84>
    80008398:	00001097          	auipc	ra,0x1
    8000839c:	834080e7          	jalr	-1996(ra) # 80008bcc <push_on>
    800083a0:	00093783          	ld	a5,0(s2)
    800083a4:	0004b703          	ld	a4,0(s1)
    800083a8:	02078793          	addi	a5,a5,32
    800083ac:	00e79463          	bne	a5,a4,800083b4 <uartputc+0x6c>
    800083b0:	0000006f          	j	800083b0 <uartputc+0x68>
    800083b4:	00001097          	auipc	ra,0x1
    800083b8:	88c080e7          	jalr	-1908(ra) # 80008c40 <pop_on>
    800083bc:	00093783          	ld	a5,0(s2)
    800083c0:	0004b703          	ld	a4,0(s1)
    800083c4:	02078693          	addi	a3,a5,32
    800083c8:	fce688e3          	beq	a3,a4,80008398 <uartputc+0x50>
    800083cc:	01f77693          	andi	a3,a4,31
    800083d0:	00007597          	auipc	a1,0x7
    800083d4:	9d058593          	addi	a1,a1,-1584 # 8000eda0 <uart_tx_buf>
    800083d8:	00d586b3          	add	a3,a1,a3
    800083dc:	00170713          	addi	a4,a4,1
    800083e0:	01368023          	sb	s3,0(a3)
    800083e4:	00e4b023          	sd	a4,0(s1)
    800083e8:	10000637          	lui	a2,0x10000
    800083ec:	02f71063          	bne	a4,a5,8000840c <uartputc+0xc4>
    800083f0:	0340006f          	j	80008424 <uartputc+0xdc>
    800083f4:	00074703          	lbu	a4,0(a4)
    800083f8:	00f93023          	sd	a5,0(s2)
    800083fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008400:	00093783          	ld	a5,0(s2)
    80008404:	0004b703          	ld	a4,0(s1)
    80008408:	00f70e63          	beq	a4,a5,80008424 <uartputc+0xdc>
    8000840c:	00564683          	lbu	a3,5(a2)
    80008410:	01f7f713          	andi	a4,a5,31
    80008414:	00e58733          	add	a4,a1,a4
    80008418:	0206f693          	andi	a3,a3,32
    8000841c:	00178793          	addi	a5,a5,1
    80008420:	fc069ae3          	bnez	a3,800083f4 <uartputc+0xac>
    80008424:	02813083          	ld	ra,40(sp)
    80008428:	02013403          	ld	s0,32(sp)
    8000842c:	01813483          	ld	s1,24(sp)
    80008430:	01013903          	ld	s2,16(sp)
    80008434:	00813983          	ld	s3,8(sp)
    80008438:	03010113          	addi	sp,sp,48
    8000843c:	00008067          	ret

0000000080008440 <uartputc_sync>:
    80008440:	ff010113          	addi	sp,sp,-16
    80008444:	00813423          	sd	s0,8(sp)
    80008448:	01010413          	addi	s0,sp,16
    8000844c:	00004717          	auipc	a4,0x4
    80008450:	6ac72703          	lw	a4,1708(a4) # 8000caf8 <panicked>
    80008454:	02071663          	bnez	a4,80008480 <uartputc_sync+0x40>
    80008458:	00050793          	mv	a5,a0
    8000845c:	100006b7          	lui	a3,0x10000
    80008460:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008464:	02077713          	andi	a4,a4,32
    80008468:	fe070ce3          	beqz	a4,80008460 <uartputc_sync+0x20>
    8000846c:	0ff7f793          	andi	a5,a5,255
    80008470:	00f68023          	sb	a5,0(a3)
    80008474:	00813403          	ld	s0,8(sp)
    80008478:	01010113          	addi	sp,sp,16
    8000847c:	00008067          	ret
    80008480:	0000006f          	j	80008480 <uartputc_sync+0x40>

0000000080008484 <uartstart>:
    80008484:	ff010113          	addi	sp,sp,-16
    80008488:	00813423          	sd	s0,8(sp)
    8000848c:	01010413          	addi	s0,sp,16
    80008490:	00004617          	auipc	a2,0x4
    80008494:	67060613          	addi	a2,a2,1648 # 8000cb00 <uart_tx_r>
    80008498:	00004517          	auipc	a0,0x4
    8000849c:	67050513          	addi	a0,a0,1648 # 8000cb08 <uart_tx_w>
    800084a0:	00063783          	ld	a5,0(a2)
    800084a4:	00053703          	ld	a4,0(a0)
    800084a8:	04f70263          	beq	a4,a5,800084ec <uartstart+0x68>
    800084ac:	100005b7          	lui	a1,0x10000
    800084b0:	00007817          	auipc	a6,0x7
    800084b4:	8f080813          	addi	a6,a6,-1808 # 8000eda0 <uart_tx_buf>
    800084b8:	01c0006f          	j	800084d4 <uartstart+0x50>
    800084bc:	0006c703          	lbu	a4,0(a3)
    800084c0:	00f63023          	sd	a5,0(a2)
    800084c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800084c8:	00063783          	ld	a5,0(a2)
    800084cc:	00053703          	ld	a4,0(a0)
    800084d0:	00f70e63          	beq	a4,a5,800084ec <uartstart+0x68>
    800084d4:	01f7f713          	andi	a4,a5,31
    800084d8:	00e806b3          	add	a3,a6,a4
    800084dc:	0055c703          	lbu	a4,5(a1)
    800084e0:	00178793          	addi	a5,a5,1
    800084e4:	02077713          	andi	a4,a4,32
    800084e8:	fc071ae3          	bnez	a4,800084bc <uartstart+0x38>
    800084ec:	00813403          	ld	s0,8(sp)
    800084f0:	01010113          	addi	sp,sp,16
    800084f4:	00008067          	ret

00000000800084f8 <uartgetc>:
    800084f8:	ff010113          	addi	sp,sp,-16
    800084fc:	00813423          	sd	s0,8(sp)
    80008500:	01010413          	addi	s0,sp,16
    80008504:	10000737          	lui	a4,0x10000
    80008508:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000850c:	0017f793          	andi	a5,a5,1
    80008510:	00078c63          	beqz	a5,80008528 <uartgetc+0x30>
    80008514:	00074503          	lbu	a0,0(a4)
    80008518:	0ff57513          	andi	a0,a0,255
    8000851c:	00813403          	ld	s0,8(sp)
    80008520:	01010113          	addi	sp,sp,16
    80008524:	00008067          	ret
    80008528:	fff00513          	li	a0,-1
    8000852c:	ff1ff06f          	j	8000851c <uartgetc+0x24>

0000000080008530 <uartintr>:
    80008530:	100007b7          	lui	a5,0x10000
    80008534:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008538:	0017f793          	andi	a5,a5,1
    8000853c:	0a078463          	beqz	a5,800085e4 <uartintr+0xb4>
    80008540:	fe010113          	addi	sp,sp,-32
    80008544:	00813823          	sd	s0,16(sp)
    80008548:	00913423          	sd	s1,8(sp)
    8000854c:	00113c23          	sd	ra,24(sp)
    80008550:	02010413          	addi	s0,sp,32
    80008554:	100004b7          	lui	s1,0x10000
    80008558:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000855c:	0ff57513          	andi	a0,a0,255
    80008560:	fffff097          	auipc	ra,0xfffff
    80008564:	534080e7          	jalr	1332(ra) # 80007a94 <consoleintr>
    80008568:	0054c783          	lbu	a5,5(s1)
    8000856c:	0017f793          	andi	a5,a5,1
    80008570:	fe0794e3          	bnez	a5,80008558 <uartintr+0x28>
    80008574:	00004617          	auipc	a2,0x4
    80008578:	58c60613          	addi	a2,a2,1420 # 8000cb00 <uart_tx_r>
    8000857c:	00004517          	auipc	a0,0x4
    80008580:	58c50513          	addi	a0,a0,1420 # 8000cb08 <uart_tx_w>
    80008584:	00063783          	ld	a5,0(a2)
    80008588:	00053703          	ld	a4,0(a0)
    8000858c:	04f70263          	beq	a4,a5,800085d0 <uartintr+0xa0>
    80008590:	100005b7          	lui	a1,0x10000
    80008594:	00007817          	auipc	a6,0x7
    80008598:	80c80813          	addi	a6,a6,-2036 # 8000eda0 <uart_tx_buf>
    8000859c:	01c0006f          	j	800085b8 <uartintr+0x88>
    800085a0:	0006c703          	lbu	a4,0(a3)
    800085a4:	00f63023          	sd	a5,0(a2)
    800085a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800085ac:	00063783          	ld	a5,0(a2)
    800085b0:	00053703          	ld	a4,0(a0)
    800085b4:	00f70e63          	beq	a4,a5,800085d0 <uartintr+0xa0>
    800085b8:	01f7f713          	andi	a4,a5,31
    800085bc:	00e806b3          	add	a3,a6,a4
    800085c0:	0055c703          	lbu	a4,5(a1)
    800085c4:	00178793          	addi	a5,a5,1
    800085c8:	02077713          	andi	a4,a4,32
    800085cc:	fc071ae3          	bnez	a4,800085a0 <uartintr+0x70>
    800085d0:	01813083          	ld	ra,24(sp)
    800085d4:	01013403          	ld	s0,16(sp)
    800085d8:	00813483          	ld	s1,8(sp)
    800085dc:	02010113          	addi	sp,sp,32
    800085e0:	00008067          	ret
    800085e4:	00004617          	auipc	a2,0x4
    800085e8:	51c60613          	addi	a2,a2,1308 # 8000cb00 <uart_tx_r>
    800085ec:	00004517          	auipc	a0,0x4
    800085f0:	51c50513          	addi	a0,a0,1308 # 8000cb08 <uart_tx_w>
    800085f4:	00063783          	ld	a5,0(a2)
    800085f8:	00053703          	ld	a4,0(a0)
    800085fc:	04f70263          	beq	a4,a5,80008640 <uartintr+0x110>
    80008600:	100005b7          	lui	a1,0x10000
    80008604:	00006817          	auipc	a6,0x6
    80008608:	79c80813          	addi	a6,a6,1948 # 8000eda0 <uart_tx_buf>
    8000860c:	01c0006f          	j	80008628 <uartintr+0xf8>
    80008610:	0006c703          	lbu	a4,0(a3)
    80008614:	00f63023          	sd	a5,0(a2)
    80008618:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000861c:	00063783          	ld	a5,0(a2)
    80008620:	00053703          	ld	a4,0(a0)
    80008624:	02f70063          	beq	a4,a5,80008644 <uartintr+0x114>
    80008628:	01f7f713          	andi	a4,a5,31
    8000862c:	00e806b3          	add	a3,a6,a4
    80008630:	0055c703          	lbu	a4,5(a1)
    80008634:	00178793          	addi	a5,a5,1
    80008638:	02077713          	andi	a4,a4,32
    8000863c:	fc071ae3          	bnez	a4,80008610 <uartintr+0xe0>
    80008640:	00008067          	ret
    80008644:	00008067          	ret

0000000080008648 <kinit>:
    80008648:	fc010113          	addi	sp,sp,-64
    8000864c:	02913423          	sd	s1,40(sp)
    80008650:	fffff7b7          	lui	a5,0xfffff
    80008654:	00007497          	auipc	s1,0x7
    80008658:	76b48493          	addi	s1,s1,1899 # 8000fdbf <end+0xfff>
    8000865c:	02813823          	sd	s0,48(sp)
    80008660:	01313c23          	sd	s3,24(sp)
    80008664:	00f4f4b3          	and	s1,s1,a5
    80008668:	02113c23          	sd	ra,56(sp)
    8000866c:	03213023          	sd	s2,32(sp)
    80008670:	01413823          	sd	s4,16(sp)
    80008674:	01513423          	sd	s5,8(sp)
    80008678:	04010413          	addi	s0,sp,64
    8000867c:	000017b7          	lui	a5,0x1
    80008680:	01100993          	li	s3,17
    80008684:	00f487b3          	add	a5,s1,a5
    80008688:	01b99993          	slli	s3,s3,0x1b
    8000868c:	06f9e063          	bltu	s3,a5,800086ec <kinit+0xa4>
    80008690:	00006a97          	auipc	s5,0x6
    80008694:	730a8a93          	addi	s5,s5,1840 # 8000edc0 <end>
    80008698:	0754ec63          	bltu	s1,s5,80008710 <kinit+0xc8>
    8000869c:	0734fa63          	bgeu	s1,s3,80008710 <kinit+0xc8>
    800086a0:	00088a37          	lui	s4,0x88
    800086a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800086a8:	00004917          	auipc	s2,0x4
    800086ac:	46890913          	addi	s2,s2,1128 # 8000cb10 <kmem>
    800086b0:	00ca1a13          	slli	s4,s4,0xc
    800086b4:	0140006f          	j	800086c8 <kinit+0x80>
    800086b8:	000017b7          	lui	a5,0x1
    800086bc:	00f484b3          	add	s1,s1,a5
    800086c0:	0554e863          	bltu	s1,s5,80008710 <kinit+0xc8>
    800086c4:	0534f663          	bgeu	s1,s3,80008710 <kinit+0xc8>
    800086c8:	00001637          	lui	a2,0x1
    800086cc:	00100593          	li	a1,1
    800086d0:	00048513          	mv	a0,s1
    800086d4:	00000097          	auipc	ra,0x0
    800086d8:	5e4080e7          	jalr	1508(ra) # 80008cb8 <__memset>
    800086dc:	00093783          	ld	a5,0(s2)
    800086e0:	00f4b023          	sd	a5,0(s1)
    800086e4:	00993023          	sd	s1,0(s2)
    800086e8:	fd4498e3          	bne	s1,s4,800086b8 <kinit+0x70>
    800086ec:	03813083          	ld	ra,56(sp)
    800086f0:	03013403          	ld	s0,48(sp)
    800086f4:	02813483          	ld	s1,40(sp)
    800086f8:	02013903          	ld	s2,32(sp)
    800086fc:	01813983          	ld	s3,24(sp)
    80008700:	01013a03          	ld	s4,16(sp)
    80008704:	00813a83          	ld	s5,8(sp)
    80008708:	04010113          	addi	sp,sp,64
    8000870c:	00008067          	ret
    80008710:	00002517          	auipc	a0,0x2
    80008714:	ff850513          	addi	a0,a0,-8 # 8000a708 <digits+0x18>
    80008718:	fffff097          	auipc	ra,0xfffff
    8000871c:	4b4080e7          	jalr	1204(ra) # 80007bcc <panic>

0000000080008720 <freerange>:
    80008720:	fc010113          	addi	sp,sp,-64
    80008724:	000017b7          	lui	a5,0x1
    80008728:	02913423          	sd	s1,40(sp)
    8000872c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008730:	009504b3          	add	s1,a0,s1
    80008734:	fffff537          	lui	a0,0xfffff
    80008738:	02813823          	sd	s0,48(sp)
    8000873c:	02113c23          	sd	ra,56(sp)
    80008740:	03213023          	sd	s2,32(sp)
    80008744:	01313c23          	sd	s3,24(sp)
    80008748:	01413823          	sd	s4,16(sp)
    8000874c:	01513423          	sd	s5,8(sp)
    80008750:	01613023          	sd	s6,0(sp)
    80008754:	04010413          	addi	s0,sp,64
    80008758:	00a4f4b3          	and	s1,s1,a0
    8000875c:	00f487b3          	add	a5,s1,a5
    80008760:	06f5e463          	bltu	a1,a5,800087c8 <freerange+0xa8>
    80008764:	00006a97          	auipc	s5,0x6
    80008768:	65ca8a93          	addi	s5,s5,1628 # 8000edc0 <end>
    8000876c:	0954e263          	bltu	s1,s5,800087f0 <freerange+0xd0>
    80008770:	01100993          	li	s3,17
    80008774:	01b99993          	slli	s3,s3,0x1b
    80008778:	0734fc63          	bgeu	s1,s3,800087f0 <freerange+0xd0>
    8000877c:	00058a13          	mv	s4,a1
    80008780:	00004917          	auipc	s2,0x4
    80008784:	39090913          	addi	s2,s2,912 # 8000cb10 <kmem>
    80008788:	00002b37          	lui	s6,0x2
    8000878c:	0140006f          	j	800087a0 <freerange+0x80>
    80008790:	000017b7          	lui	a5,0x1
    80008794:	00f484b3          	add	s1,s1,a5
    80008798:	0554ec63          	bltu	s1,s5,800087f0 <freerange+0xd0>
    8000879c:	0534fa63          	bgeu	s1,s3,800087f0 <freerange+0xd0>
    800087a0:	00001637          	lui	a2,0x1
    800087a4:	00100593          	li	a1,1
    800087a8:	00048513          	mv	a0,s1
    800087ac:	00000097          	auipc	ra,0x0
    800087b0:	50c080e7          	jalr	1292(ra) # 80008cb8 <__memset>
    800087b4:	00093703          	ld	a4,0(s2)
    800087b8:	016487b3          	add	a5,s1,s6
    800087bc:	00e4b023          	sd	a4,0(s1)
    800087c0:	00993023          	sd	s1,0(s2)
    800087c4:	fcfa76e3          	bgeu	s4,a5,80008790 <freerange+0x70>
    800087c8:	03813083          	ld	ra,56(sp)
    800087cc:	03013403          	ld	s0,48(sp)
    800087d0:	02813483          	ld	s1,40(sp)
    800087d4:	02013903          	ld	s2,32(sp)
    800087d8:	01813983          	ld	s3,24(sp)
    800087dc:	01013a03          	ld	s4,16(sp)
    800087e0:	00813a83          	ld	s5,8(sp)
    800087e4:	00013b03          	ld	s6,0(sp)
    800087e8:	04010113          	addi	sp,sp,64
    800087ec:	00008067          	ret
    800087f0:	00002517          	auipc	a0,0x2
    800087f4:	f1850513          	addi	a0,a0,-232 # 8000a708 <digits+0x18>
    800087f8:	fffff097          	auipc	ra,0xfffff
    800087fc:	3d4080e7          	jalr	980(ra) # 80007bcc <panic>

0000000080008800 <kfree>:
    80008800:	fe010113          	addi	sp,sp,-32
    80008804:	00813823          	sd	s0,16(sp)
    80008808:	00113c23          	sd	ra,24(sp)
    8000880c:	00913423          	sd	s1,8(sp)
    80008810:	02010413          	addi	s0,sp,32
    80008814:	03451793          	slli	a5,a0,0x34
    80008818:	04079c63          	bnez	a5,80008870 <kfree+0x70>
    8000881c:	00006797          	auipc	a5,0x6
    80008820:	5a478793          	addi	a5,a5,1444 # 8000edc0 <end>
    80008824:	00050493          	mv	s1,a0
    80008828:	04f56463          	bltu	a0,a5,80008870 <kfree+0x70>
    8000882c:	01100793          	li	a5,17
    80008830:	01b79793          	slli	a5,a5,0x1b
    80008834:	02f57e63          	bgeu	a0,a5,80008870 <kfree+0x70>
    80008838:	00001637          	lui	a2,0x1
    8000883c:	00100593          	li	a1,1
    80008840:	00000097          	auipc	ra,0x0
    80008844:	478080e7          	jalr	1144(ra) # 80008cb8 <__memset>
    80008848:	00004797          	auipc	a5,0x4
    8000884c:	2c878793          	addi	a5,a5,712 # 8000cb10 <kmem>
    80008850:	0007b703          	ld	a4,0(a5)
    80008854:	01813083          	ld	ra,24(sp)
    80008858:	01013403          	ld	s0,16(sp)
    8000885c:	00e4b023          	sd	a4,0(s1)
    80008860:	0097b023          	sd	s1,0(a5)
    80008864:	00813483          	ld	s1,8(sp)
    80008868:	02010113          	addi	sp,sp,32
    8000886c:	00008067          	ret
    80008870:	00002517          	auipc	a0,0x2
    80008874:	e9850513          	addi	a0,a0,-360 # 8000a708 <digits+0x18>
    80008878:	fffff097          	auipc	ra,0xfffff
    8000887c:	354080e7          	jalr	852(ra) # 80007bcc <panic>

0000000080008880 <kalloc>:
    80008880:	fe010113          	addi	sp,sp,-32
    80008884:	00813823          	sd	s0,16(sp)
    80008888:	00913423          	sd	s1,8(sp)
    8000888c:	00113c23          	sd	ra,24(sp)
    80008890:	02010413          	addi	s0,sp,32
    80008894:	00004797          	auipc	a5,0x4
    80008898:	27c78793          	addi	a5,a5,636 # 8000cb10 <kmem>
    8000889c:	0007b483          	ld	s1,0(a5)
    800088a0:	02048063          	beqz	s1,800088c0 <kalloc+0x40>
    800088a4:	0004b703          	ld	a4,0(s1)
    800088a8:	00001637          	lui	a2,0x1
    800088ac:	00500593          	li	a1,5
    800088b0:	00048513          	mv	a0,s1
    800088b4:	00e7b023          	sd	a4,0(a5)
    800088b8:	00000097          	auipc	ra,0x0
    800088bc:	400080e7          	jalr	1024(ra) # 80008cb8 <__memset>
    800088c0:	01813083          	ld	ra,24(sp)
    800088c4:	01013403          	ld	s0,16(sp)
    800088c8:	00048513          	mv	a0,s1
    800088cc:	00813483          	ld	s1,8(sp)
    800088d0:	02010113          	addi	sp,sp,32
    800088d4:	00008067          	ret

00000000800088d8 <initlock>:
    800088d8:	ff010113          	addi	sp,sp,-16
    800088dc:	00813423          	sd	s0,8(sp)
    800088e0:	01010413          	addi	s0,sp,16
    800088e4:	00813403          	ld	s0,8(sp)
    800088e8:	00b53423          	sd	a1,8(a0)
    800088ec:	00052023          	sw	zero,0(a0)
    800088f0:	00053823          	sd	zero,16(a0)
    800088f4:	01010113          	addi	sp,sp,16
    800088f8:	00008067          	ret

00000000800088fc <acquire>:
    800088fc:	fe010113          	addi	sp,sp,-32
    80008900:	00813823          	sd	s0,16(sp)
    80008904:	00913423          	sd	s1,8(sp)
    80008908:	00113c23          	sd	ra,24(sp)
    8000890c:	01213023          	sd	s2,0(sp)
    80008910:	02010413          	addi	s0,sp,32
    80008914:	00050493          	mv	s1,a0
    80008918:	10002973          	csrr	s2,sstatus
    8000891c:	100027f3          	csrr	a5,sstatus
    80008920:	ffd7f793          	andi	a5,a5,-3
    80008924:	10079073          	csrw	sstatus,a5
    80008928:	fffff097          	auipc	ra,0xfffff
    8000892c:	8ec080e7          	jalr	-1812(ra) # 80007214 <mycpu>
    80008930:	07852783          	lw	a5,120(a0)
    80008934:	06078e63          	beqz	a5,800089b0 <acquire+0xb4>
    80008938:	fffff097          	auipc	ra,0xfffff
    8000893c:	8dc080e7          	jalr	-1828(ra) # 80007214 <mycpu>
    80008940:	07852783          	lw	a5,120(a0)
    80008944:	0004a703          	lw	a4,0(s1)
    80008948:	0017879b          	addiw	a5,a5,1
    8000894c:	06f52c23          	sw	a5,120(a0)
    80008950:	04071063          	bnez	a4,80008990 <acquire+0x94>
    80008954:	00100713          	li	a4,1
    80008958:	00070793          	mv	a5,a4
    8000895c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008960:	0007879b          	sext.w	a5,a5
    80008964:	fe079ae3          	bnez	a5,80008958 <acquire+0x5c>
    80008968:	0ff0000f          	fence
    8000896c:	fffff097          	auipc	ra,0xfffff
    80008970:	8a8080e7          	jalr	-1880(ra) # 80007214 <mycpu>
    80008974:	01813083          	ld	ra,24(sp)
    80008978:	01013403          	ld	s0,16(sp)
    8000897c:	00a4b823          	sd	a0,16(s1)
    80008980:	00013903          	ld	s2,0(sp)
    80008984:	00813483          	ld	s1,8(sp)
    80008988:	02010113          	addi	sp,sp,32
    8000898c:	00008067          	ret
    80008990:	0104b903          	ld	s2,16(s1)
    80008994:	fffff097          	auipc	ra,0xfffff
    80008998:	880080e7          	jalr	-1920(ra) # 80007214 <mycpu>
    8000899c:	faa91ce3          	bne	s2,a0,80008954 <acquire+0x58>
    800089a0:	00002517          	auipc	a0,0x2
    800089a4:	d7050513          	addi	a0,a0,-656 # 8000a710 <digits+0x20>
    800089a8:	fffff097          	auipc	ra,0xfffff
    800089ac:	224080e7          	jalr	548(ra) # 80007bcc <panic>
    800089b0:	00195913          	srli	s2,s2,0x1
    800089b4:	fffff097          	auipc	ra,0xfffff
    800089b8:	860080e7          	jalr	-1952(ra) # 80007214 <mycpu>
    800089bc:	00197913          	andi	s2,s2,1
    800089c0:	07252e23          	sw	s2,124(a0)
    800089c4:	f75ff06f          	j	80008938 <acquire+0x3c>

00000000800089c8 <release>:
    800089c8:	fe010113          	addi	sp,sp,-32
    800089cc:	00813823          	sd	s0,16(sp)
    800089d0:	00113c23          	sd	ra,24(sp)
    800089d4:	00913423          	sd	s1,8(sp)
    800089d8:	01213023          	sd	s2,0(sp)
    800089dc:	02010413          	addi	s0,sp,32
    800089e0:	00052783          	lw	a5,0(a0)
    800089e4:	00079a63          	bnez	a5,800089f8 <release+0x30>
    800089e8:	00002517          	auipc	a0,0x2
    800089ec:	d3050513          	addi	a0,a0,-720 # 8000a718 <digits+0x28>
    800089f0:	fffff097          	auipc	ra,0xfffff
    800089f4:	1dc080e7          	jalr	476(ra) # 80007bcc <panic>
    800089f8:	01053903          	ld	s2,16(a0)
    800089fc:	00050493          	mv	s1,a0
    80008a00:	fffff097          	auipc	ra,0xfffff
    80008a04:	814080e7          	jalr	-2028(ra) # 80007214 <mycpu>
    80008a08:	fea910e3          	bne	s2,a0,800089e8 <release+0x20>
    80008a0c:	0004b823          	sd	zero,16(s1)
    80008a10:	0ff0000f          	fence
    80008a14:	0f50000f          	fence	iorw,ow
    80008a18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008a1c:	ffffe097          	auipc	ra,0xffffe
    80008a20:	7f8080e7          	jalr	2040(ra) # 80007214 <mycpu>
    80008a24:	100027f3          	csrr	a5,sstatus
    80008a28:	0027f793          	andi	a5,a5,2
    80008a2c:	04079a63          	bnez	a5,80008a80 <release+0xb8>
    80008a30:	07852783          	lw	a5,120(a0)
    80008a34:	02f05e63          	blez	a5,80008a70 <release+0xa8>
    80008a38:	fff7871b          	addiw	a4,a5,-1
    80008a3c:	06e52c23          	sw	a4,120(a0)
    80008a40:	00071c63          	bnez	a4,80008a58 <release+0x90>
    80008a44:	07c52783          	lw	a5,124(a0)
    80008a48:	00078863          	beqz	a5,80008a58 <release+0x90>
    80008a4c:	100027f3          	csrr	a5,sstatus
    80008a50:	0027e793          	ori	a5,a5,2
    80008a54:	10079073          	csrw	sstatus,a5
    80008a58:	01813083          	ld	ra,24(sp)
    80008a5c:	01013403          	ld	s0,16(sp)
    80008a60:	00813483          	ld	s1,8(sp)
    80008a64:	00013903          	ld	s2,0(sp)
    80008a68:	02010113          	addi	sp,sp,32
    80008a6c:	00008067          	ret
    80008a70:	00002517          	auipc	a0,0x2
    80008a74:	cc850513          	addi	a0,a0,-824 # 8000a738 <digits+0x48>
    80008a78:	fffff097          	auipc	ra,0xfffff
    80008a7c:	154080e7          	jalr	340(ra) # 80007bcc <panic>
    80008a80:	00002517          	auipc	a0,0x2
    80008a84:	ca050513          	addi	a0,a0,-864 # 8000a720 <digits+0x30>
    80008a88:	fffff097          	auipc	ra,0xfffff
    80008a8c:	144080e7          	jalr	324(ra) # 80007bcc <panic>

0000000080008a90 <holding>:
    80008a90:	00052783          	lw	a5,0(a0)
    80008a94:	00079663          	bnez	a5,80008aa0 <holding+0x10>
    80008a98:	00000513          	li	a0,0
    80008a9c:	00008067          	ret
    80008aa0:	fe010113          	addi	sp,sp,-32
    80008aa4:	00813823          	sd	s0,16(sp)
    80008aa8:	00913423          	sd	s1,8(sp)
    80008aac:	00113c23          	sd	ra,24(sp)
    80008ab0:	02010413          	addi	s0,sp,32
    80008ab4:	01053483          	ld	s1,16(a0)
    80008ab8:	ffffe097          	auipc	ra,0xffffe
    80008abc:	75c080e7          	jalr	1884(ra) # 80007214 <mycpu>
    80008ac0:	01813083          	ld	ra,24(sp)
    80008ac4:	01013403          	ld	s0,16(sp)
    80008ac8:	40a48533          	sub	a0,s1,a0
    80008acc:	00153513          	seqz	a0,a0
    80008ad0:	00813483          	ld	s1,8(sp)
    80008ad4:	02010113          	addi	sp,sp,32
    80008ad8:	00008067          	ret

0000000080008adc <push_off>:
    80008adc:	fe010113          	addi	sp,sp,-32
    80008ae0:	00813823          	sd	s0,16(sp)
    80008ae4:	00113c23          	sd	ra,24(sp)
    80008ae8:	00913423          	sd	s1,8(sp)
    80008aec:	02010413          	addi	s0,sp,32
    80008af0:	100024f3          	csrr	s1,sstatus
    80008af4:	100027f3          	csrr	a5,sstatus
    80008af8:	ffd7f793          	andi	a5,a5,-3
    80008afc:	10079073          	csrw	sstatus,a5
    80008b00:	ffffe097          	auipc	ra,0xffffe
    80008b04:	714080e7          	jalr	1812(ra) # 80007214 <mycpu>
    80008b08:	07852783          	lw	a5,120(a0)
    80008b0c:	02078663          	beqz	a5,80008b38 <push_off+0x5c>
    80008b10:	ffffe097          	auipc	ra,0xffffe
    80008b14:	704080e7          	jalr	1796(ra) # 80007214 <mycpu>
    80008b18:	07852783          	lw	a5,120(a0)
    80008b1c:	01813083          	ld	ra,24(sp)
    80008b20:	01013403          	ld	s0,16(sp)
    80008b24:	0017879b          	addiw	a5,a5,1
    80008b28:	06f52c23          	sw	a5,120(a0)
    80008b2c:	00813483          	ld	s1,8(sp)
    80008b30:	02010113          	addi	sp,sp,32
    80008b34:	00008067          	ret
    80008b38:	0014d493          	srli	s1,s1,0x1
    80008b3c:	ffffe097          	auipc	ra,0xffffe
    80008b40:	6d8080e7          	jalr	1752(ra) # 80007214 <mycpu>
    80008b44:	0014f493          	andi	s1,s1,1
    80008b48:	06952e23          	sw	s1,124(a0)
    80008b4c:	fc5ff06f          	j	80008b10 <push_off+0x34>

0000000080008b50 <pop_off>:
    80008b50:	ff010113          	addi	sp,sp,-16
    80008b54:	00813023          	sd	s0,0(sp)
    80008b58:	00113423          	sd	ra,8(sp)
    80008b5c:	01010413          	addi	s0,sp,16
    80008b60:	ffffe097          	auipc	ra,0xffffe
    80008b64:	6b4080e7          	jalr	1716(ra) # 80007214 <mycpu>
    80008b68:	100027f3          	csrr	a5,sstatus
    80008b6c:	0027f793          	andi	a5,a5,2
    80008b70:	04079663          	bnez	a5,80008bbc <pop_off+0x6c>
    80008b74:	07852783          	lw	a5,120(a0)
    80008b78:	02f05a63          	blez	a5,80008bac <pop_off+0x5c>
    80008b7c:	fff7871b          	addiw	a4,a5,-1
    80008b80:	06e52c23          	sw	a4,120(a0)
    80008b84:	00071c63          	bnez	a4,80008b9c <pop_off+0x4c>
    80008b88:	07c52783          	lw	a5,124(a0)
    80008b8c:	00078863          	beqz	a5,80008b9c <pop_off+0x4c>
    80008b90:	100027f3          	csrr	a5,sstatus
    80008b94:	0027e793          	ori	a5,a5,2
    80008b98:	10079073          	csrw	sstatus,a5
    80008b9c:	00813083          	ld	ra,8(sp)
    80008ba0:	00013403          	ld	s0,0(sp)
    80008ba4:	01010113          	addi	sp,sp,16
    80008ba8:	00008067          	ret
    80008bac:	00002517          	auipc	a0,0x2
    80008bb0:	b8c50513          	addi	a0,a0,-1140 # 8000a738 <digits+0x48>
    80008bb4:	fffff097          	auipc	ra,0xfffff
    80008bb8:	018080e7          	jalr	24(ra) # 80007bcc <panic>
    80008bbc:	00002517          	auipc	a0,0x2
    80008bc0:	b6450513          	addi	a0,a0,-1180 # 8000a720 <digits+0x30>
    80008bc4:	fffff097          	auipc	ra,0xfffff
    80008bc8:	008080e7          	jalr	8(ra) # 80007bcc <panic>

0000000080008bcc <push_on>:
    80008bcc:	fe010113          	addi	sp,sp,-32
    80008bd0:	00813823          	sd	s0,16(sp)
    80008bd4:	00113c23          	sd	ra,24(sp)
    80008bd8:	00913423          	sd	s1,8(sp)
    80008bdc:	02010413          	addi	s0,sp,32
    80008be0:	100024f3          	csrr	s1,sstatus
    80008be4:	100027f3          	csrr	a5,sstatus
    80008be8:	0027e793          	ori	a5,a5,2
    80008bec:	10079073          	csrw	sstatus,a5
    80008bf0:	ffffe097          	auipc	ra,0xffffe
    80008bf4:	624080e7          	jalr	1572(ra) # 80007214 <mycpu>
    80008bf8:	07852783          	lw	a5,120(a0)
    80008bfc:	02078663          	beqz	a5,80008c28 <push_on+0x5c>
    80008c00:	ffffe097          	auipc	ra,0xffffe
    80008c04:	614080e7          	jalr	1556(ra) # 80007214 <mycpu>
    80008c08:	07852783          	lw	a5,120(a0)
    80008c0c:	01813083          	ld	ra,24(sp)
    80008c10:	01013403          	ld	s0,16(sp)
    80008c14:	0017879b          	addiw	a5,a5,1
    80008c18:	06f52c23          	sw	a5,120(a0)
    80008c1c:	00813483          	ld	s1,8(sp)
    80008c20:	02010113          	addi	sp,sp,32
    80008c24:	00008067          	ret
    80008c28:	0014d493          	srli	s1,s1,0x1
    80008c2c:	ffffe097          	auipc	ra,0xffffe
    80008c30:	5e8080e7          	jalr	1512(ra) # 80007214 <mycpu>
    80008c34:	0014f493          	andi	s1,s1,1
    80008c38:	06952e23          	sw	s1,124(a0)
    80008c3c:	fc5ff06f          	j	80008c00 <push_on+0x34>

0000000080008c40 <pop_on>:
    80008c40:	ff010113          	addi	sp,sp,-16
    80008c44:	00813023          	sd	s0,0(sp)
    80008c48:	00113423          	sd	ra,8(sp)
    80008c4c:	01010413          	addi	s0,sp,16
    80008c50:	ffffe097          	auipc	ra,0xffffe
    80008c54:	5c4080e7          	jalr	1476(ra) # 80007214 <mycpu>
    80008c58:	100027f3          	csrr	a5,sstatus
    80008c5c:	0027f793          	andi	a5,a5,2
    80008c60:	04078463          	beqz	a5,80008ca8 <pop_on+0x68>
    80008c64:	07852783          	lw	a5,120(a0)
    80008c68:	02f05863          	blez	a5,80008c98 <pop_on+0x58>
    80008c6c:	fff7879b          	addiw	a5,a5,-1
    80008c70:	06f52c23          	sw	a5,120(a0)
    80008c74:	07853783          	ld	a5,120(a0)
    80008c78:	00079863          	bnez	a5,80008c88 <pop_on+0x48>
    80008c7c:	100027f3          	csrr	a5,sstatus
    80008c80:	ffd7f793          	andi	a5,a5,-3
    80008c84:	10079073          	csrw	sstatus,a5
    80008c88:	00813083          	ld	ra,8(sp)
    80008c8c:	00013403          	ld	s0,0(sp)
    80008c90:	01010113          	addi	sp,sp,16
    80008c94:	00008067          	ret
    80008c98:	00002517          	auipc	a0,0x2
    80008c9c:	ac850513          	addi	a0,a0,-1336 # 8000a760 <digits+0x70>
    80008ca0:	fffff097          	auipc	ra,0xfffff
    80008ca4:	f2c080e7          	jalr	-212(ra) # 80007bcc <panic>
    80008ca8:	00002517          	auipc	a0,0x2
    80008cac:	a9850513          	addi	a0,a0,-1384 # 8000a740 <digits+0x50>
    80008cb0:	fffff097          	auipc	ra,0xfffff
    80008cb4:	f1c080e7          	jalr	-228(ra) # 80007bcc <panic>

0000000080008cb8 <__memset>:
    80008cb8:	ff010113          	addi	sp,sp,-16
    80008cbc:	00813423          	sd	s0,8(sp)
    80008cc0:	01010413          	addi	s0,sp,16
    80008cc4:	1a060e63          	beqz	a2,80008e80 <__memset+0x1c8>
    80008cc8:	40a007b3          	neg	a5,a0
    80008ccc:	0077f793          	andi	a5,a5,7
    80008cd0:	00778693          	addi	a3,a5,7
    80008cd4:	00b00813          	li	a6,11
    80008cd8:	0ff5f593          	andi	a1,a1,255
    80008cdc:	fff6071b          	addiw	a4,a2,-1
    80008ce0:	1b06e663          	bltu	a3,a6,80008e8c <__memset+0x1d4>
    80008ce4:	1cd76463          	bltu	a4,a3,80008eac <__memset+0x1f4>
    80008ce8:	1a078e63          	beqz	a5,80008ea4 <__memset+0x1ec>
    80008cec:	00b50023          	sb	a1,0(a0)
    80008cf0:	00100713          	li	a4,1
    80008cf4:	1ae78463          	beq	a5,a4,80008e9c <__memset+0x1e4>
    80008cf8:	00b500a3          	sb	a1,1(a0)
    80008cfc:	00200713          	li	a4,2
    80008d00:	1ae78a63          	beq	a5,a4,80008eb4 <__memset+0x1fc>
    80008d04:	00b50123          	sb	a1,2(a0)
    80008d08:	00300713          	li	a4,3
    80008d0c:	18e78463          	beq	a5,a4,80008e94 <__memset+0x1dc>
    80008d10:	00b501a3          	sb	a1,3(a0)
    80008d14:	00400713          	li	a4,4
    80008d18:	1ae78263          	beq	a5,a4,80008ebc <__memset+0x204>
    80008d1c:	00b50223          	sb	a1,4(a0)
    80008d20:	00500713          	li	a4,5
    80008d24:	1ae78063          	beq	a5,a4,80008ec4 <__memset+0x20c>
    80008d28:	00b502a3          	sb	a1,5(a0)
    80008d2c:	00700713          	li	a4,7
    80008d30:	18e79e63          	bne	a5,a4,80008ecc <__memset+0x214>
    80008d34:	00b50323          	sb	a1,6(a0)
    80008d38:	00700e93          	li	t4,7
    80008d3c:	00859713          	slli	a4,a1,0x8
    80008d40:	00e5e733          	or	a4,a1,a4
    80008d44:	01059e13          	slli	t3,a1,0x10
    80008d48:	01c76e33          	or	t3,a4,t3
    80008d4c:	01859313          	slli	t1,a1,0x18
    80008d50:	006e6333          	or	t1,t3,t1
    80008d54:	02059893          	slli	a7,a1,0x20
    80008d58:	40f60e3b          	subw	t3,a2,a5
    80008d5c:	011368b3          	or	a7,t1,a7
    80008d60:	02859813          	slli	a6,a1,0x28
    80008d64:	0108e833          	or	a6,a7,a6
    80008d68:	03059693          	slli	a3,a1,0x30
    80008d6c:	003e589b          	srliw	a7,t3,0x3
    80008d70:	00d866b3          	or	a3,a6,a3
    80008d74:	03859713          	slli	a4,a1,0x38
    80008d78:	00389813          	slli	a6,a7,0x3
    80008d7c:	00f507b3          	add	a5,a0,a5
    80008d80:	00e6e733          	or	a4,a3,a4
    80008d84:	000e089b          	sext.w	a7,t3
    80008d88:	00f806b3          	add	a3,a6,a5
    80008d8c:	00e7b023          	sd	a4,0(a5)
    80008d90:	00878793          	addi	a5,a5,8
    80008d94:	fed79ce3          	bne	a5,a3,80008d8c <__memset+0xd4>
    80008d98:	ff8e7793          	andi	a5,t3,-8
    80008d9c:	0007871b          	sext.w	a4,a5
    80008da0:	01d787bb          	addw	a5,a5,t4
    80008da4:	0ce88e63          	beq	a7,a4,80008e80 <__memset+0x1c8>
    80008da8:	00f50733          	add	a4,a0,a5
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	0017871b          	addiw	a4,a5,1
    80008db4:	0cc77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008db8:	00e50733          	add	a4,a0,a4
    80008dbc:	00b70023          	sb	a1,0(a4)
    80008dc0:	0027871b          	addiw	a4,a5,2
    80008dc4:	0ac77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008dc8:	00e50733          	add	a4,a0,a4
    80008dcc:	00b70023          	sb	a1,0(a4)
    80008dd0:	0037871b          	addiw	a4,a5,3
    80008dd4:	0ac77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008dd8:	00e50733          	add	a4,a0,a4
    80008ddc:	00b70023          	sb	a1,0(a4)
    80008de0:	0047871b          	addiw	a4,a5,4
    80008de4:	08c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008de8:	00e50733          	add	a4,a0,a4
    80008dec:	00b70023          	sb	a1,0(a4)
    80008df0:	0057871b          	addiw	a4,a5,5
    80008df4:	08c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008df8:	00e50733          	add	a4,a0,a4
    80008dfc:	00b70023          	sb	a1,0(a4)
    80008e00:	0067871b          	addiw	a4,a5,6
    80008e04:	06c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e08:	00e50733          	add	a4,a0,a4
    80008e0c:	00b70023          	sb	a1,0(a4)
    80008e10:	0077871b          	addiw	a4,a5,7
    80008e14:	06c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e18:	00e50733          	add	a4,a0,a4
    80008e1c:	00b70023          	sb	a1,0(a4)
    80008e20:	0087871b          	addiw	a4,a5,8
    80008e24:	04c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e28:	00e50733          	add	a4,a0,a4
    80008e2c:	00b70023          	sb	a1,0(a4)
    80008e30:	0097871b          	addiw	a4,a5,9
    80008e34:	04c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e38:	00e50733          	add	a4,a0,a4
    80008e3c:	00b70023          	sb	a1,0(a4)
    80008e40:	00a7871b          	addiw	a4,a5,10
    80008e44:	02c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e48:	00e50733          	add	a4,a0,a4
    80008e4c:	00b70023          	sb	a1,0(a4)
    80008e50:	00b7871b          	addiw	a4,a5,11
    80008e54:	02c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e58:	00e50733          	add	a4,a0,a4
    80008e5c:	00b70023          	sb	a1,0(a4)
    80008e60:	00c7871b          	addiw	a4,a5,12
    80008e64:	00c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e68:	00e50733          	add	a4,a0,a4
    80008e6c:	00b70023          	sb	a1,0(a4)
    80008e70:	00d7879b          	addiw	a5,a5,13
    80008e74:	00c7f663          	bgeu	a5,a2,80008e80 <__memset+0x1c8>
    80008e78:	00f507b3          	add	a5,a0,a5
    80008e7c:	00b78023          	sb	a1,0(a5)
    80008e80:	00813403          	ld	s0,8(sp)
    80008e84:	01010113          	addi	sp,sp,16
    80008e88:	00008067          	ret
    80008e8c:	00b00693          	li	a3,11
    80008e90:	e55ff06f          	j	80008ce4 <__memset+0x2c>
    80008e94:	00300e93          	li	t4,3
    80008e98:	ea5ff06f          	j	80008d3c <__memset+0x84>
    80008e9c:	00100e93          	li	t4,1
    80008ea0:	e9dff06f          	j	80008d3c <__memset+0x84>
    80008ea4:	00000e93          	li	t4,0
    80008ea8:	e95ff06f          	j	80008d3c <__memset+0x84>
    80008eac:	00000793          	li	a5,0
    80008eb0:	ef9ff06f          	j	80008da8 <__memset+0xf0>
    80008eb4:	00200e93          	li	t4,2
    80008eb8:	e85ff06f          	j	80008d3c <__memset+0x84>
    80008ebc:	00400e93          	li	t4,4
    80008ec0:	e7dff06f          	j	80008d3c <__memset+0x84>
    80008ec4:	00500e93          	li	t4,5
    80008ec8:	e75ff06f          	j	80008d3c <__memset+0x84>
    80008ecc:	00600e93          	li	t4,6
    80008ed0:	e6dff06f          	j	80008d3c <__memset+0x84>

0000000080008ed4 <__memmove>:
    80008ed4:	ff010113          	addi	sp,sp,-16
    80008ed8:	00813423          	sd	s0,8(sp)
    80008edc:	01010413          	addi	s0,sp,16
    80008ee0:	0e060863          	beqz	a2,80008fd0 <__memmove+0xfc>
    80008ee4:	fff6069b          	addiw	a3,a2,-1
    80008ee8:	0006881b          	sext.w	a6,a3
    80008eec:	0ea5e863          	bltu	a1,a0,80008fdc <__memmove+0x108>
    80008ef0:	00758713          	addi	a4,a1,7
    80008ef4:	00a5e7b3          	or	a5,a1,a0
    80008ef8:	40a70733          	sub	a4,a4,a0
    80008efc:	0077f793          	andi	a5,a5,7
    80008f00:	00f73713          	sltiu	a4,a4,15
    80008f04:	00174713          	xori	a4,a4,1
    80008f08:	0017b793          	seqz	a5,a5
    80008f0c:	00e7f7b3          	and	a5,a5,a4
    80008f10:	10078863          	beqz	a5,80009020 <__memmove+0x14c>
    80008f14:	00900793          	li	a5,9
    80008f18:	1107f463          	bgeu	a5,a6,80009020 <__memmove+0x14c>
    80008f1c:	0036581b          	srliw	a6,a2,0x3
    80008f20:	fff8081b          	addiw	a6,a6,-1
    80008f24:	02081813          	slli	a6,a6,0x20
    80008f28:	01d85893          	srli	a7,a6,0x1d
    80008f2c:	00858813          	addi	a6,a1,8
    80008f30:	00058793          	mv	a5,a1
    80008f34:	00050713          	mv	a4,a0
    80008f38:	01088833          	add	a6,a7,a6
    80008f3c:	0007b883          	ld	a7,0(a5)
    80008f40:	00878793          	addi	a5,a5,8
    80008f44:	00870713          	addi	a4,a4,8
    80008f48:	ff173c23          	sd	a7,-8(a4)
    80008f4c:	ff0798e3          	bne	a5,a6,80008f3c <__memmove+0x68>
    80008f50:	ff867713          	andi	a4,a2,-8
    80008f54:	02071793          	slli	a5,a4,0x20
    80008f58:	0207d793          	srli	a5,a5,0x20
    80008f5c:	00f585b3          	add	a1,a1,a5
    80008f60:	40e686bb          	subw	a3,a3,a4
    80008f64:	00f507b3          	add	a5,a0,a5
    80008f68:	06e60463          	beq	a2,a4,80008fd0 <__memmove+0xfc>
    80008f6c:	0005c703          	lbu	a4,0(a1)
    80008f70:	00e78023          	sb	a4,0(a5)
    80008f74:	04068e63          	beqz	a3,80008fd0 <__memmove+0xfc>
    80008f78:	0015c603          	lbu	a2,1(a1)
    80008f7c:	00100713          	li	a4,1
    80008f80:	00c780a3          	sb	a2,1(a5)
    80008f84:	04e68663          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008f88:	0025c603          	lbu	a2,2(a1)
    80008f8c:	00200713          	li	a4,2
    80008f90:	00c78123          	sb	a2,2(a5)
    80008f94:	02e68e63          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008f98:	0035c603          	lbu	a2,3(a1)
    80008f9c:	00300713          	li	a4,3
    80008fa0:	00c781a3          	sb	a2,3(a5)
    80008fa4:	02e68663          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008fa8:	0045c603          	lbu	a2,4(a1)
    80008fac:	00400713          	li	a4,4
    80008fb0:	00c78223          	sb	a2,4(a5)
    80008fb4:	00e68e63          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008fb8:	0055c603          	lbu	a2,5(a1)
    80008fbc:	00500713          	li	a4,5
    80008fc0:	00c782a3          	sb	a2,5(a5)
    80008fc4:	00e68663          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008fc8:	0065c703          	lbu	a4,6(a1)
    80008fcc:	00e78323          	sb	a4,6(a5)
    80008fd0:	00813403          	ld	s0,8(sp)
    80008fd4:	01010113          	addi	sp,sp,16
    80008fd8:	00008067          	ret
    80008fdc:	02061713          	slli	a4,a2,0x20
    80008fe0:	02075713          	srli	a4,a4,0x20
    80008fe4:	00e587b3          	add	a5,a1,a4
    80008fe8:	f0f574e3          	bgeu	a0,a5,80008ef0 <__memmove+0x1c>
    80008fec:	02069613          	slli	a2,a3,0x20
    80008ff0:	02065613          	srli	a2,a2,0x20
    80008ff4:	fff64613          	not	a2,a2
    80008ff8:	00e50733          	add	a4,a0,a4
    80008ffc:	00c78633          	add	a2,a5,a2
    80009000:	fff7c683          	lbu	a3,-1(a5)
    80009004:	fff78793          	addi	a5,a5,-1
    80009008:	fff70713          	addi	a4,a4,-1
    8000900c:	00d70023          	sb	a3,0(a4)
    80009010:	fec798e3          	bne	a5,a2,80009000 <__memmove+0x12c>
    80009014:	00813403          	ld	s0,8(sp)
    80009018:	01010113          	addi	sp,sp,16
    8000901c:	00008067          	ret
    80009020:	02069713          	slli	a4,a3,0x20
    80009024:	02075713          	srli	a4,a4,0x20
    80009028:	00170713          	addi	a4,a4,1
    8000902c:	00e50733          	add	a4,a0,a4
    80009030:	00050793          	mv	a5,a0
    80009034:	0005c683          	lbu	a3,0(a1)
    80009038:	00178793          	addi	a5,a5,1
    8000903c:	00158593          	addi	a1,a1,1
    80009040:	fed78fa3          	sb	a3,-1(a5)
    80009044:	fee798e3          	bne	a5,a4,80009034 <__memmove+0x160>
    80009048:	f89ff06f          	j	80008fd0 <__memmove+0xfc>
	...
