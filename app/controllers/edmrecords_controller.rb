class EdmrecordsController < ApplicationController

def new
  mailid = params[:mailid]
  edmid  = params[:edmid]
  @edmrecord = Edmrecord.new
  @edmrecord.mailid= mailid
  @edmrecord.edmid = edmid
  @edmrecord.save
  redirect_to @edmrecord
end

def index
  @edmrecords = Edmrecord.all
end

def show
  @edmrecord = Edmrecord.find(params[:id])
end 


end
