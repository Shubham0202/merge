
function sortedArray = mergeSort(array)
    
    mid = floor(length(array) / 2); 
    left = array(1:mid);
    right = array(mid+1:$);

    sortedLeft = mergeSort(left);
    sortedRight = mergeSort(right);

    sortedArray = merge(sortedLeft, sortedRight);
end

function mergedArray = merge(left, right)
    mergedArray = [];
    while ~isempty(left) & ~isempty(right) do
        if left(1) <= right(1) then
            mergedArray = [mergedArray, left(1)];
            left(1) = [];
        else
            mergedArray = [mergedArray, right(1)];
            right(1) = [];
        end
    end
    mergedArray = [mergedArray, left, right];
end

array = [5, 3, 8, 1, 2];
sortedArray = mergeSort(array);
disp(sortedArray);
