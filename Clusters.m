x_3 = linspace(0, 100, 100);
y_3 = linspace(0, 100, 100);

hold on
title('Features')

xlabel('F2')
ylabel('F1')

xlim([0 100])
ylim([0 100])

%[x_1,y_1] = getpts;
%[x_2,y_2] = getpts;
%[x_4,y_4] = getpts;

scatter(x_1, y_1, 'x', 'MarkerFaceColor', [0 0 1], 'MarkerEdgeColor',[0 0 1]);
scatter(x_2, y_2, 'x', 'MarkerFaceColor', [1 0 0], 'MarkerEdgeColor',[1 0 0]);
scatter(x_4, y_4, 'x', 'MarkerFaceColor', [0 1 0], 'MarkerEdgeColor',[0 1 0]);

% Calculate centroids of the clusters
centroid_1_x = mean(x_1);
centroid_1_y = mean(y_1);
centroid_2_x = mean(x_2);
centroid_2_y = mean(y_2);
centroid_4_x = mean(x_4);
centroid_4_y = mean(y_4);

% Plot the centroids as larger circles
scatter(centroid_1_x, centroid_1_y, 'o', 'MarkerFaceColor', [0 0 1], 'MarkerEdgeColor', [0 0 1]);
scatter(centroid_2_x, centroid_2_y, 'o', 'MarkerFaceColor', [1 0 0], 'MarkerEdgeColor', [1 0 0]);
scatter(centroid_4_x, centroid_4_y, 'o', 'MarkerFaceColor', [0 1 0], 'MarkerEdgeColor', [0 1 0]);

%Plot a line connecting centroids
plot([centroid_1_x, centroid_2_x], [centroid_1_y, centroid_2_y], '-', 'Color', [1 0 0], 'LineWidth', 2);
plot([centroid_1_x, centroid_4_x], [centroid_1_y, centroid_4_y], '-', 'Color', [0 1 0], 'LineWidth', 2);


hold off
