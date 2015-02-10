# coding: utf-8
# use minitest gem, not the one from stdlib
gem     'minitest'

require 'minitest/autorun'
require 'randomuser-ru'

# override the generate methods so they return mock responses during testing
module RandomuserRu
  def self.generate(number=1)
    Array.new(number, mock_response)
  end

  def self.generate_female(number=1)
    Array.new(number, mock_response)
  end

  def self.generate_male(number=1)
    Array.new(number, mock_response('male'))
  end

end

def mock_response(gender='female')
  {
    user: {
      gender: "#{gender == 'female' ? 'женский' : 'мужской'}",
      name: {
        first: "Алексей",
        last: "Навальный",
        middle: "Анатольевич"
      },
      location: {
        street: "Ленина",
        city: "Москва",
        state: "Московская область",
        zip: "121000"
      },
      email: "first.last@example.com",
      username: "navalny",
      password: "password",
      salt: "L",
      md5: "003b0f6e9b1b40200ba0370a5f29208e",
      sha1: "87b7b6b2a06238c0bb7174f03f74ae86211afc7d",
      sha256: "49995e8aadf97fa0cca079be5bbf47b5fa0c5ffb0dd81831ee9b382c9772b46b",
      registered: "1134630377",
      dob: "326899532",
      phone: "8 495 123 45 67",
      cell: "7 926 123 45 67",
      SSN: "525-20-3862",
      picture: {
        large: "http://randomuser.ru/images/#{gender == 'female' ? 'women' : 'men'}/1.jpg",
        thumb: "http://randomuser.ru/images/#{gender == 'female' ? 'women' : 'men'}/med/1.jpg",
        medium: "http://randomuser.ru/images/#{gender == 'female' ? 'women' : 'men'}/thubm/1.jpg"
      }
    },
    seed: "navalny",
    version: RandomuserRu::VERSION
  }
end
