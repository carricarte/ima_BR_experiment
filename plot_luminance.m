
%Select the desire dimension 
luminance = expt.output(:,2);
trials = 1:length(expt.output); % need to change this in a better way 
% Plot the luminance against trial numbers
plot( trials, luminance );

% Add labels to the x-axis and y-axis
xlabel('Trial Number ');
ylabel('Luminance');

% Add a title to the graph
title('Luminance vs. Trial Number');

% Display the graph
grid on; % Optionally, you can enable grid lines
legend('Luminance'); % Optionally, you can add a legend if needed


%%%%%Adaptation for nan values in trials 



% Select the desired dimension
luminance = expt.output(:,2)';
trials = 1:expt.trial;

plot(trials,luminance)

% Add labels to the x-axis and y-axis
xlabel('Trial Number');
ylabel('Luminance');

% Add a title to the graph
title('Luminance vs. Trial Number');

% Display the graph
grid on;
legend('Luminance');



x =  1:expt.trial;
y= expt.output(:,2)';
% Add marks on the y-axis at specific points
yMarks = expt.lumblue_arr;  % Y-axis values where you want to add marks

% Find the indices of matching values in y
%matchingIndices = ismembertol(y, yMarks);

% Plot the data
plot(x, y)

title('Luminance blue vs. Trial Number');
 hold on
 plot(x(matchingIndices), y(matchingIndices), 'ro', 'MarkerSize', 8, 'LineWidth', 1)
 hold off

% Add labels to the x-axis and y-axis
xlabel('Trials')
ylabel('luminance blue')

% Add a legend for the marks
legend('luminance', 'reversals')


%% when want to plot queue
%y2 = cellfun(@(x) x(1), {data.queue}); % Convert cell array to numeric array


%% plot main experiment 



x = 1:length(data);
y1 = strcmp('RightArrow', {data.dominant});
y2= strcmp('LeftArrow',{data.dominant});

figure;
subplot(3,1,1);
plot(x,y1,'r');
xlabel('Trials');
ylabel('Merkel');


subplot(3,1,2)
plot (x,y2,'b');

xlabel('Trials');
ylabel('');



xl =  1:expt.trial;
yl = expt.output(:,2)';
subplot(3,1,3);
plot(xl,yl);
% yyaxis right; % Use the right y-axis
xlabel('trials');
ylabel('lumblue');
title('Luminance blue vs. Trial Number');



%% Subplot luminance and responses in BR

x = 1:length(data);
y1 = strcmp('RightArrow', {data.dominant});
y2= strcmp('LeftArrow',{data.dominant});

figure;
subplot(2,1,1);
plot(x,y1,'r');


hold on 

plot (x,y2,'b');
xlabel('Trials Imagery-BR task');
ylabel('Dominant response');

legend ('Merkel','Brandenburg')
title('Response vs. Trial Number');

xl =  1:length(expt.output);
yl = expt.output(:,2)';
subplot(2,1,2);
plot(xl,yl);
hold on;
mean_line = line(xlim,[expt.luminance_mean, expt.luminance_mean]);
median_line = line(xlim,[expt.luminance_median, expt.luminance_median]);
set(mean_line, 'Color', 'g', 'LineStyle', '-', 'LineWidth', 2);
set(median_line, 'Color', 'm', 'LineStyle', '-.', 'LineWidth', 2);
% lumblue_mean = line(xlim,[expt.lumblue_mean,expt.lumblue_mean]);
% lumblue_median = line(xlim,[expt.lumblue_media,expt.lumblue_media]);
% set(lumblue_median,'Color', 'm','lineStyle','-','LineWidth',1);
% set(lumblue_mean,'Color', 'm','lineStyle','-.','LineWidth',1)
xlabel('Trials in luminance task with Mean and Median Lines');
ylabel('lumblue');
title('Luminance blue vs. Trial Number ');
legend('luminance', 'Mean','');


hold off;
grid on;


%% counter of asnwears:
count = sum([data.queue] == 1);
count = sum(strcmp({data.dominant}, 'LeftArrow'));


x = 1:45;
y= expt.output(:,2)';
figure;
plot (x,y,'b-');
xlabel('Trials in luminance task');
ylabel('lumblue');
title('Luminance blue vs. Trial Number');


%% PLOT luminance and 




