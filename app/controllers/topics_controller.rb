class TopicsController < ApplicationController

def new
end

def new
	@topic = Topic.new
end

def update
	@topic = Topic.update(topic_params)
	redirect_to @topic 
end

def create
	@topic = Topic.new(params[:topic])

	@topic.save
	redirect_to @topic
end

def destroy
	@topic = Topic.find(params[:id])
	@topic.destroy
	redirect_to topic_path
end
end
