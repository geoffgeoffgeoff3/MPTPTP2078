%------------------------------------------------------------------------------
% File     : MPT0637+2.045 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 045 of t43_funct_1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :   26 (   9 unit)
%            Number of atoms       :   56 (  20 equality)
%            Maximal formula depth :    8 (   5 average)
%            Number of connectives :   30 (   0   ~;   0   |;   6   &)
%                                         (   1 <=>;  23  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :   16 (   0 constant; 1-8 arity)
%            Number of variables   :   68 (   0 sgn;  68   !;   0   ?)
%            Maximal term depth    :    4 (   2 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(d10_xboole_0,axiom,(
    ! [A,B] :
      ( A = B
    <=> ( r1_tarski(A,B)
        & r1_tarski(B,A) ) ) )).

fof(t1_xboole_1,axiom,(
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(B,C) )
     => r1_tarski(A,C) ) )).

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

fof(t12_setfam_1,axiom,(
    ! [A,B] : k1_setfam_1(k2_tarski(A,B)) = k3_xboole_0(A,B) )).

fof(dt_k5_relat_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => v1_relat_1(k5_relat_1(A,B)) ) )).

fof(dt_k6_relat_1,axiom,(
    ! [A] : v1_relat_1(k6_relat_1(A)) )).

fof(t112_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => k7_relat_1(k5_relat_1(B,C),A) = k5_relat_1(k7_relat_1(B,A),C) ) ) )).

fof(t123_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => k8_relat_1(A,B) = k5_relat_1(B,k6_relat_1(A)) ) )).

fof(t139_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => k8_relat_1(A,k5_relat_1(B,C)) = k5_relat_1(B,k8_relat_1(A,C)) ) ) )).

fof(t148_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => k2_relat_1(k7_relat_1(B,A)) = k9_relat_1(B,A) ) )).

fof(t25_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r1_tarski(A,B)
           => ( r1_tarski(k1_relat_1(A),k1_relat_1(B))
              & r1_tarski(k2_relat_1(A),k2_relat_1(B)) ) ) ) ) )).

fof(t45_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => r1_tarski(k2_relat_1(k5_relat_1(A,B)),k2_relat_1(B)) ) ) )).

fof(t55_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => k5_relat_1(k5_relat_1(A,B),C) = k5_relat_1(A,k5_relat_1(B,C)) ) ) ) )).

fof(t71_relat_1,axiom,(
    ! [A] :
      ( k1_relat_1(k6_relat_1(A)) = A
      & k2_relat_1(k6_relat_1(A)) = A ) )).

fof(t76_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k5_relat_1(B,k6_relat_1(A)),B)
        & r1_tarski(k5_relat_1(k6_relat_1(A),B),B) ) ) )).

fof(t77_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k1_relat_1(B),A)
       => k5_relat_1(k6_relat_1(A),B) = B ) ) )).

fof(t80_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => k5_relat_1(A,k6_relat_1(k2_relat_1(A))) = A ) )).

fof(t89_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k1_relat_1(k7_relat_1(B,A)),k1_relat_1(B)) ) )).

fof(t90_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => k1_relat_1(k7_relat_1(B,A)) = k3_xboole_0(k1_relat_1(B),A) ) )).

fof(t94_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => k7_relat_1(B,A) = k5_relat_1(k6_relat_1(A),B) ) )).

fof(t43_funct_1,conjecture,(
    ! [A,B] : k5_relat_1(k6_relat_1(B),k6_relat_1(A)) = k6_relat_1(k3_xboole_0(A,B)) )).

%------------------------------------------------------------------------------
