%------------------------------------------------------------------------------
% File     : MPT0210+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : enumset1__t136_enumset1.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    :  282 ( 182 unit)
%            Number of atoms       :  482 ( 219 equality)
%            Maximal formula depth :   26 (   5 average)
%            Number of connectives :  294 (  94   ~;   3   |;  99   &)
%                                         (  32 <=>;  66  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    8 (   1 propositional; 0-2 arity)
%            Number of functors    :   16 (   2 constant; 0-10 arity)
%            Number of variables   :  905 (   4 sgn; 901   !;   4   ?)
%            Maximal term depth    :    4 (   2 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : A cleaned up version of the MPTP 2078 benchmarks, available at
%            https://github.com/JUrban/MPTP2078
%------------------------------------------------------------------------------
include('Axioms/MPT001+2.ax').
include('Axioms/MPT002+2.ax').
%------------------------------------------------------------------------------
fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : k2_tarski(A,B) = k2_tarski(B,A) )).

fof(d1_enumset1,axiom,(
    ! [A,B,C,D] :
      ( D = k1_enumset1(A,B,C)
    <=> ! [E] :
          ( r2_hidden(E,D)
        <=> ~ ( E != A
              & E != B
              & E != C ) ) ) )).

fof(d1_tarski,axiom,(
    ! [A,B] :
      ( B = k1_tarski(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> C = A ) ) )).

fof(d2_tarski,axiom,(
    ! [A,B,C] :
      ( C = k2_tarski(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ( D = A
            | D = B ) ) ) )).

fof(d7_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I,J] :
      ( J = k7_enumset1(A,B,C,D,E,F,G,H,I)
    <=> ! [K] :
          ( r2_hidden(K,J)
        <=> ~ ( K != A
              & K != B
              & K != C
              & K != D
              & K != E
              & K != F
              & K != G
              & K != H
              & K != I ) ) ) )).

fof(d8_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I,J,K] :
      ( K = k8_enumset1(A,B,C,D,E,F,G,H,I,J)
    <=> ! [L] :
          ( r2_hidden(L,K)
        <=> ~ ( L != A
              & L != B
              & L != C
              & L != D
              & L != E
              & L != F
              & L != G
              & L != H
              & L != I
              & L != J ) ) ) )).

fof(dt_k1_enumset1,axiom,(
    $true )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k2_enumset1,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k3_enumset1,axiom,(
    $true )).

fof(dt_k4_enumset1,axiom,(
    $true )).

fof(dt_k5_enumset1,axiom,(
    $true )).

fof(dt_k6_enumset1,axiom,(
    $true )).

fof(dt_k7_enumset1,axiom,(
    $true )).

fof(dt_k8_enumset1,axiom,(
    $true )).

fof(l123_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,C,A,D) )).

fof(l129_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(C,B,A,D) )).

fof(l142_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I] : k7_enumset1(A,B,C,D,E,F,G,H,I) = k2_xboole_0(k2_enumset1(A,B,C,D),k3_enumset1(E,F,G,H,I)) )).

fof(l53_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k2_tarski(A,B),k2_tarski(C,D)) )).

fof(l57_enumset1,axiom,(
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k1_enumset1(A,B,C),k2_tarski(D,E)) )).

fof(l62_enumset1,axiom,(
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k1_enumset1(A,B,C),k1_enumset1(D,E,F)) )).

fof(l68_enumset1,axiom,(
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k2_enumset1(A,B,C,D),k1_enumset1(E,F,G)) )).

fof(l75_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k2_enumset1(A,B,C,D),k2_enumset1(E,F,G,H)) )).

fof(t100_enumset1,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(B,C,A) )).

fof(t102_enumset1,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(C,B,A) )).

fof(t103_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(A,B,D,C) )).

fof(t104_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(A,C,B,D) )).

fof(t105_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(A,C,D,B) )).

fof(t107_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(A,D,C,B) )).

fof(t108_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,A,C,D) )).

fof(t109_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,A,D,C) )).

fof(t110_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,C,A,D) )).

fof(t111_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,C,D,A) )).

fof(t112_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,D,A,C) )).

fof(t113_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,D,C,A) )).

fof(t116_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(C,B,A,D) )).

fof(t117_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(C,B,D,A) )).

fof(t118_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(C,D,A,B) )).

fof(t119_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(C,D,B,A) )).

fof(t123_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(D,B,C,A) )).

fof(t125_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(D,C,B,A) )).

fof(t127_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I] : k7_enumset1(A,B,C,D,E,F,G,H,I) = k2_xboole_0(k1_tarski(A),k6_enumset1(B,C,D,E,F,G,H,I)) )).

fof(t128_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I] : k7_enumset1(A,B,C,D,E,F,G,H,I) = k2_xboole_0(k2_tarski(A,B),k5_enumset1(C,D,E,F,G,H,I)) )).

fof(t129_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I] : k7_enumset1(A,B,C,D,E,F,G,H,I) = k2_xboole_0(k1_enumset1(A,B,C),k4_enumset1(D,E,F,G,H,I)) )).

fof(t130_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I] : k7_enumset1(A,B,C,D,E,F,G,H,I) = k2_xboole_0(k2_enumset1(A,B,C,D),k3_enumset1(E,F,G,H,I)) )).

fof(t131_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I] : k7_enumset1(A,B,C,D,E,F,G,H,I) = k2_xboole_0(k3_enumset1(A,B,C,D,E),k2_enumset1(F,G,H,I)) )).

fof(t132_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I] : k7_enumset1(A,B,C,D,E,F,G,H,I) = k2_xboole_0(k4_enumset1(A,B,C,D,E,F),k1_enumset1(G,H,I)) )).

fof(t133_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I] : k7_enumset1(A,B,C,D,E,F,G,H,I) = k2_xboole_0(k5_enumset1(A,B,C,D,E,F,G),k2_tarski(H,I)) )).

fof(t134_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I] : k7_enumset1(A,B,C,D,E,F,G,H,I) = k2_xboole_0(k6_enumset1(A,B,C,D,E,F,G,H),k1_tarski(I)) )).

fof(t135_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H,I,J] : k8_enumset1(A,B,C,D,E,F,G,H,I,J) = k2_xboole_0(k7_enumset1(A,B,C,D,E,F,G,H,I),k1_tarski(J)) )).

fof(t136_enumset1,conjecture,(
    ! [A,B,C] :
      ~ ( A != B
        & A != C
        & k4_xboole_0(k1_enumset1(A,B,C),k1_tarski(A)) != k2_tarski(B,C) ) )).

fof(t41_enumset1,axiom,(
    ! [A,B] : k2_tarski(A,B) = k2_xboole_0(k1_tarski(A),k1_tarski(B)) )).

fof(t42_enumset1,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k2_xboole_0(k1_tarski(A),k2_tarski(B,C)) )).

fof(t43_enumset1,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k2_xboole_0(k2_tarski(A,B),k1_tarski(C)) )).

fof(t44_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_tarski(A),k1_enumset1(B,C,D)) )).

fof(t45_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k2_tarski(A,B),k2_tarski(C,D)) )).

fof(t46_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_enumset1(A,B,C),k1_tarski(D)) )).

fof(t47_enumset1,axiom,(
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k1_tarski(A),k2_enumset1(B,C,D,E)) )).

fof(t48_enumset1,axiom,(
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k2_tarski(A,B),k1_enumset1(C,D,E)) )).

fof(t49_enumset1,axiom,(
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k1_enumset1(A,B,C),k2_tarski(D,E)) )).

fof(t50_enumset1,axiom,(
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k2_enumset1(A,B,C,D),k1_tarski(E)) )).

fof(t51_enumset1,axiom,(
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k1_tarski(A),k3_enumset1(B,C,D,E,F)) )).

fof(t52_enumset1,axiom,(
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k2_tarski(A,B),k2_enumset1(C,D,E,F)) )).

fof(t53_enumset1,axiom,(
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k1_enumset1(A,B,C),k1_enumset1(D,E,F)) )).

fof(t54_enumset1,axiom,(
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k2_enumset1(A,B,C,D),k2_tarski(E,F)) )).

fof(t55_enumset1,axiom,(
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k3_enumset1(A,B,C,D,E),k1_tarski(F)) )).

fof(t56_enumset1,axiom,(
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k1_tarski(A),k4_enumset1(B,C,D,E,F,G)) )).

fof(t57_enumset1,axiom,(
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k2_tarski(A,B),k3_enumset1(C,D,E,F,G)) )).

fof(t58_enumset1,axiom,(
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k1_enumset1(A,B,C),k2_enumset1(D,E,F,G)) )).

fof(t59_enumset1,axiom,(
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k2_enumset1(A,B,C,D),k1_enumset1(E,F,G)) )).

fof(t60_enumset1,axiom,(
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k3_enumset1(A,B,C,D,E),k2_tarski(F,G)) )).

fof(t61_enumset1,axiom,(
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k4_enumset1(A,B,C,D,E,F),k1_tarski(G)) )).

fof(t62_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k1_tarski(A),k5_enumset1(B,C,D,E,F,G,H)) )).

fof(t63_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k2_tarski(A,B),k4_enumset1(C,D,E,F,G,H)) )).

fof(t64_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k1_enumset1(A,B,C),k3_enumset1(D,E,F,G,H)) )).

fof(t65_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k2_enumset1(A,B,C,D),k2_enumset1(E,F,G,H)) )).

fof(t66_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k3_enumset1(A,B,C,D,E),k1_enumset1(F,G,H)) )).

fof(t67_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k4_enumset1(A,B,C,D,E,F),k2_tarski(G,H)) )).

fof(t68_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k5_enumset1(A,B,C,D,E,F,G),k1_tarski(H)) )).

fof(t69_enumset1,axiom,(
    ! [A] : k2_tarski(A,A) = k1_tarski(A) )).

fof(t70_enumset1,axiom,(
    ! [A,B] : k1_enumset1(A,A,B) = k2_tarski(A,B) )).

fof(t71_enumset1,axiom,(
    ! [A,B,C] : k2_enumset1(A,A,B,C) = k1_enumset1(A,B,C) )).

fof(t72_enumset1,axiom,(
    ! [A,B,C,D] : k3_enumset1(A,A,B,C,D) = k2_enumset1(A,B,C,D) )).

fof(t73_enumset1,axiom,(
    ! [A,B,C,D,E] : k4_enumset1(A,A,B,C,D,E) = k3_enumset1(A,B,C,D,E) )).

fof(t74_enumset1,axiom,(
    ! [A,B,C,D,E,F] : k5_enumset1(A,A,B,C,D,E,F) = k4_enumset1(A,B,C,D,E,F) )).

fof(t75_enumset1,axiom,(
    ! [A,B,C,D,E,F,G] : k6_enumset1(A,A,B,C,D,E,F,G) = k5_enumset1(A,B,C,D,E,F,G) )).

fof(t76_enumset1,axiom,(
    ! [A] : k1_enumset1(A,A,A) = k1_tarski(A) )).

fof(t77_enumset1,axiom,(
    ! [A,B] : k2_enumset1(A,A,A,B) = k2_tarski(A,B) )).

fof(t78_enumset1,axiom,(
    ! [A,B,C] : k3_enumset1(A,A,A,B,C) = k1_enumset1(A,B,C) )).

fof(t79_enumset1,axiom,(
    ! [A,B,C,D] : k4_enumset1(A,A,A,B,C,D) = k2_enumset1(A,B,C,D) )).

fof(t80_enumset1,axiom,(
    ! [A,B,C,D,E] : k5_enumset1(A,A,A,B,C,D,E) = k3_enumset1(A,B,C,D,E) )).

fof(t81_enumset1,axiom,(
    ! [A,B,C,D,E,F] : k6_enumset1(A,A,A,B,C,D,E,F) = k4_enumset1(A,B,C,D,E,F) )).

fof(t82_enumset1,axiom,(
    ! [A] : k2_enumset1(A,A,A,A) = k1_tarski(A) )).

fof(t83_enumset1,axiom,(
    ! [A,B] : k3_enumset1(A,A,A,A,B) = k2_tarski(A,B) )).

fof(t84_enumset1,axiom,(
    ! [A,B,C] : k4_enumset1(A,A,A,A,B,C) = k1_enumset1(A,B,C) )).

fof(t85_enumset1,axiom,(
    ! [A,B,C,D] : k5_enumset1(A,A,A,A,B,C,D) = k2_enumset1(A,B,C,D) )).

fof(t86_enumset1,axiom,(
    ! [A,B,C,D,E] : k6_enumset1(A,A,A,A,B,C,D,E) = k3_enumset1(A,B,C,D,E) )).

fof(t87_enumset1,axiom,(
    ! [A] : k3_enumset1(A,A,A,A,A) = k1_tarski(A) )).

fof(t88_enumset1,axiom,(
    ! [A,B] : k4_enumset1(A,A,A,A,A,B) = k2_tarski(A,B) )).

fof(t89_enumset1,axiom,(
    ! [A,B,C] : k5_enumset1(A,A,A,A,A,B,C) = k1_enumset1(A,B,C) )).

fof(t90_enumset1,axiom,(
    ! [A,B,C,D] : k6_enumset1(A,A,A,A,A,B,C,D) = k2_enumset1(A,B,C,D) )).

fof(t91_enumset1,axiom,(
    ! [A] : k4_enumset1(A,A,A,A,A,A) = k1_tarski(A) )).

fof(t92_enumset1,axiom,(
    ! [A,B] : k5_enumset1(A,A,A,A,A,A,B) = k2_tarski(A,B) )).

fof(t93_enumset1,axiom,(
    ! [A,B,C] : k6_enumset1(A,A,A,A,A,A,B,C) = k1_enumset1(A,B,C) )).

fof(t94_enumset1,axiom,(
    ! [A] : k5_enumset1(A,A,A,A,A,A,A) = k1_tarski(A) )).

fof(t95_enumset1,axiom,(
    ! [A,B] : k6_enumset1(A,A,A,A,A,A,A,B) = k2_tarski(A,B) )).

fof(t96_enumset1,axiom,(
    ! [A] : k6_enumset1(A,A,A,A,A,A,A,A) = k1_tarski(A) )).

fof(t98_enumset1,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(A,C,B) )).

fof(t99_enumset1,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(B,A,C) )).

%------------------------------------------------------------------------------
