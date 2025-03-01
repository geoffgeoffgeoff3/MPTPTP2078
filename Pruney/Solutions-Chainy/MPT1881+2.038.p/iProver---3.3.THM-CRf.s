%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:27:17 EST 2020

% Result     : Theorem 1.47s
% Output     : CNFRefutation 1.47s
% Verified   : 
% Statistics : Number of formulae       :  129 (1275 expanded)
%              Number of clauses        :   81 ( 307 expanded)
%              Number of leaves         :    9 ( 276 expanded)
%              Depth                    :   19
%              Number of atoms          :  509 (8453 expanded)
%              Number of equality atoms :  116 ( 461 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_tex_2(X1,X0)
          <=> ( ! [X2] :
                  ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
                 => ( ( r1_tarski(X1,X2)
                      & v2_tex_2(X2,X0) )
                   => X1 = X2 ) )
              & v2_tex_2(X1,X0) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v3_tex_2(X1,X0)
          <=> ( ! [X2] :
                  ( X1 = X2
                  | ~ r1_tarski(X1,X2)
                  | ~ v2_tex_2(X2,X0)
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              & v2_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v3_tex_2(X1,X0)
          <=> ( ! [X2] :
                  ( X1 = X2
                  | ~ r1_tarski(X1,X2)
                  | ~ v2_tex_2(X2,X0)
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              & v2_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f9])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_tex_2(X1,X0)
              | ? [X2] :
                  ( X1 != X2
                  & r1_tarski(X1,X2)
                  & v2_tex_2(X2,X0)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) )
            & ( ( ! [X2] :
                    ( X1 = X2
                    | ~ r1_tarski(X1,X2)
                    | ~ v2_tex_2(X2,X0)
                    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
                & v2_tex_2(X1,X0) )
              | ~ v3_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_tex_2(X1,X0)
              | ? [X2] :
                  ( X1 != X2
                  & r1_tarski(X1,X2)
                  & v2_tex_2(X2,X0)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) )
            & ( ( ! [X2] :
                    ( X1 = X2
                    | ~ r1_tarski(X1,X2)
                    | ~ v2_tex_2(X2,X0)
                    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
                & v2_tex_2(X1,X0) )
              | ~ v3_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f19])).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_tex_2(X1,X0)
              | ? [X2] :
                  ( X1 != X2
                  & r1_tarski(X1,X2)
                  & v2_tex_2(X2,X0)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) )
            & ( ( ! [X3] :
                    ( X1 = X3
                    | ~ r1_tarski(X1,X3)
                    | ~ v2_tex_2(X3,X0)
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                & v2_tex_2(X1,X0) )
              | ~ v3_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(rectify,[],[f20])).

fof(f22,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( X1 != X2
          & r1_tarski(X1,X2)
          & v2_tex_2(X2,X0)
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( sK0(X0,X1) != X1
        & r1_tarski(X1,sK0(X0,X1))
        & v2_tex_2(sK0(X0,X1),X0)
        & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_tex_2(X1,X0)
              | ( sK0(X0,X1) != X1
                & r1_tarski(X1,sK0(X0,X1))
                & v2_tex_2(sK0(X0,X1),X0)
                & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) )
            & ( ( ! [X3] :
                    ( X1 = X3
                    | ~ r1_tarski(X1,X3)
                    | ~ v2_tex_2(X3,X0)
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                & v2_tex_2(X1,X0) )
              | ~ v3_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f22])).

fof(f38,plain,(
    ! [X0,X1] :
      ( v3_tex_2(X1,X0)
      | m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f6,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v1_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_tex_2(X1,X0)
          <=> ~ v1_subset_1(X1,u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f7,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v1_tdlat_3(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v3_tex_2(X1,X0)
            <=> ~ v1_subset_1(X1,u1_struct_0(X0)) ) ) ) ),
    inference(negated_conjecture,[],[f6])).

fof(f13,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v3_tex_2(X1,X0)
          <~> ~ v1_subset_1(X1,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v1_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f14,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v3_tex_2(X1,X0)
          <~> ~ v1_subset_1(X1,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v1_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f24,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(X0))
            | ~ v3_tex_2(X1,X0) )
          & ( ~ v1_subset_1(X1,u1_struct_0(X0))
            | v3_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v1_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f25,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(X0))
            | ~ v3_tex_2(X1,X0) )
          & ( ~ v1_subset_1(X1,u1_struct_0(X0))
            | v3_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v1_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(X0))
            | ~ v3_tex_2(X1,X0) )
          & ( ~ v1_subset_1(X1,u1_struct_0(X0))
            | v3_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ( v1_subset_1(sK2,u1_struct_0(X0))
          | ~ v3_tex_2(sK2,X0) )
        & ( ~ v1_subset_1(sK2,u1_struct_0(X0))
          | v3_tex_2(sK2,X0) )
        & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( v1_subset_1(X1,u1_struct_0(X0))
              | ~ v3_tex_2(X1,X0) )
            & ( ~ v1_subset_1(X1,u1_struct_0(X0))
              | v3_tex_2(X1,X0) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0)
        & v1_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(sK1))
            | ~ v3_tex_2(X1,sK1) )
          & ( ~ v1_subset_1(X1,u1_struct_0(sK1))
            | v3_tex_2(X1,sK1) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) )
      & l1_pre_topc(sK1)
      & v1_tdlat_3(sK1)
      & v2_pre_topc(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ( v1_subset_1(sK2,u1_struct_0(sK1))
      | ~ v3_tex_2(sK2,sK1) )
    & ( ~ v1_subset_1(sK2,u1_struct_0(sK1))
      | v3_tex_2(sK2,sK1) )
    & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    & l1_pre_topc(sK1)
    & v1_tdlat_3(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f25,f27,f26])).

fof(f46,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v1_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => v2_tex_2(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f11])).

fof(f42,plain,(
    ! [X0,X1] :
      ( v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v1_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f45,plain,(
    v1_tdlat_3(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f43,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f44,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f32,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f47,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f28])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f16,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f15])).

fof(f31,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ( v1_subset_1(X1,X0)
      <=> X0 != X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0,X1] :
      ( ( v1_subset_1(X1,X0)
      <=> X0 != X1 )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( ( v1_subset_1(X1,X0)
          | X0 = X1 )
        & ( X0 != X1
          | ~ v1_subset_1(X1,X0) ) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f35,plain,(
    ! [X0,X1] :
      ( v1_subset_1(X1,X0)
      | X0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f33,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f48,plain,
    ( ~ v1_subset_1(sK2,u1_struct_0(sK1))
    | v3_tex_2(sK2,sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f34,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | ~ v1_subset_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f52,plain,(
    ! [X1] :
      ( ~ v1_subset_1(X1,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X1)) ) ),
    inference(equality_resolution,[],[f34])).

fof(f49,plain,
    ( v1_subset_1(sK2,u1_struct_0(sK1))
    | ~ v3_tex_2(sK2,sK1) ),
    inference(cnf_transformation,[],[f28])).

fof(f30,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f16])).

fof(f50,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f30])).

fof(f37,plain,(
    ! [X0,X3,X1] :
      ( X1 = X3
      | ~ r1_tarski(X1,X3)
      | ~ v2_tex_2(X3,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f40,plain,(
    ! [X0,X1] :
      ( v3_tex_2(X1,X0)
      | r1_tarski(X1,sK0(X0,X1))
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f41,plain,(
    ! [X0,X1] :
      ( v3_tex_2(X1,X0)
      | sK0(X0,X1) != X1
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_10,plain,
    ( ~ v2_tex_2(X0,X1)
    | v3_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(sK0(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_17,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_367,plain,
    ( ~ v2_tex_2(X0,X1)
    | v3_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(sK0(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_17])).

cnf(c_368,plain,
    ( ~ v2_tex_2(X0,sK1)
    | v3_tex_2(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(sK0(sK1,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(unflattening,[status(thm)],[c_367])).

cnf(c_13,plain,
    ( v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ v1_tdlat_3(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_18,negated_conjecture,
    ( v1_tdlat_3(sK1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_279,plain,
    ( v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_18])).

cnf(c_280,plain,
    ( v2_tex_2(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | v2_struct_0(sK1)
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_279])).

cnf(c_20,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_19,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_284,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | v2_tex_2(X0,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_280,c_20,c_19,c_17])).

cnf(c_285,plain,
    ( v2_tex_2(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(renaming,[status(thm)],[c_284])).

cnf(c_372,plain,
    ( v3_tex_2(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(sK0(sK1,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_368,c_20,c_19,c_17,c_280])).

cnf(c_1196,plain,
    ( v3_tex_2(X0,sK1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(sK0(sK1,X0),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_372])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_1201,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1601,plain,
    ( v3_tex_2(X0,sK1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r1_tarski(sK0(sK1,X0),u1_struct_0(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1196,c_1201])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1200,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_1600,plain,
    ( r1_tarski(sK2,u1_struct_0(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1200,c_1201])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_1204,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1796,plain,
    ( u1_struct_0(sK1) = sK2
    | r1_tarski(u1_struct_0(sK1),sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1600,c_1204])).

cnf(c_25,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_5,plain,
    ( v1_subset_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_3,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_158,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_3])).

cnf(c_159,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_158])).

cnf(c_202,plain,
    ( v1_subset_1(X0,X1)
    | ~ r1_tarski(X0,X1)
    | X0 = X1 ),
    inference(bin_hyper_res,[status(thm)],[c_5,c_159])).

cnf(c_15,negated_conjecture,
    ( v3_tex_2(sK2,sK1)
    | ~ v1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_160,plain,
    ( v3_tex_2(sK2,sK1)
    | ~ v1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(prop_impl,[status(thm)],[c_15])).

cnf(c_303,plain,
    ( v3_tex_2(sK2,sK1)
    | ~ r1_tarski(X0,X1)
    | X1 = X0
    | u1_struct_0(sK1) != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_202,c_160])).

cnf(c_304,plain,
    ( v3_tex_2(sK2,sK1)
    | ~ r1_tarski(sK2,u1_struct_0(sK1))
    | u1_struct_0(sK1) = sK2 ),
    inference(unflattening,[status(thm)],[c_303])).

cnf(c_305,plain,
    ( u1_struct_0(sK1) = sK2
    | v3_tex_2(sK2,sK1) = iProver_top
    | r1_tarski(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_304])).

cnf(c_1302,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | r1_tarski(sK2,u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1303,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r1_tarski(sK2,u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1302])).

cnf(c_6,plain,
    ( ~ v1_subset_1(X0,X0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_14,negated_conjecture,
    ( ~ v3_tex_2(sK2,sK1)
    | v1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_162,plain,
    ( ~ v3_tex_2(sK2,sK1)
    | v1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(prop_impl,[status(thm)],[c_14])).

cnf(c_316,plain,
    ( ~ v3_tex_2(sK2,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X0))
    | u1_struct_0(sK1) != X0
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_162])).

cnf(c_317,plain,
    ( ~ v3_tex_2(sK2,sK1)
    | ~ m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1)))
    | sK2 != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_316])).

cnf(c_1198,plain,
    ( sK2 != u1_struct_0(sK1)
    | v3_tex_2(sK2,sK1) != iProver_top
    | m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_317])).

cnf(c_318,plain,
    ( sK2 != u1_struct_0(sK1)
    | v3_tex_2(sK2,sK1) != iProver_top
    | m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_317])).

cnf(c_1297,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(X0,u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1351,plain,
    ( m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(u1_struct_0(sK1),u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_1297])).

cnf(c_1353,plain,
    ( m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top
    | r1_tarski(u1_struct_0(sK1),u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1351])).

cnf(c_1,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1352,plain,
    ( r1_tarski(u1_struct_0(sK1),u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_1355,plain,
    ( r1_tarski(u1_struct_0(sK1),u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1352])).

cnf(c_11,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ v3_tex_2(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | ~ l1_pre_topc(X1)
    | X0 = X2 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_344,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ v3_tex_2(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | X2 = X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_17])).

cnf(c_345,plain,
    ( ~ v2_tex_2(X0,sK1)
    | ~ v3_tex_2(X1,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(unflattening,[status(thm)],[c_344])).

cnf(c_347,plain,
    ( ~ v3_tex_2(X1,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_345,c_20,c_19,c_17,c_280])).

cnf(c_348,plain,
    ( ~ v3_tex_2(X0,sK1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(X0,X1)
    | X0 = X1 ),
    inference(renaming,[status(thm)],[c_347])).

cnf(c_1363,plain,
    ( ~ v3_tex_2(sK2,sK1)
    | ~ m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r1_tarski(sK2,u1_struct_0(sK1))
    | sK2 = u1_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_348])).

cnf(c_1364,plain,
    ( sK2 = u1_struct_0(sK1)
    | v3_tex_2(sK2,sK1) != iProver_top
    | m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r1_tarski(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1363])).

cnf(c_1529,plain,
    ( v3_tex_2(sK2,sK1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1198,c_25,c_318,c_1303,c_1353,c_1355,c_1364])).

cnf(c_1799,plain,
    ( u1_struct_0(sK1) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1796,c_25,c_305,c_318,c_1303,c_1353,c_1355,c_1364])).

cnf(c_2365,plain,
    ( v3_tex_2(X0,sK1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(sK2)) != iProver_top
    | r1_tarski(sK0(sK1,X0),sK2) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1601,c_1799])).

cnf(c_8,plain,
    ( ~ v2_tex_2(X0,X1)
    | v3_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(X0,sK0(X1,X0))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_409,plain,
    ( ~ v2_tex_2(X0,X1)
    | v3_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(X0,sK0(X1,X0))
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_17])).

cnf(c_410,plain,
    ( ~ v2_tex_2(X0,sK1)
    | v3_tex_2(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | r1_tarski(X0,sK0(sK1,X0)) ),
    inference(unflattening,[status(thm)],[c_409])).

cnf(c_414,plain,
    ( v3_tex_2(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | r1_tarski(X0,sK0(sK1,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_410,c_20,c_19,c_17,c_280])).

cnf(c_1195,plain,
    ( v3_tex_2(X0,sK1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r1_tarski(X0,sK0(sK1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_414])).

cnf(c_1417,plain,
    ( v3_tex_2(sK2,sK1) = iProver_top
    | r1_tarski(sK2,sK0(sK1,sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1200,c_1195])).

cnf(c_1291,plain,
    ( v3_tex_2(sK2,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | r1_tarski(sK2,sK0(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_414])).

cnf(c_1292,plain,
    ( v3_tex_2(sK2,sK1) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r1_tarski(sK2,sK0(sK1,sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1291])).

cnf(c_1420,plain,
    ( r1_tarski(sK2,sK0(sK1,sK2)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1417,c_25,c_318,c_1292,c_1303,c_1353,c_1355,c_1364])).

cnf(c_1714,plain,
    ( sK0(sK1,sK2) = sK2
    | r1_tarski(sK0(sK1,sK2),sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1420,c_1204])).

cnf(c_7,plain,
    ( ~ v2_tex_2(X0,X1)
    | v3_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | sK0(X1,X0) != X0 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_430,plain,
    ( ~ v2_tex_2(X0,X1)
    | v3_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | sK0(X1,X0) != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_17])).

cnf(c_431,plain,
    ( ~ v2_tex_2(X0,sK1)
    | v3_tex_2(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | sK0(sK1,X0) != X0 ),
    inference(unflattening,[status(thm)],[c_430])).

cnf(c_435,plain,
    ( v3_tex_2(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | sK0(sK1,X0) != X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_431,c_20,c_19,c_17,c_280])).

cnf(c_1294,plain,
    ( v3_tex_2(sK2,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | sK0(sK1,sK2) != sK2 ),
    inference(instantiation,[status(thm)],[c_435])).

cnf(c_1295,plain,
    ( sK0(sK1,sK2) != sK2
    | v3_tex_2(sK2,sK1) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1294])).

cnf(c_1425,plain,
    ( ~ r1_tarski(sK0(sK1,sK2),sK2)
    | ~ r1_tarski(sK2,sK0(sK1,sK2))
    | sK0(sK1,sK2) = sK2 ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_1429,plain,
    ( sK0(sK1,sK2) = sK2
    | r1_tarski(sK0(sK1,sK2),sK2) != iProver_top
    | r1_tarski(sK2,sK0(sK1,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1425])).

cnf(c_1958,plain,
    ( r1_tarski(sK0(sK1,sK2),sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1714,c_25,c_318,c_1292,c_1295,c_1303,c_1353,c_1355,c_1364,c_1429])).

cnf(c_2373,plain,
    ( v3_tex_2(sK2,sK1) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2365,c_1958])).

cnf(c_1808,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1799,c_1200])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2373,c_1808,c_1529])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n001.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:36:30 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.47/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.47/0.99  
% 1.47/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.47/0.99  
% 1.47/0.99  ------  iProver source info
% 1.47/0.99  
% 1.47/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.47/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.47/0.99  git: non_committed_changes: false
% 1.47/0.99  git: last_make_outside_of_git: false
% 1.47/0.99  
% 1.47/0.99  ------ 
% 1.47/0.99  
% 1.47/0.99  ------ Input Options
% 1.47/0.99  
% 1.47/0.99  --out_options                           all
% 1.47/0.99  --tptp_safe_out                         true
% 1.47/0.99  --problem_path                          ""
% 1.47/0.99  --include_path                          ""
% 1.47/0.99  --clausifier                            res/vclausify_rel
% 1.47/0.99  --clausifier_options                    --mode clausify
% 1.47/0.99  --stdin                                 false
% 1.47/0.99  --stats_out                             all
% 1.47/0.99  
% 1.47/0.99  ------ General Options
% 1.47/0.99  
% 1.47/0.99  --fof                                   false
% 1.47/0.99  --time_out_real                         305.
% 1.47/0.99  --time_out_virtual                      -1.
% 1.47/0.99  --symbol_type_check                     false
% 1.47/0.99  --clausify_out                          false
% 1.47/0.99  --sig_cnt_out                           false
% 1.47/0.99  --trig_cnt_out                          false
% 1.47/0.99  --trig_cnt_out_tolerance                1.
% 1.47/0.99  --trig_cnt_out_sk_spl                   false
% 1.47/0.99  --abstr_cl_out                          false
% 1.47/0.99  
% 1.47/0.99  ------ Global Options
% 1.47/0.99  
% 1.47/0.99  --schedule                              default
% 1.47/0.99  --add_important_lit                     false
% 1.47/0.99  --prop_solver_per_cl                    1000
% 1.47/0.99  --min_unsat_core                        false
% 1.47/0.99  --soft_assumptions                      false
% 1.47/0.99  --soft_lemma_size                       3
% 1.47/0.99  --prop_impl_unit_size                   0
% 1.47/0.99  --prop_impl_unit                        []
% 1.47/0.99  --share_sel_clauses                     true
% 1.47/0.99  --reset_solvers                         false
% 1.47/0.99  --bc_imp_inh                            [conj_cone]
% 1.47/0.99  --conj_cone_tolerance                   3.
% 1.47/0.99  --extra_neg_conj                        none
% 1.47/0.99  --large_theory_mode                     true
% 1.47/0.99  --prolific_symb_bound                   200
% 1.47/0.99  --lt_threshold                          2000
% 1.47/0.99  --clause_weak_htbl                      true
% 1.47/0.99  --gc_record_bc_elim                     false
% 1.47/0.99  
% 1.47/0.99  ------ Preprocessing Options
% 1.47/0.99  
% 1.47/0.99  --preprocessing_flag                    true
% 1.47/0.99  --time_out_prep_mult                    0.1
% 1.47/0.99  --splitting_mode                        input
% 1.47/0.99  --splitting_grd                         true
% 1.47/0.99  --splitting_cvd                         false
% 1.47/0.99  --splitting_cvd_svl                     false
% 1.47/0.99  --splitting_nvd                         32
% 1.47/0.99  --sub_typing                            true
% 1.47/0.99  --prep_gs_sim                           true
% 1.47/0.99  --prep_unflatten                        true
% 1.47/0.99  --prep_res_sim                          true
% 1.47/0.99  --prep_upred                            true
% 1.47/0.99  --prep_sem_filter                       exhaustive
% 1.47/0.99  --prep_sem_filter_out                   false
% 1.47/0.99  --pred_elim                             true
% 1.47/0.99  --res_sim_input                         true
% 1.47/0.99  --eq_ax_congr_red                       true
% 1.47/0.99  --pure_diseq_elim                       true
% 1.47/0.99  --brand_transform                       false
% 1.47/0.99  --non_eq_to_eq                          false
% 1.47/0.99  --prep_def_merge                        true
% 1.47/0.99  --prep_def_merge_prop_impl              false
% 1.47/1.00  --prep_def_merge_mbd                    true
% 1.47/1.00  --prep_def_merge_tr_red                 false
% 1.47/1.00  --prep_def_merge_tr_cl                  false
% 1.47/1.00  --smt_preprocessing                     true
% 1.47/1.00  --smt_ac_axioms                         fast
% 1.47/1.00  --preprocessed_out                      false
% 1.47/1.00  --preprocessed_stats                    false
% 1.47/1.00  
% 1.47/1.00  ------ Abstraction refinement Options
% 1.47/1.00  
% 1.47/1.00  --abstr_ref                             []
% 1.47/1.00  --abstr_ref_prep                        false
% 1.47/1.00  --abstr_ref_until_sat                   false
% 1.47/1.00  --abstr_ref_sig_restrict                funpre
% 1.47/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.47/1.00  --abstr_ref_under                       []
% 1.47/1.00  
% 1.47/1.00  ------ SAT Options
% 1.47/1.00  
% 1.47/1.00  --sat_mode                              false
% 1.47/1.00  --sat_fm_restart_options                ""
% 1.47/1.00  --sat_gr_def                            false
% 1.47/1.00  --sat_epr_types                         true
% 1.47/1.00  --sat_non_cyclic_types                  false
% 1.47/1.00  --sat_finite_models                     false
% 1.47/1.00  --sat_fm_lemmas                         false
% 1.47/1.00  --sat_fm_prep                           false
% 1.47/1.00  --sat_fm_uc_incr                        true
% 1.47/1.00  --sat_out_model                         small
% 1.47/1.00  --sat_out_clauses                       false
% 1.47/1.00  
% 1.47/1.00  ------ QBF Options
% 1.47/1.00  
% 1.47/1.00  --qbf_mode                              false
% 1.47/1.00  --qbf_elim_univ                         false
% 1.47/1.00  --qbf_dom_inst                          none
% 1.47/1.00  --qbf_dom_pre_inst                      false
% 1.47/1.00  --qbf_sk_in                             false
% 1.47/1.00  --qbf_pred_elim                         true
% 1.47/1.00  --qbf_split                             512
% 1.47/1.00  
% 1.47/1.00  ------ BMC1 Options
% 1.47/1.00  
% 1.47/1.00  --bmc1_incremental                      false
% 1.47/1.00  --bmc1_axioms                           reachable_all
% 1.47/1.00  --bmc1_min_bound                        0
% 1.47/1.00  --bmc1_max_bound                        -1
% 1.47/1.00  --bmc1_max_bound_default                -1
% 1.47/1.00  --bmc1_symbol_reachability              true
% 1.47/1.00  --bmc1_property_lemmas                  false
% 1.47/1.00  --bmc1_k_induction                      false
% 1.47/1.00  --bmc1_non_equiv_states                 false
% 1.47/1.00  --bmc1_deadlock                         false
% 1.47/1.00  --bmc1_ucm                              false
% 1.47/1.00  --bmc1_add_unsat_core                   none
% 1.47/1.00  --bmc1_unsat_core_children              false
% 1.47/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.47/1.00  --bmc1_out_stat                         full
% 1.47/1.00  --bmc1_ground_init                      false
% 1.47/1.00  --bmc1_pre_inst_next_state              false
% 1.47/1.00  --bmc1_pre_inst_state                   false
% 1.47/1.00  --bmc1_pre_inst_reach_state             false
% 1.47/1.00  --bmc1_out_unsat_core                   false
% 1.47/1.00  --bmc1_aig_witness_out                  false
% 1.47/1.00  --bmc1_verbose                          false
% 1.47/1.00  --bmc1_dump_clauses_tptp                false
% 1.47/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.47/1.00  --bmc1_dump_file                        -
% 1.47/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.47/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.47/1.00  --bmc1_ucm_extend_mode                  1
% 1.47/1.00  --bmc1_ucm_init_mode                    2
% 1.47/1.00  --bmc1_ucm_cone_mode                    none
% 1.47/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.47/1.00  --bmc1_ucm_relax_model                  4
% 1.47/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.47/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.47/1.00  --bmc1_ucm_layered_model                none
% 1.47/1.00  --bmc1_ucm_max_lemma_size               10
% 1.47/1.00  
% 1.47/1.00  ------ AIG Options
% 1.47/1.00  
% 1.47/1.00  --aig_mode                              false
% 1.47/1.00  
% 1.47/1.00  ------ Instantiation Options
% 1.47/1.00  
% 1.47/1.00  --instantiation_flag                    true
% 1.47/1.00  --inst_sos_flag                         false
% 1.47/1.00  --inst_sos_phase                        true
% 1.47/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.47/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.47/1.00  --inst_lit_sel_side                     num_symb
% 1.47/1.00  --inst_solver_per_active                1400
% 1.47/1.00  --inst_solver_calls_frac                1.
% 1.47/1.00  --inst_passive_queue_type               priority_queues
% 1.47/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.47/1.00  --inst_passive_queues_freq              [25;2]
% 1.47/1.00  --inst_dismatching                      true
% 1.47/1.00  --inst_eager_unprocessed_to_passive     true
% 1.47/1.00  --inst_prop_sim_given                   true
% 1.47/1.00  --inst_prop_sim_new                     false
% 1.47/1.00  --inst_subs_new                         false
% 1.47/1.00  --inst_eq_res_simp                      false
% 1.47/1.00  --inst_subs_given                       false
% 1.47/1.00  --inst_orphan_elimination               true
% 1.47/1.00  --inst_learning_loop_flag               true
% 1.47/1.00  --inst_learning_start                   3000
% 1.47/1.00  --inst_learning_factor                  2
% 1.47/1.00  --inst_start_prop_sim_after_learn       3
% 1.47/1.00  --inst_sel_renew                        solver
% 1.47/1.00  --inst_lit_activity_flag                true
% 1.47/1.00  --inst_restr_to_given                   false
% 1.47/1.00  --inst_activity_threshold               500
% 1.47/1.00  --inst_out_proof                        true
% 1.47/1.00  
% 1.47/1.00  ------ Resolution Options
% 1.47/1.00  
% 1.47/1.00  --resolution_flag                       true
% 1.47/1.00  --res_lit_sel                           adaptive
% 1.47/1.00  --res_lit_sel_side                      none
% 1.47/1.00  --res_ordering                          kbo
% 1.47/1.00  --res_to_prop_solver                    active
% 1.47/1.00  --res_prop_simpl_new                    false
% 1.47/1.00  --res_prop_simpl_given                  true
% 1.47/1.00  --res_passive_queue_type                priority_queues
% 1.47/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.47/1.00  --res_passive_queues_freq               [15;5]
% 1.47/1.00  --res_forward_subs                      full
% 1.47/1.00  --res_backward_subs                     full
% 1.47/1.00  --res_forward_subs_resolution           true
% 1.47/1.00  --res_backward_subs_resolution          true
% 1.47/1.00  --res_orphan_elimination                true
% 1.47/1.00  --res_time_limit                        2.
% 1.47/1.00  --res_out_proof                         true
% 1.47/1.00  
% 1.47/1.00  ------ Superposition Options
% 1.47/1.00  
% 1.47/1.00  --superposition_flag                    true
% 1.47/1.00  --sup_passive_queue_type                priority_queues
% 1.47/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.47/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.47/1.00  --demod_completeness_check              fast
% 1.47/1.00  --demod_use_ground                      true
% 1.47/1.00  --sup_to_prop_solver                    passive
% 1.47/1.00  --sup_prop_simpl_new                    true
% 1.47/1.00  --sup_prop_simpl_given                  true
% 1.47/1.00  --sup_fun_splitting                     false
% 1.47/1.00  --sup_smt_interval                      50000
% 1.47/1.00  
% 1.47/1.00  ------ Superposition Simplification Setup
% 1.47/1.00  
% 1.47/1.00  --sup_indices_passive                   []
% 1.47/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.47/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/1.00  --sup_full_bw                           [BwDemod]
% 1.47/1.00  --sup_immed_triv                        [TrivRules]
% 1.47/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.47/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/1.00  --sup_immed_bw_main                     []
% 1.47/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.47/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.47/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.47/1.00  
% 1.47/1.00  ------ Combination Options
% 1.47/1.00  
% 1.47/1.00  --comb_res_mult                         3
% 1.47/1.00  --comb_sup_mult                         2
% 1.47/1.00  --comb_inst_mult                        10
% 1.47/1.00  
% 1.47/1.00  ------ Debug Options
% 1.47/1.00  
% 1.47/1.00  --dbg_backtrace                         false
% 1.47/1.00  --dbg_dump_prop_clauses                 false
% 1.47/1.00  --dbg_dump_prop_clauses_file            -
% 1.47/1.00  --dbg_out_stat                          false
% 1.47/1.00  ------ Parsing...
% 1.47/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.47/1.00  
% 1.47/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 1.47/1.00  
% 1.47/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.47/1.00  
% 1.47/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.47/1.00  ------ Proving...
% 1.47/1.00  ------ Problem Properties 
% 1.47/1.00  
% 1.47/1.00  
% 1.47/1.00  clauses                                 11
% 1.47/1.00  conjectures                             1
% 1.47/1.00  EPR                                     2
% 1.47/1.00  Horn                                    8
% 1.47/1.00  unary                                   2
% 1.47/1.00  binary                                  2
% 1.47/1.00  lits                                    29
% 1.47/1.00  lits eq                                 5
% 1.47/1.00  fd_pure                                 0
% 1.47/1.00  fd_pseudo                               0
% 1.47/1.00  fd_cond                                 0
% 1.47/1.00  fd_pseudo_cond                          2
% 1.47/1.00  AC symbols                              0
% 1.47/1.00  
% 1.47/1.00  ------ Schedule dynamic 5 is on 
% 1.47/1.00  
% 1.47/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.47/1.00  
% 1.47/1.00  
% 1.47/1.00  ------ 
% 1.47/1.00  Current options:
% 1.47/1.00  ------ 
% 1.47/1.00  
% 1.47/1.00  ------ Input Options
% 1.47/1.00  
% 1.47/1.00  --out_options                           all
% 1.47/1.00  --tptp_safe_out                         true
% 1.47/1.00  --problem_path                          ""
% 1.47/1.00  --include_path                          ""
% 1.47/1.00  --clausifier                            res/vclausify_rel
% 1.47/1.00  --clausifier_options                    --mode clausify
% 1.47/1.00  --stdin                                 false
% 1.47/1.00  --stats_out                             all
% 1.47/1.00  
% 1.47/1.00  ------ General Options
% 1.47/1.00  
% 1.47/1.00  --fof                                   false
% 1.47/1.00  --time_out_real                         305.
% 1.47/1.00  --time_out_virtual                      -1.
% 1.47/1.00  --symbol_type_check                     false
% 1.47/1.00  --clausify_out                          false
% 1.47/1.00  --sig_cnt_out                           false
% 1.47/1.00  --trig_cnt_out                          false
% 1.47/1.00  --trig_cnt_out_tolerance                1.
% 1.47/1.00  --trig_cnt_out_sk_spl                   false
% 1.47/1.00  --abstr_cl_out                          false
% 1.47/1.00  
% 1.47/1.00  ------ Global Options
% 1.47/1.00  
% 1.47/1.00  --schedule                              default
% 1.47/1.00  --add_important_lit                     false
% 1.47/1.00  --prop_solver_per_cl                    1000
% 1.47/1.00  --min_unsat_core                        false
% 1.47/1.00  --soft_assumptions                      false
% 1.47/1.00  --soft_lemma_size                       3
% 1.47/1.00  --prop_impl_unit_size                   0
% 1.47/1.00  --prop_impl_unit                        []
% 1.47/1.00  --share_sel_clauses                     true
% 1.47/1.00  --reset_solvers                         false
% 1.47/1.00  --bc_imp_inh                            [conj_cone]
% 1.47/1.00  --conj_cone_tolerance                   3.
% 1.47/1.00  --extra_neg_conj                        none
% 1.47/1.00  --large_theory_mode                     true
% 1.47/1.00  --prolific_symb_bound                   200
% 1.47/1.00  --lt_threshold                          2000
% 1.47/1.00  --clause_weak_htbl                      true
% 1.47/1.00  --gc_record_bc_elim                     false
% 1.47/1.00  
% 1.47/1.00  ------ Preprocessing Options
% 1.47/1.00  
% 1.47/1.00  --preprocessing_flag                    true
% 1.47/1.00  --time_out_prep_mult                    0.1
% 1.47/1.00  --splitting_mode                        input
% 1.47/1.00  --splitting_grd                         true
% 1.47/1.00  --splitting_cvd                         false
% 1.47/1.00  --splitting_cvd_svl                     false
% 1.47/1.00  --splitting_nvd                         32
% 1.47/1.00  --sub_typing                            true
% 1.47/1.00  --prep_gs_sim                           true
% 1.47/1.00  --prep_unflatten                        true
% 1.47/1.00  --prep_res_sim                          true
% 1.47/1.00  --prep_upred                            true
% 1.47/1.00  --prep_sem_filter                       exhaustive
% 1.47/1.00  --prep_sem_filter_out                   false
% 1.47/1.00  --pred_elim                             true
% 1.47/1.00  --res_sim_input                         true
% 1.47/1.00  --eq_ax_congr_red                       true
% 1.47/1.00  --pure_diseq_elim                       true
% 1.47/1.00  --brand_transform                       false
% 1.47/1.00  --non_eq_to_eq                          false
% 1.47/1.00  --prep_def_merge                        true
% 1.47/1.00  --prep_def_merge_prop_impl              false
% 1.47/1.00  --prep_def_merge_mbd                    true
% 1.47/1.00  --prep_def_merge_tr_red                 false
% 1.47/1.00  --prep_def_merge_tr_cl                  false
% 1.47/1.00  --smt_preprocessing                     true
% 1.47/1.00  --smt_ac_axioms                         fast
% 1.47/1.00  --preprocessed_out                      false
% 1.47/1.00  --preprocessed_stats                    false
% 1.47/1.00  
% 1.47/1.00  ------ Abstraction refinement Options
% 1.47/1.00  
% 1.47/1.00  --abstr_ref                             []
% 1.47/1.00  --abstr_ref_prep                        false
% 1.47/1.00  --abstr_ref_until_sat                   false
% 1.47/1.00  --abstr_ref_sig_restrict                funpre
% 1.47/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.47/1.00  --abstr_ref_under                       []
% 1.47/1.00  
% 1.47/1.00  ------ SAT Options
% 1.47/1.00  
% 1.47/1.00  --sat_mode                              false
% 1.47/1.00  --sat_fm_restart_options                ""
% 1.47/1.00  --sat_gr_def                            false
% 1.47/1.00  --sat_epr_types                         true
% 1.47/1.00  --sat_non_cyclic_types                  false
% 1.47/1.00  --sat_finite_models                     false
% 1.47/1.00  --sat_fm_lemmas                         false
% 1.47/1.00  --sat_fm_prep                           false
% 1.47/1.00  --sat_fm_uc_incr                        true
% 1.47/1.00  --sat_out_model                         small
% 1.47/1.00  --sat_out_clauses                       false
% 1.47/1.00  
% 1.47/1.00  ------ QBF Options
% 1.47/1.00  
% 1.47/1.00  --qbf_mode                              false
% 1.47/1.00  --qbf_elim_univ                         false
% 1.47/1.00  --qbf_dom_inst                          none
% 1.47/1.00  --qbf_dom_pre_inst                      false
% 1.47/1.00  --qbf_sk_in                             false
% 1.47/1.00  --qbf_pred_elim                         true
% 1.47/1.00  --qbf_split                             512
% 1.47/1.00  
% 1.47/1.00  ------ BMC1 Options
% 1.47/1.00  
% 1.47/1.00  --bmc1_incremental                      false
% 1.47/1.00  --bmc1_axioms                           reachable_all
% 1.47/1.00  --bmc1_min_bound                        0
% 1.47/1.00  --bmc1_max_bound                        -1
% 1.47/1.00  --bmc1_max_bound_default                -1
% 1.47/1.00  --bmc1_symbol_reachability              true
% 1.47/1.00  --bmc1_property_lemmas                  false
% 1.47/1.00  --bmc1_k_induction                      false
% 1.47/1.00  --bmc1_non_equiv_states                 false
% 1.47/1.00  --bmc1_deadlock                         false
% 1.47/1.00  --bmc1_ucm                              false
% 1.47/1.00  --bmc1_add_unsat_core                   none
% 1.47/1.00  --bmc1_unsat_core_children              false
% 1.47/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.47/1.00  --bmc1_out_stat                         full
% 1.47/1.00  --bmc1_ground_init                      false
% 1.47/1.00  --bmc1_pre_inst_next_state              false
% 1.47/1.00  --bmc1_pre_inst_state                   false
% 1.47/1.00  --bmc1_pre_inst_reach_state             false
% 1.47/1.00  --bmc1_out_unsat_core                   false
% 1.47/1.00  --bmc1_aig_witness_out                  false
% 1.47/1.00  --bmc1_verbose                          false
% 1.47/1.00  --bmc1_dump_clauses_tptp                false
% 1.47/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.47/1.00  --bmc1_dump_file                        -
% 1.47/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.47/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.47/1.00  --bmc1_ucm_extend_mode                  1
% 1.47/1.00  --bmc1_ucm_init_mode                    2
% 1.47/1.00  --bmc1_ucm_cone_mode                    none
% 1.47/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.47/1.00  --bmc1_ucm_relax_model                  4
% 1.47/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.47/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.47/1.00  --bmc1_ucm_layered_model                none
% 1.47/1.00  --bmc1_ucm_max_lemma_size               10
% 1.47/1.00  
% 1.47/1.00  ------ AIG Options
% 1.47/1.00  
% 1.47/1.00  --aig_mode                              false
% 1.47/1.00  
% 1.47/1.00  ------ Instantiation Options
% 1.47/1.00  
% 1.47/1.00  --instantiation_flag                    true
% 1.47/1.00  --inst_sos_flag                         false
% 1.47/1.00  --inst_sos_phase                        true
% 1.47/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.47/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.47/1.00  --inst_lit_sel_side                     none
% 1.47/1.00  --inst_solver_per_active                1400
% 1.47/1.00  --inst_solver_calls_frac                1.
% 1.47/1.00  --inst_passive_queue_type               priority_queues
% 1.47/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.47/1.00  --inst_passive_queues_freq              [25;2]
% 1.47/1.00  --inst_dismatching                      true
% 1.47/1.00  --inst_eager_unprocessed_to_passive     true
% 1.47/1.00  --inst_prop_sim_given                   true
% 1.47/1.00  --inst_prop_sim_new                     false
% 1.47/1.00  --inst_subs_new                         false
% 1.47/1.00  --inst_eq_res_simp                      false
% 1.47/1.00  --inst_subs_given                       false
% 1.47/1.00  --inst_orphan_elimination               true
% 1.47/1.00  --inst_learning_loop_flag               true
% 1.47/1.00  --inst_learning_start                   3000
% 1.47/1.00  --inst_learning_factor                  2
% 1.47/1.00  --inst_start_prop_sim_after_learn       3
% 1.47/1.00  --inst_sel_renew                        solver
% 1.47/1.00  --inst_lit_activity_flag                true
% 1.47/1.00  --inst_restr_to_given                   false
% 1.47/1.00  --inst_activity_threshold               500
% 1.47/1.00  --inst_out_proof                        true
% 1.47/1.00  
% 1.47/1.00  ------ Resolution Options
% 1.47/1.00  
% 1.47/1.00  --resolution_flag                       false
% 1.47/1.00  --res_lit_sel                           adaptive
% 1.47/1.00  --res_lit_sel_side                      none
% 1.47/1.00  --res_ordering                          kbo
% 1.47/1.00  --res_to_prop_solver                    active
% 1.47/1.00  --res_prop_simpl_new                    false
% 1.47/1.00  --res_prop_simpl_given                  true
% 1.47/1.00  --res_passive_queue_type                priority_queues
% 1.47/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.47/1.00  --res_passive_queues_freq               [15;5]
% 1.47/1.00  --res_forward_subs                      full
% 1.47/1.00  --res_backward_subs                     full
% 1.47/1.00  --res_forward_subs_resolution           true
% 1.47/1.00  --res_backward_subs_resolution          true
% 1.47/1.00  --res_orphan_elimination                true
% 1.47/1.00  --res_time_limit                        2.
% 1.47/1.00  --res_out_proof                         true
% 1.47/1.00  
% 1.47/1.00  ------ Superposition Options
% 1.47/1.00  
% 1.47/1.00  --superposition_flag                    true
% 1.47/1.00  --sup_passive_queue_type                priority_queues
% 1.47/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.47/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.47/1.00  --demod_completeness_check              fast
% 1.47/1.00  --demod_use_ground                      true
% 1.47/1.00  --sup_to_prop_solver                    passive
% 1.47/1.00  --sup_prop_simpl_new                    true
% 1.47/1.00  --sup_prop_simpl_given                  true
% 1.47/1.00  --sup_fun_splitting                     false
% 1.47/1.00  --sup_smt_interval                      50000
% 1.47/1.00  
% 1.47/1.00  ------ Superposition Simplification Setup
% 1.47/1.00  
% 1.47/1.00  --sup_indices_passive                   []
% 1.47/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.47/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.47/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/1.00  --sup_full_bw                           [BwDemod]
% 1.47/1.00  --sup_immed_triv                        [TrivRules]
% 1.47/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.47/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/1.00  --sup_immed_bw_main                     []
% 1.47/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.47/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.47/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.47/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.47/1.00  
% 1.47/1.00  ------ Combination Options
% 1.47/1.00  
% 1.47/1.00  --comb_res_mult                         3
% 1.47/1.00  --comb_sup_mult                         2
% 1.47/1.00  --comb_inst_mult                        10
% 1.47/1.00  
% 1.47/1.00  ------ Debug Options
% 1.47/1.00  
% 1.47/1.00  --dbg_backtrace                         false
% 1.47/1.00  --dbg_dump_prop_clauses                 false
% 1.47/1.00  --dbg_dump_prop_clauses_file            -
% 1.47/1.00  --dbg_out_stat                          false
% 1.47/1.00  
% 1.47/1.00  
% 1.47/1.00  
% 1.47/1.00  
% 1.47/1.00  ------ Proving...
% 1.47/1.00  
% 1.47/1.00  
% 1.47/1.00  % SZS status Theorem for theBenchmark.p
% 1.47/1.00  
% 1.47/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 1.47/1.00  
% 1.47/1.00  fof(f4,axiom,(
% 1.47/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_tex_2(X1,X0) <=> (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((r1_tarski(X1,X2) & v2_tex_2(X2,X0)) => X1 = X2)) & v2_tex_2(X1,X0)))))),
% 1.47/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.47/1.00  
% 1.47/1.00  fof(f9,plain,(
% 1.47/1.00    ! [X0] : (! [X1] : ((v3_tex_2(X1,X0) <=> (! [X2] : ((X1 = X2 | (~r1_tarski(X1,X2) | ~v2_tex_2(X2,X0))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.47/1.00    inference(ennf_transformation,[],[f4])).
% 1.47/1.00  
% 1.47/1.00  fof(f10,plain,(
% 1.47/1.00    ! [X0] : (! [X1] : ((v3_tex_2(X1,X0) <=> (! [X2] : (X1 = X2 | ~r1_tarski(X1,X2) | ~v2_tex_2(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.47/1.00    inference(flattening,[],[f9])).
% 1.47/1.00  
% 1.47/1.00  fof(f19,plain,(
% 1.47/1.00    ! [X0] : (! [X1] : (((v3_tex_2(X1,X0) | (? [X2] : (X1 != X2 & r1_tarski(X1,X2) & v2_tex_2(X2,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0))) & ((! [X2] : (X1 = X2 | ~r1_tarski(X1,X2) | ~v2_tex_2(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0)) | ~v3_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.47/1.00    inference(nnf_transformation,[],[f10])).
% 1.47/1.00  
% 1.47/1.00  fof(f20,plain,(
% 1.47/1.00    ! [X0] : (! [X1] : (((v3_tex_2(X1,X0) | ? [X2] : (X1 != X2 & r1_tarski(X1,X2) & v2_tex_2(X2,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0)) & ((! [X2] : (X1 = X2 | ~r1_tarski(X1,X2) | ~v2_tex_2(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0)) | ~v3_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.47/1.00    inference(flattening,[],[f19])).
% 1.47/1.00  
% 1.47/1.00  fof(f21,plain,(
% 1.47/1.00    ! [X0] : (! [X1] : (((v3_tex_2(X1,X0) | ? [X2] : (X1 != X2 & r1_tarski(X1,X2) & v2_tex_2(X2,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0)) & ((! [X3] : (X1 = X3 | ~r1_tarski(X1,X3) | ~v2_tex_2(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0)) | ~v3_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.47/1.00    inference(rectify,[],[f20])).
% 1.47/1.00  
% 1.47/1.00  fof(f22,plain,(
% 1.47/1.00    ! [X1,X0] : (? [X2] : (X1 != X2 & r1_tarski(X1,X2) & v2_tex_2(X2,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (sK0(X0,X1) != X1 & r1_tarski(X1,sK0(X0,X1)) & v2_tex_2(sK0(X0,X1),X0) & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 1.47/1.00    introduced(choice_axiom,[])).
% 1.47/1.00  
% 1.47/1.00  fof(f23,plain,(
% 1.47/1.00    ! [X0] : (! [X1] : (((v3_tex_2(X1,X0) | (sK0(X0,X1) != X1 & r1_tarski(X1,sK0(X0,X1)) & v2_tex_2(sK0(X0,X1),X0) & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0)) & ((! [X3] : (X1 = X3 | ~r1_tarski(X1,X3) | ~v2_tex_2(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0)) | ~v3_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.47/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f22])).
% 1.47/1.00  
% 1.47/1.00  fof(f38,plain,(
% 1.47/1.00    ( ! [X0,X1] : (v3_tex_2(X1,X0) | m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.47/1.00    inference(cnf_transformation,[],[f23])).
% 1.47/1.00  
% 1.47/1.00  fof(f6,conjecture,(
% 1.47/1.00    ! [X0] : ((l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_tex_2(X1,X0) <=> ~v1_subset_1(X1,u1_struct_0(X0)))))),
% 1.47/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.47/1.00  
% 1.47/1.00  fof(f7,negated_conjecture,(
% 1.47/1.00    ~! [X0] : ((l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_tex_2(X1,X0) <=> ~v1_subset_1(X1,u1_struct_0(X0)))))),
% 1.47/1.00    inference(negated_conjecture,[],[f6])).
% 1.47/1.00  
% 1.47/1.00  fof(f13,plain,(
% 1.47/1.00    ? [X0] : (? [X1] : ((v3_tex_2(X1,X0) <~> ~v1_subset_1(X1,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & (l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 1.47/1.00    inference(ennf_transformation,[],[f7])).
% 1.47/1.00  
% 1.47/1.00  fof(f14,plain,(
% 1.47/1.00    ? [X0] : (? [X1] : ((v3_tex_2(X1,X0) <~> ~v1_subset_1(X1,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.47/1.00    inference(flattening,[],[f13])).
% 1.47/1.00  
% 1.47/1.00  fof(f24,plain,(
% 1.47/1.00    ? [X0] : (? [X1] : (((v1_subset_1(X1,u1_struct_0(X0)) | ~v3_tex_2(X1,X0)) & (~v1_subset_1(X1,u1_struct_0(X0)) | v3_tex_2(X1,X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.47/1.00    inference(nnf_transformation,[],[f14])).
% 1.47/1.00  
% 1.47/1.00  fof(f25,plain,(
% 1.47/1.00    ? [X0] : (? [X1] : ((v1_subset_1(X1,u1_struct_0(X0)) | ~v3_tex_2(X1,X0)) & (~v1_subset_1(X1,u1_struct_0(X0)) | v3_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.47/1.00    inference(flattening,[],[f24])).
% 1.47/1.00  
% 1.47/1.00  fof(f27,plain,(
% 1.47/1.00    ( ! [X0] : (? [X1] : ((v1_subset_1(X1,u1_struct_0(X0)) | ~v3_tex_2(X1,X0)) & (~v1_subset_1(X1,u1_struct_0(X0)) | v3_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => ((v1_subset_1(sK2,u1_struct_0(X0)) | ~v3_tex_2(sK2,X0)) & (~v1_subset_1(sK2,u1_struct_0(X0)) | v3_tex_2(sK2,X0)) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 1.47/1.00    introduced(choice_axiom,[])).
% 1.47/1.00  
% 1.47/1.00  fof(f26,plain,(
% 1.47/1.00    ? [X0] : (? [X1] : ((v1_subset_1(X1,u1_struct_0(X0)) | ~v3_tex_2(X1,X0)) & (~v1_subset_1(X1,u1_struct_0(X0)) | v3_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : ((v1_subset_1(X1,u1_struct_0(sK1)) | ~v3_tex_2(X1,sK1)) & (~v1_subset_1(X1,u1_struct_0(sK1)) | v3_tex_2(X1,sK1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))) & l1_pre_topc(sK1) & v1_tdlat_3(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))),
% 1.47/1.00    introduced(choice_axiom,[])).
% 1.47/1.00  
% 1.47/1.00  fof(f28,plain,(
% 1.47/1.00    ((v1_subset_1(sK2,u1_struct_0(sK1)) | ~v3_tex_2(sK2,sK1)) & (~v1_subset_1(sK2,u1_struct_0(sK1)) | v3_tex_2(sK2,sK1)) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))) & l1_pre_topc(sK1) & v1_tdlat_3(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)),
% 1.47/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f25,f27,f26])).
% 1.47/1.00  
% 1.47/1.00  fof(f46,plain,(
% 1.47/1.00    l1_pre_topc(sK1)),
% 1.47/1.00    inference(cnf_transformation,[],[f28])).
% 1.47/1.00  
% 1.47/1.00  fof(f5,axiom,(
% 1.47/1.00    ! [X0] : ((l1_pre_topc(X0) & v1_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => v2_tex_2(X1,X0)))),
% 1.47/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.47/1.00  
% 1.47/1.00  fof(f11,plain,(
% 1.47/1.00    ! [X0] : (! [X1] : (v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.47/1.00    inference(ennf_transformation,[],[f5])).
% 1.47/1.00  
% 1.47/1.00  fof(f12,plain,(
% 1.47/1.00    ! [X0] : (! [X1] : (v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.47/1.00    inference(flattening,[],[f11])).
% 1.47/1.00  
% 1.47/1.00  fof(f42,plain,(
% 1.47/1.00    ( ! [X0,X1] : (v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v1_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.47/1.00    inference(cnf_transformation,[],[f12])).
% 1.47/1.00  
% 1.47/1.00  fof(f45,plain,(
% 1.47/1.00    v1_tdlat_3(sK1)),
% 1.47/1.00    inference(cnf_transformation,[],[f28])).
% 1.47/1.00  
% 1.47/1.00  fof(f43,plain,(
% 1.47/1.00    ~v2_struct_0(sK1)),
% 1.47/1.00    inference(cnf_transformation,[],[f28])).
% 1.47/1.00  
% 1.47/1.00  fof(f44,plain,(
% 1.47/1.00    v2_pre_topc(sK1)),
% 1.47/1.00    inference(cnf_transformation,[],[f28])).
% 1.47/1.00  
% 1.47/1.00  fof(f2,axiom,(
% 1.47/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 1.47/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.47/1.00  
% 1.47/1.00  fof(f17,plain,(
% 1.47/1.00    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 1.47/1.00    inference(nnf_transformation,[],[f2])).
% 1.47/1.00  
% 1.47/1.00  fof(f32,plain,(
% 1.47/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 1.47/1.00    inference(cnf_transformation,[],[f17])).
% 1.47/1.00  
% 1.47/1.00  fof(f47,plain,(
% 1.47/1.00    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))),
% 1.47/1.00    inference(cnf_transformation,[],[f28])).
% 1.47/1.00  
% 1.47/1.00  fof(f1,axiom,(
% 1.47/1.00    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.47/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.47/1.00  
% 1.47/1.00  fof(f15,plain,(
% 1.47/1.00    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.47/1.00    inference(nnf_transformation,[],[f1])).
% 1.47/1.00  
% 1.47/1.00  fof(f16,plain,(
% 1.47/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.47/1.00    inference(flattening,[],[f15])).
% 1.47/1.00  
% 1.47/1.00  fof(f31,plain,(
% 1.47/1.00    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 1.47/1.00    inference(cnf_transformation,[],[f16])).
% 1.47/1.00  
% 1.47/1.00  fof(f3,axiom,(
% 1.47/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (v1_subset_1(X1,X0) <=> X0 != X1))),
% 1.47/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.47/1.00  
% 1.47/1.00  fof(f8,plain,(
% 1.47/1.00    ! [X0,X1] : ((v1_subset_1(X1,X0) <=> X0 != X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.47/1.00    inference(ennf_transformation,[],[f3])).
% 1.47/1.00  
% 1.47/1.00  fof(f18,plain,(
% 1.47/1.00    ! [X0,X1] : (((v1_subset_1(X1,X0) | X0 = X1) & (X0 != X1 | ~v1_subset_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.47/1.00    inference(nnf_transformation,[],[f8])).
% 1.47/1.00  
% 1.47/1.00  fof(f35,plain,(
% 1.47/1.00    ( ! [X0,X1] : (v1_subset_1(X1,X0) | X0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.47/1.00    inference(cnf_transformation,[],[f18])).
% 1.47/1.00  
% 1.47/1.00  fof(f33,plain,(
% 1.47/1.00    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 1.47/1.00    inference(cnf_transformation,[],[f17])).
% 1.47/1.00  
% 1.47/1.00  fof(f48,plain,(
% 1.47/1.00    ~v1_subset_1(sK2,u1_struct_0(sK1)) | v3_tex_2(sK2,sK1)),
% 1.47/1.00    inference(cnf_transformation,[],[f28])).
% 1.47/1.00  
% 1.47/1.00  fof(f34,plain,(
% 1.47/1.00    ( ! [X0,X1] : (X0 != X1 | ~v1_subset_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.47/1.00    inference(cnf_transformation,[],[f18])).
% 1.47/1.00  
% 1.47/1.00  fof(f52,plain,(
% 1.47/1.00    ( ! [X1] : (~v1_subset_1(X1,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X1))) )),
% 1.47/1.00    inference(equality_resolution,[],[f34])).
% 1.47/1.00  
% 1.47/1.00  fof(f49,plain,(
% 1.47/1.00    v1_subset_1(sK2,u1_struct_0(sK1)) | ~v3_tex_2(sK2,sK1)),
% 1.47/1.00    inference(cnf_transformation,[],[f28])).
% 1.47/1.00  
% 1.47/1.00  fof(f30,plain,(
% 1.47/1.00    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 1.47/1.00    inference(cnf_transformation,[],[f16])).
% 1.47/1.00  
% 1.47/1.00  fof(f50,plain,(
% 1.47/1.00    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 1.47/1.00    inference(equality_resolution,[],[f30])).
% 1.47/1.00  
% 1.47/1.00  fof(f37,plain,(
% 1.47/1.00    ( ! [X0,X3,X1] : (X1 = X3 | ~r1_tarski(X1,X3) | ~v2_tex_2(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.47/1.00    inference(cnf_transformation,[],[f23])).
% 1.47/1.00  
% 1.47/1.00  fof(f40,plain,(
% 1.47/1.00    ( ! [X0,X1] : (v3_tex_2(X1,X0) | r1_tarski(X1,sK0(X0,X1)) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.47/1.00    inference(cnf_transformation,[],[f23])).
% 1.47/1.00  
% 1.47/1.00  fof(f41,plain,(
% 1.47/1.00    ( ! [X0,X1] : (v3_tex_2(X1,X0) | sK0(X0,X1) != X1 | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.47/1.00    inference(cnf_transformation,[],[f23])).
% 1.47/1.00  
% 1.47/1.00  cnf(c_10,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,X1)
% 1.47/1.00      | v3_tex_2(X0,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | m1_subset_1(sK0(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | ~ l1_pre_topc(X1) ),
% 1.47/1.00      inference(cnf_transformation,[],[f38]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_17,negated_conjecture,
% 1.47/1.00      ( l1_pre_topc(sK1) ),
% 1.47/1.00      inference(cnf_transformation,[],[f46]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_367,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,X1)
% 1.47/1.00      | v3_tex_2(X0,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | m1_subset_1(sK0(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | sK1 != X1 ),
% 1.47/1.00      inference(resolution_lifted,[status(thm)],[c_10,c_17]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_368,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,sK1)
% 1.47/1.00      | v3_tex_2(X0,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | m1_subset_1(sK0(sK1,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.47/1.00      inference(unflattening,[status(thm)],[c_367]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_13,plain,
% 1.47/1.00      ( v2_tex_2(X0,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | v2_struct_0(X1)
% 1.47/1.00      | ~ v2_pre_topc(X1)
% 1.47/1.00      | ~ v1_tdlat_3(X1)
% 1.47/1.00      | ~ l1_pre_topc(X1) ),
% 1.47/1.00      inference(cnf_transformation,[],[f42]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_18,negated_conjecture,
% 1.47/1.00      ( v1_tdlat_3(sK1) ),
% 1.47/1.00      inference(cnf_transformation,[],[f45]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_279,plain,
% 1.47/1.00      ( v2_tex_2(X0,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | v2_struct_0(X1)
% 1.47/1.00      | ~ v2_pre_topc(X1)
% 1.47/1.00      | ~ l1_pre_topc(X1)
% 1.47/1.00      | sK1 != X1 ),
% 1.47/1.00      inference(resolution_lifted,[status(thm)],[c_13,c_18]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_280,plain,
% 1.47/1.00      ( v2_tex_2(X0,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | v2_struct_0(sK1)
% 1.47/1.00      | ~ v2_pre_topc(sK1)
% 1.47/1.00      | ~ l1_pre_topc(sK1) ),
% 1.47/1.00      inference(unflattening,[status(thm)],[c_279]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_20,negated_conjecture,
% 1.47/1.00      ( ~ v2_struct_0(sK1) ),
% 1.47/1.00      inference(cnf_transformation,[],[f43]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_19,negated_conjecture,
% 1.47/1.00      ( v2_pre_topc(sK1) ),
% 1.47/1.00      inference(cnf_transformation,[],[f44]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_284,plain,
% 1.47/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | v2_tex_2(X0,sK1) ),
% 1.47/1.00      inference(global_propositional_subsumption,
% 1.47/1.00                [status(thm)],
% 1.47/1.00                [c_280,c_20,c_19,c_17]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_285,plain,
% 1.47/1.00      ( v2_tex_2(X0,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.47/1.00      inference(renaming,[status(thm)],[c_284]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_372,plain,
% 1.47/1.00      ( v3_tex_2(X0,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | m1_subset_1(sK0(sK1,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.47/1.00      inference(global_propositional_subsumption,
% 1.47/1.00                [status(thm)],
% 1.47/1.00                [c_368,c_20,c_19,c_17,c_280]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1196,plain,
% 1.47/1.00      ( v3_tex_2(X0,sK1) = iProver_top
% 1.47/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.47/1.00      | m1_subset_1(sK0(sK1,X0),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_372]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_4,plain,
% 1.47/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 1.47/1.00      inference(cnf_transformation,[],[f32]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1201,plain,
% 1.47/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 1.47/1.00      | r1_tarski(X0,X1) = iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1601,plain,
% 1.47/1.00      ( v3_tex_2(X0,sK1) = iProver_top
% 1.47/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.47/1.00      | r1_tarski(sK0(sK1,X0),u1_struct_0(sK1)) = iProver_top ),
% 1.47/1.00      inference(superposition,[status(thm)],[c_1196,c_1201]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_16,negated_conjecture,
% 1.47/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.47/1.00      inference(cnf_transformation,[],[f47]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1200,plain,
% 1.47/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1600,plain,
% 1.47/1.00      ( r1_tarski(sK2,u1_struct_0(sK1)) = iProver_top ),
% 1.47/1.00      inference(superposition,[status(thm)],[c_1200,c_1201]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_0,plain,
% 1.47/1.00      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 1.47/1.00      inference(cnf_transformation,[],[f31]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1204,plain,
% 1.47/1.00      ( X0 = X1
% 1.47/1.00      | r1_tarski(X1,X0) != iProver_top
% 1.47/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1796,plain,
% 1.47/1.00      ( u1_struct_0(sK1) = sK2
% 1.47/1.00      | r1_tarski(u1_struct_0(sK1),sK2) != iProver_top ),
% 1.47/1.00      inference(superposition,[status(thm)],[c_1600,c_1204]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_25,plain,
% 1.47/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_5,plain,
% 1.47/1.00      ( v1_subset_1(X0,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.47/1.00      | X0 = X1 ),
% 1.47/1.00      inference(cnf_transformation,[],[f35]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_3,plain,
% 1.47/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 1.47/1.00      inference(cnf_transformation,[],[f33]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_158,plain,
% 1.47/1.00      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 1.47/1.00      inference(prop_impl,[status(thm)],[c_3]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_159,plain,
% 1.47/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 1.47/1.00      inference(renaming,[status(thm)],[c_158]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_202,plain,
% 1.47/1.00      ( v1_subset_1(X0,X1) | ~ r1_tarski(X0,X1) | X0 = X1 ),
% 1.47/1.00      inference(bin_hyper_res,[status(thm)],[c_5,c_159]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_15,negated_conjecture,
% 1.47/1.00      ( v3_tex_2(sK2,sK1) | ~ v1_subset_1(sK2,u1_struct_0(sK1)) ),
% 1.47/1.00      inference(cnf_transformation,[],[f48]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_160,plain,
% 1.47/1.00      ( v3_tex_2(sK2,sK1) | ~ v1_subset_1(sK2,u1_struct_0(sK1)) ),
% 1.47/1.00      inference(prop_impl,[status(thm)],[c_15]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_303,plain,
% 1.47/1.00      ( v3_tex_2(sK2,sK1)
% 1.47/1.00      | ~ r1_tarski(X0,X1)
% 1.47/1.00      | X1 = X0
% 1.47/1.00      | u1_struct_0(sK1) != X1
% 1.47/1.00      | sK2 != X0 ),
% 1.47/1.00      inference(resolution_lifted,[status(thm)],[c_202,c_160]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_304,plain,
% 1.47/1.00      ( v3_tex_2(sK2,sK1)
% 1.47/1.00      | ~ r1_tarski(sK2,u1_struct_0(sK1))
% 1.47/1.00      | u1_struct_0(sK1) = sK2 ),
% 1.47/1.00      inference(unflattening,[status(thm)],[c_303]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_305,plain,
% 1.47/1.00      ( u1_struct_0(sK1) = sK2
% 1.47/1.00      | v3_tex_2(sK2,sK1) = iProver_top
% 1.47/1.00      | r1_tarski(sK2,u1_struct_0(sK1)) != iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_304]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1302,plain,
% 1.47/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | r1_tarski(sK2,u1_struct_0(sK1)) ),
% 1.47/1.00      inference(instantiation,[status(thm)],[c_4]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1303,plain,
% 1.47/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.47/1.00      | r1_tarski(sK2,u1_struct_0(sK1)) = iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_1302]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_6,plain,
% 1.47/1.00      ( ~ v1_subset_1(X0,X0) | ~ m1_subset_1(X0,k1_zfmisc_1(X0)) ),
% 1.47/1.00      inference(cnf_transformation,[],[f52]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_14,negated_conjecture,
% 1.47/1.00      ( ~ v3_tex_2(sK2,sK1) | v1_subset_1(sK2,u1_struct_0(sK1)) ),
% 1.47/1.00      inference(cnf_transformation,[],[f49]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_162,plain,
% 1.47/1.00      ( ~ v3_tex_2(sK2,sK1) | v1_subset_1(sK2,u1_struct_0(sK1)) ),
% 1.47/1.00      inference(prop_impl,[status(thm)],[c_14]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_316,plain,
% 1.47/1.00      ( ~ v3_tex_2(sK2,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(X0))
% 1.47/1.00      | u1_struct_0(sK1) != X0
% 1.47/1.00      | sK2 != X0 ),
% 1.47/1.00      inference(resolution_lifted,[status(thm)],[c_6,c_162]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_317,plain,
% 1.47/1.00      ( ~ v3_tex_2(sK2,sK1)
% 1.47/1.00      | ~ m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | sK2 != u1_struct_0(sK1) ),
% 1.47/1.00      inference(unflattening,[status(thm)],[c_316]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1198,plain,
% 1.47/1.00      ( sK2 != u1_struct_0(sK1)
% 1.47/1.00      | v3_tex_2(sK2,sK1) != iProver_top
% 1.47/1.00      | m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_317]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_318,plain,
% 1.47/1.00      ( sK2 != u1_struct_0(sK1)
% 1.47/1.00      | v3_tex_2(sK2,sK1) != iProver_top
% 1.47/1.00      | m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_317]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1297,plain,
% 1.47/1.00      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ r1_tarski(X0,u1_struct_0(sK1)) ),
% 1.47/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1351,plain,
% 1.47/1.00      ( m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ r1_tarski(u1_struct_0(sK1),u1_struct_0(sK1)) ),
% 1.47/1.00      inference(instantiation,[status(thm)],[c_1297]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1353,plain,
% 1.47/1.00      ( m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top
% 1.47/1.00      | r1_tarski(u1_struct_0(sK1),u1_struct_0(sK1)) != iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_1351]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1,plain,
% 1.47/1.00      ( r1_tarski(X0,X0) ),
% 1.47/1.00      inference(cnf_transformation,[],[f50]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1352,plain,
% 1.47/1.00      ( r1_tarski(u1_struct_0(sK1),u1_struct_0(sK1)) ),
% 1.47/1.00      inference(instantiation,[status(thm)],[c_1]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1355,plain,
% 1.47/1.00      ( r1_tarski(u1_struct_0(sK1),u1_struct_0(sK1)) = iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_1352]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_11,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,X1)
% 1.47/1.00      | ~ v3_tex_2(X2,X1)
% 1.47/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | ~ r1_tarski(X2,X0)
% 1.47/1.00      | ~ l1_pre_topc(X1)
% 1.47/1.00      | X0 = X2 ),
% 1.47/1.00      inference(cnf_transformation,[],[f37]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_344,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,X1)
% 1.47/1.00      | ~ v3_tex_2(X2,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | ~ r1_tarski(X2,X0)
% 1.47/1.00      | X2 = X0
% 1.47/1.00      | sK1 != X1 ),
% 1.47/1.00      inference(resolution_lifted,[status(thm)],[c_11,c_17]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_345,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,sK1)
% 1.47/1.00      | ~ v3_tex_2(X1,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ r1_tarski(X1,X0)
% 1.47/1.00      | X1 = X0 ),
% 1.47/1.00      inference(unflattening,[status(thm)],[c_344]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_347,plain,
% 1.47/1.00      ( ~ v3_tex_2(X1,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ r1_tarski(X1,X0)
% 1.47/1.00      | X1 = X0 ),
% 1.47/1.00      inference(global_propositional_subsumption,
% 1.47/1.00                [status(thm)],
% 1.47/1.00                [c_345,c_20,c_19,c_17,c_280]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_348,plain,
% 1.47/1.00      ( ~ v3_tex_2(X0,sK1)
% 1.47/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ r1_tarski(X0,X1)
% 1.47/1.00      | X0 = X1 ),
% 1.47/1.00      inference(renaming,[status(thm)],[c_347]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1363,plain,
% 1.47/1.00      ( ~ v3_tex_2(sK2,sK1)
% 1.47/1.00      | ~ m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | ~ r1_tarski(sK2,u1_struct_0(sK1))
% 1.47/1.00      | sK2 = u1_struct_0(sK1) ),
% 1.47/1.00      inference(instantiation,[status(thm)],[c_348]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1364,plain,
% 1.47/1.00      ( sK2 = u1_struct_0(sK1)
% 1.47/1.00      | v3_tex_2(sK2,sK1) != iProver_top
% 1.47/1.00      | m1_subset_1(u1_struct_0(sK1),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.47/1.00      | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.47/1.00      | r1_tarski(sK2,u1_struct_0(sK1)) != iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_1363]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1529,plain,
% 1.47/1.00      ( v3_tex_2(sK2,sK1) != iProver_top ),
% 1.47/1.00      inference(global_propositional_subsumption,
% 1.47/1.00                [status(thm)],
% 1.47/1.00                [c_1198,c_25,c_318,c_1303,c_1353,c_1355,c_1364]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1799,plain,
% 1.47/1.00      ( u1_struct_0(sK1) = sK2 ),
% 1.47/1.00      inference(global_propositional_subsumption,
% 1.47/1.00                [status(thm)],
% 1.47/1.00                [c_1796,c_25,c_305,c_318,c_1303,c_1353,c_1355,c_1364]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_2365,plain,
% 1.47/1.00      ( v3_tex_2(X0,sK1) = iProver_top
% 1.47/1.00      | m1_subset_1(X0,k1_zfmisc_1(sK2)) != iProver_top
% 1.47/1.00      | r1_tarski(sK0(sK1,X0),sK2) = iProver_top ),
% 1.47/1.00      inference(light_normalisation,[status(thm)],[c_1601,c_1799]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_8,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,X1)
% 1.47/1.00      | v3_tex_2(X0,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | r1_tarski(X0,sK0(X1,X0))
% 1.47/1.00      | ~ l1_pre_topc(X1) ),
% 1.47/1.00      inference(cnf_transformation,[],[f40]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_409,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,X1)
% 1.47/1.00      | v3_tex_2(X0,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | r1_tarski(X0,sK0(X1,X0))
% 1.47/1.00      | sK1 != X1 ),
% 1.47/1.00      inference(resolution_lifted,[status(thm)],[c_8,c_17]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_410,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,sK1)
% 1.47/1.00      | v3_tex_2(X0,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | r1_tarski(X0,sK0(sK1,X0)) ),
% 1.47/1.00      inference(unflattening,[status(thm)],[c_409]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_414,plain,
% 1.47/1.00      ( v3_tex_2(X0,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | r1_tarski(X0,sK0(sK1,X0)) ),
% 1.47/1.00      inference(global_propositional_subsumption,
% 1.47/1.00                [status(thm)],
% 1.47/1.00                [c_410,c_20,c_19,c_17,c_280]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1195,plain,
% 1.47/1.00      ( v3_tex_2(X0,sK1) = iProver_top
% 1.47/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.47/1.00      | r1_tarski(X0,sK0(sK1,X0)) = iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_414]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1417,plain,
% 1.47/1.00      ( v3_tex_2(sK2,sK1) = iProver_top
% 1.47/1.00      | r1_tarski(sK2,sK0(sK1,sK2)) = iProver_top ),
% 1.47/1.00      inference(superposition,[status(thm)],[c_1200,c_1195]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1291,plain,
% 1.47/1.00      ( v3_tex_2(sK2,sK1)
% 1.47/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | r1_tarski(sK2,sK0(sK1,sK2)) ),
% 1.47/1.00      inference(instantiation,[status(thm)],[c_414]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1292,plain,
% 1.47/1.00      ( v3_tex_2(sK2,sK1) = iProver_top
% 1.47/1.00      | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.47/1.00      | r1_tarski(sK2,sK0(sK1,sK2)) = iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_1291]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1420,plain,
% 1.47/1.00      ( r1_tarski(sK2,sK0(sK1,sK2)) = iProver_top ),
% 1.47/1.00      inference(global_propositional_subsumption,
% 1.47/1.00                [status(thm)],
% 1.47/1.00                [c_1417,c_25,c_318,c_1292,c_1303,c_1353,c_1355,c_1364]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1714,plain,
% 1.47/1.00      ( sK0(sK1,sK2) = sK2 | r1_tarski(sK0(sK1,sK2),sK2) != iProver_top ),
% 1.47/1.00      inference(superposition,[status(thm)],[c_1420,c_1204]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_7,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,X1)
% 1.47/1.00      | v3_tex_2(X0,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | ~ l1_pre_topc(X1)
% 1.47/1.00      | sK0(X1,X0) != X0 ),
% 1.47/1.00      inference(cnf_transformation,[],[f41]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_430,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,X1)
% 1.47/1.00      | v3_tex_2(X0,X1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.47/1.00      | sK0(X1,X0) != X0
% 1.47/1.00      | sK1 != X1 ),
% 1.47/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_17]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_431,plain,
% 1.47/1.00      ( ~ v2_tex_2(X0,sK1)
% 1.47/1.00      | v3_tex_2(X0,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | sK0(sK1,X0) != X0 ),
% 1.47/1.00      inference(unflattening,[status(thm)],[c_430]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_435,plain,
% 1.47/1.00      ( v3_tex_2(X0,sK1)
% 1.47/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | sK0(sK1,X0) != X0 ),
% 1.47/1.00      inference(global_propositional_subsumption,
% 1.47/1.00                [status(thm)],
% 1.47/1.00                [c_431,c_20,c_19,c_17,c_280]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1294,plain,
% 1.47/1.00      ( v3_tex_2(sK2,sK1)
% 1.47/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.47/1.00      | sK0(sK1,sK2) != sK2 ),
% 1.47/1.00      inference(instantiation,[status(thm)],[c_435]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1295,plain,
% 1.47/1.00      ( sK0(sK1,sK2) != sK2
% 1.47/1.00      | v3_tex_2(sK2,sK1) = iProver_top
% 1.47/1.00      | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_1294]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1425,plain,
% 1.47/1.00      ( ~ r1_tarski(sK0(sK1,sK2),sK2)
% 1.47/1.00      | ~ r1_tarski(sK2,sK0(sK1,sK2))
% 1.47/1.00      | sK0(sK1,sK2) = sK2 ),
% 1.47/1.00      inference(instantiation,[status(thm)],[c_0]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1429,plain,
% 1.47/1.00      ( sK0(sK1,sK2) = sK2
% 1.47/1.00      | r1_tarski(sK0(sK1,sK2),sK2) != iProver_top
% 1.47/1.00      | r1_tarski(sK2,sK0(sK1,sK2)) != iProver_top ),
% 1.47/1.00      inference(predicate_to_equality,[status(thm)],[c_1425]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1958,plain,
% 1.47/1.00      ( r1_tarski(sK0(sK1,sK2),sK2) != iProver_top ),
% 1.47/1.00      inference(global_propositional_subsumption,
% 1.47/1.00                [status(thm)],
% 1.47/1.00                [c_1714,c_25,c_318,c_1292,c_1295,c_1303,c_1353,c_1355,
% 1.47/1.00                 c_1364,c_1429]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_2373,plain,
% 1.47/1.00      ( v3_tex_2(sK2,sK1) = iProver_top
% 1.47/1.00      | m1_subset_1(sK2,k1_zfmisc_1(sK2)) != iProver_top ),
% 1.47/1.00      inference(superposition,[status(thm)],[c_2365,c_1958]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(c_1808,plain,
% 1.47/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(sK2)) = iProver_top ),
% 1.47/1.00      inference(demodulation,[status(thm)],[c_1799,c_1200]) ).
% 1.47/1.00  
% 1.47/1.00  cnf(contradiction,plain,
% 1.47/1.00      ( $false ),
% 1.47/1.00      inference(minisat,[status(thm)],[c_2373,c_1808,c_1529]) ).
% 1.47/1.00  
% 1.47/1.00  
% 1.47/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.47/1.00  
% 1.47/1.00  ------                               Statistics
% 1.47/1.00  
% 1.47/1.00  ------ General
% 1.47/1.00  
% 1.47/1.00  abstr_ref_over_cycles:                  0
% 1.47/1.00  abstr_ref_under_cycles:                 0
% 1.47/1.00  gc_basic_clause_elim:                   0
% 1.47/1.00  forced_gc_time:                         0
% 1.47/1.00  parsing_time:                           0.018
% 1.47/1.00  unif_index_cands_time:                  0.
% 1.47/1.00  unif_index_add_time:                    0.
% 1.47/1.00  orderings_time:                         0.
% 1.47/1.00  out_proof_time:                         0.012
% 1.47/1.00  total_time:                             0.125
% 1.47/1.00  num_of_symbols:                         45
% 1.47/1.00  num_of_terms:                           1137
% 1.47/1.00  
% 1.47/1.00  ------ Preprocessing
% 1.47/1.00  
% 1.47/1.00  num_of_splits:                          0
% 1.47/1.00  num_of_split_atoms:                     0
% 1.47/1.00  num_of_reused_defs:                     0
% 1.47/1.00  num_eq_ax_congr_red:                    6
% 1.47/1.00  num_of_sem_filtered_clauses:            1
% 1.47/1.00  num_of_subtypes:                        0
% 1.47/1.00  monotx_restored_types:                  0
% 1.47/1.00  sat_num_of_epr_types:                   0
% 1.47/1.00  sat_num_of_non_cyclic_types:            0
% 1.47/1.00  sat_guarded_non_collapsed_types:        0
% 1.47/1.00  num_pure_diseq_elim:                    0
% 1.47/1.00  simp_replaced_by:                       0
% 1.47/1.00  res_preprocessed:                       70
% 1.47/1.00  prep_upred:                             0
% 1.47/1.00  prep_unflattend:                        20
% 1.47/1.00  smt_new_axioms:                         0
% 1.47/1.00  pred_elim_cands:                        3
% 1.47/1.00  pred_elim:                              6
% 1.47/1.00  pred_elim_cl:                           9
% 1.47/1.00  pred_elim_cycles:                       8
% 1.47/1.00  merged_defs:                            10
% 1.47/1.00  merged_defs_ncl:                        0
% 1.47/1.00  bin_hyper_res:                          11
% 1.47/1.00  prep_cycles:                            4
% 1.47/1.00  pred_elim_time:                         0.012
% 1.47/1.00  splitting_time:                         0.
% 1.47/1.00  sem_filter_time:                        0.
% 1.47/1.00  monotx_time:                            0.001
% 1.47/1.00  subtype_inf_time:                       0.
% 1.47/1.00  
% 1.47/1.00  ------ Problem properties
% 1.47/1.00  
% 1.47/1.00  clauses:                                11
% 1.47/1.00  conjectures:                            1
% 1.47/1.00  epr:                                    2
% 1.47/1.00  horn:                                   8
% 1.47/1.00  ground:                                 3
% 1.47/1.00  unary:                                  2
% 1.47/1.00  binary:                                 2
% 1.47/1.00  lits:                                   29
% 1.47/1.00  lits_eq:                                5
% 1.47/1.00  fd_pure:                                0
% 1.47/1.00  fd_pseudo:                              0
% 1.47/1.00  fd_cond:                                0
% 1.47/1.00  fd_pseudo_cond:                         2
% 1.47/1.00  ac_symbols:                             0
% 1.47/1.00  
% 1.47/1.00  ------ Propositional Solver
% 1.47/1.00  
% 1.47/1.00  prop_solver_calls:                      28
% 1.47/1.00  prop_fast_solver_calls:                 616
% 1.47/1.00  smt_solver_calls:                       0
% 1.47/1.00  smt_fast_solver_calls:                  0
% 1.47/1.00  prop_num_of_clauses:                    646
% 1.47/1.00  prop_preprocess_simplified:             2659
% 1.47/1.00  prop_fo_subsumed:                       23
% 1.47/1.00  prop_solver_time:                       0.
% 1.47/1.00  smt_solver_time:                        0.
% 1.47/1.00  smt_fast_solver_time:                   0.
% 1.47/1.00  prop_fast_solver_time:                  0.
% 1.47/1.00  prop_unsat_core_time:                   0.
% 1.47/1.00  
% 1.47/1.00  ------ QBF
% 1.47/1.00  
% 1.47/1.00  qbf_q_res:                              0
% 1.47/1.00  qbf_num_tautologies:                    0
% 1.47/1.00  qbf_prep_cycles:                        0
% 1.47/1.00  
% 1.47/1.00  ------ BMC1
% 1.47/1.00  
% 1.47/1.00  bmc1_current_bound:                     -1
% 1.47/1.00  bmc1_last_solved_bound:                 -1
% 1.47/1.00  bmc1_unsat_core_size:                   -1
% 1.47/1.00  bmc1_unsat_core_parents_size:           -1
% 1.47/1.00  bmc1_merge_next_fun:                    0
% 1.47/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.47/1.00  
% 1.47/1.00  ------ Instantiation
% 1.47/1.00  
% 1.47/1.00  inst_num_of_clauses:                    171
% 1.47/1.00  inst_num_in_passive:                    64
% 1.47/1.00  inst_num_in_active:                     104
% 1.47/1.00  inst_num_in_unprocessed:                4
% 1.47/1.00  inst_num_of_loops:                      120
% 1.47/1.00  inst_num_of_learning_restarts:          0
% 1.47/1.00  inst_num_moves_active_passive:          13
% 1.47/1.00  inst_lit_activity:                      0
% 1.47/1.00  inst_lit_activity_moves:                0
% 1.47/1.00  inst_num_tautologies:                   0
% 1.47/1.00  inst_num_prop_implied:                  0
% 1.47/1.00  inst_num_existing_simplified:           0
% 1.47/1.00  inst_num_eq_res_simplified:             0
% 1.47/1.00  inst_num_child_elim:                    0
% 1.47/1.00  inst_num_of_dismatching_blockings:      45
% 1.47/1.00  inst_num_of_non_proper_insts:           222
% 1.47/1.00  inst_num_of_duplicates:                 0
% 1.47/1.00  inst_inst_num_from_inst_to_res:         0
% 1.47/1.00  inst_dismatching_checking_time:         0.
% 1.47/1.00  
% 1.47/1.00  ------ Resolution
% 1.47/1.00  
% 1.47/1.00  res_num_of_clauses:                     0
% 1.47/1.00  res_num_in_passive:                     0
% 1.47/1.00  res_num_in_active:                      0
% 1.47/1.00  res_num_of_loops:                       74
% 1.47/1.00  res_forward_subset_subsumed:            22
% 1.47/1.00  res_backward_subset_subsumed:           2
% 1.47/1.00  res_forward_subsumed:                   1
% 1.47/1.00  res_backward_subsumed:                  0
% 1.47/1.00  res_forward_subsumption_resolution:     0
% 1.47/1.00  res_backward_subsumption_resolution:    0
% 1.47/1.00  res_clause_to_clause_subsumption:       220
% 1.47/1.00  res_orphan_elimination:                 0
% 1.47/1.00  res_tautology_del:                      36
% 1.47/1.00  res_num_eq_res_simplified:              0
% 1.47/1.00  res_num_sel_changes:                    0
% 1.47/1.00  res_moves_from_active_to_pass:          0
% 1.47/1.00  
% 1.47/1.00  ------ Superposition
% 1.47/1.00  
% 1.47/1.00  sup_time_total:                         0.
% 1.47/1.00  sup_time_generating:                    0.
% 1.47/1.00  sup_time_sim_full:                      0.
% 1.47/1.00  sup_time_sim_immed:                     0.
% 1.47/1.00  
% 1.47/1.00  sup_num_of_clauses:                     27
% 1.47/1.00  sup_num_in_active:                      16
% 1.47/1.00  sup_num_in_passive:                     11
% 1.47/1.00  sup_num_of_loops:                       22
% 1.47/1.00  sup_fw_superposition:                   13
% 1.47/1.00  sup_bw_superposition:                   12
% 1.47/1.00  sup_immediate_simplified:               3
% 1.47/1.00  sup_given_eliminated:                   0
% 1.47/1.00  comparisons_done:                       0
% 1.47/1.00  comparisons_avoided:                    0
% 1.47/1.00  
% 1.47/1.00  ------ Simplifications
% 1.47/1.00  
% 1.47/1.00  
% 1.47/1.00  sim_fw_subset_subsumed:                 2
% 1.47/1.00  sim_bw_subset_subsumed:                 1
% 1.47/1.00  sim_fw_subsumed:                        1
% 1.47/1.00  sim_bw_subsumed:                        0
% 1.47/1.00  sim_fw_subsumption_res:                 0
% 1.47/1.00  sim_bw_subsumption_res:                 0
% 1.47/1.00  sim_tautology_del:                      1
% 1.47/1.00  sim_eq_tautology_del:                   3
% 1.47/1.00  sim_eq_res_simp:                        0
% 1.47/1.00  sim_fw_demodulated:                     0
% 1.47/1.00  sim_bw_demodulated:                     7
% 1.47/1.00  sim_light_normalised:                   3
% 1.47/1.00  sim_joinable_taut:                      0
% 1.47/1.00  sim_joinable_simp:                      0
% 1.47/1.00  sim_ac_normalised:                      0
% 1.47/1.00  sim_smt_subsumption:                    0
% 1.47/1.00  
%------------------------------------------------------------------------------
