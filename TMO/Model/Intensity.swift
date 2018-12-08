class Intensity {
    var intensityMatrix: [[Double]]
    
    init(intensityMatrix: [[Double]]) {
        self.intensityMatrix = intensityMatrix
    }
    
    func createStateMatrix(T: Int, N: Int) -> [[Int]] {
        var stateMatrix = Array(repeating: Array(repeating: 0, count: N), count: T)
        for i in 0 ..< T {
            let randomSeries = RandomGenerator.createSeries(count: N - 1)
            for j in 1 ..< N-1 {
                stateMatrix[i][j] = checkState(elem: randomSeries[j - 1], previousState: stateMatrix[i][j - 1])
            }
        }
        return stateMatrix
    }
    
    func checkState(elem: Double, previousState: Int) -> Int {
        let intensyRow = intensityMatrix[previousState]
        switch elem {
        case 0...intensyRow[0]:
            return 0
        case (intensyRow[0] + intensyRow[1])...1:
            return 2
        default:
            return 1
        }
    }
}
