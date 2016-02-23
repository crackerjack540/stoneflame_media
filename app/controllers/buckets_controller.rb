class BucketsController < ApplicationController

def new
end

def new
	@bucket = Bucket.new
end

def create
	@bucket = Bucket.new(bucket_params)
end

private

def bucket_params
	params.require[:buckets].permit(:name, :topic)
end

def list
end

end
