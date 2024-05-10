% Initialize the cell array to store the matrices
matrixArray = cell(1, 3);

% Loop to create each 3x3 matrix
for i = 1:3
    % Generate a random 3x3 matrix as an example
    matrixArray{i} = rand(3,3);
end

% Accessing elements of the cell array
disp(matrixArray{1}); % Display the first matrix
disp(matrixArray{2}); % Display the second matrix
disp(matrixArray{3}); % Display the third matrix

disp(matrixArray{1}(1,2)); % Display the element in first matrix row_1 column_2