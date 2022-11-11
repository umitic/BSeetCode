function createBSeetCode()
  this = {}
  this._solutions = invalid
  this._questions = invalid

  this._executeSolutionOnce = function(solution, solutionName, input, expectedOutput)
    timeSpan = CreateObject("roTimespan")
    output = solution(input)
    print "Execution time: " ; timeSpan.TotalMilliseconds() ; " ms"
    print "Your output: " ; output " vs " "Expected output: " ; expectedOutput   
  end function

  this._executeSolutionWithMultipleParams = function(solution, solutionName)
    print "---------------------START----------------------------" 
    questionsParams = m._questions[solutionName]
    print "--- " + UCase(solutionName) + " ---"
    for i = 0 to questionsParams.count() - 1
      singleQuestionParams = questionsParams[i]
      print "Your input: " ; singleQuestionParams.input
      m._executeSolutionOnce(solution, solutionName, singleQuestionParams.input, singleQuestionParams.expectedOutput)
      print "************************************ "
    end for
    print "---------------------END----------------------------" 
  end function

  this.setSolutions = function(solutions)
    m._solutions = solutions
  end function

  this.setQuestions = function(params)
    m._questions = params
  end function

  this.executeSolutions = function()
    for each solutionName in m._solutions
      m._executeSolutionWithMultipleParams(m._solutions[solutionName], solutionName)
    end for
  end function

  return this
end function
