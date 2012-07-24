-ifndef( _ELDAP_HRL ).
-define( _ELDAP_HRL , 1 ).

%%%
%%% Search input parameters
%%%
-record(eldap_search, {
	  base = [],             % Baseobject
	  filter = [],           % Search conditions
	  scope,                 % Search scope
	  attributes = [],       % Attributes to be returned
	  types_only = false,    % Return types+values or types
	  sizeLimit = 0,	 % Return size of search entries
	  timeout = 0            % Timelimit for search
	 }).

%%%
%%% Returned search result
%%%
-record(eldap_search_result, {
	  entries = [],          % List of #eldap_entry{} records
	  referrals = []         % List of referrals
	  }).

%%%
%%% LDAP entry
%%%
-record(eldap_entry, {
	  object_name = "",      % The DN for the entry
	  attributes = []        % List of {Attribute, Value} pairs
	 }).

-endif.
