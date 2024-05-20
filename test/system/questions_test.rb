# frozen_string_literal: true

require 'application_system_test_case'

# Testing if the question/answer works as expected.
class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask your coach anything'
  end
end
