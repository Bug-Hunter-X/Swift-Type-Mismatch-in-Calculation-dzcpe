func calculateArea(width: Double, height: Double) -> Double {
    guard width >= 0, height >= 0 else {
        print("Warning: Width and height must be non-negative.")
        return 0
    }
    return width * height
}

func calculateAreaSafely(width: String, height: String) -> Double? {
    guard let widthDouble = Double(width), let heightDouble = Double(height) else {
        print("Error: Invalid input. Width and height must be numeric.")
        return nil
    }
    return calculateArea(width: widthDouble, height: heightDouble)
}

let area1 = calculateArea(width: 10, height: 5)
print(area1) // Output: 50.0

let area2 = calculateArea(width: -10, height: 5) //Prints warning message and return 0
print(area2) // Output: 0.0

let area3 = calculateAreaSafely(width: "10", height: "5")
print(area3 ?? 0) // Output: 50.0

let area4 = calculateAreaSafely(width: "abc", height: "5") //Prints error message and return nil
print(area4 ?? 0) // Output: 0.0