
class Messages::API < Grape::API

  version 'v1', using: :header, vendor: 'caminio', cascade: false
  format :json
  default_format :json
  formatter :json, Grape::Formatter::ActiveModelSerializers

  helpers Caminio::API::Helpers

  get '/', root: 'messages' do
    authenticate!
    query = UserMessage.where( user: current_user )
    query = query.where( read: !!/t|1|true/.match(params['read']) ) if params['read']
    user_messages = query.load
    messages = []
    user_messages.each do |user_message|
      messages.push( user_message.message )
    end
    messages
  end

  params do
    requires :message, type: Hash do
      requires :title
      requires :content
      optional :parent
      optional :type
      optional :row
      optional :important
    end
  end

  before { authenticate! }

  post '/' do
    authenticate!
    Message.create_with_user(
      current_user,
      declared( params )[:message] ) 
  end

  get '/:id' do
    authenticate!
    message = Message.find_by( id: params['id'] )
    user_message = UserMessage.where( message: message, user: current_user ) 
    message = user_message ? message : {}
    message 
  end

  params do
    requires :message, type: Hash do
      optional :title
      optional :content
      optional :important
    end
  end

  before { authenticate! }

  put '/:id' do

    begin
      message = Message.with_user(current_user).find_by( id: params['id'] )
      error!("Not found", 404) unless message
      message.update!( declared( params )[:message] ) 
      Message.find_by( :id => params['id']) 
    rescue => e
      if e.message == "Validation failed: Updater insufficient rights"
        error!(e.message, 403)
      else
        error!(e.message, 500)
      end
    end
  end


  delete '/:id' do
    authenticate!
    begin
      message = Message.with_user(current_user).find(params[:id])
      error!("Not found", 404) unless message
      message.destroy!
      message
    rescue => e
      if e.message == "Validation failed: Updater insufficient rights"
        error!(e.message, 403)
      else
        error!(e.message, 500)
      end
    end
  end


end 