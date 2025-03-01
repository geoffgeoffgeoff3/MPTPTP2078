%------------------------------------------------------------------------------
% File     : MPT1433+1 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : filter_1__t28_filter_1.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    :   36 (   9 unit)
%            Number of atoms       :  170 (  13 equality)
%            Maximal formula depth :   21 (   7 average)
%            Number of connectives :  159 (  25   ~;   1   |;  81   &)
%                                         (   3 <=>;  49  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   11 (   1 propositional; 0-3 arity)
%            Number of functors    :   12 (   2 constant; 0-6 arity)
%            Number of variables   :  105 (   0 sgn; 103   !;   2   ?)
%            Maximal term depth    :    5 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : A cleaned up version of the MPTP 2078 benchmarks, available at
%            https://github.com/JUrban/MPTP2078
%------------------------------------------------------------------------------
fof(t28_filter_1,conjecture,(
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

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) )).

fof(cc1_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) )).

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

fof(dt_k1_binop_1,axiom,(
    $true )).

fof(dt_k1_domain_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(C,A)
        & m1_subset_1(D,B) )
     => m1_subset_1(k1_domain_1(A,B,C,D),k2_zfmisc_1(A,B)) ) )).

fof(dt_k1_funct_1,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

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

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_funct_4,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_relat_1(k3_funct_4(A,B))
        & v1_funct_1(k3_funct_4(A,B)) ) ) )).

fof(dt_k4_binop_1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & m1_subset_1(C,A)
        & m1_subset_1(D,A) )
     => m1_subset_1(k4_binop_1(A,B,C,D),A) ) )).

fof(dt_k4_tarski,axiom,(
    $true )).

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

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_o_0_0_xboole_0,axiom,(
    v1_xboole_0(o_0_0_xboole_0) )).

fof(dt_o_1_1_filter_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => m1_subset_1(o_1_1_filter_1(A),A) ) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] :
    ? [B] : m1_subset_1(B,A) )).

fof(fc10_subset_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ~ v1_xboole_0(k2_zfmisc_1(A,B)) ) )).

fof(rc7_funct_1,axiom,(
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v4_funct_1(A) ) )).

fof(redefinition_k1_domain_1,axiom,(
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(C,A)
        & m1_subset_1(D,B) )
     => k1_domain_1(A,B,C,D) = k4_tarski(C,D) ) )).

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

fof(redefinition_k4_binop_1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(B,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & m1_subset_1(C,A)
        & m1_subset_1(D,A) )
     => k4_binop_1(A,B,C,D) = k1_binop_1(B,C,D) ) )).

fof(redefinition_k6_filter_1,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A,A),A)))
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B,B),B))) )
     => k6_filter_1(A,B,C,D) = k3_funct_4(C,D) ) )).

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

fof(t1_subset,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) )).

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

fof(t2_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) )).

fof(t33_zfmisc_1,axiom,(
    ! [A,B,C,D] :
      ( k4_tarski(A,B) = k4_tarski(C,D)
     => ( A = C
        & B = D ) ) )).

fof(t3_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C) ) )).

fof(t6_boole,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => A = k1_xboole_0 ) )).

fof(t7_boole,axiom,(
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] :
      ~ ( v1_xboole_0(A)
        & A != B
        & v1_xboole_0(B) ) )).

%------------------------------------------------------------------------------
