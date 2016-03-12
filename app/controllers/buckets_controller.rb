class BucketsController < ApplicationController

def new
	@bucket = Bucket.new
end

def create
	@bucket = Bucket.new(bucket_params)
	if @bucket.save
		redirect_to buckets_index_path
	else
		render 'new'
	end
end

def index
	@buckets = Bucket.all.order("created_at DESC")
end

def show
	@bucket = Bucket.find(params[:id])
end


private

def bucket_params
	params.require(:bucket).permit(:name, :topic)
end

end
