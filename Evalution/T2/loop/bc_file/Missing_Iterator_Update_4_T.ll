; ModuleID = '../bc_file/Missing_Iterator_Update_4_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_int()
  %"1" = call i32 (...)* @__VERIFIER_nondet_int()
  %"2" = call i32 (...)* @__VERIFIER_nondet_int()
  %"3" = call i32 (...)* @__VERIFIER_nondet_int()
  %"4" = call i32 (...)* @__VERIFIER_nondet_int()
  %"5" = icmp slt i32 %"1", 0
  %"6" = icmp slt i32 %"4", 0
  %or.cond = or i1 %"5", %"6"
  %"7" = icmp sgt i32 %"1", 65534
  %or.cond1 = or i1 %or.cond, %"7"
  %"8" = icmp sgt i32 %"4", 65534
  %or.cond2 = or i1 %or.cond1, %"8"
  br i1 %or.cond2, label %main_bb5, label %main_bb1

main_bb1:                                         ; preds = %main_bb0, %main_bb4
  %z.0 = phi i32 [ %"12", %main_bb4 ], [ %"3", %main_bb0 ]
  %x.0 = phi i32 [ %"13", %main_bb4 ], [ 0, %main_bb0 ]
  %"9" = icmp slt i32 %x.0, %"1"
  br i1 %"9", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1, %main_bb3
  %y.0 = phi i32 [ %"11", %main_bb3 ], [ 0, %main_bb1 ]
  %"10" = icmp slt i32 %y.0, %"4"
  br i1 %"10", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"11" = add nsw i32 %y.0, 1
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2
  %"12" = add nsw i32 %z.0, 1
  %"13" = add nsw i32 %x.0, 1
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
