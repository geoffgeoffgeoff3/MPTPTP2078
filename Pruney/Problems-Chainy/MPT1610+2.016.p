%------------------------------------------------------------------------------
% File     : MPT1610+2.016 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 016 of t18_yellow_1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :    7 (   4 unit)
%            Number of atoms       :   12 (   5 equality)
%            Maximal formula depth :    6 (   3 average)
%            Number of connectives :    7 (   2   ~;   0   |;   1   &)
%                                         (   2 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    4 (   0 propositional; 1-2 arity)
%            Number of functors    :    6 (   1 constant; 0-1 arity)
%            Number of variables   :   10 (   0 sgn;  10   !;   0   ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(t2_xboole_1,axiom,(
    ! [A] : r1_tarski(k1_xboole_0,A) )).

fof(t7_boole,axiom,(
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) )).

fof(d1_zfmisc_1,axiom,(
    ! [A,B] :
      ( B = k1_zfmisc_1(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> r1_tarski(C,A) ) ) )).

fof(redefinition_k9_setfam_1,axiom,(
    ! [A] : k9_setfam_1(A) = k1_zfmisc_1(A) )).

fof(t13_yellow_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ( r2_hidden(k1_xboole_0,A)
       => k3_yellow_0(k2_yellow_1(A)) = k1_xboole_0 ) ) )).

fof(t4_yellow_1,axiom,(
    ! [A] : k3_yellow_1(A) = k2_yellow_1(k9_setfam_1(A)) )).

fof(t18_yellow_1,conjecture,(
    ! [A] : k3_yellow_0(k3_yellow_1(A)) = k1_xboole_0 )).

%------------------------------------------------------------------------------
