%------------------------------------------------------------------------------
% File     : MPT1668+2.005 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 005 of t48_waybel_0
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :   10 (   0 unit)
%            Number of atoms       :   73 (   3 equality)
%            Maximal formula depth :   14 (   9 average)
%            Number of connectives :   71 (   8   ~;   0   |;  29   &)
%                                         (   9 <=>;  25  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   14 (   0 propositional; 1-3 arity)
%            Number of functors    :    5 (   0 constant; 1-2 arity)
%            Number of variables   :   34 (   0 sgn;  29   !;   5   ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(d3_tarski,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,B) ) ) )).

fof(t24_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => r1_orders_2(A,B,B) ) ) )).

fof(d9_lattice3,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B,C] :
          ( m1_subset_1(C,u1_struct_0(A))
         => ( r2_lattice3(A,B,C)
          <=> ! [D] :
                ( m1_subset_1(D,u1_struct_0(A))
               => ( r2_hidden(D,B)
                 => r1_orders_2(A,D,C) ) ) ) ) ) )).

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

fof(dt_k5_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k5_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

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

fof(t48_waybel_0,conjecture,(
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

%------------------------------------------------------------------------------
