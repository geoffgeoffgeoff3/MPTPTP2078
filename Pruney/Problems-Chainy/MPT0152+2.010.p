%------------------------------------------------------------------------------
% File     : MPT0152+2.010 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 010 of t68_enumset1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :    7 (   7 unit)
%            Number of atoms       :    7 (   7 equality)
%            Maximal formula depth :    9 (   6 average)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    7 (   0 constant; 1-8 arity)
%            Number of variables   :   35 (   0 sgn;  35   !;   0   ?)
%            Maximal term depth    :    3 (   3 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(t4_xboole_1,axiom,(
    ! [A,B,C] : k2_xboole_0(k2_xboole_0(A,B),C) = k2_xboole_0(A,k2_xboole_0(B,C)) )).

fof(t41_enumset1,axiom,(
    ! [A,B] : k2_tarski(A,B) = k2_xboole_0(k1_tarski(A),k1_tarski(B)) )).

fof(t42_enumset1,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k2_xboole_0(k1_tarski(A),k2_tarski(B,C)) )).

fof(t44_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_tarski(A),k1_enumset1(B,C,D)) )).

fof(t58_enumset1,axiom,(
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k1_enumset1(A,B,C),k2_enumset1(D,E,F,G)) )).

fof(t62_enumset1,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k1_tarski(A),k5_enumset1(B,C,D,E,F,G,H)) )).

fof(t68_enumset1,conjecture,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k5_enumset1(A,B,C,D,E,F,G),k1_tarski(H)) )).

%------------------------------------------------------------------------------
