(defun main () (format t "~d" "Hello, World!"))
(lambda (list) (list* :sb-core-compression list))
(sb-ext:save-lisp-and-die "main" :toplevel #'main :executable t :compression t)
