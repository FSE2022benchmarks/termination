; ModuleID = '../bc_file/Incorrect_Initialization_4_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_int()
  %"1" = call i32 (...)* @__VERIFIER_nondet_int()
  %"2" = call i32 (...)* @__VERIFIER_nondet_int()
  %"3" = icmp slt i32 %"0", 0
  %"4" = icmp sle i32 %"1", 0
  %or.cond = or i1 %"3", %"4"
  %"5" = icmp sle i32 %"2", 0
  %or.cond1 = or i1 %or.cond, %"5"
  %"6" = icmp sgt i32 %"2", %"1"
  %or.cond2 = or i1 %or.cond1, %"6"
  %"7" = icmp sgt i32 %"1", 65534
  %or.cond3 = or i1 %or.cond2, %"7"
  br i1 %or.cond3, label %main_bb4, label %main_bb1

main_bb1:                                         ; preds = %main_bb0
  %"8" = srem i32 %"0", %"1"
  %"9" = srem i32 %"0", %"2"
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %r.0 = phi i32 [ 0, %main_bb1 ], [ %r.0., %main_bb3 ]
  %i.0 = phi i32 [ %"8", %main_bb1 ], [ %"13", %main_bb3 ]
  %"10" = icmp slt i32 %i.0, %"1"
  br i1 %"10", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"11" = icmp ne i32 %r.0, 0
  %"12" = add nsw i32 %"9", 1
  %r.0. = select i1 %"11", i32 %r.0, i32 %"12"
  %"13" = add nsw i32 %i.0, %r.0.
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
