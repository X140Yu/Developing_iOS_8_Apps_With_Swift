# 阅读任务 I：初识 Swift 

## 目标 
我们第一周阅读任务的目标是为了让你们对必须学习的 Swift 语言有一个初步的认识。我们将会介绍一些基本的东西，例如变量和流程控制，但也会介绍一些比较高阶的话题，例如闭包（把函数作为类型）。

你们大部分可能没有 Objective-C 的编程经验，但是不用担心。Swift 中的文档从来没要求你需要这些技能。然而，如果你从来没有用 C（或者 C++ 和其它语言）编过程，那么你会觉得 Swift 非常陌生（但是还是希望你能够克服这些困难来学习它）。

## 材料 
- 所有的阅读材料都来自 [Swift Programming Language](https://developer.apple.com/library/mac/documentation/Swift/Conceptual/Swift_Programming_Language/index.html) 文档。(如果需要中文版，可以参阅 [中文版 Apple 官方 Swift 教程《The Swift Programming Language》](https://github.com/numbbbbb/the-swift-programming-language-in-chinese))

## 需要阅读的章节 
为了充分利用你们的宝贵时间并且强调一些重点概念，阅读的章节被分成以下四个种类：
- [Red] ___非常重要___而且可能比较难理解。阅读的时候尽量用心。
- [Yellow] 重要，但是不难理解。
- [Green] 重要，但是只包含一些基本的简单的东西（大部分像 C 一样）。
- [Grayed-out] 不需要阅读（本周）。也许会在将来的几周用到。

千万别忽略 NOTE 中的文字（在灰色块中的）- 它们也很重要。

如果在你阅读的章节里发现了指向其它不是本次阅读规定的章节，可以不必点击。

在 ___Language Guide___ 部分，阅读下面的章节：

### The Basics
[Green] Constants and Variables  
[Yellow] Comments  
[Yellow] Semicolons  
[Yellow] Integers  
[Red] Floating-Point Numbers  
[Grayed-out] Type Safety and Type Inference Numeric Literals  
[Grayed-out] Numeric Type Conversion Type Aliases  
[Red] Booleans  
[Grayed-out] Tuples  
[Red] Optionals  
[Green] Assertions  

以 Unicode 字符命名常量和变量可能会很有趣，但是你需要为代码中的变量命名以及可读性负责（比如做注释）。

每行代码不要使用分号结尾（除非在极少数的情况用于分隔在一行中的两条语句）。

### Basic Operators

这章的大部分与 C 类似（这也是为什么大部分章节都是 [Green]）。

[Green] Terminology  
[Green] Assignment Operator (不要担心引用 tuples 的部分)   
[Green] Arithmetic Operators  
[Green] Compound Assignment Operators  
[Green] Comparison Operators  
[Green] Ternary Conditional Operator  
[Grayed-out] Nil Coalescing Operator  
[Green] Range Operators  
[Green] Logical Operators  

### Strings and Characters

不要担心章节介绍中灰色 NOTE 的部分。我们将在下周讨论 Objective-C 当中的类，例如：NSString。

[Green] String Literals  
[Yellow] Initializing an Empty String (暂时不用担心 “initializer syntax”)   
[Green] String Mutability  
[Red] Strings Are Value Types (不用担心 NOTE 部分)  
[Yellow] Working with Characters  
[Green] Concatenating Strings and Characters  
[Red] String Interpolation  
[Grayed-out] Unicode  
[Red] Counting Characters  
[Yellow] Comparing Strings  
[Grayed-out] Unicode Representations of Strings  

`let myArrayOfCharacters = Array(myString)` 可以将 `String` 类型的转换成 `Array<Character>` 类型的。因为这章在 `Array` 前面，所以这个方法还没提到。

### Collection Types

[Red] Mutability of Collections  
[Red] Arrays (不必担心在章节尾部提到的 initializers 部分)  
[Grayed-out] Dictionaries  

如果你试图越界访问 `Array` 之外的元素，你的程序会崩溃。  

`Array` 中有一个 `last` 方法，可以返回一个 `Optional`（当且仅当 `Array` 是空，会返回 `nil`)。

你需要了解，`+=` 数组运算符把另一个数组当做右值（而不是向这个数组添加一个元素）。

### Control Flow

[Green] For Loops (for-in 和 ranges 也许对于你们其中的一些人是新事物，例如：1..5)  
[Green] While Loops  
[Red] Conditional Statements (尤其是 Switch, 可以忽略 Tuples, Value Bindings & Where)   
[Red] Control Transfer Statements (忽略 Labeled Statements)  

Swift 中的 `switch` 语句比你之前在 C 或者其它语言中的使用要重要得多。

### Functions

[Red] Defining and Calling Functions  
[Red] Function Parameters and Return Values (忽略多个和 `Optional Tuple` 类型的返回值函数)  
[Grayed-out] Function Parameter Names  
[Red] Function Types (这也许是对你们中多数人的巨大挑战)   
[Yellow] Nested Functions  

### Closures

理解在 Swift 中，一个函数的描述（例如：它的参数和返回值）可以作为一种初始“类型”（就像 `Array` 或者 `Int`）是很重要的。许多 iOS 中的 API 把 closures 作为参数。

[Red] Closure Expressions (确保你理解了上面的 Function Types)   
[Yellow] Trailing Closures  
[Grayed-out] Capturing Values  
[Grayed-out] Closures are Reference Types  

### Classes and Structures

[Red] Comparing Classes and Structures  
[Grayed-out] Structures and Enumerations are Value Types  
[Grayed-out] Classes are Reference Types  
[Grayed-out] Choosing Between Classes and Structures  
[Grayed-out] Assignment and Copy Behavior for Strings, Arrays, and Dictionaries

这周我们只知道两种创建 `class` 或 `struct` 的方式：在 `class` 或 `struct` 名称之后加上一对圆括号，例如：`let x = VideoMode()`，或者对于 `struct` ，在名字之后，把它中的变量都赋初始值，例如：`let hd = Resolution(width: 1920, height: 1080)`。我们将在下周学习更多更有力的方式来初始化 `class` 和 `struct`。

### Properties

忽略掉引用的枚举(`enum`)部分。枚举很重要，但是我们将在下周详细讨论。

[Red] Stored Properties (忽略 `Lazy Stored Properties` 和 `Stored Properties and Instance Variables`)  
[Red] Computed Properties  
[Grayed-out] Property Observers  
[Grayed-out] Global and Local Variables Type Properties  


