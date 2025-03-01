%------------------------------------------------------------------------------
% File     : MPT1981+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : waybel_7__t30_waybel_7.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 4204 ( 466 unit)
%            Number of atoms       : 25645 (2764 equality)
%            Maximal formula depth :   35 (   8 average)
%            Number of connectives : 25418 (3977   ~; 164   |;11754   &)
%                                         ( 918 <=>;8605  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :  293 (   1 propositional; 0-6 arity)
%            Number of functors    :  395 (   9 constant; 0-10 arity)
%            Number of variables   : 12287 (   9 sgn;11661   !; 626   ?)
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
%------------------------------------------------------------------------------
fof(cc10_waybel_1,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v11_waybel_1(A) )
       => ( ~ v2_struct_0(A)
          & v9_waybel_1(A) ) ) ) )).

fof(cc1_waybel_7,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( ~ v1_xboole_0(B)
              & v2_waybel_0(B,A)
              & v13_waybel_0(B,A)
              & v3_waybel_7(B,A) )
           => ( ~ v1_xboole_0(B)
              & v1_subset_1(B,u1_struct_0(A))
              & v2_waybel_0(B,A)
              & v13_waybel_0(B,A) ) ) ) ) )).

fof(cc1_yellow_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v2_yellow_0(A)
          & v24_waybel_0(A)
          & v25_waybel_0(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v3_lattice3(A) ) ) ) )).

fof(cc4_waybel_4,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v1_yellow_0(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_waybel_3(A) )
       => ( v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v1_yellow_0(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v2_waybel_2(A) ) ) ) )).

fof(cc5_waybel_1,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v9_waybel_1(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A) ) ) ) )).

fof(cc6_waybel_1,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v9_waybel_1(A) )
       => ( ~ v2_struct_0(A)
          & v2_waybel_1(A) ) ) ) )).

fof(cc7_waybel_1,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v9_waybel_1(A) )
       => ( ~ v2_struct_0(A)
          & v2_yellow_0(A) ) ) ) )).

fof(cc8_waybel_1,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v11_waybel_1(A) )
       => ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_yellow_0(A)
          & v2_waybel_1(A)
          & v10_waybel_1(A) ) ) ) )).

fof(cc9_waybel_1,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_yellow_0(A)
          & v2_waybel_1(A)
          & v10_waybel_1(A) )
       => ( ~ v2_struct_0(A)
          & v11_waybel_1(A) ) ) ) )).

fof(d10_struct_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ( v7_struct_0(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => B = C ) ) ) ) )).

fof(d1_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v1_waybel_7(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ~ ( r2_hidden(k12_lattice3(A,C,D),B)
                        & ~ r2_hidden(C,B)
                        & ~ r2_hidden(D,B) ) ) ) ) ) ) )).

fof(d21_waybel_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k6_waybel_1(A,B,C) = k3_funct_2(u1_struct_0(A),u1_struct_0(A),k5_waybel_1(A,B),C) ) ) ) )).

fof(d22_waybel_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k7_waybel_1(A,B) = k6_waybel_1(A,B,k3_yellow_0(A)) ) ) )).

fof(d23_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => k7_waybel_0(A) = a_1_0_waybel_0(A) ) )).

fof(d23_waybel_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r6_waybel_1(A,B,C)
              <=> ( k10_lattice3(A,B,C) = k4_yellow_0(A)
                  & k11_lattice3(A,B,C) = k3_yellow_0(A) ) ) ) ) ) )).

fof(d2_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v2_waybel_7(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ~ ( r2_hidden(k13_lattice3(A,C,D),B)
                        & ~ r2_hidden(C,B)
                        & ~ r2_hidden(D,B) ) ) ) ) ) ) )).

fof(d3_waybel_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ( v2_waybel_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k11_lattice3(A,B,k10_lattice3(A,C,D)) = k10_lattice3(A,k11_lattice3(A,B,C),k11_lattice3(A,B,D)) ) ) ) ) ) )).

fof(d3_waybel_7,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v3_waybel_7(B,A)
          <=> ( v1_subset_1(B,u1_struct_0(A))
              & ! [C] :
                  ( ( ~ v1_xboole_0(C)
                    & v2_waybel_0(C,A)
                    & v13_waybel_0(C,A)
                    & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
                 => ~ ( r1_tarski(B,C)
                      & B != C
                      & C != u1_struct_0(A) ) ) ) ) ) ) )).

fof(d6_waybel_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( v5_waybel_6(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ~ ( r1_orders_2(A,k11_lattice3(A,C,D),B)
                        & ~ r1_orders_2(A,C,B)
                        & ~ r1_orders_2(A,D,B) ) ) ) ) ) ) )).

fof(d7_waybel_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( B = k4_waybel_6(A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( r2_hidden(C,B)
                <=> v5_waybel_6(C,A) ) ) ) ) ) )).

fof(dt_k4_waybel_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => m1_subset_1(k4_waybel_6(A),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k5_waybel_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( v1_funct_1(k5_waybel_1(A,B))
        & v1_funct_2(k5_waybel_1(A,B),u1_struct_0(A),u1_struct_0(A))
        & m1_subset_1(k5_waybel_1(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) ) ) )).

fof(dt_k6_waybel_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k6_waybel_1(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k7_waybel_0,axiom,(
    $true )).

fof(dt_k7_waybel_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k7_waybel_1(A,B),u1_struct_0(A)) ) )).

fof(dt_o_1_0_waybel_7,axiom,(
    ! [A] : m1_subset_1(o_1_0_waybel_7(A),A) )).

fof(fc10_yellow_7,axiom,(
    ! [A] :
      ( ( v2_yellow_0(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v1_yellow_0(k7_lattice3(A)) ) ) )).

fof(fc1_waybel_1,axiom,(
    ! [A] :
      ( v1_orders_2(k3_yellow_1(A))
      & v2_waybel_1(k3_yellow_1(A)) ) )).

fof(fc1_waybel_7,axiom,(
    ! [A] :
      ( v1_orders_2(k3_yellow_1(A))
      & v11_waybel_1(k3_yellow_1(A)) ) )).

fof(fc1_yellow_3,axiom,(
    ! [A,B] :
      ( ( l1_orders_2(A)
        & v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v1_xboole_0(k3_waybel_0(A,B)) ) )).

fof(fc1_yellow_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v3_orders_2(k7_lattice3(A)) ) ) )).

fof(fc2_waybel_7,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ( ~ v7_struct_0(k3_yellow_1(A))
        & v1_orders_2(k3_yellow_1(A)) ) ) )).

fof(fc2_yellow_3,axiom,(
    ! [A,B] :
      ( ( l1_orders_2(A)
        & v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v1_xboole_0(k4_waybel_0(A,B)) ) )).

fof(fc2_yellow_7,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v4_orders_2(k7_lattice3(A)) ) ) )).

fof(fc3_yellow_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ~ v1_xboole_0(k7_waybel_0(A)) ) )).

fof(fc3_yellow_7,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v5_orders_2(k7_lattice3(A)) ) ) )).

fof(fc4_yellow_2,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k2_yellow_1(k7_waybel_0(A)))
        & v2_lattice3(k2_yellow_1(k7_waybel_0(A))) ) ) )).

fof(fc4_yellow_7,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v16_waybel_0(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v16_waybel_0(k7_lattice3(A)) ) ) )).

fof(fc5_yellow_2,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k2_yellow_1(k7_waybel_0(A)))
        & v1_lattice3(k2_yellow_1(k7_waybel_0(A))) ) ) )).

fof(fc5_yellow_7,axiom,(
    ! [A] :
      ( ( v2_lattice3(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v1_lattice3(k7_lattice3(A)) ) ) )).

fof(fc6_yellow_2,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v1_yellow_0(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k2_yellow_1(k7_waybel_0(A)))
        & v3_lattice3(k2_yellow_1(k7_waybel_0(A))) ) ) )).

fof(fc6_yellow_7,axiom,(
    ! [A] :
      ( ( v1_lattice3(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v2_lattice3(k7_lattice3(A)) ) ) )).

fof(fc7_yellow_7,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_lattice3(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v3_lattice3(k7_lattice3(A)) ) ) )).

fof(fc8_yellow_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v2_waybel_1(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v2_waybel_1(k7_lattice3(A)) ) ) )).

fof(fc9_waybel_1,axiom,(
    ! [A] :
      ( v1_orders_2(k3_yellow_1(A))
      & v10_waybel_1(k3_yellow_1(A)) ) )).

fof(fc9_yellow_7,axiom,(
    ! [A] :
      ( ( v1_yellow_0(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(k7_lattice3(A))
        & v2_yellow_0(k7_lattice3(A)) ) ) )).

fof(fraenkel_a_1_0_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & l1_orders_2(B) )
     => ( r2_hidden(A,a_1_0_waybel_0(B))
      <=> ? [C] :
            ( ~ v1_xboole_0(C)
            & v1_waybel_0(C,B)
            & v12_waybel_0(C,B)
            & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
            & A = C ) ) ) )).

fof(fraenkel_a_3_0_waybel_7,axiom,(
    ! [A,B,C,D] :
      ( ( v3_orders_2(B)
        & v4_orders_2(B)
        & v5_orders_2(B)
        & v2_waybel_1(B)
        & v1_lattice3(B)
        & v2_lattice3(B)
        & l1_orders_2(B)
        & ~ v1_xboole_0(C)
        & v1_waybel_0(C,B)
        & v12_waybel_0(C,B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
        & ~ v1_xboole_0(D)
        & v2_waybel_0(D,B)
        & v13_waybel_0(D,B)
        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_3_0_waybel_7(B,C,D))
      <=> ? [E] :
            ( ~ v1_xboole_0(E)
            & v1_waybel_0(E,B)
            & v12_waybel_0(E,B)
            & m1_subset_1(E,k1_zfmisc_1(u1_struct_0(B)))
            & A = E
            & r1_tarski(C,E)
            & r1_subset_1(E,D) ) ) ) )).

fof(l29_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ~ ( r2_hidden(D,k4_waybel_0(A,k12_waybel_0(A,k4_subset_1(u1_struct_0(A),B,C))))
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ~ ( r2_hidden(E,B)
                              & r1_orders_2(A,k12_lattice3(A,E,k2_yellow_0(A,C)),D) ) ) ) ) ) ) ) )).

fof(l31_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ~ ( r2_hidden(D,k3_waybel_0(A,k11_waybel_0(A,k4_subset_1(u1_struct_0(A),B,C))))
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ~ ( r2_hidden(E,B)
                              & r3_orders_2(A,D,k13_lattice3(A,E,k1_yellow_0(A,C))) ) ) ) ) ) ) ) )).

fof(rc1_waybel_7,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v2_struct_0(A)
      & ~ v7_struct_0(A)
      & v1_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v5_orders_2(A)
      & v11_waybel_1(A)
      & ~ v1_yellow_3(A)
      & v1_lattice3(A)
      & v2_lattice3(A) ) )).

fof(rc2_waybel_7,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & ~ v7_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v1_subset_1(B,u1_struct_0(A))
          & v2_waybel_0(B,A)
          & v13_waybel_0(B,A) ) ) )).

fof(rc3_waybel_7,axiom,(
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
          & v12_waybel_0(B,A)
          & v1_waybel_7(B,A) ) ) )).

fof(rc4_waybel_1,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v2_struct_0(A)
      & v1_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v5_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v11_waybel_1(A) ) )).

fof(rc4_waybel_7,axiom,(
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
          & v2_waybel_0(B,A)
          & v13_waybel_0(B,A)
          & v2_waybel_7(B,A) ) ) )).

fof(rc5_waybel_1,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v2_struct_0(A)
      & v1_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v5_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v9_waybel_1(A) ) )).

fof(rc5_waybel_6,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v5_orders_2(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( m1_subset_1(B,u1_struct_0(A))
          & v5_waybel_6(B,A) ) ) )).

fof(s2_finset_1__e5_21_1__waybel_7,axiom,(
    ! [A,B,C] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & v1_waybel_0(B,A)
        & v12_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v1_xboole_0(C)
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => ( ( v1_finset_1(C)
          & ~ ( ~ v1_xboole_0(k1_xboole_0)
              & r2_hidden(k2_yellow_0(A,k1_xboole_0),B)
              & ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ~ ( r2_hidden(D,k1_xboole_0)
                      & r2_hidden(D,B) ) ) )
          & ! [E,F] :
              ( ( r2_hidden(E,C)
                & r1_tarski(F,C)
                & ~ ( ~ v1_xboole_0(F)
                    & r2_hidden(k2_yellow_0(A,F),B)
                    & ! [G] :
                        ( m1_subset_1(G,u1_struct_0(A))
                       => ~ ( r2_hidden(G,F)
                            & r2_hidden(G,B) ) ) ) )
             => ~ ( ~ v1_xboole_0(k2_xboole_0(F,k1_tarski(E)))
                  & r2_hidden(k2_yellow_0(A,k2_xboole_0(F,k1_tarski(E))),B)
                  & ! [H] :
                      ( m1_subset_1(H,u1_struct_0(A))
                     => ~ ( r2_hidden(H,k2_xboole_0(F,k1_tarski(E)))
                          & r2_hidden(H,B) ) ) ) ) )
       => ~ ( ~ v1_xboole_0(C)
            & r2_hidden(k2_yellow_0(A,C),B)
            & ! [I] :
                ( m1_subset_1(I,u1_struct_0(A))
               => ~ ( r2_hidden(I,C)
                    & r2_hidden(I,B) ) ) ) ) ) )).

fof(s2_finset_1__e5_25_1__waybel_7,axiom,(
    ! [A,B,C] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & v2_waybel_0(B,A)
        & v13_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v1_xboole_0(C)
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => ( ( v1_finset_1(C)
          & ~ ( ~ v1_xboole_0(k1_xboole_0)
              & r2_hidden(k1_yellow_0(A,k1_xboole_0),B)
              & ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ~ ( r2_hidden(D,k1_xboole_0)
                      & r2_hidden(D,B) ) ) )
          & ! [E,F] :
              ( ( r2_hidden(E,C)
                & r1_tarski(F,C)
                & ~ ( ~ v1_xboole_0(F)
                    & r2_hidden(k1_yellow_0(A,F),B)
                    & ! [G] :
                        ( m1_subset_1(G,u1_struct_0(A))
                       => ~ ( r2_hidden(G,F)
                            & r2_hidden(G,B) ) ) ) )
             => ~ ( ~ v1_xboole_0(k2_xboole_0(F,k1_tarski(E)))
                  & r2_hidden(k1_yellow_0(A,k2_xboole_0(F,k1_tarski(E))),B)
                  & ! [H] :
                      ( m1_subset_1(H,u1_struct_0(A))
                     => ~ ( r2_hidden(H,k2_xboole_0(F,k1_tarski(E)))
                          & r2_hidden(H,B) ) ) ) ) )
       => ~ ( ~ v1_xboole_0(C)
            & r2_hidden(k1_yellow_0(A,C),B)
            & ! [I] :
                ( m1_subset_1(I,u1_struct_0(A))
               => ~ ( r2_hidden(I,C)
                    & r2_hidden(I,B) ) ) ) ) ) )).

fof(t10_waybel_7,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(A))))
     => ( v12_waybel_0(B,k3_yellow_1(A))
      <=> ! [C,D] :
            ( ( r1_tarski(C,D)
              & r2_hidden(D,B) )
           => r2_hidden(C,B) ) ) ) )).

fof(t11_waybel_7,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(A))))
     => ( v13_waybel_0(B,k3_yellow_1(A))
      <=> ! [C,D] :
            ( ( r1_tarski(C,D)
              & r1_tarski(D,A)
              & r2_hidden(C,B) )
           => r2_hidden(D,B) ) ) ) )).

fof(t11_yellow_5,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v11_waybel_1(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r6_waybel_1(A,B,C)
              <=> C = k7_waybel_1(A,B) ) ) ) ) )).

fof(t12_waybel_7,axiom,(
    ! [A,B] :
      ( ( v12_waybel_0(B,k3_yellow_1(A))
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) )
     => ( v1_waybel_0(B,k3_yellow_1(A))
      <=> ! [C,D] :
            ( ( r2_hidden(C,B)
              & r2_hidden(D,B) )
           => r2_hidden(k2_xboole_0(C,D),B) ) ) ) )).

fof(t13_waybel_7,axiom,(
    ! [A,B] :
      ( ( v13_waybel_0(B,k3_yellow_1(A))
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) )
     => ( v2_waybel_0(B,k3_yellow_1(A))
      <=> ! [C,D] :
            ( ( r2_hidden(C,B)
              & r2_hidden(D,B) )
           => r2_hidden(k3_xboole_0(C,D),B) ) ) ) )).

fof(t14_waybel_7,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(B)
        & v12_waybel_0(B,k3_yellow_1(A))
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) )
     => ( v1_waybel_0(B,k3_yellow_1(A))
      <=> ! [C] :
            ( ( v1_finset_1(C)
              & m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(A))) )
           => ( r1_tarski(C,B)
             => r2_hidden(k5_setfam_1(A,C),B) ) ) ) ) )).

fof(t15_waybel_7,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(B)
        & v13_waybel_0(B,k3_yellow_1(A))
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) )
     => ( v2_waybel_0(B,k3_yellow_1(A))
      <=> ! [C] :
            ( ( v1_finset_1(C)
              & m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(A))) )
           => ( r1_tarski(C,B)
             => r2_hidden(k8_setfam_1(A,C),B) ) ) ) ) )).

fof(t16_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v1_waybel_7(B,A)
          <=> ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & v1_finset_1(C)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
               => ~ ( r2_hidden(k2_yellow_0(A,C),B)
                    & ! [D] :
                        ( m1_subset_1(D,u1_struct_0(A))
                       => ~ ( r2_hidden(D,C)
                            & r2_hidden(D,B) ) ) ) ) ) ) ) )).

fof(t177_orders_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ( ( r1_tarski(B,A)
              & v6_ordinal1(B) )
           => ( B = k1_xboole_0
              | r2_hidden(k3_tarski(B),A) ) )
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C] :
                  ~ ( r2_hidden(C,A)
                    & C != B
                    & r1_tarski(B,C) ) ) ) )).

fof(t17_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( v3_orders_2(B)
            & v4_orders_2(B)
            & v5_orders_2(B)
            & v1_lattice3(B)
            & v2_lattice3(B)
            & l1_orders_2(B) )
         => ( g1_orders_2(u1_struct_0(A),u1_orders_2(A)) = g1_orders_2(u1_struct_0(B),u1_orders_2(B))
           => ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & v1_waybel_0(C,A)
                  & v12_waybel_0(C,A)
                  & v1_waybel_7(C,A)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
               => ( ~ v1_xboole_0(C)
                  & v1_waybel_0(C,B)
                  & v12_waybel_0(C,B)
                  & v1_waybel_7(C,B)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) ) ) ) ) ) )).

fof(t18_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v2_waybel_7(B,A)
          <=> ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & v1_finset_1(C)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
               => ~ ( r2_hidden(k1_yellow_0(A,C),B)
                    & ! [D] :
                        ( m1_subset_1(D,u1_struct_0(A))
                       => ~ ( r2_hidden(D,C)
                            & r2_hidden(D,B) ) ) ) ) ) ) ) )).

fof(t19_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( v3_orders_2(B)
            & v4_orders_2(B)
            & v5_orders_2(B)
            & v1_lattice3(B)
            & v2_lattice3(B)
            & l1_orders_2(B) )
         => ( g1_orders_2(u1_struct_0(A),u1_orders_2(A)) = g1_orders_2(u1_struct_0(B),u1_orders_2(B))
           => ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & v2_waybel_0(C,A)
                  & v13_waybel_0(C,A)
                  & v2_waybel_7(C,A)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
               => ( ~ v1_xboole_0(C)
                  & v2_waybel_0(C,B)
                  & v13_waybel_0(C,B)
                  & v2_waybel_7(C,B)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) ) ) ) ) ) )).

fof(t20_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & v1_waybel_7(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
        <=> ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,k7_lattice3(A))
            & v13_waybel_0(B,k7_lattice3(A))
            & v2_waybel_7(B,k7_lattice3(A))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k7_lattice3(A)))) ) ) ) )).

fof(t21_waybel_4,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_yellow_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => r2_hidden(k3_yellow_0(A),B) ) ) )).

fof(t21_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & v2_waybel_7(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
        <=> ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,k7_lattice3(A))
            & v12_waybel_0(B,k7_lattice3(A))
            & v1_waybel_7(B,k7_lattice3(A))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k7_lattice3(A)))) ) ) ) )).

fof(t21_yellow_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k12_lattice3(A,B,C) = k13_lattice3(k7_lattice3(A),k8_lattice3(A,B),k8_lattice3(A,C)) ) ) ) )).

fof(t22_waybel_4,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => r2_hidden(k4_yellow_0(A),B) ) ) )).

fof(t22_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v1_waybel_7(B,A)
          <=> ( ( ~ v1_xboole_0(k3_subset_1(u1_struct_0(A),B))
                & v2_waybel_0(k3_subset_1(u1_struct_0(A),B),A)
                & v13_waybel_0(k3_subset_1(u1_struct_0(A),B),A)
                & m1_subset_1(k3_subset_1(u1_struct_0(A),B),k1_zfmisc_1(u1_struct_0(A))) )
              | k3_subset_1(u1_struct_0(A),B) = k1_xboole_0 ) ) ) ) )).

fof(t22_yellow_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(k7_lattice3(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(k7_lattice3(A)))
             => k12_lattice3(A,k9_lattice3(A,B),k9_lattice3(A,C)) = k13_lattice3(k7_lattice3(A),B,C) ) ) ) )).

fof(t23_waybel_4,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_yellow_0(A)
        & l1_orders_2(A) )
     => k5_waybel_0(A,k3_yellow_0(A)) = k6_domain_1(u1_struct_0(A),k3_yellow_0(A)) ) )).

fof(t23_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v1_waybel_7(B,A)
          <=> r2_hidden(B,k4_waybel_6(k2_yellow_1(k7_waybel_0(A)))) ) ) ) )).

fof(t24_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v11_waybel_1(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v2_waybel_7(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( r2_hidden(C,B)
                  | r2_hidden(k7_waybel_1(A,C),B) ) ) ) ) ) )).

fof(t25_waybel_7,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(B)
        & v2_waybel_0(B,k3_yellow_1(A))
        & v13_waybel_0(B,k3_yellow_1(A))
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) )
     => ( v2_waybel_7(B,k3_yellow_1(A))
      <=> ! [C] :
            ( m1_subset_1(C,k1_zfmisc_1(A))
           => ( r2_hidden(C,B)
              | r2_hidden(k6_subset_1(A,C),B) ) ) ) ) )).

fof(t26_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v11_waybel_1(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( v1_subset_1(B,u1_struct_0(A))
              & v2_waybel_7(B,A) )
          <=> v3_waybel_7(B,A) ) ) ) )).

fof(t26_yellow_7,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( ( v1_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
        <=> ( v2_waybel_0(B,k7_lattice3(A))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k7_lattice3(A)))) ) ) ) )).

fof(t27_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_waybel_1(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & v2_waybel_0(C,A)
                & v13_waybel_0(C,A)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => ~ ( r1_subset_1(B,C)
                  & ! [D] :
                      ( ( ~ v1_xboole_0(D)
                        & v1_waybel_0(D,A)
                        & v12_waybel_0(D,A)
                        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A))) )
                     => ~ ( v1_waybel_7(D,A)
                          & r1_tarski(B,D)
                          & r1_subset_1(D,C) ) ) ) ) ) ) )).

fof(t27_yellow_7,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( ( v1_waybel_0(B,k7_lattice3(A))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k7_lattice3(A)))) )
        <=> ( v2_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) ) ) ) )).

fof(t28_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_waybel_1(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ~ ( ~ r2_hidden(C,B)
                  & ! [D] :
                      ( ( ~ v1_xboole_0(D)
                        & v1_waybel_0(D,A)
                        & v12_waybel_0(D,A)
                        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A))) )
                     => ~ ( v1_waybel_7(D,A)
                          & r1_tarski(B,D)
                          & ~ r2_hidden(C,D) ) ) ) ) ) ) )).

fof(t28_yellow_7,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( ( v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
        <=> ( v13_waybel_0(B,k7_lattice3(A))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k7_lattice3(A)))) ) ) ) )).

fof(t29_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_waybel_1(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_waybel_0(B,A)
            & v12_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & v2_waybel_0(C,A)
                & v13_waybel_0(C,A)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => ~ ( r1_subset_1(B,C)
                  & ! [D] :
                      ( ( ~ v1_xboole_0(D)
                        & v2_waybel_0(D,A)
                        & v13_waybel_0(D,A)
                        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A))) )
                     => ~ ( v2_waybel_7(D,A)
                          & r1_tarski(C,D)
                          & r1_subset_1(B,D) ) ) ) ) ) ) )).

fof(t29_yellow_7,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( ( v12_waybel_0(B,k7_lattice3(A))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k7_lattice3(A)))) )
        <=> ( v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) ) ) ) )).

fof(t30_waybel_7,conjecture,(
    ! [A] :
      ( ( ~ v7_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v11_waybel_1(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_subset_1(B,u1_struct_0(A))
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ? [C] :
              ( ~ v1_xboole_0(C)
              & v2_waybel_0(C,A)
              & v13_waybel_0(C,A)
              & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
              & r1_tarski(B,C)
              & v3_waybel_7(C,A) ) ) ) )).

fof(t37_yellow_5,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v11_waybel_1(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k12_lattice3(A,B,k7_waybel_1(A,B)) = k3_yellow_0(A)
            & k13_lattice3(A,B,k7_waybel_1(A,B)) = k4_yellow_0(A) ) ) ) )).

fof(t39_yellow_5,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v11_waybel_1(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k7_waybel_1(A,k13_lattice3(A,B,C)) = k12_lattice3(A,k7_waybel_1(A,B),k7_waybel_1(A,C))
                & k7_waybel_1(A,k12_lattice3(A,B,C)) = k13_lattice3(A,k7_waybel_1(A,B),k7_waybel_1(A,C)) ) ) ) ) )).

fof(t3_waybel_7,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v3_lattice3(A)
        & l1_orders_2(A) )
     => ! [B,C] :
          ( r1_tarski(B,C)
         => ( r3_orders_2(A,k1_yellow_0(A,B),k1_yellow_0(A,C))
            & r1_orders_2(A,k2_yellow_0(A,C),k2_yellow_0(A,B)) ) ) ) )).

fof(t3_yellow_2,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B,C] :
          ( ( r1_yellow_0(A,B)
            & r1_yellow_0(A,C) )
         => ( r1_yellow_0(A,k2_xboole_0(B,C))
            & k1_yellow_0(A,k2_xboole_0(B,C)) = k13_lattice3(A,k1_yellow_0(A,B),k1_yellow_0(A,C)) ) ) ) )).

fof(t45_yellow_2,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(k2_yellow_1(k7_waybel_0(A))))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(k2_yellow_1(k7_waybel_0(A))))
             => k11_lattice3(k2_yellow_1(k7_waybel_0(A)),B,C) = k3_xboole_0(B,C) ) ) ) )).

fof(t4_waybel_7,axiom,(
    ! [A] : u1_struct_0(k3_yellow_1(A)) = k9_setfam_1(A) )).

fof(t4_yellow_2,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ! [B,C] :
          ( ( r2_yellow_0(A,B)
            & r2_yellow_0(A,C) )
         => ( r2_yellow_0(A,k2_xboole_0(B,C))
            & k2_yellow_0(A,k2_xboole_0(B,C)) = k12_lattice3(A,k2_yellow_0(A,B),k2_yellow_0(A,C)) ) ) ) )).

fof(t5_waybel_7,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v5_orders_2(A)
        & v3_yellow_0(A)
        & l1_orders_2(A) )
     => ( v7_struct_0(A)
      <=> k4_yellow_0(A) = k3_yellow_0(A) ) ) )).

fof(t6_waybel_1,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ( v2_waybel_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k13_lattice3(A,B,k12_lattice3(A,C,D)) = k12_lattice3(A,k13_lattice3(A,B,C),k13_lattice3(A,B,D)) ) ) ) ) ) )).

fof(t8_waybel_7,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_yellow_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,A)
            & v13_waybel_0(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v1_subset_1(B,u1_struct_0(A))
          <=> ~ r2_hidden(k3_yellow_0(A),B) ) ) ) )).

fof(t9_waybel_7,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,u1_struct_0(k3_yellow_1(A)))
     => k7_waybel_1(k3_yellow_1(A),B) = k6_subset_1(A,B) ) )).

%------------------------------------------------------------------------------
