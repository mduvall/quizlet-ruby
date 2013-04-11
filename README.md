quizlet-ruby
============

A Ruby wrapper for the Quizlet API

## Getting Started

The initial setup of the Quizlet wrapper involves setting the `Authorization Bearer` token header in the access_token field of the Quizlet object. An example with the following access_token `foobar` will be:

    Quizlet.configure({
      access_token: 'foobar'
    })


Subsequent calls to the API will use the provided token as the `Authorization Bearer` token header for the V2 API calls.

The following endpoints are currently supported with the `quizlet-ruby` gem:

* `/sets` endpoint ([available here](https://quizlet.com/api/2.0/docs/sets/))
	* `GET /sets` => `Quizlet.get_sets`
	* `GET /sets/SET_ID` => `Quizlet.get_set_by_id(id)`
	* `GET /sets/SET_ID/terms` => `Quizlet.get_set_terms_by_id(id)`
	* `GET /sets/SET_ID/password` => `Quizlet.get_set_password_by_id(id)`
	* `GET /classes/CLASS_ID/sets` => `Quizlet.get_sets_by_class_id(class_id)`
	* `GET /users/USERNAME/sets` => `Quizlet.get_sets_by_user_id(user_id)`
	* `GET /sets/USERNAME/favorites` => `Quizlet.get_favorite_sets_by_user_id(user_id)`
	* `POST /sets` => `Quizlet.add_set(params)`
	* `PUT /sets/SET_ID` => `Quizlet.edit_set_by_id(id, params)`
	* `DELETE /sets/SET_ID` => `Quizlet.delete_set_by_id(id)`
	* `POST /sets/SET_ID/terms` => `Quizlet.add_term_to_set_by_id(id, params)`
	* `POST /sets/SET_ID/terms/TERM_ID` => `Quizlet.edit_term_in_set_by_id(set_id, term_id, params)`
	* `DELETE /sets/SET_ID/terms/TERM_ID` => `Quizlet.delete_term_in_set_by_id(set_id, term_id)`
