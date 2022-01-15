%:- use_module(library(scasp)). %% include the scasp package.
%:- style_check(-singleton). %% remove warning due to singletons.

% FORMAT for the rule:
% principle(principle_name, principle_target_min).
principle(manage, 0.72).
principle(notice, 0.79).
principle(consent, 0.67).
principle(collection, 0.85).
principle(use_disposal, 0.8).
principle(access, 0.6).
principle(disclosure, 0.87).
principle(security, 0.83).
principle(quality, 0.75).
principle(monitoring, 0.8).
