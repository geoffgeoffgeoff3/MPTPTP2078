%------------------------------------------------------------------------------
% File     : MPT0153+2.003 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 003 of t69_enumset1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :    4 (   2 unit)
%            Number of atoms       :    7 (   4 equality)
%            Maximal formula depth :    5 (   4 average)
%            Number of connectives :    3 (   0   ~;   0   |;   1   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    2 (   0 propositional; 2-2 arity)
%            Number of functors    :    3 (   0 constant; 1-2 arity)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(d10_xboole_0,axiom,(
    ! [A,B] :
      ( A = B
    <=> ( r1_tarski(A,B)
        & r1_tarski(B,A) ) ) )).

fof(t12_xboole_1,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
     => k2_xboole_0(A,B) = B ) )).

fof(t41_enumset1,axiom,(
    ! [A,B] : k2_tarski(A,B) = k2_xboole_0(k1_tarski(A),k1_tarski(B)) )).

fof(t69_enumset1,conjecture,(
    ! [A] : k2_tarski(A,A) = k1_tarski(A) )).

%------------------------------------------------------------------------------
