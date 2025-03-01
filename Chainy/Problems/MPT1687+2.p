%------------------------------------------------------------------------------
% File     : MPT1687+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : waybel_0__t67_waybel_0.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 3301 ( 439 unit)
%            Number of atoms       : 17317 (2420 equality)
%            Maximal formula depth :   35 (   7 average)
%            Number of connectives : 16292 (2276   ~; 126   |;7053   &)
%                                         ( 721 <=>;6116  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :  227 (   1 propositional; 0-6 arity)
%            Number of functors    :  320 (   9 constant; 0-10 arity)
%            Number of variables   : 9606 (   9 sgn;9158   !; 448   ?)
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
%------------------------------------------------------------------------------
fof(cc1_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_xboole_0(B)
           => ( v1_waybel_0(B,A)
              & v2_waybel_0(B,A) ) ) ) ) )).

fof(cc6_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v7_struct_0(A)
          & v3_orders_2(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v16_waybel_0(A) ) ) ) )).

fof(cc9_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & ~ v2_struct_0(B)
        & l1_orders_2(B) )
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B))))
         => ( ( v1_funct_1(C)
              & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
              & v23_waybel_0(C,A,B) )
           => ( v1_funct_1(C)
              & v2_funct_1(C)
              & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
              & v5_orders_3(C,A,B) ) ) ) ) )).

fof(d11_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( r1_waybel_0(A,B,C)
            <=> ? [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                  & ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ( r1_orders_2(B,D,E)
                       => r2_hidden(k2_waybel_0(A,B,E),C) ) ) ) ) ) ) )).

fof(d12_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( r2_waybel_0(A,B,C)
            <=> ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ? [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                      & r1_orders_2(B,D,E)
                      & r2_hidden(k2_waybel_0(A,B,E),C) ) ) ) ) ) )).

fof(d13_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ( v10_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(B))
               => r1_waybel_0(A,B,a_3_0_waybel_0(A,B,C)) ) ) ) ) )).

fof(d14_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ( v11_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(B))
               => r1_waybel_0(A,B,a_3_1_waybel_0(A,B,C)) ) ) ) ) )).

fof(d15_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( C = k3_waybel_0(A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r2_hidden(D,C)
                    <=> ? [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                          & r1_orders_2(A,D,E)
                          & r2_hidden(E,B) ) ) ) ) ) ) ) )).

fof(d15_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( ( v1_orders_2(C)
                & v4_yellow_0(C,A)
                & m1_yellow_0(C,A) )
             => ( C = k5_yellow_0(A,B)
              <=> u1_struct_0(C) = B ) ) ) ) )).

fof(d16_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( C = k4_waybel_0(A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r2_hidden(D,C)
                    <=> ? [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                          & r1_orders_2(A,E,D)
                          & r2_hidden(E,B) ) ) ) ) ) ) ) )).

fof(d17_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k5_waybel_0(A,B) = k3_waybel_0(A,k6_domain_1(u1_struct_0(A),B)) ) ) )).

fof(d18_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_waybel_0(A,B) = k4_waybel_0(A,k6_domain_1(u1_struct_0(A),B)) ) ) )).

fof(d19_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v12_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ( r2_hidden(C,B)
                        & r1_orders_2(A,D,C) )
                     => r2_hidden(D,B) ) ) ) ) ) ) )).

fof(d1_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ~ ( r2_hidden(C,B)
                        & r2_hidden(D,B)
                        & ! [E] :
                            ( m1_subset_1(E,u1_struct_0(A))
                           => ~ ( r2_hidden(E,B)
                                & r1_orders_2(A,C,E)
                                & r1_orders_2(A,D,E) ) ) ) ) ) ) ) ) )).

fof(d20_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v13_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ( r2_hidden(C,B)
                        & r1_orders_2(A,C,D) )
                     => r2_hidden(D,B) ) ) ) ) ) ) )).

fof(d21_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v14_waybel_0(B,A)
          <=> ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & r2_hidden(C,B)
                & r2_lattice3(A,B,C) ) ) ) ) )).

fof(d22_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v15_waybel_0(B,A)
          <=> ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & r2_hidden(C,B)
                & r1_lattice3(A,B,C) ) ) ) ) )).

fof(d27_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => k11_waybel_0(A,B) = a_2_2_waybel_0(A,B) ) ) )).

fof(d28_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => k12_waybel_0(A,B) = a_2_3_waybel_0(A,B) ) ) )).

fof(d2_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v2_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ~ ( r2_hidden(C,B)
                        & r2_hidden(D,B)
                        & ! [E] :
                            ( m1_subset_1(E,u1_struct_0(A))
                           => ~ ( r2_hidden(E,B)
                                & r1_orders_2(A,E,C)
                                & r1_orders_2(A,E,D) ) ) ) ) ) ) ) ) )).

fof(d30_waybel_0,axiom,(
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
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( r3_waybel_0(A,B,C,D)
                  <=> ( r2_yellow_0(A,D)
                     => ( r2_yellow_0(B,k7_relset_1(u1_struct_0(A),u1_struct_0(B),C,D))
                        & k2_yellow_0(B,k7_relset_1(u1_struct_0(A),u1_struct_0(B),C,D)) = k3_funct_2(u1_struct_0(A),u1_struct_0(B),C,k2_yellow_0(A,D)) ) ) ) ) ) ) ) )).

fof(d31_waybel_0,axiom,(
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
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( r4_waybel_0(A,B,C,D)
                  <=> ( r1_yellow_0(A,D)
                     => ( r1_yellow_0(B,k7_relset_1(u1_struct_0(A),u1_struct_0(B),C,D))
                        & k1_yellow_0(B,k7_relset_1(u1_struct_0(A),u1_struct_0(B),C,D)) = k3_funct_2(u1_struct_0(A),u1_struct_0(B),C,k1_yellow_0(A,D)) ) ) ) ) ) ) ) )).

fof(d38_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_orders_2(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)))) )
             => ( ~ ( ~ v2_struct_0(A)
                    & ~ v2_struct_0(B)
                    & ~ ( v23_waybel_0(C,A,B)
                      <=> ( v2_funct_1(C)
                          & v5_orders_3(C,A,B)
                          & ? [D] :
                              ( v1_funct_1(D)
                              & v1_funct_2(D,u1_struct_0(B),u1_struct_0(A))
                              & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B),u1_struct_0(A))))
                              & D = k2_funct_1(C)
                              & v5_orders_3(D,B,A) ) ) ) )
                & ( ~ ( ~ v2_struct_0(A)
                      & ~ v2_struct_0(B) )
                 => ( v23_waybel_0(C,A,B)
                  <=> ( v2_struct_0(A)
                      & v2_struct_0(B) ) ) ) ) ) ) ) )).

fof(d3_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_yellow_0(B,A)
         => ( v3_waybel_0(B,A)
          <=> ! [C] :
                ( ( v2_waybel_0(C,B)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
               => ( r2_yellow_0(A,C)
                 => ( C = k1_xboole_0
                    | r2_hidden(k2_yellow_0(A,C),u1_struct_0(B)) ) ) ) ) ) ) )).

fof(d4_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_yellow_0(B,A)
         => ( v4_waybel_0(B,A)
          <=> ! [C] :
                ( ( v1_waybel_0(C,B)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
               => ( r1_yellow_0(A,C)
                 => ( C = k1_xboole_0
                    | r2_hidden(k1_yellow_0(A,C),u1_struct_0(B)) ) ) ) ) ) ) )).

fof(d5_orders_3,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_orders_2(B)
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
                         => ! [F] :
                              ( m1_subset_1(F,u1_struct_0(B))
                             => ! [G] :
                                  ( m1_subset_1(G,u1_struct_0(B))
                                 => ( ( F = k1_funct_1(C,D)
                                      & G = k1_funct_1(C,E) )
                                   => r1_orders_2(B,F,G) ) ) ) ) ) ) ) ) ) ) )).

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

fof(dt_k11_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k11_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k12_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k12_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k2_waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => m1_subset_1(k2_waybel_0(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k3_waybel_0,axiom,(
    ! [A,B] :
      ( ( l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k3_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k4_waybel_0,axiom,(
    ! [A,B] :
      ( ( l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k4_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k5_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k5_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k5_yellow_0,axiom,(
    ! [A,B] :
      ( ( l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v1_orders_2(k5_yellow_0(A,B))
        & v4_yellow_0(k5_yellow_0(A,B),A)
        & m1_yellow_0(k5_yellow_0(A,B),A) ) ) )).

fof(dt_k6_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k6_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_l1_waybel_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ! [B] :
          ( l1_waybel_0(B,A)
         => l1_orders_2(B) ) ) )).

fof(dt_o_1_2_waybel_0,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => m1_subset_1(o_1_2_waybel_0(A),A) ) )).

fof(dt_o_2_10_waybel_0,axiom,(
    ! [A,B] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & v1_waybel_0(B,A)
        & v12_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m2_subset_1(o_2_10_waybel_0(A,B),u1_struct_0(A),B) ) )).

fof(dt_o_2_11_waybel_0,axiom,(
    ! [A,B] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & v2_waybel_0(B,A)
        & v13_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m2_subset_1(o_2_11_waybel_0(A,B),u1_struct_0(A),B) ) )).

fof(dt_o_2_7_waybel_0,axiom,(
    ! [A,B] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & v12_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m2_subset_1(o_2_7_waybel_0(A,B),u1_struct_0(A),B) ) )).

fof(dt_o_2_8_waybel_0,axiom,(
    ! [A,B] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & v13_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m2_subset_1(o_2_8_waybel_0(A,B),u1_struct_0(A),B) ) )).

fof(dt_u1_waybel_0,axiom,(
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_waybel_0(B,A) )
     => ( v1_funct_1(u1_waybel_0(A,B))
        & v1_funct_2(u1_waybel_0(A,B),u1_struct_0(B),u1_struct_0(A))
        & m1_subset_1(u1_waybel_0(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B),u1_struct_0(A)))) ) ) )).

fof(existence_l1_waybel_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ? [B] : l1_waybel_0(B,A) ) )).

fof(fc10_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v12_waybel_0(k3_waybel_0(A,B),A) ) )).

fof(fc11_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v13_waybel_0(k4_waybel_0(A,B),A) ) )).

fof(fc12_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => v12_waybel_0(k5_waybel_0(A,B),A) ) )).

fof(fc13_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => v13_waybel_0(k6_waybel_0(A,B),A) ) )).

fof(fc15_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A)
        & v1_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v1_waybel_0(k3_waybel_0(A,B),A) ) )).

fof(fc16_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A)
        & v2_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v2_waybel_0(k4_waybel_0(A,B),A) ) )).

fof(fc17_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v5_orders_2(A)
        & v1_yellow_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k11_waybel_0(A,B)) ) )).

fof(fc18_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v5_orders_2(A)
        & v2_yellow_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k12_waybel_0(A,B)) ) )).

fof(fc19_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k11_waybel_0(A,B)) ) )).

fof(fc20_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k12_waybel_0(A,B)) ) )).

fof(fc21_waybel_0,axiom,(
    ! [A,B] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v1_waybel_0(k11_waybel_0(A,B),A) ) )).

fof(fc22_waybel_0,axiom,(
    ! [A,B] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v2_waybel_0(k12_waybel_0(A,B),A) ) )).

fof(fc6_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k3_waybel_0(A,B)) ) )).

fof(fc7_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k4_waybel_0(A,B)) ) )).

fof(fc8_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( ~ v1_xboole_0(k5_waybel_0(A,B))
        & v1_waybel_0(k5_waybel_0(A,B),A) ) ) )).

fof(fc9_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( ~ v1_xboole_0(k6_waybel_0(A,B))
        & v2_waybel_0(k6_waybel_0(A,B),A) ) ) )).

fof(fraenkel_a_2_0_waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_2_0_waybel_0(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & ? [E] :
                ( m1_subset_1(E,u1_struct_0(B))
                & r1_orders_2(B,D,E)
                & r2_hidden(E,C) ) ) ) ) )).

fof(fraenkel_a_2_1_waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_2_1_waybel_0(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & ? [E] :
                ( m1_subset_1(E,u1_struct_0(B))
                & r1_orders_2(B,E,D)
                & r2_hidden(E,C) ) ) ) ) )).

fof(fraenkel_a_2_2_waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_2_2_waybel_0(B,C))
      <=> ? [D] :
            ( v1_finset_1(D)
            & m1_subset_1(D,k1_zfmisc_1(C))
            & A = k1_yellow_0(B,D)
            & r1_yellow_0(B,D) ) ) ) )).

fof(fraenkel_a_2_3_waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_2_3_waybel_0(B,C))
      <=> ? [D] :
            ( v1_finset_1(D)
            & m1_subset_1(D,k1_zfmisc_1(C))
            & A = k2_yellow_0(B,D)
            & r2_yellow_0(B,D) ) ) ) )).

fof(fraenkel_a_2_5_waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r2_hidden(A,a_2_5_waybel_0(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & ? [E] :
                ( m1_subset_1(E,u1_struct_0(B))
                & r1_orders_2(B,D,E)
                & r2_hidden(E,k6_domain_1(u1_struct_0(B),C)) ) ) ) ) )).

fof(fraenkel_a_2_6_waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r2_hidden(A,a_2_6_waybel_0(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & ? [E] :
                ( m1_subset_1(E,u1_struct_0(B))
                & r1_orders_2(B,E,D)
                & r2_hidden(E,k6_domain_1(u1_struct_0(B),C)) ) ) ) ) )).

fof(fraenkel_a_3_0_waybel_0,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & ~ v2_struct_0(C)
        & l1_waybel_0(C,B)
        & m1_subset_1(D,u1_struct_0(C)) )
     => ( r2_hidden(A,a_3_0_waybel_0(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(C))
            & A = k2_waybel_0(B,C,E)
            & r1_orders_2(B,k2_waybel_0(B,C,D),k2_waybel_0(B,C,E)) ) ) ) )).

fof(fraenkel_a_3_1_waybel_0,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & l1_orders_2(B)
        & ~ v2_struct_0(C)
        & l1_waybel_0(C,B)
        & m1_subset_1(D,u1_struct_0(C)) )
     => ( r2_hidden(A,a_3_1_waybel_0(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(C))
            & A = k2_waybel_0(B,C,E)
            & r1_orders_2(B,k2_waybel_0(B,C,E),k2_waybel_0(B,C,D)) ) ) ) )).

fof(rc10_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v2_waybel_0(B,A)
          & v13_waybel_0(B,A) ) ) )).

fof(rc11_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v1_waybel_0(B,A)
          & v2_waybel_0(B,A)
          & v12_waybel_0(B,A)
          & v13_waybel_0(B,A) ) ) )).

fof(rc12_waybel_0,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v2_struct_0(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v5_orders_2(A)
      & v16_waybel_0(A) ) )).

fof(rc1_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v1_waybel_0(B,A)
          & v2_waybel_0(B,A) ) ) )).

fof(rc2_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v1_finset_1(B)
          & v1_waybel_0(B,A)
          & v2_waybel_0(B,A) ) ) )).

fof(rc7_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v12_waybel_0(B,A)
          & v13_waybel_0(B,A) ) ) )).

fof(rc8_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v12_waybel_0(B,A)
          & v13_waybel_0(B,A) ) ) )).

fof(rc9_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v1_waybel_0(B,A)
          & v12_waybel_0(B,A) ) ) )).

fof(redefinition_r1_funct_2,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(B)
        & ~ v1_xboole_0(D)
        & v1_funct_1(E)
        & v1_funct_2(E,A,B)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(F)
        & v1_funct_2(F,C,D)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(C,D))) )
     => ( r1_funct_2(A,B,C,D,E,F)
      <=> E = F ) ) )).

fof(reflexivity_r1_funct_2,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(B)
        & ~ v1_xboole_0(D)
        & v1_funct_1(E)
        & v1_funct_2(E,A,B)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(F)
        & v1_funct_2(F,C,D)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(C,D))) )
     => r1_funct_2(A,B,C,D,E,E) ) )).

fof(s1_waybel_0__e1_34_1__waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r1_waybel_0(A,B,a_3_0_waybel_0(A,B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(B))
               => ( r1_orders_2(B,D,E)
                 => r1_orders_2(A,k2_waybel_0(A,B,C),k2_waybel_0(A,B,E)) ) ) ) ) ) )).

fof(s1_waybel_0__e1_35_1__waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r1_waybel_0(A,B,a_3_1_waybel_0(A,B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(B))
               => ( r1_orders_2(B,D,E)
                 => r1_orders_2(A,k2_waybel_0(A,B,E),k2_waybel_0(A,B,C)) ) ) ) ) ) )).

fof(s2_finset_1__e10_2_1__waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(B)) )
     => ( ( v1_finset_1(C)
          & ? [D] :
              ( m1_subset_1(D,u1_struct_0(A))
              & r2_hidden(D,B)
              & r2_lattice3(A,k1_xboole_0,D) )
          & ! [E,F] :
              ( ( r2_hidden(E,C)
                & r1_tarski(F,C)
                & ? [G] :
                    ( m1_subset_1(G,u1_struct_0(A))
                    & r2_hidden(G,B)
                    & r2_lattice3(A,F,G) ) )
             => ? [H] :
                  ( m1_subset_1(H,u1_struct_0(A))
                  & r2_hidden(H,B)
                  & r2_lattice3(A,k2_xboole_0(F,k1_tarski(E)),H) ) ) )
       => ? [I] :
            ( m1_subset_1(I,u1_struct_0(A))
            & r2_hidden(I,B)
            & r2_lattice3(A,C,I) ) ) ) )).

fof(s2_finset_1__e10_3_1__waybel_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(B)) )
     => ( ( v1_finset_1(C)
          & ? [D] :
              ( m1_subset_1(D,u1_struct_0(A))
              & r2_hidden(D,B)
              & r1_lattice3(A,k1_xboole_0,D) )
          & ! [E,F] :
              ( ( r2_hidden(E,C)
                & r1_tarski(F,C)
                & ? [G] :
                    ( m1_subset_1(G,u1_struct_0(A))
                    & r2_hidden(G,B)
                    & r1_lattice3(A,F,G) ) )
             => ? [H] :
                  ( m1_subset_1(H,u1_struct_0(A))
                  & r2_hidden(H,B)
                  & r1_lattice3(A,k2_xboole_0(F,k1_tarski(E)),H) ) ) )
       => ? [I] :
            ( m1_subset_1(I,u1_struct_0(A))
            & r2_hidden(I,B)
            & r1_lattice3(A,C,I) ) ) ) )).

fof(symmetry_r1_funct_2,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(B)
        & ~ v1_xboole_0(D)
        & v1_funct_1(E)
        & v1_funct_2(E,A,B)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(F)
        & v1_funct_2(F,C,D)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(C,D))) )
     => ( r1_funct_2(A,B,C,D,E,F)
       => r1_funct_2(A,B,C,D,F,E) ) ) )).

fof(t10_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( r2_waybel_0(A,B,C)
            <=> ~ r1_waybel_0(A,B,k6_subset_1(u1_struct_0(A),C)) ) ) ) )).

fof(t11_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ( v10_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(B))
               => ? [D] :
                    ( m1_subset_1(D,u1_struct_0(B))
                    & ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ( r1_orders_2(B,D,E)
                         => r1_orders_2(A,k2_waybel_0(A,B,C),k2_waybel_0(A,B,E)) ) ) ) ) ) ) ) )).

fof(t12_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ( v11_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(B))
               => ? [D] :
                    ( m1_subset_1(D,u1_struct_0(B))
                    & ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ( r1_orders_2(B,D,E)
                         => r1_orders_2(A,k2_waybel_0(A,B,E),k2_waybel_0(A,B,C)) ) ) ) ) ) ) ) )).

fof(t13_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_orders_2(B)
         => ( g1_orders_2(u1_struct_0(A),u1_orders_2(A)) = g1_orders_2(u1_struct_0(B),u1_orders_2(B))
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ! [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                   => ( C = D
                     => ( k3_waybel_0(A,C) = k3_waybel_0(B,D)
                        & k4_waybel_0(A,C) = k4_waybel_0(B,D) ) ) ) ) ) ) ) )).

fof(t14_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => k3_waybel_0(A,B) = a_2_0_waybel_0(A,B) ) ) )).

fof(t15_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => k4_waybel_0(A,B) = a_2_1_waybel_0(A,B) ) ) )).

fof(t16_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r1_tarski(B,k3_waybel_0(A,B))
            & r1_tarski(B,k4_waybel_0(A,B)) ) ) ) )).

fof(t17_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(C,k5_waybel_0(A,B))
              <=> r1_orders_2(A,C,B) ) ) ) ) )).

fof(t18_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(C,k6_waybel_0(A,B))
              <=> r1_orders_2(A,B,C) ) ) ) ) )).

fof(t19_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k5_waybel_0(A,B) = k5_waybel_0(A,C)
               => B = C ) ) ) ) )).

fof(t1_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( ~ v1_xboole_0(B)
              & v1_waybel_0(B,A) )
          <=> ! [C] :
                ( ( v1_finset_1(C)
                  & m1_subset_1(C,k1_zfmisc_1(B)) )
               => ? [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                    & r2_hidden(D,B)
                    & r2_lattice3(A,C,D) ) ) ) ) ) )).

fof(t20_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k6_waybel_0(A,B) = k6_waybel_0(A,C)
               => B = C ) ) ) ) )).

fof(t21_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r1_orders_2(A,B,C)
               => r1_tarski(k5_waybel_0(A,B),k5_waybel_0(A,C)) ) ) ) ) )).

fof(t22_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r1_orders_2(A,B,C)
               => r1_tarski(k6_waybel_0(A,C),k6_waybel_0(A,B)) ) ) ) ) )).

fof(t23_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v12_waybel_0(B,A)
          <=> r1_tarski(k3_waybel_0(A,B),B) ) ) ) )).

fof(t24_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v13_waybel_0(B,A)
          <=> r1_tarski(k4_waybel_0(A,B),B) ) ) ) )).

fof(t25_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_orders_2(B)
         => ( g1_orders_2(u1_struct_0(A),u1_orders_2(A)) = g1_orders_2(u1_struct_0(B),u1_orders_2(B))
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ! [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                   => ( C = D
                     => ( ( v12_waybel_0(C,A)
                         => v12_waybel_0(D,B) )
                        & ( v13_waybel_0(C,A)
                         => v13_waybel_0(D,B) ) ) ) ) ) ) ) ) )).

fof(t26_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
         => ( ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ( r2_hidden(C,B)
                 => v12_waybel_0(C,A) ) )
           => ( v12_waybel_0(k5_setfam_1(u1_struct_0(A),B),A)
              & m1_subset_1(k5_setfam_1(u1_struct_0(A),B),k1_zfmisc_1(u1_struct_0(A))) ) ) ) ) )).

fof(t27_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( v12_waybel_0(B,A)
                  & v12_waybel_0(C,A) )
               => ( v12_waybel_0(k9_subset_1(u1_struct_0(A),B,C),A)
                  & v12_waybel_0(k4_subset_1(u1_struct_0(A),B,C),A) ) ) ) ) ) )).

fof(t28_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
         => ( ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ( r2_hidden(C,B)
                 => v13_waybel_0(C,A) ) )
           => ( v13_waybel_0(k5_setfam_1(u1_struct_0(A),B),A)
              & m1_subset_1(k5_setfam_1(u1_struct_0(A),B),k1_zfmisc_1(u1_struct_0(A))) ) ) ) ) )).

fof(t29_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( v13_waybel_0(B,A)
                  & v13_waybel_0(C,A) )
               => ( v13_waybel_0(k9_subset_1(u1_struct_0(A),B,C),A)
                  & v13_waybel_0(k4_subset_1(u1_struct_0(A),B,C),A) ) ) ) ) ) )).

fof(t2_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( ~ v1_xboole_0(B)
              & v2_waybel_0(B,A) )
          <=> ! [C] :
                ( ( v1_finset_1(C)
                  & m1_subset_1(C,k1_zfmisc_1(B)) )
               => ? [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                    & r2_hidden(D,B)
                    & r1_lattice3(A,C,D) ) ) ) ) ) )).

fof(t30_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_waybel_0(B,A)
          <=> v1_waybel_0(k3_waybel_0(A,B),A) ) ) ) )).

fof(t31_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_lattice3(A,B,C)
              <=> r2_lattice3(A,k3_waybel_0(A,B),C) ) ) ) ) )).

fof(t32_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r1_yellow_0(A,B)
          <=> r1_yellow_0(A,k3_waybel_0(A,B)) ) ) ) )).

fof(t33_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r1_yellow_0(A,B)
           => k1_yellow_0(A,B) = k1_yellow_0(A,k3_waybel_0(A,B)) ) ) ) )).

fof(t34_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r1_yellow_0(A,k5_waybel_0(A,B))
            & k1_yellow_0(A,k5_waybel_0(A,B)) = B ) ) ) )).

fof(t35_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v2_waybel_0(B,A)
          <=> v2_waybel_0(k4_waybel_0(A,B),A) ) ) ) )).

fof(t36_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r1_lattice3(A,B,C)
              <=> r1_lattice3(A,k4_waybel_0(A,B),C) ) ) ) ) )).

fof(t37_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r2_yellow_0(A,B)
          <=> r2_yellow_0(A,k4_waybel_0(A,B)) ) ) ) )).

fof(t38_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r2_yellow_0(A,B)
           => k2_yellow_0(A,B) = k2_yellow_0(A,k4_waybel_0(A,B)) ) ) ) )).

fof(t39_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r2_yellow_0(A,k6_waybel_0(A,B))
            & k2_yellow_0(A,k6_waybel_0(A,B)) = B ) ) ) )).

fof(t3_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_orders_2(B)
         => ( g1_orders_2(u1_struct_0(A),u1_orders_2(A)) = g1_orders_2(u1_struct_0(B),u1_orders_2(B))
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ! [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                   => ( ( C = D
                        & v1_waybel_0(C,A) )
                     => v1_waybel_0(D,B) ) ) ) ) ) ) )).

fof(t40_waybel_0,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v1_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ( r2_hidden(C,B)
                        & r2_hidden(D,B) )
                     => r2_hidden(k13_lattice3(A,C,D),B) ) ) ) ) ) ) )).

fof(t41_waybel_0,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v2_waybel_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ( r2_hidden(C,B)
                        & r2_hidden(D,B) )
                     => r2_hidden(k12_lattice3(A,C,D),B) ) ) ) ) ) ) )).

fof(t42_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v1_waybel_0(B,A)
          <=> ! [C] :
                ( ( v1_finset_1(C)
                  & m1_subset_1(C,k1_zfmisc_1(B)) )
               => ( C != k1_xboole_0
                 => r2_hidden(k1_yellow_0(A,C),B) ) ) ) ) ) )).

fof(t43_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v2_waybel_0(B,A)
          <=> ! [C] :
                ( ( v1_finset_1(C)
                  & m1_subset_1(C,k1_zfmisc_1(B)) )
               => ( C != k1_xboole_0
                 => r2_hidden(k2_yellow_0(A,C),B) ) ) ) ) ) )).

fof(t44_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ( ( v1_lattice3(A)
          | v2_lattice3(A) )
       => ! [B] :
            ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ( ( v12_waybel_0(B,A)
                    & v1_waybel_0(B,A)
                    & v12_waybel_0(C,A)
                    & v1_waybel_0(C,A) )
                 => v1_waybel_0(k9_subset_1(u1_struct_0(A),B,C),A) ) ) ) ) ) )).

fof(t45_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ( ( v1_lattice3(A)
          | v2_lattice3(A) )
       => ! [B] :
            ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ( ( v13_waybel_0(B,A)
                    & v2_waybel_0(B,A)
                    & v13_waybel_0(C,A)
                    & v2_waybel_0(C,A) )
                 => v2_waybel_0(k9_subset_1(u1_struct_0(A),B,C),A) ) ) ) ) ) )).

fof(t46_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
         => ( ( ! [C] :
                  ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
                 => ( r2_hidden(C,B)
                   => v1_waybel_0(C,A) ) )
              & ! [C] :
                  ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
                 => ! [D] :
                      ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                     => ~ ( r2_hidden(C,B)
                          & r2_hidden(D,B)
                          & ! [E] :
                              ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(A)))
                             => ~ ( r2_hidden(E,B)
                                  & r1_tarski(k4_subset_1(u1_struct_0(A),C,D),E) ) ) ) ) ) )
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ( C = k5_setfam_1(u1_struct_0(A),B)
                 => v1_waybel_0(C,A) ) ) ) ) ) )).

fof(t47_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
         => ( ( ! [C] :
                  ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
                 => ( r2_hidden(C,B)
                   => v2_waybel_0(C,A) ) )
              & ! [C] :
                  ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
                 => ! [D] :
                      ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                     => ~ ( r2_hidden(C,B)
                          & r2_hidden(D,B)
                          & ! [E] :
                              ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(A)))
                             => ~ ( r2_hidden(E,B)
                                  & r1_tarski(k4_subset_1(u1_struct_0(A),C,D),E) ) ) ) ) ) )
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ( C = k5_setfam_1(u1_struct_0(A),B)
                 => v2_waybel_0(C,A) ) ) ) ) ) )).

fof(t48_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v14_waybel_0(B,A)
          <=> ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & B = k5_waybel_0(A,C) ) ) ) ) )).

fof(t49_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v15_waybel_0(B,A)
          <=> ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & B = k6_waybel_0(A,C) ) ) ) ) )).

fof(t4_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( l1_orders_2(B)
         => ( g1_orders_2(u1_struct_0(A),u1_orders_2(A)) = g1_orders_2(u1_struct_0(B),u1_orders_2(B))
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ! [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                   => ( ( C = D
                        & v2_waybel_0(C,A) )
                     => v2_waybel_0(D,B) ) ) ) ) ) ) )).

fof(t50_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r1_tarski(B,k11_waybel_0(A,B))
            & r1_tarski(B,k12_waybel_0(A,B)) ) ) ) )).

fof(t51_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r1_yellow_0(A,D) ) )
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ~ ( r2_hidden(D,C)
                          & ! [E] :
                              ( ( v1_finset_1(E)
                                & m1_subset_1(E,k1_zfmisc_1(B)) )
                             => ~ ( r1_yellow_0(A,E)
                                  & D = k1_yellow_0(A,E) ) ) ) )
                  & ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_hidden(k1_yellow_0(A,D),C) ) ) )
               => v1_waybel_0(C,A) ) ) ) ) )).

fof(t52_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r1_yellow_0(A,D) ) )
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ~ ( r2_hidden(D,C)
                          & ! [E] :
                              ( ( v1_finset_1(E)
                                & m1_subset_1(E,k1_zfmisc_1(B)) )
                             => ~ ( r1_yellow_0(A,E)
                                  & D = k1_yellow_0(A,E) ) ) ) )
                  & ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_hidden(k1_yellow_0(A,D),C) ) ) )
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r2_lattice3(A,B,D)
                    <=> r2_lattice3(A,C,D) ) ) ) ) ) ) )).

fof(t53_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r1_yellow_0(A,D) ) )
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ~ ( r2_hidden(D,C)
                          & ! [E] :
                              ( ( v1_finset_1(E)
                                & m1_subset_1(E,k1_zfmisc_1(B)) )
                             => ~ ( r1_yellow_0(A,E)
                                  & D = k1_yellow_0(A,E) ) ) ) )
                  & ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_hidden(k1_yellow_0(A,D),C) ) ) )
               => ( r1_yellow_0(A,B)
                <=> r1_yellow_0(A,C) ) ) ) ) ) )).

fof(t54_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r1_yellow_0(A,D) ) )
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ~ ( r2_hidden(D,C)
                          & ! [E] :
                              ( ( v1_finset_1(E)
                                & m1_subset_1(E,k1_zfmisc_1(B)) )
                             => ~ ( r1_yellow_0(A,E)
                                  & D = k1_yellow_0(A,E) ) ) ) )
                  & ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_hidden(k1_yellow_0(A,D),C) ) )
                  & r1_yellow_0(A,B) )
               => k1_yellow_0(A,C) = k1_yellow_0(A,B) ) ) ) ) )).

fof(t55_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( r1_yellow_0(A,B)
              | v3_lattice3(A) )
           => k1_yellow_0(A,B) = k1_yellow_0(A,k11_waybel_0(A,B)) ) ) ) )).

fof(t56_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_yellow_0(A,D) ) )
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ~ ( r2_hidden(D,C)
                          & ! [E] :
                              ( ( v1_finset_1(E)
                                & m1_subset_1(E,k1_zfmisc_1(B)) )
                             => ~ ( r2_yellow_0(A,E)
                                  & D = k2_yellow_0(A,E) ) ) ) )
                  & ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_hidden(k2_yellow_0(A,D),C) ) ) )
               => v2_waybel_0(C,A) ) ) ) ) )).

fof(t57_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_yellow_0(A,D) ) )
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ~ ( r2_hidden(D,C)
                          & ! [E] :
                              ( ( v1_finset_1(E)
                                & m1_subset_1(E,k1_zfmisc_1(B)) )
                             => ~ ( r2_yellow_0(A,E)
                                  & D = k2_yellow_0(A,E) ) ) ) )
                  & ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_hidden(k2_yellow_0(A,D),C) ) ) )
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r1_lattice3(A,B,D)
                    <=> r1_lattice3(A,C,D) ) ) ) ) ) ) )).

fof(t58_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_yellow_0(A,D) ) )
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ~ ( r2_hidden(D,C)
                          & ! [E] :
                              ( ( v1_finset_1(E)
                                & m1_subset_1(E,k1_zfmisc_1(B)) )
                             => ~ ( r2_yellow_0(A,E)
                                  & D = k2_yellow_0(A,E) ) ) ) )
                  & ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_hidden(k2_yellow_0(A,D),C) ) ) )
               => ( r2_yellow_0(A,B)
                <=> r2_yellow_0(A,C) ) ) ) ) ) )).

fof(t59_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_yellow_0(A,D) ) )
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ~ ( r2_hidden(D,C)
                          & ! [E] :
                              ( ( v1_finset_1(E)
                                & m1_subset_1(E,k1_zfmisc_1(B)) )
                             => ~ ( r2_yellow_0(A,E)
                                  & D = k2_yellow_0(A,E) ) ) ) )
                  & ! [D] :
                      ( ( v1_finset_1(D)
                        & m1_subset_1(D,k1_zfmisc_1(B)) )
                     => ( D != k1_xboole_0
                       => r2_hidden(k2_yellow_0(A,D),C) ) )
                  & r2_yellow_0(A,B) )
               => k2_yellow_0(A,C) = k2_yellow_0(A,B) ) ) ) ) )).

fof(t5_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( v1_waybel_0(k6_domain_1(u1_struct_0(A),B),A)
            & v2_waybel_0(k6_domain_1(u1_struct_0(A),B),A) ) ) ) )).

fof(t60_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( r2_yellow_0(A,B)
              | v3_lattice3(A) )
           => k2_yellow_0(A,B) = k2_yellow_0(A,k12_waybel_0(A,B)) ) ) ) )).

fof(t61_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r1_tarski(B,k3_waybel_0(A,k11_waybel_0(A,B)))
            & ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & v1_waybel_0(C,A)
                  & v12_waybel_0(C,A)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
               => ( r1_tarski(B,C)
                 => r1_tarski(k3_waybel_0(A,k11_waybel_0(A,B)),C) ) ) ) ) ) )).

fof(t62_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r1_tarski(B,k4_waybel_0(A,k12_waybel_0(A,B)))
            & ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & v2_waybel_0(C,A)
                  & v13_waybel_0(C,A)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
               => ( r1_tarski(B,C)
                 => r1_tarski(k4_waybel_0(A,k12_waybel_0(A,B)),C) ) ) ) ) ) )).

fof(t63_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( ~ v1_xboole_0(B)
              & v2_waybel_0(B,A)
              & v13_waybel_0(B,A)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
          <=> v5_yellow_0(k5_yellow_0(A,B),A) ) ) ) )).

fof(t64_waybel_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( ~ v1_xboole_0(B)
              & v1_waybel_0(B,A)
              & v12_waybel_0(B,A)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
          <=> v6_yellow_0(k5_yellow_0(A,B),A) ) ) ) )).

fof(t65_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_orders_2(B) )
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & l1_orders_2(C) )
             => ! [D] :
                  ( ( ~ v2_struct_0(D)
                    & l1_orders_2(D) )
                 => ( ( g1_orders_2(u1_struct_0(A),u1_orders_2(A)) = g1_orders_2(u1_struct_0(C),u1_orders_2(C))
                      & g1_orders_2(u1_struct_0(B),u1_orders_2(B)) = g1_orders_2(u1_struct_0(D),u1_orders_2(D)) )
                   => ! [E] :
                        ( ( v1_funct_1(E)
                          & v1_funct_2(E,u1_struct_0(A),u1_struct_0(B))
                          & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)))) )
                       => ! [F] :
                            ( ( v1_funct_1(F)
                              & v1_funct_2(F,u1_struct_0(C),u1_struct_0(D))
                              & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(C),u1_struct_0(D)))) )
                           => ( r1_funct_2(u1_struct_0(A),u1_struct_0(B),u1_struct_0(C),u1_struct_0(D),E,F)
                             => ! [G] :
                                  ( m1_subset_1(G,k1_zfmisc_1(u1_struct_0(A)))
                                 => ! [H] :
                                      ( m1_subset_1(H,k1_zfmisc_1(u1_struct_0(C)))
                                     => ( G = H
                                       => ( ( r4_waybel_0(A,B,E,G)
                                           => r4_waybel_0(C,D,F,H) )
                                          & ( r3_waybel_0(A,B,E,G)
                                           => r3_waybel_0(C,D,F,H) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

fof(t66_waybel_0,axiom,(
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
             => ( v23_waybel_0(C,A,B)
              <=> ( v2_funct_1(C)
                  & k2_relset_1(u1_struct_0(A),u1_struct_0(B),C) = u1_struct_0(B)
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ( r1_orders_2(A,D,E)
                          <=> r1_orders_2(B,k3_funct_2(u1_struct_0(A),u1_struct_0(B),C,D),k3_funct_2(u1_struct_0(A),u1_struct_0(B),C,E)) ) ) ) ) ) ) ) ) )).

fof(t67_waybel_0,conjecture,(
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
             => ( v23_waybel_0(C,A,B)
               => ( v1_funct_1(k2_funct_1(C))
                  & v1_funct_2(k2_funct_1(C),u1_struct_0(B),u1_struct_0(A))
                  & m1_subset_1(k2_funct_1(C),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B),u1_struct_0(A))))
                  & k2_relat_1(k2_funct_1(C)) = u1_struct_0(A) ) ) ) ) ) )).

fof(t6_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_yellow_0(B,A)
            & v3_waybel_0(B,A)
            & m1_yellow_0(B,A) )
         => ! [C] :
              ( ( v2_waybel_0(C,B)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ( r2_yellow_0(A,C)
               => ( C = k1_xboole_0
                  | ( r2_yellow_0(B,C)
                    & k2_yellow_0(B,C) = k2_yellow_0(A,C) ) ) ) ) ) ) )).

fof(t7_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_yellow_0(B,A)
            & v4_waybel_0(B,A)
            & m1_yellow_0(B,A) )
         => ! [C] :
              ( ( v1_waybel_0(C,B)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ( r1_yellow_0(A,C)
               => ( C = k1_xboole_0
                  | ( r1_yellow_0(B,C)
                    & k1_yellow_0(B,C) = k1_yellow_0(A,C) ) ) ) ) ) ) )).

fof(t8_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C,D] :
              ( r1_tarski(C,D)
             => ( ( r1_waybel_0(A,B,C)
                 => r1_waybel_0(A,B,D) )
                & ( r2_waybel_0(A,B,C)
                 => r2_waybel_0(A,B,D) ) ) ) ) ) )).

fof(t9_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( r1_waybel_0(A,B,C)
            <=> ~ r2_waybel_0(A,B,k6_subset_1(u1_struct_0(A),C)) ) ) ) )).

%------------------------------------------------------------------------------
