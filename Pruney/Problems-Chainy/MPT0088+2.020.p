%------------------------------------------------------------------------------
% File     : MPT0088+2.020 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 020 of t81_xboole_1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :   10 (   7 unit)
%            Number of atoms       :   13 (   8 equality)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   2 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    3 (   1 constant; 0-2 arity)
%            Number of variables   :   21 (   0 sgn;  21   !;   0   ?)
%            Maximal term depth    :    3 (   2 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(d7_xboole_0,axiom,(
    ! [A,B] :
      ( r1_xboole_0(A,B)
    <=> k3_xboole_0(A,B) = k1_xboole_0 ) )).

fof(l32_xboole_1,axiom,(
    ! [A,B] :
      ( k4_xboole_0(A,B) = k1_xboole_0
    <=> r1_tarski(A,B) ) )).

fof(t2_boole,axiom,(
    ! [A] : k3_xboole_0(A,k1_xboole_0) = k1_xboole_0 )).

fof(t36_xboole_1,axiom,(
    ! [A,B] : r1_tarski(k4_xboole_0(A,B),A) )).

fof(t3_boole,axiom,(
    ! [A] : k4_xboole_0(A,k1_xboole_0) = A )).

fof(t47_xboole_1,axiom,(
    ! [A,B] : k4_xboole_0(A,k3_xboole_0(A,B)) = k4_xboole_0(A,B) )).

fof(t48_xboole_1,axiom,(
    ! [A,B] : k4_xboole_0(A,k4_xboole_0(A,B)) = k3_xboole_0(A,B) )).

fof(t49_xboole_1,axiom,(
    ! [A,B,C] : k3_xboole_0(A,k4_xboole_0(B,C)) = k4_xboole_0(k3_xboole_0(A,B),C) )).

fof(t50_xboole_1,axiom,(
    ! [A,B,C] : k3_xboole_0(A,k4_xboole_0(B,C)) = k4_xboole_0(k3_xboole_0(A,B),k3_xboole_0(A,C)) )).

fof(t81_xboole_1,conjecture,(
    ! [A,B,C] :
      ( r1_xboole_0(A,k4_xboole_0(B,C))
     => r1_xboole_0(B,k4_xboole_0(A,C)) ) )).

%------------------------------------------------------------------------------
