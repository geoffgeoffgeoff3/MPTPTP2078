%------------------------------------------------------------------------------
% File     : MPT2025+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : waybel_9__t24_waybel_9.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 4410 ( 467 unit)
%            Number of atoms       : 27455 (2859 equality)
%            Maximal formula depth :   35 (   8 average)
%            Number of connectives : 27275 (4230   ~; 166   |;12817   &)
%                                         ( 968 <=>;9094  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :  315 (   1 propositional; 0-6 arity)
%            Number of functors    :  434 (   9 constant; 0-10 arity)
%            Number of variables   : 12932 (   9 sgn;12281   !; 651   ?)
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

fof(d5_yellow_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( v1_relat_1(B)
         => k4_yellow_2(A,B) = k1_yellow_0(A,k2_relat_1(B)) ) ) )).

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

fof(d7_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => k1_waybel_0(A,B) = u1_waybel_0(A,B) ) ) )).

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

fof(dt_o_2_4_waybel_9,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A) )
     => m1_subset_1(o_2_4_waybel_9(A,B),u1_struct_0(B)) ) )).

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

fof(rc4_waybel_3,axiom,(
    ? [A] :
      ( l1_pre_topc(A)
      & ~ v2_struct_0(A)
      & v2_pre_topc(A)
      & v8_pre_topc(A)
      & v1_compts_1(A) ) )).

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

fof(t24_waybel_9,conjecture,(
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
