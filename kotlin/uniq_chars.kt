fun hasUniqueCharacters(str: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in str) {
        if (!charSet.add(char)) {
            return false
        }
    }
    return true
}

fun main() {
    val testString = "aderajew"
    val result = hasUniqueCharacters(testString)
    println("The string \"$testString\" has all unique characters: $result")
}
