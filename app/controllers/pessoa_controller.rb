class PessoaController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @pessoas = Pessoa.all
  end

  def show
    @pessoa = Pessoa.find(params[:id])
    puts @pessoa.inspect
  end

  def edit
    @pessoa = Pessoa.find(params[:id])
  end

  def create 
    puts params.inspect

    pessoa = Pessoa.new
    pessoa.nome = params[:nome]
    pessoa.idade = params[:idade]
    pessoa.email = params[:email]

    pessoa.save!

    redirect_to :action => "index"
  end

end
