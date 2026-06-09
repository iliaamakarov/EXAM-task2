import Foundation

func countWordsWithLessThanThreeVowels(in sentence: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "y",
                                   "a", "e", "i", "o", "u", "y"]
    
    let trimmed = sentence.trimmingCharacters(in: .whitespaces)
    let words = trimmed.split(separator: " ", omittingEmptySubsequences: true)
    
    var count = 0
    
    for word in words {
        var vowelCount = 0
        for char in word.lowercased() {
            if vowels.contains(char) {
                vowelCount += 1
            }
        }
        if vowelCount < 3 {
            count += 1
        }
    }
    
    return count
}

print("Enter sentence: ", terminator: "")
if let input = readLine() {
    let LT3VowelsCount = countWordsWithLessThanThreeVowels(in: input)
    
    print("Words with less than 3 vowels: \(LT3VowelsCount)")
    
    let trimmed = input.trimmingCharacters(in: .whitespaces)
    let words = trimmed.split(separator: " ", omittingEmptySubsequences: true).map(String.init)
    
    print("\nArray of words: \(words)")
    
    var vowelDictionary: [String: Int] = [:]
    for word in words {
        var vCount = 0
        for char in word.lowercased() {
            if ["a", "e", "i", "o", "u", "y"].contains(char) {
                vCount += 1
            }
        }
        vowelDictionary[word] = vCount
    }
    
    print("Dictionary (word: vowel count): \(vowelDictionary)")
}

