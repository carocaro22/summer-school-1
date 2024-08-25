% Calculate distances from centroid_1 to each point
distances = sqrt((x - centroid_1_x).^2 + (y - centroid_1_y).^2);

% Append distances from centroid_1 to centroid_2 and centroid_4
distances = [distances, sqrt((centroid_1_x - centroid_2_x)^2 + (centroid_1_y - centroid_2_y)^2), ...
                     sqrt((centroid_1_x - centroid_4_x)^2 + (centroid_1_y - centroid_4_y)^2)];

disp(sprintf('%.2f ', distances));