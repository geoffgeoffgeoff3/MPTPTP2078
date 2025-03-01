%------------------------------------------------------------------------------
% File     : MPT1700+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : tmap_1__t9_tmap_1.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 3329 ( 439 unit)
%            Number of atoms       : 17728 (2440 equality)
%            Maximal formula depth :   35 (   7 average)
%            Number of connectives : 16742 (2343   ~; 128   |;7295   &)
%                                         ( 734 <=>;6242  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :  235 (   1 propositional; 0-6 arity)
%            Number of functors    :  323 (   9 constant; 0-10 arity)
%            Number of variables   : 9735 (   9 sgn;9277   !; 458   ?)
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
include('Axioms/MPT027+2.ax').
%------------------------------------------------------------------------------
fof(d1_tmap_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & m1_subset_1(C,k1_zfmisc_1(A)) )
             => ! [D] :
                  ( ( ~ v1_xboole_0(D)
                    & m1_subset_1(D,k1_zfmisc_1(A)) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,C,B)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(C,B))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,D,B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(D,B))) )
                         => ( k2_partfun1(C,B,E,k9_subset_1(A,C,D)) = k2_partfun1(D,B,F,k9_subset_1(A,C,D))
                           => ! [G] :
                                ( ( v1_funct_1(G)
                                  & v1_funct_2(G,k4_subset_1(A,C,D),B)
                                  & m1_subset_1(G,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(A,C,D),B))) )
                               => ( G = k1_tmap_1(A,B,C,D,E,F)
                                <=> ( k2_partfun1(k4_subset_1(A,C,D),B,G,C) = E
                                    & k2_partfun1(k4_subset_1(A,C,D),B,G,D) = F ) ) ) ) ) ) ) ) ) ) )).

fof(dt_k1_tmap_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & ~ v1_xboole_0(C)
        & m1_subset_1(C,k1_zfmisc_1(A))
        & ~ v1_xboole_0(D)
        & m1_subset_1(D,k1_zfmisc_1(A))
        & v1_funct_1(E)
        & v1_funct_2(E,C,B)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(C,B)))
        & v1_funct_1(F)
        & v1_funct_2(F,D,B)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(D,B))) )
     => ( v1_funct_1(k1_tmap_1(A,B,C,D,E,F))
        & v1_funct_2(k1_tmap_1(A,B,C,D,E,F),k4_subset_1(A,C,D),B)
        & m1_subset_1(k1_tmap_1(A,B,C,D,E,F),k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(A,C,D),B))) ) ) )).

fof(t6_tmap_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & m1_subset_1(C,k1_zfmisc_1(A)) )
             => ! [D] :
                  ( ( ~ v1_xboole_0(D)
                    & m1_subset_1(D,k1_zfmisc_1(A)) )
                 => ( r1_subset_1(C,D)
                   => ! [E] :
                        ( ( v1_funct_1(E)
                          & v1_funct_2(E,C,B)
                          & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(C,B))) )
                       => ! [F] :
                            ( ( v1_funct_1(F)
                              & v1_funct_2(F,D,B)
                              & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(D,B))) )
                           => ( k2_partfun1(C,B,E,k9_subset_1(A,C,D)) = k2_partfun1(D,B,F,k9_subset_1(A,C,D))
                              & k2_partfun1(k4_subset_1(A,C,D),B,k1_tmap_1(A,B,C,D,E,F),C) = E
                              & k2_partfun1(k4_subset_1(A,C,D),B,k1_tmap_1(A,B,C,D,E,F),D) = F ) ) ) ) ) ) ) ) )).

fof(t7_tmap_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & m1_subset_1(C,k1_zfmisc_1(A)) )
             => ! [D] :
                  ( ( ~ v1_xboole_0(D)
                    & m1_subset_1(D,k1_zfmisc_1(A)) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,k4_subset_1(A,C,D),B)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(A,C,D),B))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,C,B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(C,B))) )
                         => ! [G] :
                              ( ( v1_funct_1(G)
                                & v1_funct_2(G,D,B)
                                & m1_subset_1(G,k1_zfmisc_1(k2_zfmisc_1(D,B))) )
                             => ( ( k2_partfun1(k4_subset_1(A,C,D),B,E,C) = F
                                  & k2_partfun1(k4_subset_1(A,C,D),B,E,D) = G )
                               => r2_funct_2(k4_subset_1(A,C,D),B,E,k1_tmap_1(A,B,C,D,F,G)) ) ) ) ) ) ) ) ) )).

fof(t8_tmap_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & m1_subset_1(C,k1_zfmisc_1(A)) )
             => ! [D] :
                  ( ( ~ v1_xboole_0(D)
                    & m1_subset_1(D,k1_zfmisc_1(A)) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,C,B)
                        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(C,B))) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,D,B)
                            & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(D,B))) )
                         => ( k2_partfun1(C,B,E,k9_subset_1(A,C,D)) = k2_partfun1(D,B,F,k9_subset_1(A,C,D))
                           => r1_funct_2(k4_subset_1(A,C,D),B,k4_subset_1(A,D,C),B,k1_tmap_1(A,B,C,D,E,F),k1_tmap_1(A,B,D,C,F,E)) ) ) ) ) ) ) ) )).

fof(t9_tmap_1,conjecture,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( ~ v1_xboole_0(C)
                & m1_subset_1(C,k1_zfmisc_1(A)) )
             => ! [D] :
                  ( ( ~ v1_xboole_0(D)
                    & m1_subset_1(D,k1_zfmisc_1(A)) )
                 => ! [E] :
                      ( ( ~ v1_xboole_0(E)
                        & m1_subset_1(E,k1_zfmisc_1(A)) )
                     => ! [F] :
                          ( ( ~ v1_xboole_0(F)
                            & m1_subset_1(F,k1_zfmisc_1(A)) )
                         => ! [G] :
                              ( ( ~ v1_xboole_0(G)
                                & m1_subset_1(G,k1_zfmisc_1(A)) )
                             => ( ( F = k4_subset_1(A,C,D)
                                  & G = k4_subset_1(A,D,E) )
                               => ! [H] :
                                    ( ( v1_funct_1(H)
                                      & v1_funct_2(H,C,B)
                                      & m1_subset_1(H,k1_zfmisc_1(k2_zfmisc_1(C,B))) )
                                   => ! [I] :
                                        ( ( v1_funct_1(I)
                                          & v1_funct_2(I,D,B)
                                          & m1_subset_1(I,k1_zfmisc_1(k2_zfmisc_1(D,B))) )
                                       => ! [J] :
                                            ( ( v1_funct_1(J)
                                              & v1_funct_2(J,E,B)
                                              & m1_subset_1(J,k1_zfmisc_1(k2_zfmisc_1(E,B))) )
                                           => ( ( k2_partfun1(C,B,H,k9_subset_1(A,C,D)) = k2_partfun1(D,B,I,k9_subset_1(A,C,D))
                                                & k2_partfun1(D,B,I,k9_subset_1(A,D,E)) = k2_partfun1(E,B,J,k9_subset_1(A,D,E))
                                                & k2_partfun1(C,B,H,k9_subset_1(A,C,E)) = k2_partfun1(E,B,J,k9_subset_1(A,C,E)) )
                                             => ! [K] :
                                                  ( ( v1_funct_1(K)
                                                    & v1_funct_2(K,F,B)
                                                    & m1_subset_1(K,k1_zfmisc_1(k2_zfmisc_1(F,B))) )
                                                 => ! [L] :
                                                      ( ( v1_funct_1(L)
                                                        & v1_funct_2(L,G,B)
                                                        & m1_subset_1(L,k1_zfmisc_1(k2_zfmisc_1(G,B))) )
                                                     => ( ( r1_funct_2(F,B,k4_subset_1(A,C,D),B,K,k1_tmap_1(A,B,C,D,H,I))
                                                          & r1_funct_2(G,B,k4_subset_1(A,D,E),B,L,k1_tmap_1(A,B,D,E,I,J)) )
                                                       => r1_funct_2(k4_subset_1(A,F,E),B,k4_subset_1(A,C,G),B,k1_tmap_1(A,B,F,E,K,J),k1_tmap_1(A,B,C,G,H,L)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
