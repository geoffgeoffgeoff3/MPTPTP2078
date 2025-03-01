%------------------------------------------------------------------------------
% File     : MPT2042+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : waybel_9__t41_waybel_9.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 4486 ( 468 unit)
%            Number of atoms       : 28230 (2898 equality)
%            Maximal formula depth :   35 (   8 average)
%            Number of connectives : 28070 (4326   ~; 166   |;13310   &)
%                                         ( 981 <=>;9287  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :  321 (   1 propositional; 0-6 arity)
%            Number of functors    :  443 (   9 constant; 0-10 arity)
%            Number of variables   : 13164 (   9 sgn;12483   !; 681   ?)
%            Maximal term depth    :    7 (   1 average)
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
include('Axioms/MPT017+2.ax').
include('Axioms/MPT018+2.ax').
include('Axioms/MPT019+2.ax').
include('Axioms/MPT020+2.ax').
include('Axioms/MPT021+2.ax').
include('Axioms/MPT022+2.ax').
include('Axioms/MPT023+2.ax').
include('Axioms/MPT024+2.ax').
include('Axioms/MPT025+2.ax').
include('Axioms/MPT026+2.ax').
include('Axioms/MPT027+2.ax').
include('Axioms/MPT028+2.ax').
include('Axioms/MPT029+2.ax').
include('Axioms/MPT030+2.ax').
include('Axioms/MPT031+2.ax').
%------------------------------------------------------------------------------
fof(cc1_finsub_1,axiom,(
    ! [A] :
      ( v4_finsub_1(A)
     => ( v1_finsub_1(A)
        & v3_finsub_1(A) ) ) )).

fof(cc1_waybel_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v16_waybel_0(A) )
       => ( ~ v2_struct_0(A)
          & v1_lattice3(A)
          & v2_lattice3(A) ) ) ) )).

fof(cc1_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & v8_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ~ v2_struct_0(B)
           => ( ~ v2_struct_0(B)
              & v8_pre_topc(B) ) ) ) ) )).

fof(cc2_finsub_1,axiom,(
    ! [A] :
      ( ( v1_finsub_1(A)
        & v3_finsub_1(A) )
     => v4_finsub_1(A) ) )).

fof(cc2_waybel_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v7_struct_0(A)
          & v3_orders_2(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v2_waybel_1(A)
          & v10_waybel_1(A) ) ) ) )).

fof(cc3_waybel_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v7_struct_0(A)
          & v3_orders_2(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v1_waybel_2(A) ) ) ) )).

fof(cc4_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( l1_waybel_0(B,A)
         => ( ( ~ v2_struct_0(B)
              & v7_waybel_0(B)
              & v8_waybel_0(B,A) )
           => ( ~ v2_struct_0(B)
              & v7_waybel_0(B)
              & v10_waybel_0(B,A) ) ) ) ) )).

fof(cc4_waybel_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v2_waybel_2(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v24_waybel_0(A)
          & v1_waybel_2(A) ) ) ) )).

fof(cc5_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( l1_waybel_0(B,A)
         => ( ( ~ v2_struct_0(B)
              & v7_waybel_0(B)
              & v9_waybel_0(B,A) )
           => ( ~ v2_struct_0(B)
              & v7_waybel_0(B)
              & v11_waybel_0(B,A) ) ) ) ) )).

fof(cc5_waybel_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v24_waybel_0(A)
          & v1_waybel_2(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v2_waybel_2(A) ) ) ) )).

fof(cc6_waybel_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v9_waybel_1(A)
          & v3_lattice3(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v2_waybel_1(A)
          & v2_waybel_2(A) ) ) ) )).

fof(cc7_waybel_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v2_waybel_1(A)
          & v3_lattice3(A)
          & v2_waybel_2(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v9_waybel_1(A) ) ) ) )).

fof(cc7_waybel_3,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v2_struct_0(A)
          & v2_pre_topc(A)
          & v8_pre_topc(A)
          & v1_compts_1(A) )
       => ( ~ v2_struct_0(A)
          & v2_pre_topc(A)
          & v9_pre_topc(A)
          & v10_pre_topc(A)
          & v6_waybel_3(A) ) ) ) )).

fof(commutativity_k1_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k1_finsub_1(A,B,C) = k1_finsub_1(A,C,B) ) )).

fof(commutativity_k2_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k2_yellow_4(A,B,C) = k2_yellow_4(A,C,B) ) )).

fof(commutativity_k3_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k3_finsub_1(A,B,C) = k3_finsub_1(A,C,B) ) )).

fof(commutativity_k4_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k4_yellow_4(A,B,C) = k4_yellow_4(A,C,B) ) )).

fof(d18_waybel_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(A))
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) )
             => ( C = k4_waybel_1(A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k3_funct_2(u1_struct_0(A),u1_struct_0(A),C,D) = k11_lattice3(A,B,D) ) ) ) ) ) )).

fof(d19_yellow_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ( v3_yellow_6(B,A)
          <=> k10_yellow_6(A,B) != k1_xboole_0 ) ) ) )).

fof(d1_waybel_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( l1_waybel_0(B,A)
         => k1_waybel_2(A,B) = k4_yellow_2(A,u1_waybel_0(A,B)) ) ) )).

fof(d1_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_orders_2(B) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)))) )
             => ( v5_waybel_0(C,A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ! [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                       => ( r1_orders_2(A,D,E)
                         => r1_orders_2(B,k2_yellow_6(u1_struct_0(A),B,C,E),k2_yellow_6(u1_struct_0(A),B,C,D)) ) ) ) ) ) ) ) )).

fof(d2_waybel_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_orders_2(B) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)))) )
             => ( v5_orders_3(C,A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ! [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                       => ( r1_orders_2(A,D,E)
                         => r1_orders_2(B,k3_funct_2(u1_struct_0(A),u1_struct_0(B),C,D),k3_funct_2(u1_struct_0(A),u1_struct_0(B),C,E)) ) ) ) ) ) ) ) )).

fof(d2_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( l1_waybel_0(B,A)
         => k1_waybel_9(A,B) = k5_yellow_2(A,u1_waybel_0(A,B)) ) ) )).

fof(d3_waybel_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & l1_waybel_0(C,A) )
             => ! [D] :
                  ( ( v6_waybel_0(D,A)
                    & l1_waybel_0(D,A) )
                 => ( D = k3_waybel_2(A,B,C)
                  <=> ( g1_orders_2(u1_struct_0(D),u1_orders_2(D)) = g1_orders_2(u1_struct_0(C),u1_orders_2(C))
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(D))
                         => ? [F] :
                              ( m1_subset_1(F,u1_struct_0(A))
                              & F = k1_funct_1(u1_waybel_0(A,C),E)
                              & k1_funct_1(u1_waybel_0(A,D),E) = k11_lattice3(A,B,F) ) ) ) ) ) ) ) ) )).

fof(d3_waybel_9,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_waybel_0(B,A)
         => ( r1_waybel_9(A,B)
          <=> r1_yellow_0(A,k2_relset_1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B))) ) ) ) )).

fof(d4_waybel_9,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_waybel_0(B,A)
         => ( r2_waybel_9(A,B)
          <=> r2_yellow_0(A,k2_relset_1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B))) ) ) ) )).

fof(d5_waybel_9,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( ( v6_waybel_0(B,A)
            & l1_waybel_0(B,A) )
         => ( B = k2_waybel_9(A)
          <=> ( g1_orders_2(u1_struct_0(B),u1_orders_2(B)) = g1_orders_2(u1_struct_0(A),u1_orders_2(A))
              & u1_waybel_0(A,B) = k3_struct_0(A) ) ) ) ) )).

fof(d5_yellow_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( v1_relat_1(B)
         => k4_yellow_2(A,B) = k1_yellow_0(A,k2_relat_1(B)) ) ) )).

fof(d6_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v7_waybel_0(A)
      <=> v1_waybel_0(k2_struct_0(A),A) ) ) )).

fof(d6_waybel_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ( v1_waybel_2(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & v1_waybel_0(C,A)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
               => k11_lattice3(A,B,k1_yellow_0(A,C)) = k1_yellow_0(A,k3_yellow_4(A,k6_domain_1(u1_struct_0(A),B),C)) ) ) ) ) )).

fof(d6_waybel_9,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( ( v6_waybel_0(B,A)
            & l1_waybel_0(B,A) )
         => ( B = k3_waybel_9(A)
          <=> ( u1_struct_0(B) = u1_struct_0(A)
              & u1_orders_2(B) = k3_relset_1(u1_struct_0(A),u1_struct_0(A),u1_orders_2(A))
              & u1_waybel_0(A,B) = k3_struct_0(A) ) ) ) ) )).

fof(d6_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v3_yellow_0(A)
      <=> ( v1_yellow_0(A)
          & v2_yellow_0(A) ) ) ) )).

fof(d6_yellow_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( v1_relat_1(B)
         => k5_yellow_2(A,B) = k2_yellow_0(A,k2_relat_1(B)) ) ) )).

fof(d7_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => k1_waybel_0(A,B) = u1_waybel_0(A,B) ) ) )).

fof(d7_waybel_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ( v2_waybel_2(A)
      <=> ( v24_waybel_0(A)
          & v1_waybel_2(A) ) ) ) )).

fof(d7_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( ( v6_waybel_0(D,A)
                    & l1_waybel_0(D,A) )
                 => ( D = k4_waybel_9(A,B,C)
                  <=> ( ! [E] :
                          ( r2_hidden(E,u1_struct_0(D))
                        <=> ? [F] :
                              ( m1_subset_1(F,u1_struct_0(B))
                              & F = E
                              & r1_orders_2(B,C,F) ) )
                      & r2_relset_1(u1_struct_0(D),u1_struct_0(D),u1_orders_2(D),k1_toler_1(u1_orders_2(B),u1_struct_0(D)))
                      & u1_waybel_0(A,D) = k2_partfun1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B),u1_struct_0(D)) ) ) ) ) ) ) )).

fof(d8_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( l1_struct_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)))) )
             => ! [D] :
                  ( l1_waybel_0(D,A)
                 => ! [E] :
                      ( ( v6_waybel_0(E,B)
                        & l1_waybel_0(E,B) )
                     => ( E = k6_waybel_9(A,B,C,D)
                      <=> ( g1_orders_2(u1_struct_0(E),u1_orders_2(E)) = g1_orders_2(u1_struct_0(D),u1_orders_2(D))
                          & u1_waybel_0(B,E) = k1_partfun1(u1_struct_0(D),u1_struct_0(A),u1_struct_0(A),u1_struct_0(B),u1_waybel_0(A,D),C) ) ) ) ) ) ) ) )).

fof(d9_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r3_waybel_9(A,B,C)
              <=> ! [D] :
                    ( m1_connsp_2(D,A,C)
                   => r2_waybel_0(A,B,D) ) ) ) ) ) )).

fof(dt_k1_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => m1_subset_1(k1_finsub_1(A,B,C),A) ) )).

fof(dt_k1_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A) )
     => ( v1_funct_1(k1_waybel_0(A,B))
        & v1_funct_2(k1_waybel_0(A,B),u1_struct_0(B),u1_struct_0(A))
        & m1_subset_1(k1_waybel_0(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B),u1_struct_0(A)))) ) ) )).

fof(dt_k1_waybel_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & l1_waybel_0(B,A) )
     => m1_subset_1(k1_waybel_2(A,B),u1_struct_0(A)) ) )).

fof(dt_k1_waybel_9,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & l1_waybel_0(B,A) )
     => m1_subset_1(k1_waybel_9(A,B),u1_struct_0(A)) ) )).

fof(dt_k1_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k1_yellow_4(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k2_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => m1_subset_1(k2_finsub_1(A,B,C),A) ) )).

fof(dt_k2_waybel_9,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v6_waybel_0(k2_waybel_9(A),A)
        & l1_waybel_0(k2_waybel_9(A),A) ) ) )).

fof(dt_k2_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k2_yellow_4(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k3_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => m1_subset_1(k3_finsub_1(A,B,C),A) ) )).

fof(dt_k3_waybel_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & ~ v2_struct_0(C)
        & l1_waybel_0(C,A) )
     => ( v6_waybel_0(k3_waybel_2(A,B,C),A)
        & l1_waybel_0(k3_waybel_2(A,B,C),A) ) ) )).

fof(dt_k3_waybel_9,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v6_waybel_0(k3_waybel_9(A),A)
        & l1_waybel_0(k3_waybel_9(A),A) ) ) )).

fof(dt_k3_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k3_yellow_4(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k4_waybel_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( v1_funct_1(k4_waybel_1(A,B))
        & v1_funct_2(k4_waybel_1(A,B),u1_struct_0(A),u1_struct_0(A))
        & m1_subset_1(k4_waybel_1(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) ) ) )).

fof(dt_k4_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( v6_waybel_0(k4_waybel_9(A,B,C),A)
        & l1_waybel_0(k4_waybel_9(A,B,C),A) ) ) )).

fof(dt_k4_yellow_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & v1_relat_1(B) )
     => m1_subset_1(k4_yellow_2(A,B),u1_struct_0(A)) ) )).

fof(dt_k4_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k4_yellow_4(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k5_yellow_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & v1_relat_1(B) )
     => m1_subset_1(k5_yellow_2(A,B),u1_struct_0(A)) ) )).

fof(dt_k6_waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B))))
        & l1_waybel_0(D,A) )
     => ( v6_waybel_0(k6_waybel_9(A,B,C,D),B)
        & l1_waybel_0(k6_waybel_9(A,B,C,D),B) ) ) )).

fof(dt_l1_waybel_9,axiom,(
    ! [A] :
      ( l1_waybel_9(A)
     => ( l1_pre_topc(A)
        & l1_orders_2(A) ) ) )).

fof(dt_o_1_0_waybel_9,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => m1_subset_1(o_1_0_waybel_9(A),A) ) )).

fof(dt_o_2_4_waybel_9,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A) )
     => m1_subset_1(o_2_4_waybel_9(A,B),u1_struct_0(B)) ) )).

fof(dt_o_2_7_waybel_9,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A) )
     => m1_subset_1(o_2_7_waybel_9(A,B),u1_struct_0(B)) ) )).

fof(existence_l1_waybel_9,axiom,(
    ? [A] : l1_waybel_9(A) )).

fof(fc10_waybel_9,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & l1_orders_2(A) )
     => ( v3_orders_2(k2_waybel_9(A))
        & v6_waybel_0(k2_waybel_9(A),A) ) ) )).

fof(fc11_waybel_9,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & l1_orders_2(A) )
     => ( v5_orders_2(k2_waybel_9(A))
        & v6_waybel_0(k2_waybel_9(A),A) ) ) )).

fof(fc12_waybel_2,axiom,(
    ! [A,B] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & v2_waybel_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( v1_funct_1(k4_waybel_1(A,B))
        & v1_funct_2(k4_waybel_1(A,B),u1_struct_0(A),u1_struct_0(A))
        & v22_waybel_0(k4_waybel_1(A,B),A,A) ) ) )).

fof(fc12_waybel_9,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & l1_orders_2(A) )
     => ( v4_orders_2(k2_waybel_9(A))
        & v6_waybel_0(k2_waybel_9(A),A) ) ) )).

fof(fc13_waybel_9,axiom,(
    ! [A] :
      ( ( v1_lattice3(A)
        & l1_orders_2(A) )
     => ( v6_waybel_0(k2_waybel_9(A),A)
        & v7_waybel_0(k2_waybel_9(A)) ) ) )).

fof(fc14_waybel_9,axiom,(
    ! [A] :
      ( ( v7_waybel_0(A)
        & l1_orders_2(A) )
     => ( v6_waybel_0(k2_waybel_9(A),A)
        & v7_waybel_0(k2_waybel_9(A)) ) ) )).

fof(fc15_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ( v6_waybel_0(k2_waybel_9(A),A)
        & v8_waybel_0(k2_waybel_9(A),A)
        & v10_waybel_0(k2_waybel_9(A),A) ) ) )).

fof(fc16_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ( ~ v2_struct_0(k3_waybel_9(A))
        & v6_waybel_0(k3_waybel_9(A),A) ) ) )).

fof(fc17_waybel_9,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & l1_orders_2(A) )
     => ( v3_orders_2(k3_waybel_9(A))
        & v6_waybel_0(k3_waybel_9(A),A) ) ) )).

fof(fc18_waybel_9,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & l1_orders_2(A) )
     => ( v5_orders_2(k3_waybel_9(A))
        & v6_waybel_0(k3_waybel_9(A),A) ) ) )).

fof(fc19_waybel_9,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & l1_orders_2(A) )
     => ( v4_orders_2(k3_waybel_9(A))
        & v6_waybel_0(k3_waybel_9(A),A) ) ) )).

fof(fc1_finsub_1,axiom,(
    ! [A] : v4_finsub_1(k1_zfmisc_1(A)) )).

fof(fc1_waybel_2,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & ~ v1_xboole_0(D)
        & m1_subset_1(D,k1_zfmisc_1(A)) )
     => ~ v1_xboole_0(k9_relat_1(C,D)) ) )).

fof(fc1_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ( v1_funct_1(k3_struct_0(A))
        & v1_funct_2(k3_struct_0(A),u1_struct_0(A),u1_struct_0(A))
        & v5_orders_3(k3_struct_0(A),A,A) ) ) )).

fof(fc1_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v1_xboole_0(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k1_yellow_4(A,B,C)) ) )).

fof(fc20_waybel_9,axiom,(
    ! [A] :
      ( ( v2_lattice3(A)
        & l1_orders_2(A) )
     => ( v6_waybel_0(k3_waybel_9(A),A)
        & v7_waybel_0(k3_waybel_9(A)) ) ) )).

fof(fc21_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ( v6_waybel_0(k3_waybel_9(A),A)
        & v9_waybel_0(k3_waybel_9(A),A)
        & v11_waybel_0(k3_waybel_9(A),A) ) ) )).

fof(fc22_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v3_orders_2(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( ~ v2_struct_0(k4_waybel_9(A,B,C))
        & v3_orders_2(k4_waybel_9(A,B,C))
        & v6_waybel_0(k4_waybel_9(A,B,C),A) ) ) )).

fof(fc23_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( ~ v2_struct_0(k4_waybel_9(A,B,C))
        & v6_waybel_0(k4_waybel_9(A,B,C),A) ) ) )).

fof(fc24_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v5_orders_2(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( v5_orders_2(k4_waybel_9(A,B,C))
        & v6_waybel_0(k4_waybel_9(A,B,C),A) ) ) )).

fof(fc25_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v5_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( v5_orders_2(k4_waybel_9(A,B,C))
        & v6_waybel_0(k4_waybel_9(A,B,C),A) ) ) )).

fof(fc26_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( v4_orders_2(k4_waybel_9(A,B,C))
        & v6_waybel_0(k4_waybel_9(A,B,C),A) ) ) )).

fof(fc27_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( v4_orders_2(k4_waybel_9(A,B,C))
        & v6_waybel_0(k4_waybel_9(A,B,C),A)
        & v7_waybel_0(k4_waybel_9(A,B,C)) ) ) )).

fof(fc28_waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B))))
        & ~ v2_struct_0(D)
        & l1_waybel_0(D,A) )
     => ( ~ v2_struct_0(k6_waybel_9(A,B,C,D))
        & v6_waybel_0(k6_waybel_9(A,B,C,D),B) ) ) )).

fof(fc29_waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B))))
        & v3_orders_2(D)
        & l1_waybel_0(D,A) )
     => ( v3_orders_2(k6_waybel_9(A,B,C,D))
        & v6_waybel_0(k6_waybel_9(A,B,C,D),B) ) ) )).

fof(fc2_waybel_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v16_waybel_0(A)
        & l1_orders_2(A) )
     => v1_waybel_0(k2_struct_0(A),A) ) )).

fof(fc2_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & v1_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_funct_1(C)
        & v1_funct_2(C,B,u1_struct_0(A))
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(B,u1_struct_0(A)))) )
     => ( v6_waybel_0(g1_waybel_0(A,B,k1_toler_1(u1_orders_2(A),B),C),A)
        & v7_waybel_0(g1_waybel_0(A,B,k1_toler_1(u1_orders_2(A),B),C)) ) ) )).

fof(fc2_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & v1_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_waybel_0(C,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => v1_waybel_0(k1_yellow_4(A,B,C),A) ) )).

fof(fc30_waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B))))
        & v5_orders_2(D)
        & l1_waybel_0(D,A) )
     => ( v5_orders_2(k6_waybel_9(A,B,C,D))
        & v6_waybel_0(k6_waybel_9(A,B,C,D),B) ) ) )).

fof(fc31_waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B))))
        & v4_orders_2(D)
        & l1_waybel_0(D,A) )
     => ( v4_orders_2(k6_waybel_9(A,B,C,D))
        & v6_waybel_0(k6_waybel_9(A,B,C,D),B) ) ) )).

fof(fc32_waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B))))
        & v7_waybel_0(D)
        & l1_waybel_0(D,A) )
     => ( v6_waybel_0(k6_waybel_9(A,B,C,D),B)
        & v7_waybel_0(k6_waybel_9(A,B,C,D)) ) ) )).

fof(fc3_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & v1_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_funct_1(C)
        & v1_funct_2(C,B,u1_struct_0(A))
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(B,u1_struct_0(A)))) )
     => ( v4_orders_2(g1_waybel_0(A,B,k1_toler_1(u1_orders_2(A),B),C))
        & v6_waybel_0(g1_waybel_0(A,B,k1_toler_1(u1_orders_2(A),B),C),A) ) ) )).

fof(fc3_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & v2_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v2_waybel_0(C,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => v2_waybel_0(k1_yellow_4(A,B,C),A) ) )).

fof(fc4_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & ~ v2_struct_0(C)
        & v4_orders_2(C)
        & v7_waybel_0(C)
        & l1_waybel_0(C,A) )
     => ( v4_orders_2(k3_waybel_2(A,B,C))
        & v6_waybel_0(k3_waybel_2(A,B,C),A) ) ) )).

fof(fc4_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & v13_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v13_waybel_0(C,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => v13_waybel_0(k1_yellow_4(A,B,C),A) ) )).

fof(fc5_waybel_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & ~ v2_struct_0(C)
        & l1_waybel_0(C,A) )
     => ( ~ v2_struct_0(k3_waybel_2(A,B,C))
        & v6_waybel_0(k3_waybel_2(A,B,C),A) ) ) )).

fof(fc5_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & ~ v2_struct_0(C)
        & v3_orders_2(C)
        & l1_waybel_0(C,A) )
     => ( v3_orders_2(k3_waybel_2(A,B,C))
        & v6_waybel_0(k3_waybel_2(A,B,C),A) ) ) )).

fof(fc5_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v1_xboole_0(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k3_yellow_4(A,B,C)) ) )).

fof(fc6_waybel_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & ~ v2_struct_0(C)
        & v7_waybel_0(C)
        & l1_waybel_0(C,A) )
     => ( v6_waybel_0(k3_waybel_2(A,B,C),A)
        & v7_waybel_0(k3_waybel_2(A,B,C)) ) ) )).

fof(fc6_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & ~ v2_struct_0(C)
        & v5_orders_2(C)
        & l1_waybel_0(C,A) )
     => ( v5_orders_2(k3_waybel_2(A,B,C))
        & v6_waybel_0(k3_waybel_2(A,B,C),A) ) ) )).

fof(fc6_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & v1_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_waybel_0(C,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => v1_waybel_0(k3_yellow_4(A,B,C),A) ) )).

fof(fc7_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & ~ v2_struct_0(C)
        & v4_orders_2(C)
        & l1_waybel_0(C,A) )
     => ( v4_orders_2(k3_waybel_2(A,B,C))
        & v6_waybel_0(k3_waybel_2(A,B,C),A) ) ) )).

fof(fc7_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & v2_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v2_waybel_0(C,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => v2_waybel_0(k3_yellow_4(A,B,C),A) ) )).

fof(fc8_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & v12_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v12_waybel_0(C,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => v12_waybel_0(k3_yellow_4(A,B,C),A) ) )).

fof(fc9_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ( ~ v2_struct_0(k2_waybel_9(A))
        & v6_waybel_0(k2_waybel_9(A),A) ) ) )).

fof(fraenkel_a_2_1_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( v3_orders_2(B)
        & v5_orders_2(B)
        & v1_lattice3(B)
        & l1_orders_2(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r2_hidden(A,a_2_1_waybel_9(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = k13_lattice3(B,C,D)
            & r2_hidden(D,k2_struct_0(B)) ) ) ) )).

fof(fraenkel_a_2_3_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( v3_orders_2(B)
        & v5_orders_2(B)
        & v2_lattice3(B)
        & l1_orders_2(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r2_hidden(A,a_2_3_waybel_9(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = k12_lattice3(B,C,D)
            & r2_hidden(D,k2_struct_0(B)) ) ) ) )).

fof(fraenkel_a_2_5_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( v2_pre_topc(B)
        & v8_pre_topc(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v5_orders_2(B)
        & v1_lattice3(B)
        & v2_lattice3(B)
        & v1_compts_1(B)
        & l1_waybel_9(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r2_hidden(A,a_2_5_waybel_9(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = k12_lattice3(B,C,D)
            & r2_hidden(D,k2_struct_0(B)) ) ) ) )).

fof(fraenkel_a_2_6_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v2_pre_topc(B)
        & v8_pre_topc(B)
        & v1_compts_1(B)
        & l1_pre_topc(B)
        & ~ v2_struct_0(C)
        & v4_orders_2(C)
        & v7_waybel_0(C)
        & l1_waybel_0(C,B) )
     => ( r2_hidden(A,a_2_6_waybel_9(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(C))
            & A = D
            & ? [E] :
                ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(B)))
                & ? [F] :
                    ( m1_subset_1(F,k1_zfmisc_1(u1_struct_0(B)))
                    & E = a_3_1_waybel_9(B,C,D)
                    & F = k2_pre_topc(B,E) ) ) ) ) ) )).

fof(fraenkel_a_3_0_waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & l1_struct_0(B)
        & ~ v2_struct_0(C)
        & l1_waybel_0(C,B)
        & m1_subset_1(D,u1_struct_0(C)) )
     => ( r2_hidden(A,a_3_0_waybel_9(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(C))
            & A = E
            & r1_orders_2(C,D,E) ) ) ) )).

fof(fraenkel_a_3_1_waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & v2_pre_topc(B)
        & v8_pre_topc(B)
        & v1_compts_1(B)
        & l1_pre_topc(B)
        & ~ v2_struct_0(C)
        & v4_orders_2(C)
        & v7_waybel_0(C)
        & l1_waybel_0(C,B)
        & m1_subset_1(D,u1_struct_0(C)) )
     => ( r2_hidden(A,a_3_1_waybel_9(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(C))
            & A = k2_waybel_0(B,C,E)
            & r1_orders_2(C,D,E) ) ) ) )).

fof(fraenkel_a_3_1_yellow_4,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
        & m1_subset_1(D,u1_struct_0(B)) )
     => ( r2_hidden(A,a_3_1_yellow_4(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(B))
            & A = k10_lattice3(B,D,E)
            & r2_hidden(E,C) ) ) ) )).

fof(fraenkel_a_3_2_waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & v2_pre_topc(B)
        & l1_pre_topc(B)
        & ~ v2_struct_0(C)
        & v4_orders_2(C)
        & v7_waybel_0(C)
        & l1_waybel_0(C,B)
        & m1_subset_1(D,u1_struct_0(B)) )
     => ( r2_hidden(A,a_3_2_waybel_9(B,C,D))
      <=> ? [E,F] :
            ( m1_subset_1(E,u1_struct_0(C))
            & m1_subset_1(F,u1_struct_0(k9_yellow_6(B,D)))
            & A = k1_domain_1(u1_struct_0(C),u1_struct_0(k9_yellow_6(B,D)),E,F)
            & r2_hidden(k2_waybel_0(B,C,E),F) ) ) ) )).

fof(fraenkel_a_3_3_yellow_4,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
        & m1_subset_1(D,u1_struct_0(B)) )
     => ( r2_hidden(A,a_3_3_yellow_4(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(B))
            & A = k11_lattice3(B,D,E)
            & r2_hidden(E,C) ) ) ) )).

fof(idempotence_k1_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k1_finsub_1(A,B,B) = B ) )).

fof(idempotence_k3_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k3_finsub_1(A,B,B) = B ) )).

fof(l48_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( C = D
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => v5_pre_topc(k4_waybel_1(A,E),A,A) )
                      & v10_waybel_0(B,A)
                      & r3_waybel_9(A,B,C) )
                   => r2_lattice3(A,k2_relset_1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B)),D) ) ) ) ) ) )).

fof(l49_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( C = D
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => v5_pre_topc(k4_waybel_1(A,E),A,A) )
                      & r3_waybel_9(A,B,C) )
                   => ! [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                       => ( r2_lattice3(A,k2_relset_1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B)),E)
                         => r3_orders_2(A,D,E) ) ) ) ) ) ) ) )).

fof(l51_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( C = D
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => v5_pre_topc(k4_waybel_1(A,E),A,A) )
                      & v11_waybel_0(B,A)
                      & r3_waybel_9(A,B,C) )
                   => r1_lattice3(A,k2_relset_1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B)),D) ) ) ) ) ) )).

fof(l52_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( C = D
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => v5_pre_topc(k4_waybel_1(A,E),A,A) )
                      & r3_waybel_9(A,B,C) )
                   => ! [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                       => ( r1_lattice3(A,k2_relset_1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B)),E)
                         => r1_orders_2(A,E,D) ) ) ) ) ) ) ) )).

fof(rc1_waybel_9,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A) )
     => ? [C] :
          ( m2_yellow_6(C,A,B)
          & ~ v2_struct_0(C)
          & v4_orders_2(C)
          & v6_waybel_0(C,A)
          & v7_waybel_0(C) ) ) )).

fof(rc4_waybel_3,axiom,(
    ? [A] :
      ( l1_pre_topc(A)
      & ~ v2_struct_0(A)
      & v2_pre_topc(A)
      & v8_pre_topc(A)
      & v1_compts_1(A) ) )).

fof(rc6_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( l1_waybel_0(B,A)
          & ~ v2_struct_0(B)
          & v6_waybel_0(B,A)
          & v7_waybel_0(B)
          & v8_waybel_0(B,A)
          & v9_waybel_0(B,A) ) ) )).

fof(redefinition_k1_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k1_finsub_1(A,B,C) = k2_xboole_0(B,C) ) )).

fof(redefinition_k2_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k2_finsub_1(A,B,C) = k4_xboole_0(B,C) ) )).

fof(redefinition_k2_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k2_yellow_4(A,B,C) = k1_yellow_4(A,B,C) ) )).

fof(redefinition_k3_finsub_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v4_finsub_1(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k3_finsub_1(A,B,C) = k3_xboole_0(B,C) ) )).

fof(redefinition_k4_yellow_4,axiom,(
    ! [A,B,C] :
      ( ( v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k4_yellow_4(A,B,C) = k3_yellow_4(A,B,C) ) )).

fof(s1_yellow_0__e6_85__waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & ~ v1_xboole_0(C) )
     => ? [D] :
          ( ~ v2_struct_0(D)
          & v1_orders_2(D)
          & l1_orders_2(D)
          & u1_struct_0(D) = C
          & ! [E] :
              ( m1_subset_1(E,u1_struct_0(D))
             => ! [F] :
                  ( m1_subset_1(F,u1_struct_0(D))
                 => ( r1_orders_2(D,E,F)
                  <=> ? [G] :
                        ( m1_subset_1(G,u1_struct_0(B))
                        & ? [H] :
                            ( m1_subset_1(H,u1_struct_0(B))
                            & G = k1_mcart_1(E)
                            & H = k1_mcart_1(F)
                            & r1_orders_2(B,G,H)
                            & r1_tarski(k2_mcart_1(F),k2_mcart_1(E)) ) ) ) ) ) ) ) )).

fof(s3_funct_2__e17_83_2__waybel_9,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & v8_pre_topc(A)
        & v1_compts_1(A)
        & l1_pre_topc(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & ~ v1_xboole_0(C)
        & ~ v1_xboole_0(D) )
     => ( ! [E] :
            ( m1_subset_1(E,C)
           => ? [F] :
                ( m1_subset_1(F,D)
                & ? [G] :
                    ( m1_subset_1(G,u1_struct_0(B))
                    & ? [H] :
                        ( m1_subset_1(H,k1_zfmisc_1(u1_struct_0(A)))
                        & ? [I] :
                            ( m1_subset_1(I,k1_zfmisc_1(u1_struct_0(A)))
                            & G = F
                            & I = E
                            & H = a_3_1_waybel_9(A,B,G)
                            & I = k2_pre_topc(A,H) ) ) ) ) )
       => ? [E] :
            ( v1_funct_1(E)
            & v1_funct_2(E,C,D)
            & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(C,D)))
            & ! [F] :
                ( m1_subset_1(F,C)
               => ? [J] :
                    ( m1_subset_1(J,u1_struct_0(B))
                    & ? [K] :
                        ( m1_subset_1(K,k1_zfmisc_1(u1_struct_0(A)))
                        & ? [L] :
                            ( m1_subset_1(L,k1_zfmisc_1(u1_struct_0(A)))
                            & J = k3_funct_2(C,D,E,F)
                            & L = F
                            & K = a_3_1_waybel_9(A,B,J)
                            & L = k2_pre_topc(A,K) ) ) ) ) ) ) ) )).

fof(s3_funct_2__e2_83__waybel_9,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & v8_pre_topc(A)
        & v1_compts_1(A)
        & l1_pre_topc(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A) )
     => ( ! [C] :
            ( m1_subset_1(C,u1_struct_0(B))
           => ? [D] :
                ( m1_subset_1(D,k9_setfam_1(u1_struct_0(A)))
                & ? [E] :
                    ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(A)))
                    & ? [F] :
                        ( m1_subset_1(F,u1_struct_0(B))
                        & F = C
                        & E = a_3_1_waybel_9(A,B,F)
                        & D = k2_pre_topc(A,E) ) ) ) )
       => ? [C] :
            ( v1_funct_1(C)
            & v1_funct_2(C,u1_struct_0(B),k9_setfam_1(u1_struct_0(A)))
            & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B),k9_setfam_1(u1_struct_0(A)))))
            & ! [D] :
                ( m1_subset_1(D,u1_struct_0(B))
               => ? [G] :
                    ( m1_subset_1(G,k1_zfmisc_1(u1_struct_0(A)))
                    & ? [H] :
                        ( m1_subset_1(H,u1_struct_0(B))
                        & H = D
                        & G = a_3_1_waybel_9(A,B,H)
                        & k3_funct_2(u1_struct_0(B),k9_setfam_1(u1_struct_0(A)),C,D) = k2_pre_topc(A,G) ) ) ) ) ) ) )).

fof(s8_funct_2__e10_85__waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & ~ v2_struct_0(C)
        & v1_orders_2(C)
        & l1_orders_2(C) )
     => ( ! [D] :
            ( m1_subset_1(D,u1_struct_0(C))
           => r2_hidden(k1_funct_1(u1_waybel_0(A,B),k1_mcart_1(D)),u1_struct_0(A)) )
       => ? [D] :
            ( v1_funct_1(D)
            & v1_funct_2(D,u1_struct_0(C),u1_struct_0(A))
            & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(C),u1_struct_0(A))))
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(C))
               => k3_funct_2(u1_struct_0(C),u1_struct_0(A),D,E) = k1_funct_1(u1_waybel_0(A,B),k1_mcart_1(E)) ) ) ) ) )).

fof(s8_funct_2__e2_85_4__waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & ~ v2_struct_0(C)
        & v1_orders_2(C)
        & l1_orders_2(C) )
     => ( ! [D] :
            ( m1_subset_1(D,u1_struct_0(C))
           => r2_hidden(k1_mcart_1(D),u1_struct_0(B)) )
       => ? [D] :
            ( v1_funct_1(D)
            & v1_funct_2(D,u1_struct_0(C),u1_struct_0(B))
            & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(C),u1_struct_0(B))))
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(C))
               => k3_funct_2(u1_struct_0(C),u1_struct_0(B),D,E) = k1_mcart_1(E) ) ) ) ) )).

fof(t10_pcomps_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( v8_pre_topc(A)
           => v4_pre_topc(k6_domain_1(u1_struct_0(A),B),A) ) ) ) )).

fof(t10_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & v4_orders_2(C)
                & v7_waybel_0(C)
                & l1_waybel_0(C,A) )
             => ( ~ v2_struct_0(k3_waybel_2(A,B,C))
                & v4_orders_2(k3_waybel_2(A,B,C))
                & v7_waybel_0(k3_waybel_2(A,B,C))
                & l1_waybel_0(k3_waybel_2(A,B,C),A) ) ) ) ) )).

fof(t11_waybel_9,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => g1_orders_2(u1_struct_0(k7_lattice3(A)),u1_orders_2(k7_lattice3(A))) = g1_orders_2(u1_struct_0(k3_waybel_9(A)),u1_orders_2(k3_waybel_9(A))) ) )).

fof(t12_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => u1_struct_0(k4_waybel_9(A,B,C)) = a_3_0_waybel_9(A,B,C) ) ) ) )).

fof(t13_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => r1_tarski(u1_struct_0(k4_waybel_9(A,B,C)),u1_struct_0(B)) ) ) ) )).

fof(t14_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ( v2_yellow_6(k4_waybel_9(A,B,C),A,B)
                & m1_yellow_6(k4_waybel_9(A,B,C),A,B) ) ) ) ) )).

fof(t15_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v3_orders_2(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(k4_waybel_9(A,B,C)))
                     => ( D = E
                       => k2_waybel_0(A,B,D) = k2_waybel_0(A,k4_waybel_9(A,B,C),E) ) ) ) ) ) ) )).

fof(t15_yellow_4,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k1_yellow_4(A,k6_domain_1(u1_struct_0(A),C),B) = a_3_1_yellow_4(A,B,C) ) ) ) )).

fof(t16_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(k4_waybel_9(A,B,C)))
                     => ( D = E
                       => k2_waybel_0(A,B,D) = k2_waybel_0(A,k4_waybel_9(A,B,C),E) ) ) ) ) ) ) )).

fof(t17_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => m2_yellow_6(k4_waybel_9(A,B,C),A,B) ) ) ) )).

fof(t18_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k6_waybel_9(A,A,k4_waybel_1(A,C),B) = k3_waybel_2(A,C,B) ) ) ) )).

fof(t19_waybel_9,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( l1_pre_topc(B)
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(B))))
                 => ( ( g1_pre_topc(u1_struct_0(A),u1_pre_topc(A)) = g1_pre_topc(u1_struct_0(B),u1_pre_topc(B))
                      & C = D
                      & v1_tops_2(C,A) )
                   => v1_tops_2(D,B) ) ) ) ) ) )).

fof(t1_waybel_9,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_orders_2(B)
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & l1_orders_2(C) )
             => ! [D] :
                  ( ( ~ v2_struct_0(D)
                    & l1_orders_2(D) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,u1_struct_0(A),u1_struct_0(B))
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,u1_struct_0(C),u1_struct_0(D))
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(C),u1_struct_0(D)))) )
                         => ( ( g1_orders_2(u1_struct_0(A),u1_orders_2(A)) = g1_orders_2(u1_struct_0(C),u1_orders_2(C))
                              & g1_orders_2(u1_struct_0(B),u1_orders_2(B)) = g1_orders_2(u1_struct_0(D),u1_orders_2(D))
                              & E = F
                              & v5_orders_3(E,A,B) )
                           => v5_orders_3(F,C,D) ) ) ) ) ) ) ) )).

fof(t20_waybel_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,B,u1_struct_0(A))
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(B,u1_struct_0(A)))) )
             => ! [D] :
                  ( ( ~ v2_struct_0(D)
                    & v7_waybel_0(D)
                    & l1_waybel_0(D,A) )
                 => ( ( r1_funct_2(B,u1_struct_0(A),B,B,C,k6_partfun1(B))
                      & D = g1_waybel_0(A,B,k1_toler_1(u1_orders_2(A),B),C) )
                   => v10_waybel_0(D,A) ) ) ) ) ) )).

fof(t20_waybel_9,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( l1_pre_topc(B)
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(B))))
                 => ( ( g1_pre_topc(u1_struct_0(A),u1_pre_topc(A)) = g1_pre_topc(u1_struct_0(B),u1_pre_topc(B))
                      & C = D
                      & v2_tops_2(C,A) )
                   => v2_tops_2(D,B) ) ) ) ) ) )).

fof(t21_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(k9_yellow_6(A,B)))
             => m1_connsp_2(C,A,B) ) ) ) )).

fof(t22_waybel_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                <=> m1_subset_1(D,u1_struct_0(k3_waybel_2(A,C,B))) ) ) ) ) )).

fof(t22_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(k9_yellow_6(A,B)))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(k9_yellow_6(A,B)))
                 => m1_subset_1(k3_xboole_0(C,D),u1_struct_0(k9_yellow_6(A,B))) ) ) ) ) )).

fof(t23_waybel_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & l1_waybel_0(C,A) )
             => k2_relset_1(u1_struct_0(k3_waybel_2(A,B,C)),u1_struct_0(A),u1_waybel_0(A,k3_waybel_2(A,B,C))) = k3_yellow_4(A,k6_domain_1(u1_struct_0(A),B),k2_relset_1(u1_struct_0(C),u1_struct_0(A),u1_waybel_0(A,C))) ) ) ) )).

fof(t23_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(k9_yellow_6(A,B)))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(k9_yellow_6(A,B)))
                 => m1_subset_1(k2_xboole_0(C,D),u1_struct_0(k9_yellow_6(A,B))) ) ) ) ) )).

fof(t24_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & v4_orders_2(C)
                & v7_waybel_0(C)
                & l1_waybel_0(C,A) )
             => ( r2_hidden(B,k10_yellow_6(A,C))
               => ! [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                   => ( D = k2_relset_1(u1_struct_0(C),u1_struct_0(A),u1_waybel_0(A,C))
                     => r2_hidden(B,k2_pre_topc(A,D)) ) ) ) ) ) ) )).

fof(t25_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & v3_yellow_6(B,A)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(A))
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) )
             => ( v5_pre_topc(C,A,A)
               => r2_hidden(k2_yellow_6(u1_struct_0(A),A,C,k11_yellow_6(A,B)),k10_yellow_6(A,k6_waybel_9(A,A,C,B))) ) ) ) ) )).

fof(t26_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & v3_yellow_6(B,A)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( v5_pre_topc(k4_waybel_1(A,C),A,A)
               => r2_hidden(k12_lattice3(A,C,k11_yellow_6(A,B)),k10_yellow_6(A,k3_waybel_2(A,C,B))) ) ) ) ) )).

fof(t27_waybel_2,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( v10_waybel_0(B,A)
               => v10_waybel_0(k3_waybel_2(A,C,B),A) ) ) ) ) )).

fof(t27_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => v5_pre_topc(k4_waybel_1(A,C),A,A) )
           => v4_pre_topc(k6_waybel_0(A,B),A) ) ) ) )).

fof(t28_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => v5_pre_topc(k4_waybel_1(A,C),A,A) )
           => v4_pre_topc(k5_waybel_0(A,B),A) ) ) ) )).

fof(t29_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(C,k10_yellow_6(A,B))
               => r3_waybel_9(A,B,C) ) ) ) ) )).

fof(t2_waybel_9,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_orders_2(B)
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & l1_orders_2(C) )
             => ! [D] :
                  ( ( ~ v2_struct_0(D)
                    & l1_orders_2(D) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,u1_struct_0(A),u1_struct_0(B))
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,u1_struct_0(C),u1_struct_0(D))
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(C),u1_struct_0(D)))) )
                         => ( ( g1_orders_2(u1_struct_0(A),u1_orders_2(A)) = g1_orders_2(u1_struct_0(C),u1_orders_2(C))
                              & g1_orders_2(u1_struct_0(B),u1_orders_2(B)) = g1_orders_2(u1_struct_0(D),u1_orders_2(D))
                              & E = F
                              & v5_waybel_0(E,A,B) )
                           => v5_waybel_0(F,C,D) ) ) ) ) ) ) ) )).

fof(t30_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & v8_pre_topc(A)
        & v1_compts_1(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ? [C] :
              ( m1_subset_1(C,u1_struct_0(A))
              & r3_waybel_9(A,B,C) ) ) ) )).

fof(t31_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m2_yellow_6(C,A,B)
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( r3_waybel_9(A,C,D)
                   => r3_waybel_9(A,B,D) ) ) ) ) ) )).

fof(t32_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ~ ( r3_waybel_9(A,B,C)
                  & ! [D] :
                      ( m2_yellow_6(D,A,B)
                     => ~ r2_hidden(C,k10_yellow_6(A,D)) ) ) ) ) ) )).

fof(t33_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & v8_pre_topc(A)
        & v1_compts_1(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ( ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ( r3_waybel_9(A,B,C)
                        & r3_waybel_9(A,B,D) )
                     => C = D ) ) )
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( r3_waybel_9(A,B,C)
                 => r2_hidden(C,k10_yellow_6(A,B)) ) ) ) ) ) )).

fof(t34_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & v4_orders_2(C)
                & v7_waybel_0(C)
                & l1_waybel_0(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( ( r3_waybel_9(A,C,B)
                      & v4_pre_topc(D,A)
                      & r1_tarski(k2_relset_1(u1_struct_0(C),u1_struct_0(A),u1_waybel_0(A,C)),D) )
                   => r2_hidden(B,D) ) ) ) ) ) )).

fof(t35_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & v4_orders_2(C)
                & v7_waybel_0(C)
                & l1_waybel_0(C,A) )
             => ( ( ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => v5_pre_topc(k4_waybel_1(A,D),A,A) )
                  & v10_waybel_0(C,A)
                  & r3_waybel_9(A,C,B) )
               => B = k1_waybel_2(A,C) ) ) ) ) )).

fof(t36_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & v4_orders_2(C)
                & v7_waybel_0(C)
                & l1_waybel_0(C,A) )
             => ( ( ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => v5_pre_topc(k4_waybel_1(A,D),A,A) )
                  & v11_waybel_0(C,A)
                  & r3_waybel_9(A,C,B) )
               => B = k1_waybel_9(A,C) ) ) ) ) )).

fof(t37_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_waybel_9(A) )
     => ( ( ! [B] :
              ( ( ~ v2_struct_0(B)
                & v4_orders_2(B)
                & v7_waybel_0(B)
                & l1_waybel_0(B,A) )
             => ( v10_waybel_0(B,A)
               => ( r1_waybel_9(A,B)
                  & r2_hidden(k1_waybel_2(A,B),k10_yellow_6(A,B)) ) ) )
          & ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => v5_pre_topc(k4_waybel_1(A,B),A,A) ) )
       => v2_waybel_2(A) ) ) )).

fof(t38_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => v5_pre_topc(k4_waybel_1(A,B),A,A) )
       => ! [B] :
            ( ( ~ v2_struct_0(B)
              & v4_orders_2(B)
              & v7_waybel_0(B)
              & l1_waybel_0(B,A) )
           => ( v10_waybel_0(B,A)
             => ( r1_waybel_9(A,B)
                & r2_hidden(k1_waybel_2(A,B),k10_yellow_6(A,B)) ) ) ) ) ) )).

fof(t39_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => v5_pre_topc(k4_waybel_1(A,B),A,A) )
       => ! [B] :
            ( ( ~ v2_struct_0(B)
              & v4_orders_2(B)
              & v7_waybel_0(B)
              & l1_waybel_0(B,A) )
           => ( v11_waybel_0(B,A)
             => ( r2_waybel_9(A,B)
                & r2_hidden(k1_waybel_9(A,B),k10_yellow_6(A,B)) ) ) ) ) ) )).

fof(t3_waybel_9,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ! [B] :
          ( l1_struct_0(B)
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(B))))
                 => ( ( u1_struct_0(A) = u1_struct_0(B)
                      & C = D
                      & m1_setfam_1(C,u1_struct_0(A)) )
                   => m1_setfam_1(D,u1_struct_0(B)) ) ) ) ) ) )).

fof(t40_waybel_9,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => v5_pre_topc(k4_waybel_1(A,B),A,A) )
       => v3_yellow_0(A) ) ) )).

fof(t41_waybel_9,conjecture,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & v8_pre_topc(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v1_compts_1(A)
        & l1_waybel_9(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => v5_pre_topc(k4_waybel_1(A,B),A,A) )
       => v2_waybel_2(A) ) ) )).

fof(t42_yellow_4,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k3_yellow_4(A,k6_domain_1(u1_struct_0(A),C),B) = a_3_3_yellow_4(A,B,C) ) ) ) )).

fof(t4_waybel_9,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_waybel_0(A,B) = k2_yellow_4(A,k6_domain_1(u1_struct_0(A),B),k2_struct_0(A)) ) ) )).

fof(t5_waybel_9,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k5_waybel_0(A,B) = k4_yellow_4(A,k6_domain_1(u1_struct_0(A),B),k2_struct_0(A)) ) ) )).

fof(t6_waybel_9,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k7_relset_1(u1_struct_0(A),u1_struct_0(A),k4_waybel_1(A,B),k6_waybel_0(A,B)) = k6_domain_1(u1_struct_0(A),B) ) ) )).

fof(t7_waybel_9,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k8_relset_1(u1_struct_0(A),u1_struct_0(A),k4_waybel_1(A,B),k6_domain_1(u1_struct_0(A),B)) = k6_waybel_0(A,B) ) ) )).

fof(t8_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => r1_waybel_0(A,B,k2_relset_1(u1_struct_0(B),u1_struct_0(A),u1_waybel_0(A,B))) ) ) )).

fof(t9_waybel_9,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v4_orders_2(C)
                  & v7_waybel_0(C)
                  & l1_waybel_0(C,A) )
               => ( v10_waybel_0(C,A)
                 => k11_lattice3(A,B,k1_waybel_2(A,C)) = k1_yellow_0(A,k3_yellow_4(A,k6_domain_1(u1_struct_0(A),B),k2_relset_1(u1_struct_0(C),u1_struct_0(A),k1_waybel_0(A,C)))) ) ) )
       => v1_waybel_2(A) ) ) )).

%------------------------------------------------------------------------------
