%------------------------------------------------------------------------------
% File     : MPT0190+2.003 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 003 of t109_enumset1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :   11 (  11 unit)
%            Number of atoms       :   11 (  11 equality)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   0 constant; 1-6 arity)
%            Number of variables   :   38 (   0 sgn;  38   !;   0   ?)
%            Maximal term depth    :    3 (   2 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(t98_xboole_1,axiom,(
    ! [A,B] : k2_xboole_0(A,B) = k5_xboole_0(A,k4_xboole_0(B,A)) )).

fof(l57_enumset1,axiom,(
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k1_enumset1(A,B,C),k2_tarski(D,E)) )).

fof(t102_enumset1,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(C,B,A) )).

fof(t46_enumset1,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_enumset1(A,B,C),k1_tarski(D)) )).

fof(t48_enumset1,axiom,(
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k2_tarski(A,B),k1_enumset1(C,D,E)) )).

fof(t69_enumset1,axiom,(
    ! [A] : k2_tarski(A,A) = k1_tarski(A) )).

fof(t71_enumset1,axiom,(
    ! [A,B,C] : k2_enumset1(A,A,B,C) = k1_enumset1(A,B,C) )).

fof(t72_enumset1,axiom,(
    ! [A,B,C,D] : k3_enumset1(A,A,B,C,D) = k2_enumset1(A,B,C,D) )).

fof(t73_enumset1,axiom,(
    ! [A,B,C,D,E] : k4_enumset1(A,A,B,C,D,E) = k3_enumset1(A,B,C,D,E) )).

fof(t83_enumset1,axiom,(
    ! [A,B] : k3_enumset1(A,A,A,A,B) = k2_tarski(A,B) )).

fof(t109_enumset1,conjecture,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,A,D,C) )).

%------------------------------------------------------------------------------
