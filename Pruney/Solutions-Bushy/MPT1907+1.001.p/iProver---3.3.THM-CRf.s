%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT1907+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n029.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:46:51 EST 2020

% Result     : Theorem 0.70s
% Output     : CNFRefutation 0.70s
% Verified   : 
% Statistics : Number of formulae       :   54 ( 123 expanded)
%              Number of clauses        :   21 (  21 expanded)
%              Number of leaves         :    7 (  36 expanded)
%              Depth                    :   14
%              Number of atoms          :  390 (1070 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   15 (   7 average)
%              Maximal clause size      :   17 (   5 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ( r1_borsuk_1(X0,X1)
          <=> ? [X2] :
                ( v3_borsuk_1(X2,X0,X1)
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v5_pre_topc(X2,X0,X1)
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f5,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_borsuk_1(X0,X1)
          <=> ? [X2] :
                ( v3_borsuk_1(X2,X0,X1)
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v5_pre_topc(X2,X0,X1)
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) ) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f6,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_borsuk_1(X0,X1)
          <=> ? [X2] :
                ( v3_borsuk_1(X2,X0,X1)
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v5_pre_topc(X2,X0,X1)
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) ) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f5])).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( r1_borsuk_1(X0,X1)
              | ! [X2] :
                  ( ~ v3_borsuk_1(X2,X0,X1)
                  | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  | ~ v5_pre_topc(X2,X0,X1)
                  | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                  | ~ v1_funct_1(X2) ) )
            & ( ? [X2] :
                  ( v3_borsuk_1(X2,X0,X1)
                  & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  & v5_pre_topc(X2,X0,X1)
                  & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                  & v1_funct_1(X2) )
              | ~ r1_borsuk_1(X0,X1) ) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( r1_borsuk_1(X0,X1)
              | ! [X2] :
                  ( ~ v3_borsuk_1(X2,X0,X1)
                  | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  | ~ v5_pre_topc(X2,X0,X1)
                  | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                  | ~ v1_funct_1(X2) ) )
            & ( ? [X3] :
                  ( v3_borsuk_1(X3,X0,X1)
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  & v5_pre_topc(X3,X0,X1)
                  & v1_funct_2(X3,u1_struct_0(X0),u1_struct_0(X1))
                  & v1_funct_1(X3) )
              | ~ r1_borsuk_1(X0,X1) ) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f11])).

fof(f13,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( v3_borsuk_1(X3,X0,X1)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
          & v5_pre_topc(X3,X0,X1)
          & v1_funct_2(X3,u1_struct_0(X0),u1_struct_0(X1))
          & v1_funct_1(X3) )
     => ( v3_borsuk_1(sK0(X0,X1),X0,X1)
        & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v5_pre_topc(sK0(X0,X1),X0,X1)
        & v1_funct_2(sK0(X0,X1),u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(sK0(X0,X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( r1_borsuk_1(X0,X1)
              | ! [X2] :
                  ( ~ v3_borsuk_1(X2,X0,X1)
                  | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  | ~ v5_pre_topc(X2,X0,X1)
                  | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                  | ~ v1_funct_1(X2) ) )
            & ( ( v3_borsuk_1(sK0(X0,X1),X0,X1)
                & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v5_pre_topc(sK0(X0,X1),X0,X1)
                & v1_funct_2(sK0(X0,X1),u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(sK0(X0,X1)) )
              | ~ r1_borsuk_1(X0,X1) ) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f12,f13])).

fof(f25,plain,(
    ! [X2,X0,X1] :
      ( r1_borsuk_1(X0,X1)
      | ~ v3_borsuk_1(X2,X0,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v5_pre_topc(X2,X0,X1)
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v3_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & v4_tex_2(X1,X0)
            & ~ v2_struct_0(X1) )
         => ? [X2] :
              ( v3_borsuk_1(X2,X0,X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v5_pre_topc(X2,X0,X1)
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ? [X2] :
              ( v3_borsuk_1(X2,X0,X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v5_pre_topc(X2,X0,X1)
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          | ~ m1_pre_topc(X1,X0)
          | ~ v4_tex_2(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f8,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ? [X2] :
              ( v3_borsuk_1(X2,X0,X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v5_pre_topc(X2,X0,X1)
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          | ~ m1_pre_topc(X1,X0)
          | ~ v4_tex_2(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f7])).

fof(f15,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( v3_borsuk_1(X2,X0,X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
          & v5_pre_topc(X2,X0,X1)
          & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
          & v1_funct_1(X2) )
     => ( v3_borsuk_1(sK1(X0,X1),X0,X1)
        & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v5_pre_topc(sK1(X0,X1),X0,X1)
        & v1_funct_2(sK1(X0,X1),u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(sK1(X0,X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v3_borsuk_1(sK1(X0,X1),X0,X1)
            & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
            & v5_pre_topc(sK1(X0,X1),X0,X1)
            & v1_funct_2(sK1(X0,X1),u1_struct_0(X0),u1_struct_0(X1))
            & v1_funct_1(sK1(X0,X1)) )
          | ~ m1_pre_topc(X1,X0)
          | ~ v4_tex_2(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f8,f15])).

fof(f30,plain,(
    ! [X0,X1] :
      ( v3_borsuk_1(sK1(X0,X1),X0,X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ v4_tex_2(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f27,plain,(
    ! [X0,X1] :
      ( v1_funct_2(sK1(X0,X1),u1_struct_0(X0),u1_struct_0(X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ v4_tex_2(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f28,plain,(
    ! [X0,X1] :
      ( v5_pre_topc(sK1(X0,X1),X0,X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ v4_tex_2(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f26,plain,(
    ! [X0,X1] :
      ( v1_funct_1(sK1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ v4_tex_2(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f29,plain,(
    ! [X0,X1] :
      ( m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ m1_pre_topc(X1,X0)
      | ~ v4_tex_2(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f3,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v3_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & v4_tex_2(X1,X0)
            & ~ v2_struct_0(X1) )
         => r1_borsuk_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f4,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v3_tdlat_3(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_pre_topc(X1,X0)
              & v4_tex_2(X1,X0)
              & ~ v2_struct_0(X1) )
           => r1_borsuk_1(X0,X1) ) ) ),
    inference(negated_conjecture,[],[f3])).

fof(f9,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_borsuk_1(X0,X1)
          & m1_pre_topc(X1,X0)
          & v4_tex_2(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v3_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f10,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_borsuk_1(X0,X1)
          & m1_pre_topc(X1,X0)
          & v4_tex_2(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v3_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f9])).

fof(f18,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ r1_borsuk_1(X0,X1)
          & m1_pre_topc(X1,X0)
          & v4_tex_2(X1,X0)
          & ~ v2_struct_0(X1) )
     => ( ~ r1_borsuk_1(X0,sK3)
        & m1_pre_topc(sK3,X0)
        & v4_tex_2(sK3,X0)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ~ r1_borsuk_1(X0,X1)
            & m1_pre_topc(X1,X0)
            & v4_tex_2(X1,X0)
            & ~ v2_struct_0(X1) )
        & l1_pre_topc(X0)
        & v3_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ~ r1_borsuk_1(sK2,X1)
          & m1_pre_topc(X1,sK2)
          & v4_tex_2(X1,sK2)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK2)
      & v3_tdlat_3(sK2)
      & v2_pre_topc(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f19,plain,
    ( ~ r1_borsuk_1(sK2,sK3)
    & m1_pre_topc(sK3,sK2)
    & v4_tex_2(sK3,sK2)
    & ~ v2_struct_0(sK3)
    & l1_pre_topc(sK2)
    & v3_tdlat_3(sK2)
    & v2_pre_topc(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f10,f18,f17])).

fof(f38,plain,(
    ~ r1_borsuk_1(sK2,sK3) ),
    inference(cnf_transformation,[],[f19])).

fof(f37,plain,(
    m1_pre_topc(sK3,sK2) ),
    inference(cnf_transformation,[],[f19])).

fof(f36,plain,(
    v4_tex_2(sK3,sK2) ),
    inference(cnf_transformation,[],[f19])).

fof(f35,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f19])).

fof(f34,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f19])).

fof(f33,plain,(
    v3_tdlat_3(sK2) ),
    inference(cnf_transformation,[],[f19])).

fof(f32,plain,(
    v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f19])).

fof(f31,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f19])).

cnf(c_0,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v5_pre_topc(X0,X1,X2)
    | ~ v3_borsuk_1(X0,X1,X2)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | r1_borsuk_1(X1,X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_6,plain,
    ( v3_borsuk_1(sK1(X0,X1),X0,X1)
    | ~ v4_tex_2(X1,X0)
    | ~ m1_pre_topc(X1,X0)
    | ~ v3_tdlat_3(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_194,plain,
    ( ~ v1_funct_2(sK1(X0,X1),u1_struct_0(X0),u1_struct_0(X1))
    | ~ v5_pre_topc(sK1(X0,X1),X0,X1)
    | ~ v4_tex_2(X1,X0)
    | ~ m1_pre_topc(X1,X0)
    | ~ m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | r1_borsuk_1(X0,X1)
    | ~ v3_tdlat_3(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_funct_1(sK1(X0,X1)) ),
    inference(resolution,[status(thm)],[c_0,c_6])).

cnf(c_9,plain,
    ( v1_funct_2(sK1(X0,X1),u1_struct_0(X0),u1_struct_0(X1))
    | ~ v4_tex_2(X1,X0)
    | ~ m1_pre_topc(X1,X0)
    | ~ v3_tdlat_3(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_8,plain,
    ( v5_pre_topc(sK1(X0,X1),X0,X1)
    | ~ v4_tex_2(X1,X0)
    | ~ m1_pre_topc(X1,X0)
    | ~ v3_tdlat_3(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_198,plain,
    ( ~ v4_tex_2(X1,X0)
    | ~ m1_pre_topc(X1,X0)
    | ~ m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | r1_borsuk_1(X0,X1)
    | ~ v3_tdlat_3(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_funct_1(sK1(X0,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_194,c_9,c_8])).

cnf(c_199,plain,
    ( ~ v4_tex_2(X0,X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(sK1(X1,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
    | r1_borsuk_1(X1,X0)
    | ~ v3_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v1_funct_1(sK1(X1,X0)) ),
    inference(renaming,[status(thm)],[c_198])).

cnf(c_10,plain,
    ( ~ v4_tex_2(X0,X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ v3_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v1_funct_1(sK1(X1,X0)) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_7,plain,
    ( ~ v4_tex_2(X0,X1)
    | ~ m1_pre_topc(X0,X1)
    | m1_subset_1(sK1(X1,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
    | ~ v3_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_204,plain,
    ( v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | ~ v3_tdlat_3(X1)
    | r1_borsuk_1(X1,X0)
    | ~ v4_tex_2(X0,X1)
    | ~ m1_pre_topc(X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_199,c_10,c_7])).

cnf(c_205,plain,
    ( ~ v4_tex_2(X0,X1)
    | ~ m1_pre_topc(X0,X1)
    | r1_borsuk_1(X1,X0)
    | ~ v3_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1) ),
    inference(renaming,[status(thm)],[c_204])).

cnf(c_11,negated_conjecture,
    ( ~ r1_borsuk_1(sK2,sK3) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_244,plain,
    ( ~ v4_tex_2(sK3,sK2)
    | ~ m1_pre_topc(sK3,sK2)
    | ~ v3_tdlat_3(sK2)
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2)
    | v2_struct_0(sK3)
    | v2_struct_0(sK2) ),
    inference(resolution,[status(thm)],[c_205,c_11])).

cnf(c_12,negated_conjecture,
    ( m1_pre_topc(sK3,sK2) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_13,negated_conjecture,
    ( v4_tex_2(sK3,sK2) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_14,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_15,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_16,negated_conjecture,
    ( v3_tdlat_3(sK2) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_17,negated_conjecture,
    ( v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_18,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f31])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_244,c_12,c_13,c_14,c_15,c_16,c_17,c_18])).


%------------------------------------------------------------------------------
