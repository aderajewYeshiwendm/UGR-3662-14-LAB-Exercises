fun determineSeason(month: Int, day: Int): String {
    return when {
        (month == 12 && day >= 21) || (month in 1..2) || (month == 3 && day < 20) -> "Winter"
        (month == 3 && day >= 20) || (month in 4..5) || (month == 6 && day < 21) -> "Spring"
        (month == 6 && day >= 21) || (month in 7..8) || (month == 9 && day < 22) -> "Summer"
        (month == 9 && day >= 22) || (month in 10..11) || (month == 12 && day < 21) -> "Fall"
        else -> "Invalid date"
    }
}
fun largestNum(a: Double, b: Double, c: Double): Double {
    return if (a >= b) {
        if (a >= c) {
            a
        } else {
            c
        }
    } else {
        if (b >= c) {
            b
        } else {
            c
        }
    }
}


fun main() {
    val month = 9
    val day = 5

    val season = determineSeason(month, day)
    println("The season is $season.")



    val num1 = 1.0
    val num2 = 2.0
    val num3 = 7.0

    val largest = largestNum(num1, num2, num3)
    println("The largest number is $largest.")
}
