sub init()
  bSeetCode = createBSeetCode()
  bSeetCode.setQuestions(getQuestions())
  bSeetCode.setSolutions(createSolutions())
  bSeetCode.executeSolutions()
end sub
