%------------------------------------------------------------------------------
% File     : MPT0448+2.002 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 002 of t32_relat_1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :    6 (   3 unit)
%            Number of atoms       :   11 (   8 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :    5 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    2 (   0 propositional; 1-2 arity)
%            Number of functors    :    8 (   0 constant; 1-2 arity)
%            Number of variables   :   12 (   0 sgn;  12   !;   0   ?)
%            Maximal term depth    :    4 (   2 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(t41_enumset1,axiom,(
    ! [A,B] : k2_tarski(A,B) = k2_xboole_0(k1_tarski(A),k1_tarski(B)) )).

fof(t115_zfmisc_1,axiom,(
    ! [A,B] :
      ( k2_zfmisc_1(A,A) = k2_zfmisc_1(B,B)
     => A = B ) )).

fof(d6_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => k3_relat_1(A) = k2_xboole_0(k1_relat_1(A),k2_relat_1(A)) ) )).

fof(fc5_relat_1,axiom,(
    ! [A,B] : v1_relat_1(k1_tarski(k4_tarski(A,B))) )).

fof(t23_relat_1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( C = k1_tarski(k4_tarski(A,B))
       => ( k1_relat_1(C) = k1_tarski(A)
          & k2_relat_1(C) = k1_tarski(B) ) ) ) )).

fof(t32_relat_1,conjecture,(
    ! [A,B] : k3_relat_1(k1_tarski(k4_tarski(A,B))) = k2_tarski(A,B) )).

%------------------------------------------------------------------------------
