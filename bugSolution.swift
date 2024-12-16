func calculateArea(width: Int, height: Int) -> Int {
    return width * height
}

let width = 10
let heightString = "20"

if let height = Int(heightString) {
    let area = calculateArea(width: width, height: height)
    print("Area:", area) // Output: Area: 200
} else {
    print("Invalid height value")
}
//Alternative solution using a guard statement
func calculateArea2(width: Int, height: Int) -> Int {
    return width * height
}

func calculateAreaWithGuard(width: Int, heightString: String) -> Int? {
    guard let height = Int(heightString) else { return nil }
    return calculateArea2(width: width, height: height)
}

if let area = calculateAreaWithGuard(width: 10, heightString: "20") {
    print("Area:", area) // Output: Area: 200
} else {
    print("Invalid height value")
}