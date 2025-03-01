%------------------------------------------------------------------------------
% File     : MPT1456+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : filter_1__t51_filter_1.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 2776 ( 422 unit)
%            Number of atoms       : 13292 (2072 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives : 12309 (1793   ~; 116   |;5143   &)
%                                         ( 548 <=>;4709  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :  186 (   1 propositional; 0-4 arity)
%            Number of functors    :  228 (   9 constant; 0-10 arity)
%            Number of variables   : 8000 (   9 sgn;7674   !; 326   ?)
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
%------------------------------------------------------------------------------
fof(abstractness_v3_lattices,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( v3_lattices(A)
       => A = g3_lattices(u1_struct_0(A),u2_lattices(A),u1_lattices(A)) ) ) )).

fof(cc1_eqrel_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( m1_eqrel_1(B,A)
         => ~ v1_xboole_0(B) ) ) )).

fof(cc1_filter_0,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v3_filter_0(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v14_lattices(A)
          & v3_filter_0(A) ) ) ) )).

fof(cc1_lattice2,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v1_lattice2(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v13_lattices(A)
          & v3_filter_0(A) ) ) ) )).

fof(cc2_eqrel_1,axiom,(
    ! [A,B] :
      ( m1_eqrel_1(B,A)
     => v1_setfam_1(B) ) )).

fof(cc2_filter_0,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v3_filter_0(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v11_lattices(A)
          & v3_filter_0(A) ) ) ) )).

fof(cc2_lattice2,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v13_lattices(A)
          & v3_filter_0(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v1_lattice2(A) ) ) ) )).

fof(cc3_filter_0,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v17_lattices(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v17_lattices(A)
          & v3_filter_0(A) ) ) ) )).

fof(cc3_lattice2,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v8_struct_0(A)
          & v10_lattices(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v13_lattices(A) ) ) ) )).

fof(cc4_filter_0,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v3_filter_0(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v11_lattices(A) ) ) ) )).

fof(cc4_lattice2,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v8_struct_0(A)
          & v10_lattices(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v14_lattices(A) ) ) ) )).

fof(cc5_lattice2,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v8_struct_0(A)
          & v10_lattices(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v15_lattices(A) ) ) ) )).

fof(cc6_lattice2,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( ( ~ v2_struct_0(A)
          & v8_struct_0(A)
          & v10_lattices(A)
          & v11_lattices(A) )
       => ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v1_lattice2(A) ) ) ) )).

fof(d11_binop_1,axiom,(
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,k2_zfmisc_1(A,A),A)
            & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
         => ( r6_binop_1(A,B,C)
          <=> ( r4_binop_1(A,B,C)
              & r5_binop_1(A,B,C) ) ) ) ) )).

fof(d11_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k7_filter_0(A,B,C) = k4_lattices(A,k4_filter_0(A,B,C),k4_filter_0(A,C,B)) ) ) ) )).

fof(d12_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( v1_relat_1(C)
             => ( C = k8_filter_0(A,B)
              <=> ( r1_tarski(k3_relat_1(C),u1_struct_0(A))
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ( r2_hidden(k1_domain_1(u1_struct_0(A),u1_struct_0(A),D,E),C)
                          <=> r2_hidden(k7_filter_0(A,D,E),B) ) ) ) ) ) ) ) ) )).

fof(d12_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ( v12_lattices(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r1_lattices(A,B,D)
                     => k1_lattices(A,B,k2_lattices(A,C,D)) = k2_lattices(A,k1_lattices(A,B,C),D) ) ) ) ) ) ) )).

fof(d13_binop_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,k2_zfmisc_1(A,A),A)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
         => ( v1_binop_1(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,A)
               => ! [D] :
                    ( m1_subset_1(D,A)
                   => k2_binop_1(A,A,A,B,C,D) = k2_binop_1(A,A,A,B,D,C) ) ) ) ) ) )).

fof(d13_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_lattices(A) )
     => ( v13_lattices(A)
      <=> ? [B] :
            ( m1_subset_1(B,u1_struct_0(A))
            & ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( k2_lattices(A,B,C) = B
                  & k2_lattices(A,C,B) = B ) ) ) ) ) )).

fof(d14_binop_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,k2_zfmisc_1(A,A),A)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
         => ( v2_binop_1(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,A)
               => ! [D] :
                    ( m1_subset_1(D,A)
                   => ! [E] :
                        ( m1_subset_1(E,A)
                       => k2_binop_1(A,A,A,B,C,k2_binop_1(A,A,A,B,D,E)) = k2_binop_1(A,A,A,B,k2_binop_1(A,A,A,B,C,D),E) ) ) ) ) ) ) )).

fof(d14_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l2_lattices(A) )
     => ( v14_lattices(A)
      <=> ? [B] :
            ( m1_subset_1(B,u1_struct_0(A))
            & ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( k1_lattices(A,B,C) = B
                  & k1_lattices(A,C,B) = B ) ) ) ) ) )).

fof(d15_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ( v15_lattices(A)
      <=> ( v13_lattices(A)
          & v14_lattices(A) ) ) ) )).

fof(d16_binop_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ( r1_binop_1(A,B,C)
              <=> ! [D] :
                    ( m1_subset_1(D,A)
                   => k2_binop_1(A,A,A,C,B,D) = D ) ) ) ) ) )).

fof(d17_binop_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ( r2_binop_1(A,B,C)
              <=> ! [D] :
                    ( m1_subset_1(D,A)
                   => k2_binop_1(A,A,A,C,D,B) = D ) ) ) ) ) )).

fof(d18_binop_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,k2_zfmisc_1(A,A),A)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ( r4_binop_1(A,B,C)
              <=> ! [D] :
                    ( m1_subset_1(D,A)
                   => ! [E] :
                        ( m1_subset_1(E,A)
                       => ! [F] :
                            ( m1_subset_1(F,A)
                           => k2_binop_1(A,A,A,B,D,k2_binop_1(A,A,A,C,E,F)) = k2_binop_1(A,A,A,C,k2_binop_1(A,A,A,B,D,E),k2_binop_1(A,A,A,B,D,F)) ) ) ) ) ) ) ) )).

fof(d19_binop_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,k2_zfmisc_1(A,A),A)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ( r5_binop_1(A,B,C)
              <=> ! [D] :
                    ( m1_subset_1(D,A)
                   => ! [E] :
                        ( m1_subset_1(E,A)
                       => ! [F] :
                            ( m1_subset_1(F,A)
                           => k2_binop_1(A,A,A,B,k2_binop_1(A,A,A,C,D,E),F) = k2_binop_1(A,A,A,C,k2_binop_1(A,A,A,B,D,F),k2_binop_1(A,A,A,B,E,F)) ) ) ) ) ) ) ) )).

fof(d19_lattices,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ( v16_lattices(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & r2_lattices(A,C,B) ) ) ) ) )).

fof(d1_binop_1,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B,C] : k1_binop_1(A,B,C) = k1_funct_1(A,k4_tarski(B,C)) ) )).

fof(d1_lattice2,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,k2_zfmisc_1(A,A),A)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ( r1_lattice2(A,B,C)
              <=> ! [D] :
                    ( m1_subset_1(D,A)
                   => ! [E] :
                        ( m1_subset_1(E,A)
                       => k4_binop_1(A,B,D,k4_binop_1(A,C,D,E)) = D ) ) ) ) ) ) )).

fof(d2_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ( m2_filter_1(C,A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,A)
                   => ! [E] :
                        ( m1_subset_1(E,A)
                       => ! [F] :
                            ( m1_subset_1(F,A)
                           => ! [G] :
                                ( m1_subset_1(G,A)
                               => ( ( r2_hidden(k1_domain_1(A,A,D,E),B)
                                    & r2_hidden(k1_domain_1(A,A,F,G),B) )
                                 => r2_hidden(k1_domain_1(A,A,k4_binop_1(A,C,D,F),k4_binop_1(A,C,E,G)),B) ) ) ) ) ) ) ) ) ) )).

fof(d2_lattice2,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => k1_lattice2(A) = g3_lattices(u1_struct_0(A),u1_lattices(A),u2_lattices(A)) ) )).

fof(d3_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k2_filter_0(A,B) = a_2_0_filter_0(A,B) ) ) )).

fof(d4_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ( m2_filter_1(C,A,B)
               => ! [D] :
                    ( ( v1_funct_1(D)
                      & v1_funct_2(D,k2_zfmisc_1(k8_eqrel_1(A,B),k8_eqrel_1(A,B)),k8_eqrel_1(A,B))
                      & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k8_eqrel_1(A,B),k8_eqrel_1(A,B)),k8_eqrel_1(A,B)))) )
                   => ( D = k3_filter_1(A,B,C)
                    <=> ! [E,F,G,H] :
                          ( ( r2_hidden(E,k8_eqrel_1(A,B))
                            & r2_hidden(F,k8_eqrel_1(A,B))
                            & r2_hidden(G,E)
                            & r2_hidden(H,F) )
                         => k1_binop_1(D,E,F) = k6_eqrel_1(A,A,B,k1_binop_1(C,G,H)) ) ) ) ) ) ) ) )).

fof(d5_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & v3_filter_0(A)
              & l3_lattices(A) )
           => ! [C] :
                ( ( ~ v2_struct_0(C)
                  & v3_lattices(C)
                  & v10_lattices(C)
                  & l3_lattices(C) )
               => ( C = k4_filter_1(A,B)
                <=> ! [D] :
                      ( ( v1_partfun1(D,u1_struct_0(A))
                        & v3_relat_2(D)
                        & v8_relat_2(D)
                        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) )
                     => ( D = k8_filter_0(A,B)
                       => C = g3_lattices(k8_eqrel_1(u1_struct_0(A),D),k3_filter_1(u1_struct_0(A),D,u2_lattices(A)),k3_filter_1(u1_struct_0(A),D,u1_lattices(A))) ) ) ) ) ) ) ) )).

fof(d5_funct_3,axiom,(
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( C = k7_funct_3(A,B)
      <=> ( k1_relat_1(C) = k2_zfmisc_1(A,B)
          & ! [D,E] :
              ( ( r2_hidden(D,A)
                & r2_hidden(E,B) )
             => k1_binop_1(C,D,E) = D ) ) ) ) )).

fof(d6_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( ~ v2_struct_0(A)
                  & v10_lattices(A)
                  & v3_filter_0(A)
                  & l3_lattices(A) )
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(k4_filter_1(A,B)))
                   => ( D = k5_filter_1(A,B,C)
                    <=> ! [E] :
                          ( ( v1_partfun1(E,u1_struct_0(A))
                            & v3_relat_2(E)
                            & v8_relat_2(E)
                            & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) )
                         => ( E = k8_filter_0(A,B)
                           => D = k6_eqrel_1(u1_struct_0(A),u1_struct_0(A),E,C) ) ) ) ) ) ) ) ) )).

fof(d6_funct_3,axiom,(
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( C = k8_funct_3(A,B)
      <=> ( k1_relat_1(C) = k2_zfmisc_1(A,B)
          & ! [D,E] :
              ( ( r2_hidden(D,A)
                & r2_hidden(E,B) )
             => k1_binop_1(C,D,E) = E ) ) ) ) )).

fof(d7_binop_1,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,k2_zfmisc_1(A,A),A)
            & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
         => ( r3_binop_1(A,B,C)
          <=> ( r1_binop_1(A,B,C)
              & r2_binop_1(A,B,C) ) ) ) ) )).

fof(d7_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ( v3_filter_0(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ? [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                    & r1_lattices(A,k2_lattices(A,B,D),C)
                    & ! [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                       => ( r1_lattices(A,k2_lattices(A,B,E),C)
                         => r1_lattices(A,E,D) ) ) ) ) ) ) ) )).

fof(d7_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l3_lattices(B) )
         => k7_filter_1(A,B) = g3_lattices(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)),k6_filter_1(u1_struct_0(A),u1_struct_0(B),u2_lattices(A),u2_lattices(B)),k6_filter_1(u1_struct_0(A),u1_struct_0(B),u1_lattices(A),u1_lattices(B))) ) ) )).

fof(d8_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( ~ v2_struct_0(A)
                  & v10_lattices(A)
                  & v3_filter_0(A)
                  & l3_lattices(A) )
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( D = k4_filter_0(A,B,C)
                    <=> ( r3_lattices(A,k4_lattices(A,B,D),C)
                        & ! [E] :
                            ( m1_subset_1(E,u1_struct_0(A))
                           => ( r3_lattices(A,k4_lattices(A,B,E),C)
                             => r3_lattices(A,E,D) ) ) ) ) ) ) ) ) ) )).

fof(d8_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => k8_filter_1(A) = a_1_0_filter_1(A) ) )).

fof(d8_funct_3,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( C = k13_funct_3(A,B)
              <=> ( k1_relat_1(C) = k3_xboole_0(k1_relat_1(A),k1_relat_1(B))
                  & ! [D] :
                      ( r2_hidden(D,k1_relat_1(C))
                     => k1_funct_1(C,D) = k4_tarski(k1_funct_1(A,D),k1_funct_1(B,D)) ) ) ) ) ) ) )).

fof(d9_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( r1_filter_1(A,B)
          <=> r4_wellord1(k8_filter_1(A),k8_filter_1(B)) ) ) ) )).

fof(dt_g3_lattices,axiom,(
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
     => ( v3_lattices(g3_lattices(A,B,C))
        & l3_lattices(g3_lattices(A,B,C)) ) ) )).

fof(dt_k10_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v3_relat_2(k10_filter_0(A,B))
        & v8_relat_2(k10_filter_0(A,B))
        & v1_partfun1(k10_filter_0(A,B),u1_struct_0(A))
        & m1_subset_1(k10_filter_0(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) ) ) )).

fof(dt_k10_funct_3,axiom,(
    ! [A,B] :
      ( v1_funct_1(k10_funct_3(A,B))
      & v1_funct_2(k10_funct_3(A,B),k2_zfmisc_1(A,B),B)
      & m1_subset_1(k10_funct_3(A,B),k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,B),B))) ) )).

fof(dt_k13_funct_3,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_relat_1(k13_funct_3(A,B))
        & v1_funct_1(k13_funct_3(A,B)) ) ) )).

fof(dt_k14_funct_3,axiom,(
    ! [A,B,C,D,E] :
      ( ( ~ v1_xboole_0(B)
        & ~ v1_xboole_0(C)
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(E)
        & v1_funct_2(E,A,C)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,C))) )
     => ( v1_funct_1(k14_funct_3(A,B,C,D,E))
        & v1_funct_2(k14_funct_3(A,B,C,D,E),A,k2_zfmisc_1(B,C))
        & m1_subset_1(k14_funct_3(A,B,C,D,E),k1_zfmisc_1(k2_zfmisc_1(A,k2_zfmisc_1(B,C)))) ) ) )).

fof(dt_k1_lattice2,axiom,(
    ! [A] :
      ( l3_lattices(A)
     => ( v3_lattices(k1_lattice2(A))
        & l3_lattices(k1_lattice2(A)) ) ) )).

fof(dt_k2_binop_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(A,B),C)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,B),C)))
        & m1_subset_1(E,A)
        & m1_subset_1(F,B) )
     => m1_subset_1(k2_binop_1(A,B,C,D,E,F),C) ) )).

fof(dt_k2_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( ~ v1_xboole_0(k2_filter_0(A,B))
        & v19_lattices(k2_filter_0(A,B),A)
        & v20_lattices(k2_filter_0(A,B),A)
        & m1_subset_1(k2_filter_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) ) )).

fof(dt_k3_filter_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v1_partfun1(B,A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
     => ( v1_funct_1(k3_filter_1(A,B,C))
        & v1_funct_2(k3_filter_1(A,B,C),k2_zfmisc_1(k8_eqrel_1(A,B),k8_eqrel_1(A,B)),k8_eqrel_1(A,B))
        & m1_subset_1(k3_filter_1(A,B,C),k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k8_eqrel_1(A,B),k8_eqrel_1(A,B)),k8_eqrel_1(A,B)))) ) ) )).

fof(dt_k3_funct_4,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_relat_1(k3_funct_4(A,B))
        & v1_funct_1(k3_funct_4(A,B)) ) ) )).

fof(dt_k4_filter_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k4_filter_0(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k4_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( ~ v2_struct_0(k4_filter_1(A,B))
        & v3_lattices(k4_filter_1(A,B))
        & v10_lattices(k4_filter_1(A,B))
        & l3_lattices(k4_filter_1(A,B)) ) ) )).

fof(dt_k5_filter_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k5_filter_1(A,B,C),u1_struct_0(k4_filter_1(A,B))) ) )).

fof(dt_k6_eqrel_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => m1_subset_1(k6_eqrel_1(A,B,C,D),k1_zfmisc_1(B)) ) )).

fof(dt_k6_filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => ( v1_funct_1(k6_filter_1(A,B,C,D))
        & v1_funct_2(k6_filter_1(A,B,C,D),k2_zfmisc_1(k2_zfmisc_1(A,B),k2_zfmisc_1(A,B)),k2_zfmisc_1(A,B))
        & m1_subset_1(k6_filter_1(A,B,C,D),k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,B),k2_zfmisc_1(A,B)),k2_zfmisc_1(A,B)))) ) ) )).

fof(dt_k7_eqrel_1,axiom,(
    ! [A,B] :
      ( ( v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => m1_subset_1(k7_eqrel_1(A,B),k1_zfmisc_1(k1_zfmisc_1(A))) ) )).

fof(dt_k7_filter_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k7_filter_0(A,B,C),u1_struct_0(A)) ) )).

fof(dt_k7_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & l3_lattices(B) )
     => ( v3_lattices(k7_filter_1(A,B))
        & l3_lattices(k7_filter_1(A,B)) ) ) )).

fof(dt_k8_eqrel_1,axiom,(
    ! [A,B] :
      ( ( v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => m1_eqrel_1(k8_eqrel_1(A,B),A) ) )).

fof(dt_k8_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v1_relat_1(k8_filter_0(A,B)) ) )).

fof(dt_k8_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => v1_relat_1(k8_filter_1(A)) ) )).

fof(dt_k8_funct_3,axiom,(
    ! [A,B] :
      ( v1_relat_1(k8_funct_3(A,B))
      & v1_funct_1(k8_funct_3(A,B)) ) )).

fof(dt_k9_eqrel_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m1_subset_1(C,A) )
     => m2_subset_1(k9_eqrel_1(A,B,C),k1_zfmisc_1(A),k8_eqrel_1(A,B)) ) )).

fof(dt_k9_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v3_relat_2(k9_filter_0(A,B))
        & v8_relat_2(k9_filter_0(A,B))
        & v1_partfun1(k9_filter_0(A,B),u1_struct_0(A))
        & m1_subset_1(k9_filter_0(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)))) ) ) )).

fof(dt_k9_filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(B)) )
     => m1_subset_1(k9_filter_1(A,B,C,D),u1_struct_0(k7_filter_1(A,B))) ) )).

fof(dt_m1_eqrel_1,axiom,(
    ! [A,B] :
      ( m1_eqrel_1(B,A)
     => m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A))) ) )).

fof(dt_m2_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & v1_relat_1(B) )
     => ! [C] :
          ( m2_filter_1(C,A,B)
         => ( v1_funct_1(C)
            & v1_funct_2(C,k2_zfmisc_1(A,A),A)
            & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) ) ) ) )).

fof(dt_o_1_1_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => m1_subset_1(o_1_1_filter_1(A),A) ) )).

fof(dt_o_1_2_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => m1_subset_1(o_1_2_filter_1(A),u1_struct_0(A)) ) )).

fof(dt_o_1_3_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v15_lattices(A)
        & l3_lattices(A) )
     => m1_subset_1(o_1_3_filter_1(A),u1_struct_0(A)) ) )).

fof(existence_m1_eqrel_1,axiom,(
    ! [A] :
    ? [B] : m1_eqrel_1(B,A) )).

fof(existence_m2_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & v1_relat_1(B) )
     => ? [C] : m2_filter_1(C,A,B) ) )).

fof(fc10_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v14_lattices(A)
        & l3_lattices(A) )
     => ( v1_funct_1(u1_lattices(A))
        & v1_funct_2(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_setwiseo(u1_lattices(A),u1_struct_0(A)) ) ) )).

fof(fc1_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( ~ v2_struct_0(k4_filter_1(A,B))
        & v3_lattices(k4_filter_1(A,B))
        & v10_lattices(k4_filter_1(A,B))
        & v3_filter_0(k4_filter_1(A,B)) ) ) )).

fof(fc1_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ( ~ v2_struct_0(k1_lattice2(A))
        & v3_lattices(k1_lattice2(A)) ) ) )).

fof(fc2_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & l3_lattices(B) )
     => ( ~ v2_struct_0(k7_filter_1(A,B))
        & v3_lattices(k7_filter_1(A,B)) ) ) )).

fof(fc2_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ( v1_funct_1(u2_lattices(A))
        & v1_funct_2(u2_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v3_binop_1(u2_lattices(A),u1_struct_0(A)) ) ) )).

fof(fc3_eqrel_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => ~ v1_xboole_0(k7_eqrel_1(A,B)) ) )).

fof(fc3_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B) )
     => ( v3_lattices(k7_filter_1(A,B))
        & v10_lattices(k7_filter_1(A,B)) ) ) )).

fof(fc3_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_lattices(A)
        & l2_lattices(A) )
     => ( v1_funct_1(u2_lattices(A))
        & v1_funct_2(u2_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_binop_1(u2_lattices(A),u1_struct_0(A)) ) ) )).

fof(fc3_lattices,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
     => ( ~ v2_struct_0(g3_lattices(A,B,C))
        & v3_lattices(g3_lattices(A,B,C)) ) ) )).

fof(fc4_eqrel_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => v1_setfam_1(k7_eqrel_1(A,B)) ) )).

fof(fc4_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v5_lattices(A)
        & l2_lattices(A) )
     => ( v1_funct_1(u2_lattices(A))
        & v1_funct_2(u2_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v2_binop_1(u2_lattices(A),u1_struct_0(A)) ) ) )).

fof(fc5_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ( v1_funct_1(u1_lattices(A))
        & v1_funct_2(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v3_binop_1(u1_lattices(A),u1_struct_0(A)) ) ) )).

fof(fc6_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v6_lattices(A)
        & l1_lattices(A) )
     => ( v1_funct_1(u1_lattices(A))
        & v1_funct_2(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_binop_1(u1_lattices(A),u1_struct_0(A)) ) ) )).

fof(fc7_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v7_lattices(A)
        & l1_lattices(A) )
     => ( v1_funct_1(u1_lattices(A))
        & v1_funct_2(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v2_binop_1(u1_lattices(A),u1_struct_0(A)) ) ) )).

fof(fc8_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ( v3_lattices(k1_lattice2(A))
        & v10_lattices(k1_lattice2(A)) ) ) )).

fof(fc9_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v13_lattices(A)
        & l3_lattices(A) )
     => ( v1_funct_1(u2_lattices(A))
        & v1_funct_2(u2_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_setwiseo(u2_lattices(A),u1_struct_0(A)) ) ) )).

fof(fraenkel_a_1_0_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B) )
     => ( r2_hidden(A,a_1_0_filter_1(B))
      <=> ? [C,D] :
            ( m1_subset_1(C,u1_struct_0(B))
            & m1_subset_1(D,u1_struct_0(B))
            & A = k1_domain_1(u1_struct_0(B),u1_struct_0(B),C,D)
            & r3_lattices(B,C,D) ) ) ) )).

fof(fraenkel_a_2_0_filter_0,axiom,(
    ! [A,B,C] :
      ( ( ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B)
        & m1_subset_1(C,u1_struct_0(B)) )
     => ( r2_hidden(A,a_2_0_filter_0(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & r3_lattices(B,C,D) ) ) ) )).

fof(free_g3_lattices,axiom,(
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
     => ! [D,E,F] :
          ( g3_lattices(A,B,C) = g3_lattices(D,E,F)
         => ( A = D
            & B = E
            & C = F ) ) ) )).

fof(rc10_lattices,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & ~ v2_struct_0(A)
      & v3_lattices(A)
      & v4_lattices(A)
      & v5_lattices(A)
      & v6_lattices(A)
      & v7_lattices(A)
      & v8_lattices(A)
      & v9_lattices(A)
      & v10_lattices(A)
      & v11_lattices(A)
      & v12_lattices(A)
      & v13_lattices(A)
      & v14_lattices(A) ) )).

fof(rc11_lattices,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & ~ v2_struct_0(A)
      & v3_lattices(A)
      & v4_lattices(A)
      & v5_lattices(A)
      & v6_lattices(A)
      & v7_lattices(A)
      & v8_lattices(A)
      & v9_lattices(A)
      & v10_lattices(A)
      & v15_lattices(A) ) )).

fof(rc12_lattices,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & ~ v2_struct_0(A)
      & v3_lattices(A)
      & v4_lattices(A)
      & v5_lattices(A)
      & v6_lattices(A)
      & v7_lattices(A)
      & v8_lattices(A)
      & v9_lattices(A)
      & v10_lattices(A)
      & v15_lattices(A)
      & v16_lattices(A) ) )).

fof(rc13_lattices,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & ~ v2_struct_0(A)
      & v3_lattices(A)
      & v4_lattices(A)
      & v5_lattices(A)
      & v6_lattices(A)
      & v7_lattices(A)
      & v8_lattices(A)
      & v9_lattices(A)
      & v10_lattices(A)
      & v17_lattices(A) ) )).

fof(rc1_filter_0,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & ~ v2_struct_0(A)
      & v3_lattices(A)
      & v4_lattices(A)
      & v5_lattices(A)
      & v6_lattices(A)
      & v7_lattices(A)
      & v8_lattices(A)
      & v9_lattices(A)
      & v10_lattices(A)
      & v3_filter_0(A) ) )).

fof(rc1_lattice2,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & ~ v2_struct_0(A)
      & v4_lattices(A)
      & v5_lattices(A)
      & v6_lattices(A)
      & v7_lattices(A)
      & v8_lattices(A)
      & v9_lattices(A)
      & v10_lattices(A)
      & v1_lattice2(A) ) )).

fof(rc2_eqrel_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_eqrel_1(B,A)
          & ~ v1_xboole_0(B)
          & v1_setfam_1(B) ) ) )).

fof(rc2_lattice2,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & ~ v2_struct_0(A)
      & v3_lattices(A)
      & v4_lattices(A)
      & v5_lattices(A)
      & v6_lattices(A)
      & v7_lattices(A)
      & v8_lattices(A)
      & v9_lattices(A)
      & v10_lattices(A)
      & v1_lattice2(A) ) )).

fof(rc3_lattices,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & v3_lattices(A) ) )).

fof(rc4_eqrel_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_eqrel_1(B,A)
          & ~ v1_xboole_0(B)
          & v1_setfam_1(B) ) ) )).

fof(rc6_lattices,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & ~ v2_struct_0(A)
      & v3_lattices(A) ) )).

fof(rc9_lattices,axiom,(
    ? [A] :
      ( l3_lattices(A)
      & ~ v2_struct_0(A)
      & v3_lattices(A)
      & v10_lattices(A) ) )).

fof(redefinition_k10_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => k10_filter_0(A,B) = k8_filter_0(A,B) ) )).

fof(redefinition_k10_funct_3,axiom,(
    ! [A,B] : k10_funct_3(A,B) = k8_funct_3(A,B) )).

fof(redefinition_k14_funct_3,axiom,(
    ! [A,B,C,D,E] :
      ( ( ~ v1_xboole_0(B)
        & ~ v1_xboole_0(C)
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(E)
        & v1_funct_2(E,A,C)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,C))) )
     => k14_funct_3(A,B,C,D,E) = k13_funct_3(D,E) ) )).

fof(redefinition_k2_binop_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(A,B),C)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,B),C)))
        & m1_subset_1(E,A)
        & m1_subset_1(F,B) )
     => k2_binop_1(A,B,C,D,E,F) = k1_binop_1(D,E,F) ) )).

fof(redefinition_k6_eqrel_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => k6_eqrel_1(A,B,C,D) = k11_relat_1(C,D) ) )).

fof(redefinition_k6_filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => k6_filter_1(A,B,C,D) = k3_funct_4(C,D) ) )).

fof(redefinition_k8_eqrel_1,axiom,(
    ! [A,B] :
      ( ( v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => k8_eqrel_1(A,B) = k7_eqrel_1(A,B) ) )).

fof(redefinition_k9_eqrel_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m1_subset_1(C,A) )
     => k9_eqrel_1(A,B,C) = k11_relat_1(B,C) ) )).

fof(redefinition_k9_filter_0,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & v19_lattices(B,A)
        & v20_lattices(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => k9_filter_0(A,B) = k8_filter_0(A,B) ) )).

fof(redefinition_k9_filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(B)) )
     => k9_filter_1(A,B,C,D) = k4_tarski(C,D) ) )).

fof(reflexivity_r1_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B) )
     => r1_filter_1(A,A) ) )).

fof(s1_filter_1__e3_14__filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_partfun1(B,A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m1_subset_1(C,A)
        & m2_filter_1(D,A,B) )
     => ( ! [E] :
            ( m1_subset_1(E,A)
           => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k9_eqrel_1(A,B,C),k9_eqrel_1(A,B,E)) = k9_eqrel_1(A,B,E) )
       => ! [E] :
            ( m2_subset_1(E,k1_zfmisc_1(A),k8_eqrel_1(A,B))
           => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k9_eqrel_1(A,B,C),E) = E ) ) ) )).

fof(s1_filter_1__e3_15__filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_partfun1(B,A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m1_subset_1(C,A)
        & m2_filter_1(D,A,B) )
     => ( ! [E] :
            ( m1_subset_1(E,A)
           => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k9_eqrel_1(A,B,E),k9_eqrel_1(A,B,C)) = k9_eqrel_1(A,B,E) )
       => ! [E] :
            ( m2_subset_1(E,k1_zfmisc_1(A),k8_eqrel_1(A,B))
           => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),E,k9_eqrel_1(A,B,C)) = E ) ) ) )).

fof(s2_filter_1__e3_12__filter_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v1_partfun1(B,A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m2_filter_1(C,A,B) )
     => ( ! [D] :
            ( m1_subset_1(D,A)
           => ! [E] :
                ( m1_subset_1(E,A)
               => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,D),k9_eqrel_1(A,B,E)) = k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,E),k9_eqrel_1(A,B,D)) ) )
       => ! [D] :
            ( m2_subset_1(D,k1_zfmisc_1(A),k8_eqrel_1(A,B))
           => ! [E] :
                ( m2_subset_1(E,k1_zfmisc_1(A),k8_eqrel_1(A,B))
               => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),D,E) = k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),E,D) ) ) ) ) )).

fof(s2_filter_1__e3_20__filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_partfun1(B,A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m2_filter_1(C,A,B)
        & m2_filter_1(D,A,B) )
     => ( ! [E] :
            ( m1_subset_1(E,A)
           => ! [F] :
                ( m1_subset_1(F,A)
               => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,E),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k9_eqrel_1(A,B,E),k9_eqrel_1(A,B,F))) = k9_eqrel_1(A,B,E) ) )
       => ! [E] :
            ( m2_subset_1(E,k1_zfmisc_1(A),k8_eqrel_1(A,B))
           => ! [F] :
                ( m2_subset_1(F,k1_zfmisc_1(A),k8_eqrel_1(A,B))
               => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),E,k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),E,F)) = E ) ) ) ) )).

fof(s3_filter_1__e3_13__filter_1,axiom,(
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v1_partfun1(B,A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m2_filter_1(C,A,B) )
     => ( ! [D] :
            ( m1_subset_1(D,A)
           => ! [E] :
                ( m1_subset_1(E,A)
               => ! [F] :
                    ( m1_subset_1(F,A)
                   => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,D),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,E),k9_eqrel_1(A,B,F))) = k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,D),k9_eqrel_1(A,B,E)),k9_eqrel_1(A,B,F)) ) ) )
       => ! [D] :
            ( m2_subset_1(D,k1_zfmisc_1(A),k8_eqrel_1(A,B))
           => ! [E] :
                ( m2_subset_1(E,k1_zfmisc_1(A),k8_eqrel_1(A,B))
               => ! [F] :
                    ( m2_subset_1(F,k1_zfmisc_1(A),k8_eqrel_1(A,B))
                   => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),D,k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),E,F)) = k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),D,E),F) ) ) ) ) ) )).

fof(s3_filter_1__e3_17__filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_partfun1(B,A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m2_filter_1(C,A,B)
        & m2_filter_1(D,A,B) )
     => ( ! [E] :
            ( m1_subset_1(E,A)
           => ! [F] :
                ( m1_subset_1(F,A)
               => ! [G] :
                    ( m1_subset_1(G,A)
                   => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,E),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k9_eqrel_1(A,B,F),k9_eqrel_1(A,B,G))) = k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,E),k9_eqrel_1(A,B,F)),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,E),k9_eqrel_1(A,B,G))) ) ) )
       => ! [E] :
            ( m2_subset_1(E,k1_zfmisc_1(A),k8_eqrel_1(A,B))
           => ! [F] :
                ( m2_subset_1(F,k1_zfmisc_1(A),k8_eqrel_1(A,B))
               => ! [G] :
                    ( m2_subset_1(G,k1_zfmisc_1(A),k8_eqrel_1(A,B))
                   => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),E,k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),F,G)) = k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),E,F),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),E,G)) ) ) ) ) ) )).

fof(s3_filter_1__e3_18__filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_partfun1(B,A)
        & v3_relat_2(B)
        & v8_relat_2(B)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A)))
        & m2_filter_1(C,A,B)
        & m2_filter_1(D,A,B) )
     => ( ! [E] :
            ( m1_subset_1(E,A)
           => ! [F] :
                ( m1_subset_1(F,A)
               => ! [G] :
                    ( m1_subset_1(G,A)
                   => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k9_eqrel_1(A,B,E),k9_eqrel_1(A,B,F)),k9_eqrel_1(A,B,G)) = k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,E),k9_eqrel_1(A,B,G)),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k9_eqrel_1(A,B,F),k9_eqrel_1(A,B,G))) ) ) )
       => ! [E] :
            ( m2_subset_1(E,k1_zfmisc_1(A),k8_eqrel_1(A,B))
           => ! [F] :
                ( m2_subset_1(F,k1_zfmisc_1(A),k8_eqrel_1(A,B))
               => ! [G] :
                    ( m2_subset_1(G,k1_zfmisc_1(A),k8_eqrel_1(A,B))
                   => k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),E,F),G) = k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,D),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),E,G),k4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),F,G)) ) ) ) ) ) )).

fof(s4_filter_1__e4_40_1__filter_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(C,A)
        & m1_subset_1(D,B)
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(A,A),A)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(F)
        & v1_funct_2(F,k2_zfmisc_1(B,B),B)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => ( ! [G] :
            ( m1_subset_1(G,A)
           => ! [H] :
                ( m1_subset_1(H,B)
               => k1_binop_1(k6_filter_1(A,B,E,F),k1_domain_1(A,B,C,D),k1_domain_1(A,B,G,H)) = k1_domain_1(A,B,G,H) ) )
       => ! [G] :
            ( m1_subset_1(G,k2_zfmisc_1(A,B))
           => k1_binop_1(k6_filter_1(A,B,E,F),k1_domain_1(A,B,C,D),G) = G ) ) ) )).

fof(s4_filter_1__e4_41_1__filter_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(C,A)
        & m1_subset_1(D,B)
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(A,A),A)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(F)
        & v1_funct_2(F,k2_zfmisc_1(B,B),B)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => ( ! [G] :
            ( m1_subset_1(G,A)
           => ! [H] :
                ( m1_subset_1(H,B)
               => k1_binop_1(k6_filter_1(A,B,E,F),k1_domain_1(A,B,G,H),k1_domain_1(A,B,C,D)) = k1_domain_1(A,B,G,H) ) )
       => ! [G] :
            ( m1_subset_1(G,k2_zfmisc_1(A,B))
           => k1_binop_1(k6_filter_1(A,B,E,F),G,k1_domain_1(A,B,C,D)) = G ) ) ) )).

fof(s5_filter_1__e4_38_1__filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => ( ! [E] :
            ( m1_subset_1(E,A)
           => ! [F] :
                ( m1_subset_1(F,A)
               => ! [G] :
                    ( m1_subset_1(G,B)
                   => ! [H] :
                        ( m1_subset_1(H,B)
                       => k1_binop_1(k6_filter_1(A,B,C,D),k1_domain_1(A,B,E,G),k1_domain_1(A,B,F,H)) = k1_binop_1(k6_filter_1(A,B,C,D),k1_domain_1(A,B,F,H),k1_domain_1(A,B,E,G)) ) ) ) )
       => ! [E] :
            ( m1_subset_1(E,k2_zfmisc_1(A,B))
           => ! [F] :
                ( m1_subset_1(F,k2_zfmisc_1(A,B))
               => k1_binop_1(k6_filter_1(A,B,C,D),E,F) = k1_binop_1(k6_filter_1(A,B,C,D),F,E) ) ) ) ) )).

fof(s5_filter_1__e4_46_1__filter_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(A,A),A)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(B,B),B)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B)))
        & v1_funct_1(F)
        & v1_funct_2(F,k2_zfmisc_1(B,B),B)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => ( ! [G] :
            ( m1_subset_1(G,A)
           => ! [H] :
                ( m1_subset_1(H,A)
               => ! [I] :
                    ( m1_subset_1(I,B)
                   => ! [J] :
                        ( m1_subset_1(J,B)
                       => k1_binop_1(k6_filter_1(A,B,C,E),k1_domain_1(A,B,G,I),k1_binop_1(k6_filter_1(A,B,D,F),k1_domain_1(A,B,G,I),k1_domain_1(A,B,H,J))) = k1_domain_1(A,B,G,I) ) ) ) )
       => ! [G] :
            ( m1_subset_1(G,k2_zfmisc_1(A,B))
           => ! [H] :
                ( m1_subset_1(H,k2_zfmisc_1(A,B))
               => k1_binop_1(k6_filter_1(A,B,C,E),G,k1_binop_1(k6_filter_1(A,B,D,F),G,H)) = G ) ) ) ) )).

fof(s6_filter_1__e4_39_1__filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => ( ! [E] :
            ( m1_subset_1(E,A)
           => ! [F] :
                ( m1_subset_1(F,A)
               => ! [G] :
                    ( m1_subset_1(G,A)
                   => ! [H] :
                        ( m1_subset_1(H,B)
                       => ! [I] :
                            ( m1_subset_1(I,B)
                           => ! [J] :
                                ( m1_subset_1(J,B)
                               => k1_binop_1(k6_filter_1(A,B,C,D),k1_domain_1(A,B,E,H),k1_binop_1(k6_filter_1(A,B,C,D),k1_domain_1(A,B,F,I),k1_domain_1(A,B,G,J))) = k1_binop_1(k6_filter_1(A,B,C,D),k1_binop_1(k6_filter_1(A,B,C,D),k1_domain_1(A,B,E,H),k1_domain_1(A,B,F,I)),k1_domain_1(A,B,G,J)) ) ) ) ) ) )
       => ! [E] :
            ( m1_subset_1(E,k2_zfmisc_1(A,B))
           => ! [F] :
                ( m1_subset_1(F,k2_zfmisc_1(A,B))
               => ! [G] :
                    ( m1_subset_1(G,k2_zfmisc_1(A,B))
                   => k1_binop_1(k6_filter_1(A,B,C,D),E,k1_binop_1(k6_filter_1(A,B,C,D),F,G)) = k1_binop_1(k6_filter_1(A,B,C,D),k1_binop_1(k6_filter_1(A,B,C,D),E,F),G) ) ) ) ) ) )).

fof(s6_filter_1__e4_43_1__filter_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(A,A),A)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(B,B),B)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B)))
        & v1_funct_1(F)
        & v1_funct_2(F,k2_zfmisc_1(B,B),B)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => ( ! [G] :
            ( m1_subset_1(G,A)
           => ! [H] :
                ( m1_subset_1(H,A)
               => ! [I] :
                    ( m1_subset_1(I,A)
                   => ! [J] :
                        ( m1_subset_1(J,B)
                       => ! [K] :
                            ( m1_subset_1(K,B)
                           => ! [L] :
                                ( m1_subset_1(L,B)
                               => k1_binop_1(k6_filter_1(A,B,C,E),k1_domain_1(A,B,G,J),k1_binop_1(k6_filter_1(A,B,D,F),k1_domain_1(A,B,H,K),k1_domain_1(A,B,I,L))) = k1_binop_1(k6_filter_1(A,B,D,F),k1_binop_1(k6_filter_1(A,B,C,E),k1_domain_1(A,B,G,J),k1_domain_1(A,B,H,K)),k1_binop_1(k6_filter_1(A,B,C,E),k1_domain_1(A,B,G,J),k1_domain_1(A,B,I,L))) ) ) ) ) ) )
       => ! [G] :
            ( m1_subset_1(G,k2_zfmisc_1(A,B))
           => ! [H] :
                ( m1_subset_1(H,k2_zfmisc_1(A,B))
               => ! [I] :
                    ( m1_subset_1(I,k2_zfmisc_1(A,B))
                   => k1_binop_1(k6_filter_1(A,B,C,E),G,k1_binop_1(k6_filter_1(A,B,D,F),H,I)) = k1_binop_1(k6_filter_1(A,B,D,F),k1_binop_1(k6_filter_1(A,B,C,E),G,H),k1_binop_1(k6_filter_1(A,B,C,E),G,I)) ) ) ) ) ) )).

fof(s6_filter_1__e4_44_1__filter_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(A,A),A)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(B,B),B)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B)))
        & v1_funct_1(F)
        & v1_funct_2(F,k2_zfmisc_1(B,B),B)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => ( ! [G] :
            ( m1_subset_1(G,A)
           => ! [H] :
                ( m1_subset_1(H,A)
               => ! [I] :
                    ( m1_subset_1(I,A)
                   => ! [J] :
                        ( m1_subset_1(J,B)
                       => ! [K] :
                            ( m1_subset_1(K,B)
                           => ! [L] :
                                ( m1_subset_1(L,B)
                               => k1_binop_1(k6_filter_1(A,B,C,E),k1_binop_1(k6_filter_1(A,B,D,F),k1_domain_1(A,B,H,K),k1_domain_1(A,B,I,L)),k1_domain_1(A,B,G,J)) = k1_binop_1(k6_filter_1(A,B,D,F),k1_binop_1(k6_filter_1(A,B,C,E),k1_domain_1(A,B,H,K),k1_domain_1(A,B,G,J)),k1_binop_1(k6_filter_1(A,B,C,E),k1_domain_1(A,B,I,L),k1_domain_1(A,B,G,J))) ) ) ) ) ) )
       => ! [G] :
            ( m1_subset_1(G,k2_zfmisc_1(A,B))
           => ! [H] :
                ( m1_subset_1(H,k2_zfmisc_1(A,B))
               => ! [I] :
                    ( m1_subset_1(I,k2_zfmisc_1(A,B))
                   => k1_binop_1(k6_filter_1(A,B,C,E),k1_binop_1(k6_filter_1(A,B,D,F),H,I),G) = k1_binop_1(k6_filter_1(A,B,D,F),k1_binop_1(k6_filter_1(A,B,C,E),H,G),k1_binop_1(k6_filter_1(A,B,C,E),I,G)) ) ) ) ) ) )).

fof(symmetry_r1_filter_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & ~ v2_struct_0(B)
        & v10_lattices(B)
        & l3_lattices(B) )
     => ( r1_filter_1(A,B)
       => r1_filter_1(B,A) ) ) )).

fof(t10_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( ( ~ v1_xboole_0(D)
                    & v19_lattices(D,A)
                    & v20_lattices(D,A)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A))) )
                 => ( r2_hidden(B,D)
                   => ( r2_hidden(k3_lattices(A,B,C),D)
                      & r2_hidden(k3_lattices(A,C,B),D) ) ) ) ) ) ) )).

fof(t10_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m2_filter_1(C,A,B)
             => ! [D] :
                  ( m2_filter_1(D,A,B)
                 => ( r5_binop_1(A,C,D)
                   => r5_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k3_filter_1(A,B,D)) ) ) ) ) ) )).

fof(t11_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m2_filter_1(C,A,B)
             => ! [D] :
                  ( m2_filter_1(D,A,B)
                 => ( r6_binop_1(A,C,D)
                   => r6_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k3_filter_1(A,B,D)) ) ) ) ) ) )).

fof(t12_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & v14_lattices(A)
              & l3_lattices(A) )
           => r2_hidden(k6_lattices(A),B) ) ) ) )).

fof(t12_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m2_filter_1(C,A,B)
             => ! [D] :
                  ( m2_filter_1(D,A,B)
                 => ( r1_lattice2(A,C,D)
                   => r1_lattice2(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k3_filter_1(A,B,D)) ) ) ) ) ) )).

fof(t13_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => m2_filter_1(u2_lattices(A),u1_struct_0(A),k9_filter_0(A,B)) ) ) )).

fof(t14_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => m2_filter_1(u1_lattices(A),u1_struct_0(A),k9_filter_0(A,B)) ) ) )).

fof(t15_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( k3_lattices(k4_filter_1(A,B),k5_filter_1(A,B,C),k5_filter_1(A,B,D)) = k5_filter_1(A,B,k3_lattices(A,C,D))
                    & k4_lattices(k4_filter_1(A,B),k5_filter_1(A,B,C),k5_filter_1(A,B,D)) = k5_filter_1(A,B,k4_lattices(A,C,D)) ) ) ) ) ) )).

fof(t16_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( r3_lattices(k4_filter_1(A,B),k5_filter_1(A,B,C),k5_filter_1(A,B,D))
                  <=> r2_hidden(k4_filter_0(A,C,D),B) ) ) ) ) ) )).

fof(t17_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k4_filter_0(A,k4_lattices(A,B,C),D) = k4_filter_0(A,B,k4_filter_0(A,C,D)) ) ) ) ) )).

fof(t17_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ( ( v1_binop_1(u2_lattices(A),u1_struct_0(A))
          & v2_binop_1(u2_lattices(A),u1_struct_0(A))
          & v1_binop_1(u1_lattices(A),u1_struct_0(A))
          & v2_binop_1(u1_lattices(A),u1_struct_0(A))
          & r1_lattice2(u1_struct_0(A),u2_lattices(A),u1_lattices(A))
          & r1_lattice2(u1_struct_0(A),u1_lattices(A),u2_lattices(A)) )
       => v10_lattices(A) ) ) )).

fof(t18_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(B,k2_filter_0(A,C))
              <=> r3_lattices(A,C,B) ) ) ) ) )).

fof(t18_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v13_lattices(A)
           => ( ~ v2_struct_0(k4_filter_1(A,B))
              & v10_lattices(k4_filter_1(A,B))
              & v13_lattices(k4_filter_1(A,B))
              & l3_lattices(k4_filter_1(A,B))
              & k5_lattices(k4_filter_1(A,B)) = k5_filter_1(A,B,k5_lattices(A)) ) ) ) ) )).

fof(t19_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v3_filter_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ~ v2_struct_0(k4_filter_1(A,B))
            & v10_lattices(k4_filter_1(A,B))
            & v14_lattices(k4_filter_1(A,B))
            & l3_lattices(k4_filter_1(A,B))
            & k6_lattices(k4_filter_1(A,B)) = k5_filter_1(A,B,k6_lattices(A)) ) ) ) )).

fof(t1_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & v19_lattices(C,A)
                & v20_lattices(C,A)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => ( ~ v1_xboole_0(k9_subset_1(u1_struct_0(A),B,C))
                & v19_lattices(k9_subset_1(u1_struct_0(A),B,C),A)
                & v20_lattices(k9_subset_1(u1_struct_0(A),B,C),A)
                & m1_subset_1(k9_subset_1(u1_struct_0(A),B,C),k1_zfmisc_1(u1_struct_0(A))) ) ) ) ) )).

fof(t21_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & v19_lattices(B,A)
            & v20_lattices(B,A)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ~ v2_struct_0(k4_filter_1(A,B))
            & v10_lattices(k4_filter_1(A,B))
            & v17_lattices(k4_filter_1(A,B))
            & l3_lattices(k4_filter_1(A,B)) ) ) ) )).

fof(t22_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( m1_subset_1(C,A)
             => ! [D] :
                  ( m1_subset_1(D,A)
                 => ! [E] :
                      ( m1_subset_1(E,B)
                     => ! [F] :
                          ( m1_subset_1(F,B)
                         => ! [G] :
                              ( ( v1_funct_1(G)
                                & v1_funct_2(G,k2_zfmisc_1(A,A),A)
                                & m1_subset_1(G,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
                             => ! [H] :
                                  ( ( v1_funct_1(H)
                                    & v1_funct_2(H,k2_zfmisc_1(B,B),B)
                                    & m1_subset_1(H,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                                 => k4_binop_1(k2_zfmisc_1(A,B),k6_filter_1(A,B,G,H),k1_domain_1(A,B,C,E),k1_domain_1(A,B,D,F)) = k1_domain_1(A,B,k4_binop_1(A,G,C,D),k4_binop_1(B,H,E,F)) ) ) ) ) ) ) ) ) )).

fof(t23_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,k2_zfmisc_1(B,B),B)
                    & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                 => ( ( v1_binop_1(C,A)
                      & v1_binop_1(D,B) )
                  <=> v1_binop_1(k6_filter_1(A,B,C,D),k2_zfmisc_1(A,B)) ) ) ) ) ) )).

fof(t24_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,k2_zfmisc_1(B,B),B)
                    & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                 => ( ( v2_binop_1(C,A)
                      & v2_binop_1(D,B) )
                  <=> v2_binop_1(k6_filter_1(A,B,C,D),k2_zfmisc_1(A,B)) ) ) ) ) ) )).

fof(t25_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( m1_subset_1(C,A)
             => ! [D] :
                  ( m1_subset_1(D,B)
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,k2_zfmisc_1(A,A),A)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,k2_zfmisc_1(B,B),B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                         => ( ( r1_binop_1(A,C,E)
                              & r1_binop_1(B,D,F) )
                          <=> r1_binop_1(k2_zfmisc_1(A,B),k1_domain_1(A,B,C,D),k6_filter_1(A,B,E,F)) ) ) ) ) ) ) ) )).

fof(t26_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( m1_subset_1(C,A)
             => ! [D] :
                  ( m1_subset_1(D,B)
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,k2_zfmisc_1(A,A),A)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,k2_zfmisc_1(B,B),B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                         => ( ( r2_binop_1(A,C,E)
                              & r2_binop_1(B,D,F) )
                          <=> r2_binop_1(k2_zfmisc_1(A,B),k1_domain_1(A,B,C,D),k6_filter_1(A,B,E,F)) ) ) ) ) ) ) ) )).

fof(t27_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( m1_subset_1(C,A)
             => ! [D] :
                  ( m1_subset_1(D,B)
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,k2_zfmisc_1(A,A),A)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,k2_zfmisc_1(B,B),B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                         => ( ( r3_binop_1(A,C,E)
                              & r3_binop_1(B,D,F) )
                          <=> r3_binop_1(k2_zfmisc_1(A,B),k1_domain_1(A,B,C,D),k6_filter_1(A,B,E,F)) ) ) ) ) ) ) ) )).

fof(t28_eqrel_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_2(B)
        & v3_relat_2(B)
        & v1_partfun1(B,A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,k6_eqrel_1(A,A,B,C)) ) ) )).

fof(t28_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,k2_zfmisc_1(A,A),A)
                    & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,k2_zfmisc_1(B,B),B)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,k2_zfmisc_1(B,B),B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                         => ( ( r4_binop_1(A,C,D)
                              & r4_binop_1(B,E,F) )
                          <=> r4_binop_1(k2_zfmisc_1(A,B),k6_filter_1(A,B,C,E),k6_filter_1(A,B,D,F)) ) ) ) ) ) ) ) )).

fof(t29_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,k2_zfmisc_1(A,A),A)
                    & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,k2_zfmisc_1(B,B),B)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,k2_zfmisc_1(B,B),B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                         => ( ( r5_binop_1(A,C,D)
                              & r5_binop_1(B,E,F) )
                          <=> r5_binop_1(k2_zfmisc_1(A,B),k6_filter_1(A,B,C,E),k6_filter_1(A,B,D,F)) ) ) ) ) ) ) ) )).

fof(t2_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( r3_lattices(A,B,C)
                   => r3_lattices(A,k4_lattices(A,B,D),C) ) ) ) ) ) )).

fof(t2_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k2_filter_0(A,B) = k2_filter_0(A,C)
               => B = C ) ) ) ) )).

fof(t30_eqrel_1,axiom,(
    ! [A,B,C,D,E] :
      ( ( v1_relat_2(E)
        & v3_relat_2(E)
        & v8_relat_2(E)
        & v1_partfun1(E,A)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => ( ( r2_hidden(B,k6_eqrel_1(A,A,E,C))
          & r2_hidden(D,k6_eqrel_1(A,A,E,C)) )
       => r2_hidden(k4_tarski(B,D),E) ) ) )).

fof(t30_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,k2_zfmisc_1(A,A),A)
                    & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,k2_zfmisc_1(B,B),B)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,k2_zfmisc_1(B,B),B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                         => ( ( r6_binop_1(A,C,D)
                              & r6_binop_1(B,E,F) )
                          <=> r6_binop_1(k2_zfmisc_1(A,B),k6_filter_1(A,B,C,E),k6_filter_1(A,B,D,F)) ) ) ) ) ) ) ) )).

fof(t31_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,k2_zfmisc_1(A,A),A)
                    & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A))) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,k2_zfmisc_1(B,B),B)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,k2_zfmisc_1(B,B),B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
                         => ( ( r1_lattice2(A,C,D)
                              & r1_lattice2(B,E,F) )
                          <=> r1_lattice2(k2_zfmisc_1(A,B),k6_filter_1(A,B,C,E),k6_filter_1(A,B,D,F)) ) ) ) ) ) ) ) )).

fof(t32_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_hidden(k1_domain_1(u1_struct_0(A),u1_struct_0(A),B,C),k8_filter_1(A))
              <=> r3_lattices(A,B,C) ) ) ) ) )).

fof(t33_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ( k1_relat_1(k8_filter_1(A)) = u1_struct_0(A)
        & k2_relat_1(k8_filter_1(A)) = u1_struct_0(A)
        & k3_relat_1(k8_filter_1(A)) = u1_struct_0(A) ) ) )).

fof(t34_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ! [C] :
              ( ( ~ v2_struct_0(C)
                & v10_lattices(C)
                & l3_lattices(C) )
             => ( ( r1_filter_1(A,B)
                  & r1_filter_1(B,C) )
               => r1_filter_1(A,C) ) ) ) ) )).

fof(t35_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & l3_lattices(B) )
         => ( ( ~ v2_struct_0(k7_filter_1(A,B))
              & v10_lattices(k7_filter_1(A,B))
              & l3_lattices(k7_filter_1(A,B)) )
           => ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & l3_lattices(A)
              & ~ v2_struct_0(B)
              & v10_lattices(B)
              & l3_lattices(B) ) ) ) ) )).

fof(t35_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ( ( ~ v2_struct_0(A)
          & v10_lattices(A)
          & v11_lattices(A)
          & l3_lattices(A) )
       => r6_binop_1(u1_struct_0(A),u2_lattices(A),u1_lattices(A)) ) ) )).

fof(t36_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(B))
                         => ( k3_lattices(k7_filter_1(A,B),k9_filter_1(A,B,C,E),k9_filter_1(A,B,D,F)) = k9_filter_1(A,B,k3_lattices(A,C,D),k3_lattices(B,E,F))
                            & k4_lattices(k7_filter_1(A,B),k9_filter_1(A,B,C,E),k9_filter_1(A,B,D,F)) = k9_filter_1(A,B,k4_lattices(A,C,D),k4_lattices(B,E,F)) ) ) ) ) ) ) ) )).

fof(t36_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ( r6_binop_1(u1_struct_0(A),u2_lattices(A),u1_lattices(A))
       => v11_lattices(A) ) ) )).

fof(t37_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(B))
                         => ( r3_lattices(k7_filter_1(A,B),k9_filter_1(A,B,C,E),k9_filter_1(A,B,D,F))
                          <=> ( r3_lattices(A,C,D)
                              & r3_lattices(B,E,F) ) ) ) ) ) ) ) ) )).

fof(t38_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( v12_lattices(A)
              & v12_lattices(B) )
          <=> v12_lattices(k7_filter_1(A,B)) ) ) ) )).

fof(t39_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & v11_lattices(A)
              & l3_lattices(A)
              & ~ v2_struct_0(B)
              & v10_lattices(B)
              & v11_lattices(B)
              & l3_lattices(B) )
          <=> ( ~ v2_struct_0(k7_filter_1(A,B))
              & v10_lattices(k7_filter_1(A,B))
              & v11_lattices(k7_filter_1(A,B))
              & l3_lattices(k7_filter_1(A,B)) ) ) ) ) )).

fof(t3_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( r3_lattices(A,B,C)
                   => r3_lattices(A,B,k3_lattices(A,D,C)) ) ) ) ) ) )).

fof(t3_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m1_subset_1(C,A)
             => ! [D] :
                  ( m1_subset_1(D,A)
                 => ! [E] :
                      ( m2_filter_1(E,A,B)
                     => k1_binop_1(k3_filter_1(A,B,E),k6_eqrel_1(A,A,B,C),k6_eqrel_1(A,A,B,D)) = k6_eqrel_1(A,A,B,k4_binop_1(A,E,C,D)) ) ) ) ) ) )).

fof(t40_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( v13_lattices(A)
              & v13_lattices(B) )
          <=> v13_lattices(k7_filter_1(A,B)) ) ) ) )).

fof(t40_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => r1_lattice2(u1_struct_0(A),u2_lattices(A),u1_lattices(A)) ) )).

fof(t41_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( v14_lattices(A)
              & v14_lattices(B) )
          <=> v14_lattices(k7_filter_1(A,B)) ) ) ) )).

fof(t41_lattice2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => r1_lattice2(u1_struct_0(A),u1_lattices(A),u2_lattices(A)) ) )).

fof(t42_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( v15_lattices(A)
              & v15_lattices(B) )
          <=> v15_lattices(k7_filter_1(A,B)) ) ) ) )).

fof(t43_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & v13_lattices(A)
              & l3_lattices(A)
              & ~ v2_struct_0(B)
              & v10_lattices(B)
              & v13_lattices(B)
              & l3_lattices(B) )
           => k5_lattices(k7_filter_1(A,B)) = k9_filter_1(A,B,k5_lattices(A),k5_lattices(B)) ) ) ) )).

fof(t44_eqrel_1,axiom,(
    ! [A,B,C] :
      ( ( v3_relat_2(C)
        & v8_relat_2(C)
        & v1_partfun1(C,A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
     => ! [D] :
          ( r2_hidden(D,A)
         => ( r2_hidden(k4_tarski(D,B),C)
          <=> k6_eqrel_1(A,A,C,D) = k6_eqrel_1(A,A,C,B) ) ) ) )).

fof(t44_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & v14_lattices(A)
              & l3_lattices(A)
              & ~ v2_struct_0(B)
              & v10_lattices(B)
              & v14_lattices(B)
              & l3_lattices(B) )
           => k6_lattices(k7_filter_1(A,B)) = k9_filter_1(A,B,k6_lattices(A),k6_lattices(B)) ) ) ) )).

fof(t45_eqrel_1,axiom,(
    ! [A,B,C] :
      ( ( v3_relat_2(C)
        & v8_relat_2(C)
        & v1_partfun1(C,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(B,B))) )
     => ~ ( r2_hidden(A,k7_eqrel_1(B,C))
          & ! [D] :
              ( m1_subset_1(D,B)
             => A != k6_eqrel_1(B,B,C,D) ) ) ) )).

fof(t45_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(B))
                         => ( ( ~ v2_struct_0(A)
                              & v10_lattices(A)
                              & v15_lattices(A)
                              & l3_lattices(A)
                              & ~ v2_struct_0(B)
                              & v10_lattices(B)
                              & v15_lattices(B)
                              & l3_lattices(B) )
                           => ( ( r2_lattices(A,C,D)
                                & r2_lattices(B,E,F) )
                            <=> r2_lattices(k7_filter_1(A,B),k9_filter_1(A,B,C,E),k9_filter_1(A,B,D,F)) ) ) ) ) ) ) ) ) )).

fof(t46_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & v15_lattices(A)
              & v16_lattices(A)
              & l3_lattices(A)
              & ~ v2_struct_0(B)
              & v10_lattices(B)
              & v15_lattices(B)
              & v16_lattices(B)
              & l3_lattices(B) )
          <=> ( ~ v2_struct_0(k7_filter_1(A,B))
              & v10_lattices(k7_filter_1(A,B))
              & v15_lattices(k7_filter_1(A,B))
              & v16_lattices(k7_filter_1(A,B))
              & l3_lattices(k7_filter_1(A,B)) ) ) ) ) )).

fof(t47_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( ~ v2_struct_0(A)
              & v10_lattices(A)
              & v17_lattices(A)
              & l3_lattices(A)
              & ~ v2_struct_0(B)
              & v10_lattices(B)
              & v17_lattices(B)
              & l3_lattices(B) )
          <=> ( ~ v2_struct_0(k7_filter_1(A,B))
              & v10_lattices(k7_filter_1(A,B))
              & v17_lattices(k7_filter_1(A,B))
              & l3_lattices(k7_filter_1(A,B)) ) ) ) ) )).

fof(t48_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => ( ( v3_filter_0(A)
              & v3_filter_0(B) )
          <=> v3_filter_0(k7_filter_1(A,B)) ) ) ) )).

fof(t49_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => k1_lattice2(k7_filter_1(A,B)) = k7_filter_1(k1_lattice2(A),k1_lattice2(B)) ) ) )).

fof(t4_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v4_lattices(A)
        & v5_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(A))
                     => ( ( r1_lattices(A,B,C)
                          & r1_lattices(A,D,E) )
                       => r1_lattices(A,k3_lattices(A,B,D),k3_lattices(A,C,E)) ) ) ) ) ) ) )).

fof(t4_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m2_filter_1(C,A,B)
             => ( v1_binop_1(C,A)
               => v1_binop_1(k3_filter_1(A,B,C),k8_eqrel_1(A,B)) ) ) ) ) )).

fof(t50_filter_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v10_lattices(B)
            & l3_lattices(B) )
         => r1_filter_1(k7_filter_1(A,B),k7_filter_1(B,A)) ) ) )).

fof(t51_filter_1,conjecture,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k7_filter_0(A,B,C) = k3_lattices(A,k4_lattices(A,B,C),k4_lattices(A,k7_lattices(A,B),k7_lattices(A,C))) ) ) ) )).

fof(t55_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k4_filter_0(A,B,C) = k3_lattices(A,k7_lattices(A,B),C) ) ) ) )).

fof(t58_funct_4,axiom,(
    ! [A,B,C,D,E] :
      ( ( v1_relat_1(E)
        & v1_funct_1(E) )
     => ! [F] :
          ( ( v1_relat_1(F)
            & v1_funct_1(F) )
         => ( r2_hidden(k4_tarski(k4_tarski(A,B),k4_tarski(C,D)),k1_relat_1(k3_funct_4(E,F)))
           => k1_binop_1(k3_funct_4(E,F),k4_tarski(A,B),k4_tarski(C,D)) = k4_tarski(k1_binop_1(E,A,C),k1_binop_1(F,B,D)) ) ) ) )).

fof(t5_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v6_lattices(A)
        & v7_lattices(A)
        & v8_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(A))
                     => ( ( r3_lattices(A,B,C)
                          & r3_lattices(A,D,E) )
                       => r3_lattices(A,k4_lattices(A,B,D),k4_lattices(A,C,E)) ) ) ) ) ) ) )).

fof(t5_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m2_filter_1(C,A,B)
             => ( v2_binop_1(C,A)
               => v2_binop_1(k3_filter_1(A,B,C),k8_eqrel_1(A,B)) ) ) ) ) )).

fof(t60_funct_3,axiom,(
    ! [A,B] :
      ( A != k1_xboole_0
     => k2_relat_1(k7_funct_3(B,A)) = B ) )).

fof(t62_funct_3,axiom,(
    ! [A,B] :
      ( A != k1_xboole_0
     => k2_relat_1(k8_funct_3(A,B)) = B ) )).

fof(t6_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m1_subset_1(C,A)
             => ! [D] :
                  ( m2_filter_1(D,A,B)
                 => ( r1_binop_1(A,C,D)
                   => r1_binop_1(k8_eqrel_1(A,B),k9_eqrel_1(A,B,C),k3_filter_1(A,B,D)) ) ) ) ) ) )).

fof(t71_funct_3,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => r1_tarski(k2_relat_1(k13_funct_3(A,B)),k2_zfmisc_1(k2_relat_1(A),k2_relat_1(B))) ) ) )).

fof(t7_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m1_subset_1(C,A)
             => ! [D] :
                  ( m2_filter_1(D,A,B)
                 => ( r2_binop_1(A,C,D)
                   => r2_binop_1(k8_eqrel_1(A,B),k9_eqrel_1(A,B,C),k3_filter_1(A,B,D)) ) ) ) ) ) )).

fof(t8_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( ~ v1_xboole_0(B)
              & v19_lattices(B,A)
              & v20_lattices(B,A)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ( r2_hidden(C,B)
                        & r2_hidden(D,B) )
                    <=> r2_hidden(k4_lattices(A,C,D),B) ) ) ) ) ) ) )).

fof(t8_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m1_subset_1(C,A)
             => ! [D] :
                  ( m2_filter_1(D,A,B)
                 => ( r3_binop_1(A,C,D)
                   => r3_binop_1(k8_eqrel_1(A,B),k9_eqrel_1(A,B,C),k3_filter_1(A,B,D)) ) ) ) ) ) )).

fof(t9_domain_1,axiom,(
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ! [C] :
          ( ~ v1_xboole_0(C)
         => ~ ( r2_hidden(A,k2_zfmisc_1(B,C))
              & ! [D] :
                  ( m1_subset_1(D,B)
                 => ! [E] :
                      ( m1_subset_1(E,C)
                     => A != k4_tarski(D,E) ) ) ) ) ) )).

fof(t9_filter_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( ~ v1_xboole_0(B)
              & v19_lattices(B,A)
              & v20_lattices(B,A)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
          <=> ( ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( ( r2_hidden(C,B)
                          & r2_hidden(D,B) )
                       => r2_hidden(k4_lattices(A,C,D),B) ) ) )
              & ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( ( r2_hidden(C,B)
                          & r3_lattices(A,C,D) )
                       => r2_hidden(D,B) ) ) ) ) ) ) ) )).

fof(t9_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( v1_partfun1(B,A)
            & v3_relat_2(B)
            & v8_relat_2(B)
            & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(A,A))) )
         => ! [C] :
              ( m2_filter_1(C,A,B)
             => ! [D] :
                  ( m2_filter_1(D,A,B)
                 => ( r4_binop_1(A,C,D)
                   => r4_binop_1(k8_eqrel_1(A,B),k3_filter_1(A,B,C),k3_filter_1(A,B,D)) ) ) ) ) ) )).

%------------------------------------------------------------------------------
