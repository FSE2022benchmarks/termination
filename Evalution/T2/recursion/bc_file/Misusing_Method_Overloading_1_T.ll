; ModuleID = '../bc_file/Misusing_Method_Overloading_1_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.QMetaObject = type { i8 }

; Function Attrs: uwtable
define void @_ZN11QMetaObject8activateEfiid(%struct.QMetaObject* %this, float %sender, i32 %from_signal_index, i32 %to_signal_index, double %argv) #0 align 2 {
_ZN11QMetaObject8activateEfiid_bb0:
  ret void
}

; Function Attrs: uwtable
define void @_ZN11QMetaObject8activateEfid(%struct.QMetaObject* %this, float %sender, i32 %signal_index, double %argv) #0 align 2 {
_ZN11QMetaObject8activateEfid_bb1:
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN11QMetaObject8activateEfPKS_id(%struct.QMetaObject* %this, float %sender, %struct.QMetaObject* %m, i32 %local_signal_index, double %argv) #1 align 2 {
_ZN11QMetaObject8activateEfPKS_id_bb2:
  ret void
}

; Function Attrs: uwtable
define void @_ZN11QMetaObject8activateEfPKS_iid(%struct.QMetaObject* %this, float %sender, %struct.QMetaObject* %m, i32 %from_local_signal_index, i32 %to_local_signal_index, double %argv) #0 align 2 {
_ZN11QMetaObject8activateEfPKS_iid_bb3:
  ret void
}

; Function Attrs: uwtable
define i32 @main() #0 {
main_bb4:
  ret i32 0
}

declare %struct.QMetaObject* @__kittel_nondef.0()

declare float @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

declare double @__kittel_nondef.3()

declare %struct.QMetaObject @__kittel_nondef.4()

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
