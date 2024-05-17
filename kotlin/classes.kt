class Rectangle(val length: Double, val width: Double) {

    fun getPerimeter(): Double {
        return 2 * (length + width)
    }

    fun getArea(): Double {
        return length * width
    }
}


class Triangle(val A: Double, val B: Double, val C: Double) {

    fun determineType(): String {
        return when {
            A == B && B == C -> "Equilateral"
            A == B || B == C || A == C -> "Isosceles"
            else -> "Scalene"
        }
    }
}

class ShoppingCart {

    private val items = mutableListOf<Pair<String, Double>>()

    fun addItem(name: String, price: Double) {
        items.add(Pair(name, price))
    }

    fun removeItem(name: String) {
        items.removeIf { it.first == name }
    }

    fun calculateTotalPrice(): Double {
        return items.sumOf { it.second }
    }

    fun displayItems() {
        println("Items in the shopping cart:")
        for (item in items) {
            println("Item: ${item.first}, Price: ${item.second}")
        }
    }
}




fun main() {
    val rectangle = Rectangle(5.0, 5.0)
    println("perimeter: ${rectangle.getPerimeter()}")
    println("area: ${rectangle.getArea()}")

    val triangle = Triangle(3.0, 4.0, 5.0)
    println("Triangle type: ${triangle.determineType()}")


    val cart = ShoppingCart()
    cart.addItem("Apple", 1.0)
    cart.addItem("Banana", 0.5)
    cart.addItem("Orange", 1.2)
    cart.displayItems()
    println("Total price: ${cart.calculateTotalPrice()}")
    cart.removeItem("Banana")
    cart.displayItems()
    println("Total price after removal: ${cart.calculateTotalPrice()}")
}
