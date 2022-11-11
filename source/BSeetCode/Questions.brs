function getQuestions()
  return {
    addTwoNumbers: [
      {
        input: [[2,4,3], [2,4,3]]
        expectedOutput: [7, 0, 8]
      },
      {
        input: [[0], [0]]
        expectedOutput: [0]
      },
      {
        input: [[9,9,9,9,9,9,9], [9,9,9,9]]
        expectedOutput: [8,9,9,9,0,0,0,1]
      }
    ]
    longestSubstringWithoutRepeatingCharacters: [
      {
        input: ["abcabcbb"]
        expectedOutput: 3
      },
      {
        input: ["bbbbb"]
        expectedOutput: 1
      },
      {
        input: ["pwwkew"]
        expectedOutput: 3
      }
    ]
    longestPalindromicSubstring: [
      {
        input: ["babad"]
        expectedOutput: "bab"
      },
      {
        input: ["cbbd"]
        expectedOutput: "bb"
      }
    ]
  }
end function
