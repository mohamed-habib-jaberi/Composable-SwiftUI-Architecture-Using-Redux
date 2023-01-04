

import Foundation

struct Restroom: Decodable {
    
    let id: Int
    let name: String?
    let street: String
    let city: String
    let state: String
    let accessible: Bool
    let unisex: Bool
    let distance: Double
    let comment: String?
    let latitude: Double
    let longitude: Double
    
    var address: String {
        "\(street), \(city) \(state)"
    }
    
}
