%------------------------------------------------------------------------------
% File     : MPT1847+1 : TPTP v7.4.0. Released v7.4.0.
% Domain   : Set theory
% Problem  :
% Version  : [MPTP] axioms : Especial.
% English  :

% Refs     : [AH+14] Alma et al. (2014), Premise Selection for Mathematics
% Source   : [MPTP]
% Names    : tex_2__t14_tex_2.p [MPTP]

% Status   : Theorem
% Rating   : ? v7.4.0
% Syntax   : Number of formulae    :  117 (  14 unit)
%            Number of atoms       :  392 (   9 equality)
%            Maximal formula depth :    9 (   5 average)
%            Number of connectives :  392 ( 117   ~;   1   |; 139   &)
%                                         (   2 <=>; 133  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   30 (   1 propositional; 0-2 arity)
%            Number of functors    :    6 (   2 constant; 0-2 arity)
%            Number of variables   :  168 (   0 sgn; 130   !;  38   ?)
%            Maximal term depth    :    4 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : A cleaned up version of the MPTP 2078 benchmarks, available at
%            https://github.com/JUrban/MPTP2078
%------------------------------------------------------------------------------
fof(t14_tex_2,conjecture,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ! [C] :
              ( m1_pre_topc(C,A)
             => ( ( g1_pre_topc(u1_struct_0(B),u1_pre_topc(B)) = g1_pre_topc(u1_struct_0(C),u1_pre_topc(C))
                  & v1_tex_2(B,A) )
               => v1_tex_2(C,A) ) ) ) ) )).

fof(abstractness_v1_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ( v1_pre_topc(A)
       => A = g1_pre_topc(u1_struct_0(A),u1_pre_topc(A)) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) )).

fof(cc10_funct_1,axiom,(
    ! [A] :
      ( v4_funct_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v4_funct_1(B) ) ) )).

fof(cc1_compts_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_xboole_0(B)
           => v2_compts_1(B,A) ) ) ) )).

fof(cc1_funct_1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v1_funct_1(A) ) )).

fof(cc1_realset1,axiom,(
    ! [A] :
      ( ~ v1_zfmisc_1(A)
     => ~ v1_xboole_0(A) ) )).

fof(cc1_relat_1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v1_relat_1(A) ) )).

fof(cc1_struct_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ( v2_struct_0(A)
       => v7_struct_0(A) ) ) )).

fof(cc1_subset_1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_xboole_0(B) ) ) )).

fof(cc1_tex_2,axiom,(
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_zfmisc_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( v1_subset_1(B,A)
           => v1_xboole_0(B) ) ) ) )).

fof(cc1_zfmisc_1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v1_zfmisc_1(A) ) )).

fof(cc2_funct_1,axiom,(
    ! [A] :
      ( ( v1_xboole_0(A)
        & v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_funct_1(A) ) ) )).

fof(cc2_realset1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v1_zfmisc_1(A) ) )).

fof(cc2_relat_1,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_relat_1(B) ) ) )).

fof(cc2_struct_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ( ~ v7_struct_0(A)
       => ~ v2_struct_0(A) ) ) )).

fof(cc2_subset_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( ~ v1_subset_1(B,A)
           => ~ v1_xboole_0(B) ) ) ) )).

fof(cc2_tex_2,axiom,(
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_zfmisc_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( ~ v1_xboole_0(B)
           => ~ v1_subset_1(B,A) ) ) ) )).

fof(cc2_tops_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_xboole_0(B)
           => v2_tops_1(B,A) ) ) ) )).

fof(cc3_funct_1,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_funct_1(B) ) ) )).

fof(cc3_realset1,axiom,(
    ! [A] :
      ( v1_zfmisc_1(A)
     => v1_finset_1(A) ) )).

fof(cc3_relat_1,axiom,(
    ! [A] :
      ( ( v1_xboole_0(A)
        & v1_relat_1(A) )
     => ( v1_relat_1(A)
        & v3_relat_1(A) ) ) )).

fof(cc3_subset_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( v1_xboole_0(B)
           => v1_subset_1(B,A) ) ) ) )).

fof(cc3_tex_2,axiom,(
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_zfmisc_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( ( ~ v1_xboole_0(B)
              & ~ v1_subset_1(B,A) )
           => ( ~ v1_xboole_0(B)
              & v1_zfmisc_1(B) ) ) ) ) )).

fof(cc4_funct_1,axiom,(
    ! [A] :
      ( ( v1_xboole_0(A)
        & v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_relat_1(A)
        & v1_funct_1(A)
        & v3_funct_1(A) ) ) )).

fof(cc4_realset1,axiom,(
    ! [A] :
      ( ~ v1_finset_1(A)
     => ~ v1_zfmisc_1(A) ) )).

fof(cc4_relat_1,axiom,(
    ! [A] :
      ( ( v1_xboole_0(A)
        & v1_relat_1(A) )
     => ( v1_relat_1(A)
        & v2_relat_1(A) ) ) )).

fof(cc4_struct_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ( v2_struct_0(A)
       => ( v2_struct_0(A)
          & v8_struct_0(A) ) ) ) )).

fof(cc4_subset_1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ~ v1_subset_1(B,A) ) ) )).

fof(cc4_tex_2,axiom,(
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_zfmisc_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( ( ~ v1_xboole_0(B)
              & v1_zfmisc_1(B) )
           => ( ~ v1_xboole_0(B)
              & v1_subset_1(B,A) ) ) ) ) )).

fof(cc5_compts_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ( v2_struct_0(A)
       => v8_pre_topc(A) ) ) )).

fof(cc5_funct_1,axiom,(
    ! [A] :
      ( v1_zfmisc_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_zfmisc_1(B) ) ) )).

fof(cc5_struct_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ( ~ v8_struct_0(A)
       => ( ~ v2_struct_0(A)
          & ~ v8_struct_0(A) ) ) ) )).

fof(cc5_tex_2,axiom,(
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_zfmisc_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( ( ~ v1_xboole_0(B)
              & ~ v1_subset_1(B,A) )
           => ( ~ v1_xboole_0(B)
              & ~ v1_zfmisc_1(B) ) ) ) ) )).

fof(cc6_compts_1,axiom,(
    ! [A] :
      ( ( v8_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => v8_pre_topc(B) ) ) )).

fof(cc6_funct_1,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & ~ v3_funct_1(A) )
     => ( ~ v1_zfmisc_1(A)
        & v1_relat_1(A)
        & v1_funct_1(A) ) ) )).

fof(cc6_struct_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ( v7_struct_0(A)
       => v8_struct_0(A) ) ) )).

fof(cc6_tex_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v7_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ~ v1_xboole_0(B)
           => ( ~ v1_xboole_0(B)
              & ~ v1_subset_1(B,u1_struct_0(A)) ) ) ) ) )).

fof(cc7_funct_1,axiom,(
    ! [A] :
      ( ( v1_zfmisc_1(A)
        & v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_relat_1(A)
        & v1_funct_1(A)
        & v3_funct_1(A) ) ) )).

fof(cc7_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ( v7_pre_topc(A)
       => v6_pre_topc(A) ) ) )).

fof(cc7_struct_0,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => ( ~ v8_struct_0(A)
       => ~ v7_struct_0(A) ) ) )).

fof(cc7_tex_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v7_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( ~ v1_xboole_0(B)
              & ~ v1_subset_1(B,u1_struct_0(A)) )
           => ( ~ v1_xboole_0(B)
              & v1_zfmisc_1(B) ) ) ) ) )).

fof(cc8_funct_1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v4_funct_1(A) ) )).

fof(cc8_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ( v8_pre_topc(A)
       => v7_pre_topc(A) ) ) )).

fof(cc8_tex_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & ~ v7_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( ~ v1_xboole_0(B)
              & v1_zfmisc_1(B) )
           => ( ~ v1_xboole_0(B)
              & v1_subset_1(B,u1_struct_0(A)) ) ) ) ) )).

fof(cc9_funct_1,axiom,(
    ! [A] :
      ( v4_funct_1(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => ( v1_relat_1(B)
            & v1_funct_1(B) ) ) ) )).

fof(cc9_tex_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & ~ v7_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( ~ v1_xboole_0(B)
              & ~ v1_subset_1(B,u1_struct_0(A)) )
           => ( ~ v1_xboole_0(B)
              & ~ v1_zfmisc_1(B) ) ) ) ) )).

fof(d2_xboole_0,axiom,(
    k1_xboole_0 = o_0_0_xboole_0 )).

fof(d3_tex_2,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( v1_tex_2(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ( C = u1_struct_0(B)
                 => v1_subset_1(C,u1_struct_0(A)) ) ) ) ) ) )).

fof(dt_g1_pre_topc,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
     => ( v1_pre_topc(g1_pre_topc(A,B))
        & l1_pre_topc(g1_pre_topc(A,B)) ) ) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_l1_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => l1_struct_0(A) ) )).

fof(dt_l1_struct_0,axiom,(
    $true )).

fof(dt_m1_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_pre_topc(B,A)
         => l1_pre_topc(B) ) ) )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_o_0_0_xboole_0,axiom,(
    v1_xboole_0(o_0_0_xboole_0) )).

fof(dt_u1_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => m1_subset_1(u1_pre_topc(A),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) ) )).

fof(dt_u1_struct_0,axiom,(
    $true )).

fof(existence_l1_pre_topc,axiom,(
    ? [A] : l1_pre_topc(A) )).

fof(existence_l1_struct_0,axiom,(
    ? [A] : l1_struct_0(A) )).

fof(existence_m1_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ? [B] : m1_pre_topc(B,A) ) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] :
    ? [B] : m1_subset_1(B,A) )).

fof(fc1_struct_0,axiom,(
    ! [A] :
      ( ( v2_struct_0(A)
        & l1_struct_0(A) )
     => v1_xboole_0(u1_struct_0(A)) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ v1_xboole_0(k1_zfmisc_1(A)) )).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) )).

fof(fc2_struct_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(u1_struct_0(A)) ) )).

fof(fc5_compts_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => v1_tops_2(u1_pre_topc(A),A) ) )).

fof(fc6_struct_0,axiom,(
    ! [A] :
      ( ( ~ v7_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_zfmisc_1(u1_struct_0(A)) ) )).

fof(fc7_pre_topc,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_pre_topc(A) )
     => ( ~ v2_struct_0(g1_pre_topc(u1_struct_0(A),u1_pre_topc(A)))
        & v1_pre_topc(g1_pre_topc(u1_struct_0(A),u1_pre_topc(A))) ) ) )).

fof(fc7_struct_0,axiom,(
    ! [A] :
      ( ( v7_struct_0(A)
        & l1_struct_0(A) )
     => v1_zfmisc_1(u1_struct_0(A)) ) )).

fof(fc8_struct_0,axiom,(
    ! [A] :
      ( ( v8_struct_0(A)
        & l1_struct_0(A) )
     => v1_finset_1(u1_struct_0(A)) ) )).

fof(fc9_pre_topc,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A))) )
     => ( ~ v2_struct_0(g1_pre_topc(A,B))
        & v1_pre_topc(g1_pre_topc(A,B)) ) ) )).

fof(fc9_struct_0,axiom,(
    ! [A] :
      ( ( ~ v8_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_finset_1(u1_struct_0(A)) ) )).

fof(free_g1_pre_topc,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
     => ! [C,D] :
          ( g1_pre_topc(A,B) = g1_pre_topc(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(rc10_struct_0,axiom,(
    ? [A] :
      ( l1_struct_0(A)
      & ~ v2_struct_0(A)
      & ~ v7_struct_0(A) ) )).

fof(rc11_pre_topc,axiom,(
    ? [A] :
      ( l1_pre_topc(A)
      & v2_struct_0(A)
      & v1_pre_topc(A) ) )).

fof(rc1_funct_1,axiom,(
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A) ) )).

fof(rc1_pre_topc,axiom,(
    ? [A] :
      ( l1_pre_topc(A)
      & v1_pre_topc(A) ) )).

fof(rc1_realset1,axiom,(
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_zfmisc_1(A) ) )).

fof(rc1_relat_1,axiom,(
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_relat_1(A) ) )).

fof(rc1_subset_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B) ) ) )).

fof(rc1_tex_1,axiom,(
    ? [A] :
      ( l1_pre_topc(A)
      & ~ v2_struct_0(A)
      & v7_struct_0(A)
      & v1_pre_topc(A) ) )).

fof(rc1_tex_2,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B)
          & v1_zfmisc_1(B) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : v1_xboole_0(A) )).

fof(rc20_struct_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v1_zfmisc_1(B) ) ) )).

fof(rc2_funct_1,axiom,(
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v2_funct_1(A) ) )).

fof(rc2_realset1,axiom,(
    ? [A] :
      ( ~ v1_xboole_0(A)
      & ~ v1_zfmisc_1(A) ) )).

fof(rc2_relat_1,axiom,(
    ? [A] :
      ( v1_relat_1(A)
      & v2_relat_1(A) ) )).

fof(rc2_subset_1,axiom,(
    ! [A] :
    ? [B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
      & v1_xboole_0(B) ) )).

fof(rc2_tex_1,axiom,(
    ? [A] :
      ( l1_pre_topc(A)
      & ~ v2_struct_0(A)
      & ~ v7_struct_0(A)
      & v1_pre_topc(A) ) )).

fof(rc2_tex_2,axiom,(
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_zfmisc_1(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B)
          & v1_zfmisc_1(B)
          & v1_subset_1(B,A) ) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ v1_xboole_0(A) )).

fof(rc3_funct_1,axiom,(
    ? [A] :
      ( v1_relat_1(A)
      & v2_relat_1(A)
      & v1_funct_1(A) ) )).

fof(rc3_pre_topc,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ? [B] :
          ( m1_pre_topc(B,A)
          & v1_pre_topc(B) ) ) )).

fof(rc3_realset1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B)
          & v1_zfmisc_1(B) ) ) )).

fof(rc3_subset_1,axiom,(
    ! [A] :
    ? [B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
      & ~ v1_subset_1(B,A) ) )).

fof(rc3_tex_2,axiom,(
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_zfmisc_1(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B)
          & ~ v1_zfmisc_1(B)
          & ~ v1_subset_1(B,A) ) ) )).

fof(rc4_funct_1,axiom,(
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_relat_1(A)
      & v2_relat_1(A)
      & v1_funct_1(A) ) )).

fof(rc4_pre_topc,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_pre_topc(A) )
     => ? [B] :
          ( m1_pre_topc(B,A)
          & ~ v2_struct_0(B)
          & v1_pre_topc(B) ) ) )).

fof(rc4_struct_0,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B) ) ) )).

fof(rc4_subset_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & v1_subset_1(B,A) ) ) )).

fof(rc4_tex_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & ~ v7_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v1_zfmisc_1(B)
          & v1_subset_1(B,u1_struct_0(A)) ) ) )).

fof(rc5_funct_1,axiom,(
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & ~ v3_funct_1(A) ) )).

fof(rc5_tex_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & ~ v7_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & ~ v1_zfmisc_1(B)
          & ~ v1_subset_1(B,u1_struct_0(A)) ) ) )).

fof(rc5_tops_1,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v2_tops_1(B,A) ) ) )).

fof(rc6_tex_2,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & ~ v7_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v1_zfmisc_1(B)
          & v1_subset_1(B,u1_struct_0(A)) ) ) )).

fof(rc7_funct_1,axiom,(
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v4_funct_1(A) ) )).

fof(rc9_struct_0,axiom,(
    ? [A] :
      ( l1_struct_0(A)
      & ~ v2_struct_0(A)
      & v7_struct_0(A) ) )).

fof(t1_subset,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) )).

fof(t2_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) )).

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
