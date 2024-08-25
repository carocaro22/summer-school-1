% Create a new figure
figure;

% Define the number of points
num_points = 10;

% Generate random coordinates for the points
%x = rand(1, num_points) * 100; % X-coordinates between 0 and 100
%y = rand(1, num_points) * 100; % Y-coordinates between 0 and 100

% Define a colormap with enough colors for each point
%colors = lines(num_points); % Using 'lines' colormap which provides distinct colors

hold on;

scatter(centroid_1_x, centroid_1_y, 36, [0 0 1],'o', 'filled', 'MarkerEdgeColor', 'none');
scatter(centroid_2_x, centroid_2_y, 36, [1 0 0],'o', 'filled', 'MarkerEdgeColor', 'none');
scatter(centroid_4_x, centroid_4_y, 36, [0 1 0],'o', 'filled', 'MarkerEdgeColor', 'none');
plot([centroid_1_x, centroid_2_x], [centroid_1_y, centroid_2_y], '-', 'Color', [0 0 0]); % Line color black
plot([centroid_1_x, centroid_4_x], [centroid_1_y, centroid_4_y], '-', 'Color', [0 0 0]); % Line color black

% Plot each point with a different color

for i = 1:num_points
    scatter(x(i), y(i), 36, colors(i, :), 'o', 'filled', 'MarkerEdgeColor', 'none'); % 36 is the default marker size
    plot([centroid_1_x, x(i)], [centroid_1_y, y(i)], '-', 'Color', [0 0 0]); % Line color black
end

% Add title and labels to the axes
title('Styles');
xlabel('X-axis');
ylabel('Y-axis');

% Set axis limits for better visibility
xlim([0 100]);
ylim([0 100]);

% Finish plotting
hold off;
