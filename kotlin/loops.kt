fun sumOfEvenNumbers(): Int {
    var sum = 0
    for (i in 1..50) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    return sum
}
fun isPrime(n: Int): Boolean {
    if (n <= 1) return false
    for (i in 2..n / 2) {
        if (n % i == 0) return false
    }
    return true
}

fun primesInRange(start: Int, end: Int) {
    var number = start
    while (number <= end) {
        if (isPrime(number)) {
            println("$number is a prime number")
        }
        number++
    }
}

fun isPalindrome(number: Int): Boolean {
    val str = number.toString()
    val reversedStr = str.reversed()
    return str == reversedStr
}




fun main() {
    val sum = sumOfEvenNumbers()
    println("The sum of all even numbers from 1 to 50 is $sum")


    val start = 1
    val end = 5
    println("the Prime numbers between $start and $end are:")
    primesInRange(start, end)

    val number = 67
    val result = isPalindrome(number)
    if (result) {
        println("$number is a palindrome")
    } else {
        println("$number is not a palindrome")
    }
}
