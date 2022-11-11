sub init()
  bSeetCode = createBSeetCode()
  bSeetCode.setSolutions(createSolutions())
  bSeetCode.setSolutionsParams(getSolutionsParams())
  bSeetCode.executeSolutions()
end sub
