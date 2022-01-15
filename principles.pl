%:- use_module(library(scasp)). %% include the scasp package.
%:- style_check(-singleton). %% remove warning due to singletons.

% FORMAT for the rule:
% principle(principle_name, principle_target_min).
principle(manage, 0.72).
principle(notice, 0.79).
principle(consent, 0.72).
principle(collection, 0.79).
principle(use_disposal, 0.72).
principle(access, 0.79).
principle(disclosure, 0.72).
principle(security, 0.79).
principle(quality, 0.72).
principle(monitoring, 0.79).
