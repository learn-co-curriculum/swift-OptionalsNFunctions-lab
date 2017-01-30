/*: Outline
 
 
 # Optionals & Functions
 
 ### Readings associated with this lab
 
 * [Optionals](https://github.com/learn-co-curriculum/swift-optionals-readme)
 * [Optionals & Functions](https://github.com/learn-co-curriculum/swift-optionalFunc-readme)
 

 */
/*: question1
 ### 1. What is the type of the variable `petName` declared below? What is its value?
 */
var petName = "Scooter the Turtle 🐢"
// petName is a mutable string.







/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?
// otherPetName is a string optional.






/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
// otherPetName has value nil because it has not been assigned to a string value.







/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil
// thirdPetName is a string optional.








/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
// You can assign any string value to thirdPetName, since it was declared with var as a string optional. Once you assign a value, it is still a string optional. The type doesn't change!

thirdPetName = "Rudy" // My other poodle!








/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
// This will print Optional("Rudy") because the string value has not been 'unwrapped' through optional binding.
print(thirdPetName)







/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
// write your code here
if let cutePoodle = thirdPetName {
    print(cutePoodle)
}







/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
// write your code here
func printPetName(petName: String?) {
    if let petName = petName {
        print(petName)
    } else {
        print("There is no pet name!")
    }
}






/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
 // With otherPetName as the argument, it will print "There is no pet name!" because otherPetName is nil. With thirdPetName as the argument it will print "Rudy", the string value of the optional.
printPetName(otherPetName)
printPetName(thirdPetName)







/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
// write your code here
func minimum(integers: [Int]) -> Int {
    let sortedIntegers = integers.sort(<)
    return sortedIntegers[0]
}







/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
// write your code here
minimum(values1)







/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
// Xcode raises an error because the function is trying to return an element at an index that is "out of bounds" because the array is empty.
// minimum(values2)







/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
// write your code here
func maybeMinimum(integers: [Int]) -> Int? {
    if integers.isEmpty {
        return nil
    } else {
        let sortedIntegers = integers.sort(<)
        return sortedIntegers[0]
    }
}








/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
// The return value will be 2, the smallest number in the non-empty values1 array.
maybeMinimum(values1)







/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
// The return value will be nil.
maybeMinimum(values2)







//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
