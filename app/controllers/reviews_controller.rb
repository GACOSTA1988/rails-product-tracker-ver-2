class ReviewsController < ApplicationController
    def new
      @project = Project.find(params[:project_id])
      @review = @project.reviews.new
      render :new
    end
    def create
        @project = Project.find(params[:project_id])
        @review = @project.reviews.new(review_params)
        if @review.save
          redirect_to project_path(@project)
        else
          render :new
        end
      end
    
      def show
        @project = Project.find(params[:project_id])
        @review = Review.find(params[:id])
        render :show
      end
      
      def edit
        @project = Project.find(params[:project_id])
        @review = Review.find(params[:id])
        render :edit
      end

      def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
          redirect_to project_path(@review.project)
        else
          render :edit
        end
      end

      def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to project_path(@review.project)
      end

      private
        def review_params
          params.require(:review).permit(:author, :content_body, :rating)
        end
    
  end