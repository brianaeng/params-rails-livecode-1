class PostsController < ApplicationController
  def index
    @welcome_msg = "Hola Amiga"
    @posts = PostsController.allposts
  end

  def show
    @posts = PostsController.allposts
    @mypost = nil

    @posts.each do |post|
      number = params[:num].to_i #this is taken from the route

      if post[:id] == number
        @mypost = post
      end
    end
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def self.allposts
    [
      {id: 1, title: "My first blog post", author: "Briana", body: "Loren Ipsum meow meow meow meow meow meow meow meow meow"},
      {id: 2, title: "My second blog post", author: "Briana", body: "Loren Ipsum woof woof woof woof woof woof woof woof"},
      {id: 3, title: "My third blog post", author: "Briana", body: "Loren Ipsum moo moo moo moo moo moo moo moo moo moo moo moo"}
    ]
  end

end
