%------------------------------------------------------------------------------
% File     : MPT0631+1 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : funct_1__t33_funct_1.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    :   29 (   9 unit)
%            Number of atoms       :  110 (  35 equality)
%            Maximal formula depth :   15 (   5 average)
%            Number of connectives :   93 (  12   ~;   1   |;  39   &)
%                                         (   5 <=>;  36  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    8 (   1 propositional; 0-2 arity)
%            Number of functors    :    8 (   3 constant; 0-2 arity)
%            Number of variables   :   58 (   0 sgn;  54   !;   4   ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : A cleaned up version of the MPTP 2078 benchmarks, available at
%            https://github.com/JUrban/MPTP2078
%------------------------------------------------------------------------------
fof(t33_funct_1,conjecture,(
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( ( r1_tarski(k2_relat_1(B),A)
          & ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ! [D] :
                  ( ( v1_relat_1(D)
                    & v1_funct_1(D) )
                 => ( ( k1_relat_1(C) = A
                      & k1_relat_1(D) = A
                      & k5_relat_1(B,C) = k5_relat_1(B,D) )
                   => C = D ) ) ) )
       => A = k2_relat_1(B) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) )).

fof(d10_xboole_0,axiom,(
    ! [A,B] :
      ( A = B
    <=> ( r1_tarski(A,B)
        & r1_tarski(B,A) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,B) ) ) )).

fof(d5_funct_1,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( B = k2_relat_1(A)
        <=> ! [C] :
              ( r2_hidden(C,B)
            <=> ? [D] :
                  ( r2_hidden(D,k1_relat_1(A))
                  & C = k1_funct_1(A,D) ) ) ) ) )).

fof(dt_k1_funct_1,axiom,(
    $true )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k5_relat_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => v1_relat_1(k5_relat_1(A,B)) ) )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_o_0_0_xboole_0,axiom,(
    v1_xboole_0(o_0_0_xboole_0) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] :
    ? [B] : m1_subset_1(B,A) )).

fof(s2_funct_1__e5_44_1__funct_1,axiom,(
    ! [A,B] :
      ( ( ! [C,D,E] :
            ( ( r2_hidden(C,A)
              & ( C = B
               => D = np__1 )
              & ( C != B
               => D = k1_xboole_0 )
              & ( C = B
               => E = np__1 )
              & ( C != B
               => E = k1_xboole_0 ) )
           => D = E )
        & ! [C] :
            ~ ( r2_hidden(C,A)
              & ! [D] :
                  ~ ( ( C = B
                     => D = np__1 )
                    & ( C != B
                     => D = k1_xboole_0 ) ) ) )
     => ? [C] :
          ( v1_relat_1(C)
          & v1_funct_1(C)
          & k1_relat_1(C) = A
          & ! [D] :
              ( r2_hidden(D,A)
             => ( ( D = B
                 => k1_funct_1(C,D) = np__1 )
                & ( D != B
                 => k1_funct_1(C,D) = k1_xboole_0 ) ) ) ) ) )).

fof(s3_funct_1__e9_44_1__funct_1,axiom,(
    ! [A] :
    ? [B] :
      ( v1_relat_1(B)
      & v1_funct_1(B)
      & k1_relat_1(B) = A
      & ! [C] :
          ( r2_hidden(C,A)
         => k1_funct_1(B,C) = k1_xboole_0 ) ) )).

fof(spc1_boole,axiom,(
    ~ v1_xboole_0(np__1) )).

fof(t1_subset,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) )).

fof(t22_funct_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( r2_hidden(A,k1_relat_1(k5_relat_1(C,B)))
           => k1_funct_1(k5_relat_1(C,B),A) = k1_funct_1(B,k1_funct_1(C,A)) ) ) ) )).

fof(t2_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) )).

fof(t3_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) )).

fof(t46_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r1_tarski(k2_relat_1(A),k1_relat_1(B))
           => k1_relat_1(k5_relat_1(A,B)) = k1_relat_1(A) ) ) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C) ) )).

fof(t6_boole,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => A = k1_xboole_0 ) )).

fof(t7_boole,axiom,(
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] :
      ~ ( v1_xboole_0(A)
        & A != B
        & v1_xboole_0(B) ) )).

fof(t9_funct_1,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( k1_relat_1(A) = k1_relat_1(B)
              & ! [C] :
                  ( r2_hidden(C,k1_relat_1(A))
                 => k1_funct_1(A,C) = k1_funct_1(B,C) ) )
           => A = B ) ) ) )).

fof(fc2_funct_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_relat_1(k5_relat_1(A,B))
        & v1_funct_1(k5_relat_1(A,B)) ) ) )).

%------------------------------------------------------------------------------
