%------------------------------------------------------------------------------
% File     : MPT1098+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : finset_1__t33_finset_1.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 1756 ( 377 unit)
%            Number of atoms       : 6718 (1590 equality)
%            Maximal formula depth :   27 (   7 average)
%            Number of connectives : 5952 ( 990   ~; 107   |;2260   &)
%                                         ( 326 <=>;2269  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   64 (   1 propositional; 0-4 arity)
%            Number of functors    :  129 (   4 constant; 0-10 arity)
%            Number of variables   : 5340 (   9 sgn;5139   !; 201   ?)
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
%------------------------------------------------------------------------------
fof(cc1_finset_1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v1_finset_1(A) ) )).

fof(cc2_finset_1,axiom,(
    ! [A] :
      ( v1_finset_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_finset_1(B) ) ) )).

fof(cc2_ordinal2,axiom,(
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => v3_ordinal1(B) ) ) )).

fof(cc8_ordinal1,axiom,(
    ! [A] :
      ( m1_subset_1(A,k4_ordinal1)
     => v7_ordinal1(A) ) )).

fof(d12_ordinal1,axiom,(
    ! [A] :
      ( A = k4_ordinal1
    <=> ( r2_hidden(k1_xboole_0,A)
        & v4_ordinal1(A)
        & v3_ordinal1(A)
        & ! [B] :
            ( v3_ordinal1(B)
           => ( ( r2_hidden(k1_xboole_0,B)
                & v4_ordinal1(B) )
             => r1_tarski(A,B) ) ) ) ) )).

fof(d1_finset_1,axiom,(
    ! [A] :
      ( v1_finset_1(A)
    <=> ? [B] :
          ( v1_relat_1(B)
          & v1_funct_1(B)
          & k2_relat_1(B) = A
          & r2_hidden(k1_relat_1(B),k4_ordinal1) ) ) )).

fof(dt_k4_ordinal1,axiom,(
    $true )).

fof(dt_k7_funct_3,axiom,(
    ! [A,B] :
      ( v1_relat_1(k7_funct_3(A,B))
      & v1_funct_1(k7_funct_3(A,B)) ) )).

fof(dt_k9_funct_3,axiom,(
    ! [A,B] :
      ( v1_funct_1(k9_funct_3(A,B))
      & v1_funct_2(k9_funct_3(A,B),k2_zfmisc_1(A,B),A)
      & m1_subset_1(k9_funct_3(A,B),k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,B),A))) ) )).

fof(dt_o_2_0_finset_1,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
     => m1_subset_1(o_2_0_finset_1(A,B),B) ) )).

fof(dt_o_2_1_finset_1,axiom,(
    ! [A,B] :
      ( ( v3_ordinal1(A)
        & m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(k1_ordinal1(A)))) )
     => m1_subset_1(o_2_1_finset_1(A,B),B) ) )).

fof(fc10_finset_1,axiom,(
    ! [A,B] :
      ( v1_finset_1(B)
     => v1_finset_1(k3_xboole_0(A,B)) ) )).

fof(fc11_finset_1,axiom,(
    ! [A,B] :
      ( v1_finset_1(A)
     => v1_finset_1(k3_xboole_0(A,B)) ) )).

fof(fc12_finset_1,axiom,(
    ! [A,B] :
      ( v1_finset_1(A)
     => v1_finset_1(k4_xboole_0(A,B)) ) )).

fof(fc13_finset_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k9_relat_1(A,B)) ) )).

fof(fc14_finset_1,axiom,(
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k2_zfmisc_1(A,B)) ) )).

fof(fc17_finset_1,axiom,(
    ! [A] :
      ( v1_finset_1(A)
     => v1_finset_1(k1_zfmisc_1(A)) ) )).

fof(fc1_finset_1,axiom,(
    ! [A] : v1_finset_1(k1_tarski(A)) )).

fof(fc6_ordinal1,axiom,
    ( ~ v1_xboole_0(k4_ordinal1)
    & v3_ordinal1(k4_ordinal1) )).

fof(fc7_ordinal1,axiom,(
    ! [A] :
      ( ( v3_ordinal1(A)
        & v7_ordinal1(A) )
     => v7_ordinal1(k1_ordinal1(A)) ) )).

fof(fc9_finset_1,axiom,(
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k2_xboole_0(A,B)) ) )).

fof(l22_finset_1,axiom,(
    ! [A] :
      ( ( v1_finset_1(A)
        & ! [B] :
            ( r2_hidden(B,A)
           => v1_finset_1(B) ) )
     => v1_finset_1(k3_tarski(A)) ) )).

fof(rc1_finset_1,axiom,(
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_finset_1(A) ) )).

fof(rc1_ordinal2,axiom,(
    ? [A] :
      ( v1_ordinal1(A)
      & v2_ordinal1(A)
      & v3_ordinal1(A)
      & v4_ordinal1(A) ) )).

fof(rc2_finset_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B)
          & v1_finset_1(B) ) ) )).

fof(redefinition_k9_funct_3,axiom,(
    ! [A,B] : k9_funct_3(A,B) = k7_funct_3(A,B) )).

fof(s1_ordinal2__e17_33__finset_1,axiom,
    ( ( ( r2_hidden(k1_xboole_0,k4_ordinal1)
       => ! [A] :
            ( m1_subset_1(A,k1_zfmisc_1(k1_zfmisc_1(k1_xboole_0)))
           => ~ ( A != k1_xboole_0
                & ! [B] :
                    ~ ( r2_hidden(B,A)
                      & ! [C] :
                          ( ( r2_hidden(C,A)
                            & r1_tarski(B,C) )
                         => C = B ) ) ) ) )
      & ! [D] :
          ( v3_ordinal1(D)
         => ( ( r2_hidden(D,k4_ordinal1)
             => ! [E] :
                  ( m1_subset_1(E,k1_zfmisc_1(k1_zfmisc_1(D)))
                 => ~ ( E != k1_xboole_0
                      & ! [F] :
                          ~ ( r2_hidden(F,E)
                            & ! [G] :
                                ( ( r2_hidden(G,E)
                                  & r1_tarski(F,G) )
                               => G = F ) ) ) ) )
           => ( r2_hidden(k1_ordinal1(D),k4_ordinal1)
             => ! [H] :
                  ( m1_subset_1(H,k1_zfmisc_1(k1_zfmisc_1(k1_ordinal1(D))))
                 => ~ ( H != k1_xboole_0
                      & ! [I] :
                          ~ ( r2_hidden(I,H)
                            & ! [J] :
                                ( ( r2_hidden(J,H)
                                  & r1_tarski(I,J) )
                               => J = I ) ) ) ) ) ) )
      & ! [D] :
          ( v3_ordinal1(D)
         => ( ( v4_ordinal1(D)
              & ! [K] :
                  ( v3_ordinal1(K)
                 => ( r2_hidden(K,D)
                   => ( r2_hidden(K,k4_ordinal1)
                     => ! [L] :
                          ( m1_subset_1(L,k1_zfmisc_1(k1_zfmisc_1(K)))
                         => ~ ( L != k1_xboole_0
                              & ! [M] :
                                  ~ ( r2_hidden(M,L)
                                    & ! [N] :
                                        ( ( r2_hidden(N,L)
                                          & r1_tarski(M,N) )
                                       => N = M ) ) ) ) ) ) ) )
           => ( D = k1_xboole_0
              | ( r2_hidden(D,k4_ordinal1)
               => ! [O] :
                    ( m1_subset_1(O,k1_zfmisc_1(k1_zfmisc_1(D)))
                   => ~ ( O != k1_xboole_0
                        & ! [P] :
                            ~ ( r2_hidden(P,O)
                              & ! [Q] :
                                  ( ( r2_hidden(Q,O)
                                    & r1_tarski(P,Q) )
                                 => Q = P ) ) ) ) ) ) ) ) )
   => ! [D] :
        ( v3_ordinal1(D)
       => ( r2_hidden(D,k4_ordinal1)
         => ! [R] :
              ( m1_subset_1(R,k1_zfmisc_1(k1_zfmisc_1(D)))
             => ~ ( R != k1_xboole_0
                  & ! [S] :
                      ~ ( r2_hidden(S,R)
                        & ! [T] :
                            ( ( r2_hidden(T,R)
                              & r1_tarski(S,T) )
                           => T = S ) ) ) ) ) ) )).

fof(s1_xboole_0__e4_33_3_1__finset_1,axiom,(
    ! [A,B] :
      ( ( v3_ordinal1(A)
        & m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(k1_ordinal1(A)))) )
     => ? [C] :
        ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,k9_setfam_1(A))
            & ? [E] :
                ( r2_hidden(E,B)
                & D = k6_subset_1(E,k1_tarski(A)) ) ) ) ) )).

fof(s1_xboole_0__e6_33__finset_1,axiom,(
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
        & v1_relat_1(C)
        & v1_funct_1(C) )
     => ? [D] :
        ! [E] :
          ( r2_hidden(E,D)
        <=> ( r2_hidden(E,k9_setfam_1(k1_relat_1(C)))
            & r2_hidden(k9_relat_1(C,E),B) ) ) ) )).

fof(s2_finset_1__e6_53__finset_1,axiom,(
    ! [A] :
      ( ( v1_finset_1(A)
        & ~ ( k1_xboole_0 != k1_xboole_0
            & ! [B] :
                ~ ( r2_hidden(B,k1_xboole_0)
                  & ! [C] :
                      ( r2_hidden(C,k1_xboole_0)
                     => r1_tarski(B,C) ) ) )
        & ! [D,E] :
            ( ( r2_hidden(D,A)
              & r1_tarski(E,A)
              & ~ ( E != k1_xboole_0
                  & ! [F] :
                      ~ ( r2_hidden(F,E)
                        & ! [G] :
                            ( r2_hidden(G,E)
                           => r1_tarski(F,G) ) ) ) )
           => ~ ( k2_xboole_0(E,k1_tarski(D)) != k1_xboole_0
                & ! [H] :
                    ~ ( r2_hidden(H,k2_xboole_0(E,k1_tarski(D)))
                      & ! [I] :
                          ( r2_hidden(I,k2_xboole_0(E,k1_tarski(D)))
                         => r1_tarski(H,I) ) ) ) ) )
     => ~ ( A != k1_xboole_0
          & ! [J] :
              ~ ( r2_hidden(J,A)
                & ! [K] :
                    ( r2_hidden(K,A)
                   => r1_tarski(J,K) ) ) ) ) )).

fof(s2_finset_1__e6_54__finset_1,axiom,(
    ! [A] :
      ( ( v1_finset_1(A)
        & ~ ( k1_xboole_0 != k1_xboole_0
            & ! [B] :
                ~ ( r2_hidden(B,k1_xboole_0)
                  & ! [C] :
                      ( r2_hidden(C,k1_xboole_0)
                     => r1_tarski(C,B) ) ) )
        & ! [D,E] :
            ( ( r2_hidden(D,A)
              & r1_tarski(E,A)
              & ~ ( E != k1_xboole_0
                  & ! [F] :
                      ~ ( r2_hidden(F,E)
                        & ! [G] :
                            ( r2_hidden(G,E)
                           => r1_tarski(G,F) ) ) ) )
           => ~ ( k2_xboole_0(E,k1_tarski(D)) != k1_xboole_0
                & ! [H] :
                    ~ ( r2_hidden(H,k2_xboole_0(E,k1_tarski(D)))
                      & ! [I] :
                          ( r2_hidden(I,k2_xboole_0(E,k1_tarski(D)))
                         => r1_tarski(I,H) ) ) ) ) )
     => ~ ( A != k1_xboole_0
          & ! [J] :
              ~ ( r2_hidden(J,A)
                & ! [K] :
                    ( r2_hidden(K,A)
                   => r1_tarski(K,J) ) ) ) ) )).

fof(s3_funct_1__e3_56__finset_1,axiom,(
    ! [A] :
    ? [B] :
      ( v1_relat_1(B)
      & v1_funct_1(B)
      & k1_relat_1(B) = A
      & ! [C] :
          ( r2_hidden(C,A)
         => k1_funct_1(B,C) = k1_mcart_1(C) ) ) )).

fof(s3_funct_1__e3_57__finset_1,axiom,(
    ! [A] :
    ? [B] :
      ( v1_relat_1(B)
      & v1_funct_1(B)
      & k1_relat_1(B) = A
      & ! [C] :
          ( r2_hidden(C,A)
         => k1_funct_1(B,C) = k1_mcart_1(C) ) ) )).

fof(s3_funct_1__e6_56__finset_1,axiom,(
    ! [A] :
    ? [B] :
      ( v1_relat_1(B)
      & v1_funct_1(B)
      & k1_relat_1(B) = A
      & ! [C] :
          ( r2_hidden(C,A)
         => k1_funct_1(B,C) = k2_mcart_1(C) ) ) )).

fof(t100_funct_3,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => k9_relat_1(k9_funct_3(k1_relat_1(A),k2_relat_1(A)),A) = k1_relat_1(A) ) )).

fof(t13_finset_1,axiom,(
    ! [A,B] :
      ( ( r1_tarski(A,B)
        & v1_finset_1(B) )
     => v1_finset_1(A) ) )).

fof(t14_finset_1,axiom,(
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k2_xboole_0(A,B)) ) )).

fof(t15_finset_1,axiom,(
    ! [A,B] :
      ( v1_finset_1(A)
     => v1_finset_1(k3_xboole_0(A,B)) ) )).

fof(t16_finset_1,axiom,(
    ! [A,B] :
      ( v1_finset_1(A)
     => v1_finset_1(k6_subset_1(A,B)) ) )).

fof(t17_finset_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_finset_1(A)
       => v1_finset_1(k9_relat_1(B,A)) ) ) )).

fof(t18_finset_1,axiom,(
    ! [A] :
      ( v1_finset_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
         => ~ ( B != k1_xboole_0
              & ! [C] :
                  ~ ( r2_hidden(C,B)
                    & ! [D] :
                        ( ( r2_hidden(D,B)
                          & r1_tarski(C,D) )
                       => D = C ) ) ) ) ) )).

fof(t1_numerals,axiom,(
    m1_subset_1(k1_xboole_0,k4_ordinal1) )).

fof(t25_finset_1,axiom,(
    ! [A] :
      ( ( v1_finset_1(A)
        & ! [B] :
            ( r2_hidden(B,A)
           => v1_finset_1(B) ) )
    <=> v1_finset_1(k3_tarski(A)) ) )).

fof(t26_finset_1,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_finset_1(k1_relat_1(A))
       => v1_finset_1(k2_relat_1(A)) ) ) )).

fof(t27_finset_1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( ( r1_tarski(A,k2_relat_1(B))
          & v1_finset_1(k10_relat_1(B,A)) )
       => v1_finset_1(A) ) ) )).

fof(t29_finset_1,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_finset_1(k1_relat_1(A))
      <=> v1_finset_1(A) ) ) )).

fof(t30_finset_1,axiom,(
    ! [A] :
      ~ ( v1_finset_1(A)
        & A != k1_xboole_0
        & v6_ordinal1(A)
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C] :
                  ( r2_hidden(C,A)
                 => r1_tarski(B,C) ) ) ) )).

fof(t31_finset_1,axiom,(
    ! [A] :
      ~ ( v1_finset_1(A)
        & A != k1_xboole_0
        & v6_ordinal1(A)
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C] :
                  ( r2_hidden(C,A)
                 => r1_tarski(C,B) ) ) ) )).

fof(t32_finset_1,axiom,(
    ! [A,B,C] :
      ~ ( v1_finset_1(A)
        & r1_tarski(A,k2_zfmisc_1(B,C))
        & ! [D,E] :
            ~ ( v1_finset_1(D)
              & r1_tarski(D,B)
              & v1_finset_1(E)
              & r1_tarski(E,C)
              & r1_tarski(A,k2_zfmisc_1(D,E)) ) ) )).

fof(t33_finset_1,conjecture,(
    ! [A,B,C] :
      ~ ( v1_finset_1(A)
        & r1_tarski(A,k2_zfmisc_1(B,C))
        & ! [D] :
            ~ ( v1_finset_1(D)
              & r1_tarski(D,B)
              & r1_tarski(A,k2_zfmisc_1(D,C)) ) ) )).

%------------------------------------------------------------------------------
