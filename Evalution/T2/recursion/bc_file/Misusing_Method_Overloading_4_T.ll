; ModuleID = '../bc_file/Misusing_Method_Overloading_4_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.LogMessage = type { i8 }

@_ZN10LogMessageD1Ev = alias void (%class.LogMessage*)* @_ZN10LogMessageD2Ev

; Function Attrs: uwtable
define void @_Z11MessageBoxWv() #0 {
_Z11MessageBoxWv_bb0:
  ret void
}

; Function Attrs: uwtable
define void @_Z19DisplayDebugMessagev() #0 {
_Z19DisplayDebugMessagev_bb1:
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN10LogMessageD2Ev(%class.LogMessage* %this) unnamed_addr #1 align 2 {
_ZN10LogMessageD2Ev_bb2:
  ret void
}

; Function Attrs: uwtable
define i32 @main() #0 {
main_bb3:
  ret i32 1
}

declare %class.LogMessage* @__kittel_nondef.0()

declare %class.LogMessage @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
