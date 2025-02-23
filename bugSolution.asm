mov eax, [ebx + 8*ecx] ; Corrected line to handle 8-byte data.  
;Alternatively, explicitly calculate the offset:
mov ecx, 2 ; If using a double in ecx
mov esi, ebx 
add esi, ecx ;calculate offset
mov eax, [esi] ;Access the double correctly