module ApplicationHelper

    def page_title(title)
        content_for :page_title, title
      end

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
    end
end
