program sumaDeMatrices
    implicit none

    integer :: a(2,2), b(2,2), r(2,2)
    integer :: x, z

    print *, "////presiona Enter al ingresar cada numero////"
    print *, " Matriz A, Ingresa 4 numeros: "

    do x = 1, 2
        do z = 1, 2
            read *, a(x,z)
        end do
    end do

    print *, " Matriz B, Ingresa 4 numeros: "
    do x = 1, 2
        do z = 1, 2
            read *, b(x,z)
        end do
    end do

    do x = 1, 2
        do z = 1, 2
            r(x,z) = a(x,z) + b(x,z)
        end do
    end do

    print *, "Resultado:"
    print *, r(1,1), " ", r(1,2)
    print *, r(2,1), " ", r(2,2)
    read(*,*)

end program sumaDeMatrices
