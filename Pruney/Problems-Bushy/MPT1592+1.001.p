%------------------------------------------------------------------------------
% File     : MPT1592+1.001 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : yellow_0__t71_yellow_0---1.p [MPTPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    :   16 (   0 unit)
%            Number of atoms       :  103 (   6 equality)
%            Maximal formula depth :   15 (   7 average)
%            Number of connectives :   98 (  11   ~;   1   |;  41   &)
%                                         (   2 <=>;  43  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   15 (   0 propositional; 1-2 arity)
%            Number of functors    :    6 (   0 constant; 1-3 arity)
%            Number of variables   :   40 (   0 sgn;  40   !;   0   ?)
%            Maximal term depth    :    4 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
fof(cc12_yellow_0,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_yellow_0(B,A)
         => ( ( ~ v2_struct_0(B)
              & v4_yellow_0(B,A)
              & v6_yellow_0(B,A) )
           => ( ~ v2_struct_0(B)
              & v1_lattice3(B)
              & v4_yellow_0(B,A)
              & v6_yellow_0(B,A) ) ) ) ) )).

fof(cc1_lattice3,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v1_lattice3(A)
       => ~ v2_struct_0(A) ) ) )).

fof(cc6_yellow_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_yellow_0(B,A)
         => ( v4_yellow_0(B,A)
           => ( v3_orders_2(B)
              & v4_yellow_0(B,A) ) ) ) ) )).

fof(cc7_yellow_0,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_yellow_0(B,A)
         => ( v4_yellow_0(B,A)
           => ( v4_orders_2(B)
              & v4_yellow_0(B,A) ) ) ) ) )).

fof(cc8_yellow_0,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_yellow_0(B,A)
         => ( v4_yellow_0(B,A)
           => ( v5_orders_2(B)
              & v4_yellow_0(B,A) ) ) ) ) )).

fof(d17_yellow_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_yellow_0(B,A)
         => ( v6_yellow_0(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ( r2_hidden(C,u1_struct_0(B))
                        & r2_hidden(D,u1_struct_0(B))
                        & r1_yellow_0(A,k7_domain_1(u1_struct_0(A),C,D)) )
                     => r2_hidden(k1_yellow_0(A,k7_domain_1(u1_struct_0(A),C,D)),u1_struct_0(B)) ) ) ) ) ) ) )).

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

fof(dt_m1_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( m1_yellow_0(B,A)
         => l1_orders_2(B) ) ) )).

fof(fc2_struct_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(u1_struct_0(A)) ) )).

fof(redefinition_k7_domain_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A)
        & m1_subset_1(C,A) )
     => k7_domain_1(A,B,C) = k2_tarski(B,C) ) )).

fof(t20_yellow_0,axiom,(
    ! [A] :
      ( ( v5_orders_2(A)
        & l1_orders_2(A) )
     => ( v1_lattice3(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => r1_yellow_0(A,k2_tarski(B,C)) ) ) ) ) )).

fof(t2_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) )).

fof(t41_yellow_0,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k1_yellow_0(A,k7_domain_1(u1_struct_0(A),B,C)) = k13_lattice3(A,B,C) ) ) ) )).

fof(t65_yellow_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_yellow_0(B,A)
            & m1_yellow_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ( ( r1_yellow_0(A,C)
                  & r2_hidden(k1_yellow_0(A,C),u1_struct_0(B)) )
               => ( r1_yellow_0(B,C)
                  & k1_yellow_0(B,C) = k1_yellow_0(A,C) ) ) ) ) ) )).

fof(t71_yellow_0,conjecture,(
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v4_yellow_0(B,A)
            & v6_yellow_0(B,A)
            & m1_yellow_0(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(A))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(A))
                         => ( ( E = C
                              & F = D )
                           => k13_lattice3(B,C,D) = k13_lattice3(A,E,F) ) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
