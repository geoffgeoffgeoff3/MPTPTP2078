%------------------------------------------------------------------------------
% File     : MPT1954+1 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : yellow_6__t52_yellow_6.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    :  134 (  26 unit)
%            Number of atoms       :  653 (  54 equality)
%            Maximal formula depth :   22 (   7 average)
%            Number of connectives :  606 (  87   ~;   2   |; 298   &)
%                                         (  31 <=>; 188  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   41 (   1 propositional; 0-4 arity)
%            Number of functors    :   44 (   2 constant; 0-4 arity)
%            Number of variables   :  345 (   0 sgn; 324   !;  21   ?)
%            Maximal term depth    :    5 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : A cleaned up version of the MPTP 2078 benchmarks, available at
%            https://github.com/JUrban/MPTP2078
%------------------------------------------------------------------------------
fof(t52_yellow_6,conjecture,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( v8_yellow_6(B,A)
            & m4_yellow_6(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k13_yellow_6(A,B))))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(k13_yellow_6(A,B)))
                 => ~ ( r2_hidden(D,k2_pre_topc(k13_yellow_6(A,B),C))
                      & ! [E] :
                          ( ( ~ v2_struct_0(E)
                            & v4_orders_2(E)
                            & v7_waybel_0(E)
                            & l1_waybel_0(E,k13_yellow_6(A,B)) )
                         => ~ ( r2_hidden(k4_tarski(E,D),B)
                              & r1_tarski(k2_relset_1(u1_struct_0(E),u1_struct_0(k13_yellow_6(A,B)),u1_waybel_0(k13_yellow_6(A,B),E)),C)
                              & r2_hidden(D,k10_yellow_6(k13_yellow_6(A,B),E)) ) ) ) ) ) ) ) )).

fof(abstractness_v1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v1_orders_2(A)
       => A = g1_orders_2(u1_struct_0(A),u1_orders_2(A)) ) ) )).

fof(abstractness_v1_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ( v1_pre_topc(A)
       => A = g1_pre_topc(u1_struct_0(A),u1_pre_topc(A)) ) ) )).

fof(abstractness_v6_waybel_0,axiom,(
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_waybel_0(B,A) )
     => ( v6_waybel_0(B,A)
       => B = g1_waybel_0(A,u1_struct_0(B),u1_orders_2(B),u1_waybel_0(A,B)) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : k2_tarski(A,B) = k2_tarski(B,A) )).

fof(d10_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( l1_waybel_0(B,A)
         => ( v1_yellow_6(B,A)
           => ( v2_struct_0(B)
              | k4_yellow_6(A,B) = k3_funct_1(u1_waybel_0(A,B)) ) ) ) ) )).

fof(d13_yellow_6,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ! [B] :
          ( l1_waybel_0(B,A)
         => ! [C,D] :
              ( ( v6_waybel_0(D,A)
                & m1_yellow_6(D,A,B) )
             => ( D = k5_yellow_6(A,B,C)
              <=> ( v4_yellow_0(D,B)
                  & m1_yellow_0(D,B)
                  & u1_struct_0(D) = k8_relset_1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B),C) ) ) ) ) ) )).

fof(d14_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( B = k6_yellow_6(A)
        <=> ! [C] :
              ( r2_hidden(C,B)
            <=> ? [D] :
                  ( ~ v2_struct_0(D)
                  & v4_orders_2(D)
                  & v6_waybel_0(D,A)
                  & v7_waybel_0(D)
                  & l1_waybel_0(D,A)
                  & D = C
                  & r2_hidden(u1_struct_0(D),k1_yellow_6(u1_struct_0(A))) ) ) ) ) )).

fof(d1_classes1,axiom,(
    ! [A] :
      ( v1_classes1(A)
    <=> ! [B,C] :
          ( ( r2_hidden(B,A)
            & r1_tarski(C,B) )
         => r2_hidden(C,A) ) ) )).

fof(d1_tarski,axiom,(
    ! [A,B] :
      ( B = k1_tarski(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> C = A ) ) )).

fof(d21_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m4_yellow_6(B,A)
        <=> r1_tarski(B,k2_zfmisc_1(k6_yellow_6(A),u1_struct_0(A))) ) ) )).

fof(d22_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m4_yellow_6(B,A)
         => ( B = k12_yellow_6(A)
          <=> ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v4_orders_2(C)
                  & v7_waybel_0(C)
                  & l1_waybel_0(C,A) )
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r2_hidden(k4_tarski(C,D),B)
                    <=> ( r2_hidden(C,k6_yellow_6(A))
                        & r2_hidden(D,k10_yellow_6(A,C)) ) ) ) ) ) ) ) )).

fof(d23_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m4_yellow_6(B,A)
         => ( v4_yellow_6(B,A)
          <=> ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v4_orders_2(C)
                  & v7_waybel_0(C)
                  & v1_yellow_6(C,A)
                  & l1_waybel_0(C,A) )
               => ( r2_hidden(C,k6_yellow_6(A))
                 => r2_hidden(k4_tarski(C,k4_yellow_6(A,C)),B) ) ) ) ) ) )).

fof(d24_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m4_yellow_6(B,A)
         => ( v5_yellow_6(B,A)
          <=> ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v4_orders_2(C)
                  & v7_waybel_0(C)
                  & l1_waybel_0(C,A) )
               => ! [D] :
                    ( m2_yellow_6(D,A,C)
                   => ( r2_hidden(D,k6_yellow_6(A))
                     => ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ( r2_hidden(k4_tarski(C,E),B)
                           => r2_hidden(k4_tarski(D,E),B) ) ) ) ) ) ) ) ) )).

fof(d26_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m4_yellow_6(B,A)
         => ( v7_yellow_6(B,A)
          <=> ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v4_orders_2(C)
                  & v7_waybel_0(C)
                  & l1_waybel_0(C,A) )
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r2_hidden(k4_tarski(C,D),B)
                     => ! [E] :
                          ( m3_yellow_6(E,u1_struct_0(C),A)
                         => ( ! [F] :
                                ( m1_subset_1(F,u1_struct_0(C))
                               => r2_hidden(k4_tarski(k7_yellow_6(u1_struct_0(C),A,E,F),k2_waybel_0(A,C,F)),B) )
                           => r2_hidden(k4_tarski(k8_yellow_6(A,C,E),D),B) ) ) ) ) ) ) ) ) )).

fof(d27_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m4_yellow_6(B,A)
         => ! [C] :
              ( ( v1_pre_topc(C)
                & l1_pre_topc(C) )
             => ( C = k13_yellow_6(A,B)
              <=> ( u1_struct_0(C) = u1_struct_0(A)
                  & u1_pre_topc(C) = a_2_1_yellow_6(A,B) ) ) ) ) ) )).

fof(d2_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v4_orders_2(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ( r1_orders_2(A,B,C)
                        & r1_orders_2(A,C,D) )
                     => r1_orders_2(A,B,D) ) ) ) ) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,B) ) ) )).

fof(d5_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ( v7_waybel_0(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ? [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                    & r1_orders_2(A,B,D)
                    & r1_orders_2(A,C,D) ) ) ) ) ) )).

fof(d7_yellow_6,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_struct_0(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( ( v6_waybel_0(D,B)
                    & l1_waybel_0(D,B) )
                 => ( D = k3_yellow_6(A,B,C)
                  <=> ( g1_orders_2(u1_struct_0(D),u1_orders_2(D)) = g1_orders_2(u1_struct_0(A),u1_orders_2(A))
                      & r2_funct_2(u1_struct_0(D),u1_struct_0(B),u1_waybel_0(B,D),k8_funcop_1(u1_struct_0(B),u1_struct_0(D),C)) ) ) ) ) ) ) )).

fof(d8_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k2_waybel_0(A,B,C) = k3_funct_2(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B),C) ) ) ) )).

fof(d8_yellow_6,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ! [B] :
          ( l1_waybel_0(B,A)
         => ! [C] :
              ( l1_waybel_0(C,A)
             => ( m1_yellow_6(C,A,B)
              <=> ( m1_yellow_0(C,B)
                  & u1_waybel_0(A,C) = k2_partfun1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B),u1_struct_0(C)) ) ) ) ) ) )).

fof(d9_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r1_orders_2(A,B,C)
              <=> r2_hidden(k4_tarski(B,C),u1_orders_2(A)) ) ) ) ) )).

fof(dt_g1_orders_2,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
     => ( v1_orders_2(g1_orders_2(A,B))
        & l1_orders_2(g1_orders_2(A,B)) ) ) )).

fof(dt_g1_pre_topc,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
     => ( v1_pre_topc(g1_pre_topc(A,B))
        & l1_pre_topc(g1_pre_topc(A,B)) ) ) )).

fof(dt_g1_waybel_0,axiom,(
    ! [A,B,C,D] :
      ( ( l1_struct_0(A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(B,B)))
        & v1_funct_1(D)
        & v1_funct_2(D,B,u1_struct_0(A))
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(B,u1_struct_0(A)))) )
     => ( v6_waybel_0(g1_waybel_0(A,B,C,D),A)
        & l1_waybel_0(g1_waybel_0(A,B,C,D),A) ) ) )).

fof(dt_k10_relat_1,axiom,(
    $true )).

fof(dt_k10_yellow_6,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A) )
     => m1_subset_1(k10_yellow_6(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k12_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => m4_yellow_6(k12_yellow_6(A),A) ) )).

fof(dt_k13_yellow_6,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & m4_yellow_6(B,A) )
     => ( v1_pre_topc(k13_yellow_6(A,B))
        & l1_pre_topc(k13_yellow_6(A,B)) ) ) )).

fof(dt_k1_classes1,axiom,(
    $true )).

fof(dt_k1_funct_1,axiom,(
    $true )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_yellow_6,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_funcop_1,axiom,(
    $true )).

fof(dt_k2_partfun1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ( v1_funct_1(k2_partfun1(A,B,C,D))
        & m1_subset_1(k2_partfun1(A,B,C,D),k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ) )).

fof(dt_k2_pre_topc,axiom,(
    ! [A,B] :
      ( ( l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k2_pre_topc(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k2_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => m1_subset_1(k2_relset_1(A,B,C),k1_zfmisc_1(B)) ) )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k2_waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => m1_subset_1(k2_waybel_0(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_funct_1,axiom,(
    $true )).

fof(dt_k3_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(D,A) )
     => m1_subset_1(k3_funct_2(A,B,C,D),B) ) )).

fof(dt_k3_tarski,axiom,(
    $true )).

fof(dt_k3_yellow_3,axiom,(
    ! [A,B] :
      ( ( l1_orders_2(A)
        & l1_orders_2(B) )
     => ( v1_orders_2(k3_yellow_3(A,B))
        & l1_orders_2(k3_yellow_3(A,B)) ) ) )).

fof(dt_k3_yellow_6,axiom,(
    ! [A,B,C] :
      ( ( l1_orders_2(A)
        & ~ v2_struct_0(B)
        & l1_struct_0(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( v6_waybel_0(k3_yellow_6(A,B,C),B)
        & l1_waybel_0(k3_yellow_6(A,B,C),B) ) ) )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(dt_k4_yellow_6,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & l1_waybel_0(B,A) )
     => m1_subset_1(k4_yellow_6(A,B),u1_struct_0(A)) ) )).

fof(dt_k5_classes1,axiom,(
    $true )).

fof(dt_k5_yellow_6,axiom,(
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & l1_waybel_0(B,A) )
     => ( v6_waybel_0(k5_yellow_6(A,B,C),A)
        & m1_yellow_6(k5_yellow_6(A,B,C),A,B) ) ) )).

fof(dt_k6_yellow_6,axiom,(
    $true )).

fof(dt_k7_relat_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(A)
     => v1_relat_1(k7_relat_1(A,B)) ) )).

fof(dt_k7_yellow_3,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(B)) )
     => m1_subset_1(k7_yellow_3(A,B,C,D),u1_struct_0(k3_yellow_3(A,B))) ) )).

fof(dt_k7_yellow_6,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & l1_struct_0(B)
        & m3_yellow_6(C,A,B)
        & m1_subset_1(D,A) )
     => ( ~ v2_struct_0(k7_yellow_6(A,B,C,D))
        & v4_orders_2(k7_yellow_6(A,B,C,D))
        & v7_waybel_0(k7_yellow_6(A,B,C,D))
        & l1_waybel_0(k7_yellow_6(A,B,C,D),B) ) ) )).

fof(dt_k8_funcop_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(C,A) )
     => ( v1_funct_1(k8_funcop_1(A,B,C))
        & v1_funct_2(k8_funcop_1(A,B,C),B,A)
        & m1_subset_1(k8_funcop_1(A,B,C),k1_zfmisc_1(k2_zfmisc_1(B,A))) ) ) )).

fof(dt_k8_relset_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => m1_subset_1(k8_relset_1(A,B,C,D),k1_zfmisc_1(A)) ) )).

fof(dt_k8_yellow_6,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & m3_yellow_6(C,u1_struct_0(B),A) )
     => ( ~ v2_struct_0(k8_yellow_6(A,B,C))
        & v4_orders_2(k8_yellow_6(A,B,C))
        & v6_waybel_0(k8_yellow_6(A,B,C),A)
        & v7_waybel_0(k8_yellow_6(A,B,C))
        & l1_waybel_0(k8_yellow_6(A,B,C),A) ) ) )).

fof(dt_l1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => l1_struct_0(A) ) )).

fof(dt_l1_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => l1_struct_0(A) ) )).

fof(dt_l1_struct_0,axiom,(
    $true )).

fof(dt_l1_waybel_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ! [B] :
          ( l1_waybel_0(B,A)
         => l1_orders_2(B) ) ) )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_m1_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_yellow_0(B,A)
         => l1_orders_2(B) ) ) )).

fof(dt_m1_yellow_6,axiom,(
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_waybel_0(B,A) )
     => ! [C] :
          ( m1_yellow_6(C,A,B)
         => l1_waybel_0(C,A) ) ) )).

fof(dt_m2_yellow_6,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A) )
     => ! [C] :
          ( m2_yellow_6(C,A,B)
         => ( ~ v2_struct_0(C)
            & v4_orders_2(C)
            & v7_waybel_0(C)
            & l1_waybel_0(C,A) ) ) ) )).

fof(dt_m3_yellow_6,axiom,(
    ! [A,B] :
      ( l1_struct_0(B)
     => ! [C] :
          ( m3_yellow_6(C,A,B)
         => ( v1_relat_1(C)
            & v4_relat_1(C,A)
            & v1_funct_1(C)
            & v1_partfun1(C,A) ) ) ) )).

fof(dt_m4_yellow_6,axiom,(
    $true )).

fof(dt_u1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => m1_subset_1(u1_orders_2(A),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) ) )).

fof(dt_u1_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => m1_subset_1(u1_pre_topc(A),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) ) )).

fof(dt_u1_struct_0,axiom,(
    $true )).

fof(dt_u1_waybel_0,axiom,(
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_waybel_0(B,A) )
     => ( v1_funct_1(u1_waybel_0(A,B))
        & v1_funct_2(u1_waybel_0(A,B),u1_struct_0(B),u1_struct_0(A))
        & m1_subset_1(u1_waybel_0(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B),u1_struct_0(A)))) ) ) )).

fof(existence_l1_orders_2,axiom,(
    ? [A] : l1_orders_2(A) )).

fof(existence_l1_pre_topc,axiom,(
    ? [A] : l1_pre_topc(A) )).

fof(existence_l1_struct_0,axiom,(
    ? [A] : l1_struct_0(A) )).

fof(existence_l1_waybel_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ? [B] : l1_waybel_0(B,A) ) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] :
    ? [B] : m1_subset_1(B,A) )).

fof(existence_m1_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ? [B] : m1_yellow_0(B,A) ) )).

fof(existence_m1_yellow_6,axiom,(
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_waybel_0(B,A) )
     => ? [C] : m1_yellow_6(C,A,B) ) )).

fof(existence_m2_yellow_6,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A) )
     => ? [C] : m2_yellow_6(C,A,B) ) )).

fof(existence_m3_yellow_6,axiom,(
    ! [A,B] :
      ( l1_struct_0(B)
     => ? [C] : m3_yellow_6(C,A,B) ) )).

fof(existence_m4_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] : m4_yellow_6(B,A) ) )).

fof(fraenkel_a_2_1_yellow_6,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & l1_struct_0(B)
        & m4_yellow_6(C,B) )
     => ( r2_hidden(A,a_2_1_yellow_6(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
            & A = D
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(B))
               => ( r2_hidden(E,D)
                 => ! [F] :
                      ( ( ~ v2_struct_0(F)
                        & v4_orders_2(F)
                        & v7_waybel_0(F)
                        & l1_waybel_0(F,B) )
                     => ( r2_hidden(k4_tarski(F,E),C)
                       => r1_waybel_0(B,F,D) ) ) ) ) ) ) ) )).

fof(fraenkel_a_3_0_yellow_6,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & l1_struct_0(B)
        & ~ v2_struct_0(C)
        & v4_orders_2(C)
        & v7_waybel_0(C)
        & l1_waybel_0(C,B)
        & m3_yellow_6(D,u1_struct_0(C),B) )
     => ( r2_hidden(A,a_3_0_yellow_6(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(C))
            & A = k2_relset_1(u1_struct_0(k7_yellow_6(u1_struct_0(C),B,D,E)),u1_struct_0(B),u1_waybel_0(B,k7_yellow_6(u1_struct_0(C),B,D,E))) ) ) ) )).

fof(fraenkel_a_3_3_yellow_6,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & l1_struct_0(B)
        & v8_yellow_6(C,B)
        & m4_yellow_6(C,B)
        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(k13_yellow_6(B,C)))) )
     => ( r2_hidden(A,a_3_3_yellow_6(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(k13_yellow_6(B,C)))
            & A = E
            & ? [F] :
                ( ~ v2_struct_0(F)
                & v4_orders_2(F)
                & v7_waybel_0(F)
                & l1_waybel_0(F,k13_yellow_6(B,C))
                & r2_hidden(k4_tarski(F,E),C)
                & r1_tarski(k2_relset_1(u1_struct_0(F),u1_struct_0(k13_yellow_6(B,C)),u1_waybel_0(k13_yellow_6(B,C),F)),D)
                & r2_hidden(E,k10_yellow_6(k13_yellow_6(B,C),F)) ) ) ) ) )).

fof(fraenkel_a_4_1_yellow_6,axiom,(
    ! [A,B,C,D,E] :
      ( ( ~ v2_struct_0(B)
        & l1_struct_0(B)
        & ~ v2_struct_0(C)
        & v4_orders_2(C)
        & v7_waybel_0(C)
        & l1_waybel_0(C,B)
        & m2_yellow_6(D,B,C)
        & m3_yellow_6(E,u1_struct_0(D),B) )
     => ( r2_hidden(A,a_4_1_yellow_6(B,C,D,E))
      <=> ? [F] :
            ( m1_subset_1(F,u1_struct_0(D))
            & A = k2_relset_1(u1_struct_0(k7_yellow_6(u1_struct_0(D),B,E,F)),u1_struct_0(B),u1_waybel_0(B,k7_yellow_6(u1_struct_0(D),B,E,F))) ) ) ) )).

fof(free_g1_orders_2,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
     => ! [C,D] :
          ( g1_orders_2(A,B) = g1_orders_2(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(free_g1_pre_topc,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
     => ! [C,D] :
          ( g1_pre_topc(A,B) = g1_pre_topc(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(free_g1_waybel_0,axiom,(
    ! [A,B,C,D] :
      ( ( l1_struct_0(A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(B,B)))
        & v1_funct_1(D)
        & v1_funct_2(D,B,u1_struct_0(A))
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(B,u1_struct_0(A)))) )
     => ! [E,F,G,H] :
          ( g1_waybel_0(A,B,C,D) = g1_waybel_0(E,F,G,H)
         => ( A = E
            & B = F
            & C = G
            & D = H ) ) ) )).

fof(l52_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_struct_0(B) )
         => ( u1_struct_0(A) = u1_struct_0(B)
           => ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v4_orders_2(C)
                  & v7_waybel_0(C)
                  & v1_yellow_6(C,A)
                  & l1_waybel_0(C,A) )
               => ( ~ v2_struct_0(C)
                  & v4_orders_2(C)
                  & v7_waybel_0(C)
                  & v1_yellow_6(C,B)
                  & l1_waybel_0(C,B) ) ) ) ) ) )).

fof(projectivity_k2_pre_topc,axiom,(
    ! [A,B] :
      ( ( l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => k2_pre_topc(A,k2_pre_topc(A,B)) = k2_pre_topc(A,B) ) )).

fof(redefinition_k2_partfun1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => k2_partfun1(A,B,C,D) = k7_relat_1(C,D) ) )).

fof(redefinition_k2_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => k2_relset_1(A,B,C) = k2_relat_1(C) ) )).

fof(redefinition_k3_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(D,A) )
     => k3_funct_2(A,B,C,D) = k1_funct_1(C,D) ) )).

fof(redefinition_k7_yellow_3,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(B)) )
     => k7_yellow_3(A,B,C,D) = k4_tarski(C,D) ) )).

fof(redefinition_k7_yellow_6,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & l1_struct_0(B)
        & m3_yellow_6(C,A,B)
        & m1_subset_1(D,A) )
     => k7_yellow_6(A,B,C,D) = k1_funct_1(C,D) ) )).

fof(redefinition_k8_funcop_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(C,A) )
     => k8_funcop_1(A,B,C) = k2_funcop_1(B,C) ) )).

fof(redefinition_k8_relset_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => k8_relset_1(A,B,C,D) = k10_relat_1(C,D) ) )).

fof(redefinition_r2_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ( r2_funct_2(A,B,C,D)
      <=> C = D ) ) )).

fof(reflexivity_r2_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => r2_funct_2(A,B,C,C) ) )).

fof(s6_pboole__e9_125_1__yellow_6,axiom,(
    ! [A,B,C,D,E] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & v8_yellow_6(B,A)
        & m4_yellow_6(B,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k13_yellow_6(A,B))))
        & ~ v2_struct_0(D)
        & v4_orders_2(D)
        & v7_waybel_0(D)
        & l1_waybel_0(D,A)
        & m2_yellow_6(E,A,D) )
     => ( ! [F] :
            ( m1_subset_1(F,u1_struct_0(E))
           => ? [G] :
                ( r2_hidden(k4_tarski(G,k2_waybel_0(A,E,F)),B)
                & ? [H] :
                    ( ~ v2_struct_0(H)
                    & v4_orders_2(H)
                    & v7_waybel_0(H)
                    & l1_waybel_0(H,A)
                    & H = G
                    & r1_tarski(k2_relset_1(u1_struct_0(H),u1_struct_0(A),u1_waybel_0(A,H)),C) ) ) )
       => ? [F] :
            ( v1_relat_1(F)
            & v4_relat_1(F,u1_struct_0(E))
            & v1_funct_1(F)
            & v1_partfun1(F,u1_struct_0(E))
            & ! [G] :
                ( m1_subset_1(G,u1_struct_0(E))
               => ( r2_hidden(k4_tarski(k1_funct_1(F,G),k2_waybel_0(A,E,G)),B)
                  & ? [I] :
                      ( ~ v2_struct_0(I)
                      & v4_orders_2(I)
                      & v7_waybel_0(I)
                      & l1_waybel_0(I,A)
                      & I = k1_funct_1(F,G)
                      & r1_tarski(k2_relset_1(u1_struct_0(I),u1_struct_0(A),u1_waybel_0(A,I)),C) ) ) ) ) ) ) )).

fof(s7_domain_1__e2_125__yellow_6,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & v8_yellow_6(B,A)
        & m4_yellow_6(B,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k13_yellow_6(A,B)))) )
     => m1_subset_1(a_3_3_yellow_6(A,B,C),k1_zfmisc_1(u1_struct_0(k13_yellow_6(A,B)))) ) )).

fof(spc1_boole,axiom,(
    ~ v1_xboole_0(np__1) )).

fof(symmetry_r2_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ( r2_funct_2(A,B,C,D)
       => r2_funct_2(A,B,D,C) ) ) )).

fof(t106_zfmisc_1,axiom,(
    ! [A,B,C,D] :
      ( r2_hidden(k4_tarski(A,B),k2_zfmisc_1(C,D))
    <=> ( r2_hidden(A,C)
        & r2_hidden(B,D) ) ) )).

fof(t14_funcop_1,axiom,(
    ! [A,B] :
      ( A != k1_xboole_0
     => k2_relat_1(k2_funcop_1(A,B)) = k1_tarski(B) ) )).

fof(t1_subset,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) )).

fof(t1_xboole_1,axiom,(
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(B,C) )
     => r1_tarski(A,C) ) )).

fof(t22_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_struct_0(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k4_yellow_6(B,k3_yellow_6(A,B,C)) = C ) ) ) )).

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

fof(t31_tops_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( v4_pre_topc(B,A)
                  & r1_tarski(C,B) )
               => r1_tarski(k2_pre_topc(A,C),B) ) ) ) ) )).

fof(t31_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( r2_waybel_0(A,B,C)
             => m2_yellow_6(k5_yellow_6(A,B,C),A,B) ) ) ) )).

fof(t33_yellow_6,axiom,(
    ! [A,B] :
      ( l1_struct_0(B)
     => ! [C] :
          ( ( v1_relat_1(C)
            & v4_relat_1(C,A)
            & v1_funct_1(C)
            & v1_partfun1(C,A) )
         => ( m3_yellow_6(C,A,B)
          <=> ! [D] :
                ( r2_hidden(D,A)
               => ( ~ v2_struct_0(k1_funct_1(C,D))
                  & v4_orders_2(k1_funct_1(C,D))
                  & v7_waybel_0(k1_funct_1(C,D))
                  & l1_waybel_0(k1_funct_1(C,D),B) ) ) ) ) ) )).

fof(t37_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m3_yellow_6(C,u1_struct_0(B),A)
             => r1_tarski(k2_relset_1(u1_struct_0(k8_yellow_6(A,B,C)),u1_struct_0(A),u1_waybel_0(A,k8_yellow_6(A,B,C))),k3_tarski(a_3_0_yellow_6(A,B,C))) ) ) ) )).

fof(t37_zfmisc_1,axiom,(
    ! [A,B] :
      ( r1_tarski(k1_tarski(A),B)
    <=> r2_hidden(A,B) ) )).

fof(t3_classes2,axiom,(
    ! [A,B,C] :
      ( ( v2_classes1(A)
        & r2_hidden(B,A)
        & r2_hidden(C,A) )
     => ( r2_hidden(k1_tarski(B),A)
        & r2_hidden(k2_tarski(B,C),A) ) ) )).

fof(t3_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) )).

fof(t42_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & v1_yellow_6(B,A)
            & l1_waybel_0(B,A) )
         => r2_hidden(k4_yellow_6(A,B),k10_yellow_6(A,B)) ) ) )).

fof(t46_funct_2,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ( B != k1_xboole_0
       => ! [E] :
            ( r2_hidden(E,k8_relset_1(A,B,D,C))
          <=> ( r2_hidden(E,A)
              & r2_hidden(k1_funct_1(D,E),C) ) ) ) ) )).

fof(t49_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m4_yellow_6(B,A)
         => r1_tarski(B,k12_yellow_6(k13_yellow_6(A,B))) ) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) )).

fof(t51_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( v8_yellow_6(B,A)
            & m4_yellow_6(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k13_yellow_6(A,B))))
             => ( v4_pre_topc(C,k13_yellow_6(A,B))
              <=> ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ! [E] :
                        ( ( ~ v2_struct_0(E)
                          & v4_orders_2(E)
                          & v7_waybel_0(E)
                          & l1_waybel_0(E,A) )
                       => ( ( r2_hidden(k4_tarski(E,D),B)
                            & r2_waybel_0(A,E,C) )
                         => r2_hidden(D,C) ) ) ) ) ) ) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C) ) )).

fof(t62_classes2,axiom,(
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_classes2(A) )
     => r2_hidden(k1_xboole_0,A) ) )).

fof(t6_boole,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => A = k1_xboole_0 ) )).

fof(t72_funct_1,axiom,(
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(A,B)
       => k1_funct_1(k7_relat_1(C,B),A) = k1_funct_1(C,A) ) ) )).

fof(t7_boole,axiom,(
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] :
      ~ ( v1_xboole_0(A)
        & A != B
        & v1_xboole_0(B) ) )).

fof(t8_relset_1,axiom,(
    ! [A,B,C,D] :
      ( ( r2_hidden(A,B)
        & r2_hidden(C,D) )
     => m1_subset_1(k1_tarski(k4_tarski(A,C)),k1_zfmisc_1(k2_zfmisc_1(B,D))) ) )).

fof(t94_zfmisc_1,axiom,(
    ! [A,B] :
      ( ! [C] :
          ( r2_hidden(C,A)
         => r1_tarski(C,B) )
     => r1_tarski(k3_tarski(A),B) ) )).

%------------------------------------------------------------------------------
