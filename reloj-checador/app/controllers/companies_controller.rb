class CompaniesController < ApplicationController
    def index
        @companies = Company.all 
        @company = Company.new
    end

    def show; end
    def edit; end
    def new; end

    def create
        company = Company.create(params.require(:company).permit(:name, :address))
        flash[:notice] = 'Comapany created'
        redirect_to action: "index"
    end

    def update
        company = Company.find(params[:id])
        company.update(params.require(:company).permit(:name, :address))
        flash[:notice] = 'Comapany updated'
        redirect_to action: "index"
    end

    def destroy
        company = Company.find(params[:id])
        company.destroy();
        flash[:notice] = 'Comapany deleted'
        redirect_to action: "index"
    end
end
