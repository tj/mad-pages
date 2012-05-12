
# Lua VM instructions

  __MOVE__ A B R(A) := R(B)
  __LOADK__ A Bx R(A) := K(Bx)
  __LOADBOOL__ A B C R(A) := (Bool)B; if (C) PC++
  __LOADNIL__ A B R(A) := ... := R(B) := nil
  __GETUPVAL__ A B R(A) := U[B]
  __GETGLOBAL__ A Bx R(A) := G[K(Bx)]
  __GETTABLE__ A B C R(A) := R(B)[RK(C)]
  __SETGLOBAL__ A Bx G[K(Bx)] := R(A)
  __SETUPVAL__ A B U[B] := R(A)
  __SETTABLE__ A B C R(A)[RK(B)] := RK(C)
  __NEWTABLE__ A B C R(A) := {} (size = B,C)
  __SELF__ A B C R(A+1) := R(B); R(A) := R(B)[RK(C)]
  __ADD__ A B C R(A) := RK(B) + RK(C)
  __SUB__ A B C R(A) := RK(B) - RK(C)
  __MUL__ A B C R(A) := RK(B) * RK(C)
  __DIV__ A B C R(A) := RK(B) / RK(C)
  __POW__ A B C R(A) := RK(B) ^ RK(C)
  __UNM__ A B R(A) := -R(B)
  __NOT__ A B R(A) := not R(B)
  __CONCAT__ A B C R(A) := R(B) .. ... .. R(C)
  __JMP__ sBx PC += sBx
  __EQ__ A B C if ((RK(B) == RK(C)) ~= A) then PC++
  __LT__ A B C if ((RK(B) < RK(C)) ~= A) then PC++
  __LE__ A B C if ((RK(B) <= RK(C)) ~= A) then PC++
  __TEST__ A B C if (R(B) <=> C) then R(A) := R(B) else PC++
  __CALL__ A B C R(A), ... ,R(A+C-2) := R(A)(R(A+1), ... ,R(A+B-1))
  __TAILCALL__ A B C return R(A)(R(A+1), ... ,R(A+B-1))
  __RETURN__ A B return R(A), ... ,R(A+B-2) (see note)
  __FORLOOP__ A sBx R(A)+=R(A+2); if R(A) <?= R(A+1) then PC+= sBx
  __TFORLOOP__ A C R(A+2), ... ,R(A+2+C) := R(A)(R(A+1), R(A+2));
  __TFORPREP__ A sBx if type(R(A)) == table then R(A+1):=R(A), R(A):=next;
  __SETLIST__ A Bx R(A)[Bx-Bx%FPF+i] := R(A+i), 1 <= i <= Bx%FPF+1
  __SETLISTO__ A Bx
  __CLOSE__ A close stack variables up to R(A)
  __CLOSURE__ A Bx R(A) := closure(KPROTO[Bx], R(A), ... ,R(A+n))
