%------------------------------------------------------------------------------
% File     : MPT1074+2.024 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 024 of t191_funct_2
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :   13 (   1 unit)
%            Number of atoms       :   54 (  13 equality)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :   44 (   3   ~;   2   |;  14   &)
%                                         (   4 <=>;  21  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    8 (   0 propositional; 1-3 arity)
%            Number of functors    :    9 (   1 constant; 0-4 arity)
%            Number of variables   :   37 (   0 sgn;  37   !;   0   ?)
%            Maximal term depth    :    4 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(t113_zfmisc_1,axiom,(
    ! [A,B] :
      ( k2_zfmisc_1(A,B) = k1_xboole_0
    <=> ( A = k1_xboole_0
        | B = k1_xboole_0 ) ) )).

fof(t1_subset,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) )).

fof(t3_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) )).

fof(cc2_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_relat_1(B) ) ) )).

fof(fc6_relat_1,axiom,(
    ! [A,B] : v1_relat_1(k2_zfmisc_1(A,B)) )).

fof(dt_k2_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => m1_subset_1(k2_relset_1(A,B,C),k1_zfmisc_1(B)) ) )).

fof(redefinition_k1_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => k1_relset_1(A,B,C) = k1_relat_1(C) ) )).

fof(redefinition_k2_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => k2_relset_1(A,B,C) = k2_relat_1(C) ) )).

fof(d1_funct_2,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => ( ( ( B = k1_xboole_0
           => A = k1_xboole_0 )
         => ( v1_funct_2(C,A,B)
          <=> A = k1_relset_1(A,B,C) ) )
        & ( B = k1_xboole_0
         => ( A = k1_xboole_0
            | ( v1_funct_2(C,A,B)
            <=> C = k1_xboole_0 ) ) ) ) ) )).

fof(redefinition_k3_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(D,A) )
     => k3_funct_2(A,B,C,D) = k1_funct_1(C,D) ) )).

fof(t4_funct_2,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( r1_tarski(k2_relat_1(B),A)
       => ( v1_funct_1(B)
          & v1_funct_2(B,k1_relat_1(B),A)
          & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(B),A))) ) ) ) )).

fof(t5_funct_2,axiom,(
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( ( k1_relat_1(C) = A
          & ! [D] :
              ( r2_hidden(D,A)
             => r2_hidden(k1_funct_1(C,D),B) ) )
       => ( v1_funct_1(C)
          & v1_funct_2(C,A,B)
          & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ) ) )).

fof(t191_funct_2,conjecture,(
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ! [C] :
          ( ~ v1_xboole_0(C)
         => ! [D] :
              ( ( v1_funct_1(D)
                & v1_funct_2(D,B,C)
                & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(B,C))) )
             => ( ! [E] :
                    ( m1_subset_1(E,B)
                   => r2_hidden(k3_funct_2(B,C,D,E),A) )
               => r1_tarski(k2_relset_1(B,C,D),A) ) ) ) ) )).

%------------------------------------------------------------------------------
