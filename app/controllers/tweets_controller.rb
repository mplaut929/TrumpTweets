class TweetsController < ApplicationController


def index
  @tweets = Tweet.all

  render :index
end

def new
  @tweet = Tweet.new

  render :new
end

def create
  @tweet = Tweet.new(tweet_params)
  if @tweet.valid?
    @tweet.save
    redirect_to tweets_path
  else
    render :new
  end
end

def show
  @tweet = Tweet.find(params[:id])
  render :show
end

def edit
  @tweet = Tweet.find(params[:id])
  render :edit
end

def update
  @tweet = Tweet.find(params[:id])
  @tweet.update(tweet_params)
  redirect_to tweet_path
end

def destroy
  @tweet = Tweet.find(params[:id])
  @tweet.destroy
  redirect_to tweets_path
end

private

def tweet_params
  params.require(:tweet).permit!
end

end
