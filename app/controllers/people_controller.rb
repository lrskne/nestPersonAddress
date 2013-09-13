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
      redirect_to people_url
    else
      render "new"
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
    params.require(:person).permit(:last_name, :address_attributes:[:street_address])
  end

end
