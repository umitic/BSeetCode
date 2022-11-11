function createBSeetCode()
  this = {}
  this._solutions = invalid
  this._solutionsParams = invalid

  this.setSolutions = function(solutions)
    m._solutions = solutions
  end function

  this.setSolutionsParams = function(params)
    m._solutionsParams = params
  end function

  this._executeSolutionOnce = function(solution, solutionName, input, expectedOutput)
    timeSpan = CreateObject("roTimespan")
    solutionResult = solution(input)
    print "EXECUTION TIME: " ; timeSpan.TotalMilliseconds() ; " ms"
    print "YOUR OUTPUT " ; solutionResult " VS " "EXPECTED OUTPUT " ; expectedOutput   
  end function

  this._executeSolutionWithMultipleParams = function(solution, solutionName)
    print "---------------------START----------------------------" 
    solutionParams = m._solutionsParams[solutionName]
    print "--- " + UCase(solutionName) + " ---"
    for i = 0 to solutionParams.count() - 1
      singleSolutionParams = solutionParams[i]
      print "YOUR INPUT " ; singleSolutionParams.input
      m._executeSolutionOnce(solution, solutionName, singleSolutionParams.input, singleSolutionParams.expectedOutput)
      print "************************************ "
    end for
    print "---------------------END----------------------------" 
  end function

  this.executeSolutions = function()
    for each solutionName in m._solutions
      m._executeSolutionWithMultipleParams(m._solutions[solutionName], solutionName)
    end for
  end function

  return this
end function
