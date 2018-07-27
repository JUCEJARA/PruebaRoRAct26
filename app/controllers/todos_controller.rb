class TodosController < ApplicationController


    def index
        @todos = Todo.all
    end

    def new 
        @todos = Todo.new

    end
    
    def create 
        @todos = Todo.new(todos_params)
        @todos.save
        redirect_to todos_path
    end 

     

    private
    def todos_params
        params.require(:todos).permit(:description, :completed)
    end    
end
