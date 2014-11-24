.CODE
    INIT:
        jsr SEQFIBONACCI
        lda #0
        sta n1
        lda #1
        sta n2
        SEQFIBONACCI:
            lda p
            add #2
            sta p
            lda n
            LOOP:
                jz  FIM
                lda n1
                add n2
                sta nxt
                sta p,I
                lda n2
                sta n1
                lda nxt
                sta n2
                lda p
                add #1
                lda n
                add #-1
                sta n
                jmp INIT
.ENDCODE

.DATA
    n:      db  #7      ;Seq FIB
    n1:     db  #0
    n2:     db  #1
    nxt:    db  #0
    p:      db  #vet
    vet:    db  #0, #1, #0, #0, #0, #0, #0
.ENDDATA