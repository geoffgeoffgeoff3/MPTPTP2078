%------------------------------------------------------------------------------
% File     : MPT1190+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : orders_2__t162_orders_2.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 1994 ( 386 unit)
%            Number of atoms       : 8164 (1686 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives : 7353 (1183   ~; 113   |;2882   &)
%                                         ( 387 <=>;2788  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   96 (   1 propositional; 0-4 arity)
%            Number of functors    :  157 (   4 constant; 0-10 arity)
%            Number of variables   : 5925 (   9 sgn;5687   !; 238   ?)
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
include('Axioms/MPT013+2.ax').
include('Axioms/MPT014+2.ax').
include('Axioms/MPT015+2.ax').
include('Axioms/MPT016+2.ax').
%------------------------------------------------------------------------------
fof(cc1_orders_1,axiom,(
    ! [A] :
      ( ( v1_xboole_0(A)
        & v1_relat_1(A) )
     => ( v1_relat_1(A)
        & v2_wellord1(A)
        & v1_orders_1(A)
        & v2_orders_1(A)
        & v3_orders_1(A) ) ) )).

fof(cc1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v3_orders_2(A)
       => v2_orders_2(A) ) ) )).

fof(cc2_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_xboole_0(B)
           => v6_orders_2(B,A) ) ) ) )).

fof(commutativity_k7_domain_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k7_domain_1(A,B,C) = k7_domain_1(A,C,B) ) )).

fof(d10_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_orders_2(A,B,C)
              <=> ( r1_orders_2(A,B,C)
                  & B != C ) ) ) ) ) )).

fof(d11_orders_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r6_orders_1(A,B)
        <=> ( r2_hidden(B,k3_relat_1(A))
            & ! [C] :
                ~ ( r2_hidden(C,k3_relat_1(A))
                  & C != B
                  & r2_hidden(k4_tarski(B,C),A) ) ) ) ) )).

fof(d11_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v6_orders_2(B,A)
          <=> r7_relat_2(u1_orders_2(A),B) ) ) ) )).

fof(d12_orders_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r7_orders_1(A,B)
        <=> ( r2_hidden(B,k3_relat_1(A))
            & ! [C] :
                ~ ( r2_hidden(C,k3_relat_1(A))
                  & C != B
                  & r2_hidden(k4_tarski(C,B),A) ) ) ) ) )).

fof(d12_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => k1_orders_2(A,B) = a_2_0_orders_2(A,B) ) ) )).

fof(d13_orders_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r8_orders_1(A,B)
        <=> ( r2_hidden(B,k3_relat_1(A))
            & ! [C] :
                ( r2_hidden(C,k3_relat_1(A))
               => ( C = B
                  | r2_hidden(k4_tarski(C,B),A) ) ) ) ) ) )).

fof(d13_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => k2_orders_2(A,B) = a_2_1_orders_2(A,B) ) ) )).

fof(d14_orders_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r9_orders_1(A,B)
        <=> ( r2_hidden(B,k3_relat_1(A))
            & ! [C] :
                ( r2_hidden(C,k3_relat_1(A))
               => ( C = B
                  | r2_hidden(k4_tarski(B,C),A) ) ) ) ) ) )).

fof(d14_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k3_orders_2(A,B,C) = k9_subset_1(u1_struct_0(A),k2_orders_2(A,k6_domain_1(u1_struct_0(A),C)),B) ) ) ) )).

fof(d15_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( B != k1_xboole_0
                 => ( m1_orders_2(C,A,B)
                  <=> ? [D] :
                        ( m1_subset_1(D,u1_struct_0(A))
                        & r2_hidden(D,B)
                        & C = k3_orders_2(A,B,D) ) ) )
                & ( B = k1_xboole_0
                 => ( m1_orders_2(C,A,B)
                  <=> C = k1_xboole_0 ) ) ) ) ) ) )).

fof(d16_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => ! [C] :
              ( ( v6_orders_2(C,A)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => ( m2_orders_2(C,A,B)
              <=> ( C != k1_xboole_0
                  & r2_wellord1(u1_orders_2(A),C)
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( r2_hidden(D,C)
                       => k1_funct_1(B,k1_orders_2(A,k3_orders_2(A,C,D))) = D ) ) ) ) ) ) ) )).

fof(d17_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => ! [C] :
              ( C = k4_orders_2(A,B)
            <=> ! [D] :
                  ( r2_hidden(D,C)
                <=> m2_orders_2(D,A,B) ) ) ) ) )).

fof(d1_orders_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ( ~ r2_hidden(k1_xboole_0,A)
       => ! [B] :
            ( ( v1_funct_1(B)
              & v1_funct_2(B,A,k3_tarski(A))
              & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,k3_tarski(A)))) )
           => ( m1_orders_1(B,A)
            <=> ! [C] :
                  ( r2_hidden(C,A)
                 => r2_hidden(k1_funct_1(B,C),C) ) ) ) ) ) )).

fof(d2_orders_1,axiom,(
    ! [A] : k1_orders_1(A) = k7_subset_1(k1_zfmisc_1(A),k9_setfam_1(A),k1_tarski(k1_xboole_0)) )).

fof(d4_orders_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v2_orders_1(A)
      <=> ( v1_relat_2(A)
          & v8_relat_2(A)
          & v4_relat_2(A) ) ) ) )).

fof(d4_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v3_orders_2(A)
      <=> r1_relat_2(u1_orders_2(A),u1_struct_0(A)) ) ) )).

fof(d5_orders_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v3_orders_1(A)
      <=> ( v1_relat_2(A)
          & v8_relat_2(A)
          & v4_relat_2(A)
          & v6_relat_2(A) ) ) ) )).

fof(d5_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v4_orders_2(A)
      <=> r8_relat_2(u1_orders_2(A),u1_struct_0(A)) ) ) )).

fof(d6_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v5_orders_2(A)
      <=> r4_relat_2(u1_orders_2(A),u1_struct_0(A)) ) ) )).

fof(d7_relat_2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r7_relat_2(A,B)
        <=> ! [C,D] :
              ~ ( r2_hidden(C,B)
                & r2_hidden(D,B)
                & ~ r2_hidden(k4_tarski(C,D),A)
                & ~ r2_hidden(k4_tarski(D,C),A) ) ) ) )).

fof(d8_orders_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r3_orders_1(A,B)
        <=> ( r1_relat_2(A,B)
            & r8_relat_2(A,B)
            & r4_relat_2(A,B)
            & r6_relat_2(A,B) ) ) ) )).

fof(d9_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r1_orders_2(A,B,C)
              <=> r2_hidden(k4_tarski(B,C),u1_orders_2(A)) ) ) ) ) )).

fof(dt_k1_domain_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(C,A)
        & m1_subset_1(D,B) )
     => m1_subset_1(k1_domain_1(A,B,C,D),k2_zfmisc_1(A,B)) ) )).

fof(dt_k1_orders_1,axiom,(
    $true )).

fof(dt_k1_orders_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k1_orders_2(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k2_orders_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k2_orders_2(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k3_orders_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k3_orders_2(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k4_orders_2,axiom,(
    $true )).

fof(dt_k6_domain_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A) )
     => m1_subset_1(k6_domain_1(A,B),k1_zfmisc_1(A)) ) )).

fof(dt_k7_domain_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => m1_subset_1(k7_domain_1(A,B,C),k1_zfmisc_1(A)) ) )).

fof(dt_l1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => l1_struct_0(A) ) )).

fof(dt_m1_orders_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( m1_orders_1(B,A)
         => ( v1_funct_1(B)
            & v1_funct_2(B,A,k3_tarski(A))
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,k3_tarski(A)))) ) ) ) )).

fof(dt_m1_orders_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ! [C] :
          ( m1_orders_2(C,A,B)
         => m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) ) ) )).

fof(dt_m2_orders_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_orders_1(B,k1_orders_1(u1_struct_0(A))) )
     => ! [C] :
          ( m2_orders_2(C,A,B)
         => ( v6_orders_2(C,A)
            & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) ) ) ) )).

fof(dt_o_1_0_orders_2,axiom,(
    ! [A] : m1_subset_1(o_1_0_orders_2(A),A) )).

fof(dt_o_1_1_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => m1_orders_1(o_1_1_orders_2(A),k1_orders_1(u1_struct_0(A))) ) )).

fof(dt_o_3_0_orders_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(o_3_0_orders_2(A,B,C),k9_subset_1(u1_struct_0(A),k1_wellord1(u1_orders_2(A),C),k6_domain_1(u1_struct_0(A),B))) ) )).

fof(dt_o_4_0_orders_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
        & m2_orders_2(C,A,B)
        & m1_subset_1(D,u1_struct_0(A)) )
     => m1_subset_1(o_4_0_orders_2(A,B,C,D),k9_subset_1(u1_struct_0(A),k2_orders_2(A,k6_domain_1(u1_struct_0(A),D)),C)) ) )).

fof(dt_o_4_1_orders_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_orders_1(C,k1_orders_1(u1_struct_0(A)))
        & m2_orders_2(D,A,C) )
     => m1_subset_1(o_4_1_orders_2(A,B,C,D),k9_subset_1(u1_struct_0(A),k2_orders_2(A,k6_domain_1(u1_struct_0(A),B)),D)) ) )).

fof(dt_o_4_3_orders_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_orders_1(C,k1_orders_1(u1_struct_0(A)))
        & m2_orders_2(D,A,C) )
     => m1_subset_1(o_4_3_orders_2(A,B,C,D),k7_subset_1(u1_struct_0(A),B,D)) ) )).

fof(dt_u1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => m1_subset_1(u1_orders_2(A),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) ) )).

fof(existence_l1_orders_2,axiom,(
    ? [A] : l1_orders_2(A) )).

fof(existence_m1_orders_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] : m1_orders_1(B,A) ) )).

fof(existence_m1_orders_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ? [C] : m1_orders_2(C,A,B) ) )).

fof(existence_m2_orders_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_orders_1(B,k1_orders_1(u1_struct_0(A))) )
     => ? [C] : m2_orders_2(C,A,B) ) )).

fof(fc1_orders_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ~ v1_xboole_0(k1_orders_1(A)) ) )).

fof(fc2_orders_1,axiom,(
    ! [A] :
      ( ( v1_xboole_0(A)
        & v1_relat_1(A) )
     => v1_xboole_0(k3_relat_1(A)) ) )).

fof(fc2_orders_2,axiom,(
    ! [A] :
      ( ( v2_orders_2(A)
        & l1_orders_2(A) )
     => v1_partfun1(u1_orders_2(A),u1_struct_0(A)) ) )).

fof(fc3_orders_2,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & l1_orders_2(A) )
     => v1_relat_2(u1_orders_2(A)) ) )).

fof(fc4_orders_2,axiom,(
    ! [A] :
      ( ( v2_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => v4_relat_2(u1_orders_2(A)) ) )).

fof(fc5_orders_2,axiom,(
    ! [A] :
      ( ( v2_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => v8_relat_2(u1_orders_2(A)) ) )).

fof(fc9_orders_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_orders_1(B,k1_orders_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k4_orders_2(A,B)) ) )).

fof(fraenkel_a_2_0_orders_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v5_orders_2(B)
        & l1_orders_2(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_2_0_orders_2(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(B))
               => ( r2_hidden(E,C)
                 => r2_orders_2(B,E,D) ) ) ) ) ) )).

fof(fraenkel_a_2_1_orders_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v5_orders_2(B)
        & l1_orders_2(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_2_1_orders_2(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(B))
               => ( r2_hidden(E,C)
                 => r2_orders_2(B,D,E) ) ) ) ) ) )).

fof(fraenkel_a_2_3_orders_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v5_orders_2(B)
        & l1_orders_2(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r2_hidden(A,a_2_3_orders_2(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(B))
               => ( r2_hidden(E,k6_domain_1(u1_struct_0(B),C))
                 => r2_orders_2(B,D,E) ) ) ) ) ) )).

fof(fraenkel_a_2_5_orders_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v5_orders_2(B)
        & l1_orders_2(B)
        & m2_orders_2(C,B,o_1_1_orders_2(B)) )
     => ( r2_hidden(A,a_2_5_orders_2(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(B))
               => ( r2_hidden(E,C)
                 => r2_orders_2(B,E,D) ) ) ) ) ) )).

fof(fraenkel_a_4_2_orders_2,axiom,(
    ! [A,B,C,D,E] :
      ( ( ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v5_orders_2(B)
        & l1_orders_2(B)
        & m1_orders_1(C,k1_orders_1(u1_struct_0(B)))
        & m2_orders_2(D,B,C)
        & m2_orders_2(E,B,C) )
     => ( r2_hidden(A,a_4_2_orders_2(B,C,D,E))
      <=> ? [F] :
            ( m1_subset_1(F,u1_struct_0(B))
            & A = F
            & r2_hidden(F,k9_subset_1(u1_struct_0(B),D,E))
            & k3_orders_2(B,D,F) = k3_orders_2(B,E,F) ) ) ) )).

fof(irreflexivity_r2_orders_2,axiom,(
    ! [A,B,C] :
      ( ( l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => ~ r2_orders_2(A,B,B) ) )).

fof(l104_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => ( v6_orders_2(k3_tarski(k4_orders_2(A,B)),A)
            & m1_subset_1(k3_tarski(k4_orders_2(A,B)),k1_zfmisc_1(u1_struct_0(A))) ) ) ) )).

fof(l183_orders_2,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( r2_wellord1(C,A)
          & r1_tarski(B,A) )
       => r2_wellord1(C,B) ) ) )).

fof(l7_orders_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v5_orders_2(B)
        & l1_orders_2(B) )
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
         => ( r2_hidden(A,C)
           => m1_subset_1(A,u1_struct_0(B)) ) ) ) )).

fof(rc3_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v6_orders_2(B,A) ) ) )).

fof(redefinition_k1_domain_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(C,A)
        & m1_subset_1(D,B) )
     => k1_domain_1(A,B,C,D) = k4_tarski(C,D) ) )).

fof(redefinition_k6_domain_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A) )
     => k6_domain_1(A,B) = k1_tarski(B) ) )).

fof(redefinition_k7_domain_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k7_domain_1(A,B,C) = k2_tarski(B,C) ) )).

fof(redefinition_r3_orders_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => ( r3_orders_2(A,B,C)
      <=> r1_orders_2(A,B,C) ) ) )).

fof(reflexivity_r3_orders_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => r3_orders_2(A,B,B) ) )).

fof(t100_orders_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_2(B)
        & v4_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => k3_relat_1(B) = A ) )).

fof(t107_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => k3_relat_1(k2_wellord1(u1_orders_2(A),B)) = B ) ) )).

fof(t108_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v3_orders_1(k2_wellord1(u1_orders_2(A),B))
           => ( v6_orders_2(B,A)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) ) ) ) ) )).

fof(t109_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( v6_orders_2(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => v3_orders_1(k2_wellord1(u1_orders_2(A),B)) ) ) )).

fof(t114_orders_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v2_orders_1(A)
         => v2_orders_1(k2_wellord1(A,B)) ) ) )).

fof(t135_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r3_orders_1(u1_orders_2(A),B)
           => ( v6_orders_2(B,A)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) ) ) ) ) )).

fof(t136_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( v6_orders_2(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => r3_orders_1(u1_orders_2(A),B) ) ) )).

fof(t158_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r7_orders_1(u1_orders_2(A),B)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ~ r2_orders_2(A,C,B) ) ) ) ) )).

fof(t159_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r6_orders_1(u1_orders_2(A),B)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ~ r2_orders_2(A,B,C) ) ) ) ) )).

fof(t160_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r8_orders_1(u1_orders_2(A),B)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( B != C
                 => r2_orders_2(A,C,B) ) ) ) ) ) )).

fof(t161_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r9_orders_1(u1_orders_2(A),B)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( B != C
                 => r2_orders_2(A,B,C) ) ) ) ) ) )).

fof(t162_orders_2,conjecture,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ~ ( ! [B] :
              ( ( v6_orders_2(B,A)
                & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
             => ? [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( r2_hidden(D,B)
                       => r3_orders_2(A,D,C) ) ) ) )
          & ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => ? [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                  & r2_orders_2(A,B,C) ) ) ) ) )).

fof(t24_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => r1_orders_2(A,B,B) ) ) )).

fof(t25_orders_2,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( r1_orders_2(A,B,C)
                  & r1_orders_2(A,C,B) )
               => B = C ) ) ) ) )).

fof(t26_orders_2,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( r1_orders_2(A,B,C)
                      & r1_orders_2(A,C,D) )
                   => r1_orders_2(A,B,D) ) ) ) ) ) )).

fof(t28_orders_2,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ~ ( r2_orders_2(A,B,C)
                  & r2_orders_2(A,C,B) ) ) ) ) )).

fof(t29_orders_2,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( r2_orders_2(A,B,C)
                      & r2_orders_2(A,C,D) )
                   => r2_orders_2(A,B,D) ) ) ) ) ) )).

fof(t30_orders_2,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ~ ( r1_orders_2(A,B,C)
                  & r2_orders_2(A,C,B) ) ) ) ) )).

fof(t32_orders_2,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( ( r2_orders_2(A,B,C)
                        & r1_orders_2(A,C,D) )
                      | ( r1_orders_2(A,B,C)
                        & r2_orders_2(A,C,D) ) )
                   => r2_orders_2(A,B,D) ) ) ) ) ) )).

fof(t35_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( v6_orders_2(k6_domain_1(u1_struct_0(A),B),A)
            & m1_subset_1(k6_domain_1(u1_struct_0(A),B),k1_zfmisc_1(u1_struct_0(A))) ) ) ) )).

fof(t36_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( v6_orders_2(k7_domain_1(u1_struct_0(A),B,C),A)
                  & m1_subset_1(k7_domain_1(u1_struct_0(A),B,C),k1_zfmisc_1(u1_struct_0(A))) )
              <=> ( r3_orders_2(A,B,C)
                  | r3_orders_2(A,C,B) ) ) ) ) ) )).

fof(t37_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( ( v6_orders_2(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( r1_tarski(C,B)
               => ( v6_orders_2(C,A)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) ) ) ) ) ) )).

fof(t38_orders_2,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ~ ( ? [D] :
                        ( v6_orders_2(D,A)
                        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                        & r2_hidden(B,D)
                        & r2_hidden(C,D) )
                    & ~ r1_orders_2(A,B,C)
                    & ~ r1_orders_2(A,C,B) )
                & ~ ( ( r1_orders_2(A,B,C)
                      | r1_orders_2(A,C,B) )
                    & ! [D] :
                        ( ( v6_orders_2(D,A)
                          & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A))) )
                       => ~ ( r2_hidden(B,D)
                            & r2_hidden(C,D) ) ) ) ) ) ) ) )).

fof(t39_orders_2,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ? [D] :
                    ( v6_orders_2(D,A)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                    & r2_hidden(B,D)
                    & r2_hidden(C,D) )
              <=> ( r2_orders_2(A,B,C)
                <=> ~ r1_orders_2(A,C,B) ) ) ) ) ) )).

fof(t40_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r2_wellord1(u1_orders_2(A),B)
           => ( v6_orders_2(B,A)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) ) ) ) ) )).

fof(t43_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => k1_orders_2(A,k1_struct_0(A)) = u1_struct_0(A) ) )).

fof(t44_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => k1_orders_2(A,k2_struct_0(A)) = k1_xboole_0 ) )).

fof(t45_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => k2_orders_2(A,k1_struct_0(A)) = u1_struct_0(A) ) )).

fof(t46_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => k2_orders_2(A,k2_struct_0(A)) = k1_xboole_0 ) )).

fof(t47_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ~ ( r2_hidden(B,C)
                  & r2_hidden(B,k1_orders_2(A,C)) ) ) ) ) )).

fof(t48_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ~ r2_hidden(B,k1_orders_2(A,k6_domain_1(u1_struct_0(A),B))) ) ) )).

fof(t49_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ~ ( r2_hidden(B,C)
                  & r2_hidden(B,k2_orders_2(A,C)) ) ) ) ) )).

fof(t4_orders_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ~ r2_hidden(k1_xboole_0,k1_orders_1(A)) ) )).

fof(t50_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ~ r2_hidden(B,k2_orders_2(A,k6_domain_1(u1_struct_0(A),B))) ) ) )).

fof(t51_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_orders_2(A,B,C)
              <=> r2_hidden(C,k1_orders_2(A,k6_domain_1(u1_struct_0(A),B))) ) ) ) ) )).

fof(t52_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_orders_2(A,B,C)
              <=> r2_hidden(B,k2_orders_2(A,k6_domain_1(u1_struct_0(A),C))) ) ) ) ) )).

fof(t57_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( r2_hidden(B,k3_orders_2(A,D,C))
                  <=> ( r2_orders_2(A,B,C)
                      & r2_hidden(B,D) ) ) ) ) ) ) )).

fof(t5_orders_1,axiom,(
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ( r1_tarski(B,A)
      <=> r2_hidden(B,k1_orders_1(A)) ) ) )).

fof(t60_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k3_orders_2(A,k1_struct_0(A),B) = k1_xboole_0 ) ) )).

fof(t62_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ~ r2_hidden(B,k3_orders_2(A,C,B)) ) ) ) )).

fof(t64_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( r2_orders_2(A,B,C)
                   => r1_tarski(k3_orders_2(A,D,B),k3_orders_2(A,D,C)) ) ) ) ) ) )).

fof(t65_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( r1_tarski(C,D)
                   => r1_tarski(k3_orders_2(A,C,B),k3_orders_2(A,D,B)) ) ) ) ) ) )).

fof(t67_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_orders_2(C,A,B)
             => r1_tarski(C,B) ) ) ) )).

fof(t68_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ~ ( B != k1_xboole_0
                & m1_orders_2(B,A,B) )
            & ~ ( ~ m1_orders_2(B,A,B)
                & B = k1_xboole_0 ) ) ) ) )).

fof(t69_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ~ ( B != k1_xboole_0
                  & m1_orders_2(B,A,C)
                  & m1_orders_2(C,A,B) ) ) ) ) )).

fof(t70_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ! [E] :
                      ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(A)))
                     => ( ( r2_orders_2(A,B,C)
                          & r2_hidden(B,D)
                          & r2_hidden(C,E)
                          & m1_orders_2(E,A,D) )
                       => r2_hidden(B,E) ) ) ) ) ) ) )).

fof(t71_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( ( r2_hidden(B,C)
                      & m1_orders_2(C,A,D) )
                   => k3_orders_2(A,C,B) = k3_orders_2(A,D,B) ) ) ) ) ) )).

fof(t72_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ~ ( r1_tarski(B,C)
                  & r2_wellord1(u1_orders_2(A),C)
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ( ( r2_hidden(E,B)
                              & r2_orders_2(A,D,E) )
                           => r2_hidden(D,B) ) ) )
                  & B != C
                  & ~ m1_orders_2(B,A,C) ) ) ) ) )).

fof(t73_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ~ ( r1_tarski(B,C)
                  & r2_wellord1(u1_orders_2(A),C)
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ( ( r2_hidden(E,B)
                              & r2_hidden(D,C)
                              & r2_orders_2(A,D,E) )
                           => r2_hidden(D,B) ) ) )
                  & B != C
                  & ~ m1_orders_2(B,A,C) ) ) ) ) )).

fof(t78_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => m2_orders_2(k1_tarski(k1_funct_1(B,u1_struct_0(A))),A,B) ) ) )).

fof(t79_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => ! [C] :
              ( m2_orders_2(C,A,B)
             => r2_hidden(k1_funct_1(B,u1_struct_0(A)),C) ) ) ) )).

fof(t80_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_orders_1(D,k1_orders_1(u1_struct_0(A)))
                 => ! [E] :
                      ( m2_orders_2(E,A,D)
                     => ( ( r2_hidden(B,E)
                          & C = k1_funct_1(D,u1_struct_0(A)) )
                       => r3_orders_2(A,C,B) ) ) ) ) ) ) )).

fof(t81_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_orders_1(C,k1_orders_1(u1_struct_0(A)))
             => ! [D] :
                  ( m2_orders_2(D,A,C)
                 => ( B = k1_funct_1(C,u1_struct_0(A))
                   => k3_orders_2(A,D,B) = k1_xboole_0 ) ) ) ) ) )).

fof(t82_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => ! [C] :
              ( m2_orders_2(C,A,B)
             => ! [D] :
                  ( m2_orders_2(D,A,B)
                 => ~ r1_xboole_0(C,D) ) ) ) ) )).

fof(t83_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => ! [C] :
              ( m2_orders_2(C,A,B)
             => ! [D] :
                  ( m2_orders_2(D,A,B)
                 => ( C != D
                   => ( m1_orders_2(C,A,D)
                    <=> ~ m1_orders_2(D,A,C) ) ) ) ) ) ) )).

fof(t84_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => ! [C] :
              ( m2_orders_2(C,A,B)
             => ! [D] :
                  ( m2_orders_2(D,A,B)
                 => ( r2_xboole_0(C,D)
                  <=> m1_orders_2(C,A,D) ) ) ) ) ) )).

fof(t87_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => k3_tarski(k4_orders_2(A,B)) != k1_xboole_0 ) ) )).

fof(t88_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_orders_1(C,k1_orders_1(u1_struct_0(A)))
             => ! [D] :
                  ( m2_orders_2(D,A,C)
                 => ( B = k3_tarski(k4_orders_2(A,C))
                   => ( D = k3_tarski(k4_orders_2(A,C))
                      | m1_orders_2(D,A,B) ) ) ) ) ) ) )).

fof(t89_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_orders_1(B,k1_orders_1(u1_struct_0(A)))
         => m2_orders_2(k3_tarski(k4_orders_2(A,B)),A,B) ) ) )).

fof(t91_orders_1,axiom,(
    ! [A] :
      ( ~ ( ? [B] :
              ( B != k1_xboole_0
              & r2_hidden(B,A) )
          & k3_tarski(A) = k1_xboole_0 )
      & ~ ( k3_tarski(A) != k1_xboole_0
          & ! [B] :
              ~ ( B != k1_xboole_0
                & r2_hidden(B,A) ) ) ) )).

fof(t92_orders_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r7_relat_2(B,A)
      <=> ( r1_relat_2(B,A)
          & r6_relat_2(B,A) ) ) ) )).

fof(t93_orders_1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( r1_relat_2(C,A)
          & r1_tarski(B,A) )
       => r1_relat_2(C,B) ) ) )).

fof(t94_orders_1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( r4_relat_2(C,A)
          & r1_tarski(B,A) )
       => r4_relat_2(C,B) ) ) )).

fof(t95_orders_1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( r8_relat_2(C,A)
          & r1_tarski(B,A) )
       => r8_relat_2(C,B) ) ) )).

fof(t96_orders_1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( r7_relat_2(C,A)
          & r1_tarski(B,A) )
       => r7_relat_2(C,B) ) ) )).

%------------------------------------------------------------------------------
