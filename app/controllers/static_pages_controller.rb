class StaticPagesController < ApplicationController
  def home; end

  def about_me; end

  def video_submission; end

  def contact_me
    return post_response if request.post?
  end

  private
  def post_response
    respond_to do |format|
      @contact = Contact.new(contact_params)
      if @contact.save
        ContactMeMailer.submitted(contact_params[:email], contact_params[:message]).deliver_now
        slack_me
        flash[:info] = 'Your message was successfully sent'
        redirect_to :contact_me
      else
        flash[:danger] = @contact.errors.full_messages
        render :contact_me
      end
    end
  end

  def slack_me
    title = "You have a message from #{contact_params[:name]}"
    channel = "general"
    message = "#{contact_params[:message]}"
    Slack.to_channel(channel,message)
    message
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end

