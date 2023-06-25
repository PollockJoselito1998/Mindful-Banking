% Financial Education Workshops

%This program runs a simulation to determine the viability of offering 
%financial education workshops to local communities.

%Define Parameters
numPeople = 1000; %Number of people in community
costPerPerson = 95; %Cost per person to attend workshop
workshopCost = 95 * numPeople; %Total cost to run the workshop

%Define an array of income levels
incomes = [ 15000, 20000, 25000, 30000, 35000, 40000 ];

%Calculate probabilities of being in each income level
prob15k = .2;
prob20k = .3;
prob25k = .2;
prob30k = .15;
prob35k = .1;
prob40k = .05;
probability = [ prob15k, prob20k, prob25k, prob30k, prob35k, prob40k ];

%Calculate the expected number of participants
expectedAttendees = 0;
for i=1:length(incomes)
    expectedAttendees = expectedAttendees + (incomes(i) * probability(i));
end

%Calculate expected revenue
expectedRevenue = expectedAttendees * costPerPerson;

%Calculate expected profit
expectedProfit = expectedRevenue - workshopCost;

%Calculate expected return on investment
expectedROI = expectedProfit/workshopCost;

%Print results
fprintf('The expected workshop attendees are %f.\n', expectedAttendees);
fprintf('The expected revenue is %f.\n', expectedRevenue);
fprintf('The expected profit is %f.\n', expectedProfit);
fprintf('The expected return on investment is %f.\n', expectedROI);

%Compare to break-even
if expectedProfit > 0
    fprintf('The expected profit is above break-even.\n');
else
    fprintf('The expected profit is below break-even.\n');
end

%Prompt user for action
fprintf('Would you like to offer the financial education workshops? y/n\n');
userInput = input('','s');

%Evaluate user input
if strcmpi(userInput,'y')
    fprintf('The workshops should be offered.\n');
elseif strcmpi(userInput,'n')
    fprintf('The workshops should not be offered.\n');
else
    fprintf('Invalid input.\n');
end