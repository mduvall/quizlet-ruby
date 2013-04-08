module Quizlet
  module Sets
    # This actually doesn't look supported
    def get_sets
      get('sets', {})
    end

    def get_set_by_id(id)
      get('sets/' + id.to_s, {})
    end

    def get_set_terms_by_id(id)
      get('sets/' + id.to_s + '/terms', {})
    end

    def get_set_password_by_id(id)
      get('sets/' + id.to_s + '/password', {})
    end

    def get_sets_by_class_id(class_id)
      get('classes/' + class_id.to_s + '/sets', {})
    end

    def get_sets_by_user_id(user_id)
      get('users/' + user_id.to_s + '/sets', {})
    end

    def get_favorite_sets_by_user_id(user_id)
      get('users/' + user_id.to_s + '/favorites', {})
    end

    # Params requires {title, terms[], definitions[], lang_terms, lang_definitions}
    def add_set(params)
      post('sets', params)
    end

    def edit_set_by_id(id, params)
      put('sets/' + id.to_s, params)
    end

    def delete_set_by_id(id)
      delete('sets/' + id.to_s, {})
    end

    def add_term_to_set_by_id(id, params)
      post('sets/' + id.to_s + '/terms', params)
    end

    def edit_term_in_set_by_id(set_id, term_id, params)
      put('sets/' + set_id.to_s + '/terms/' + term_id.to_s, params)
    end

    def delete_term_in_set_by_id(set_id, term_id)
      delete('sets/' + set_id.to_s + '/terms/' + term_id.to_s, {})
    end
  end
end
