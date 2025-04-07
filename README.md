# functional-programming-language
🧼✨ A collection of programming exercises solved using the Clean functional language. This repository showcases functional programming concepts such as recursion, higher-order functions, and data structures such as list, tuples, and trees in Clean.

## 📚 Topics Covered

### 🔹 Clean Language Basics
- **Syntax and Semantics**: Rules, function naming, operator usage, indentation, and start expressions.
- **Module System**: Using `module` and `import StdEnv`.
- **Data Types**: 
  - Primitive types: `Int`, `Real`, `Bool`, `Char`, `String`
  - Structured types: `List`, `Tuple`, `Record`, `Array`
  - Algebraic & Abstract data types

### 🔹 Functional Programming Paradigm
- **Pure Functions**: No side effects, deterministic behavior.
- **Immutability**: Data structures are immutable by default.
- **Recursion over Loops**: Emphasis on recursive definitions.
- **Higher-Order Functions**: `map`, `filter`, `foldr`, `until`, `iterate`, etc.
- **Currying and Partial Application**: Functions as first-class citizens.
- **Lazy vs Eager Evaluation**: Evaluation strategy comparisons.

### 🔹 Type System
- **Polymorphic Types**: Functions that work on any type, e.g., `:: [a] -> a`
- **Overloading & Classes**: Multiple functions with the same name for different types.
- **Type Synonyms & Macros**: Reusable names for existing types.
- **Arity**: Understanding function argument count.

### 🔹 Core Programming Structures
- **List Operations**: Construction, transformation, comprehension, and sorting.
- **Tuple & Record Handling**: Pattern matching and data access.
- **Array Manipulations**: Unique arrays, comprehensions, and updates.
- **Boolean Logic**: Using operators like `&&`, `||`, `not`.

### 🔹 Numerical Functions
- Arithmetic: `+`, `-`, `*`, `/`, `mod`, `rem`
- Comparisons: `<`, `>`, `==`, `<>`, `<=`, `>=`
- Built-ins: `abs`, `sign`, `gcd`, `isEven`, `isOdd`, `sqrt`, `ln`, `exp`, `sin`

### 🔹 Advanced Functional Constructs
- **Operator Precedence & Associativity**
- **Operator Functions & Custom Definitions**
- **Function Composition (`o`)**
- **Redex and Normal Forms**: Reduction process, lazy evaluation.
- **Global Constants (CAF)**
- **Formal vs Actual Parameters**

### 🔹 Algebraic Data Types
- **Type Definitions**: Using `::` to define custom types.
- **Constructors**: Named variants to model different cases (e.g., `data Tree = Leaf | Node Int Tree Tree`).
- **Pattern Matching**: Deconstructing values based on their constructors.
- **Recursive Types**: Structuring self-referencing types like trees and linked lists.

### 🔹 List, Tree, and Tuple Structures
- **Lists**: Immutable collections with recursive definitions, processed via pattern matching or higher-order functions.
- **Tuples**: Fixed-size groupings of values, accessible via pattern matching.
- **Trees**: Hierarchical structures (binary trees, etc.) modeled using algebraic data types.

### 🔹 Recursion & Higher-Order Functions
- **Recursive Functions**: Core to Clean for iteration-like behavior (e.g., factorial, tree traversal).
- **Higher-Order Functions**: Functions that take or return other functions (e.g., `map`, `foldr`, `filter`, `compose`).
- **Abstraction**: Generalizing functionality over types and behaviors using higher-order logic.

### 🔹 Record & Array Comprehension
- **Pattern-Matching Based Data Access**: Extract fields from records and arrays using matching syntax.
- **Functional Update with `&`**: Immutably update fields in a record (e.g., `{r & name = "New"}`).
- **Array Updates with `\\` and Index Binding**: Modify arrays using indexed update notation (e.g., `a =: (2, "hi") \\ [(1, "x")]`).
