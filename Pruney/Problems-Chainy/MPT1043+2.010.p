%------------------------------------------------------------------------------
% File     : MPT1043+2.010 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 010 of t159_funct_2
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :   10 (   1 unit)
%            Number of atoms       :   34 (   3 equality)
%            Maximal formula depth :    9 (   6 average)
%            Number of connectives :   27 (   3   ~;   0   |;  12   &)
%                                         (   2 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    7 (   0 propositional; 1-3 arity)
%            Number of functors    :    5 (   1 constant; 0-3 arity)
%            Number of variables   :   24 (   0 sgn;  24   !;   0   ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(d1_xboole_0,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
    <=> ! [B] : ~ r2_hidden(B,A) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,B) ) ) )).

fof(t2_xboole_1,axiom,(
    ! [A] : r1_tarski(k1_xboole_0,A) )).

fof(t3_xboole_1,axiom,(
    ! [A] :
      ( r1_tarski(A,k1_xboole_0)
     => A = k1_xboole_0 ) )).

fof(t7_ordinal1,axiom,(
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & r1_tarski(B,A) ) )).

fof(fc2_partfun1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v1_xboole_0(B)
        & v1_funct_1(C)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => v1_xboole_0(k5_partfun1(A,B,C)) ) )).

fof(t11_funct_2,axiom,(
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ( ( B = k1_xboole_0
         => A = k1_xboole_0 )
       => r2_hidden(C,k1_funct_2(A,B)) ) ) )).

fof(t12_funct_2,axiom,(
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => r2_hidden(B,k1_funct_2(A,A)) ) )).

fof(t158_funct_2,axiom,(
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ! [D] :
          ( r2_hidden(D,k5_partfun1(A,B,C))
         => ( v1_funct_1(D)
            & v1_funct_2(D,A,B)
            & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ) ) )).

fof(t159_funct_2,conjecture,(
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => r1_tarski(k5_partfun1(A,B,C),k1_funct_2(A,B)) ) )).

%------------------------------------------------------------------------------
