class PopulateController < ApplicationController
  def index
    posts = []
    5.times do
      posts << Post.create({
                                  title: Faker::Lorem.word,
                                  body: Faker::Lorem.sentence,
                                })
    end

    posts.each do |post|

        rand(2..5).times do
            teste = post.comments.create({
                                            name: Faker::Name.first_name,
                                            message: Faker::Lorem.sentence
                                        })
            puts teste.post.id
        end
    end
    render json: {data: posts}, status: :ok
  end

end
