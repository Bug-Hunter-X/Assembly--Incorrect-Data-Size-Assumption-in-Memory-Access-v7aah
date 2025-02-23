# Assembly: Incorrect Data Size Assumption in Memory Access

This repository demonstrates a common error in assembly language programming: incorrect assumptions about the size of data being accessed in memory.  The `bug.asm` file contains code with this error, leading to potential memory corruption.  The `bugSolution.asm` file shows the corrected code. 

The issue arises from using a scaled addressing mode (e.g. `[ebx + 4*ecx]`) without ensuring the scale factor (4 in this case) matches the size of the data. If the intended data type is larger (e.g., a double-precision floating-point number requiring 8 bytes), this leads to incorrect memory access. 

The solution demonstrates how to handle this, using an appropriate scale factor or manual offset calculation for accurate memory access. This ensures the code correctly handles data of different sizes.