import Foundation

func solution(_ w:Int, _ h:Int) -> Int64{
    var totalRects = w * h
    var abnormalRects = 0
    var normalRects: Int64 = 0
    
    let gcd = getGCD(w, h)
    
    if gcd == 1 {
        abnormalRects = w + h - 1
    } else {
        let patternRects = (w / gcd) + (h / gcd) - 1
        abnormalRects = patternRects * gcd
    }
    
    normalRects = Int64(totalRects - abnormalRects)
    
    return normalRects
}

func getGCD(_ a: Int, _ b: Int) -> Int {
    var gcd = 1
    for i in 1...min(a, b) {
        if a % i == 0 && b % i == 0 {
            gcd = i
        }
    }
    return gcd
}
