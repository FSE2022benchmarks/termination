; ModuleID = '../bc_file/Incorrect_Update_for_Loop_Iterator_2_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_uchar()
  %"1" = trunc i32 %"0" to i8
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %l.0 = phi i8 [ %"1", %main_bb0 ], [ %., %main_bb2 ]
  %"2" = add i8 %l.0, -1
  %"3" = icmp ne i8 %l.0, 0
  br i1 %"3", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"4" = zext i8 %"2" to i32
  %"5" = icmp ne i32 %"4", 0
  %"6" = add i8 %"2", -1
  %. = select i1 %"5", i8 %"6", i8 %"2"
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uchar(...) #1

declare i32 @__kittel_nondef.0()

declare i8 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
