%------------------------------------------------------------------------------
% File     : MPT0951+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : wellord2__t22_wellord2.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 1451 ( 353 unit)
%            Number of atoms       : 4797 (1334 equality)
%            Maximal formula depth :   27 (   6 average)
%            Number of connectives : 4101 ( 755   ~;  80   |;1357   &)
%                                         ( 284 <=>;1625  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   54 (   1 propositional; 0-4 arity)
%            Number of functors    :  103 (   3 constant; 0-10 arity)
%            Number of variables   : 4277 (   9 sgn;4113   !; 164   ?)
%            Maximal term depth    :    6 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : A cleaned up version of the MPTP 2078 benchmarks, available at
%            https://github.com/JUrban/MPTP2078
%------------------------------------------------------------------------------
include('Axioms/MPT001+2.ax').
include('Axioms/MPT002+2.ax').
include('Axioms/MPT003+2.ax').
include('Axioms/MPT004+2.ax').
include('Axioms/MPT005+2.ax').
include('Axioms/MPT006+2.ax').
include('Axioms/MPT007+2.ax').
include('Axioms/MPT008+2.ax').
include('Axioms/MPT009+2.ax').
include('Axioms/MPT010+2.ax').
include('Axioms/MPT011+2.ax').
include('Axioms/MPT012+2.ax').
%------------------------------------------------------------------------------
fof(cc6_ordinal1,axiom,(
    ! [A] :
      ( v7_ordinal1(A)
     => v3_ordinal1(A) ) )).

fof(cc7_ordinal1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v7_ordinal1(A) ) )).

fof(d1_wellord2,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( B = k1_wellord2(A)
      <=> ( k3_relat_1(B) = A
          & ! [C,D] :
              ( ( r2_hidden(C,A)
                & r2_hidden(D,A) )
             => ( r2_hidden(k4_tarski(C,D),B)
              <=> r1_tarski(C,D) ) ) ) ) ) )).

fof(d2_wellord2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v2_wellord1(A)
       => ! [B] :
            ( v3_ordinal1(B)
           => ( B = k2_wellord2(A)
            <=> r4_wellord1(A,k1_wellord2(B)) ) ) ) ) )).

fof(d4_relat_2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r4_relat_2(A,B)
        <=> ! [C,D] :
              ( ( r2_hidden(C,B)
                & r2_hidden(D,B)
                & r2_hidden(k4_tarski(C,D),A)
                & r2_hidden(k4_tarski(D,C),A) )
             => C = D ) ) ) )).

fof(d4_wellord2,axiom,(
    ! [A,B] :
      ( r2_wellord2(A,B)
    <=> ? [C] :
          ( v1_relat_1(C)
          & v1_funct_1(C)
          & v2_funct_1(C)
          & k1_relat_1(C) = A
          & k2_relat_1(C) = B ) ) )).

fof(d8_relat_2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r8_relat_2(A,B)
        <=> ! [C,D,E] :
              ( ( r2_hidden(C,B)
                & r2_hidden(D,B)
                & r2_hidden(E,B)
                & r2_hidden(k4_tarski(C,D),A)
                & r2_hidden(k4_tarski(D,E),A) )
             => r2_hidden(k4_tarski(C,E),A) ) ) ) )).

fof(dt_k1_wellord2,axiom,(
    ! [A] : v1_relat_1(k1_wellord2(A)) )).

fof(dt_k2_wellord2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => v3_ordinal1(k2_wellord2(A)) ) )).

fof(dt_o_1_0_wellord2,axiom,(
    ! [A] : m1_subset_1(o_1_0_wellord2(A),A) )).

fof(dt_o_3_0_wellord2,axiom,(
    ! [A,B,C] :
      ( v3_ordinal1(A)
     => m1_subset_1(o_3_0_wellord2(A,B,C),k3_xboole_0(k1_wellord1(k1_wellord2(A),C),B)) ) )).

fof(rc4_ordinal1,axiom,(
    ? [A] : v7_ordinal1(A) )).

fof(rc5_ordinal1,axiom,(
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v7_ordinal1(A) ) )).

fof(redefinition_r2_wellord2,axiom,(
    ! [A,B] :
      ( r2_wellord2(A,B)
    <=> r2_tarski(A,B) ) )).

fof(reflexivity_r2_wellord2,axiom,(
    ! [A,B] : r2_wellord2(A,A) )).

fof(s1_ordinal1__e8_7__wellord2,axiom,(
    ! [A] :
      ( ? [B] :
          ( v3_ordinal1(B)
          & r2_hidden(B,A) )
     => ? [B] :
          ( v3_ordinal1(B)
          & r2_hidden(B,A)
          & ! [C] :
              ( v3_ordinal1(C)
             => ( r2_hidden(C,A)
               => r1_ordinal1(B,C) ) ) ) ) )).

fof(s1_xboole_0__e2_15__wellord2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ? [B] :
        ! [C] :
          ( r2_hidden(C,B)
        <=> ( r2_hidden(C,k3_relat_1(A))
            & ? [D] :
                ( v3_ordinal1(D)
                & r4_wellord1(k2_wellord1(A,k1_wellord1(A,C)),k1_wellord2(D)) ) ) ) ) )).

fof(s2_funct_1__e5_14__wellord2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( ( ! [B,C,D] :
              ( ( r2_hidden(B,k3_relat_1(A))
                & ! [E] :
                    ( v3_ordinal1(E)
                   => ( E = C
                    <=> r4_wellord1(k2_wellord1(A,k1_wellord1(A,B)),k1_wellord2(E)) ) )
                & ! [F] :
                    ( v3_ordinal1(F)
                   => ( F = D
                    <=> r4_wellord1(k2_wellord1(A,k1_wellord1(A,B)),k1_wellord2(F)) ) ) )
             => C = D )
          & ! [B] :
              ~ ( r2_hidden(B,k3_relat_1(A))
                & ! [C] :
                    ~ ! [G] :
                        ( v3_ordinal1(G)
                       => ( G = C
                        <=> r4_wellord1(k2_wellord1(A,k1_wellord1(A,B)),k1_wellord2(G)) ) ) ) )
       => ? [B] :
            ( v1_relat_1(B)
            & v1_funct_1(B)
            & k1_relat_1(B) = k3_relat_1(A)
            & ! [C] :
                ( r2_hidden(C,k3_relat_1(A))
               => ! [H] :
                    ( v3_ordinal1(H)
                   => ( H = k1_funct_1(B,C)
                    <=> r4_wellord1(k2_wellord1(A,k1_wellord1(A,C)),k1_wellord2(H)) ) ) ) ) ) ) )).

fof(symmetry_r2_wellord2,axiom,(
    ! [A,B] :
      ( r2_wellord2(A,B)
     => r2_wellord2(B,A) ) )).

fof(t10_wellord2,axiom,(
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( r2_hidden(A,B)
           => A = k1_wellord1(k1_wellord2(B),A) ) ) ) )).

fof(t11_wellord2,axiom,(
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( r4_wellord1(k1_wellord2(A),k1_wellord2(B))
           => A = B ) ) ) )).

fof(t12_wellord2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( ( r4_wellord1(A,k1_wellord2(B))
                  & r4_wellord1(A,k1_wellord2(C)) )
               => B = C ) ) ) ) )).

fof(t13_wellord2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ~ ( v2_wellord1(A)
          & ! [B] :
              ~ ( r2_hidden(B,k3_relat_1(A))
                & ! [C] :
                    ( v3_ordinal1(C)
                   => ~ r4_wellord1(k2_wellord1(A,k1_wellord1(A,B)),k1_wellord2(C)) ) )
          & ! [B] :
              ( v3_ordinal1(B)
             => ~ r4_wellord1(A,k1_wellord2(B)) ) ) ) )).

fof(t14_wellord2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ~ ( v2_wellord1(A)
          & ! [B] :
              ( v3_ordinal1(B)
             => ~ r4_wellord1(A,k1_wellord2(B)) ) ) ) )).

fof(t17_wellord2,axiom,(
    ! [A,B] :
      ( v3_ordinal1(B)
     => ( r1_tarski(A,B)
       => r1_ordinal1(k2_wellord2(k1_wellord2(A)),B) ) ) )).

fof(t22_wellord2,conjecture,(
    ! [A,B,C] :
      ( ( r2_wellord2(A,B)
        & r2_wellord2(B,C) )
     => r2_wellord2(A,C) ) )).

fof(t2_wellord2,axiom,(
    ! [A] : v1_relat_2(k1_wellord2(A)) )).

fof(t3_wellord2,axiom,(
    ! [A] : v8_relat_2(k1_wellord2(A)) )).

fof(t4_wellord2,axiom,(
    ! [A] :
      ( v3_ordinal1(A)
     => v6_relat_2(k1_wellord2(A)) ) )).

fof(t5_wellord2,axiom,(
    ! [A] : v4_relat_2(k1_wellord2(A)) )).

fof(t6_wellord2,axiom,(
    ! [A] :
      ( v3_ordinal1(A)
     => v1_wellord1(k1_wellord2(A)) ) )).

fof(t7_wellord2,axiom,(
    ! [A] :
      ( v3_ordinal1(A)
     => v2_wellord1(k1_wellord2(A)) ) )).

fof(t8_wellord2,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
     => k2_wellord1(k1_wellord2(B),A) = k1_wellord2(A) ) )).

fof(t9_wellord2,axiom,(
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( r1_tarski(B,A)
         => v2_wellord1(k1_wellord2(B)) ) ) )).

%------------------------------------------------------------------------------
