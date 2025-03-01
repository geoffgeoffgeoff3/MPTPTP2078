%------------------------------------------------------------------------------
% File     : MPT0810+2 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : wellord1__t63_wellord1.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    : 1207 ( 308 unit)
%            Number of atoms       : 3787 ( 945 equality)
%            Maximal formula depth :   26 (   6 average)
%            Number of connectives : 3067 ( 487   ~;  36   |;1003   &)
%                                         ( 229 <=>;1312  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   50 (   1 propositional; 0-3 arity)
%            Number of functors    :   71 (   3 constant; 0-10 arity)
%            Number of variables   : 3251 (   7 sgn;3174   !;  77   ?)
%            Maximal term depth    :    5 (   1 average)
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
%------------------------------------------------------------------------------
fof(d12_relat_2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v4_relat_2(A)
      <=> r4_relat_2(A,k3_relat_1(A)) ) ) )).

fof(d14_relat_2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v6_relat_2(A)
      <=> r6_relat_2(A,k3_relat_1(A)) ) ) )).

fof(d16_relat_2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v8_relat_2(A)
      <=> r8_relat_2(A,k3_relat_1(A)) ) ) )).

fof(d1_relat_2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r1_relat_2(A,B)
        <=> ! [C] :
              ( r2_hidden(C,B)
             => r2_hidden(k4_tarski(C,C),A) ) ) ) )).

fof(d1_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B,C] :
          ( C = k1_wellord1(A,B)
        <=> ! [D] :
              ( r2_hidden(D,C)
            <=> ( D != B
                & r2_hidden(k4_tarski(D,B),A) ) ) ) ) )).

fof(d2_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v1_wellord1(A)
      <=> ! [B] :
            ~ ( r1_tarski(B,k3_relat_1(A))
              & B != k1_xboole_0
              & ! [C] :
                  ~ ( r2_hidden(C,B)
                    & r1_xboole_0(k1_wellord1(A,C),B) ) ) ) ) )).

fof(d3_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r1_wellord1(A,B)
        <=> ! [C] :
              ~ ( r1_tarski(C,B)
                & C != k1_xboole_0
                & ! [D] :
                    ~ ( r2_hidden(D,C)
                      & r1_xboole_0(k1_wellord1(A,D),C) ) ) ) ) )).

fof(d4_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v2_wellord1(A)
      <=> ( v1_relat_2(A)
          & v8_relat_2(A)
          & v4_relat_2(A)
          & v6_relat_2(A)
          & v1_wellord1(A) ) ) ) )).

fof(d5_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r2_wellord1(A,B)
        <=> ( r1_relat_2(A,B)
            & r8_relat_2(A,B)
            & r4_relat_2(A,B)
            & r6_relat_2(A,B)
            & r1_wellord1(A,B) ) ) ) )).

fof(d6_relat_2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r6_relat_2(A,B)
        <=> ! [C,D] :
              ~ ( r2_hidden(C,B)
                & r2_hidden(D,B)
                & C != D
                & ~ r2_hidden(k4_tarski(C,D),A)
                & ~ r2_hidden(k4_tarski(D,C),A) ) ) ) )).

fof(d6_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] : k2_wellord1(A,B) = k3_xboole_0(A,k2_zfmisc_1(B,B)) ) )).

fof(d7_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( r3_wellord1(A,B,C)
              <=> ( k1_relat_1(C) = k3_relat_1(A)
                  & k2_relat_1(C) = k3_relat_1(B)
                  & v2_funct_1(C)
                  & ! [D,E] :
                      ( r2_hidden(k4_tarski(D,E),A)
                    <=> ( r2_hidden(D,k3_relat_1(A))
                        & r2_hidden(E,k3_relat_1(A))
                        & r2_hidden(k4_tarski(k1_funct_1(C,D),k1_funct_1(C,E)),B) ) ) ) ) ) ) ) )).

fof(d8_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r4_wellord1(A,B)
          <=> ? [C] :
                ( v1_relat_1(C)
                & v1_funct_1(C)
                & r3_wellord1(A,B,C) ) ) ) ) )).

fof(d9_relat_2,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v1_relat_2(A)
      <=> r1_relat_2(A,k3_relat_1(A)) ) ) )).

fof(d9_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( ( v2_wellord1(A)
              & r4_wellord1(A,B) )
           => ! [C] :
                ( ( v1_relat_1(C)
                  & v1_funct_1(C) )
               => ( C = k3_wellord1(A,B)
                <=> r3_wellord1(A,B,C) ) ) ) ) ) )).

fof(dt_k1_wellord1,axiom,(
    $true )).

fof(dt_k2_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(A)
     => v1_relat_1(k2_wellord1(A,B)) ) )).

fof(dt_k3_wellord1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => ( v1_relat_1(k3_wellord1(A,B))
        & v1_funct_1(k3_wellord1(A,B)) ) ) )).

fof(dt_o_2_0_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => m1_subset_1(o_2_0_wellord1(A,B),k1_wellord1(B,A)) ) )).

fof(fc17_funct_1,axiom,(
    ! [A,B,C] :
      ( ( v4_funct_1(A)
        & v1_relat_1(C)
        & v5_relat_1(C,A)
        & v1_funct_1(C) )
     => ( v1_relat_1(k1_funct_1(C,B))
        & v1_funct_1(k1_funct_1(C,B)) ) ) )).

fof(l1_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v1_relat_2(A)
      <=> ! [B] :
            ( r2_hidden(B,k3_relat_1(A))
           => r2_hidden(k4_tarski(B,B),A) ) ) ) )).

fof(l29_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k1_relat_1(k8_relat_1(A,B)),k1_relat_1(B)) ) )).

fof(l2_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v8_relat_2(A)
      <=> ! [B,C,D] :
            ( ( r2_hidden(k4_tarski(B,C),A)
              & r2_hidden(k4_tarski(C,D),A) )
           => r2_hidden(k4_tarski(B,D),A) ) ) ) )).

fof(l3_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v4_relat_2(A)
      <=> ! [B,C] :
            ( ( r2_hidden(k4_tarski(B,C),A)
              & r2_hidden(k4_tarski(C,B),A) )
           => B = C ) ) ) )).

fof(l4_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v6_relat_2(A)
      <=> ! [B,C] :
            ~ ( r2_hidden(B,k3_relat_1(A))
              & r2_hidden(C,k3_relat_1(A))
              & B != C
              & ~ r2_hidden(k4_tarski(B,C),A)
              & ~ r2_hidden(k4_tarski(C,B),A) ) ) ) )).

fof(rc6_funct_1,axiom,(
    ! [A,B] :
    ? [C] :
      ( v1_relat_1(C)
      & v4_relat_1(C,A)
      & v5_relat_1(C,B)
      & v1_funct_1(C) ) )).

fof(rc9_funct_1,axiom,(
    ! [A] :
    ? [B] :
      ( v1_relat_1(B)
      & v2_relat_1(B)
      & v4_relat_1(B,A)
      & v1_funct_1(B) ) )).

fof(s1_funct_1__e10_74__wellord1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => ( ! [C,D,E] :
            ( ( r2_hidden(D,k3_relat_1(B))
              & r4_wellord1(k2_wellord1(A,k1_wellord1(A,C)),k2_wellord1(B,k1_wellord1(B,D)))
              & r2_hidden(E,k3_relat_1(B))
              & r4_wellord1(k2_wellord1(A,k1_wellord1(A,C)),k2_wellord1(B,k1_wellord1(B,E))) )
           => D = E )
       => ? [C] :
            ( v1_relat_1(C)
            & v1_funct_1(C)
            & ! [D,E] :
                ( r2_hidden(k4_tarski(D,E),C)
              <=> ( r2_hidden(D,k3_relat_1(A))
                  & r2_hidden(E,k3_relat_1(B))
                  & r4_wellord1(k2_wellord1(A,k1_wellord1(A,D)),k2_wellord1(B,k1_wellord1(B,E))) ) ) ) ) ) )).

fof(s1_xboole_0__e4_51__wellord1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B) )
     => ? [C] :
        ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,k3_relat_1(A))
            & r2_hidden(k4_tarski(D,k1_funct_1(B,D)),A) ) ) ) )).

fof(s1_xboole_0__e6_74__wellord1,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => ? [C] :
        ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,k3_relat_1(A))
            & ? [E] :
                ( r2_hidden(E,k3_relat_1(B))
                & r4_wellord1(k2_wellord1(A,k1_wellord1(A,D)),k2_wellord1(B,k1_wellord1(B,E))) ) ) ) ) )).

fof(s1_xboole_0__e7_18__wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(A)
     => ? [C] :
        ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,k3_relat_1(A))
            & ~ r2_hidden(k4_tarski(D,B),A) ) ) ) )).

fof(t10_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v2_wellord1(A)
       => ! [B] :
            ~ ( r1_tarski(B,k3_relat_1(A))
              & B != k1_xboole_0
              & ! [C] :
                  ~ ( r2_hidden(C,B)
                    & ! [D] :
                        ( r2_hidden(D,B)
                       => r2_hidden(k4_tarski(C,D),A) ) ) ) ) ) )).

fof(t11_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ~ ( v2_wellord1(A)
          & k3_relat_1(A) != k1_xboole_0
          & ! [B] :
              ~ ( r2_hidden(B,k3_relat_1(A))
                & ! [C] :
                    ( r2_hidden(C,k3_relat_1(A))
                   => r2_hidden(k4_tarski(B,C),A) ) ) ) ) )).

fof(t12_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v2_wellord1(A)
       => ! [B] :
            ~ ( r2_hidden(B,k3_relat_1(A))
              & ? [C] :
                  ( r2_hidden(C,k3_relat_1(A))
                  & ~ r2_hidden(k4_tarski(C,B),A) )
              & ! [C] :
                  ~ ( r2_hidden(C,k3_relat_1(A))
                    & r2_hidden(k4_tarski(B,C),A)
                    & ! [D] :
                        ~ ( r2_hidden(D,k3_relat_1(A))
                          & r2_hidden(k4_tarski(B,D),A)
                          & D != B
                          & ~ r2_hidden(k4_tarski(C,D),A) ) ) ) ) ) )).

fof(t13_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k1_wellord1(B,A),k3_relat_1(B)) ) )).

fof(t17_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => k2_wellord1(B,A) = k7_relat_1(k8_relat_1(A,B),A) ) )).

fof(t18_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => k2_wellord1(B,A) = k8_relat_1(A,k7_relat_1(B,A)) ) )).

fof(t19_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r2_hidden(A,k3_relat_1(k2_wellord1(C,B)))
       => ( r2_hidden(A,k3_relat_1(C))
          & r2_hidden(A,B) ) ) ) )).

fof(t20_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k3_relat_1(k2_wellord1(B,A)),k3_relat_1(B))
        & r1_tarski(k3_relat_1(k2_wellord1(B,A)),A) ) ) )).

fof(t21_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => r1_tarski(k1_wellord1(k2_wellord1(C,A),B),k1_wellord1(C,B)) ) )).

fof(t22_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( v1_relat_2(B)
       => v1_relat_2(k2_wellord1(B,A)) ) ) )).

fof(t23_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( v6_relat_2(B)
       => v6_relat_2(k2_wellord1(B,A)) ) ) )).

fof(t24_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( v8_relat_2(B)
       => v8_relat_2(k2_wellord1(B,A)) ) ) )).

fof(t25_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( v4_relat_2(B)
       => v4_relat_2(k2_wellord1(B,A)) ) ) )).

fof(t26_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k2_wellord1(k2_wellord1(C,A),B) = k2_wellord1(C,k3_xboole_0(A,B)) ) )).

fof(t27_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k2_wellord1(k2_wellord1(C,A),B) = k2_wellord1(k2_wellord1(C,B),A) ) )).

fof(t28_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => k2_wellord1(k2_wellord1(B,A),A) = k2_wellord1(B,A) ) )).

fof(t29_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => k2_wellord1(k2_wellord1(C,B),A) = k2_wellord1(C,A) ) ) )).

fof(t2_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r2_hidden(A,k3_relat_1(B))
        | k1_wellord1(B,A) = k1_xboole_0 ) ) )).

fof(t30_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => k2_wellord1(A,k3_relat_1(A)) = A ) )).

fof(t31_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( v1_wellord1(B)
       => v1_wellord1(k2_wellord1(B,A)) ) ) )).

fof(t32_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( v2_wellord1(B)
       => v2_wellord1(k2_wellord1(B,A)) ) ) )).

fof(t33_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( v2_wellord1(C)
       => r3_xboole_0(k1_wellord1(C,A),k1_wellord1(C,B)) ) ) )).

fof(t35_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( v2_wellord1(C)
          & r2_hidden(A,k1_wellord1(C,B)) )
       => k1_wellord1(k2_wellord1(C,k1_wellord1(C,B)),A) = k1_wellord1(C,A) ) ) )).

fof(t36_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( ( v2_wellord1(B)
          & r1_tarski(A,k3_relat_1(B)) )
       => ( ~ ( A != k3_relat_1(B)
              & ! [C] :
                  ~ ( r2_hidden(C,k3_relat_1(B))
                    & A = k1_wellord1(B,C) ) )
        <=> ! [C] :
              ( r2_hidden(C,A)
             => ! [D] :
                  ( r2_hidden(k4_tarski(D,C),B)
                 => r2_hidden(D,A) ) ) ) ) ) )).

fof(t37_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( v2_wellord1(C)
          & r2_hidden(A,k3_relat_1(C))
          & r2_hidden(B,k3_relat_1(C)) )
       => ( r2_hidden(k4_tarski(A,B),C)
        <=> r1_tarski(k1_wellord1(C,A),k1_wellord1(C,B)) ) ) ) )).

fof(t38_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( v2_wellord1(C)
          & r2_hidden(A,k3_relat_1(C))
          & r2_hidden(B,k3_relat_1(C)) )
       => ( r1_tarski(k1_wellord1(C,A),k1_wellord1(C,B))
        <=> ( A = B
            | r2_hidden(A,k1_wellord1(C,B)) ) ) ) ) )).

fof(t39_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( ( v2_wellord1(B)
          & r1_tarski(A,k3_relat_1(B)) )
       => k3_relat_1(k2_wellord1(B,A)) = A ) ) )).

fof(t40_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( v2_wellord1(B)
       => k3_relat_1(k2_wellord1(B,k1_wellord1(B,A))) = k1_wellord1(B,A) ) ) )).

fof(t41_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v2_wellord1(A)
       => ! [B] :
            ( ! [C] :
                ( ( r2_hidden(C,k3_relat_1(A))
                  & r1_tarski(k1_wellord1(A,C),B) )
               => r2_hidden(C,B) )
           => r1_tarski(k3_relat_1(A),B) ) ) ) )).

fof(t42_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( v2_wellord1(C)
          & r2_hidden(A,k3_relat_1(C))
          & r2_hidden(B,k3_relat_1(C))
          & ! [D] :
              ( r2_hidden(D,k1_wellord1(C,A))
             => ( r2_hidden(k4_tarski(D,B),C)
                & D != B ) ) )
       => r2_hidden(k4_tarski(A,B),C) ) ) )).

fof(t43_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_wellord1(A)
              & k1_relat_1(B) = k3_relat_1(A)
              & r1_tarski(k2_relat_1(B),k3_relat_1(A))
              & ! [C,D] :
                  ( r2_hidden(k4_tarski(C,D),A)
                 => ( C = D
                    | ( r2_hidden(k4_tarski(k1_funct_1(B,C),k1_funct_1(B,D)),A)
                      & k1_funct_1(B,C) != k1_funct_1(B,D) ) ) ) )
           => ! [C] :
                ( r2_hidden(C,k3_relat_1(A))
               => r2_hidden(k4_tarski(C,k1_funct_1(B,C)),A) ) ) ) ) )).

fof(t45_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( r3_wellord1(A,B,C)
               => ! [D,E] :
                    ( r2_hidden(k4_tarski(D,E),A)
                   => ( D = E
                      | ( r2_hidden(k4_tarski(k1_funct_1(C,D),k1_funct_1(C,E)),B)
                        & k1_funct_1(C,D) != k1_funct_1(C,E) ) ) ) ) ) ) ) )).

fof(t47_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => r3_wellord1(A,A,k6_relat_1(k3_relat_1(A))) ) )).

fof(t48_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => r4_wellord1(A,A) ) )).

fof(t49_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( r3_wellord1(A,B,C)
               => r3_wellord1(B,A,k2_funct_1(C)) ) ) ) ) )).

fof(t50_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r4_wellord1(A,B)
           => r4_wellord1(B,A) ) ) ) )).

fof(t51_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => ! [D] :
                  ( ( v1_relat_1(D)
                    & v1_funct_1(D) )
                 => ! [E] :
                      ( ( v1_relat_1(E)
                        & v1_funct_1(E) )
                     => ( ( r3_wellord1(A,B,D)
                          & r3_wellord1(B,C,E) )
                       => r3_wellord1(A,C,k5_relat_1(D,E)) ) ) ) ) ) ) )).

fof(t52_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => ( ( r4_wellord1(A,B)
                  & r4_wellord1(B,C) )
               => r4_wellord1(A,C) ) ) ) ) )).

fof(t53_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( r3_wellord1(A,B,C)
               => ( ( v1_relat_2(A)
                   => v1_relat_2(B) )
                  & ( v8_relat_2(A)
                   => v8_relat_2(B) )
                  & ( v6_relat_2(A)
                   => v6_relat_2(B) )
                  & ( v4_relat_2(A)
                   => v4_relat_2(B) )
                  & ( v1_wellord1(A)
                   => v1_wellord1(B) ) ) ) ) ) ) )).

fof(t54_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( ( v2_wellord1(A)
                  & r3_wellord1(A,B,C) )
               => v2_wellord1(B) ) ) ) ) )).

fof(t55_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( v2_wellord1(A)
           => ! [C] :
                ( ( v1_relat_1(C)
                  & v1_funct_1(C) )
               => ! [D] :
                    ( ( v1_relat_1(D)
                      & v1_funct_1(D) )
                   => ( ( r3_wellord1(A,B,C)
                        & r3_wellord1(A,B,D) )
                     => C = D ) ) ) ) ) ) )).

fof(t57_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v2_wellord1(A)
       => ! [B] :
            ~ ( r2_hidden(B,k3_relat_1(A))
              & r4_wellord1(A,k2_wellord1(A,k1_wellord1(A,B))) ) ) ) )).

fof(t58_wellord1,axiom,(
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ~ ( v2_wellord1(C)
          & r2_hidden(A,k3_relat_1(C))
          & r2_hidden(B,k3_relat_1(C))
          & A != B
          & r4_wellord1(k2_wellord1(C,k1_wellord1(C,A)),k2_wellord1(C,k1_wellord1(C,B))) ) ) )).

fof(t59_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => ! [D] :
              ( ( v1_relat_1(D)
                & v1_funct_1(D) )
             => ( ( v2_wellord1(B)
                  & r1_tarski(A,k3_relat_1(B))
                  & r3_wellord1(B,C,D) )
               => ( r3_wellord1(k2_wellord1(B,A),k2_wellord1(C,k9_relat_1(D,A)),k7_relat_1(D,A))
                  & r4_wellord1(k2_wellord1(B,A),k2_wellord1(C,k9_relat_1(D,A))) ) ) ) ) ) )).

fof(t5_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( v1_wellord1(A)
      <=> r1_wellord1(A,k3_relat_1(A)) ) ) )).

fof(t60_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( r3_wellord1(A,B,C)
               => ! [D] :
                    ~ ( r2_hidden(D,k3_relat_1(A))
                      & ! [E] :
                          ~ ( r2_hidden(E,k3_relat_1(B))
                            & k9_relat_1(C,k1_wellord1(A,D)) = k1_wellord1(B,E) ) ) ) ) ) ) )).

fof(t61_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( ( v2_wellord1(A)
                  & r3_wellord1(A,B,C) )
               => ! [D] :
                    ~ ( r2_hidden(D,k3_relat_1(A))
                      & ! [E] :
                          ~ ( r2_hidden(E,k3_relat_1(B))
                            & r4_wellord1(k2_wellord1(A,k1_wellord1(A,D)),k2_wellord1(B,k1_wellord1(B,E))) ) ) ) ) ) ) )).

fof(t62_wellord1,axiom,(
    ! [A,B,C,D] :
      ( v1_relat_1(D)
     => ! [E] :
          ( v1_relat_1(E)
         => ( ( v2_wellord1(D)
              & v2_wellord1(E)
              & r2_hidden(A,k3_relat_1(D))
              & r2_hidden(B,k3_relat_1(E))
              & r2_hidden(C,k3_relat_1(E))
              & r4_wellord1(D,k2_wellord1(E,k1_wellord1(E,B)))
              & r4_wellord1(k2_wellord1(D,k1_wellord1(D,A)),k2_wellord1(E,k1_wellord1(E,C))) )
           => ( r1_tarski(k1_wellord1(E,C),k1_wellord1(E,B))
              & r2_hidden(k4_tarski(C,B),E) ) ) ) ) )).

fof(t63_wellord1,conjecture,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ~ ( v2_wellord1(A)
              & v2_wellord1(B)
              & ~ r4_wellord1(A,B)
              & ! [C] :
                  ~ ( r2_hidden(C,k3_relat_1(A))
                    & r4_wellord1(k2_wellord1(A,k1_wellord1(A,C)),B) )
              & ! [C] :
                  ~ ( r2_hidden(C,k3_relat_1(B))
                    & r4_wellord1(A,k2_wellord1(B,k1_wellord1(B,C))) ) ) ) ) )).

fof(t8_wellord1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ( r2_wellord1(A,k3_relat_1(A))
      <=> v2_wellord1(A) ) ) )).

fof(t9_wellord1,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r2_wellord1(B,A)
       => ! [C] :
            ~ ( r1_tarski(C,A)
              & C != k1_xboole_0
              & ! [D] :
                  ~ ( r2_hidden(D,C)
                    & ! [E] :
                        ( r2_hidden(E,C)
                       => r2_hidden(k4_tarski(D,E),B) ) ) ) ) ) )).

%------------------------------------------------------------------------------
