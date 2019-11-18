class TestcasesController < ApplicationController

    def index
        @testcases = Testcase.all
    end
    
    def show
        @testcase = Testcase.find(params[:id])
    end

    def new
        @testcase = Testcase.new
    end

    def edit
        @testcase = Testcase.find(params[:id])
    end

    def create
        @testcase = Testcase.new(testcase_params)

        if @testcase.save
            redirect_to testcases_path
        else
            render 'new'
        end
    end

    def update
        @testcase = Testcase.find(params[:id])

        if @testcase.update(testcase_params)
            redirect_to testcases_path
        else
            render 'edit'
        end
    end

    def destroy
        @testcase = Testcase.find(params[:id])
        @testcase.destroy

        redirect_to testcases_path
    end

    def run
        @testcase = Testcase.find(params[:id])
        
        t = Tempfile.new("test_temp")
        t << @testcase.attachment
        t.rewind
        
        puts t.path

        system 'rspec ' + t.path

        # exec 'rspec ' + t.path

        t.close

        redirect_to testcases_path
    end

    private
        def testcase_params
            params.require(:testcase).permit(:title, :description, :attachment)
        end

end
