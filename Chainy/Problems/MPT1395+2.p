%------------------------------------------------------------------------------
% File     : MPT1395+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : connsp_2__t24_connsp_2.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 2556 ( 420 unit)
%            Number of atoms       : 11290 (1954 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives : 10199 (1465   ~; 116   |;4039   &)
%                                         ( 489 <=>;4090  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :  169 (   1 propositional; 0-4 arity)
%            Number of functors    :  197 (   9 constant; 0-10 arity)
%            Number of variables   : 7257 (   9 sgn;6953   !; 304   ?)
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
%------------------------------------------------------------------------------
fof(cc1_connsp_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v3_connsp_1(B,A)
           => v2_connsp_1(B,A) ) ) ) )).

fof(cc2_connsp_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v3_connsp_1(B,A)
           => ~ v1_xboole_0(B) ) ) ) )).

fof(cc3_connsp_1,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v3_connsp_1(B,A)
           => v4_pre_topc(B,A) ) ) ) )).

fof(cc4_connsp_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_xboole_0(B)
           => v2_connsp_1(B,A) ) ) ) )).

fof(d1_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( m1_connsp_2(C,A,B)
              <=> r2_hidden(B,k1_tops_1(A,C)) ) ) ) ) )).

fof(d2_connsp_2,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( m2_connsp_2(C,A,B)
              <=> r1_tarski(B,k1_tops_1(A,C)) ) ) ) ) )).

fof(d3_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r1_connsp_2(A,B)
          <=> ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ~ ( m1_connsp_2(C,A,B)
                    & ! [D] :
                        ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                       => ~ ( m1_connsp_2(D,A,B)
                            & v2_connsp_1(D,A)
                            & r1_tarski(D,C) ) ) ) ) ) ) ) )).

fof(d4_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ( v1_connsp_2(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => r1_connsp_2(A,B) ) ) ) )).

fof(d5_connsp_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v3_connsp_1(B,A)
          <=> ( v2_connsp_1(B,A)
              & ! [C] :
                  ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
                 => ( ( v2_connsp_1(C,A)
                      & r1_tarski(B,C) )
                   => B = C ) ) ) ) ) ) )).

fof(d5_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( r2_connsp_2(A,B,C)
              <=> ! [D] :
                    ( ( ~ v1_xboole_0(D)
                      & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A))) )
                   => ~ ( B = D
                        & ! [E] :
                            ( m1_subset_1(E,u1_struct_0(k1_pre_topc(A,D)))
                           => ~ ( E = C
                                & r1_connsp_2(k1_pre_topc(A,D),E) ) ) ) ) ) ) ) ) )).

fof(d6_connsp_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( r3_connsp_1(A,B,C)
              <=> ? [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(k1_pre_topc(A,B))))
                    & D = C
                    & v3_connsp_1(D,k1_pre_topc(A,B)) ) ) ) ) ) )).

fof(d6_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( v2_connsp_2(B,A)
          <=> v1_connsp_2(k1_pre_topc(A,B)) ) ) ) )).

fof(d7_connsp_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( C = k1_connsp_1(A,B)
              <=> ? [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
                    & ! [E] :
                        ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(A)))
                       => ( r2_hidden(E,D)
                        <=> ( v2_connsp_1(E,A)
                            & r2_hidden(B,E) ) ) )
                    & k5_setfam_1(u1_struct_0(A),D) = C ) ) ) ) ) )).

fof(dt_k1_connsp_1,axiom,(
    ! [A,B] :
      ( ( l1_pre_topc(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k1_connsp_1(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_m1_connsp_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ! [C] :
          ( m1_connsp_2(C,A,B)
         => m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) ) ) )).

fof(dt_m2_connsp_2,axiom,(
    ! [A,B] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ! [C] :
          ( m2_connsp_2(C,A,B)
         => m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) ) ) )).

fof(existence_m1_connsp_2,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ? [C] : m1_connsp_2(C,A,B) ) )).

fof(existence_m2_connsp_2,axiom,(
    ! [A,B] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ? [C] : m2_connsp_2(C,A,B) ) )).

fof(fc1_connsp_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => v2_connsp_1(k1_tarski(B),A) ) )).

fof(fc2_connsp_1,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( ~ v1_xboole_0(k1_connsp_1(A,B))
        & v2_connsp_1(k1_connsp_1(A,B),A) ) ) )).

fof(l14_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                 => ( C = D
                   => r1_tarski(k9_subset_1(u1_struct_0(B),k1_tops_1(A,C),k2_struct_0(B)),k1_tops_1(B,D)) ) ) ) ) ) )).

fof(rc1_connsp_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v1_xboole_0(B) ) ) )).

fof(t10_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( m2_connsp_2(C,A,k6_domain_1(u1_struct_0(A),B))
              <=> m1_connsp_2(C,A,B) ) ) ) ) )).

fof(t11_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(k1_pre_topc(A,B)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(k1_pre_topc(A,B))))
                 => ! [E] :
                      ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(A)))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(A))
                         => ( ( v3_pre_topc(B,A)
                              & m1_connsp_2(D,k1_pre_topc(A,B),C)
                              & D = E
                              & C = F )
                           => m1_connsp_2(E,A,F) ) ) ) ) ) ) ) )).

fof(t12_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(k1_pre_topc(A,B)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(k1_pre_topc(A,B))))
                 => ! [E] :
                      ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(A)))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(A))
                         => ( ( m1_connsp_2(E,A,F)
                              & D = E
                              & C = F )
                           => m1_connsp_2(D,k1_pre_topc(A,B),C) ) ) ) ) ) ) ) )).

fof(t13_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( v3_connsp_1(B,A)
                  & r1_tarski(B,C) )
               => r3_connsp_1(A,C,B) ) ) ) ) )).

fof(t14_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & m1_pre_topc(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( C = D
                   => r1_tarski(k1_connsp_1(B,D),k1_connsp_1(A,C)) ) ) ) ) ) )).

fof(t19_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r1_connsp_2(A,B)
          <=> ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ! [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                   => ( ( m1_connsp_2(C,A,B)
                        & r3_connsp_1(A,C,D)
                        & r2_hidden(B,D) )
                     => m1_connsp_2(D,A,B) ) ) ) ) ) ) )).

fof(t20_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r1_connsp_2(A,B)
          <=> ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
               => ~ ( v3_pre_topc(C,A)
                    & r2_hidden(B,C)
                    & ! [D] :
                        ( m1_subset_1(D,u1_struct_0(k1_pre_topc(A,C)))
                       => ~ ( D = B
                            & r2_hidden(B,k1_tops_1(k1_pre_topc(A,C),k1_connsp_1(k1_pre_topc(A,C),D))) ) ) ) ) ) ) ) )).

fof(t21_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ( v1_connsp_2(A)
       => ! [B] :
            ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
           => ( v3_connsp_1(B,A)
             => v3_pre_topc(B,A) ) ) ) ) )).

fof(t22_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r1_connsp_2(A,B)
           => ! [C] :
                ( ( ~ v1_xboole_0(C)
                  & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
               => ( ( v3_pre_topc(C,A)
                    & r2_hidden(B,C) )
                 => r2_connsp_2(A,C,B) ) ) ) ) ) )).

fof(t23_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ( v1_connsp_2(A)
       => ! [B] :
            ( ( ~ v1_xboole_0(B)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
           => ( v3_pre_topc(B,A)
             => v2_connsp_2(B,A) ) ) ) ) )).

fof(t24_connsp_1,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                 => ( C = D
                   => ( v2_connsp_1(C,A)
                    <=> v2_connsp_1(D,B) ) ) ) ) ) ) )).

fof(t24_connsp_2,conjecture,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ( v1_connsp_2(A)
      <=> ! [B] :
            ( ( ~ v1_xboole_0(B)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ( ( v3_pre_topc(B,A)
                    & r3_connsp_1(A,B,C) )
                 => v3_pre_topc(C,A) ) ) ) ) ) )).

fof(t38_connsp_1,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v2_connsp_1(B,A)
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ~ ( v3_connsp_1(C,A)
                    & ~ r1_xboole_0(B,C)
                    & ~ r1_tarski(B,C) ) ) ) ) ) )).

fof(t3_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( ( m1_connsp_2(C,A,B)
                      & m1_connsp_2(D,A,B) )
                   => m1_connsp_2(k4_subset_1(u1_struct_0(A),C,D),A,B) ) ) ) ) ) )).

fof(t40_connsp_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => r2_hidden(B,k1_connsp_1(A,B)) ) ) )).

fof(t43_connsp_1,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v3_connsp_1(B,A)
          <=> ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & B = k1_connsp_1(A,C) ) ) ) ) )).

fof(t4_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( ( m1_connsp_2(C,A,B)
                      & m1_connsp_2(D,A,B) )
                  <=> m1_connsp_2(k9_subset_1(u1_struct_0(A),C,D),A,B) ) ) ) ) ) )).

fof(t5_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( v3_pre_topc(B,A)
                  & r2_hidden(C,B) )
               => m1_connsp_2(B,A,C) ) ) ) ) )).

fof(t6_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( m1_connsp_2(B,A,C)
               => r2_hidden(C,B) ) ) ) ) )).

fof(t7_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ~ ( m1_connsp_2(C,A,B)
                  & ! [D] :
                      ( ( ~ v1_xboole_0(D)
                        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A))) )
                     => ~ ( m1_connsp_2(D,A,B)
                          & v3_pre_topc(D,A)
                          & r1_tarski(D,C) ) ) ) ) ) ) )).

fof(t8_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( m1_connsp_2(C,A,B)
              <=> ? [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                    & v3_pre_topc(D,A)
                    & r1_tarski(D,C)
                    & r2_hidden(B,D) ) ) ) ) ) )).

fof(t9_connsp_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v3_pre_topc(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ~ ( r2_hidden(C,B)
                    & ! [D] :
                        ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                       => ~ ( m1_connsp_2(D,A,C)
                            & r1_tarski(D,B) ) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
