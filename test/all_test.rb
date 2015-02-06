# coding: utf-8
require 'test_helper'

# all tests for randomuser api gem

class TestRandomuser < Minitest::Test

  def test_generate_returns_single_response
    response = RandomuserRu.generate
    assert_equal(response.class, Array)
    assert_equal(response.length, 1)
  end

  def test_generate_returns_multiple_responses
    response = RandomuserRu.generate(5)
    assert_equal(response.class, Array)
    assert_equal(response.length, 5)
  end

  def test_generate_female_returns_single_response
    response = RandomuserRu.generate_female
    assert_equal(response.class, Array)
    assert_equal(response.length, 1)
    assert_equal(response.first[:user][:gender], 'женский')
    assert_equal(response.first[:user][:picture], "http://api.randomuser.ru/#{RandomuserRu::VERSION}/portraits/women/0.jpg")
  end

  def test_generate_female_returns_multiple_responses
    response = RandomuserRu.generate_female(5)
    assert_equal(response.class, Array)
    assert_equal(response.length, 5)
    assert_equal(response.first[:user][:gender], 'женский')
    assert_equal(response.first[:user][:picture], "http://api.randomuser.ru/#{RandomuserRu::VERSION}/portraits/women/0.jpg")
  end

  def test_generate_male_returns_single_response
    response = RandomuserRu.generate_male
    assert_equal(response.class, Array)
    assert_equal(response.length, 1)
    assert_equal(response.first[:user][:gender], 'мужской')
    assert_equal(response.first[:user][:picture], "http://api.randomuser.ru/#{RandomuserRu::VERSION}/portraits/men/0.jpg")
  end

  def test_generate_male_returns_multiple_responses
    response = RandomuserRu.generate_male(5)
    assert_equal(response.class, Array)
    assert_equal(response.length, 5)
    assert_equal(response.first[:user][:gender], 'мужской')
    assert_equal(response.first[:user][:picture], "http://api.randomuser.ru/#{RandomuserRu::VERSION}/portraits/men/0.jpg")
  end

  def test_generate_seed_returns_single_response
    response = RandomuserRu.generate_seed
    assert_equal(response.class, Array)
    assert_equal(response.length, 1)
  end

end
