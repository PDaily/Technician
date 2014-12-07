class TicketBoxesController < ApplicationController
  before_action :set_ticket_box, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ticket_boxes = TicketBox.all
    respond_with(@ticket_boxes)
  end

  def show
    respond_with(@ticket_box)
  end

  def new
    @ticket_box = TicketBox.new
    respond_with(@ticket_box)
  end

  def edit
  end

  def create
    @ticket_box = TicketBox.new(ticket_box_params)
    @ticket_box.save
    respond_with(@ticket_box)
  end

  def update
    @ticket_box.update(ticket_box_params)
    respond_with(@ticket_box)
  end

  def destroy
    @ticket_box.destroy
    respond_with(@ticket_box)
  end

  private
    def set_ticket_box
      @ticket_box = TicketBox.find(params[:id])
    end

    def ticket_box_params
      params[:ticket_box]
    end
end
