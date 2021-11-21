.text  
__start: 
.globl __start
    call main         
    #auipc ra, %pcrel_hi(main)       значения pcrel вычисляются позже - на этапе компоновки
    #jalr ra, ra, %pcrel_lo(main)              
finish: 
    li a0, 17  # a0 = 17 
    ecall      # выход с кодом завершения