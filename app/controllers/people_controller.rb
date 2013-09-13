class PeopleController < ApplicationController

  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
  end

  def new
    @person = Person.new
    @person.build_address
  end

  def edit
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_url(@person), notice: "Person saved"
    else
      render "new", alert: "Person not saved"
    end
  end

  def update
   if @person.update(person_params)
      flash.notice = "Person updated."
    else
      render action: 'edit', alert: "Person not updated"
    end

  end


  def destroy
    @person.destroy
    redirect_to people_url
  end

  private

  def set_person
        @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:first_name, :last_name, :phone,
      address_attributes: [:street_address,  :city, :state, :zip ])
  end

end
