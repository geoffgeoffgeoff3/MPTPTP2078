%------------------------------------------------------------------------------
% File     : MPT0918+2.003 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 003 of t78_mcart_1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :    4 (   2 unit)
%            Number of atoms       :   22 (  20 equality)
%            Maximal formula depth :   21 (  13 average)
%            Number of connectives :   30 (  12   ~;   0   |;  17   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    2 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   1 constant; 0-5 arity)
%            Number of variables   :   25 (   0 sgn;  16   !;   9   ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(d3_mcart_1,axiom,(
    ! [A,B,C] : k3_mcart_1(A,B,C) = k4_tarski(k4_tarski(A,B),C) )).

fof(d4_mcart_1,axiom,(
    ! [A,B,C,D] : k4_mcart_1(A,B,C,D) = k4_tarski(k3_mcart_1(A,B,C),D) )).

fof(t59_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ? [E] :
            ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
            & ? [F,G,H,I] :
                ( E = k4_mcart_1(F,G,H,I)
                & ~ ( k8_mcart_1(A,B,C,D,E) = F
                    & k9_mcart_1(A,B,C,D,E) = G
                    & k10_mcart_1(A,B,C,D,E) = H
                    & k11_mcart_1(A,B,C,D,E) = I ) ) ) ) )).

fof(t78_mcart_1,conjecture,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
     => ~ ( A != k1_xboole_0
          & B != k1_xboole_0
          & C != k1_xboole_0
          & D != k1_xboole_0
          & ? [F,G,H,I] :
              ( E = k4_mcart_1(F,G,H,I)
              & ~ ( k8_mcart_1(A,B,C,D,E) = F
                  & k9_mcart_1(A,B,C,D,E) = G
                  & k10_mcart_1(A,B,C,D,E) = H
                  & k11_mcart_1(A,B,C,D,E) = I ) ) ) ) )).

%------------------------------------------------------------------------------
