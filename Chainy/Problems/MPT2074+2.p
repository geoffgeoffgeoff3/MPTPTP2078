%------------------------------------------------------------------------------
% File     : MPT2074+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : yellow19__t34_yellow19.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 4556 ( 468 unit)
%            Number of atoms       : 28881 (2923 equality)
%            Maximal formula depth :   35 (   8 average)
%            Number of connectives : 28792 (4467   ~; 166   |;13692   &)
%                                         (1013 <=>;9454  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :  322 (   1 propositional; 0-6 arity)
%            Number of functors    :  460 (   9 constant; 0-10 arity)
%            Number of variables   : 13397 (   9 sgn;12692   !; 705   ?)
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
include('Axioms/MPT032+2.ax').
%------------------------------------------------------------------------------
fof(cc1_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v3_orders_2(B)
        & l1_waybel_0(B,A) )
     => ! [C] :
          ( m1_yellow19(C,A,B)
         => ~ v1_xboole_0(C) ) ) )).

fof(d1_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k1_yellow19(A,B) = a_2_0_yellow19(A,B) ) ) )).

fof(d2_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( m1_yellow19(C,A,B)
              <=> ? [D] :
                    ( m1_subset_1(D,u1_struct_0(B))
                    & C = k2_relset_1(u1_struct_0(k4_waybel_9(A,B,D)),u1_struct_0(A),u1_waybel_0(A,k4_waybel_9(A,B,D))) ) ) ) ) ) )).

fof(d3_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => k2_yellow19(A,B) = a_2_1_yellow19(A,B) ) ) )).

fof(d4_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & v2_waybel_0(C,k3_yellow_1(B))
                & v13_waybel_0(C,k3_yellow_1(B))
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(B)))) )
             => ! [D] :
                  ( ( ~ v2_struct_0(D)
                    & v6_waybel_0(D,A)
                    & l1_waybel_0(D,A) )
                 => ( D = k3_yellow19(A,B,C)
                  <=> ( u1_struct_0(D) = a_3_0_yellow19(A,B,C)
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(D))
                         => ! [F] :
                              ( m1_subset_1(F,u1_struct_0(D))
                             => ( r1_orders_2(D,E,F)
                              <=> r1_tarski(k2_mcart_1(F),k2_mcart_1(E)) ) ) )
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(D))
                         => k2_waybel_0(A,D,E) = k1_mcart_1(E) ) ) ) ) ) ) ) )).

fof(dt_k1_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k1_yellow19(A,B),k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) ) )).

fof(dt_k2_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A) )
     => m1_subset_1(k2_yellow19(A,B),k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) ) )).

fof(dt_k3_yellow19,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v1_xboole_0(C)
        & v2_waybel_0(C,k3_yellow_1(B))
        & v13_waybel_0(C,k3_yellow_1(B))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(B)))) )
     => ( ~ v2_struct_0(k3_yellow19(A,B,C))
        & v6_waybel_0(k3_yellow19(A,B,C),A)
        & l1_waybel_0(k3_yellow19(A,B,C),A) ) ) )).

fof(dt_k5_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( v6_waybel_0(k5_waybel_9(A,B,C),A)
        & m2_yellow_6(k5_waybel_9(A,B,C),A,B) ) ) )).

fof(dt_m1_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A) )
     => ! [C] :
          ( m1_yellow19(C,A,B)
         => m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) ) ) )).

fof(dt_o_2_12_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v1_xboole_0(B)
        & v2_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
        & v13_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
        & v3_waybel_7(B,k3_yellow_1(k2_struct_0(A)))
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
     => m2_subset_1(o_2_12_yellow19(A,B),u1_struct_0(k3_yellow_1(k2_struct_0(A))),B) ) )).

fof(dt_o_2_3_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(o_2_3_yellow19(A,B),k7_subset_1(u1_struct_0(A),B,k1_tops_1(A,B))) ) )).

fof(dt_o_2_6_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(o_2_6_yellow19(A,B),B) ) )).

fof(dt_o_2_9_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) )
     => m1_subset_1(o_2_9_yellow19(A,B),k6_setfam_1(u1_struct_0(A),B)) ) )).

fof(dt_o_5_0_yellow19,axiom,(
    ! [A,B,C,D,E] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_connsp_2(D,A,C)
        & m1_yellow19(E,A,B) )
     => m1_subset_1(o_5_0_yellow19(A,B,C,D,E),k9_subset_1(u1_struct_0(A),E,k1_tops_1(A,D))) ) )).

fof(existence_m1_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A) )
     => ? [C] : m1_yellow19(C,A,B) ) )).

fof(fc1_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( ~ v1_xboole_0(k1_yellow19(A,B))
        & v1_subset_1(k1_yellow19(A,B),u1_struct_0(k3_yellow_1(k2_struct_0(A))))
        & v2_waybel_0(k1_yellow19(A,B),k3_yellow_1(k2_struct_0(A)))
        & v13_waybel_0(k1_yellow19(A,B),k3_yellow_1(k2_struct_0(A))) ) ) )).

fof(fc20_finset_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finset_1(B) )
     => ( v1_relat_1(k5_relat_1(B,A))
        & v1_finset_1(k5_relat_1(B,A)) ) ) )).

fof(fc26_finset_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_finset_1(B) )
     => ( v1_relat_1(k7_relat_1(B,A))
        & v1_finset_1(k7_relat_1(B,A)) ) ) )).

fof(fc27_finset_1,axiom,(
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_relat_1(k7_relat_1(B,A))
        & v1_finset_1(k7_relat_1(B,A)) ) ) )).

fof(fc2_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & l1_waybel_0(B,A) )
     => ( ~ v1_xboole_0(k2_yellow19(A,B))
        & v13_waybel_0(k2_yellow19(A,B),k3_yellow_1(k2_struct_0(A))) ) ) )).

fof(fc3_yellow19,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A) )
     => ( v1_subset_1(k2_yellow19(A,B),u1_struct_0(k3_yellow_1(k2_struct_0(A))))
        & v2_waybel_0(k2_yellow19(A,B),k3_yellow_1(k2_struct_0(A))) ) ) )).

fof(fc4_yellow19,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v1_xboole_0(C)
        & v2_waybel_0(C,k3_yellow_1(B))
        & v13_waybel_0(C,k3_yellow_1(B))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(B)))) )
     => ( ~ v2_struct_0(k3_yellow19(A,B,C))
        & v3_orders_2(k3_yellow19(A,B,C))
        & v4_orders_2(k3_yellow19(A,B,C))
        & v6_waybel_0(k3_yellow19(A,B,C),A) ) ) )).

fof(fc5_yellow19,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v1_xboole_0(C)
        & v1_subset_1(C,u1_struct_0(k3_yellow_1(B)))
        & v2_waybel_0(C,k3_yellow_1(B))
        & v13_waybel_0(C,k3_yellow_1(B))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(B)))) )
     => ( ~ v2_struct_0(k3_yellow19(A,B,C))
        & v6_waybel_0(k3_yellow19(A,B,C),A)
        & v7_waybel_0(k3_yellow19(A,B,C)) ) ) )).

fof(fc8_yellow_6,axiom,(
    ! [A] :
      ( v1_orders_2(k3_yellow_1(A))
      & v7_waybel_0(k3_yellow_1(A)) ) )).

fof(fraenkel_a_2_0_yellow19,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v2_pre_topc(B)
        & l1_pre_topc(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r2_hidden(A,a_2_0_yellow19(B,C))
      <=> ? [D] :
            ( m1_connsp_2(D,B,C)
            & A = D ) ) ) )).

fof(fraenkel_a_2_11_yellow19,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v2_pre_topc(B)
        & l1_pre_topc(B)
        & ~ v1_xboole_0(C)
        & v2_waybel_0(C,k3_yellow_1(k2_struct_0(B)))
        & v13_waybel_0(C,k3_yellow_1(k2_struct_0(B)))
        & v3_waybel_7(C,k3_yellow_1(k2_struct_0(B)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(B))))) )
     => ( r2_hidden(A,a_2_11_yellow19(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
            & A = k2_pre_topc(B,D)
            & r2_hidden(D,C) ) ) ) )).

fof(fraenkel_a_2_1_yellow19,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & l1_struct_0(B)
        & ~ v2_struct_0(C)
        & l1_waybel_0(C,B) )
     => ( r2_hidden(A,a_2_1_yellow19(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
            & A = D
            & r1_waybel_0(B,C,D) ) ) ) )).

fof(fraenkel_a_2_5_yellow19,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & l1_struct_0(B)
        & ~ v1_xboole_0(C)
        & v2_waybel_0(C,k3_yellow_1(k2_struct_0(B)))
        & v13_waybel_0(C,k3_yellow_1(k2_struct_0(B)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(B))))) )
     => ( r2_hidden(A,a_2_5_yellow19(B,C))
      <=> ? [D,E] :
            ( m1_subset_1(D,u1_struct_0(B))
            & m2_subset_1(E,u1_struct_0(k3_yellow_1(k2_struct_0(B))),C)
            & A = k4_tarski(D,E)
            & r2_hidden(D,E) ) ) ) )).

fof(fraenkel_a_2_7_yellow19,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v2_pre_topc(B)
        & l1_pre_topc(B)
        & ~ v1_xboole_0(C)
        & v1_subset_1(C,u1_struct_0(k3_yellow_1(k2_struct_0(B))))
        & v2_waybel_0(C,k3_yellow_1(k2_struct_0(B)))
        & v13_waybel_0(C,k3_yellow_1(k2_struct_0(B)))
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(B))))) )
     => ( r2_hidden(A,a_2_7_yellow19(B,C))
      <=> ? [D,E] :
            ( m1_subset_1(D,u1_struct_0(B))
            & m2_subset_1(E,u1_struct_0(k3_yellow_1(k2_struct_0(B))),C)
            & A = k4_tarski(D,E)
            & r2_hidden(D,E) ) ) ) )).

fof(fraenkel_a_3_0_yellow19,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & l1_struct_0(B)
        & ~ v1_xboole_0(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
        & ~ v1_xboole_0(D)
        & v2_waybel_0(D,k3_yellow_1(C))
        & v13_waybel_0(D,k3_yellow_1(C))
        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(k3_yellow_1(C)))) )
     => ( r2_hidden(A,a_3_0_yellow19(B,C,D))
      <=> ? [E,F] :
            ( m1_subset_1(E,u1_struct_0(B))
            & m2_subset_1(F,u1_struct_0(k3_yellow_1(C)),D)
            & A = k4_tarski(E,F)
            & r2_hidden(E,F) ) ) ) )).

fof(fraenkel_a_3_1_yellow19,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & l1_struct_0(B)
        & ~ v2_struct_0(C)
        & v4_orders_2(C)
        & v7_waybel_0(C)
        & l1_waybel_0(C,B)
        & m1_subset_1(D,u1_struct_0(C)) )
     => ( r2_hidden(A,a_3_1_yellow19(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(C))
            & A = E
            & r1_orders_2(C,D,E) ) ) ) )).

fof(fraenkel_a_3_3_yellow19,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(B)
        & v2_pre_topc(B)
        & l1_pre_topc(B)
        & ~ v2_struct_0(C)
        & v4_orders_2(C)
        & v7_waybel_0(C)
        & l1_waybel_0(C,B)
        & m1_subset_1(D,u1_struct_0(C)) )
     => ( r2_hidden(A,a_3_3_yellow19(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(C))
            & A = E
            & r1_orders_2(C,D,E) ) ) ) )).

fof(l37_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ( v1_compts_1(A)
       => ! [B] :
            ( ( ~ v2_struct_0(B)
              & v4_orders_2(B)
              & v7_waybel_0(B)
              & l1_waybel_0(B,A) )
           => ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & r3_waybel_9(A,B,C) ) ) ) ) )).

fof(l38_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ( ! [B] :
            ( ( ~ v2_struct_0(B)
              & v4_orders_2(B)
              & v7_waybel_0(B)
              & l1_waybel_0(B,A) )
           => ~ ( r2_hidden(B,k6_yellow_6(A))
                & ! [C] :
                    ( m1_subset_1(C,u1_struct_0(A))
                   => ~ r3_waybel_9(A,B,C) ) ) )
       => v1_compts_1(A) ) ) )).

fof(redefinition_k5_waybel_9,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & m1_subset_1(C,u1_struct_0(B)) )
     => k5_waybel_9(A,B,C) = k4_waybel_9(A,B,C) ) )).

fof(s1_wellord2__e3_12__yellow19,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A)
        & ~ v2_struct_0(B)
        & v4_orders_2(B)
        & v7_waybel_0(B)
        & l1_waybel_0(B,A)
        & ~ v1_xboole_0(C)
        & v1_finset_1(C) )
     => ( ! [D] :
            ~ ( r2_hidden(D,C)
              & ! [E] :
                  ~ ( r2_hidden(E,u1_struct_0(B))
                    & ? [F] :
                        ( m1_subset_1(F,u1_struct_0(B))
                        & E = F
                        & D = k2_relset_1(u1_struct_0(k5_waybel_9(A,B,F)),u1_struct_0(A),u1_waybel_0(A,k5_waybel_9(A,B,F))) ) ) )
       => ? [D] :
            ( v1_relat_1(D)
            & v1_funct_1(D)
            & k1_relat_1(D) = C
            & r1_tarski(k2_relat_1(D),u1_struct_0(B))
            & ! [E] :
                ( r2_hidden(E,C)
               => ? [G] :
                    ( m1_subset_1(G,u1_struct_0(B))
                    & k1_funct_1(D,E) = G
                    & E = k2_relset_1(u1_struct_0(k5_waybel_9(A,B,G)),u1_struct_0(A),u1_waybel_0(A,k5_waybel_9(A,B,G))) ) ) ) ) ) )).

fof(t10_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & v1_finset_1(C) )
             => ~ ( ! [D] :
                      ( m1_subset_1(D,C)
                     => m1_yellow19(D,A,B) )
                  & ! [D] :
                      ( m1_yellow19(D,A,B)
                     => ~ r1_tarski(D,k1_setfam_1(C)) ) ) ) ) ) )).

fof(t11_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( r2_hidden(C,k2_yellow19(A,B))
            <=> ( r1_waybel_0(A,B,C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) ) ) ) ) )).

fof(t12_yellow19,axiom,(
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
             => ( r3_waybel_9(A,B,C)
              <=> r1_waybel_7(A,k2_yellow19(A,B),C) ) ) ) ) )).

fof(t13_yellow19,axiom,(
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
              <=> r2_waybel_7(A,k2_yellow19(A,B),C) ) ) ) ) )).

fof(t14_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & v13_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
         => k7_subset_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))),B,k1_tarski(k1_xboole_0)) = k2_yellow19(A,k3_yellow19(A,k2_struct_0(A),B)) ) ) )).

fof(t15_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_subset_1(B,u1_struct_0(k3_yellow_1(k2_struct_0(A))))
            & v2_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & v13_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
         => B = k2_yellow19(A,k3_yellow19(A,k2_struct_0(A),B)) ) ) )).

fof(t16_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v2_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & v13_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => ( r2_hidden(C,B)
              <=> r1_waybel_0(A,k3_yellow19(A,k2_struct_0(A),B),C) ) ) ) ) )).

fof(t17_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_subset_1(B,u1_struct_0(k3_yellow_1(k2_struct_0(A))))
            & v2_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & v13_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r3_waybel_9(A,k3_yellow19(A,k2_struct_0(A),B),C)
              <=> r1_waybel_7(A,B,C) ) ) ) ) )).

fof(t18_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_subset_1(B,u1_struct_0(k3_yellow_1(k2_struct_0(A))))
            & v2_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & v13_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(C,k10_yellow_6(A,k3_yellow19(A,k2_struct_0(A),B)))
              <=> r2_waybel_7(A,B,C) ) ) ) ) )).

fof(t20_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( r2_hidden(B,k2_pre_topc(A,C))
               => ! [D] :
                    ( ( ~ v1_xboole_0(D)
                      & v1_subset_1(D,u1_struct_0(k3_yellow_1(k2_struct_0(A))))
                      & v2_waybel_0(D,k3_yellow_1(k2_struct_0(A)))
                      & v13_waybel_0(D,k3_yellow_1(k2_struct_0(A)))
                      & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
                   => ( D = k1_yellow19(A,B)
                     => r2_waybel_0(A,k3_yellow19(A,k2_struct_0(A),D),C) ) ) ) ) ) ) )).

fof(t21_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B,C] :
          ( ( ~ v2_struct_0(C)
            & v4_orders_2(C)
            & v7_waybel_0(C)
            & l1_waybel_0(C,A) )
         => ( r1_waybel_0(A,C,B)
           => ! [D] :
                ( m2_yellow_6(D,A,C)
               => r1_waybel_0(A,D,B) ) ) ) ) )).

fof(t22_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B,C,D] :
          ( ( r1_tarski(B,C)
            & r2_waybel_7(A,B,D) )
         => r2_waybel_7(A,C,D) ) ) )).

fof(t22_yellow_5,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v5_orders_2(A)
        & v1_yellow_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r1_orders_2(A,B,k3_yellow_0(A))
           => B = k3_yellow_0(A) ) ) ) )).

fof(t23_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(C,k2_pre_topc(A,B))
              <=> ? [D] :
                    ( ~ v2_struct_0(D)
                    & v4_orders_2(D)
                    & v7_waybel_0(D)
                    & l1_waybel_0(D,A)
                    & r1_waybel_0(A,D,B)
                    & r3_waybel_9(A,D,C) ) ) ) ) ) )).

fof(t24_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(C,k2_pre_topc(A,B))
              <=> ? [D] :
                    ( ~ v2_struct_0(D)
                    & v4_orders_2(D)
                    & v7_waybel_0(D)
                    & v3_yellow_6(D,A)
                    & l1_waybel_0(D,A)
                    & r1_waybel_0(A,D,B)
                    & r2_hidden(C,k10_yellow_6(A,D)) ) ) ) ) ) )).

fof(t25_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v4_pre_topc(B,A)
          <=> ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v4_orders_2(C)
                  & v7_waybel_0(C)
                  & l1_waybel_0(C,A) )
               => ( r1_waybel_0(A,C,B)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( r3_waybel_9(A,C,D)
                       => r2_hidden(D,B) ) ) ) ) ) ) ) )).

fof(t26_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v4_pre_topc(B,A)
          <=> ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v4_orders_2(C)
                  & v7_waybel_0(C)
                  & v3_yellow_6(C,A)
                  & l1_waybel_0(C,A) )
               => ( r1_waybel_0(A,C,B)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( r2_hidden(D,k10_yellow_6(A,C))
                       => r2_hidden(D,B) ) ) ) ) ) ) ) )).

fof(t27_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(C,k2_pre_topc(A,B))
              <=> ? [D] :
                    ( ~ v1_xboole_0(D)
                    & v1_subset_1(D,u1_struct_0(k3_yellow_1(k2_struct_0(A))))
                    & v2_waybel_0(D,k3_yellow_1(k2_struct_0(A)))
                    & v13_waybel_0(D,k3_yellow_1(k2_struct_0(A)))
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A)))))
                    & r2_hidden(B,D)
                    & r1_waybel_7(A,D,C) ) ) ) ) ) )).

fof(t28_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(C,k2_pre_topc(A,B))
              <=> ? [D] :
                    ( ~ v1_xboole_0(D)
                    & v2_waybel_0(D,k3_yellow_1(k2_struct_0(A)))
                    & v13_waybel_0(D,k3_yellow_1(k2_struct_0(A)))
                    & v3_waybel_7(D,k3_yellow_1(k2_struct_0(A)))
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A)))))
                    & r2_hidden(B,D)
                    & r2_waybel_7(A,D,C) ) ) ) ) ) )).

fof(t29_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v4_pre_topc(B,A)
          <=> ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & v1_subset_1(C,u1_struct_0(k3_yellow_1(k2_struct_0(A))))
                  & v2_waybel_0(C,k3_yellow_1(k2_struct_0(A)))
                  & v13_waybel_0(C,k3_yellow_1(k2_struct_0(A)))
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
               => ( r2_hidden(B,C)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( r1_waybel_7(A,C,D)
                       => r2_hidden(D,B) ) ) ) ) ) ) ) )).

fof(t2_yellow19,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v1_subset_1(B,u1_struct_0(k3_yellow_1(A)))
            & v2_waybel_0(B,k3_yellow_1(A))
            & v13_waybel_0(B,k3_yellow_1(A))
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) )
         => ! [C] :
              ~ ( r2_hidden(C,B)
                & v1_xboole_0(C) ) ) ) )).

fof(t30_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v4_pre_topc(B,A)
          <=> ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & v2_waybel_0(C,k3_yellow_1(k2_struct_0(A)))
                  & v13_waybel_0(C,k3_yellow_1(k2_struct_0(A)))
                  & v3_waybel_7(C,k3_yellow_1(k2_struct_0(A)))
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
               => ( r2_hidden(B,C)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( r2_waybel_7(A,C,D)
                       => r2_hidden(D,B) ) ) ) ) ) ) ) )).

fof(t31_yellow19,axiom,(
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
             => ( r3_waybel_9(A,B,C)
              <=> ! [D] :
                    ( m1_yellow19(D,A,B)
                   => r2_hidden(C,k2_pre_topc(A,D)) ) ) ) ) ) )).

fof(t32_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
         => ( v2_tops_2(B,A)
           => v2_tops_2(k2_cantor_1(u1_struct_0(A),B),A) ) ) ) )).

fof(t33_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ( v1_compts_1(A)
      <=> ! [B] :
            ( ( ~ v1_xboole_0(B)
              & v2_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
              & v13_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
              & v3_waybel_7(B,k3_yellow_1(k2_struct_0(A)))
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
           => ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & r2_waybel_7(A,B,C) ) ) ) ) )).

fof(t34_yellow19,conjecture,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ( v1_compts_1(A)
      <=> ! [B] :
            ( ( ~ v1_xboole_0(B)
              & v1_subset_1(B,u1_struct_0(k3_yellow_1(k2_struct_0(A))))
              & v2_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
              & v13_waybel_0(B,k3_yellow_1(k2_struct_0(A)))
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
           => ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & r1_waybel_7(A,B,C) ) ) ) ) )).

fof(t3_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( r2_hidden(C,k1_yellow19(A,B))
            <=> m1_connsp_2(C,A,B) ) ) ) )).

fof(t4_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( v13_waybel_0(C,k3_yellow_1(k2_struct_0(A)))
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
             => ( r2_waybel_7(A,C,B)
              <=> r1_tarski(k1_yellow19(A,B),C) ) ) ) ) )).

fof(t5_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => r2_waybel_7(A,k1_yellow19(A,B),B) ) ) )).

fof(t6_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v3_pre_topc(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( r2_hidden(C,B)
                 => ! [D] :
                      ( ( ~ v1_xboole_0(D)
                        & v2_waybel_0(D,k3_yellow_1(k2_struct_0(A)))
                        & v13_waybel_0(D,k3_yellow_1(k2_struct_0(A)))
                        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A))))) )
                     => ( r2_waybel_7(A,D,C)
                       => r2_hidden(B,D) ) ) ) ) ) ) ) )).

fof(t7_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => m1_yellow19(k2_relset_1(u1_struct_0(k4_waybel_9(A,B,C)),u1_struct_0(A),u1_waybel_0(A,k4_waybel_9(A,B,C))),A,B) ) ) ) )).

fof(t8_yellow19,axiom,(
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
             => ! [D] :
                  ( r2_hidden(D,k2_relset_1(u1_struct_0(k5_waybel_9(A,B,C)),u1_struct_0(A),u1_waybel_0(A,k5_waybel_9(A,B,C))))
                <=> ? [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                      & r1_orders_2(B,C,E)
                      & D = k2_waybel_0(A,B,E) ) ) ) ) ) )).

fof(t9_yellow19,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_orders_2(B)
            & v7_waybel_0(B)
            & l1_waybel_0(B,A) )
         => ! [C] :
              ( m1_yellow19(C,A,B)
             => r1_waybel_0(A,B,C) ) ) ) )).

%------------------------------------------------------------------------------
