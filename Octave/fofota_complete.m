function B = fofota_complete(A)
  B = A;
  for n = 1:9
    nans = 0;
    % b11
    if isnan(B(1, 1)) B(1, 1) = fofota_subif(B, 1, 3, 1, 2); endif
    if isnan(B(1, 1)) B(1, 1) = fofota_subif(B, 3, 1, 2, 1); endif
    if isnan(B(1, 1)) nans += 1; endif
    % b12
    if isnan(B(1, 2)) B(1, 2) = fofota_subif(B, 1, 3, 1, 1); endif
    if isnan(B(1, 2)) B(1, 2) = fofota_subif(B, 3, 2, 2, 2); endif
    if isnan(B(1, 2)) nans += 1; endif
    % b13
    if isnan(B(1, 3)) B(1, 3) = fofota_addif(B, 1, 1, 1, 2); endif
    if isnan(B(1, 3)) B(1, 3) = fofota_subif(B, 3, 3, 2, 3); endif
    if isnan(B(1, 3)) nans += 1; endif
    % b21
    if isnan(B(2, 1)) B(2, 1) = fofota_subif(B, 2, 3, 2, 2); endif
    if isnan(B(2, 1)) B(2, 1) = fofota_subif(B, 3, 1, 1, 1); endif
    if isnan(B(2, 1)) nans += 1; endif
    % b22
    if isnan(B(2, 2)) B(2, 2) = fofota_subif(B, 2, 3, 2, 1); endif
    if isnan(B(2, 2)) B(2, 2) = fofota_subif(B, 3, 2, 1, 2); endif
    if isnan(B(2, 2)) nans += 1; endif
    % b23
    if isnan(B(2, 3)) B(2, 3) = fofota_addif(B, 2, 1, 2, 2); endif
    if isnan(B(2, 3)) B(2, 3) = fofota_subif(B, 3, 3, 1, 3); endif
    if isnan(B(2, 3)) nans += 1; endif
    % b31
    if isnan(B(3, 1)) B(3, 1) = fofota_subif(B, 3, 3, 3, 2); endif
    if isnan(B(3, 1)) B(3, 1) = fofota_addif(B, 1, 1, 2, 1); endif
    if isnan(B(3, 1)) nans += 1; endif
    % b32
    if isnan(B(3, 2)) B(3, 2) = fofota_subif(B, 3, 3, 3, 1); endif
    if isnan(B(3, 2)) B(3, 2) = fofota_addif(B, 1, 2, 2, 2); endif
    if isnan(B(3, 2)) nans += 1; endif
    % b33
    if isnan(B(3, 3)) B(3, 3) = fofota_addif(B, 3, 1, 3, 2); endif
    if isnan(B(3, 3)) B(3, 3) = fofota_addif(B, 1, 3, 2, 3); endif
    if isnan(B(3, 3)) nans += 1; endif
    % done
    if (nans == 0) break; endif
  endfor
endfunction

