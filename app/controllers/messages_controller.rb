class MessagesController < ApplicationController

    def create
        message = current_user.messages.build(message_params)
        if  message.save
            flash[:success] = "Message saved successfully"
            redirect_to root_path
        else
            redirect_to root_path
        end
    end

    private

    def message_params
        params.require(:message).permit(:body)
    end
end