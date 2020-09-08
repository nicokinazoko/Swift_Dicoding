//LOGICAL OPERATOR
//sama seperti bahasa lain

//contoh
let allowedEntry    =   false
if !allowedEntry
{
    print("ACCESS DENIED")
    
}

//contoh
//AND OPERATOR
let enteredDoorCode     =   true
let passedRetinaScan    =   false
if enteredDoorCode && passedRetinaScan
{
    print("Welcome")
}
else
{
    print("ACCESS DENIED")
}

//contoh
//OR OPERATOR
let hasDoorKey              =   false
let knowsOverridePassword   =   true
if hasDoorKey || knowsOverridePassword
{
    print("Welcome")
}
else 
{
    print ("ACCESS DENIED")    
}