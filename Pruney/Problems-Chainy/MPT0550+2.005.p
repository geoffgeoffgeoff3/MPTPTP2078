%------------------------------------------------------------------------------
% File     : MPT0550+2.005 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 005 of t152_relat_1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :    7 (   2 unit)
%            Number of atoms       :   17 (   7 equality)
%            Maximal formula depth :    8 (   5 average)
%            Number of connectives :   19 (   9   ~;   0   |;   6   &)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    5 (   0 propositional; 1-2 arity)
%            Number of functors    :    6 (   1 constant; 0-2 arity)
%            Number of variables   :   16 (   0 sgn;  15   !;   1   ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(t4_xboole_0,axiom,(
    ! [A,B] :
      ( ~ ( ~ r1_xboole_0(A,B)
          & ! [C] : ~ r2_hidden(C,k3_xboole_0(A,B)) )
      & ~ ( ? [C] : r2_hidden(C,k3_xboole_0(A,B))
          & r1_xboole_0(A,B) ) ) )).

fof(t7_xboole_0,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] : ~ r2_hidden(B,A) ) )).

fof(t28_xboole_1,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
     => k3_xboole_0(A,B) = A ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : k2_tarski(A,B) = k2_tarski(B,A) )).

fof(t12_setfam_1,axiom,(
    ! [A,B] : k1_setfam_1(k2_tarski(A,B)) = k3_xboole_0(A,B) )).

fof(t151_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( k9_relat_1(B,A) = k1_xboole_0
      <=> r1_xboole_0(k1_relat_1(B),A) ) ) )).

fof(t152_relat_1,conjecture,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ~ ( A != k1_xboole_0
          & r1_tarski(A,k1_relat_1(B))
          & k9_relat_1(B,A) = k1_xboole_0 ) ) )).

%------------------------------------------------------------------------------
