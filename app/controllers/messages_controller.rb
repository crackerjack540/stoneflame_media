class MessagesController < ApplicationController

def index
end

def new
	@message = Message.new
end

def create
	@message = Message.new(messafe_params)
end



	def message_params
		params.require(:message).permit(:title, :description)
	end

end
