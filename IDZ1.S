.LC0:
        .string "Enter size of array A:"
.LC1:
        .string "%d"
.LC2:
        .string "Now input the array elements separated by a space:"
.LC3:
        .string "Array B:"
.LC4:
        .string "%d "
main:
        push    rbp
        mov     rbp, rsp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 104
        mov     rax, rsp
        mov     rbx, rax
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        lea     rax, [rbp-108]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-108]
        movsx   rdx, eax
        sub     rdx, 1
        mov     QWORD PTR [rbp-72], rdx
        movsx   rdx, eax
        mov     QWORD PTR [rbp-128], rdx
        mov     QWORD PTR [rbp-120], 0
        movsx   rdx, eax
        mov     QWORD PTR [rbp-144], rdx
        mov     QWORD PTR [rbp-136], 0
        cdqe
        lea     rdx, [0+rax*4]
        mov     eax, 16
        sub     rax, 1
        add     rax, rdx
        mov     esi, 16
        mov     edx, 0
        div     rsi
        imul    rax, rax, 16
        sub     rsp, rax
        mov     rax, rsp
        add     rax, 3
        shr     rax, 2
        sal     rax, 2
        mov     QWORD PTR [rbp-80], rax
        mov     DWORD PTR [rbp-60], 2147483647
        mov     edi, OFFSET FLAT:.LC2
        call    puts
        mov     DWORD PTR [rbp-52], 0
        jmp     .L2
.L4:
        mov     eax, DWORD PTR [rbp-52]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-80]
        add     rax, rdx
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        mov     rax, QWORD PTR [rbp-80]
        mov     edx, DWORD PTR [rbp-52]
        movsx   rdx, edx
        mov     eax, DWORD PTR [rax+rdx*4]
        cmp     DWORD PTR [rbp-60], eax
        jle     .L3
        mov     rax, QWORD PTR [rbp-80]
        mov     edx, DWORD PTR [rbp-52]
        movsx   rdx, edx
        mov     eax, DWORD PTR [rax+rdx*4]
        mov     DWORD PTR [rbp-60], eax
        mov     eax, DWORD PTR [rbp-52]
        mov     DWORD PTR [rbp-56], eax
.L3:
        add     DWORD PTR [rbp-52], 1
.L2:
        mov     eax, DWORD PTR [rbp-108]
        cmp     DWORD PTR [rbp-52], eax
        jl      .L4
        mov     rax, QWORD PTR [rbp-80]
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rbp-84], eax
        mov     eax, DWORD PTR [rbp-108]
        movsx   rdx, eax
        sub     rdx, 1
        mov     QWORD PTR [rbp-96], rdx
        movsx   rdx, eax
        mov     r14, rdx
        mov     r15d, 0
        movsx   rdx, eax
        mov     r12, rdx
        mov     r13d, 0
        cdqe
        lea     rdx, [0+rax*4]
        mov     eax, 16
        sub     rax, 1
        add     rax, rdx
        mov     ecx, 16
        mov     edx, 0
        div     rcx
        imul    rax, rax, 16
        sub     rsp, rax
        mov     rax, rsp
        add     rax, 3
        shr     rax, 2
        sal     rax, 2
        mov     QWORD PTR [rbp-104], rax
        mov     rax, QWORD PTR [rbp-104]
        mov     edx, DWORD PTR [rbp-60]
        mov     DWORD PTR [rax], edx
        mov     DWORD PTR [rbp-52], 1
        jmp     .L5
.L8:
        mov     eax, DWORD PTR [rbp-52]
        cmp     eax, DWORD PTR [rbp-56]
        jne     .L6
        mov     rax, QWORD PTR [rbp-104]
        mov     edx, DWORD PTR [rbp-52]
        movsx   rdx, edx
        mov     ecx, DWORD PTR [rbp-84]
        mov     DWORD PTR [rax+rdx*4], ecx
        jmp     .L7
.L6:
        mov     rax, QWORD PTR [rbp-80]
        mov     edx, DWORD PTR [rbp-52]
        movsx   rdx, edx
        mov     ecx, DWORD PTR [rax+rdx*4]
        mov     rax, QWORD PTR [rbp-104]
        mov     edx, DWORD PTR [rbp-52]
        movsx   rdx, edx
        mov     DWORD PTR [rax+rdx*4], ecx
.L7:
        add     DWORD PTR [rbp-52], 1
.L5:
        mov     eax, DWORD PTR [rbp-108]
        cmp     DWORD PTR [rbp-52], eax
        jl      .L8
        mov     edi, OFFSET FLAT:.LC3
        call    puts
        mov     DWORD PTR [rbp-52], 0
        jmp     .L9
.L10:
        mov     rax, QWORD PTR [rbp-104]
        mov     edx, DWORD PTR [rbp-52]
        movsx   rdx, edx
        mov     eax, DWORD PTR [rax+rdx*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-52], 1
.L9:
        mov     eax, DWORD PTR [rbp-108]
        cmp     DWORD PTR [rbp-52], eax
        jl      .L10
        mov     rsp, rbx
        mov     eax, 0
        lea     rsp, [rbp-40]
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
