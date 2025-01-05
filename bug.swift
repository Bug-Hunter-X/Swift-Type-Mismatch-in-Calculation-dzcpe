func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50.0

//This is fine

func calculateArea(width: Double, height: Double) -> Double {
    if width <= 0 || height <= 0 {
        return 0 // Handle invalid input
    }
    return width * height
}

let area2 = calculateArea(width: 10, height: 5)
print(area2) // Output: 50.0

let area3 = calculateArea(width: -10, height: 5)
print(area3) // Output: 0.0

//This is also fine

func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area4 = calculateArea(width: 10, height: "five" as! Double) 
print(area4) // Output: error. Cannot convert String to Double 
}