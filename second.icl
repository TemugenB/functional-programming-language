module second
import StdEnv


/*1. Given a and b and c write a function that computes:
(a+b)*c + (a+b-1)*(c-1) + .... + (a+b-c+1)*1 + (a+b-c)*0
*/

sums :: Int Int Int -> Int
sums a b 0 = 0
sums a b c = (a+b)*c + sums a (b-1) (c-1)

Start = sums 2 3 4 // 40
// (2+3)*4 + (2+2)*3 + (2+1)*2 + (2+0)*1 + (2+(-1))*0

//Start = sums 4 3 2 // 20

//Start = sums 5 5 10 // 385

//Start = sums 0 0 0 // 0

//Start = sums 1 1 1 // 2

//Start = sums 10 10 10 // 935



/*
	2. You are given a list of lists. You must process every list in the following way:
		if the length of the list is even - it gives the first element of the list
		if the length of the list is odd  - it gives the middle element of the list
*/

task1 :: [[Int]] -> [Int]
task1 [] = []
task1 [x:xs]
| isEven (length x) = [hd x : task1 xs]
= [x !! ((length x)/2) : task1 xs]

//Start = task1 [[1, 2], [1, 2, 3]] // [1,2]
//Start = task1 [[1, 2, 3, 4, 5], [1]] // [3,1]
//Start = task1 [[4, 5, 1], [7, 3, 8, 9], [12, 7, 3, 1, 6, 8, 11]] // [5,7,1]
//Start = task1 [[4, 7], [1, 2], [5, 6], [9, 3], [5, 2]] // [4,1,5,9,5]
//Start = task1 [[23, 32]] // [23]



// 3.Given the list of tuples, where each tuple contains 3 integers. Write a function which
// sorts all numbers in ascending order, but keeps the sorted numbers in tuples of 3.
// Ex.: [(3,2,7),(1,6,8),(5,9,4)] -> [(1,2,3),(4,5,6),(7,8,9)]

collect :: [(Int,Int,Int)] -> [Int]
collect [] = []
collect [(x,y,z): t] = [x,y,z : collect t]

tupleing :: [Int] -> [(Int,Int,Int)]
tupleing [] = []
tupleing [a,b,c:t] = [(a,b,c) : tupleing t]

tuple_sort :: [(Int,Int,Int)] -> [(Int,Int,Int)]
tuple_sort x = tupleing (sort (collect x)) 

//Start = tuple_sort [(3,2,7),(1,6,8),(5,9,4)] // [(1,2,3),(4,5,6),(7,8,9)]
//Start = tuple_sort [(1,4,6),(9,2,3),(4,12,34)] // [(1,2,3),(4,4,6),(9,12,34)]
//Start = tuple_sort [(2,43,12),(45,6,3),(12,34,56),(3,2,1)] // [(1,2,2),(3,3,6),(12,12,34),(43,45,56)]
Start = tuple_sort [] // []
