%------------------------------------------------------------------------------
% File     : MPT1151+2.006 : TPTP v7.5.0. Released v7.5.0.
% Domain   : Set theory
% Problem  : Pruney version 006 of t45_orders_2
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
%          : [PU20]  Piotrowski & Urban (2020), Stateful Premise Selection
% Source   : [PU20]
% Names    :

% Status   : Theorem
% Rating   : ? v7.5.0
% Syntax   : Number of formulae    :   10 (   2 unit)
%            Number of atoms       :   44 (   5 equality)
%            Maximal formula depth :   12 (   6 average)
%            Number of connectives :   39 (   5   ~;   0   |;  21   &)
%                                         (   1 <=>;  12  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   11 (   0 propositional; 1-3 arity)
%            Number of functors    :    6 (   1 constant; 0-2 arity)
%            Number of variables   :   19 (   0 sgn;  18   !;   1   ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(t2_xboole_1,axiom,(
    ! [A] : r1_tarski(k1_xboole_0,A) )).

fof(t49_subset_1,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ( ! [C] :
            ( m1_subset_1(C,A)
           => r2_hidden(C,B) )
       => A = B ) ) )).

fof(t4_subset_1,axiom,(
    ! [A] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(A)) )).

fof(t7_ordinal1,axiom,(
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & r1_tarski(B,A) ) )).

fof(d2_struct_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => k1_struct_0(A) = k1_xboole_0 ) )).

fof(d13_orders_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => k2_orders_2(A,B) = a_2_1_orders_2(A,B) ) ) )).

fof(dt_k2_orders_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k2_orders_2(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_l1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => l1_struct_0(A) ) )).

fof(fraenkel_a_2_1_orders_2,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v5_orders_2(B)
        & l1_orders_2(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_2_1_orders_2(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & ! [E] :
                ( m1_subset_1(E,u1_struct_0(B))
               => ( r2_hidden(E,C)
                 => r2_orders_2(B,D,E) ) ) ) ) ) )).

fof(t45_orders_2,conjecture,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => k2_orders_2(A,k1_struct_0(A)) = u1_struct_0(A) ) )).

%------------------------------------------------------------------------------
