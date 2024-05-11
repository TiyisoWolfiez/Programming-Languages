      program Statistics
      implicit none
      
      ! Declare variables
      integer data(5)
      integer smallest, largest, mode_value
      
      ! Call readData subroutine to populate the data array
      call readData(data)
      
      ! Find the smallest value
      smallest = findSmallest(data)
      
      ! Find the largest value
      largest = findLargest(data)
      
      ! Find the mode
      mode_value = mode(data)
      
      ! Print the results
      print '(A, I0)', "Smallest value: ", smallest
      print '(A, I0)', "Largest value: ", largest
      print '(A, I0)', "Mode: ", mode_value
      
      contains
      
      ! Subroutine to read data into an array
      subroutine readData(arr)
          integer arr(5)
          integer i
          
          print *, "Enter five integer values:"
          do i = 1, 5
              read(*, *) arr(i)
          end do
      end subroutine readData
      
      ! Function to find the smallest value in an array
      integer function findSmallest(arr)
          integer arr(5)
          integer i
          
          findSmallest = arr(1)
          do i = 2, 5
              if (arr(i) < findSmallest) then
                  findSmallest = arr(i)
              end if
          end do
      end function findSmallest
      
      ! Function to find the largest value in an array
      integer function findLargest(arr)
          integer arr(5)
          integer i
          
          findLargest = arr(1)
          do i = 2, 5
              if (arr(i) > findLargest) then
                  findLargest = arr(i)
              end if
          end do
      end function findLargest
      
      ! Function to find the mode of values in an array
      integer function mode(arr)
          integer arr(5)
          integer count(5), i, j, max_count
          
          ! Initialize count array
          count = 0
          
          ! Count occurrences of each value
          do i = 1, 5
              do j = 1, 5
                  if (arr(i) == arr(j)) then
                      count(i) = count(i) + 1
                  end if
              end do
          end do
          
          ! Find the value with the maximum count
          max_count = 0
          do i = 1, 5
              if (count(i) > max_count) then
                  mode = arr(i)
                  max_count = count(i)
              end if
          end do
      end function mode
      
      end program Statistics

! gfortran -std=f2008 -o Statistics Statistics.f
! ./Statistics
