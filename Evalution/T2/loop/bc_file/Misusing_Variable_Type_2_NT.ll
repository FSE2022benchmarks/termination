; ModuleID = '../bc_file/Misusing_Variable_Type_2_NT.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gettablesize() #0 {
gettablesize_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_int()
  %"1" = srem i32 %"0", 99999
  %"2" = icmp slt i32 %"1", 0
  %"3" = sub nsw i32 0, %"1"
  %.0 = select i1 %"2", i32 %"3", i32 %"1"
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  %"4" = call i32 (...)* @__VERIFIER_nondet_int() #2
  %"5" = srem i32 %"4", 99999
  %"6" = icmp slt i32 %"5", 0
  %"7" = sub nsw i32 0, %"5"
  %.0.i = select i1 %"6", i32 %"7", i32 %"5"
  %"8" = sext i32 %.0.i to i64
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %i.0 = phi i16 [ 0, %main_bb1 ], [ %"11", %main_bb3 ]
  %"9" = zext i16 %i.0 to i64
  %"10" = icmp ult i64 %"9", %"8"
  br i1 %"10", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"11" = add i16 %i.0, 1
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare i16 @__kittel_nondef.1()

declare i64 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
