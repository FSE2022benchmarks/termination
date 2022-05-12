; ModuleID = '../bc_file/Unsigned_Wraparound_Error_3_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_uint()
  %"1" = call i32 (...)* @__VERIFIER_nondet_uint()
  %"2" = call i32 (...)* @__VERIFIER_nondet_uint()
  %"3" = add i32 %"1", %"2"
  %"4" = add i32 %"3", 1
  %"5" = icmp eq i32 %"4", -1
  %"6" = icmp eq i32 %"1", 0
  %or.cond = or i1 %"5", %"6"
  br i1 %or.cond, label %main_bb4, label %main_bb1

main_bb1:                                         ; preds = %main_bb0, %main_bb3, %main_bb2
  %newbufsize.0 = phi i32 [ %"11", %main_bb3 ], [ -1, %main_bb2 ], [ %"1", %main_bb0 ]
  %"7" = add i32 %"0", %"2"
  %"8" = add i32 %"7", 1
  %"9" = icmp ult i32 %newbufsize.0, %"8"
  br i1 %"9", label %main_bb2, label %main_bb4

main_bb2:                                         ; preds = %main_bb1
  %"10" = icmp uge i32 %newbufsize.0, -2147483648
  br i1 %"10", label %main_bb1, label %main_bb3

main_bb3:                                         ; preds = %main_bb2
  %"11" = mul i32 %newbufsize.0, 2
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uint(...) #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
