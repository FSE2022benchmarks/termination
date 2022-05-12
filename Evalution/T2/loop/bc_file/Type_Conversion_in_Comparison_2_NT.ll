; ModuleID = '../bc_file/Type_Conversion_in_Comparison_2_NT.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_uchar()
  %"1" = trunc i32 %"0" to i8
  %"2" = call i32 (...)* @__VERIFIER_nondet_char()
  %"3" = trunc i32 %"2" to i8
  %"4" = sext i8 %"3" to i32
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %ac.0 = phi i8 [ %"1", %main_bb0 ], [ %"7", %main_bb2 ]
  %"5" = zext i8 %ac.0 to i32
  %"6" = icmp ne i32 %"5", %"4"
  br i1 %"6", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"7" = add i8 %ac.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uchar(...) #1

declare i32 @__VERIFIER_nondet_char(...) #1

declare i32 @__kittel_nondef.0()

declare i8 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
