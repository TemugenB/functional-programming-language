module eighth
import StdEnv


:: Tree a = Node a (Tree a) (Tree a)
			|Leaf

treea = Node 2 (Node 5 (Node 3 (Node 24 Leaf Leaf) Leaf) (Node 6 Leaf (Node 7 Leaf Leaf))) (Node 8 (Node 15 Leaf (Node 10 Leaf (Node 14 Leaf Leaf))) (Node 13 Leaf (Node 16 Leaf Leaf)))
treeb = Node "abc" (Node "ghi" (Node "func" (Node "zyh" Leaf Leaf) Leaf) (Node "tional" Leaf (Node "haha" Leaf Leaf))) (Node "xyz" (Node "program" Leaf (Node "zyx" Leaf Leaf)) (Node "ming" Leaf (Node "cba" Leaf Leaf)))


/*
	Given a tree and an integer. Return the count of node in that level.
	The level where root exists is counted as level 1.
*/

nodeCountLevel :: (Tree a) Int -> Int
nodeCountLevel Leaf _ = 0
nodeCountLevel (Node a left right) 1 = 1
nodeCountLevel (Node a left right) h = nodeCountLevel left (h-1) + nodeCountLevel right (h-1)

//Start = nodeCountLevel treea 5  // 1
//Start = nodeCountLevel treeb 6  // 0
//Start = nodeCountLevel treea 3  // 4
//Start = nodeCountLevel treea 1  // 1
//Start = nodeCountLevel treeb 2  // 2


tree1 = (Node 4 (Node 10 (Node 6 Leaf Leaf)(Node 11 Leaf Leaf)) (Node 20 (Node 12 Leaf Leaf) Leaf))
tree2 = (Node 5 (Node 10 (Node 31 (Node 1 Leaf Leaf) Leaf) Leaf) (Node 17 (Node 31 (Node 14 (Node 12 Leaf Leaf) Leaf) Leaf) (Node 11 Leaf Leaf) ))
tree3 = (Node 12 (Node 11 (Node 11 (Node 32 Leaf Leaf) Leaf) Leaf) (Node 4 (Node 17 (Node 5 (Node 7 Leaf Leaf) Leaf) Leaf) (Node 3 Leaf (Node 4 Leaf Leaf)) ))
tree4 = (Node 7 (Node 11 tree1 tree2) (Node 5 tree3 tree2))
tree5 = Node 1 tree3 tree4
/* 2. Given the binary tree, find how many nodes are there such that they have exactly
3 grandchildren non-leaf nodes.
Ex.: 1
    / \
   2   3
  / \ / \
 4  5 6 Leaf
1st node has exactly 3 grandchildrens, so it's a 'good' node.
*/
goL :: (Tree Int) -> (Tree Int)
goL (Node x l r) = l 

goR :: (Tree Int) -> (Tree Int)
goR (Node x l r) = r 

isLeaf :: (Tree Int) -> Int
isLeaf Leaf = 1
isLeaf _ = 0

isGood :: (Tree Int) -> Bool
isGood (Node x Leaf _) = False
isGood (Node x _ Leaf) = False
isGood (Node x l r) = (isLeaf(ll) + isLeaf(lr) + isLeaf(rr) + isLeaf(rl) == 1)
    where
        ll = goL l
        lr = goR l 
        rr = goR r 
        rl = goL r 

countTripleParents :: (Tree Int) -> Int
countTripleParents Leaf = 0
countTripleParents (Node x l r)
| isGood (Node x l r) = 1 + countTripleParents l + countTripleParents r 
= countTripleParents l + countTripleParents r 

//Start = countTripleParents tree1 // 1
//Start = countTripleParents tree2 // 1
//Start = countTripleParents tree3 // 1
//Start = countTripleParents tree4 // 4
//Start = countTripleParents tree5 // 5

/* 1. 
	  Define a Person record which contains name and height two fields,
	  with type of String and Real respectively. Write a function which takes a person
	  and a certain height, if the person is taller than 1.70, subtract their height by 1%

*/
::Person1 = { name :: String, tall :: Real}
John::Person1
John={name = "John", tall= 1.78}
Mike::Person1
Mike={name = "Mike", tall= 1.58}
Lily::Person1
Lily={name = "Lily", tall= 1.85}

ChangeHeight :: Person1 -> Person1
ChangeHeight rec 
| rec.tall > 1.70 = {rec & tall=rec.tall-(rec.tall*0.01)}
= rec

//Start = ChangeHeight John // (Person1 "John" 1.7622)
//Start = ChangeHeight Mike // (Person1 "Mike" 1.58)
//Start = ChangeHeight Lily // (Person1 "Lily" 1.8315)

::Department = {
		deptno:: Int,
		dname :: String,
		loc :: String
	} 

::Employee = {
		ename :: String,
		sal :: Int,
		dept :: Department
	}
dept1 = { deptno = 10, dname = "Sales", loc = "New York" }
dept2 = { deptno = 20, dname = "Marketing", loc = "Los Angeles" }
dept3 = { deptno = 30, dname = "Human Resources", loc = "Chicago" }
dept4 = { deptno = 40, dname = "Finance", loc = "Houston" }
dept5 = { deptno = 50, dname = "IT", loc = "San Francisco" }

employee1 = { ename = "John Doe", sal = 700, dept = dept2 }
employee2 = { ename = "Jane Smith", sal = 500, dept = dept1 }
employee3 = { ename = "Tom Johnson", sal = 1800, dept = dept3 }
employee4 = { ename = "Sarah Lee", sal = 3000, dept = dept5 }
employee5 = { ename = "Mark Brown", sal = 2500, dept = dept4 }
employee6 = { ename = "Alex Wong", sal = 3200, dept = dept5 }
employee7 = { ename = "Emily Chen", sal = 1900, dept = dept3 }
employee8 = { ename = "Mike Davis", sal = 1700, dept = dept2 }
employee9 = { ename = "Lisa Kim", sal = 2100, dept = dept4 }
employee10 = { ename = "Kevin Patel", sal = 3300, dept = dept1 }
employee11 = { ename = "David Lee", sal = 2400, dept = dept2 }
employee12 = { ename = "Karen Brown", sal = 900, dept = dept1 }
employee13 = { ename = "Steven Kim", sal = 2000, dept = dept3 }
employee14 = { ename = "Jennifer Lee", sal = 4200, dept = dept5 }
employee15 = { ename = "Chris Johnson", sal = 1900, dept = dept4 }

employees = [employee1, employee2, employee3, employee4, employee5, employee6, employee7, employee8, employee9, employee10, employee11, employee12, employee13, employee14, employee15]

departments = [dept1, dept2, dept3, dept4, dept5]

/*
 	a. Given a list of employees, and the department number. Return the average salary for the given department number.
 	b. Return a list of tuples containing department names and average salaries(String,Int)
*/

AvgsalDepartment :: [Employee] Int -> Int
AvgsalDepartment emp deptno = (sum[ x.sal \\ x <- emp | x.dept.deptno == deptno])/(length [ x.sal \\ x <- emp | x.dept.deptno == deptno])

AvgsalList :: [Department] [Employee] -> [(String,Int)]
AvgsalList [] _=[]
AvgsalList [d:ds] emp=[(d.dname,AvgsalDepartment emp d.deptno)]++ (AvgsalList ds emp)


//Start = AvgsalDepartment employees 20 //1600 
//Start = AvgsalDepartment employees 30  // 1900
//Start = AvgsalDepartment employees 40  // 2166
//Start = AvgsalDepartment employees 50	// 3466
//Start=AvgsalList departments employees //[("Sales",1566),("Marketing",1600),("Human Resources",1900),("Finance",2166),("IT",3466)]
