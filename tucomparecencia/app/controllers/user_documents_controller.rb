class UserDocumentsController < ApplicationController
  def new
    @user_document = UserDocument.new
  end

  def create
    @user_document = UserDocument.new(user_document_params)

    respond_to do |format|
      @user_document = UserDocument.new(user_document_params)
      if @user_document.save
        format.html { redirect_to orders_path, notice: "El escrito: #{@user_document.document.name} fue creado." }
        # format.json { render :show, status: :created, location: @user_document }
      else
        format.html { render :new }
        format.json { render json: @user_document.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @user_document = UserDocument.last
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "escrito",   # Excluding ".pdf" extension.
        template: "user_documents/index.html.erb",
        layout: 'pdf.html.erb',
        page_size: 'Letter',
        show_as_html: params.key?('debug')
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_document_params
    params.require(:user_document).permit(:rit, :child, :motive, :user_id, :measure1,
                                          :measure2, :measure3, :document_id)
  end
end
