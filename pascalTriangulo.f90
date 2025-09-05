program pascalTriangulo
    implicit none
    integer :: lados, i, j, k
    integer, dimension(25, 25) :: triangulo

    print *, '=== Triangulo de Pascal ==='
    print *, 'Cuantos lados: '
    read(*,*) lados


    triangulo = 0

    do i = 1, lados
        triangulo(i, 1) = 1
        triangulo(i, i) = 1


        if (i > 2) then
            do j = 2, i - 1
                triangulo(i, j) = triangulo(i-1, j-1) + triangulo(i-1, j)
            end do
        end if
    end do

    print *, ''
    print *, 'Triangulo de Pascal:'
    print *, ''

    do i = 1, lados

        do k = 1, lados - i + 1
            write(*, '(A)', advance='no') '  '
        end do


        do j = 1, i
            write(*, '(I4)', advance='no') triangulo(i, j)
        end do

        print *, ''
    end do
    read(*,*)
end program pascalTriangulo
