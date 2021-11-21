.text #секция кода
fib:
.globl fib
    li t0, 1        #x, текущий член последовательности
    li t1, 1        #y, следующий член последовательности
    li t2, 0        #с, вспомогательная переменная
    li a3, 1        #const 1
    li a4, 2        #const 2
    beq a1, a3, loop_exit #если искомый номер 1, заканчиваем работу выводим y
    beq a1, a4, loop_exit #если искомый номер 2, заканчиваем работу выводим y
loop:
    addi t2, t1, 0    #t2 = t1 (c = x)
    add t1, t1, t0    #t1 += t0 (y += x)
    addi t0, t2, 0    #t0 = t2 (x = c)
    sub a1, a1, a3    #a2--
    bne a1, a4, loop  #if(number!=2) выполнить еще одну итерацию
loop_exit:
    addi a1, t1, 0    #вписали ответ в а1
    ret