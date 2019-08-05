class RoomsController < ApplicationController

before_action :load_entities

def index
	@rooms = Room.all
end


def show
@room_message = RoomMessage.new room: @room
@room_messages = @room.room_messages.includes(:user)
end

def new
	@room = Room.new 
end

def create
	@room = Room.new permitted_parameters

	if @room.save
		flash[:success] = "Room #{@room.name} was created sucessfully"
		redirect_to rooms_path
	else
		render :new
	end
end

def edit
end

def update
	if @room.update_attibutes(permitted_parameters)
		flash[:sucess] = "Room #{@room.name} was updated sucessfully"
		redirect_to rooms_path
	else
		render :new
	end
end

def load_entities
	@rooms = Room.all
	@room = Room.find(params[:id]) if params[:id]

end

def permitted_parameters
	params.require(:room).permit(:name)
end

end