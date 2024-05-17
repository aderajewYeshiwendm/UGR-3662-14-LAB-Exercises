fun sortArray(arr: IntArray): IntArray {
    return arr.sortedArray()
}

fun factorial(n: Int): Int {
    return if (n <= 1) {
        1
    } else {
        n * factorial(n - 1)
    }
}






fun main() {
    val array = intArrayOf(5, 3, 8, 1, 2)
    val sortedArray = sortArray(array)
    println("Sorted array: ${sortedArray.joinToString(", ")}")


    val n = 5
    val result = factorial(n)
    println("Factorial of $n is $result")

    
}
