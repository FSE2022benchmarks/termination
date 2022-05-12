; ModuleID = '../bc_file/Incorrect_Cyclic_Invoking_3_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.EntityTreeModel = type { %class.QModelIndex }
%class.QModelIndex = type { i8, i32 }

; Function Attrs: nounwind uwtable
define i32 @_ZN15EntityTreeModel14getColumnCountEv(%class.EntityTreeModel* %this) #0 align 2 {
_ZN15EntityTreeModel14getColumnCountEv_bb0:
  ret i32 1
}

; Function Attrs: uwtable
define i32 @_ZN15EntityTreeModel11columnCountEv(%class.EntityTreeModel* %this) #1 align 2 {
_ZN15EntityTreeModel11columnCountEv_bb1:
  %"0" = getelementptr inbounds %class.EntityTreeModel* %this, i32 0, i32 0
  %"1" = getelementptr inbounds %class.QModelIndex* %"0", i32 0, i32 0
  %"2" = load i8* %"1", align 1
  %"3" = trunc i8 %"2" to i1
  br i1 %"3", label %_ZN15EntityTreeModel11columnCountEv_bb2, label %_ZN15EntityTreeModel11columnCountEv_bb3

_ZN15EntityTreeModel11columnCountEv_bb2:          ; preds = %_ZN15EntityTreeModel11columnCountEv_bb1
  %"4" = getelementptr inbounds %class.EntityTreeModel* %this, i32 0, i32 0
  %"5" = getelementptr inbounds %class.QModelIndex* %"4", i32 0, i32 1
  %"6" = load i32* %"5", align 4
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %_ZN15EntityTreeModel11columnCountEv_bb4, label %_ZN15EntityTreeModel11columnCountEv_bb3

_ZN15EntityTreeModel11columnCountEv_bb3:          ; preds = %_ZN15EntityTreeModel11columnCountEv_bb2, %_ZN15EntityTreeModel11columnCountEv_bb1
  br label %_ZN15EntityTreeModel11columnCountEv_bb4

_ZN15EntityTreeModel11columnCountEv_bb4:          ; preds = %_ZN15EntityTreeModel11columnCountEv_bb2, %_ZN15EntityTreeModel11columnCountEv_bb3
  %.0 = phi i32 [ 1, %_ZN15EntityTreeModel11columnCountEv_bb3 ], [ 0, %_ZN15EntityTreeModel11columnCountEv_bb2 ]
  ret i32 %.0
}

; Function Attrs: uwtable
define i32 @main() #1 {
main_bb5:
  %QL.i = alloca %class.QModelIndex, align 8
  %QL = alloca %class.QModelIndex, align 4
  %E1 = alloca %class.EntityTreeModel, align 4
  %"8" = alloca %class.QModelIndex, align 4
  %"9" = getelementptr inbounds %class.QModelIndex* %QL, i32 0, i32 0
  store i8 1, i8* %"9", align 1
  %"10" = getelementptr inbounds %class.QModelIndex* %QL, i32 0, i32 1
  store i32 0, i32* %"10", align 4
  %"11" = bitcast %class.QModelIndex* %"8" to i8*
  %"12" = bitcast %class.QModelIndex* %QL to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %"11", i8* %"12", i64 8, i32 4, i1 false)
  %"13" = bitcast %class.QModelIndex* %"8" to i64*
  %"14" = load i64* %"13", align 1
  %"15" = bitcast %class.QModelIndex* %QL.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %"15") #2
  %"16" = bitcast %class.QModelIndex* %QL.i to i64*
  store i64 %"14", i64* %"16", align 1
  %"17" = getelementptr inbounds %class.EntityTreeModel* %E1, i32 0, i32 0
  %"18" = bitcast %class.QModelIndex* %"17" to i8*
  %"19" = bitcast %class.QModelIndex* %QL.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %"18", i8* %"19", i64 8, i32 4, i1 false) #2
  %"20" = bitcast %class.QModelIndex* %QL.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %"20") #2
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %class.EntityTreeModel* @__kittel_nondef.0()

declare %class.QModelIndex* @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

declare i8 @__kittel_nondef.3()

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
