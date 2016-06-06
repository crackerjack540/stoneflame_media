class BucketsController < ApplicationController

before_action :find_bucket, only: [:edit, :destroy] 

def new
	@bucket = current_user.buckets.build
end

def create
	@bucket = current_user.buckets.build(bucket_params)
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

def edit
end

def update
	@bucket.update(bucket_params)
	redirect_to buckets_index_path
end

def destroy
    @bucket.destroy(bucket_params)
    redirect_to buckets_index_path
end

private

def bucket_params
	params.require(:bucket).permit(:name, :topic)
end

def find_bucket
	@bucket = Bucket.find(params[:id])
end
end
