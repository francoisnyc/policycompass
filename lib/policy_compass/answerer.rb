module PolicyCompass
  module Answerer
    def answer(question, response)
      options = {}

      klass = self.class.to_s
      answer_klass = "#{klass}Answer".constantize
      klass_id = "#{klass.underscore}_id".to_sym

      options[:question_id] = question.id
      options[klass_id] = self.id
      options[:answer] = response

      answer_klass.create!(options)
    end
  end
end
