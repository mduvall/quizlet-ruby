require 'quizlet'
require 'pp'

Quizlet.configure({
  access_token: 'dcea2ab469fb70fffbea675c010503992e5eb111'
})

added_set = Quizlet.add_set({
  title: 'Foobar set',
  terms: ['corn', 'boy'],
  definitions: ['boy', 'corn'],
  lang_terms: 'en',
  lang_definitions: 'en'
})
p 'Added set..'
pp added_set