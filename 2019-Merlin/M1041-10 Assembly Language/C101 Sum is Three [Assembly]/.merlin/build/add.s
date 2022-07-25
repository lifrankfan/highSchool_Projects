        .global _start

	.text
_start:
	# write(1, message, 12)
	mov     $1, %rax                # system call 1 is write
	mov     $1, %rdi                # file handle 1 is stdout
	mov     $message, %rsi          # address of string to output
	mov     $12, %rdx               # number of bytes
	syscall                         # invoke operating system to do the write

	# Add two single-digit numbers
	mov	$1, %bl			# First single-digit number
	add	$2, %bl			# Second single-digit number

	# Translate to ASCII and store character
	add	$48, %bl		# Translate to ASCII
	mov	$sum, %rax		# Store character in memory
	mov 	%bl, (%rax)
	
	# write(1, sum, 1)
	mov     $1, %rax                # system call 1 is write
	mov     $1, %rdi                # file handle 1 is stdout
	mov     $sum, %rsi              # address of string to output
	mov     $1, %rdx                # number of bytes
	syscall                         # invoke operating system to do the write

	# exit(0)
	mov     $60, %rax               # system call 60 is exit
	xor     %rdi, %rdi              # we want return code 0
	syscall                         # invoke operating system to exit
	
message:
	.ascii  "The sum is: "
	

	.bss
sum:
	.space	1
	
