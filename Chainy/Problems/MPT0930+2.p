%------------------------------------------------------------------------------
% File     : MPT0930+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : mcart_1__t91_mcart_1.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 1409 ( 344 unit)
%            Number of atoms       : 4637 (1305 equality)
%            Maximal formula depth :   27 (   6 average)
%            Number of connectives : 3971 ( 743   ~;  80   |;1314   &)
%                                         ( 270 <=>;1564  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   52 (   1 propositional; 0-4 arity)
%            Number of functors    :   97 (   3 constant; 0-10 arity)
%            Number of variables   : 4168 (   8 sgn;4014   !; 154   ?)
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
%------------------------------------------------------------------------------
fof(d10_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ~ ! [E] :
              ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
             => ! [F] :
                  ( m1_subset_1(F,C)
                 => ( F = k10_mcart_1(A,B,C,D,E)
                  <=> ! [G,H,I,J] :
                        ( E = k4_mcart_1(G,H,I,J)
                       => F = I ) ) ) ) ) )).

fof(d11_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ~ ! [E] :
              ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
             => ! [F] :
                  ( m1_subset_1(F,D)
                 => ( F = k11_mcart_1(A,B,C,D,E)
                  <=> ! [G,H,I,J] :
                        ( E = k4_mcart_1(G,H,I,J)
                       => F = J ) ) ) ) ) )).

fof(d14_mcart_1,axiom,(
    ! [A] : k17_mcart_1(A) = k1_mcart_1(k1_mcart_1(A)) )).

fof(d15_mcart_1,axiom,(
    ! [A] : k18_mcart_1(A) = k2_mcart_1(k1_mcart_1(A)) )).

fof(d16_mcart_1,axiom,(
    ! [A] : k19_mcart_1(A) = k1_mcart_1(k2_mcart_1(A)) )).

fof(d17_mcart_1,axiom,(
    ! [A] : k20_mcart_1(A) = k2_mcart_1(k2_mcart_1(A)) )).

fof(d1_mcart_1,axiom,(
    ! [A] :
      ( ? [B,C] : A = k4_tarski(B,C)
     => ! [B] :
          ( B = k1_mcart_1(A)
        <=> ! [C,D] :
              ( A = k4_tarski(C,D)
             => B = C ) ) ) )).

fof(d2_mcart_1,axiom,(
    ! [A] :
      ( ? [B,C] : A = k4_tarski(B,C)
     => ! [B] :
          ( B = k2_mcart_1(A)
        <=> ! [C,D] :
              ( A = k4_tarski(C,D)
             => B = D ) ) ) )).

fof(d3_mcart_1,axiom,(
    ! [A,B,C] : k3_mcart_1(A,B,C) = k4_tarski(k4_tarski(A,B),C) )).

fof(d3_zfmisc_1,axiom,(
    ! [A,B,C] : k3_zfmisc_1(A,B,C) = k2_zfmisc_1(k2_zfmisc_1(A,B),C) )).

fof(d4_mcart_1,axiom,(
    ! [A,B,C,D] : k4_mcart_1(A,B,C,D) = k4_tarski(k3_mcart_1(A,B,C),D) )).

fof(d4_zfmisc_1,axiom,(
    ! [A,B,C,D] : k4_zfmisc_1(A,B,C,D) = k2_zfmisc_1(k3_zfmisc_1(A,B,C),D) )).

fof(d5_mcart_1,axiom,(
    ! [A,B,C] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & ~ ! [D] :
              ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
             => ! [E] :
                  ( m1_subset_1(E,A)
                 => ( E = k5_mcart_1(A,B,C,D)
                  <=> ! [F,G,H] :
                        ( D = k3_mcart_1(F,G,H)
                       => E = F ) ) ) ) ) )).

fof(d6_mcart_1,axiom,(
    ! [A,B,C] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & ~ ! [D] :
              ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
             => ! [E] :
                  ( m1_subset_1(E,B)
                 => ( E = k6_mcart_1(A,B,C,D)
                  <=> ! [F,G,H] :
                        ( D = k3_mcart_1(F,G,H)
                       => E = G ) ) ) ) ) )).

fof(d7_mcart_1,axiom,(
    ! [A,B,C] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & ~ ! [D] :
              ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
             => ! [E] :
                  ( m1_subset_1(E,C)
                 => ( E = k7_mcart_1(A,B,C,D)
                  <=> ! [F,G,H] :
                        ( D = k3_mcart_1(F,G,H)
                       => E = H ) ) ) ) ) )).

fof(d8_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ~ ! [E] :
              ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
             => ! [F] :
                  ( m1_subset_1(F,A)
                 => ( F = k8_mcart_1(A,B,C,D,E)
                  <=> ! [G,H,I,J] :
                        ( E = k4_mcart_1(G,H,I,J)
                       => F = G ) ) ) ) ) )).

fof(d9_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ~ ! [E] :
              ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
             => ! [F] :
                  ( m1_subset_1(F,B)
                 => ( F = k9_mcart_1(A,B,C,D,E)
                  <=> ! [G,H,I,J] :
                        ( E = k4_mcart_1(G,H,I,J)
                       => F = H ) ) ) ) ) )).

fof(dt_k10_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
     => m1_subset_1(k10_mcart_1(A,B,C,D,E),C) ) )).

fof(dt_k11_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
     => m1_subset_1(k11_mcart_1(A,B,C,D,E),D) ) )).

fof(dt_k17_mcart_1,axiom,(
    $true )).

fof(dt_k18_mcart_1,axiom,(
    $true )).

fof(dt_k19_mcart_1,axiom,(
    $true )).

fof(dt_k1_mcart_1,axiom,(
    $true )).

fof(dt_k20_mcart_1,axiom,(
    $true )).

fof(dt_k2_mcart_1,axiom,(
    $true )).

fof(dt_k3_mcart_1,axiom,(
    $true )).

fof(dt_k3_zfmisc_1,axiom,(
    $true )).

fof(dt_k4_mcart_1,axiom,(
    $true )).

fof(dt_k4_zfmisc_1,axiom,(
    $true )).

fof(dt_k5_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
     => m1_subset_1(k5_mcart_1(A,B,C,D),A) ) )).

fof(dt_k6_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
     => m1_subset_1(k6_mcart_1(A,B,C,D),B) ) )).

fof(dt_k7_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
     => m1_subset_1(k7_mcart_1(A,B,C,D),C) ) )).

fof(dt_k8_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
     => m1_subset_1(k8_mcart_1(A,B,C,D,E),A) ) )).

fof(dt_k9_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
     => m1_subset_1(k9_mcart_1(A,B,C,D,E),B) ) )).

fof(dt_o_1_0_mcart_1,axiom,(
    ! [A] : m1_subset_1(o_1_0_mcart_1(A),A) )).

fof(l44_mcart_1,axiom,(
    ! [A,B,C] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & ? [D] :
            ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
            & ! [E] :
                ( m1_subset_1(E,A)
               => ! [F] :
                    ( m1_subset_1(F,B)
                   => ! [G] :
                        ( m1_subset_1(G,C)
                       => D != k3_mcart_1(E,F,G) ) ) ) ) ) )).

fof(l68_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ? [E] :
            ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
            & ! [F] :
                ( m1_subset_1(F,A)
               => ! [G] :
                    ( m1_subset_1(G,B)
                   => ! [H] :
                        ( m1_subset_1(H,C)
                       => ! [I] :
                            ( m1_subset_1(I,D)
                           => E != k4_mcart_1(F,G,H,I) ) ) ) ) ) ) )).

fof(s1_xboole_0__e1_2__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(A))
        & ~ r1_xboole_0(C,A) ) ) )).

fof(s1_xboole_0__e1_3__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(A))
        & ? [D] :
            ( r2_hidden(D,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(s1_xboole_0__e1_4__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(A))
        & ? [D,E] :
            ( r2_hidden(D,E)
            & r2_hidden(E,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(s1_xboole_0__e1_5__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(A))
        & ? [D,E,F] :
            ( r2_hidden(D,E)
            & r2_hidden(E,F)
            & r2_hidden(F,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(s1_xboole_0__e1_6__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(A))
        & ? [D,E,F,G] :
            ( r2_hidden(D,E)
            & r2_hidden(E,F)
            & r2_hidden(F,G)
            & r2_hidden(G,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(s1_xboole_0__e3_3__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(A)))
        & ~ r1_xboole_0(C,A) ) ) )).

fof(s1_xboole_0__e3_4__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(A)))
        & ? [D] :
            ( r2_hidden(D,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(s1_xboole_0__e3_5__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(A)))
        & ? [D,E] :
            ( r2_hidden(D,E)
            & r2_hidden(E,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(s1_xboole_0__e3_6__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(A)))
        & ? [D,E,F] :
            ( r2_hidden(D,E)
            & r2_hidden(E,F)
            & r2_hidden(F,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(s1_xboole_0__e5_4__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(k3_tarski(A))))
        & ~ r1_xboole_0(C,A) ) ) )).

fof(s1_xboole_0__e5_5__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(k3_tarski(k3_tarski(A)))))
        & ~ r1_xboole_0(C,A) ) ) )).

fof(s1_xboole_0__e5_6__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(k3_tarski(k3_tarski(k3_tarski(A))))))
        & ~ r1_xboole_0(C,A) ) ) )).

fof(s1_xboole_0__e7_5__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(k3_tarski(A))))
        & ? [D] :
            ( r2_hidden(D,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(s1_xboole_0__e7_6__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(k3_tarski(A))))
        & ? [D,E] :
            ( r2_hidden(D,E)
            & r2_hidden(E,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(s1_xboole_0__e9_6__mcart_1,axiom,(
    ! [A] :
    ? [B] :
    ! [C] :
      ( r2_hidden(C,B)
    <=> ( r2_hidden(C,k3_tarski(k3_tarski(k3_tarski(k3_tarski(A)))))
        & ? [D] :
            ( r2_hidden(D,C)
            & ~ r1_xboole_0(D,A) ) ) ) )).

fof(t10_mcart_1,axiom,(
    ! [A,B,C] :
      ( r2_hidden(A,k2_zfmisc_1(B,C))
     => ( r2_hidden(k1_mcart_1(A),B)
        & r2_hidden(k2_mcart_1(A),C) ) ) )).

fof(t11_mcart_1,axiom,(
    ! [A,B,C] :
      ( ( r2_hidden(k1_mcart_1(A),B)
        & r2_hidden(k2_mcart_1(A),C) )
     => ( ! [D,E] : A != k4_tarski(D,E)
        | r2_hidden(A,k2_zfmisc_1(B,C)) ) ) )).

fof(t12_mcart_1,axiom,(
    ! [A,B,C] :
      ( r2_hidden(A,k2_zfmisc_1(k1_tarski(B),C))
     => ( k1_mcart_1(A) = B
        & r2_hidden(k2_mcart_1(A),C) ) ) )).

fof(t13_mcart_1,axiom,(
    ! [A,B,C] :
      ( r2_hidden(A,k2_zfmisc_1(B,k1_tarski(C)))
     => ( r2_hidden(k1_mcart_1(A),B)
        & k2_mcart_1(A) = C ) ) )).

fof(t14_mcart_1,axiom,(
    ! [A,B,C] :
      ( r2_hidden(A,k2_zfmisc_1(k1_tarski(B),k1_tarski(C)))
     => ( k1_mcart_1(A) = B
        & k2_mcart_1(A) = C ) ) )).

fof(t15_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( r2_hidden(A,k2_zfmisc_1(k2_tarski(B,C),D))
     => ( ( k1_mcart_1(A) = B
          | k1_mcart_1(A) = C )
        & r2_hidden(k2_mcart_1(A),D) ) ) )).

fof(t16_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( r2_hidden(A,k2_zfmisc_1(B,k2_tarski(C,D)))
     => ( r2_hidden(k1_mcart_1(A),B)
        & ( k2_mcart_1(A) = C
          | k2_mcart_1(A) = D ) ) ) )).

fof(t17_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( r2_hidden(A,k2_zfmisc_1(k2_tarski(B,C),k1_tarski(D)))
     => ( ( k1_mcart_1(A) = B
          | k1_mcart_1(A) = C )
        & k2_mcart_1(A) = D ) ) )).

fof(t18_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( r2_hidden(A,k2_zfmisc_1(k1_tarski(B),k2_tarski(C,D)))
     => ( k1_mcart_1(A) = B
        & ( k2_mcart_1(A) = C
          | k2_mcart_1(A) = D ) ) ) )).

fof(t19_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( r2_hidden(A,k2_zfmisc_1(k2_tarski(B,C),k2_tarski(D,E)))
     => ( ( k1_mcart_1(A) = B
          | k1_mcart_1(A) = C )
        & ( k2_mcart_1(A) = D
          | k2_mcart_1(A) = E ) ) ) )).

fof(t1_mcart_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & r1_xboole_0(B,A) ) ) )).

fof(t20_mcart_1,axiom,(
    ! [A] :
      ( ? [B,C] : A = k4_tarski(B,C)
     => ( A != k1_mcart_1(A)
        & A != k2_mcart_1(A) ) ) )).

fof(t23_mcart_1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r2_hidden(A,B)
       => A = k4_tarski(k1_mcart_1(A),k2_mcart_1(A)) ) ) )).

fof(t24_mcart_1,axiom,(
    ! [A,B] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & ~ ! [C] :
              ( m1_subset_1(C,k2_zfmisc_1(A,B))
             => C = k4_tarski(k1_mcart_1(C),k2_mcart_1(C)) ) ) )).

fof(t25_mcart_1,axiom,(
    ! [A,B,C,D] : k2_zfmisc_1(k2_tarski(A,B),k2_tarski(C,D)) = k2_enumset1(k4_tarski(A,C),k4_tarski(A,D),k4_tarski(B,C),k4_tarski(B,D)) )).

fof(t26_mcart_1,axiom,(
    ! [A,B] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & ~ ! [C] :
              ( m1_subset_1(C,k2_zfmisc_1(A,B))
             => ( C != k1_mcart_1(C)
                & C != k2_mcart_1(C) ) ) ) )).

fof(t28_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( k3_mcart_1(A,B,C) = k3_mcart_1(D,E,F)
     => ( A = D
        & B = E
        & C = F ) ) )).

fof(t29_mcart_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C,D,E] :
                  ~ ( ( r2_hidden(C,A)
                      | r2_hidden(D,A) )
                    & B = k3_mcart_1(C,D,E) ) ) ) )).

fof(t2_mcart_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C] :
                  ( r2_hidden(C,B)
                 => r1_xboole_0(C,A) ) ) ) )).

fof(t31_mcart_1,axiom,(
    ! [A,B,C,D] : k4_mcart_1(A,B,C,D) = k4_tarski(k4_tarski(k4_tarski(A,B),C),D) )).

fof(t32_mcart_1,axiom,(
    ! [A,B,C,D] : k4_mcart_1(A,B,C,D) = k3_mcart_1(k4_tarski(A,B),C,D) )).

fof(t33_mcart_1,axiom,(
    ! [A,B,C,D,E,F,G,H] :
      ( k4_mcart_1(A,B,C,D) = k4_mcart_1(E,F,G,H)
     => ( A = E
        & B = F
        & C = G
        & D = H ) ) )).

fof(t34_mcart_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C,D,E,F] :
                  ~ ( ( r2_hidden(C,A)
                      | r2_hidden(D,A) )
                    & B = k4_mcart_1(C,D,E,F) ) ) ) )).

fof(t35_mcart_1,axiom,(
    ! [A,B,C] :
      ( ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0 )
    <=> k3_zfmisc_1(A,B,C) != k1_xboole_0 ) )).

fof(t36_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( k3_zfmisc_1(A,B,C) = k3_zfmisc_1(D,E,F)
     => ( A = k1_xboole_0
        | B = k1_xboole_0
        | C = k1_xboole_0
        | ( A = D
          & B = E
          & C = F ) ) ) )).

fof(t37_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( k3_zfmisc_1(A,B,C) = k3_zfmisc_1(D,E,F)
     => ( k3_zfmisc_1(A,B,C) = k1_xboole_0
        | ( A = D
          & B = E
          & C = F ) ) ) )).

fof(t38_mcart_1,axiom,(
    ! [A,B] :
      ( k3_zfmisc_1(A,A,A) = k3_zfmisc_1(B,B,B)
     => A = B ) )).

fof(t39_mcart_1,axiom,(
    ! [A,B,C] : k3_zfmisc_1(k1_tarski(A),k1_tarski(B),k1_tarski(C)) = k1_tarski(k3_mcart_1(A,B,C)) )).

fof(t3_mcart_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C,D] :
                  ( ( r2_hidden(C,D)
                    & r2_hidden(D,B) )
                 => r1_xboole_0(C,A) ) ) ) )).

fof(t40_mcart_1,axiom,(
    ! [A,B,C,D] : k3_zfmisc_1(k2_tarski(A,B),k1_tarski(C),k1_tarski(D)) = k2_tarski(k3_mcart_1(A,C,D),k3_mcart_1(B,C,D)) )).

fof(t41_mcart_1,axiom,(
    ! [A,B,C,D] : k3_zfmisc_1(k1_tarski(A),k2_tarski(B,C),k1_tarski(D)) = k2_tarski(k3_mcart_1(A,B,D),k3_mcart_1(A,C,D)) )).

fof(t42_mcart_1,axiom,(
    ! [A,B,C,D] : k3_zfmisc_1(k1_tarski(A),k1_tarski(B),k2_tarski(C,D)) = k2_tarski(k3_mcart_1(A,B,C),k3_mcart_1(A,B,D)) )).

fof(t43_mcart_1,axiom,(
    ! [A,B,C,D,E] : k3_zfmisc_1(k2_tarski(A,B),k2_tarski(C,D),k1_tarski(E)) = k2_enumset1(k3_mcart_1(A,C,E),k3_mcart_1(B,C,E),k3_mcart_1(A,D,E),k3_mcart_1(B,D,E)) )).

fof(t44_mcart_1,axiom,(
    ! [A,B,C,D,E] : k3_zfmisc_1(k2_tarski(A,B),k1_tarski(C),k2_tarski(D,E)) = k2_enumset1(k3_mcart_1(A,C,D),k3_mcart_1(B,C,D),k3_mcart_1(A,C,E),k3_mcart_1(B,C,E)) )).

fof(t45_mcart_1,axiom,(
    ! [A,B,C,D,E] : k3_zfmisc_1(k1_tarski(A),k2_tarski(B,C),k2_tarski(D,E)) = k2_enumset1(k3_mcart_1(A,B,D),k3_mcart_1(A,C,D),k3_mcart_1(A,B,E),k3_mcart_1(A,C,E)) )).

fof(t46_mcart_1,axiom,(
    ! [A,B,C,D,E,F] : k3_zfmisc_1(k2_tarski(A,B),k2_tarski(C,D),k2_tarski(E,F)) = k6_enumset1(k3_mcart_1(A,C,E),k3_mcart_1(A,D,E),k3_mcart_1(A,C,F),k3_mcart_1(A,D,F),k3_mcart_1(B,C,E),k3_mcart_1(B,D,E),k3_mcart_1(B,C,F),k3_mcart_1(B,D,F)) )).

fof(t47_mcart_1,axiom,(
    ! [A,B,C] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & ? [D] :
            ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
            & ? [E,F,G] :
                ( D = k3_mcart_1(E,F,G)
                & ~ ( k5_mcart_1(A,B,C,D) = E
                    & k6_mcart_1(A,B,C,D) = F
                    & k7_mcart_1(A,B,C,D) = G ) ) ) ) )).

fof(t48_mcart_1,axiom,(
    ! [A,B,C] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & ~ ! [D] :
              ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
             => D = k3_mcart_1(k5_mcart_1(A,B,C,D),k6_mcart_1(A,B,C,D),k7_mcart_1(A,B,C,D)) ) ) )).

fof(t49_mcart_1,axiom,(
    ! [A,B,C] :
      ( ~ ( ~ r1_tarski(A,k3_zfmisc_1(A,B,C))
          & ~ r1_tarski(A,k3_zfmisc_1(B,C,A))
          & ~ r1_tarski(A,k3_zfmisc_1(C,A,B)) )
     => A = k1_xboole_0 ) )).

fof(t4_mcart_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C,D,E] :
                  ( ( r2_hidden(C,D)
                    & r2_hidden(D,E)
                    & r2_hidden(E,B) )
                 => r1_xboole_0(C,A) ) ) ) )).

fof(t50_mcart_1,axiom,(
    ! [A,B,C] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & ~ ! [D] :
              ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
             => ( k5_mcart_1(A,B,C,D) = k1_mcart_1(k1_mcart_1(D))
                & k6_mcart_1(A,B,C,D) = k2_mcart_1(k1_mcart_1(D))
                & k7_mcart_1(A,B,C,D) = k2_mcart_1(D) ) ) ) )).

fof(t51_mcart_1,axiom,(
    ! [A,B,C] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & ~ ! [D] :
              ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
             => ( D != k5_mcart_1(A,B,C,D)
                & D != k6_mcart_1(A,B,C,D)
                & D != k7_mcart_1(A,B,C,D) ) ) ) )).

fof(t52_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ~ r1_xboole_0(k3_zfmisc_1(A,B,C),k3_zfmisc_1(D,E,F))
     => ( ~ r1_xboole_0(A,D)
        & ~ r1_xboole_0(B,E)
        & ~ r1_xboole_0(C,F) ) ) )).

fof(t53_mcart_1,axiom,(
    ! [A,B,C,D] : k4_zfmisc_1(A,B,C,D) = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,B),C),D) )).

fof(t54_mcart_1,axiom,(
    ! [A,B,C,D] : k3_zfmisc_1(k2_zfmisc_1(A,B),C,D) = k4_zfmisc_1(A,B,C,D) )).

fof(t55_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0 )
    <=> k4_zfmisc_1(A,B,C,D) != k1_xboole_0 ) )).

fof(t56_mcart_1,axiom,(
    ! [A,B,C,D,E,F,G,H] :
      ( k4_zfmisc_1(A,B,C,D) = k4_zfmisc_1(E,F,G,H)
     => ( A = k1_xboole_0
        | B = k1_xboole_0
        | C = k1_xboole_0
        | D = k1_xboole_0
        | ( A = E
          & B = F
          & C = G
          & D = H ) ) ) )).

fof(t57_mcart_1,axiom,(
    ! [A,B,C,D,E,F,G,H] :
      ( k4_zfmisc_1(A,B,C,D) = k4_zfmisc_1(E,F,G,H)
     => ( k4_zfmisc_1(A,B,C,D) = k1_xboole_0
        | ( A = E
          & B = F
          & C = G
          & D = H ) ) ) )).

fof(t58_mcart_1,axiom,(
    ! [A,B] :
      ( k4_zfmisc_1(A,A,A,A) = k4_zfmisc_1(B,B,B,B)
     => A = B ) )).

fof(t59_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ? [E] :
            ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
            & ? [F,G,H,I] :
                ( E = k4_mcart_1(F,G,H,I)
                & ~ ( k8_mcart_1(A,B,C,D,E) = F
                    & k9_mcart_1(A,B,C,D,E) = G
                    & k10_mcart_1(A,B,C,D,E) = H
                    & k11_mcart_1(A,B,C,D,E) = I ) ) ) ) )).

fof(t5_mcart_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C,D,E,F] :
                  ( ( r2_hidden(C,D)
                    & r2_hidden(D,E)
                    & r2_hidden(E,F)
                    & r2_hidden(F,B) )
                 => r1_xboole_0(C,A) ) ) ) )).

fof(t60_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ~ ! [E] :
              ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
             => E = k4_mcart_1(k8_mcart_1(A,B,C,D,E),k9_mcart_1(A,B,C,D,E),k10_mcart_1(A,B,C,D,E),k11_mcart_1(A,B,C,D,E)) ) ) )).

fof(t61_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ~ ! [E] :
              ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
             => ( k8_mcart_1(A,B,C,D,E) = k1_mcart_1(k1_mcart_1(k1_mcart_1(E)))
                & k9_mcart_1(A,B,C,D,E) = k2_mcart_1(k1_mcart_1(k1_mcart_1(E)))
                & k10_mcart_1(A,B,C,D,E) = k2_mcart_1(k1_mcart_1(E))
                & k11_mcart_1(A,B,C,D,E) = k2_mcart_1(E) ) ) ) )).

fof(t62_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ~ ! [E] :
              ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
             => ( E != k8_mcart_1(A,B,C,D,E)
                & E != k9_mcart_1(A,B,C,D,E)
                & E != k10_mcart_1(A,B,C,D,E)
                & E != k11_mcart_1(A,B,C,D,E) ) ) ) )).

fof(t63_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( ~ ( ~ r1_tarski(A,k4_zfmisc_1(A,B,C,D))
          & ~ r1_tarski(A,k4_zfmisc_1(B,C,D,A))
          & ~ r1_tarski(A,k4_zfmisc_1(C,D,A,B))
          & ~ r1_tarski(A,k4_zfmisc_1(D,A,B,C)) )
     => A = k1_xboole_0 ) )).

fof(t64_mcart_1,axiom,(
    ! [A,B,C,D,E,F,G,H] :
      ( ~ r1_xboole_0(k4_zfmisc_1(A,B,C,D),k4_zfmisc_1(E,F,G,H))
     => ( ~ r1_xboole_0(A,E)
        & ~ r1_xboole_0(B,F)
        & ~ r1_xboole_0(C,G)
        & ~ r1_xboole_0(D,H) ) ) )).

fof(t65_mcart_1,axiom,(
    ! [A,B,C,D] : k4_zfmisc_1(k1_tarski(A),k1_tarski(B),k1_tarski(C),k1_tarski(D)) = k1_tarski(k4_mcart_1(A,B,C,D)) )).

fof(t66_mcart_1,axiom,(
    ! [A,B] :
      ( k2_zfmisc_1(A,B) != k1_xboole_0
     => ! [C] :
          ( m1_subset_1(C,k2_zfmisc_1(A,B))
         => ( C != k1_mcart_1(C)
            & C != k2_mcart_1(C) ) ) ) )).

fof(t67_mcart_1,axiom,(
    ! [A,B,C] :
      ( r2_hidden(A,k2_zfmisc_1(B,C))
     => ( A != k1_mcart_1(A)
        & A != k2_mcart_1(A) ) ) )).

fof(t68_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(D,k3_zfmisc_1(A,B,C))
     => ~ ( A != k1_xboole_0
          & B != k1_xboole_0
          & C != k1_xboole_0
          & ? [E,F,G] :
              ( D = k3_mcart_1(E,F,G)
              & ~ ( k5_mcart_1(A,B,C,D) = E
                  & k6_mcart_1(A,B,C,D) = F
                  & k7_mcart_1(A,B,C,D) = G ) ) ) ) )).

fof(t69_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k3_zfmisc_1(A,B,C))
     => ( ! [F] :
            ( m1_subset_1(F,A)
           => ! [G] :
                ( m1_subset_1(G,B)
               => ! [H] :
                    ( m1_subset_1(H,C)
                   => ( E = k3_mcart_1(F,G,H)
                     => D = F ) ) ) )
       => ( A = k1_xboole_0
          | B = k1_xboole_0
          | C = k1_xboole_0
          | D = k5_mcart_1(A,B,C,E) ) ) ) )).

fof(t6_mcart_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C,D,E,F,G] :
                  ( ( r2_hidden(C,D)
                    & r2_hidden(D,E)
                    & r2_hidden(E,F)
                    & r2_hidden(F,G)
                    & r2_hidden(G,B) )
                 => r1_xboole_0(C,A) ) ) ) )).

fof(t70_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k3_zfmisc_1(A,B,C))
     => ( ! [F] :
            ( m1_subset_1(F,A)
           => ! [G] :
                ( m1_subset_1(G,B)
               => ! [H] :
                    ( m1_subset_1(H,C)
                   => ( E = k3_mcart_1(F,G,H)
                     => D = G ) ) ) )
       => ( A = k1_xboole_0
          | B = k1_xboole_0
          | C = k1_xboole_0
          | D = k6_mcart_1(A,B,C,E) ) ) ) )).

fof(t71_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k3_zfmisc_1(A,B,C))
     => ( ! [F] :
            ( m1_subset_1(F,A)
           => ! [G] :
                ( m1_subset_1(G,B)
               => ! [H] :
                    ( m1_subset_1(H,C)
                   => ( E = k3_mcart_1(F,G,H)
                     => D = H ) ) ) )
       => ( A = k1_xboole_0
          | B = k1_xboole_0
          | C = k1_xboole_0
          | D = k7_mcart_1(A,B,C,E) ) ) ) )).

fof(t72_mcart_1,axiom,(
    ! [A,B,C,D] :
      ~ ( r2_hidden(A,k3_zfmisc_1(B,C,D))
        & ! [E,F,G] :
            ~ ( r2_hidden(E,B)
              & r2_hidden(F,C)
              & r2_hidden(G,D)
              & A = k3_mcart_1(E,F,G) ) ) )).

fof(t73_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( r2_hidden(k3_mcart_1(A,B,C),k3_zfmisc_1(D,E,F))
    <=> ( r2_hidden(A,D)
        & r2_hidden(B,E)
        & r2_hidden(C,F) ) ) )).

fof(t74_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( ! [E] :
          ( r2_hidden(E,A)
        <=> ? [F,G,H] :
              ( r2_hidden(F,B)
              & r2_hidden(G,C)
              & r2_hidden(H,D)
              & E = k3_mcart_1(F,G,H) ) )
     => A = k3_zfmisc_1(B,C,D) ) )).

fof(t75_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & E != k1_xboole_0
        & F != k1_xboole_0
        & ? [G] :
            ( m1_subset_1(G,k3_zfmisc_1(A,B,C))
            & ? [H] :
                ( m1_subset_1(H,k3_zfmisc_1(D,E,F))
                & G = H
                & ~ ( k5_mcart_1(A,B,C,G) = k5_mcart_1(D,E,F,H)
                    & k6_mcart_1(A,B,C,G) = k6_mcart_1(D,E,F,H)
                    & k7_mcart_1(A,B,C,G) = k7_mcart_1(D,E,F,H) ) ) ) ) )).

fof(t76_mcart_1,axiom,(
    ! [A,B,C,D] :
      ( m1_subset_1(D,k1_zfmisc_1(A))
     => ! [E] :
          ( m1_subset_1(E,k1_zfmisc_1(B))
         => ! [F] :
              ( m1_subset_1(F,k1_zfmisc_1(C))
             => ! [G] :
                  ( m1_subset_1(G,k3_zfmisc_1(A,B,C))
                 => ( r2_hidden(G,k3_zfmisc_1(D,E,F))
                   => ( r2_hidden(k5_mcart_1(A,B,C,G),D)
                      & r2_hidden(k6_mcart_1(A,B,C,G),E)
                      & r2_hidden(k7_mcart_1(A,B,C,G),F) ) ) ) ) ) ) )).

fof(t77_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,D)
        & r1_tarski(E,F) )
     => r1_tarski(k3_zfmisc_1(A,C,E),k3_zfmisc_1(B,D,F)) ) )).

fof(t78_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
     => ~ ( A != k1_xboole_0
          & B != k1_xboole_0
          & C != k1_xboole_0
          & D != k1_xboole_0
          & ? [F,G,H,I] :
              ( E = k4_mcart_1(F,G,H,I)
              & ~ ( k8_mcart_1(A,B,C,D,E) = F
                  & k9_mcart_1(A,B,C,D,E) = G
                  & k10_mcart_1(A,B,C,D,E) = H
                  & k11_mcart_1(A,B,C,D,E) = I ) ) ) ) )).

fof(t79_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( m1_subset_1(F,k4_zfmisc_1(A,B,C,D))
     => ( ! [G] :
            ( m1_subset_1(G,A)
           => ! [H] :
                ( m1_subset_1(H,B)
               => ! [I] :
                    ( m1_subset_1(I,C)
                   => ! [J] :
                        ( m1_subset_1(J,D)
                       => ( F = k4_mcart_1(G,H,I,J)
                         => E = G ) ) ) ) )
       => ( A = k1_xboole_0
          | B = k1_xboole_0
          | C = k1_xboole_0
          | D = k1_xboole_0
          | E = k8_mcart_1(A,B,C,D,F) ) ) ) )).

fof(t7_mcart_1,axiom,(
    ! [A,B] :
      ( k1_mcart_1(k4_tarski(A,B)) = A
      & k2_mcart_1(k4_tarski(A,B)) = B ) )).

fof(t80_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( m1_subset_1(F,k4_zfmisc_1(A,B,C,D))
     => ( ! [G] :
            ( m1_subset_1(G,A)
           => ! [H] :
                ( m1_subset_1(H,B)
               => ! [I] :
                    ( m1_subset_1(I,C)
                   => ! [J] :
                        ( m1_subset_1(J,D)
                       => ( F = k4_mcart_1(G,H,I,J)
                         => E = H ) ) ) ) )
       => ( A = k1_xboole_0
          | B = k1_xboole_0
          | C = k1_xboole_0
          | D = k1_xboole_0
          | E = k9_mcart_1(A,B,C,D,F) ) ) ) )).

fof(t81_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( m1_subset_1(F,k4_zfmisc_1(A,B,C,D))
     => ( ! [G] :
            ( m1_subset_1(G,A)
           => ! [H] :
                ( m1_subset_1(H,B)
               => ! [I] :
                    ( m1_subset_1(I,C)
                   => ! [J] :
                        ( m1_subset_1(J,D)
                       => ( F = k4_mcart_1(G,H,I,J)
                         => E = I ) ) ) ) )
       => ( A = k1_xboole_0
          | B = k1_xboole_0
          | C = k1_xboole_0
          | D = k1_xboole_0
          | E = k10_mcart_1(A,B,C,D,F) ) ) ) )).

fof(t82_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( m1_subset_1(F,k4_zfmisc_1(A,B,C,D))
     => ( ! [G] :
            ( m1_subset_1(G,A)
           => ! [H] :
                ( m1_subset_1(H,B)
               => ! [I] :
                    ( m1_subset_1(I,C)
                   => ! [J] :
                        ( m1_subset_1(J,D)
                       => ( F = k4_mcart_1(G,H,I,J)
                         => E = J ) ) ) ) )
       => ( A = k1_xboole_0
          | B = k1_xboole_0
          | C = k1_xboole_0
          | D = k1_xboole_0
          | E = k11_mcart_1(A,B,C,D,F) ) ) ) )).

fof(t83_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ~ ( r2_hidden(A,k4_zfmisc_1(B,C,D,E))
        & ! [F,G,H,I] :
            ~ ( r2_hidden(F,B)
              & r2_hidden(G,C)
              & r2_hidden(H,D)
              & r2_hidden(I,E)
              & A = k4_mcart_1(F,G,H,I) ) ) )).

fof(t84_mcart_1,axiom,(
    ! [A,B,C,D,E,F,G,H] :
      ( r2_hidden(k4_mcart_1(A,B,C,D),k4_zfmisc_1(E,F,G,H))
    <=> ( r2_hidden(A,E)
        & r2_hidden(B,F)
        & r2_hidden(C,G)
        & r2_hidden(D,H) ) ) )).

fof(t85_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( ! [F] :
          ( r2_hidden(F,A)
        <=> ? [G,H,I,J] :
              ( r2_hidden(G,B)
              & r2_hidden(H,C)
              & r2_hidden(I,D)
              & r2_hidden(J,E)
              & F = k4_mcart_1(G,H,I,J) ) )
     => A = k4_zfmisc_1(B,C,D,E) ) )).

fof(t86_mcart_1,axiom,(
    ! [A,B,C,D,E,F,G,H] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & E != k1_xboole_0
        & F != k1_xboole_0
        & G != k1_xboole_0
        & H != k1_xboole_0
        & ? [I] :
            ( m1_subset_1(I,k4_zfmisc_1(A,B,C,D))
            & ? [J] :
                ( m1_subset_1(J,k4_zfmisc_1(E,F,G,H))
                & I = J
                & ~ ( k8_mcart_1(A,B,C,D,I) = k8_mcart_1(E,F,G,H,J)
                    & k9_mcart_1(A,B,C,D,I) = k9_mcart_1(E,F,G,H,J)
                    & k10_mcart_1(A,B,C,D,I) = k10_mcart_1(E,F,G,H,J)
                    & k11_mcart_1(A,B,C,D,I) = k11_mcart_1(E,F,G,H,J) ) ) ) ) )).

fof(t87_mcart_1,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k1_zfmisc_1(A))
     => ! [F] :
          ( m1_subset_1(F,k1_zfmisc_1(B))
         => ! [G] :
              ( m1_subset_1(G,k1_zfmisc_1(C))
             => ! [H] :
                  ( m1_subset_1(H,k1_zfmisc_1(D))
                 => ! [I] :
                      ( m1_subset_1(I,k4_zfmisc_1(A,B,C,D))
                     => ( r2_hidden(I,k4_zfmisc_1(E,F,G,H))
                       => ( r2_hidden(k8_mcart_1(A,B,C,D,I),E)
                          & r2_hidden(k9_mcart_1(A,B,C,D,I),F)
                          & r2_hidden(k10_mcart_1(A,B,C,D,I),G)
                          & r2_hidden(k11_mcart_1(A,B,C,D,I),H) ) ) ) ) ) ) ) )).

fof(t88_mcart_1,axiom,(
    ! [A,B,C,D,E,F,G,H] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,D)
        & r1_tarski(E,F)
        & r1_tarski(G,H) )
     => r1_tarski(k4_zfmisc_1(A,C,E,G),k4_zfmisc_1(B,D,F,H)) ) )).

fof(t89_mcart_1,axiom,(
    ! [A,B,C,D,E,F] :
      ( k17_mcart_1(k4_tarski(k4_tarski(A,B),C)) = A
      & k18_mcart_1(k4_tarski(k4_tarski(A,B),C)) = B
      & k19_mcart_1(k4_tarski(F,k4_tarski(D,E))) = D
      & k20_mcart_1(k4_tarski(F,k4_tarski(D,E))) = E ) )).

fof(t8_mcart_1,axiom,(
    ! [A] :
      ( ? [B,C] : A = k4_tarski(B,C)
     => k4_tarski(k1_mcart_1(A),k2_mcart_1(A)) = A ) )).

fof(t91_mcart_1,conjecture,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r2_hidden(B,A)
         => ( r2_hidden(k1_mcart_1(B),k1_relat_1(A))
            & r2_hidden(k2_mcart_1(B),k2_relat_1(A)) ) ) ) )).

fof(t9_mcart_1,axiom,(
    ! [A] :
      ~ ( A != k1_xboole_0
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C,D] :
                  ~ ( ( r2_hidden(C,A)
                      | r2_hidden(D,A) )
                    & B = k4_tarski(C,D) ) ) ) )).

%------------------------------------------------------------------------------
