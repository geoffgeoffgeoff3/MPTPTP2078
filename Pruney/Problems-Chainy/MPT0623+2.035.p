%------------------------------------------------------------------------------
% File     : MPT0623+2.035 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 035 of t18_funct_1
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :   14 (   5 unit)
%            Number of atoms       :   41 (  19 equality)
%            Maximal formula depth :    9 (   5 average)
%            Number of connectives :   36 (   9   ~;   1   |;  15   &)
%                                         (   5 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    6 (   0 propositional; 1-2 arity)
%            Number of functors    :    9 (   1 constant; 0-3 arity)
%            Number of variables   :   31 (   0 sgn;  28   !;   3   ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(d3_tarski,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,B) ) ) )).

fof(d4_xboole_0,axiom,(
    ! [A,B,C] :
      ( C = k3_xboole_0(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,A)
            & r2_hidden(D,B) ) ) ) )).

fof(t4_xboole_0,axiom,(
    ! [A,B] :
      ( ~ ( ~ r1_xboole_0(A,B)
          & ! [C] : ~ r2_hidden(C,k3_xboole_0(A,B)) )
      & ~ ( ? [C] : r2_hidden(C,k3_xboole_0(A,B))
          & r1_xboole_0(A,B) ) ) )).

fof(t2_boole,axiom,(
    ! [A] : k3_xboole_0(A,k1_xboole_0) = k1_xboole_0 )).

fof(t2_xboole_1,axiom,(
    ! [A] : r1_tarski(k1_xboole_0,A) )).

fof(t65_xboole_1,axiom,(
    ! [A] : r1_xboole_0(A,k1_xboole_0) )).

fof(d1_tarski,axiom,(
    ! [A,B] :
      ( B = k1_tarski(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> C = A ) ) )).

fof(t70_enumset1,axiom,(
    ! [A,B] : k1_enumset1(A,A,B) = k2_tarski(A,B) )).

fof(t12_setfam_1,axiom,(
    ! [A,B] : k1_setfam_1(k2_tarski(A,B)) = k3_xboole_0(A,B) )).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 )).

fof(t64_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( ( k1_relat_1(A) = k1_xboole_0
          | k2_relat_1(A) = k1_xboole_0 )
       => A = k1_xboole_0 ) ) )).

fof(s3_funct_1__e2_25__funct_1,axiom,(
    ! [A] :
    ? [B] :
      ( v1_relat_1(B)
      & v1_funct_1(B)
      & k1_relat_1(B) = A
      & ! [C] :
          ( r2_hidden(C,A)
         => k1_funct_1(B,C) = k1_xboole_0 ) ) )).

fof(t15_funct_1,axiom,(
    ! [A] :
      ( A != k1_xboole_0
     => ! [B] :
        ? [C] :
          ( v1_relat_1(C)
          & v1_funct_1(C)
          & k1_relat_1(C) = A
          & k2_relat_1(C) = k1_tarski(B) ) ) )).

fof(t18_funct_1,conjecture,(
    ! [A,B] :
      ~ ( ~ ( A = k1_xboole_0
            & B != k1_xboole_0 )
        & ! [C] :
            ( ( v1_relat_1(C)
              & v1_funct_1(C) )
           => ~ ( B = k1_relat_1(C)
                & r1_tarski(k2_relat_1(C),A) ) ) ) )).

%------------------------------------------------------------------------------
