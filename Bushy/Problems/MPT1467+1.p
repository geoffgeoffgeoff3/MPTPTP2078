%------------------------------------------------------------------------------
% File     : MPT1467+1 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : filter_1__t62_filter_1.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    :  174 (  27 unit)
%            Number of atoms       : 1049 (  98 equality)
%            Maximal formula depth :   16 (   7 average)
%            Number of connectives : 1035 ( 160   ~;   2   |; 545   &)
%                                         (  37 <=>; 291  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   43 (   1 propositional; 0-3 arity)
%            Number of functors    :   50 (   2 constant; 0-4 arity)
%            Number of variables   :  437 (   1 sgn; 422   !;  15   ?)
%            Maximal term depth    :    5 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : A cleaned up version of the MPTP 2078 benchmarks, available at
%            https://github.com/JUrban/MPTP2078
%------------------------------------------------------------------------------
fof(t62_filter_1,conjecture,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => r1_filter_1(A,k7_filter_1(k4_filter_1(A,k2_filter_0(A,B)),k6_filter_0(A,k2_filter_0(A,B)))) ) ) )).

fof(abstractness_v3_lattices,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( v3_lattices(A)
       => A = g3_lattices(u1_struct_0(A),u2_lattices(A),u1_lattices(A)) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) )).

fof(cc1_eqrel_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( m1_eqrel_1(B,A)
         => ~ v1_xboole_0(B) ) ) )).

fof(cc1_lattices,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v10_lattices(A) )
       => ( ~ v2_struct_0(A)
          & v4_lattices(A)
          & v5_lattices(A)
          & v6_lattices(A)
          & v7_lattices(A)
          & v8_lattices(A)
          & v9_lattices(A) ) ) ) )).

fof(cc1_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) )).

fof(cc3_filter_0,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v17_lattices(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v17_lattices(A)
          & v3_filter_0(A) ) ) ) )).

fof(cc4_lattices,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v15_lattices(A) )
       => ( ~ v2_struct_0(A)
          & v13_lattices(A)
          & v14_lattices(A) ) ) ) )).

fof(cc5_lattices,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v17_lattices(A) )
       => ( ~ v2_struct_0(A)
          & v11_lattices(A)
          & v15_lattices(A)
          & v16_lattices(A) ) ) ) )).

fof(commutativity_k3_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v4_lattices(A)
        & l2_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k3_lattices(A,B,C) = k3_lattices(A,C,B) ) )).

fof(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : k3_xboole_0(A,B) = k3_xboole_0(B,A) )).

fof(commutativity_k4_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v6_lattices(A)
        & l1_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k4_lattices(A,B,C) = k4_lattices(A,C,B) ) )).

fof(d10_xboole_0,axiom,(
    ! [A,B] :
      ( A = B
    <=> ( r1_tarski(A,B)
        & r1_tarski(B,A) ) ) )).

fof(d11_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k7_filter_0(A,B,C) = k4_lattices(A,k4_filter_0(A,B,C),k4_filter_0(A,C,B)) ) ) ) )).

fof(d11_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ( v11_lattices(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k2_lattices(A,B,k1_lattices(A,C,D)) = k1_lattices(A,k2_lattices(A,B,C),k2_lattices(A,B,D)) ) ) ) ) ) )).

fof(d12_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( v1_relat_1(C)
             => ( C = k8_filter_0(A,B)
              <=> ( r1_tarski(k3_relat_1(C),u1_struct_0(A))
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ( r2_hidden(k1_domain_1(u1_struct_0(A),u1_struct_0(A),D,E),C)
                          <=> r2_hidden(k7_filter_0(A,D,E),B) ) ) ) ) ) ) ) ) )).

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

fof(d2_xboole_0,axiom,(
    k1_xboole_0 = o_0_0_xboole_0 )).

fof(d3_tarski,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,B) ) ) )).

fof(d5_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & v3_filter_0(A)
              & l3_lattices(A) )
           => ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v3_lattices(C)
                  & v10_lattices(C)
                  & l3_lattices(C) )
               => ( C = k4_filter_1(A,B)
                <=> ! [D] :
                      ( ( v1_partfun1(D,u1_struct_0(A))
                        & v3_relat_2(D)
                        & v8_relat_2(D)
                        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) )
                     => ( D = k8_filter_0(A,B)
                       => C = g3_lattices(k8_eqrel_1(u1_struct_0(A),D),k3_filter_1(u1_struct_0(A),D,u2_lattices(A)),k3_filter_1(u1_struct_0(A),D,u1_lattices(A))) ) ) ) ) ) ) ) )).

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

fof(d5_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l2_lattices(A) )
     => ( v5_lattices(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k1_lattices(A,B,k1_lattices(A,C,D)) = k1_lattices(A,k1_lattices(A,B,C),D) ) ) ) ) ) )).

fof(d6_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( ~ v2_struct_0(A)
                  & v10_lattices(A)
                  & v3_filter_0(A)
                  & l3_lattices(A) )
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(k4_filter_1(A,B)))
                   => ( D = k5_filter_1(A,B,C)
                    <=> ! [E] :
                          ( ( v1_partfun1(E,u1_struct_0(A))
                            & v3_relat_2(E)
                            & v8_relat_2(E)
                            & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) )
                         => ( E = k8_filter_0(A,B)
                           => D = k6_eqrel_1(u1_struct_0(A),u1_struct_0(A),E,C) ) ) ) ) ) ) ) ) )).

fof(d7_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l3_lattices(B) )
         => k7_filter_1(A,B) = g3_lattices(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)),k6_filter_1(u1_struct_0(A),u1_struct_0(B),u2_lattices(A),u2_lattices(B)),k6_filter_1(u1_struct_0(A),u1_struct_0(B),u1_lattices(A),u1_lattices(B))) ) ) )).

fof(d7_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_lattices(A) )
     => ( v7_lattices(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k2_lattices(A,B,k2_lattices(A,C,D)) = k2_lattices(A,k2_lattices(A,B,C),D) ) ) ) ) ) )).

fof(d7_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( r3_wellord1(A,B,C)
              <=> ( k1_relat_1(C) = k3_relat_1(A)
                  & k2_relat_1(C) = k3_relat_1(B)
                  & v2_funct_1(C)
                  & ! [D,E] :
                      ( r2_hidden(k4_tarski(D,E),A)
                    <=> ( r2_hidden(D,k3_relat_1(A))
                        & r2_hidden(E,k3_relat_1(A))
                        & r2_hidden(k4_tarski(k1_funct_1(C,D),k1_funct_1(C,E)),B) ) ) ) ) ) ) ) )).

fof(d8_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( ~ v2_struct_0(A)
                  & v10_lattices(A)
                  & v3_filter_0(A)
                  & l3_lattices(A) )
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( D = k4_filter_0(A,B,C)
                    <=> ( r3_lattices(A,k4_lattices(A,B,D),C)
                        & ! [E] :
                            ( m1_subset_1(E,u1_struct_0(A))
                           => ( r3_lattices(A,k4_lattices(A,B,E),C)
                             => r3_lattices(A,E,D) ) ) ) ) ) ) ) ) ) )).

fof(d8_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => k8_filter_1(A) = a_1_0_filter_1(A) ) )).

fof(d8_funct_1,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
      <=> ! [B,C] :
            ( ( r2_hidden(B,k1_relat_1(A))
              & r2_hidden(C,k1_relat_1(A))
              & k1_funct_1(A,B) = k1_funct_1(A,C) )
           => B = C ) ) ) )).

fof(d8_funct_3,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( C = k13_funct_3(A,B)
              <=> ( k1_relat_1(C) = k3_xboole_0(k1_relat_1(A),k1_relat_1(B))
                  & ! [D] :
                      ( r2_hidden(D,k1_relat_1(C))
                     => k1_funct_1(C,D) = k4_tarski(k1_funct_1(A,D),k1_funct_1(B,D)) ) ) ) ) ) ) )).

fof(d8_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ( v8_lattices(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => k1_lattices(A,k2_lattices(A,B,C),C) = C ) ) ) ) )).

fof(d8_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r4_wellord1(A,B)
          <=> ? [C] :
                ( v1_relat_1(C)
                & v1_funct_1(C)
                & r3_wellord1(A,B,C) ) ) ) ) )).

fof(d9_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( r1_filter_1(A,B)
          <=> r4_wellord1(k8_filter_1(A),k8_filter_1(B)) ) ) ) )).

fof(dt_g3_lattices,axiom,(
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
     => ( v3_lattices(g3_lattices(A,B,C))
        & l3_lattices(g3_lattices(A,B,C)) ) ) )).

fof(dt_k10_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v3_relat_2(k10_filter_0(A,B))
        & v8_relat_2(k10_filter_0(A,B))
        & v1_partfun1(k10_filter_0(A,B),u1_struct_0(A))
        & m1_subset_1(k10_filter_0(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) ) ) )).

fof(dt_k11_relat_1,axiom,(
    $true )).

fof(dt_k13_funct_3,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_relat_1(k13_funct_3(A,B))
        & v1_funct_1(k13_funct_3(A,B)) ) ) )).

fof(dt_k1_binop_1,axiom,(
    $true )).

fof(dt_k1_domain_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(C,A)
        & m1_subset_1(D,B) )
     => m1_subset_1(k1_domain_1(A,B,C,D),k2_zfmisc_1(A,B)) ) )).

fof(dt_k1_funct_1,axiom,(
    $true )).

fof(dt_k1_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l2_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k1_lattices(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k1_realset1,axiom,(
    $true )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => m1_subset_1(k1_relset_1(A,B,C),k1_zfmisc_1(A)) ) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( ~ v1_xboole_0(k2_filter_0(A,B))
        & v19_lattices(k2_filter_0(A,B),A)
        & v20_lattices(k2_filter_0(A,B),A)
        & m1_subset_1(k2_filter_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) ) )).

fof(dt_k2_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k2_lattices(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_filter_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v1_partfun1(B,A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
     => ( v1_funct_1(k3_filter_1(A,B,C))
        & v1_funct_2(k3_filter_1(A,B,C),k2_zfmisc_1(k8_eqrel_1(A,B),k8_eqrel_1(A,B)),k8_eqrel_1(A,B))
        & m1_subset_1(k3_filter_1(A,B,C),k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k8_eqrel_1(A,B),k8_eqrel_1(A,B)),k8_eqrel_1(A,B)))) ) ) )).

fof(dt_k3_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(D,A) )
     => m1_subset_1(k3_funct_2(A,B,C,D),B) ) )).

fof(dt_k3_funct_4,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_relat_1(k3_funct_4(A,B))
        & v1_funct_1(k3_funct_4(A,B)) ) ) )).

fof(dt_k3_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v4_lattices(A)
        & l2_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k3_lattices(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k3_relat_1,axiom,(
    $true )).

fof(dt_k3_xboole_0,axiom,(
    $true )).

fof(dt_k4_binop_1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & m1_subset_1(C,A)
        & m1_subset_1(D,A) )
     => m1_subset_1(k4_binop_1(A,B,C,D),A) ) )).

fof(dt_k4_filter_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k4_filter_0(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k4_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( ~ v2_struct_0(k4_filter_1(A,B))
        & v3_lattices(k4_filter_1(A,B))
        & v10_lattices(k4_filter_1(A,B))
        & l3_lattices(k4_filter_1(A,B)) ) ) )).

fof(dt_k4_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v6_lattices(A)
        & l1_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k4_lattices(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(dt_k5_filter_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k5_filter_1(A,B,C),u1_struct_0(k4_filter_1(A,B))) ) )).

fof(dt_k5_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_lattices(A) )
     => m1_subset_1(k5_lattices(A),u1_struct_0(A)) ) )).

fof(dt_k6_eqrel_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => m1_subset_1(k6_eqrel_1(A,B,C,D),k1_zfmisc_1(B)) ) )).

fof(dt_k6_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( ~ v2_struct_0(k6_filter_0(A,B))
        & v10_lattices(k6_filter_0(A,B))
        & l3_lattices(k6_filter_0(A,B)) ) ) )).

fof(dt_k6_filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => ( v1_funct_1(k6_filter_1(A,B,C,D))
        & v1_funct_2(k6_filter_1(A,B,C,D),k2_zfmisc_1(k2_zfmisc_1(A,B),k2_zfmisc_1(A,B)),k2_zfmisc_1(A,B))
        & m1_subset_1(k6_filter_1(A,B,C,D),k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,B),k2_zfmisc_1(A,B)),k2_zfmisc_1(A,B)))) ) ) )).

fof(dt_k6_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l2_lattices(A) )
     => m1_subset_1(k6_lattices(A),u1_struct_0(A)) ) )).

fof(dt_k7_eqrel_1,axiom,(
    ! [A,B] :
      ( ( v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => m1_subset_1(k7_eqrel_1(A,B),k1_zfmisc_1(k1_zfmisc_1(A))) ) )).

fof(dt_k7_filter_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k7_filter_0(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k7_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & l3_lattices(B) )
     => ( v3_lattices(k7_filter_1(A,B))
        & l3_lattices(k7_filter_1(A,B)) ) ) )).

fof(dt_k7_lattices,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k7_lattices(A,B),u1_struct_0(A)) ) )).

fof(dt_k8_eqrel_1,axiom,(
    ! [A,B] :
      ( ( v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => m1_eqrel_1(k8_eqrel_1(A,B),A) ) )).

fof(dt_k8_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v1_relat_1(k8_filter_0(A,B)) ) )).

fof(dt_k8_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => v1_relat_1(k8_filter_1(A)) ) )).

fof(dt_k9_eqrel_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m1_subset_1(C,A) )
     => m2_subset_1(k9_eqrel_1(A,B,C),k1_zfmisc_1(A),k8_eqrel_1(A,B)) ) )).

fof(dt_k9_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v3_relat_2(k9_filter_0(A,B))
        & v8_relat_2(k9_filter_0(A,B))
        & v1_partfun1(k9_filter_0(A,B),u1_struct_0(A))
        & m1_subset_1(k9_filter_0(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) ) ) )).

fof(dt_k9_filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(B)) )
     => m1_subset_1(k9_filter_1(A,B,C,D),u1_struct_0(k7_filter_1(A,B))) ) )).

fof(dt_l1_lattices,axiom,(
    ! [A] :
      ( l1_lattices(A)
     => l1_struct_0(A) ) )).

fof(dt_l1_struct_0,axiom,(
    $true )).

fof(dt_l2_lattices,axiom,(
    ! [A] :
      ( l2_lattices(A)
     => l1_struct_0(A) ) )).

fof(dt_l3_lattices,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( l1_lattices(A)
        & l2_lattices(A) ) ) )).

fof(dt_m1_eqrel_1,axiom,(
    ! [A,B] :
      ( m1_eqrel_1(B,A)
     => m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A))) ) )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_m2_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & v1_relat_1(B) )
     => ! [C] :
          ( m2_filter_1(C,A,B)
         => ( v1_funct_1(C)
            & v1_funct_2(C,k2_zfmisc_1(A,A),A)
            & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) ) ) ) )).

fof(dt_m2_subset_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(A)) )
     => ! [C] :
          ( m2_subset_1(C,A,B)
         => m1_subset_1(C,A) ) ) )).

fof(dt_o_0_0_xboole_0,axiom,(
    v1_xboole_0(o_0_0_xboole_0) )).

fof(dt_u1_lattices,axiom,(
    ! [A] :
      ( l1_lattices(A)
     => ( v1_funct_1(u1_lattices(A))
        & v1_funct_2(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & m1_subset_1(u1_lattices(A),k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A)))) ) ) )).

fof(dt_u1_struct_0,axiom,(
    $true )).

fof(dt_u2_lattices,axiom,(
    ! [A] :
      ( l2_lattices(A)
     => ( v1_funct_1(u2_lattices(A))
        & v1_funct_2(u2_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & m1_subset_1(u2_lattices(A),k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A)))) ) ) )).

fof(existence_l1_lattices,axiom,(
    ? [A] : l1_lattices(A) )).

fof(existence_l1_struct_0,axiom,(
    ? [A] : l1_struct_0(A) )).

fof(existence_l2_lattices,axiom,(
    ? [A] : l2_lattices(A) )).

fof(existence_l3_lattices,axiom,(
    ? [A] : l3_lattices(A) )).

fof(existence_m1_eqrel_1,axiom,(
    ! [A] :
    ? [B] : m1_eqrel_1(B,A) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] :
    ? [B] : m1_subset_1(B,A) )).

fof(existence_m2_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & v1_relat_1(B) )
     => ? [C] : m2_filter_1(C,A,B) ) )).

fof(existence_m2_subset_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(A)) )
     => ? [C] : m2_subset_1(C,A,B) ) )).

fof(fc1_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( ~ v2_struct_0(k4_filter_1(A,B))
        & v3_lattices(k4_filter_1(A,B))
        & v10_lattices(k4_filter_1(A,B))
        & v3_filter_0(k4_filter_1(A,B)) ) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ v1_xboole_0(k1_zfmisc_1(A)) )).

fof(fc2_struct_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(u1_struct_0(A)) ) )).

fof(fraenkel_a_1_0_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B) )
     => ( r2_hidden(A,a_1_0_filter_1(B))
      <=> ? [C,D] :
            ( m1_subset_1(C,u1_struct_0(B))
            & m1_subset_1(D,u1_struct_0(B))
            & A = k1_domain_1(u1_struct_0(B),u1_struct_0(B),C,D)
            & r3_lattices(B,C,D) ) ) ) )).

fof(fraenkel_a_2_0_filter_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r2_hidden(A,a_2_0_filter_0(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & r3_lattices(B,C,D) ) ) ) )).

fof(free_g3_lattices,axiom,(
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
     => ! [D,E,F] :
          ( g3_lattices(A,B,C) = g3_lattices(D,E,F)
         => ( A = D
            & B = E
            & C = F ) ) ) )).

fof(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : k3_xboole_0(A,A) = A )).

fof(l72_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( r2_hidden(C,k6_eqrel_1(u1_struct_0(A),u1_struct_0(A),k9_filter_0(A,B),D))
                  <=> r2_hidden(k7_filter_0(A,C,D),B) ) ) ) ) ) )).

fof(redefinition_k10_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => k10_filter_0(A,B) = k8_filter_0(A,B) ) )).

fof(redefinition_k1_domain_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(C,A)
        & m1_subset_1(D,B) )
     => k1_domain_1(A,B,C,D) = k4_tarski(C,D) ) )).

fof(redefinition_k1_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => k1_relset_1(A,B,C) = k1_relat_1(C) ) )).

fof(redefinition_k3_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(D,A) )
     => k3_funct_2(A,B,C,D) = k1_funct_1(C,D) ) )).

fof(redefinition_k3_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v4_lattices(A)
        & l2_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k3_lattices(A,B,C) = k1_lattices(A,B,C) ) )).

fof(redefinition_k4_binop_1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & m1_subset_1(C,A)
        & m1_subset_1(D,A) )
     => k4_binop_1(A,B,C,D) = k1_binop_1(B,C,D) ) )).

fof(redefinition_k4_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v6_lattices(A)
        & l1_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k4_lattices(A,B,C) = k2_lattices(A,B,C) ) )).

fof(redefinition_k6_eqrel_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => k6_eqrel_1(A,B,C,D) = k11_relat_1(C,D) ) )).

fof(redefinition_k6_filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => k6_filter_1(A,B,C,D) = k3_funct_4(C,D) ) )).

fof(redefinition_k8_eqrel_1,axiom,(
    ! [A,B] :
      ( ( v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => k8_eqrel_1(A,B) = k7_eqrel_1(A,B) ) )).

fof(redefinition_k9_eqrel_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m1_subset_1(C,A) )
     => k9_eqrel_1(A,B,C) = k11_relat_1(B,C) ) )).

fof(redefinition_k9_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => k9_filter_0(A,B) = k8_filter_0(A,B) ) )).

fof(redefinition_k9_filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(B)) )
     => k9_filter_1(A,B,C,D) = k4_tarski(C,D) ) )).

fof(redefinition_m2_subset_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(A)) )
     => ! [C] :
          ( m2_subset_1(C,A,B)
        <=> m1_subset_1(C,B) ) ) )).

fof(redefinition_r3_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v6_lattices(A)
        & v8_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => ( r3_lattices(A,B,C)
      <=> r1_lattices(A,B,C) ) ) )).

fof(reflexivity_r1_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B) )
     => r1_filter_1(A,A) ) )).

fof(reflexivity_r3_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v6_lattices(A)
        & v8_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => r3_lattices(A,B,B) ) )).

fof(s3_funct_1__e1_85__filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ? [C] :
          ( v1_relat_1(C)
          & v1_funct_1(C)
          & k1_relat_1(C) = u1_struct_0(A)
          & ! [D] :
              ( r2_hidden(D,u1_struct_0(A))
             => k1_funct_1(C,D) = k6_eqrel_1(u1_struct_0(A),u1_struct_0(A),k10_filter_0(A,k2_filter_0(A,B)),D) ) ) ) )).

fof(s4_funct_2__e7_85__filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ? [C] :
          ( v1_funct_1(C)
          & v1_funct_2(C,u1_struct_0(A),u1_struct_0(A))
          & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A))))
          & ! [D] :
              ( m1_subset_1(D,u1_struct_0(A))
             => k3_funct_2(u1_struct_0(A),u1_struct_0(A),C,D) = k7_filter_0(A,k3_lattices(A,D,k7_filter_0(A,D,B)),D) ) ) ) )).

fof(symmetry_r1_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B) )
     => ( r1_filter_1(A,B)
       => r1_filter_1(B,A) ) ) )).

fof(t12_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & v14_lattices(A)
              & l3_lattices(A) )
           => r2_hidden(k6_lattices(A),B) ) ) ) )).

fof(t13_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => m2_filter_1(u2_lattices(A),u1_struct_0(A),k9_filter_0(A,B)) ) ) )).

fof(t14_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => m2_filter_1(u1_lattices(A),u1_struct_0(A),k9_filter_0(A,B)) ) ) )).

fof(t16_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( r3_lattices(k4_filter_1(A,B),k5_filter_1(A,B,C),k5_filter_1(A,B,D))
                  <=> r2_hidden(k4_filter_0(A,C,D),B) ) ) ) ) ) )).

fof(t18_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(B,k2_filter_0(A,C))
              <=> r3_lattices(A,C,B) ) ) ) ) )).

fof(t18_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v6_lattices(A)
        & v8_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k4_lattices(A,B,B) = B ) ) )).

fof(t1_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_lattices(A)
        & v5_lattices(A)
        & v6_lattices(A)
        & v8_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( r3_lattices(A,B,C)
                   => r3_lattices(A,k3_lattices(A,D,B),k3_lattices(A,D,C)) ) ) ) ) ) )).

fof(t1_subset,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) )).

fof(t21_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v8_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r1_lattices(A,B,C)
              <=> k2_lattices(A,B,C) = B ) ) ) ) )).

fof(t22_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v5_lattices(A)
        & v6_lattices(A)
        & v8_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => r1_lattices(A,B,k1_lattices(A,B,C)) ) ) ) )).

fof(t23_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v6_lattices(A)
        & v8_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => r1_lattices(A,k4_lattices(A,B,C),B) ) ) ) )).

fof(t25_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v5_lattices(A)
        & l2_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( r1_lattices(A,B,C)
                      & r1_lattices(A,C,D) )
                   => r1_lattices(A,B,D) ) ) ) ) ) )).

fof(t26_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_lattices(A)
        & l2_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( r1_lattices(A,B,C)
                  & r1_lattices(A,C,B) )
               => B = C ) ) ) ) )).

fof(t27_eqrel_1,axiom,(
    ! [A,B,C,D] :
      ( ( v3_relat_2(D)
        & v1_partfun1(D,A)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => ( r2_hidden(B,k6_eqrel_1(A,A,D,C))
      <=> r2_hidden(k4_tarski(B,C),D) ) ) )).

fof(t27_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v7_lattices(A)
        & v8_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( r1_lattices(A,B,C)
                   => r1_lattices(A,k2_lattices(A,B,D),k2_lattices(A,C,D)) ) ) ) ) ) )).

fof(t2_boole,axiom,(
    ! [A] : k3_xboole_0(A,k1_xboole_0) = k1_xboole_0 )).

fof(t2_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) )).

fof(t2_tarski,axiom,(
    ! [A,B] :
      ( ! [C] :
          ( r2_hidden(C,A)
        <=> r2_hidden(C,B) )
     => A = B ) )).

fof(t30_relat_1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r2_hidden(k4_tarski(A,B),C)
       => ( r2_hidden(A,k3_relat_1(C))
          & r2_hidden(B,k3_relat_1(C)) ) ) ) )).

fof(t31_eqrel_1,axiom,(
    ! [A,B,C] :
      ( ( v3_relat_2(C)
        & v8_relat_2(C)
        & v1_partfun1(C,A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => ! [D] :
          ( r2_hidden(D,A)
         => ( r2_hidden(B,k6_eqrel_1(A,A,C,D))
          <=> k6_eqrel_1(A,A,C,D) = k6_eqrel_1(A,A,C,B) ) ) ) )).

fof(t32_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(k1_domain_1(u1_struct_0(A),u1_struct_0(A),B,C),k8_filter_1(A))
              <=> r3_lattices(A,B,C) ) ) ) ) )).

fof(t33_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ( k1_relat_1(k8_filter_1(A)) = u1_struct_0(A)
        & k2_relat_1(k8_filter_1(A)) = u1_struct_0(A)
        & k3_relat_1(k8_filter_1(A)) = u1_struct_0(A) ) ) )).

fof(t33_zfmisc_1,axiom,(
    ! [A,B,C,D] :
      ( k4_tarski(A,B) = k4_tarski(C,D)
     => ( A = C
        & B = D ) ) )).

fof(t37_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(B))
                         => ( r3_lattices(k7_filter_1(A,B),k9_filter_1(A,B,C,E),k9_filter_1(A,B,D,F))
                          <=> ( r3_lattices(A,C,D)
                              & r3_lattices(B,E,F) ) ) ) ) ) ) ) ) )).

fof(t39_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v13_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k3_lattices(A,k5_lattices(A),B) = B ) ) )).

fof(t3_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) )).

fof(t40_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v13_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k4_lattices(A,k5_lattices(A),B) = k5_lattices(A) ) ) )).

fof(t43_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v14_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k4_lattices(A,k6_lattices(A),B) = B ) ) )).

fof(t45_eqrel_1,axiom,(
    ! [A,B,C] :
      ( ( v3_relat_2(C)
        & v8_relat_2(C)
        & v1_partfun1(C,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(B,B))) )
     => ~ ( r2_hidden(A,k7_eqrel_1(B,C))
          & ! [D] :
              ( m1_subset_1(D,B)
             => A != k6_eqrel_1(B,B,C,D) ) ) ) )).

fof(t47_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k4_lattices(A,k7_lattices(A,B),B) = k5_lattices(A) ) ) )).

fof(t48_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k3_lattices(A,k7_lattices(A,B),B) = k6_lattices(A) ) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) )).

fof(t51_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k7_filter_0(A,B,C) = k3_lattices(A,k4_lattices(A,B,C),k4_lattices(A,k7_lattices(A,B),k7_lattices(A,C))) ) ) ) )).

fof(t51_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k7_lattices(A,k3_lattices(A,B,C)) = k4_lattices(A,k7_lattices(A,B),k7_lattices(A,C)) ) ) ) )).

fof(t52_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k7_lattices(A,k4_filter_0(A,B,C)) = k4_lattices(A,B,k7_lattices(A,C))
                & k7_lattices(A,k7_filter_0(A,B,C)) = k3_lattices(A,k4_lattices(A,B,k7_lattices(A,C)),k4_lattices(A,k7_lattices(A,B),C))
                & k7_lattices(A,k7_filter_0(A,B,C)) = k7_filter_0(A,B,k7_lattices(A,C))
                & k7_lattices(A,k7_filter_0(A,B,C)) = k7_filter_0(A,k7_lattices(A,B),C) ) ) ) ) )).

fof(t53_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( k7_filter_0(A,B,C) = k7_filter_0(A,B,D)
                   => C = D ) ) ) ) ) )).

fof(t54_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k7_filter_0(A,B,k7_filter_0(A,B,C)) = C ) ) ) )).

fof(t55_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k4_filter_0(A,B,C) = k3_lattices(A,k7_lattices(A,B),C) ) ) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C) ) )).

fof(t61_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(k3_lattices(A,B,k7_filter_0(A,B,C)),k6_eqrel_1(u1_struct_0(A),u1_struct_0(A),k10_filter_0(A,k2_filter_0(A,C)),B))
                & ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r2_hidden(D,k6_eqrel_1(u1_struct_0(A),u1_struct_0(A),k10_filter_0(A,k2_filter_0(A,C)),B))
                     => r3_lattices(A,D,k3_lattices(A,B,k7_filter_0(A,B,C))) ) ) ) ) ) ) )).

fof(t63_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( u1_struct_0(k6_filter_0(A,B)) = B
            & u2_lattices(k6_filter_0(A,B)) = k1_realset1(u2_lattices(A),B)
            & u1_lattices(k6_filter_0(A,B)) = k1_realset1(u1_lattices(A),B) ) ) ) )).

fof(t65_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( ( ~ v1_xboole_0(D)
                    & v19_lattices(D,A)
                    & v20_lattices(D,A)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A))) )
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(k6_filter_0(A,D)))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(k6_filter_0(A,D)))
                         => ( ( B = E
                              & C = F )
                           => ( r3_lattices(A,B,C)
                            <=> r3_lattices(k6_filter_0(A,D),E,F) ) ) ) ) ) ) ) ) )).

fof(t6_boole,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => A = k1_xboole_0 ) )).

fof(t6_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_lattices(A)
        & v5_lattices(A)
        & v6_lattices(A)
        & v8_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( r3_lattices(A,B,D)
                      & r3_lattices(A,C,D) )
                   => r3_lattices(A,k3_lattices(A,B,C),D) ) ) ) ) ) )).

fof(t70_funct_3,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( ( k1_relat_1(B) = A
              & k1_relat_1(C) = A )
           => k1_relat_1(k13_funct_3(B,C)) = A ) ) ) )).

fof(t7_boole,axiom,(
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] :
      ~ ( v1_xboole_0(A)
        & A != B
        & v1_xboole_0(B) ) )).

fof(t9_domain_1,axiom,(
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ! [C] :
          ( ~ v1_xboole_0(C)
         => ~ ( r2_hidden(A,k2_zfmisc_1(B,C))
              & ! [D] :
                  ( m1_subset_1(D,B)
                 => ! [E] :
                      ( m1_subset_1(E,C)
                     => A != k4_tarski(D,E) ) ) ) ) ) )).

fof(t9_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( ~ v1_xboole_0(B)
              & v19_lattices(B,A)
              & v20_lattices(B,A)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
          <=> ( ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( ( r2_hidden(C,B)
                          & r2_hidden(D,B) )
                       => r2_hidden(k4_lattices(A,C,D),B) ) ) )
              & ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( ( r2_hidden(C,B)
                          & r3_lattices(A,C,D) )
                       => r2_hidden(D,B) ) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
