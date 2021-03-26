import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    let spj1Pattern = [1, 2, 3, 4, 5]
    let spj2Pattern = [2, 1, 2, 3, 2, 4, 2, 5]
    let spj3Pattern = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    let spj1Score = score(answers: answers, checkPattern: spj1Pattern)
    let spj2Score = score(answers: answers, checkPattern: spj2Pattern)
    let spj3Score = score(answers: answers, checkPattern: spj3Pattern)
    
    let scores = [spj1Score, spj2Score, spj3Score]
    
    return calculate(scores: scores)
}

func score(answers: [Int], checkPattern: [Int]) -> Int {
    let patternLen = checkPattern.count
    var score = 0
    
    for i in 0..<answers.count {
        let answer = answers[i]
        let check = checkPattern[i%patternLen]
        
        if answer == check {
            score += 1
        }
    }
    return score
}

func calculate(scores: [Int]) -> [Int] {
    var returnValue = [Int]()
    let s1 = scores[0]
    let s2 = scores[1]
    let s3 = scores[2]
    
    let highScore = scores.max() ?? 0
        
    for i in 0..<scores.count {
        let score = scores[i]
        let spjNum = i+1
        
        if score == highScore {
            returnValue.append(spjNum)
        }
    }
    
    return returnValue
}
