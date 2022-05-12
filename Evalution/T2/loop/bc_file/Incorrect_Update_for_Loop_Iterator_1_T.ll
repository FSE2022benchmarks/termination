; ModuleID = '../bc_file/Incorrect_Update_for_Loop_Iterator_1_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_int()
  %"1" = call i32 (...)* @__VERIFIER_nondet_int()
  %"2" = call i32 (...)* @__VERIFIER_nondet_int()
  %"3" = icmp slt i32 %"0", -1
  %"4" = icmp sle i32 %"1", 0
  %or.cond = or i1 %"3", %"4"
  %"5" = icmp slt i32 %"2", 0
  %or.cond1 = or i1 %or.cond, %"5"
  br i1 %or.cond1, label %main_bb4, label %main_bb1

main_bb1:                                         ; preds = %main_bb0, %main_bb3
  %size.0 = phi i32 [ %"8", %main_bb3 ], [ 64, %main_bb0 ]
  %buffer_bytes_left.0 = phi i32 [ %"11", %main_bb3 ], [ %"2", %main_bb0 ]
  %"6" = sdiv i32 %size.0, 2
  %"7" = icmp slt i32 %buffer_bytes_left.0, %"6"
  br i1 %"7", label %main_bb2, label %main_bb4

main_bb2:                                         ; preds = %main_bb1
  %"8" = mul nsw i32 %size.0, 2
  %"9" = icmp ne i32 %"0", -1
  %"10" = icmp sgt i32 %"8", %"0"
  %or.cond2 = and i1 %"9", %"10"
  br i1 %or.cond2, label %main_bb4, label %main_bb3

main_bb3:                                         ; preds = %main_bb2
  %"11" = sub nsw i32 %"8", %buffer_bytes_left.0
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb1, %main_bb2, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
