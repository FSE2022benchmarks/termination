; ModuleID = '../bc_file/Using_Erroneous_Condition_1_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i8* @malloc(i64 8)
  %"1" = bitcast i8* %"0" to %struct.Node*
  %"2" = call i32 (...)* @__VERIFIER_nondet_int()
  %"3" = getelementptr inbounds %struct.Node* %"1", i32 0, i32 1
  store i32 %"2", i32* %"3", align 4
  %"4" = call i32 (...)* @__VERIFIER_nondet_int()
  %"5" = getelementptr inbounds %struct.Node* %"1", i32 0, i32 0
  store i32 %"4", i32* %"5", align 4
  %"6" = getelementptr inbounds %struct.Node* %"1", i32 0, i32 1
  %"7" = load i32* %"6", align 4
  %"8" = icmp sle i32 %"7", -2
  br i1 %"8", label %main_bb6, label %main_bb1

main_bb1:                                         ; preds = %main_bb0
  %"9" = getelementptr inbounds %struct.Node* %"1", i32 0, i32 0
  %"10" = load i32* %"9", align 4
  %"11" = icmp slt i32 %"10", 1
  br i1 %"11", label %main_bb6, label %main_bb2

main_bb2:                                         ; preds = %main_bb1
  %"12" = getelementptr inbounds %struct.Node* %"1", i32 0, i32 1
  %"13" = load i32* %"12", align 4
  %"14" = call i32 (...)* @__VERIFIER_nondet_int()
  %"15" = icmp sgt i32 %"14", 0
  %"16" = icmp sge i32 %"13", 1
  %or.cond = and i1 %"15", %"16"
  %"17" = add nsw i32 %"13", -1
  %"18" = add nsw i32 %"13", 1
  %direction.0 = select i1 %or.cond, i32 -1, i32 1
  %pos.0 = select i1 %or.cond, i32 %"17", i32 %"18"
  %"19" = getelementptr inbounds %struct.Node* %"1", i32 0, i32 0
  %"20" = load i32* %"19", align 4
  %"21" = srem i32 %pos.0, %"20"
  %"22" = getelementptr inbounds %struct.Node* %"1", i32 0, i32 0
  %"23" = load i32* %"22", align 4
  %"24" = getelementptr inbounds %struct.Node* %"1", i32 0, i32 0
  %"25" = load i32* %"24", align 4
  br label %main_bb3

main_bb3:                                         ; preds = %main_bb5, %main_bb2
  %pos.1 = phi i32 [ %"21", %main_bb2 ], [ %pos.3, %main_bb5 ]
  %"26" = add nsw i32 %pos.1, %direction.0
  %"27" = icmp eq i32 %"26", %"23"
  br i1 %"27", label %main_bb5, label %main_bb4

main_bb4:                                         ; preds = %main_bb3
  %"28" = icmp slt i32 %"26", 0
  %"29" = sub nsw i32 %"25", 1
  %. = select i1 %"28", i32 %"29", i32 %"26"
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb4, %main_bb3
  %pos.3 = phi i32 [ %., %main_bb4 ], [ 0, %main_bb3 ]
  %"30" = icmp ne i32 %pos.3, %"21"
  br i1 %"30", label %main_bb3, label %main_bb6

main_bb6:                                         ; preds = %main_bb5, %main_bb0, %main_bb1
  ret i32 0
}

declare i8* @malloc(i64) #1

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__kittel_nondef.0()

declare %struct.Node* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
