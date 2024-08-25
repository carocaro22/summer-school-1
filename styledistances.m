% Calculate distances from centroid_1 to each point
%distances = sqrt((x - centroid_1_x).^2 + (y - centroid_1_y).^2);

% Append distances from centroid_1 to centroid_2 and centroid_4
%distances = [distances, sqrt((centroid_1_x - centroid_2_x)^2 + (centroid_1_y - centroid_2_y)^2), ...
                     sqrt((centroid_1_x - centroid_4_x)^2 + (centroid_1_y - centroid_4_y)^2)];

% Create the boxplot
figure;
boxplot(distances, 'Orientation', 'horizontal', 'Widths', 0.5, 'Colors', 'k');

% Hold on to overlay the scatter plot
hold on;

% Zero line for y-axis
y_zero = ones(size(distances)); 

for i = 1:10
    scatter(distances(i), y_zero(i), 36, colors(i, :), 'o', 'filled', 'MarkerEdgeColor', 'none'); % 36 is the default marker size
end

% Adjust axis limits and labels
xlim([min(distances)-1, max(distances)+1]);
ylim([0, 2]); % Adjust the y-limit to fit your scatter plot and boxplot
xlabel('Distances');
yticks([]); % Remove y-axis tick marks
yticklabels([]); % Remove y-axis tick labels
ylabel(''); % Remove y-axis title
title('Quantiles');

% Release the hold
hold off;

