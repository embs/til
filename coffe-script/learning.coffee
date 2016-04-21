recursiveFactorial = (x) ->
  return 1 if x == 1

  x * recursiveFactorial(x - 1)

iterativeFactorial = (x) ->
 fac = 1
 fac = fac * n for n in [1..x]

 fac

class Person
  @speak = -> # @ is an alias for this
    console.log('Bring me the money!')

  constructor: (@name) ->

class Baby extends Person
  @speak = ->
    console.log('Bah bah buh')

baby = new Baby('Julie')

Person.speak()
Baby.speak()

# Mods on super types reflect on subtypes
Person::race = 'human' # :: is an alias for __proto__
console.log(baby.race)
