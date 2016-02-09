all: brainfuck

brainfuck:
	gcc -Wall -Werror -Wextra brainfuck.c -o brainfuck

test: all
	./brainfuck "+>+++++++[>>>++++++++<<<<++++++++>-]+++++++++>>>+>>++++++++++[>++++++++++<-]>[>>+>+>+>+>+>+>+>>+>+>>+>+>+>+>>+>+>>+>+>+>>+>+>+>+>>>>>+>+>+>+>>+>+>+>>+>+>+>+>>+>+>+>>+>+>+>+>>+>+>>+>+>+>+>+>+>>>>+>+>>+>+>+>+<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]<++++[>++++++++<-]>[>+>>>>>>>>+>>>+>>>>>+>>>+>>>>+>>>>>+>+>>+>>>>>+>>>>+>>>>>+>>>>+>>>>>+>>>+>>>>>>>+>+>+>>>+>>>>>+<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]+++++[>>>++>+++>+++>++>>+++>>++>>>>>>+++>>++>++>>+++>+>>>++++>->++>++>++>+++>++>>--->->+>>>++>++>>>>++>++++>++>>->++>>>++>->+++>+++>>+>+++>>>+++>++>+++>++>>>++>>++>++>>++>++>+++<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]>>-->+>+>+>-->+>>>+>++>>-->+>+>->>+>>>+>->+>>->++>-->-->++>->>>->++>++>+>>+>>+>>>+>->>>++>>>>++>++>>>>>+>>++>->+>++>>>>+++>>>+>>->+>->+<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<[>>>>++++++++++[->[-]+>[-]<<[<<<<<.>>>>.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<.>>>>.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>>>>>>>>>>>>.>.>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<.>>>>-.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>.>..<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]>[<<<<<->[-]+>[-]<<[<.>>>>.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<.>>>>.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>>>>>>>>>>>>.>.>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-.>>>>+++++++++.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>.>..<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]>[<<.>>>>.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<.>>>>.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>>>>>>>>>>>>.>.>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<+++++++++.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>.>..<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<->]<<+>>>>>->]<<]<<<<-]>>>>++++++++[->[-]+>[-]<<[<.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>>>>>>>>>>>>.>.>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>.>..<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]>[<<.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<.>>>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>>>>>>>>>>>>.>.>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-.>>>>.>.>.>.>.>.>.>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>.>..<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<->]<<]<.>>>>.>.>.>.>.>.>.>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<.>>>>.>.>.>.>.>.>.>>.>.>.>.>.>.>.>.>>>>>>>>>>>>>>.>.>>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>.>>.>"

clean:
	rm brainfuck