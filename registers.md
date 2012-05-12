
# Intel

  General 32-bit registers:

  __EAX__ - Accumulator Register
  __EBX__ - Base Register
  __ECX__ - Counter Register
  __EDX__ - Data Register
  __ESI__ - Source Index
  __EDI__ - Destination Index
  __EBP__ - Base Pointer
  __ESP__ - Stack Pointer

## Descriptions

  __EAX__ - All major calculations take place in EAX,
  making it similar to a dedicated accumulator register.

  __EDX__ - The data register is the an extension to the accumulator.
  It is most useful for storing data related to the accumulator's current calculation.

  __ECX__ - Like the variable i in high-level languages,
  the count register is the universal loop counter.

  __EDI__ - Every loop must store its result somewhere, and the
  destination index points to that place. With a single-byte STOS
  instruction to write data out of the accumulator, this register
  makes data operations much more size-efficient.

  __ESI__ - In loops that process data, the source index holds
  the location of the input data stream. Like the destination index,
  EDI had a convenient one-byte instruction for loading data out of
  memory into the accumulator.

  __ESP__ - ESP is the sacred stack pointer. With the important PUSH,
  POP, CALL, and RET instructions requiring it's value, there is never
  a good reason to use the stack pointer for anything else.

  __EBP__ - In functions that store parameters or variables on the
  stack, the base pointer holds the location of the current stack
  frame. In other situations, however, EBP is a free data-storage register.

  __EBX__ - In 16-bit mode, the base register was useful as a pointer.
  Now it is completely free for extra storage space.

