class BucketsController < ApplicationController

def new
end

def new
	@bucket = Bucket.new
end

def create
	@bucket = Bucket.new(bucket_params)
	if @bucket.save
		redirect_to root_path
	else
		render 'new'
	end
end

private

def bucket_params
	params.require[:bucket].permit(:name, :topic)
end

def list
end

end
