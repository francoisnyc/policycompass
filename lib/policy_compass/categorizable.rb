module PolicyCompass
  module Categorizable
    def categorize(category)
      options = {}

      klass = self.class.to_s
      category_klass = "#{klass}Category".constantize
      klass_id = "#{klass.underscore}_id".to_sym

      options[:category_id] = category.id
      options[klass_id] = self.id

      category_klass.create!(options)
    end
  end
end
