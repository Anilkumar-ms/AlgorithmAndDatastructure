func checkPalindromeForInputString(_ inputString: String) -> Bool {
    guard inputString.count > 1 else { return true }

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

func checkPalindromeForInputString1(_ inputString: String) -> Bool {
    guard inputString.count > 1 else { return true }
    
    if inputString.first == inputString.last {
        let range = inputString.index(after: inputString.startIndex)..<inputString.index(before: inputString.endIndex)
        let substring = inputString[range]
       return checkPalindromeForInputString(String(substring))
    } else {
        return false
    }

}

func checkPalindromeForInputString2(_ inputString: String) -> Bool {
    guard inputString.count > 1 else { return true }
    let inputStringArray = Array(inputString)
    var i = 0, j = inputString.count-1
    while (i < j) {
        if inputStringArray[i] ==  inputStringArray[j] {
            i += 1
            j -= 1
        } else {
            return false
        }
    }
    if i > j {
        return false
    }
    return true
}
print(checkPalindromeForInputString("aa1baa"))
print(checkPalindromeForInputString("aa1b1aa"))
print(checkPalindromeForInputString("aa1b1aa"))
print(checkPalindromeForInputString1("aa1baa"))
print(checkPalindromeForInputString1("aa1b1aa"))
print(checkPalindromeForInputString1("aa1b1aa"))
print(checkPalindromeForInputString2("aa1baa"))
print(checkPalindromeForInputString2("aa1b1aa"))
print(checkPalindromeForInputString2("aa1b1aa"))

