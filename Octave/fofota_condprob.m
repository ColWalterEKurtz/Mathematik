function p = fofota_condprob(A, cond, event)
  [cuti cutj] = fofota_getposand(cond, event);
  [subi subj] = fofota_getpossum(cond);
  p = A(cuti, cutj) / A(subi, subj);
endfunction

