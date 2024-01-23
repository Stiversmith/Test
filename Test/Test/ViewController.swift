
import UIKit

enum MathError: Error {
    case divisionByZero
}

class MathService {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }

    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }

    func divide(_ a: Double, _ b: Double) throws -> Double {
        guard b != 0 else {
            throw MathError.divisionByZero
        }
        return a / b
    }
}
