%------------------------------------------------------------------------------
% File     : MPT0558+2.004 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 004 of t160_relat_1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :    7 (   0 unit)
%            Number of atoms       :   20 (   5 equality)
%            Maximal formula depth :    6 (   5 average)
%            Number of connectives :   13 (   0   ~;   0   |;   2   &)
%                                         (   1 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   0 constant; 1-2 arity)
%            Number of variables   :   15 (   0 sgn;  15   !;   0   ?)
%            Maximal term depth    :    3 (   2 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(d10_xboole_0,axiom,(
    ! [A,B] :
      ( A = B
    <=> ( r1_tarski(A,B)
        & r1_tarski(B,A) ) ) )).

fof(dt_k5_relat_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => v1_relat_1(k5_relat_1(A,B)) ) )).

fof(t148_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => k2_relat_1(k7_relat_1(B,A)) = k9_relat_1(B,A) ) )).

fof(t159_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => k9_relat_1(k5_relat_1(B,C),A) = k9_relat_1(C,k9_relat_1(B,A)) ) ) )).

fof(t44_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => r1_tarski(k1_relat_1(k5_relat_1(A,B)),k1_relat_1(A)) ) ) )).

fof(t97_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k1_relat_1(B),A)
       => k7_relat_1(B,A) = B ) ) )).

fof(t160_relat_1,conjecture,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k2_relat_1(k5_relat_1(A,B)) = k9_relat_1(B,k2_relat_1(A)) ) ) )).

%------------------------------------------------------------------------------
