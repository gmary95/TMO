import Foundation

class TheoreticalCalculator {
    static let a00 = 0.6154
    static let a01 = 0.2203
    static let a02 = 0.1643
    
    static let a10 = 0.3077
    static let a11 = 0.0792
    static let a12 = 0.2285
    
    static let a20 = 0.0769
    static let a21 = 0.1411
    static let a22 = 0.0641
    
    static let e0 = -0.17
    static let e1 = -0.39
    
    static func calc(t: Double) -> (Double, Double, Double) {
        let exp1 = exp(e0 * t)
        let exp2 = exp(e1 * t)
        let P0 = a00 + a01 * exp1 + a02 * exp2
        let P1 = a10 + a11 * exp1 + a12 * exp2
        let P2 = a20 + a21 * exp1 + a22 * exp2
        return (P0, P1, P2)
    }
}
