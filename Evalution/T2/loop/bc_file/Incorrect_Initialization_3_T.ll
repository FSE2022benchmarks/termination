; ModuleID = '../bc_file/Incorrect_Initialization_3_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @strchr(i8* %str, i32 %c) #0 {
strchr_bb0:
  br label %strchr_bb1

strchr_bb1:                                       ; preds = %strchr_bb3, %strchr_bb0
  %.01 = phi i8* [ %str, %strchr_bb0 ], [ %"6", %strchr_bb3 ]
  %"0" = load i8* %.01, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %strchr_bb2, label %strchr_bb4

strchr_bb2:                                       ; preds = %strchr_bb1
  %"3" = load i8* %.01, align 1
  %"4" = sext i8 %"3" to i32
  %"5" = icmp eq i32 %"4", %c
  br i1 %"5", label %strchr_bb4, label %strchr_bb3

strchr_bb3:                                       ; preds = %strchr_bb2
  %"6" = getelementptr inbounds i8* %.01, i32 1
  br label %strchr_bb1

strchr_bb4:                                       ; preds = %strchr_bb1, %strchr_bb2
  %.0 = phi i8* [ %.01, %strchr_bb2 ], [ null, %strchr_bb1 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %in = alloca [100 x i8], align 16
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %i.0 = phi i32 [ 0, %main_bb5 ], [ %"10", %main_bb7 ]
  %"7" = icmp slt i32 %i.0, 99
  br i1 %"7", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"8" = sext i32 %i.0 to i64
  %"9" = getelementptr inbounds [100 x i8]* %in, i32 0, i64 %"8"
  store i8 10, i8* %"9", align 1
  %"10" = add nsw i32 %i.0, 1
  br label %main_bb6

main_bb8:                                         ; preds = %main_bb6
  %"11" = getelementptr inbounds [100 x i8]* %in, i32 0, i32 0
  %"12" = getelementptr inbounds [100 x i8]* %in, i32 0, i64 99
  store i8 0, i8* %"12", align 1
  br label %main_bb9

main_bb9:                                         ; preds = %main_strchr.exit, %main_bb8
  %p.0 = phi i8* [ %"11", %main_bb8 ], [ %"24", %main_strchr.exit ]
  %"13" = load i8* %p.0, align 1
  %"14" = icmp ne i8 %"13", 0
  br i1 %"14", label %main_bb10, label %main_bb13

main_bb10:                                        ; preds = %main_bb9, %main_bb12
  %.01.i = phi i8* [ %"21", %main_bb12 ], [ %p.0, %main_bb9 ]
  %"15" = load i8* %.01.i, align 1
  %"16" = sext i8 %"15" to i32
  %"17" = icmp ne i32 %"16", 0
  br i1 %"17", label %main_bb11, label %main_strchr.exit

main_bb11:                                        ; preds = %main_bb10
  %"18" = load i8* %.01.i, align 1
  %"19" = sext i8 %"18" to i32
  %"20" = icmp eq i32 %"19", 10
  br i1 %"20", label %main_strchr.exit, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"21" = getelementptr inbounds i8* %.01.i, i32 1
  br label %main_bb10

main_strchr.exit:                                 ; preds = %main_bb10, %main_bb11
  %.0.i = phi i8* [ %.01.i, %main_bb11 ], [ null, %main_bb10 ]
  %"22" = icmp eq i8* %.0.i, null
  %"23" = getelementptr inbounds i8* %p.0, i64 99
  %..0.i = select i1 %"22", i8* %"23", i8* %.0.i
  %"24" = getelementptr inbounds i8* %..0.i, i64 1
  br label %main_bb9

main_bb13:                                        ; preds = %main_bb9
  ret i32 0
}

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
