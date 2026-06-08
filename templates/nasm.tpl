!!cnh {"suffix":["asm", "S"]}
; **************************************************************************************************************
; File: {{ cnh_file }}
; Author: {{ cnh_name }}
; Created: {{ cnh_date }}
{% if exists("cnh_has_copyright") %}
; {{ cnh_has_copyright }}
{% endif %}
{% if exists("cnh_description") %}
; Description: {{ cnh_description }}
{% endif %}
; **************************************************************************************************************

section     .text
global      _start 
_start: 
    mov     edx,len
    mov     ecx,msg
    mov     ebx,1
    mov     eax,4
    int     0x80
    mov     eax,1
    int     0x80
section     .data
msg     db  'Hello world',0xa
len     equ $ - msg

