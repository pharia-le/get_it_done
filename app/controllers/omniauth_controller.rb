class OmniauthController < ApplicationController

    def omni_error(user)
        provider = user.provider
        flash[:error] = "There was a problem signing you in through #{provider}. Please register or try signing in later."
        redirect_to new_user_registration_url
    end

    def facebook
        @user = User.create_from_provider_data(request.env['omniauth.auth'])
        if @user.persisted?
            sign_in_and_redirect @user
        else
            omni_error(@user)
        end
    end

    def github
        @user = User.create_from_provider_data(request.env['omniauth.auth'])
        if @user.persisted?
            sign_in_and_redirect @user
        else
            omni_error(@user)
        end
    end

    def google_oauth2
        @user = User.create_from_provider_data(request.env['omniauth.auth'])
        if @user.persisted?
            sign_in_and_redirect @user
        else
            omni_error(@user)
        end
    end

    def failure
        flash[:error] = 'There was a problem signing you in. Please register or try signing in later.'
        redirect_to new_user_registration_url
    end
end
