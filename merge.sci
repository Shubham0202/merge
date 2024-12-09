function arr = merge_sort(arr)
    if length(arr) <= 1 then
        return
    end


    mid = floor(length(arr) / 2);
    left_half = arr(1:mid);
    right_half = arr(mid+1:$);
    
    
    left_half = merge_sort(left_half);
    right_half = merge_sort(right_half);


    arr = merge(left_half, right_half);
endfunction

function sorted_arr = merge(left, right)
    sorted_arr = [];
    i = 1;
    j = 1;


    while i <= length(left) & j <= length(right) do
        if left(i) < right(j) then
            sorted_arr = [sorted_arr, left(i)];
            i = i + 1;
        else
            sorted_arr = [sorted_arr, right(j)];
            j = j + 1;
        end
    end

    
    if i <= length(left) then
        sorted_arr = [sorted_arr, left(i:$)];
    end
    if j <= length(right) then
        sorted_arr = [sorted_arr, right(j:$)];
    end
endfunction


arr = [38, 27, 43, 3, 9, 82, 10];
sorted_arr = merge_sort(arr);
disp(sorted_arr);
