%------------------------------------------------------------------------------
% File     : MPT1067+2.002 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 002 of t184_funct_2
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :    8 (   0 unit)
%            Number of atoms       :   39 (   2 equality)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :   39 (   8   ~;   0   |;  15   &)
%                                         (   2 <=>;  14  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    7 (   0 propositional; 1-3 arity)
%            Number of functors    :    6 (   0 constant; 1-4 arity)
%            Number of variables   :   25 (   0 sgn;  25   !;   0   ?)
%            Maximal term depth    :    4 (   2 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(d10_xboole_0,axiom,(
    ! [A,B] :
      ( A = B
    <=> ( r1_tarski(A,B)
        & r1_tarski(B,A) ) ) )).

fof(d12_setfam_1,axiom,(
    ! [A,B] :
      ( m1_setfam_1(B,A)
    <=> r1_tarski(A,k3_tarski(B)) ) )).

fof(dt_k5_setfam_1,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
     => m1_subset_1(k5_setfam_1(A,B),k1_zfmisc_1(A)) ) )).

fof(redefinition_k5_setfam_1,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
     => k5_setfam_1(A,B) = k3_tarski(B) ) )).

fof(dt_k6_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(B))) )
     => m1_subset_1(k6_funct_2(A,B,C,D),k1_zfmisc_1(k1_zfmisc_1(A))) ) )).

fof(dt_k7_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(A))) )
     => m1_subset_1(k7_funct_2(A,B,C,D),k1_zfmisc_1(k1_zfmisc_1(B))) ) )).

fof(t182_funct_2,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,A,B)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(A)))
                 => ! [E] :
                      ( m1_subset_1(E,k1_zfmisc_1(A))
                     => ( m1_setfam_1(D,E)
                       => m1_setfam_1(k6_funct_2(A,B,C,k7_funct_2(A,B,C,D)),E) ) ) ) ) ) ) )).

fof(t184_funct_2,conjecture,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,A,B)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(A)))
                 => r1_tarski(k5_setfam_1(A,D),k5_setfam_1(A,k6_funct_2(A,B,C,k7_funct_2(A,B,C,D)))) ) ) ) ) )).

%------------------------------------------------------------------------------
