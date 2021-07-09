class CompaniesController < ApplicationController
    def index
        @companies = Company.all 
        @company = Company.new
    end

    def show
    end

    def edit

    end

    def new
    end

    def create
        parametros = params[:company]
        @company = Company.new('name' => parametros['name'], 'address'=>  parametros['address'])
        @company.save
        redirect_to action: "index"
    end

    def update
        puts 'hola desde update'
    end

    def destroy
    end

    def company_params 
        params.require(:company).permit(:name, :address) 
    end
end
