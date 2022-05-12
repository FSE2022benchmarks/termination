; ModuleID = '../bc_file/Miscalling_Inherited_Method_1_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ClassAdLog = type { i8 }
%class.ClassAdCollection = type { i8 }

; Function Attrs: nounwind uwtable
define i32 @_ZN10ClassAdLog19LookupInTransactionEv(%class.ClassAdLog* %this) #0 align 2 {
_ZN10ClassAdLog19LookupInTransactionEv_bb0:
  ret i32 0
}

; Function Attrs: uwtable
define i32 @main() #1 {
main_bb1:
  ret i32 0
}

declare %class.ClassAdLog* @__kittel_nondef.0()

declare %class.ClassAdCollection* @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

declare %class.ClassAdCollection @__kittel_nondef.3()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
