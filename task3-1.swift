import Foundation

func countWords(in sentence: String) -> Int {
    let trimmed = sentence.trimmingCharacters(in: .whitespaces)
    let words = trimmed.split(separator: " ", omittingEmptySubsequences: true)
    return words.count
}

print("Enter sentence: ", terminator: "")
if let input = readLine() {
    let wordCount = countWords(in: input)
    
    print("Word count: \(wordCount)")
    
    let trimmed = input.trimmingCharacters(in: .whitespaces)
    let words = trimmed.split(separator: " ", omittingEmptySubsequences: true).map(String.init)
    
    print("\nArray of words: \(words)")
}

