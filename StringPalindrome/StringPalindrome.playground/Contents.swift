import UIKit

func checkPalindrome1(inputString: String) -> Bool {
    let stringLength = inputString.count
        var position = 0
        
        while position < stringLength / 2 {
            let startIndex = inputString.index(inputString.startIndex, offsetBy: position)
            let endIndex = inputString.index(inputString.endIndex, offsetBy: -position - 1)
            
            if inputString[startIndex] == inputString[endIndex] {
                position += 1
            } else {
                return false
            }
        }
        
        return true
}

func checkPalindrome2(inputString: String) -> Bool {
    guard inputString.count > 1 else { return true }
    
    if inputString.first == inputString.last {
        let range = inputString.index(after: inputString.startIndex)..<inputString.index(before: inputString.endIndex)
        let substring = inputString[range]
        print(substring)
       return checkPalindrome2(inputString: String(substring))
    } else {
        return false
    }

}


print(checkPalindrome1(inputString: "aabaa"))
print(checkPalindrome1(inputString: "aa1baa"))
print(checkPalindrome1(inputString: "aa1b1aa"))
print(checkPalindrome2(inputString: "aabaa"))
print(checkPalindrome2(inputString: "aa1baa"))
print(checkPalindrome2(inputString: "aa1b1aa"))
