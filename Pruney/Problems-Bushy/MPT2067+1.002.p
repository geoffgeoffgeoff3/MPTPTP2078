%------------------------------------------------------------------------------
% File     : MPT2067+1.002 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : yellow19__t27_yellow19---2.p [MPTPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    :   17 (   0 unit)
%            Number of atoms       :  119 (   1 equality)
%            Maximal formula depth :   15 (   8 average)
%            Number of connectives :  134 (  32   ~;   0   |;  74   &)
%                                         (   4 <=>;  24  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   19 (   0 propositional; 1-3 arity)
%            Number of functors    :    7 (   0 constant; 1-3 arity)
%            Number of variables   :   41 (   0 sgn;  39   !;   2   ?)
%            Maximal term depth    :    5 (   2 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
fof(dt_k2_pre_topc,axiom,(
    ! [A,B] :
      ( ( l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k2_pre_topc(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k2_struct_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => m1_subset_1(k2_struct_0(A),k1_zfmisc_1(u1_struct_0(A))) ) )).

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

fof(dt_l1_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => l1_struct_0(A) ) )).

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

fof(fc5_struct_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(k2_struct_0(A)) ) )).

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

fof(t4_subset,axiom,(
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) )).

fof(t7_boole,axiom,(
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) )).

fof(t27_yellow19,conjecture,(
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

%------------------------------------------------------------------------------
