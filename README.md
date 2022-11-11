# BSeetCode
BSeetCode provides the environment in which LeetCode style questions can be tested and executed using BrightScript language.

## Adding a new Question
In order to add a new question go to `source/BSeetCode/Questions.brs` file and add a new question config inside a `getQuestions()` function. New config should be in a following format:

    nameOfTheQuestion: [{
	    input: ["abc]
	    expectedOutput: ["bc"]
    }]
You can add multiple params for the same Question essentically allowing you to test your Solution with different inputs:

    nameOfTheQuestion: [
        {
	        input: ["abc] 
	        expectedOutput: ["bc"]
        },
        {
	        input: ["bdp]
	        expectedOutput: ["dp"]
        }] 
## Adding a new Solution
In order to add a new Solution go to `source/BSeetCode/Solutions.brs` and inside the `createSolutions()` function add a following a new solution function:

    this.nameOfTheSolution = function(params as Array)
	    //Write your Solution code to the Question
    end function
The Solution params argument should always be an Array since it will contain arguments/params from `input` field of Question config.

**IMPORTANT** : Name of the Solution and name of the Question added to Questions script needs to be identical!

## NOTE
Due to the fact how "pseudo class" (essentially AssocArray with anon functions) works in BrightScript their methods are always public. For that reason private objects and methods of the class which are marked with `_` prefix should not be accessed from outside of the BSeetCode objects.