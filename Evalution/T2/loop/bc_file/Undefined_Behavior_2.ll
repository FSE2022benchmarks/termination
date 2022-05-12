; ModuleID = '../bc_file/Undefined_Behavior_2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @ffs(i32 %w) #0 {
ffs_bb0:
  br label %ffs_bb1

ffs_bb1:                                          ; preds = %ffs_bb2, %ffs_bb0
  %i.0 = phi i32 [ 1, %ffs_bb0 ], [ %"2", %ffs_bb2 ]
  %.0 = phi i32 [ %w, %ffs_bb0 ], [ %"3", %ffs_bb2 ]
  %"0" = urem i32 %.0, 2
  %"1" = icmp eq i32 %"0", 0
  br i1 %"1", label %ffs_bb2, label %ffs_bb3

ffs_bb2:                                          ; preds = %ffs_bb1
  %"2" = add nsw i32 %i.0, 1
  %"3" = udiv i32 %.0, 2
  br label %ffs_bb1

ffs_bb3:                                          ; preds = %ffs_bb1
  ret i32 %i.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"4" = call i32 (...)* @__VERIFIER_nondet_uint()
  br label %main_bb5

main_bb5:                                         ; preds = %main_ffs.exit, %main_bb4
  %w.0 = phi i32 [ %"4", %main_bb4 ], [ %"10", %main_ffs.exit ]
  %"5" = icmp ne i32 %w.0, 0
  br i1 %"5", label %main_bb6, label %main_bb8

main_bb6:                                         ; preds = %main_bb5, %main_bb7
  %i.0.i = phi i32 [ %"8", %main_bb7 ], [ 1, %main_bb5 ]
  %.0.i = phi i32 [ %"9", %main_bb7 ], [ %w.0, %main_bb5 ]
  %"6" = urem i32 %.0.i, 2
  %"7" = icmp eq i32 %"6", 0
  br i1 %"7", label %main_bb7, label %main_ffs.exit

main_bb7:                                         ; preds = %main_bb6
  %"8" = add nsw i32 %i.0.i, 1
  %"9" = udiv i32 %.0.i, 2
  br label %main_bb6

main_ffs.exit:                                    ; preds = %main_bb6
  %"10" = lshr i32 %w.0, %i.0.i
  br label %main_bb5

main_bb8:                                         ; preds = %main_bb5
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uint(...) #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
