; ModuleID = '../bc_file/Incorrect_Bit_Calculation_2_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_int()
  %"1" = call i32 (...)* @__VERIFIER_nondet_int()
  %"2" = or i32 %"0", %"1"
  %"3" = icmp eq i32 %"2", 0
  br i1 %"3", label %main_bb3, label %main_bb1

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %a1.0 = phi i32 [ %"9", %main_bb2 ], [ %"1", %main_bb0 ]
  %a0.0 = phi i32 [ %"8", %main_bb2 ], [ %"0", %main_bb0 ]
  %"4" = and i32 %a0.0, 1
  %"5" = icmp eq i32 %"4", 0
  br i1 %"5", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"6" = shl i32 %a1.0, 31
  %"7" = ashr i32 %a0.0, 1
  %"8" = or i32 %"6", %"7"
  %"9" = ashr i32 %a1.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
