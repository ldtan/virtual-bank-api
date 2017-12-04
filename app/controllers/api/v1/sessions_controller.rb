module Api
  module V1
    class SessionsController < ApplicationController
      before_action :set_session, only: [:show, :update, :destroy]
    
      # GET /sessions
      def index
        render json: Session.all
      end
    
      # GET /sessions/1
      def show
        render json: Session.find(params[:id])
      end
    
      # POST /sessions
      def create
        account = Account.where('username = ? AND password = ?', params[:username], params[:password])

        if !account.first
          render json: account.errors, status: :unprocessable_entity
        end

        session = Session.new(access_token: SecureRandom.uuid)
    
        if session.save
          render json: @session, status: :created, location: @session
        else
          render json: @session.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /sessions/1
      def destroy
        if !account.first
          render json: account.errors, status: :unprocessable_entity
        end

        session = Session.new(access_token: SecureRandom.uuid)

        if session.save
          render json: session
        else
          render json: session.errors, status: :unprocessable_entity
      end
    end    
  end
end
