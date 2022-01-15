:-[database].
:-[principles].
:-[companies].

%:- use_module(library(scasp)). %% include the scasp package.
%:- style_check(-singleton). %% remove warning due to singletons.

% Sum the values in a list
sum([],0).
sum([H|T],S) :- sum(T,S1),
                S is S1 + H.

% Iterate throught the list to call find_questions and compute the Total Cost
% to be paid by the company
iterate_list([],0,_).
iterate_list([H|T],I,O) :- iterate_list(T,I1,O),
                           nl,
                           write("Principle being Calculated -> "),
                           write(H),nl,
                           find_questions(H,Z,O),
                           write("Cost to be paid for current Principle -> "),
                           write(Z),nl,nl,
                           write("--------------------------------------------"),
                           nl,
                           I is Z+I1.

% Get the first value from the list
get_first_value([H|_],J) :- J is H.

% Calculate the Cost for the Principles according to Questions related to it
find_questions(Principle,CostToBePaid,CompanyName):-
  findall(Principle, question(CompanyName, Principle, _, _, _),PrincipleList),
  length(PrincipleList,QuestionCount),
  %findall(QuestionTitle, question(CompanyName, Principle,QuestionTitle,_,1), QuestionTitleList),
  findall(QuestionWeight, question(CompanyName, Principle,_,QuestionWeight,1), QuestionWeightList),
  findall(PrincipleWeight ,principle(Principle, PrincipleWeight), PrincipleWeightList),
  get_first_value(PrincipleWeightList,PWeight),
  sum(QuestionWeightList,TotalWeight),
  CalculatedWeight is TotalWeight/QuestionCount,
  write("Target Weight for the Principle -> "), write(PWeight), nl,
  write("Calculated Weight for the Principle -> "),
  write(CalculatedWeight), nl,
  (CalculatedWeight < PWeight -> CostToBePaid is 2500; CostToBePaid is 0).

% Call function to Calculate the total cost to be paid by company
calculate(CompanyName):-
  findall(X, principle(X,_), Principle),
  iterate_list(Principle,CostToBePaid,CompanyName),
  company(CompanyName,NumberOfEmployees),
  (CostToBePaid > 0 ->
                      (NumberOfEmployees < 20 ->
                                                FinalCost is CostToBePaid + 50000;
                                                (NumberOfEmployees < 100 ->
                                                                            FinalCost is CostToBePaid + 100000;
                                                                            (NumberOfEmployees < 500 ->
                                                                                                        FinalCost is CostToBePaid + 450000;
                                                                                                        FinalCost is CostToBePaid + 2000000))); FinalCost is CostToBePaid),
  write("Total cost to be paid by the company -> "),
  write(FinalCost),nl.

% function to run the prolog code
run():-
  write('Please enter the Company Name: '), nl,
  read(CompanyName),
  calculate(CompanyName).
