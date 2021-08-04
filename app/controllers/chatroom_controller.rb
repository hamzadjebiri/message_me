class ChatroomController < ApplicationController

    before_action :require_user

    def index
        #rails will lookup of a file with name: messages/_message.html.erb if it exist then w'll not need a loop to show messages in index
        @message = Message.new
        @messages = Message.custom_display
    end
    
end