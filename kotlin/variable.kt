import java.time.LocalTime
import java.time.format.DateTimeFormatter

fun main() {
    val currentTime: String = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))

    val temperature: Double = 25.5

    val grade: Char = 'A'

    println(grade)
    println(temperature)
    println(currentTime)

}

