fun triangleType(a: Double, b: Double, c: Double): String {
    return when {
        a == b && b == c -> "Equilateral"
        a == b || b == c || a == c -> "Isosceles"
        else -> "Scalene"
    }
}

fun calculateSalary(hours: Double, rate: Double): Double {
    val regularHours = 10.0
    val overtimeMultiplier = 0.5
    return if (hours <= regularHours) {
        hours * rate
    } else {
        val overtime = hours - regularHours
        (regularHours * rate) + (overtime * rate * overtimeMultiplier)
    }
}

fun main() {
    val A = 4.4
    val B = 4.4 
    val C = 5.0

    val type = triangleType(A, B, C)
    println("The triangle is $type.")


    val hoursWorked = 20.0
    val hourlyRate = 200.0

    val totalSalary = calculateSalary(hoursWorked, hourlyRate)
    println("total salary: $totalSalary.")
}







