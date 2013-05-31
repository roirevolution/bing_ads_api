require 'ads_common_bing/api'
require 'ads_common_bing/api_config'
require 'ads_common_bing/credential_handler'
require 'ads_common_bing/errors'
require 'ads_common_bing/http'
require 'ads_common_bing/savon_service'
require 'ads_common_bing/parameters_validator'
require 'ads_common_bing/build/savon_generator'
require 'ads_common_bing/build/savon_registry'
require 'ads_common_bing/savon_headers/base_header_handler'
require 'ads_common_bing/savon_headers/oauth_header_handler'
require 'ads_common_bing/savon_headers/httpi_request_proxy'

####### AdsCommonBing Overriden for Bing Ads #########
module AdsCommonBingForBingAds
	class Api < AdsCommonBing::Api; end
	module ApiConfig; include AdsCommonBing::ApiConfig; end
	class Config < AdsCommonBing::Config; end
	class CredentialHandler < AdsCommonBing::CredentialHandler; end
	module Errors; include AdsCommonBing::Errors; end
	class Http < AdsCommonBing::Http; end
	class ParametersValidator < AdsCommonBing::ParametersValidator; end
	class ResultsExtractor < AdsCommonBing::ResultsExtractor; end
	class SavonService < AdsCommonBing::SavonService; end
	module Utils; include AdsCommonBing::Utils; end
	module ApiConfig; include AdsCommonBing::ApiConfig; end
	# Auth
	module Auth
		class BaseHandler < AdsCommonBing::Auth::BaseHandler; end
		class ClientLoginHandler < AdsCommonBing::Auth::ClientLoginHandler; end
		class OAuth2Handler < AdsCommonBing::Auth::OAuth2Handler; end
		class OAuthHandler < AdsCommonBing::Auth::OAuthHandler; end
	end
	# Build
	module Build
		class SavonAbstractGenerator < AdsCommonBing::Build::SavonAbstractGenerator; end
		class SavonGenerator < AdsCommonBing::Build::SavonGenerator; end
		class SavonRegistry < AdsCommonBing::Build::SavonRegistry; end
		class SavonRegistryGenerator < AdsCommonBing::Build::SavonRegistryGenerator; end
		class SavonServiceGenerator < AdsCommonBing::Build::SavonServiceGenerator; end
	end
	# SavonHeaders
	module SavonHeaders
		class BaseHeaderHandler < AdsCommonBing::SavonHeaders::BaseHeaderHandler; end
		class OAuthHeaderHandler < AdsCommonBing::SavonHeaders::OAuthHeaderHandler; end
		# httpi_request_proxy is ::OAuth::RequestProxy::HTTPIRequest < OAuth::RequestProxy::Base
	end

end