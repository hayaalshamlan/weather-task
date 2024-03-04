import UIKit

let jsonData = """
{"city": "Kuwait","temperature": 25,"condition": "Sunny","forecast": [
{"day": "Monday","high": 29,"low": 17,"condition": "Partly Cloudy"},
{"day": "Tuesday","high": 18,"low": 13,"condition": "Rain"}]}
""".data(using: .utf8)!

struct Weather: Codable {
    var city: String
    var temperature: Double
    var condition: String
    let forecast: [Forecast]
    
    struct Forecast: Codable{
        var day: String
        var high: Int
        var low: Int
        var condition: String
    }
}
do {let weather = try JSONDecoder().decode(Weather.self, from: jsonData)
} catch {
    print("Decoding error: \(error)")
}


