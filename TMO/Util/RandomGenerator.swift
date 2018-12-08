import Foundation

class RandomGenerator {
    
    static func createSeries(count: Int) -> [Double] {
        var series: [Double] = []
        for _ in 0 ..< count {
            series.append(Double.random(in: 0 ..< 1))
        }
        return series
    }
    
}
