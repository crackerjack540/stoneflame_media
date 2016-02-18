class TopicsController < ApplicationController

def new
	@bucket = Bucket.new
end

def create
	@bucket = Bucket.new(bucket_params)
end

private

def bucket_params
	params.require[:bucket].permit(:name, :topic)
end

def list
end

end
