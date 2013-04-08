module Quizlet
  module Sets
    # This actually doesn't look supported
    def sets
      get('sets', {})
    end

    def set_by_id(id)
      get('sets/' + id.to_s, {})
    end

    def set_terms_by_id(id)
      get('sets/' + id.to_s + '/terms', {})
    end

    def set_password_by_id(id)
      get('sets/' + id.to_s + '/password', {})
    end

    def sets_by_class_id(class_id)
      get('classes/' + class_id.to_s + '/sets', {})
    end

    def sets_by_user_id(user_id)
      get('users/' + user_id.to_s + '/sets', {})
    end

    def favorite_sets_by_user_id(user_id)
      get('users/' + user_id.to_s + '/favorites', {})
    end

    # Params requires {title, terms[], definitions[], lang_terms, lang_definitions}
    def add_set(params)
      post('sets', params)
    end
  end
end