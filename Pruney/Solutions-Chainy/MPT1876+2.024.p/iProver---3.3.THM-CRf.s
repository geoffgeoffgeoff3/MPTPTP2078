%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:26:51 EST 2020

% Result     : Theorem 2.29s
% Output     : CNFRefutation 2.29s
% Verified   : 
% Statistics : Number of formulae       :  220 (1078 expanded)
%              Number of clauses        :  140 ( 305 expanded)
%              Number of leaves         :   24 ( 241 expanded)
%              Depth                    :   24
%              Number of atoms          :  837 (7273 expanded)
%              Number of equality atoms :  157 ( 314 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f16,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & ~ v1_xboole_0(X1) )
         => ( v2_tex_2(X1,X0)
          <=> v1_zfmisc_1(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_tdlat_3(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & ~ v1_xboole_0(X1) )
           => ( v2_tex_2(X1,X0)
            <=> v1_zfmisc_1(X1) ) ) ) ),
    inference(negated_conjecture,[],[f16])).

fof(f38,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v2_tex_2(X1,X0)
          <~> v1_zfmisc_1(X1) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f39,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v2_tex_2(X1,X0)
          <~> v1_zfmisc_1(X1) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f38])).

fof(f48,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ v1_zfmisc_1(X1)
            | ~ v2_tex_2(X1,X0) )
          & ( v1_zfmisc_1(X1)
            | v2_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f39])).

fof(f49,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ v1_zfmisc_1(X1)
            | ~ v2_tex_2(X1,X0) )
          & ( v1_zfmisc_1(X1)
            | v2_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f48])).

fof(f51,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( ~ v1_zfmisc_1(X1)
            | ~ v2_tex_2(X1,X0) )
          & ( v1_zfmisc_1(X1)
            | v2_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & ~ v1_xboole_0(X1) )
     => ( ( ~ v1_zfmisc_1(sK3)
          | ~ v2_tex_2(sK3,X0) )
        & ( v1_zfmisc_1(sK3)
          | v2_tex_2(sK3,X0) )
        & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0)))
        & ~ v1_xboole_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f50,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( ~ v1_zfmisc_1(X1)
              | ~ v2_tex_2(X1,X0) )
            & ( v1_zfmisc_1(X1)
              | v2_tex_2(X1,X0) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & ~ v1_xboole_0(X1) )
        & l1_pre_topc(X0)
        & v2_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ( ~ v1_zfmisc_1(X1)
            | ~ v2_tex_2(X1,sK2) )
          & ( v1_zfmisc_1(X1)
            | v2_tex_2(X1,sK2) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(sK2)
      & v2_tdlat_3(sK2)
      & v2_pre_topc(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f52,plain,
    ( ( ~ v1_zfmisc_1(sK3)
      | ~ v2_tex_2(sK3,sK2) )
    & ( v1_zfmisc_1(sK3)
      | v2_tex_2(sK3,sK2) )
    & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    & ~ v1_xboole_0(sK3)
    & l1_pre_topc(sK2)
    & v2_tdlat_3(sK2)
    & v2_pre_topc(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f49,f51,f50])).

fof(f81,plain,
    ( v1_zfmisc_1(sK3)
    | v2_tex_2(sK3,sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f80,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(cnf_transformation,[],[f52])).

fof(f14,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & ~ v1_xboole_0(X1) )
         => ~ ( ! [X2] :
                  ( ( m1_pre_topc(X2,X0)
                    & v1_tdlat_3(X2)
                    & v1_pre_topc(X2)
                    & ~ v2_struct_0(X2) )
                 => u1_struct_0(X2) != X1 )
              & v2_tex_2(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & ~ v1_xboole_0(X1) )
         => ~ ( ! [X2] :
                  ( ( m1_pre_topc(X2,X0)
                    & v1_tdlat_3(X2)
                    & ~ v2_struct_0(X2) )
                 => u1_struct_0(X2) != X1 )
              & v2_tex_2(X1,X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f14])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ? [X2] :
              ( u1_struct_0(X2) = X1
              & m1_pre_topc(X2,X0)
              & v1_tdlat_3(X2)
              & ~ v2_struct_0(X2) )
          | ~ v2_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ? [X2] :
              ( u1_struct_0(X2) = X1
              & m1_pre_topc(X2,X0)
              & v1_tdlat_3(X2)
              & ~ v2_struct_0(X2) )
          | ~ v2_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f34])).

fof(f46,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( u1_struct_0(X2) = X1
          & m1_pre_topc(X2,X0)
          & v1_tdlat_3(X2)
          & ~ v2_struct_0(X2) )
     => ( u1_struct_0(sK1(X0,X1)) = X1
        & m1_pre_topc(sK1(X0,X1),X0)
        & v1_tdlat_3(sK1(X0,X1))
        & ~ v2_struct_0(sK1(X0,X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( u1_struct_0(sK1(X0,X1)) = X1
            & m1_pre_topc(sK1(X0,X1),X0)
            & v1_tdlat_3(sK1(X0,X1))
            & ~ v2_struct_0(sK1(X0,X1)) )
          | ~ v2_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f35,f46])).

fof(f73,plain,(
    ! [X0,X1] :
      ( u1_struct_0(sK1(X0,X1)) = X1
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f76,plain,(
    v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f75,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f78,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f79,plain,(
    ~ v1_xboole_0(sK3) ),
    inference(cnf_transformation,[],[f52])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f41,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f40])).

fof(f42,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f41,f42])).

fof(f54,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f57,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f13,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ( v1_zfmisc_1(X1)
            & ~ v1_xboole_0(X1) )
         => ( r1_tarski(X0,X1)
           => X0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( X0 = X1
          | ~ r1_tarski(X0,X1)
          | ~ v1_zfmisc_1(X1)
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( X0 = X1
          | ~ r1_tarski(X0,X1)
          | ~ v1_zfmisc_1(X1)
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f32])).

fof(f69,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X0,X1)
      | ~ v1_zfmisc_1(X1)
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f60,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f58,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f2,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_tarski(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0] : ~ v1_xboole_0(k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f2])).

fof(f82,plain,
    ( ~ v1_zfmisc_1(sK3)
    | ~ v2_tex_2(sK3,sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f71,plain,(
    ! [X0,X1] :
      ( v1_tdlat_3(sK1(X0,X1))
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f70,plain,(
    ! [X0,X1] :
      ( ~ v2_struct_0(sK1(X0,X1))
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f72,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(sK1(X0,X1),X0)
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ( ( ~ v7_struct_0(X1)
              & ~ v2_struct_0(X1) )
           => ( ~ v1_tdlat_3(X1)
              & ~ v2_struct_0(X1) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ~ v1_tdlat_3(X1)
            & ~ v2_struct_0(X1) )
          | v7_struct_0(X1)
          | v2_struct_0(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ~ v1_tdlat_3(X1)
            & ~ v2_struct_0(X1) )
          | v7_struct_0(X1)
          | v2_struct_0(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f30])).

fof(f68,plain,(
    ! [X0,X1] :
      ( ~ v1_tdlat_3(X1)
      | v7_struct_0(X1)
      | v2_struct_0(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f62,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & v7_struct_0(X0) )
     => v1_zfmisc_1(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( v1_zfmisc_1(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | ~ v7_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f25,plain,(
    ! [X0] :
      ( v1_zfmisc_1(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | ~ v7_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f64,plain,(
    ! [X0] :
      ( v1_zfmisc_1(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | ~ v7_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f63,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ( v2_tdlat_3(X0)
       => v2_pre_topc(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( v2_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f29,plain,(
    ! [X0] :
      ( v2_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f28])).

fof(f66,plain,(
    ! [X0] :
      ( v2_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f77,plain,(
    v2_tdlat_3(sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f56,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | ~ r1_tarski(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f20])).

fof(f61,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f59,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f27,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f65,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f15,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f36])).

fof(f74,plain,(
    ! [X0,X1] :
      ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_23,negated_conjecture,
    ( v2_tex_2(sK3,sK2)
    | v1_zfmisc_1(sK3) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_2304,plain,
    ( v2_tex_2(sK3,sK2) = iProver_top
    | v1_zfmisc_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_24,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_2303,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_17,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | u1_struct_0(sK1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f73])).

cnf(c_28,negated_conjecture,
    ( v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1117,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | u1_struct_0(sK1(X1,X0)) = X0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_28])).

cnf(c_1118,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2)
    | v1_xboole_0(X0)
    | u1_struct_0(sK1(sK2,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_1117])).

cnf(c_29,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_26,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1122,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v1_xboole_0(X0)
    | u1_struct_0(sK1(sK2,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1118,c_29,c_26])).

cnf(c_2295,plain,
    ( u1_struct_0(sK1(sK2,X0)) = X0
    | v2_tex_2(X0,sK2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1122])).

cnf(c_2539,plain,
    ( u1_struct_0(sK1(sK2,sK3)) = sK3
    | v2_tex_2(sK3,sK2) != iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2303,c_2295])).

cnf(c_25,negated_conjecture,
    ( ~ v1_xboole_0(sK3) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_34,plain,
    ( v1_xboole_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_2571,plain,
    ( v2_tex_2(sK3,sK2) != iProver_top
    | u1_struct_0(sK1(sK2,sK3)) = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2539,c_34])).

cnf(c_2572,plain,
    ( u1_struct_0(sK1(sK2,sK3)) = sK3
    | v2_tex_2(sK3,sK2) != iProver_top ),
    inference(renaming,[status(thm)],[c_2571])).

cnf(c_2577,plain,
    ( u1_struct_0(sK1(sK2,sK3)) = sK3
    | v1_zfmisc_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2304,c_2572])).

cnf(c_0,plain,
    ( r2_hidden(sK0(X0),X0)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_3,plain,
    ( r1_tarski(k1_tarski(X0),X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_229,plain,
    ( ~ r2_hidden(X0,X1)
    | r1_tarski(k1_tarski(X0),X1) ),
    inference(prop_impl,[status(thm)],[c_3])).

cnf(c_230,plain,
    ( r1_tarski(k1_tarski(X0),X1)
    | ~ r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_229])).

cnf(c_554,plain,
    ( r1_tarski(k1_tarski(X0),X1)
    | v1_xboole_0(X2)
    | X1 != X2
    | sK0(X2) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_230])).

cnf(c_555,plain,
    ( r1_tarski(k1_tarski(sK0(X0)),X0)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_554])).

cnf(c_2298,plain,
    ( r1_tarski(k1_tarski(sK0(X0)),X0) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_555])).

cnf(c_16,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_zfmisc_1(X1)
    | v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_6,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_170,plain,
    ( v1_xboole_0(X0)
    | ~ v1_zfmisc_1(X1)
    | ~ r1_tarski(X0,X1)
    | X1 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_16,c_6,c_5])).

cnf(c_171,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_zfmisc_1(X1)
    | v1_xboole_0(X0)
    | X1 = X0 ),
    inference(renaming,[status(thm)],[c_170])).

cnf(c_2301,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | v1_zfmisc_1(X0) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_171])).

cnf(c_3604,plain,
    ( k1_tarski(sK0(X0)) = X0
    | v1_zfmisc_1(X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top
    | v1_xboole_0(k1_tarski(sK0(X0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2298,c_2301])).

cnf(c_2,plain,
    ( ~ v1_xboole_0(k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_2309,plain,
    ( v1_xboole_0(k1_tarski(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_4070,plain,
    ( k1_tarski(sK0(X0)) = X0
    | v1_zfmisc_1(X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3604,c_2309])).

cnf(c_4074,plain,
    ( u1_struct_0(sK1(sK2,sK3)) = sK3
    | k1_tarski(sK0(sK3)) = sK3
    | v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2577,c_4070])).

cnf(c_36,plain,
    ( v2_tex_2(sK3,sK2) = iProver_top
    | v1_zfmisc_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_22,negated_conjecture,
    ( ~ v2_tex_2(sK3,sK2)
    | ~ v1_zfmisc_1(sK3) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_37,plain,
    ( v2_tex_2(sK3,sK2) != iProver_top
    | v1_zfmisc_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_2452,plain,
    ( r1_tarski(k1_tarski(sK0(sK3)),sK3)
    | v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_555])).

cnf(c_2453,plain,
    ( r1_tarski(k1_tarski(sK0(sK3)),sK3) = iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2452])).

cnf(c_1829,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2592,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_1829])).

cnf(c_2503,plain,
    ( ~ r1_tarski(k1_tarski(X0),X1)
    | ~ v1_zfmisc_1(X1)
    | v1_xboole_0(k1_tarski(X0))
    | X1 = k1_tarski(X0) ),
    inference(instantiation,[status(thm)],[c_171])).

cnf(c_2805,plain,
    ( ~ r1_tarski(k1_tarski(X0),sK3)
    | ~ v1_zfmisc_1(sK3)
    | v1_xboole_0(k1_tarski(X0))
    | sK3 = k1_tarski(X0) ),
    inference(instantiation,[status(thm)],[c_2503])).

cnf(c_2825,plain,
    ( ~ r1_tarski(k1_tarski(sK0(sK3)),sK3)
    | ~ v1_zfmisc_1(sK3)
    | v1_xboole_0(k1_tarski(sK0(sK3)))
    | sK3 = k1_tarski(sK0(sK3)) ),
    inference(instantiation,[status(thm)],[c_2805])).

cnf(c_2827,plain,
    ( sK3 = k1_tarski(sK0(sK3))
    | r1_tarski(k1_tarski(sK0(sK3)),sK3) != iProver_top
    | v1_zfmisc_1(sK3) != iProver_top
    | v1_xboole_0(k1_tarski(sK0(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2825])).

cnf(c_2846,plain,
    ( ~ v1_xboole_0(k1_tarski(sK0(sK3))) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_2847,plain,
    ( v1_xboole_0(k1_tarski(sK0(sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2846])).

cnf(c_1832,plain,
    ( X0 != X1
    | k1_tarski(X0) = k1_tarski(X1) ),
    theory(equality)).

cnf(c_2704,plain,
    ( X0 != sK0(sK3)
    | k1_tarski(X0) = k1_tarski(sK0(sK3)) ),
    inference(instantiation,[status(thm)],[c_1832])).

cnf(c_2906,plain,
    ( k1_tarski(sK0(sK3)) = k1_tarski(sK0(sK3))
    | sK0(sK3) != sK0(sK3) ),
    inference(instantiation,[status(thm)],[c_2704])).

cnf(c_2907,plain,
    ( sK0(sK3) = sK0(sK3) ),
    inference(instantiation,[status(thm)],[c_1829])).

cnf(c_1830,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_2559,plain,
    ( X0 != X1
    | sK3 != X1
    | sK3 = X0 ),
    inference(instantiation,[status(thm)],[c_1830])).

cnf(c_2729,plain,
    ( X0 != sK3
    | sK3 = X0
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_2559])).

cnf(c_2931,plain,
    ( u1_struct_0(sK1(sK2,sK3)) != sK3
    | sK3 = u1_struct_0(sK1(sK2,sK3))
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_2729])).

cnf(c_19,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | v1_tdlat_3(sK1(X1,X0))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1093,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | v1_tdlat_3(sK1(X1,X0))
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_28])).

cnf(c_1094,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v2_struct_0(sK2)
    | v1_tdlat_3(sK1(sK2,X0))
    | ~ l1_pre_topc(sK2)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_1093])).

cnf(c_1098,plain,
    ( v1_tdlat_3(sK1(sK2,X0))
    | ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v1_xboole_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1094,c_29,c_26])).

cnf(c_1099,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v1_tdlat_3(sK1(sK2,X0))
    | v1_xboole_0(X0) ),
    inference(renaming,[status(thm)],[c_1098])).

cnf(c_20,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_struct_0(sK1(X1,X0))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1069,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_struct_0(sK1(X1,X0))
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_28])).

cnf(c_1070,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v2_struct_0(sK1(sK2,X0))
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_1069])).

cnf(c_1074,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v2_struct_0(sK1(sK2,X0))
    | v1_xboole_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1070,c_29,c_26])).

cnf(c_18,plain,
    ( ~ v2_tex_2(X0,X1)
    | m1_pre_topc(sK1(X1,X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_14,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v1_tdlat_3(X0)
    | ~ v2_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | v7_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_9,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_11,plain,
    ( ~ v7_struct_0(X0)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_406,plain,
    ( ~ v7_struct_0(X0)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_9,c_11])).

cnf(c_424,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X0)
    | ~ v2_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1) ),
    inference(resolution,[status(thm)],[c_14,c_406])).

cnf(c_10,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_428,plain,
    ( v1_zfmisc_1(u1_struct_0(X0))
    | ~ v2_pre_topc(X1)
    | ~ v2_tdlat_3(X1)
    | ~ v1_tdlat_3(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_424,c_10])).

cnf(c_429,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X0)
    | ~ v2_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_428])).

cnf(c_13,plain,
    ( ~ v2_tdlat_3(X0)
    | v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_448,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X0)
    | ~ v2_tdlat_3(X1)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_429,c_13])).

cnf(c_27,negated_conjecture,
    ( v2_tdlat_3(sK2) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_469,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X0)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_448,c_27])).

cnf(c_470,plain,
    ( ~ m1_pre_topc(X0,sK2)
    | v2_struct_0(X0)
    | v2_struct_0(sK2)
    | ~ v1_tdlat_3(X0)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_469])).

cnf(c_474,plain,
    ( v1_zfmisc_1(u1_struct_0(X0))
    | ~ v1_tdlat_3(X0)
    | ~ m1_pre_topc(X0,sK2)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_470,c_29,c_26])).

cnf(c_475,plain,
    ( ~ m1_pre_topc(X0,sK2)
    | v2_struct_0(X0)
    | ~ v1_tdlat_3(X0)
    | v1_zfmisc_1(u1_struct_0(X0)) ),
    inference(renaming,[status(thm)],[c_474])).

cnf(c_717,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X2)
    | ~ v2_pre_topc(X1)
    | v1_zfmisc_1(u1_struct_0(X2))
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | sK1(X1,X0) != X2
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_475])).

cnf(c_718,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v2_struct_0(sK1(sK2,X0))
    | v2_struct_0(sK2)
    | ~ v1_tdlat_3(sK1(sK2,X0))
    | ~ v2_pre_topc(sK2)
    | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
    | ~ l1_pre_topc(sK2)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_717])).

cnf(c_722,plain,
    ( v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
    | v2_struct_0(sK1(sK2,X0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v2_tex_2(X0,sK2)
    | ~ v1_tdlat_3(sK1(sK2,X0))
    | v1_xboole_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_718,c_29,c_28,c_26])).

cnf(c_723,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v2_struct_0(sK1(sK2,X0))
    | ~ v1_tdlat_3(sK1(sK2,X0))
    | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
    | v1_xboole_0(X0) ),
    inference(renaming,[status(thm)],[c_722])).

cnf(c_1152,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v1_tdlat_3(sK1(sK2,X0))
    | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
    | v1_xboole_0(X0) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_1074,c_723])).

cnf(c_1161,plain,
    ( ~ v2_tex_2(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
    | v1_xboole_0(X0) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_1099,c_1152])).

cnf(c_2294,plain,
    ( v2_tex_2(X0,sK2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0))) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1161])).

cnf(c_3007,plain,
    ( v2_tex_2(sK3,sK2) != iProver_top
    | v1_zfmisc_1(u1_struct_0(sK1(sK2,sK3))) = iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2303,c_2294])).

cnf(c_1837,plain,
    ( ~ v1_zfmisc_1(X0)
    | v1_zfmisc_1(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_2970,plain,
    ( v1_zfmisc_1(X0)
    | ~ v1_zfmisc_1(u1_struct_0(sK1(sK2,sK3)))
    | X0 != u1_struct_0(sK1(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_1837])).

cnf(c_3520,plain,
    ( ~ v1_zfmisc_1(u1_struct_0(sK1(sK2,sK3)))
    | v1_zfmisc_1(sK3)
    | sK3 != u1_struct_0(sK1(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_2970])).

cnf(c_3521,plain,
    ( sK3 != u1_struct_0(sK1(sK2,sK3))
    | v1_zfmisc_1(u1_struct_0(sK1(sK2,sK3))) != iProver_top
    | v1_zfmisc_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3520])).

cnf(c_2713,plain,
    ( X0 != X1
    | k1_tarski(X2) != X1
    | k1_tarski(X2) = X0 ),
    inference(instantiation,[status(thm)],[c_1830])).

cnf(c_3119,plain,
    ( X0 != k1_tarski(X1)
    | k1_tarski(X1) = X0
    | k1_tarski(X1) != k1_tarski(X1) ),
    inference(instantiation,[status(thm)],[c_2713])).

cnf(c_3944,plain,
    ( k1_tarski(sK0(sK3)) != k1_tarski(sK0(sK3))
    | k1_tarski(sK0(sK3)) = sK3
    | sK3 != k1_tarski(sK0(sK3)) ),
    inference(instantiation,[status(thm)],[c_3119])).

cnf(c_4176,plain,
    ( k1_tarski(sK0(sK3)) = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4074,c_34,c_36,c_37,c_2453,c_2539,c_2592,c_2827,c_2847,c_2906,c_2907,c_2931,c_3007,c_3521,c_3944])).

cnf(c_4,plain,
    ( ~ r1_tarski(k1_tarski(X0),X1)
    | r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_227,plain,
    ( r2_hidden(X0,X1)
    | ~ r1_tarski(k1_tarski(X0),X1) ),
    inference(prop_impl,[status(thm)],[c_4])).

cnf(c_228,plain,
    ( ~ r1_tarski(k1_tarski(X0),X1)
    | r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_227])).

cnf(c_8,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_583,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_tarski(k1_tarski(X3),X4)
    | X0 != X3
    | X2 != X4 ),
    inference(resolution_lifted,[status(thm)],[c_228,c_8])).

cnf(c_584,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_tarski(k1_tarski(X0),X2) ),
    inference(unflattening,[status(thm)],[c_583])).

cnf(c_2297,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(k1_tarski(X0),X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_584])).

cnf(c_3135,plain,
    ( m1_subset_1(X0,u1_struct_0(sK2)) = iProver_top
    | r1_tarski(k1_tarski(X0),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2303,c_2297])).

cnf(c_3450,plain,
    ( m1_subset_1(sK0(sK3),u1_struct_0(sK2)) = iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2298,c_3135])).

cnf(c_35,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_2459,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    | r1_tarski(sK3,u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_2460,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r1_tarski(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2459])).

cnf(c_568,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | v1_xboole_0(X3)
    | X2 != X3
    | sK0(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_8])).

cnf(c_569,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(sK0(X0),X1)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_568])).

cnf(c_1404,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_6])).

cnf(c_1405,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_1404])).

cnf(c_1444,plain,
    ( m1_subset_1(sK0(X0),X1)
    | ~ r1_tarski(X0,X1)
    | v1_xboole_0(X0) ),
    inference(bin_hyper_res,[status(thm)],[c_569,c_1405])).

cnf(c_2488,plain,
    ( m1_subset_1(sK0(sK3),X0)
    | ~ r1_tarski(sK3,X0)
    | v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_1444])).

cnf(c_2564,plain,
    ( m1_subset_1(sK0(sK3),u1_struct_0(sK2))
    | ~ r1_tarski(sK3,u1_struct_0(sK2))
    | v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_2488])).

cnf(c_2565,plain,
    ( m1_subset_1(sK0(sK3),u1_struct_0(sK2)) = iProver_top
    | r1_tarski(sK3,u1_struct_0(sK2)) != iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2564])).

cnf(c_3488,plain,
    ( m1_subset_1(sK0(sK3),u1_struct_0(sK2)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3450,c_34,c_35,c_2460,c_2565])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k6_domain_1(X1,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_2306,plain,
    ( k6_domain_1(X0,X1) = k1_tarski(X1)
    | m1_subset_1(X1,X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3493,plain,
    ( k6_domain_1(u1_struct_0(sK2),sK0(sK3)) = k1_tarski(sK0(sK3))
    | v1_xboole_0(u1_struct_0(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3488,c_2306])).

cnf(c_233,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_6])).

cnf(c_234,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_233])).

cnf(c_296,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(bin_hyper_res,[status(thm)],[c_5,c_234])).

cnf(c_2463,plain,
    ( ~ r1_tarski(sK3,X0)
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_296])).

cnf(c_2556,plain,
    ( ~ r1_tarski(sK3,u1_struct_0(sK2))
    | ~ v1_xboole_0(u1_struct_0(sK2))
    | v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_2463])).

cnf(c_2658,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | v1_xboole_0(u1_struct_0(sK2))
    | k6_domain_1(u1_struct_0(sK2),X0) = k1_tarski(X0) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_3089,plain,
    ( ~ m1_subset_1(sK0(sK3),u1_struct_0(sK2))
    | v1_xboole_0(u1_struct_0(sK2))
    | k6_domain_1(u1_struct_0(sK2),sK0(sK3)) = k1_tarski(sK0(sK3)) ),
    inference(instantiation,[status(thm)],[c_2658])).

cnf(c_3528,plain,
    ( k6_domain_1(u1_struct_0(sK2),sK0(sK3)) = k1_tarski(sK0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3493,c_25,c_24,c_2459,c_2556,c_2564,c_3089])).

cnf(c_21,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1027,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_28])).

cnf(c_1028,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(sK2),X0),sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_1027])).

cnf(c_1032,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(sK2),X0),sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1028,c_29,c_26])).

cnf(c_2296,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(sK2),X0),sK2) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1032])).

cnf(c_3531,plain,
    ( v2_tex_2(k1_tarski(sK0(sK3)),sK2) = iProver_top
    | m1_subset_1(sK0(sK3),u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3528,c_2296])).

cnf(c_3534,plain,
    ( v2_tex_2(k1_tarski(sK0(sK3)),sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3531,c_34,c_35,c_2460,c_2565])).

cnf(c_4179,plain,
    ( v2_tex_2(sK3,sK2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4176,c_3534])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4179,c_3521,c_3007,c_2931,c_2592,c_2539,c_37,c_34])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n013.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:13:39 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.29/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.29/0.99  
% 2.29/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.29/0.99  
% 2.29/0.99  ------  iProver source info
% 2.29/0.99  
% 2.29/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.29/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.29/0.99  git: non_committed_changes: false
% 2.29/0.99  git: last_make_outside_of_git: false
% 2.29/0.99  
% 2.29/0.99  ------ 
% 2.29/0.99  
% 2.29/0.99  ------ Input Options
% 2.29/0.99  
% 2.29/0.99  --out_options                           all
% 2.29/0.99  --tptp_safe_out                         true
% 2.29/0.99  --problem_path                          ""
% 2.29/0.99  --include_path                          ""
% 2.29/0.99  --clausifier                            res/vclausify_rel
% 2.29/0.99  --clausifier_options                    --mode clausify
% 2.29/0.99  --stdin                                 false
% 2.29/0.99  --stats_out                             all
% 2.29/0.99  
% 2.29/0.99  ------ General Options
% 2.29/0.99  
% 2.29/0.99  --fof                                   false
% 2.29/0.99  --time_out_real                         305.
% 2.29/0.99  --time_out_virtual                      -1.
% 2.29/0.99  --symbol_type_check                     false
% 2.29/0.99  --clausify_out                          false
% 2.29/0.99  --sig_cnt_out                           false
% 2.29/0.99  --trig_cnt_out                          false
% 2.29/0.99  --trig_cnt_out_tolerance                1.
% 2.29/0.99  --trig_cnt_out_sk_spl                   false
% 2.29/0.99  --abstr_cl_out                          false
% 2.29/0.99  
% 2.29/0.99  ------ Global Options
% 2.29/0.99  
% 2.29/0.99  --schedule                              default
% 2.29/0.99  --add_important_lit                     false
% 2.29/0.99  --prop_solver_per_cl                    1000
% 2.29/0.99  --min_unsat_core                        false
% 2.29/0.99  --soft_assumptions                      false
% 2.29/0.99  --soft_lemma_size                       3
% 2.29/0.99  --prop_impl_unit_size                   0
% 2.29/0.99  --prop_impl_unit                        []
% 2.29/0.99  --share_sel_clauses                     true
% 2.29/0.99  --reset_solvers                         false
% 2.29/0.99  --bc_imp_inh                            [conj_cone]
% 2.29/0.99  --conj_cone_tolerance                   3.
% 2.29/0.99  --extra_neg_conj                        none
% 2.29/0.99  --large_theory_mode                     true
% 2.29/0.99  --prolific_symb_bound                   200
% 2.29/0.99  --lt_threshold                          2000
% 2.29/0.99  --clause_weak_htbl                      true
% 2.29/0.99  --gc_record_bc_elim                     false
% 2.29/0.99  
% 2.29/0.99  ------ Preprocessing Options
% 2.29/0.99  
% 2.29/0.99  --preprocessing_flag                    true
% 2.29/0.99  --time_out_prep_mult                    0.1
% 2.29/0.99  --splitting_mode                        input
% 2.29/0.99  --splitting_grd                         true
% 2.29/0.99  --splitting_cvd                         false
% 2.29/0.99  --splitting_cvd_svl                     false
% 2.29/0.99  --splitting_nvd                         32
% 2.29/0.99  --sub_typing                            true
% 2.29/0.99  --prep_gs_sim                           true
% 2.29/0.99  --prep_unflatten                        true
% 2.29/0.99  --prep_res_sim                          true
% 2.29/0.99  --prep_upred                            true
% 2.29/0.99  --prep_sem_filter                       exhaustive
% 2.29/0.99  --prep_sem_filter_out                   false
% 2.29/0.99  --pred_elim                             true
% 2.29/0.99  --res_sim_input                         true
% 2.29/0.99  --eq_ax_congr_red                       true
% 2.29/0.99  --pure_diseq_elim                       true
% 2.29/0.99  --brand_transform                       false
% 2.29/0.99  --non_eq_to_eq                          false
% 2.29/0.99  --prep_def_merge                        true
% 2.29/0.99  --prep_def_merge_prop_impl              false
% 2.29/0.99  --prep_def_merge_mbd                    true
% 2.29/0.99  --prep_def_merge_tr_red                 false
% 2.29/0.99  --prep_def_merge_tr_cl                  false
% 2.29/0.99  --smt_preprocessing                     true
% 2.29/0.99  --smt_ac_axioms                         fast
% 2.29/0.99  --preprocessed_out                      false
% 2.29/0.99  --preprocessed_stats                    false
% 2.29/0.99  
% 2.29/0.99  ------ Abstraction refinement Options
% 2.29/0.99  
% 2.29/0.99  --abstr_ref                             []
% 2.29/0.99  --abstr_ref_prep                        false
% 2.29/0.99  --abstr_ref_until_sat                   false
% 2.29/0.99  --abstr_ref_sig_restrict                funpre
% 2.29/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.29/0.99  --abstr_ref_under                       []
% 2.29/0.99  
% 2.29/0.99  ------ SAT Options
% 2.29/0.99  
% 2.29/0.99  --sat_mode                              false
% 2.29/0.99  --sat_fm_restart_options                ""
% 2.29/0.99  --sat_gr_def                            false
% 2.29/0.99  --sat_epr_types                         true
% 2.29/0.99  --sat_non_cyclic_types                  false
% 2.29/0.99  --sat_finite_models                     false
% 2.29/0.99  --sat_fm_lemmas                         false
% 2.29/0.99  --sat_fm_prep                           false
% 2.29/0.99  --sat_fm_uc_incr                        true
% 2.29/0.99  --sat_out_model                         small
% 2.29/0.99  --sat_out_clauses                       false
% 2.29/0.99  
% 2.29/0.99  ------ QBF Options
% 2.29/0.99  
% 2.29/0.99  --qbf_mode                              false
% 2.29/0.99  --qbf_elim_univ                         false
% 2.29/0.99  --qbf_dom_inst                          none
% 2.29/0.99  --qbf_dom_pre_inst                      false
% 2.29/0.99  --qbf_sk_in                             false
% 2.29/0.99  --qbf_pred_elim                         true
% 2.29/0.99  --qbf_split                             512
% 2.29/0.99  
% 2.29/0.99  ------ BMC1 Options
% 2.29/0.99  
% 2.29/0.99  --bmc1_incremental                      false
% 2.29/0.99  --bmc1_axioms                           reachable_all
% 2.29/0.99  --bmc1_min_bound                        0
% 2.29/0.99  --bmc1_max_bound                        -1
% 2.29/0.99  --bmc1_max_bound_default                -1
% 2.29/0.99  --bmc1_symbol_reachability              true
% 2.29/0.99  --bmc1_property_lemmas                  false
% 2.29/0.99  --bmc1_k_induction                      false
% 2.29/0.99  --bmc1_non_equiv_states                 false
% 2.29/0.99  --bmc1_deadlock                         false
% 2.29/0.99  --bmc1_ucm                              false
% 2.29/0.99  --bmc1_add_unsat_core                   none
% 2.29/0.99  --bmc1_unsat_core_children              false
% 2.29/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.29/0.99  --bmc1_out_stat                         full
% 2.29/0.99  --bmc1_ground_init                      false
% 2.29/0.99  --bmc1_pre_inst_next_state              false
% 2.29/0.99  --bmc1_pre_inst_state                   false
% 2.29/0.99  --bmc1_pre_inst_reach_state             false
% 2.29/0.99  --bmc1_out_unsat_core                   false
% 2.29/0.99  --bmc1_aig_witness_out                  false
% 2.29/0.99  --bmc1_verbose                          false
% 2.29/0.99  --bmc1_dump_clauses_tptp                false
% 2.29/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.29/0.99  --bmc1_dump_file                        -
% 2.29/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.29/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.29/0.99  --bmc1_ucm_extend_mode                  1
% 2.29/0.99  --bmc1_ucm_init_mode                    2
% 2.29/0.99  --bmc1_ucm_cone_mode                    none
% 2.29/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.29/0.99  --bmc1_ucm_relax_model                  4
% 2.29/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.29/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.29/0.99  --bmc1_ucm_layered_model                none
% 2.29/0.99  --bmc1_ucm_max_lemma_size               10
% 2.29/0.99  
% 2.29/0.99  ------ AIG Options
% 2.29/0.99  
% 2.29/0.99  --aig_mode                              false
% 2.29/0.99  
% 2.29/0.99  ------ Instantiation Options
% 2.29/0.99  
% 2.29/0.99  --instantiation_flag                    true
% 2.29/0.99  --inst_sos_flag                         false
% 2.29/0.99  --inst_sos_phase                        true
% 2.29/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.29/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.29/0.99  --inst_lit_sel_side                     num_symb
% 2.29/0.99  --inst_solver_per_active                1400
% 2.29/0.99  --inst_solver_calls_frac                1.
% 2.29/0.99  --inst_passive_queue_type               priority_queues
% 2.29/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.29/0.99  --inst_passive_queues_freq              [25;2]
% 2.29/0.99  --inst_dismatching                      true
% 2.29/0.99  --inst_eager_unprocessed_to_passive     true
% 2.29/0.99  --inst_prop_sim_given                   true
% 2.29/0.99  --inst_prop_sim_new                     false
% 2.29/0.99  --inst_subs_new                         false
% 2.29/0.99  --inst_eq_res_simp                      false
% 2.29/0.99  --inst_subs_given                       false
% 2.29/0.99  --inst_orphan_elimination               true
% 2.29/0.99  --inst_learning_loop_flag               true
% 2.29/0.99  --inst_learning_start                   3000
% 2.29/0.99  --inst_learning_factor                  2
% 2.29/0.99  --inst_start_prop_sim_after_learn       3
% 2.29/0.99  --inst_sel_renew                        solver
% 2.29/0.99  --inst_lit_activity_flag                true
% 2.29/0.99  --inst_restr_to_given                   false
% 2.29/0.99  --inst_activity_threshold               500
% 2.29/0.99  --inst_out_proof                        true
% 2.29/0.99  
% 2.29/0.99  ------ Resolution Options
% 2.29/0.99  
% 2.29/0.99  --resolution_flag                       true
% 2.29/0.99  --res_lit_sel                           adaptive
% 2.29/0.99  --res_lit_sel_side                      none
% 2.29/0.99  --res_ordering                          kbo
% 2.29/0.99  --res_to_prop_solver                    active
% 2.29/0.99  --res_prop_simpl_new                    false
% 2.29/0.99  --res_prop_simpl_given                  true
% 2.29/0.99  --res_passive_queue_type                priority_queues
% 2.29/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.29/0.99  --res_passive_queues_freq               [15;5]
% 2.29/0.99  --res_forward_subs                      full
% 2.29/0.99  --res_backward_subs                     full
% 2.29/0.99  --res_forward_subs_resolution           true
% 2.29/0.99  --res_backward_subs_resolution          true
% 2.29/0.99  --res_orphan_elimination                true
% 2.29/0.99  --res_time_limit                        2.
% 2.29/0.99  --res_out_proof                         true
% 2.29/0.99  
% 2.29/0.99  ------ Superposition Options
% 2.29/0.99  
% 2.29/0.99  --superposition_flag                    true
% 2.29/0.99  --sup_passive_queue_type                priority_queues
% 2.29/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.29/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.29/0.99  --demod_completeness_check              fast
% 2.29/0.99  --demod_use_ground                      true
% 2.29/0.99  --sup_to_prop_solver                    passive
% 2.29/0.99  --sup_prop_simpl_new                    true
% 2.29/0.99  --sup_prop_simpl_given                  true
% 2.29/0.99  --sup_fun_splitting                     false
% 2.29/0.99  --sup_smt_interval                      50000
% 2.29/0.99  
% 2.29/0.99  ------ Superposition Simplification Setup
% 2.29/0.99  
% 2.29/0.99  --sup_indices_passive                   []
% 2.29/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.29/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.29/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.29/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.29/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.29/0.99  --sup_full_bw                           [BwDemod]
% 2.29/0.99  --sup_immed_triv                        [TrivRules]
% 2.29/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.29/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.29/0.99  --sup_immed_bw_main                     []
% 2.29/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.29/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.29/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.29/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.29/0.99  
% 2.29/0.99  ------ Combination Options
% 2.29/0.99  
% 2.29/0.99  --comb_res_mult                         3
% 2.29/0.99  --comb_sup_mult                         2
% 2.29/0.99  --comb_inst_mult                        10
% 2.29/0.99  
% 2.29/0.99  ------ Debug Options
% 2.29/0.99  
% 2.29/0.99  --dbg_backtrace                         false
% 2.29/0.99  --dbg_dump_prop_clauses                 false
% 2.29/0.99  --dbg_dump_prop_clauses_file            -
% 2.29/0.99  --dbg_out_stat                          false
% 2.29/0.99  ------ Parsing...
% 2.29/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.29/0.99  
% 2.29/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 2.29/0.99  
% 2.29/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.29/0.99  
% 2.29/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.29/0.99  ------ Proving...
% 2.29/0.99  ------ Problem Properties 
% 2.29/0.99  
% 2.29/0.99  
% 2.29/0.99  clauses                                 17
% 2.29/0.99  conjectures                             4
% 2.29/0.99  EPR                                     5
% 2.29/0.99  Horn                                    10
% 2.29/0.99  unary                                   3
% 2.29/0.99  binary                                  7
% 2.29/0.99  lits                                    41
% 2.29/0.99  lits eq                                 3
% 2.29/0.99  fd_pure                                 0
% 2.29/0.99  fd_pseudo                               0
% 2.29/0.99  fd_cond                                 0
% 2.29/0.99  fd_pseudo_cond                          1
% 2.29/0.99  AC symbols                              0
% 2.29/0.99  
% 2.29/0.99  ------ Schedule dynamic 5 is on 
% 2.29/0.99  
% 2.29/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.29/0.99  
% 2.29/0.99  
% 2.29/0.99  ------ 
% 2.29/0.99  Current options:
% 2.29/0.99  ------ 
% 2.29/0.99  
% 2.29/0.99  ------ Input Options
% 2.29/0.99  
% 2.29/0.99  --out_options                           all
% 2.29/0.99  --tptp_safe_out                         true
% 2.29/0.99  --problem_path                          ""
% 2.29/0.99  --include_path                          ""
% 2.29/0.99  --clausifier                            res/vclausify_rel
% 2.29/0.99  --clausifier_options                    --mode clausify
% 2.29/0.99  --stdin                                 false
% 2.29/0.99  --stats_out                             all
% 2.29/0.99  
% 2.29/0.99  ------ General Options
% 2.29/0.99  
% 2.29/0.99  --fof                                   false
% 2.29/0.99  --time_out_real                         305.
% 2.29/0.99  --time_out_virtual                      -1.
% 2.29/0.99  --symbol_type_check                     false
% 2.29/0.99  --clausify_out                          false
% 2.29/0.99  --sig_cnt_out                           false
% 2.29/0.99  --trig_cnt_out                          false
% 2.29/0.99  --trig_cnt_out_tolerance                1.
% 2.29/0.99  --trig_cnt_out_sk_spl                   false
% 2.29/0.99  --abstr_cl_out                          false
% 2.29/0.99  
% 2.29/0.99  ------ Global Options
% 2.29/0.99  
% 2.29/0.99  --schedule                              default
% 2.29/0.99  --add_important_lit                     false
% 2.29/0.99  --prop_solver_per_cl                    1000
% 2.29/0.99  --min_unsat_core                        false
% 2.29/0.99  --soft_assumptions                      false
% 2.29/0.99  --soft_lemma_size                       3
% 2.29/0.99  --prop_impl_unit_size                   0
% 2.29/0.99  --prop_impl_unit                        []
% 2.29/0.99  --share_sel_clauses                     true
% 2.29/0.99  --reset_solvers                         false
% 2.29/0.99  --bc_imp_inh                            [conj_cone]
% 2.29/0.99  --conj_cone_tolerance                   3.
% 2.29/0.99  --extra_neg_conj                        none
% 2.29/0.99  --large_theory_mode                     true
% 2.29/0.99  --prolific_symb_bound                   200
% 2.29/0.99  --lt_threshold                          2000
% 2.29/0.99  --clause_weak_htbl                      true
% 2.29/0.99  --gc_record_bc_elim                     false
% 2.29/0.99  
% 2.29/0.99  ------ Preprocessing Options
% 2.29/0.99  
% 2.29/0.99  --preprocessing_flag                    true
% 2.29/0.99  --time_out_prep_mult                    0.1
% 2.29/0.99  --splitting_mode                        input
% 2.29/0.99  --splitting_grd                         true
% 2.29/0.99  --splitting_cvd                         false
% 2.29/0.99  --splitting_cvd_svl                     false
% 2.29/0.99  --splitting_nvd                         32
% 2.29/0.99  --sub_typing                            true
% 2.29/0.99  --prep_gs_sim                           true
% 2.29/0.99  --prep_unflatten                        true
% 2.29/0.99  --prep_res_sim                          true
% 2.29/0.99  --prep_upred                            true
% 2.29/0.99  --prep_sem_filter                       exhaustive
% 2.29/0.99  --prep_sem_filter_out                   false
% 2.29/0.99  --pred_elim                             true
% 2.29/0.99  --res_sim_input                         true
% 2.29/0.99  --eq_ax_congr_red                       true
% 2.29/0.99  --pure_diseq_elim                       true
% 2.29/0.99  --brand_transform                       false
% 2.29/0.99  --non_eq_to_eq                          false
% 2.29/0.99  --prep_def_merge                        true
% 2.29/0.99  --prep_def_merge_prop_impl              false
% 2.29/0.99  --prep_def_merge_mbd                    true
% 2.29/0.99  --prep_def_merge_tr_red                 false
% 2.29/0.99  --prep_def_merge_tr_cl                  false
% 2.29/0.99  --smt_preprocessing                     true
% 2.29/0.99  --smt_ac_axioms                         fast
% 2.29/0.99  --preprocessed_out                      false
% 2.29/0.99  --preprocessed_stats                    false
% 2.29/0.99  
% 2.29/0.99  ------ Abstraction refinement Options
% 2.29/0.99  
% 2.29/0.99  --abstr_ref                             []
% 2.29/0.99  --abstr_ref_prep                        false
% 2.29/0.99  --abstr_ref_until_sat                   false
% 2.29/0.99  --abstr_ref_sig_restrict                funpre
% 2.29/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.29/0.99  --abstr_ref_under                       []
% 2.29/0.99  
% 2.29/0.99  ------ SAT Options
% 2.29/0.99  
% 2.29/0.99  --sat_mode                              false
% 2.29/0.99  --sat_fm_restart_options                ""
% 2.29/0.99  --sat_gr_def                            false
% 2.29/0.99  --sat_epr_types                         true
% 2.29/0.99  --sat_non_cyclic_types                  false
% 2.29/0.99  --sat_finite_models                     false
% 2.29/0.99  --sat_fm_lemmas                         false
% 2.29/0.99  --sat_fm_prep                           false
% 2.29/0.99  --sat_fm_uc_incr                        true
% 2.29/0.99  --sat_out_model                         small
% 2.29/0.99  --sat_out_clauses                       false
% 2.29/0.99  
% 2.29/0.99  ------ QBF Options
% 2.29/0.99  
% 2.29/0.99  --qbf_mode                              false
% 2.29/0.99  --qbf_elim_univ                         false
% 2.29/0.99  --qbf_dom_inst                          none
% 2.29/0.99  --qbf_dom_pre_inst                      false
% 2.29/0.99  --qbf_sk_in                             false
% 2.29/0.99  --qbf_pred_elim                         true
% 2.29/0.99  --qbf_split                             512
% 2.29/0.99  
% 2.29/0.99  ------ BMC1 Options
% 2.29/0.99  
% 2.29/0.99  --bmc1_incremental                      false
% 2.29/0.99  --bmc1_axioms                           reachable_all
% 2.29/0.99  --bmc1_min_bound                        0
% 2.29/0.99  --bmc1_max_bound                        -1
% 2.29/0.99  --bmc1_max_bound_default                -1
% 2.29/0.99  --bmc1_symbol_reachability              true
% 2.29/0.99  --bmc1_property_lemmas                  false
% 2.29/0.99  --bmc1_k_induction                      false
% 2.29/0.99  --bmc1_non_equiv_states                 false
% 2.29/0.99  --bmc1_deadlock                         false
% 2.29/0.99  --bmc1_ucm                              false
% 2.29/0.99  --bmc1_add_unsat_core                   none
% 2.29/0.99  --bmc1_unsat_core_children              false
% 2.29/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.29/0.99  --bmc1_out_stat                         full
% 2.29/0.99  --bmc1_ground_init                      false
% 2.29/0.99  --bmc1_pre_inst_next_state              false
% 2.29/0.99  --bmc1_pre_inst_state                   false
% 2.29/0.99  --bmc1_pre_inst_reach_state             false
% 2.29/0.99  --bmc1_out_unsat_core                   false
% 2.29/0.99  --bmc1_aig_witness_out                  false
% 2.29/0.99  --bmc1_verbose                          false
% 2.29/0.99  --bmc1_dump_clauses_tptp                false
% 2.29/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.29/0.99  --bmc1_dump_file                        -
% 2.29/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.29/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.29/0.99  --bmc1_ucm_extend_mode                  1
% 2.29/0.99  --bmc1_ucm_init_mode                    2
% 2.29/0.99  --bmc1_ucm_cone_mode                    none
% 2.29/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.29/0.99  --bmc1_ucm_relax_model                  4
% 2.29/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.29/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.29/0.99  --bmc1_ucm_layered_model                none
% 2.29/0.99  --bmc1_ucm_max_lemma_size               10
% 2.29/0.99  
% 2.29/0.99  ------ AIG Options
% 2.29/0.99  
% 2.29/0.99  --aig_mode                              false
% 2.29/0.99  
% 2.29/0.99  ------ Instantiation Options
% 2.29/0.99  
% 2.29/0.99  --instantiation_flag                    true
% 2.29/0.99  --inst_sos_flag                         false
% 2.29/0.99  --inst_sos_phase                        true
% 2.29/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.29/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.29/0.99  --inst_lit_sel_side                     none
% 2.29/0.99  --inst_solver_per_active                1400
% 2.29/0.99  --inst_solver_calls_frac                1.
% 2.29/0.99  --inst_passive_queue_type               priority_queues
% 2.29/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.29/0.99  --inst_passive_queues_freq              [25;2]
% 2.29/0.99  --inst_dismatching                      true
% 2.29/0.99  --inst_eager_unprocessed_to_passive     true
% 2.29/0.99  --inst_prop_sim_given                   true
% 2.29/0.99  --inst_prop_sim_new                     false
% 2.29/0.99  --inst_subs_new                         false
% 2.29/0.99  --inst_eq_res_simp                      false
% 2.29/0.99  --inst_subs_given                       false
% 2.29/0.99  --inst_orphan_elimination               true
% 2.29/0.99  --inst_learning_loop_flag               true
% 2.29/0.99  --inst_learning_start                   3000
% 2.29/0.99  --inst_learning_factor                  2
% 2.29/0.99  --inst_start_prop_sim_after_learn       3
% 2.29/0.99  --inst_sel_renew                        solver
% 2.29/0.99  --inst_lit_activity_flag                true
% 2.29/0.99  --inst_restr_to_given                   false
% 2.29/0.99  --inst_activity_threshold               500
% 2.29/0.99  --inst_out_proof                        true
% 2.29/0.99  
% 2.29/0.99  ------ Resolution Options
% 2.29/0.99  
% 2.29/0.99  --resolution_flag                       false
% 2.29/0.99  --res_lit_sel                           adaptive
% 2.29/0.99  --res_lit_sel_side                      none
% 2.29/0.99  --res_ordering                          kbo
% 2.29/0.99  --res_to_prop_solver                    active
% 2.29/0.99  --res_prop_simpl_new                    false
% 2.29/0.99  --res_prop_simpl_given                  true
% 2.29/0.99  --res_passive_queue_type                priority_queues
% 2.29/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.29/0.99  --res_passive_queues_freq               [15;5]
% 2.29/0.99  --res_forward_subs                      full
% 2.29/0.99  --res_backward_subs                     full
% 2.29/0.99  --res_forward_subs_resolution           true
% 2.29/0.99  --res_backward_subs_resolution          true
% 2.29/0.99  --res_orphan_elimination                true
% 2.29/0.99  --res_time_limit                        2.
% 2.29/0.99  --res_out_proof                         true
% 2.29/0.99  
% 2.29/0.99  ------ Superposition Options
% 2.29/0.99  
% 2.29/0.99  --superposition_flag                    true
% 2.29/0.99  --sup_passive_queue_type                priority_queues
% 2.29/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.29/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.29/0.99  --demod_completeness_check              fast
% 2.29/0.99  --demod_use_ground                      true
% 2.29/0.99  --sup_to_prop_solver                    passive
% 2.29/0.99  --sup_prop_simpl_new                    true
% 2.29/0.99  --sup_prop_simpl_given                  true
% 2.29/0.99  --sup_fun_splitting                     false
% 2.29/0.99  --sup_smt_interval                      50000
% 2.29/0.99  
% 2.29/0.99  ------ Superposition Simplification Setup
% 2.29/0.99  
% 2.29/0.99  --sup_indices_passive                   []
% 2.29/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.29/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.29/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.29/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.29/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.29/0.99  --sup_full_bw                           [BwDemod]
% 2.29/0.99  --sup_immed_triv                        [TrivRules]
% 2.29/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.29/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.29/0.99  --sup_immed_bw_main                     []
% 2.29/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.29/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.29/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.29/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.29/0.99  
% 2.29/0.99  ------ Combination Options
% 2.29/0.99  
% 2.29/0.99  --comb_res_mult                         3
% 2.29/0.99  --comb_sup_mult                         2
% 2.29/0.99  --comb_inst_mult                        10
% 2.29/0.99  
% 2.29/0.99  ------ Debug Options
% 2.29/0.99  
% 2.29/0.99  --dbg_backtrace                         false
% 2.29/0.99  --dbg_dump_prop_clauses                 false
% 2.29/0.99  --dbg_dump_prop_clauses_file            -
% 2.29/0.99  --dbg_out_stat                          false
% 2.29/0.99  
% 2.29/0.99  
% 2.29/0.99  
% 2.29/0.99  
% 2.29/0.99  ------ Proving...
% 2.29/0.99  
% 2.29/0.99  
% 2.29/0.99  % SZS status Theorem for theBenchmark.p
% 2.29/0.99  
% 2.29/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.29/0.99  
% 2.29/0.99  fof(f16,conjecture,(
% 2.29/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => (v2_tex_2(X1,X0) <=> v1_zfmisc_1(X1))))),
% 2.29/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/0.99  
% 2.29/0.99  fof(f17,negated_conjecture,(
% 2.29/0.99    ~! [X0] : ((l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => (v2_tex_2(X1,X0) <=> v1_zfmisc_1(X1))))),
% 2.29/0.99    inference(negated_conjecture,[],[f16])).
% 2.29/0.99  
% 2.29/0.99  fof(f38,plain,(
% 2.29/0.99    ? [X0] : (? [X1] : ((v2_tex_2(X1,X0) <~> v1_zfmisc_1(X1)) & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1))) & (l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.29/0.99    inference(ennf_transformation,[],[f17])).
% 2.29/0.99  
% 2.29/0.99  fof(f39,plain,(
% 2.29/0.99    ? [X0] : (? [X1] : ((v2_tex_2(X1,X0) <~> v1_zfmisc_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.29/0.99    inference(flattening,[],[f38])).
% 2.29/0.99  
% 2.29/0.99  fof(f48,plain,(
% 2.29/0.99    ? [X0] : (? [X1] : (((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,X0)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.29/0.99    inference(nnf_transformation,[],[f39])).
% 2.29/0.99  
% 2.29/0.99  fof(f49,plain,(
% 2.29/0.99    ? [X0] : (? [X1] : ((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,X0)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.29/0.99    inference(flattening,[],[f48])).
% 2.29/0.99  
% 2.29/0.99  fof(f51,plain,(
% 2.29/0.99    ( ! [X0] : (? [X1] : ((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,X0)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => ((~v1_zfmisc_1(sK3) | ~v2_tex_2(sK3,X0)) & (v1_zfmisc_1(sK3) | v2_tex_2(sK3,X0)) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(sK3))) )),
% 2.29/0.99    introduced(choice_axiom,[])).
% 2.29/0.99  
% 2.29/0.99  fof(f50,plain,(
% 2.29/0.99    ? [X0] : (? [X1] : ((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,X0)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : ((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,sK2)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,sK2)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2))) & ~v1_xboole_0(X1)) & l1_pre_topc(sK2) & v2_tdlat_3(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2))),
% 2.29/0.99    introduced(choice_axiom,[])).
% 2.29/0.99  
% 2.29/0.99  fof(f52,plain,(
% 2.29/0.99    ((~v1_zfmisc_1(sK3) | ~v2_tex_2(sK3,sK2)) & (v1_zfmisc_1(sK3) | v2_tex_2(sK3,sK2)) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) & ~v1_xboole_0(sK3)) & l1_pre_topc(sK2) & v2_tdlat_3(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2)),
% 2.29/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f49,f51,f50])).
% 2.29/0.99  
% 2.29/0.99  fof(f81,plain,(
% 2.29/0.99    v1_zfmisc_1(sK3) | v2_tex_2(sK3,sK2)),
% 2.29/0.99    inference(cnf_transformation,[],[f52])).
% 2.29/0.99  
% 2.29/0.99  fof(f80,plain,(
% 2.29/0.99    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))),
% 2.29/0.99    inference(cnf_transformation,[],[f52])).
% 2.29/0.99  
% 2.29/0.99  fof(f14,axiom,(
% 2.29/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => ~(! [X2] : ((m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & v1_pre_topc(X2) & ~v2_struct_0(X2)) => u1_struct_0(X2) != X1) & v2_tex_2(X1,X0))))),
% 2.29/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/0.99  
% 2.29/0.99  fof(f18,plain,(
% 2.29/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => ~(! [X2] : ((m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & ~v2_struct_0(X2)) => u1_struct_0(X2) != X1) & v2_tex_2(X1,X0))))),
% 2.29/0.99    inference(pure_predicate_removal,[],[f14])).
% 2.29/0.99  
% 2.29/0.99  fof(f34,plain,(
% 2.29/0.99    ! [X0] : (! [X1] : ((? [X2] : (u1_struct_0(X2) = X1 & (m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & ~v2_struct_0(X2))) | ~v2_tex_2(X1,X0)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.29/0.99    inference(ennf_transformation,[],[f18])).
% 2.29/0.99  
% 2.29/0.99  fof(f35,plain,(
% 2.29/0.99    ! [X0] : (! [X1] : (? [X2] : (u1_struct_0(X2) = X1 & m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & ~v2_struct_0(X2)) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.29/0.99    inference(flattening,[],[f34])).
% 2.29/0.99  
% 2.29/0.99  fof(f46,plain,(
% 2.29/0.99    ! [X1,X0] : (? [X2] : (u1_struct_0(X2) = X1 & m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & ~v2_struct_0(X2)) => (u1_struct_0(sK1(X0,X1)) = X1 & m1_pre_topc(sK1(X0,X1),X0) & v1_tdlat_3(sK1(X0,X1)) & ~v2_struct_0(sK1(X0,X1))))),
% 2.29/0.99    introduced(choice_axiom,[])).
% 2.29/0.99  
% 2.29/0.99  fof(f47,plain,(
% 2.29/0.99    ! [X0] : (! [X1] : ((u1_struct_0(sK1(X0,X1)) = X1 & m1_pre_topc(sK1(X0,X1),X0) & v1_tdlat_3(sK1(X0,X1)) & ~v2_struct_0(sK1(X0,X1))) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.29/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f35,f46])).
% 2.29/0.99  
% 2.29/0.99  fof(f73,plain,(
% 2.29/0.99    ( ! [X0,X1] : (u1_struct_0(sK1(X0,X1)) = X1 | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.29/0.99    inference(cnf_transformation,[],[f47])).
% 2.29/0.99  
% 2.29/0.99  fof(f76,plain,(
% 2.29/0.99    v2_pre_topc(sK2)),
% 2.29/0.99    inference(cnf_transformation,[],[f52])).
% 2.29/0.99  
% 2.29/0.99  fof(f75,plain,(
% 2.29/0.99    ~v2_struct_0(sK2)),
% 2.29/0.99    inference(cnf_transformation,[],[f52])).
% 2.29/0.99  
% 2.29/0.99  fof(f78,plain,(
% 2.29/0.99    l1_pre_topc(sK2)),
% 2.29/0.99    inference(cnf_transformation,[],[f52])).
% 2.29/0.99  
% 2.29/0.99  fof(f79,plain,(
% 2.29/0.99    ~v1_xboole_0(sK3)),
% 2.29/0.99    inference(cnf_transformation,[],[f52])).
% 2.29/0.99  
% 2.29/0.99  fof(f1,axiom,(
% 2.29/0.99    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.29/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/0.99  
% 2.29/0.99  fof(f40,plain,(
% 2.29/0.99    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 2.29/0.99    inference(nnf_transformation,[],[f1])).
% 2.29/0.99  
% 2.29/0.99  fof(f41,plain,(
% 2.29/0.99    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.29/0.99    inference(rectify,[],[f40])).
% 2.29/0.99  
% 2.29/0.99  fof(f42,plain,(
% 2.29/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 2.29/0.99    introduced(choice_axiom,[])).
% 2.29/0.99  
% 2.29/0.99  fof(f43,plain,(
% 2.29/0.99    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.29/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f41,f42])).
% 2.29/0.99  
% 2.29/0.99  fof(f54,plain,(
% 2.29/0.99    ( ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) )),
% 2.29/0.99    inference(cnf_transformation,[],[f43])).
% 2.29/0.99  
% 2.29/0.99  fof(f3,axiom,(
% 2.29/0.99    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 2.29/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/0.99  
% 2.29/0.99  fof(f44,plain,(
% 2.29/0.99    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 2.29/0.99    inference(nnf_transformation,[],[f3])).
% 2.29/0.99  
% 2.29/0.99  fof(f57,plain,(
% 2.29/0.99    ( ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 2.29/0.99    inference(cnf_transformation,[],[f44])).
% 2.29/0.99  
% 2.29/0.99  fof(f13,axiom,(
% 2.29/0.99    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : ((v1_zfmisc_1(X1) & ~v1_xboole_0(X1)) => (r1_tarski(X0,X1) => X0 = X1)))),
% 2.29/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/0.99  
% 2.29/0.99  fof(f32,plain,(
% 2.29/0.99    ! [X0] : (! [X1] : ((X0 = X1 | ~r1_tarski(X0,X1)) | (~v1_zfmisc_1(X1) | v1_xboole_0(X1))) | v1_xboole_0(X0))),
% 2.29/0.99    inference(ennf_transformation,[],[f13])).
% 2.29/0.99  
% 2.29/0.99  fof(f33,plain,(
% 2.29/0.99    ! [X0] : (! [X1] : (X0 = X1 | ~r1_tarski(X0,X1) | ~v1_zfmisc_1(X1) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 2.29/0.99    inference(flattening,[],[f32])).
% 2.29/0.99  
% 2.29/0.99  fof(f69,plain,(
% 2.29/0.99    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X0,X1) | ~v1_zfmisc_1(X1) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 2.29/0.99    inference(cnf_transformation,[],[f33])).
% 2.29/0.99  
% 2.29/0.99  fof(f5,axiom,(
% 2.29/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.29/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/0.99  
% 2.29/0.99  fof(f45,plain,(
% 2.29/0.99    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.29/0.99    inference(nnf_transformation,[],[f5])).
% 2.29/0.99  
% 2.29/0.99  fof(f60,plain,(
% 2.29/0.99    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.29/0.99    inference(cnf_transformation,[],[f45])).
% 2.29/0.99  
% 2.29/0.99  fof(f4,axiom,(
% 2.29/0.99    ! [X0] : (v1_xboole_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_xboole_0(X1)))),
% 2.29/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/0.99  
% 2.29/0.99  fof(f19,plain,(
% 2.29/0.99    ! [X0] : (! [X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_xboole_0(X0))),
% 2.29/0.99    inference(ennf_transformation,[],[f4])).
% 2.29/0.99  
% 2.29/0.99  fof(f58,plain,(
% 2.29/0.99    ( ! [X0,X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_xboole_0(X0)) )),
% 2.29/0.99    inference(cnf_transformation,[],[f19])).
% 2.29/0.99  
% 2.29/0.99  fof(f2,axiom,(
% 2.29/0.99    ! [X0] : ~v1_xboole_0(k1_tarski(X0))),
% 2.29/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/0.99  
% 2.29/0.99  fof(f55,plain,(
% 2.29/0.99    ( ! [X0] : (~v1_xboole_0(k1_tarski(X0))) )),
% 2.29/0.99    inference(cnf_transformation,[],[f2])).
% 2.29/0.99  
% 2.29/0.99  fof(f82,plain,(
% 2.29/0.99    ~v1_zfmisc_1(sK3) | ~v2_tex_2(sK3,sK2)),
% 2.29/0.99    inference(cnf_transformation,[],[f52])).
% 2.29/0.99  
% 2.29/0.99  fof(f71,plain,(
% 2.29/0.99    ( ! [X0,X1] : (v1_tdlat_3(sK1(X0,X1)) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f47])).
% 2.29/1.00  
% 2.29/1.00  fof(f70,plain,(
% 2.29/1.00    ( ! [X0,X1] : (~v2_struct_0(sK1(X0,X1)) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f47])).
% 2.29/1.00  
% 2.29/1.00  fof(f72,plain,(
% 2.29/1.00    ( ! [X0,X1] : (m1_pre_topc(sK1(X0,X1),X0) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f47])).
% 2.29/1.00  
% 2.29/1.00  fof(f12,axiom,(
% 2.29/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ((~v7_struct_0(X1) & ~v2_struct_0(X1)) => (~v1_tdlat_3(X1) & ~v2_struct_0(X1)))))),
% 2.29/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/1.00  
% 2.29/1.00  fof(f30,plain,(
% 2.29/1.00    ! [X0] : (! [X1] : (((~v1_tdlat_3(X1) & ~v2_struct_0(X1)) | (v7_struct_0(X1) | v2_struct_0(X1))) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.29/1.00    inference(ennf_transformation,[],[f12])).
% 2.29/1.00  
% 2.29/1.00  fof(f31,plain,(
% 2.29/1.00    ! [X0] : (! [X1] : ((~v1_tdlat_3(X1) & ~v2_struct_0(X1)) | v7_struct_0(X1) | v2_struct_0(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.29/1.00    inference(flattening,[],[f30])).
% 2.29/1.00  
% 2.29/1.00  fof(f68,plain,(
% 2.29/1.00    ( ! [X0,X1] : (~v1_tdlat_3(X1) | v7_struct_0(X1) | v2_struct_0(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f31])).
% 2.29/1.00  
% 2.29/1.00  fof(f7,axiom,(
% 2.29/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.29/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/1.00  
% 2.29/1.00  fof(f22,plain,(
% 2.29/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.29/1.00    inference(ennf_transformation,[],[f7])).
% 2.29/1.00  
% 2.29/1.00  fof(f62,plain,(
% 2.29/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f22])).
% 2.29/1.00  
% 2.29/1.00  fof(f9,axiom,(
% 2.29/1.00    ! [X0] : ((l1_struct_0(X0) & v7_struct_0(X0)) => v1_zfmisc_1(u1_struct_0(X0)))),
% 2.29/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/1.00  
% 2.29/1.00  fof(f24,plain,(
% 2.29/1.00    ! [X0] : (v1_zfmisc_1(u1_struct_0(X0)) | (~l1_struct_0(X0) | ~v7_struct_0(X0)))),
% 2.29/1.00    inference(ennf_transformation,[],[f9])).
% 2.29/1.00  
% 2.29/1.00  fof(f25,plain,(
% 2.29/1.00    ! [X0] : (v1_zfmisc_1(u1_struct_0(X0)) | ~l1_struct_0(X0) | ~v7_struct_0(X0))),
% 2.29/1.00    inference(flattening,[],[f24])).
% 2.29/1.00  
% 2.29/1.00  fof(f64,plain,(
% 2.29/1.00    ( ! [X0] : (v1_zfmisc_1(u1_struct_0(X0)) | ~l1_struct_0(X0) | ~v7_struct_0(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f25])).
% 2.29/1.00  
% 2.29/1.00  fof(f8,axiom,(
% 2.29/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 2.29/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/1.00  
% 2.29/1.00  fof(f23,plain,(
% 2.29/1.00    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.29/1.00    inference(ennf_transformation,[],[f8])).
% 2.29/1.00  
% 2.29/1.00  fof(f63,plain,(
% 2.29/1.00    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f23])).
% 2.29/1.00  
% 2.29/1.00  fof(f11,axiom,(
% 2.29/1.00    ! [X0] : (l1_pre_topc(X0) => (v2_tdlat_3(X0) => v2_pre_topc(X0)))),
% 2.29/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/1.00  
% 2.29/1.00  fof(f28,plain,(
% 2.29/1.00    ! [X0] : ((v2_pre_topc(X0) | ~v2_tdlat_3(X0)) | ~l1_pre_topc(X0))),
% 2.29/1.00    inference(ennf_transformation,[],[f11])).
% 2.29/1.00  
% 2.29/1.00  fof(f29,plain,(
% 2.29/1.00    ! [X0] : (v2_pre_topc(X0) | ~v2_tdlat_3(X0) | ~l1_pre_topc(X0))),
% 2.29/1.00    inference(flattening,[],[f28])).
% 2.29/1.00  
% 2.29/1.00  fof(f66,plain,(
% 2.29/1.00    ( ! [X0] : (v2_pre_topc(X0) | ~v2_tdlat_3(X0) | ~l1_pre_topc(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f29])).
% 2.29/1.00  
% 2.29/1.00  fof(f77,plain,(
% 2.29/1.00    v2_tdlat_3(sK2)),
% 2.29/1.00    inference(cnf_transformation,[],[f52])).
% 2.29/1.00  
% 2.29/1.00  fof(f56,plain,(
% 2.29/1.00    ( ! [X0,X1] : (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f44])).
% 2.29/1.00  
% 2.29/1.00  fof(f6,axiom,(
% 2.29/1.00    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 2.29/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/1.00  
% 2.29/1.00  fof(f20,plain,(
% 2.29/1.00    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 2.29/1.00    inference(ennf_transformation,[],[f6])).
% 2.29/1.00  
% 2.29/1.00  fof(f21,plain,(
% 2.29/1.00    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 2.29/1.00    inference(flattening,[],[f20])).
% 2.29/1.00  
% 2.29/1.00  fof(f61,plain,(
% 2.29/1.00    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f21])).
% 2.29/1.00  
% 2.29/1.00  fof(f59,plain,(
% 2.29/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.29/1.00    inference(cnf_transformation,[],[f45])).
% 2.29/1.00  
% 2.29/1.00  fof(f10,axiom,(
% 2.29/1.00    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 2.29/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/1.00  
% 2.29/1.00  fof(f26,plain,(
% 2.29/1.00    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 2.29/1.00    inference(ennf_transformation,[],[f10])).
% 2.29/1.00  
% 2.29/1.00  fof(f27,plain,(
% 2.29/1.00    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 2.29/1.00    inference(flattening,[],[f26])).
% 2.29/1.00  
% 2.29/1.00  fof(f65,plain,(
% 2.29/1.00    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f27])).
% 2.29/1.00  
% 2.29/1.00  fof(f15,axiom,(
% 2.29/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)))),
% 2.29/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.29/1.00  
% 2.29/1.00  fof(f36,plain,(
% 2.29/1.00    ! [X0] : (! [X1] : (v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.29/1.00    inference(ennf_transformation,[],[f15])).
% 2.29/1.00  
% 2.29/1.00  fof(f37,plain,(
% 2.29/1.00    ! [X0] : (! [X1] : (v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.29/1.00    inference(flattening,[],[f36])).
% 2.29/1.00  
% 2.29/1.00  fof(f74,plain,(
% 2.29/1.00    ( ! [X0,X1] : (v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.29/1.00    inference(cnf_transformation,[],[f37])).
% 2.29/1.00  
% 2.29/1.00  cnf(c_23,negated_conjecture,
% 2.29/1.00      ( v2_tex_2(sK3,sK2) | v1_zfmisc_1(sK3) ),
% 2.29/1.00      inference(cnf_transformation,[],[f81]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2304,plain,
% 2.29/1.00      ( v2_tex_2(sK3,sK2) = iProver_top
% 2.29/1.00      | v1_zfmisc_1(sK3) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_24,negated_conjecture,
% 2.29/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.29/1.00      inference(cnf_transformation,[],[f80]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2303,plain,
% 2.29/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_17,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ v2_pre_topc(X1)
% 2.29/1.00      | ~ l1_pre_topc(X1)
% 2.29/1.00      | v1_xboole_0(X0)
% 2.29/1.00      | u1_struct_0(sK1(X1,X0)) = X0 ),
% 2.29/1.00      inference(cnf_transformation,[],[f73]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_28,negated_conjecture,
% 2.29/1.00      ( v2_pre_topc(sK2) ),
% 2.29/1.00      inference(cnf_transformation,[],[f76]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1117,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ l1_pre_topc(X1)
% 2.29/1.00      | v1_xboole_0(X0)
% 2.29/1.00      | u1_struct_0(sK1(X1,X0)) = X0
% 2.29/1.00      | sK2 != X1 ),
% 2.29/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_28]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1118,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | v2_struct_0(sK2)
% 2.29/1.00      | ~ l1_pre_topc(sK2)
% 2.29/1.00      | v1_xboole_0(X0)
% 2.29/1.00      | u1_struct_0(sK1(sK2,X0)) = X0 ),
% 2.29/1.00      inference(unflattening,[status(thm)],[c_1117]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_29,negated_conjecture,
% 2.29/1.00      ( ~ v2_struct_0(sK2) ),
% 2.29/1.00      inference(cnf_transformation,[],[f75]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_26,negated_conjecture,
% 2.29/1.00      ( l1_pre_topc(sK2) ),
% 2.29/1.00      inference(cnf_transformation,[],[f78]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1122,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | v1_xboole_0(X0)
% 2.29/1.00      | u1_struct_0(sK1(sK2,X0)) = X0 ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_1118,c_29,c_26]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2295,plain,
% 2.29/1.00      ( u1_struct_0(sK1(sK2,X0)) = X0
% 2.29/1.00      | v2_tex_2(X0,sK2) != iProver_top
% 2.29/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.29/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_1122]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2539,plain,
% 2.29/1.00      ( u1_struct_0(sK1(sK2,sK3)) = sK3
% 2.29/1.00      | v2_tex_2(sK3,sK2) != iProver_top
% 2.29/1.00      | v1_xboole_0(sK3) = iProver_top ),
% 2.29/1.00      inference(superposition,[status(thm)],[c_2303,c_2295]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_25,negated_conjecture,
% 2.29/1.00      ( ~ v1_xboole_0(sK3) ),
% 2.29/1.00      inference(cnf_transformation,[],[f79]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_34,plain,
% 2.29/1.00      ( v1_xboole_0(sK3) != iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2571,plain,
% 2.29/1.00      ( v2_tex_2(sK3,sK2) != iProver_top
% 2.29/1.00      | u1_struct_0(sK1(sK2,sK3)) = sK3 ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_2539,c_34]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2572,plain,
% 2.29/1.00      ( u1_struct_0(sK1(sK2,sK3)) = sK3
% 2.29/1.00      | v2_tex_2(sK3,sK2) != iProver_top ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_2571]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2577,plain,
% 2.29/1.00      ( u1_struct_0(sK1(sK2,sK3)) = sK3
% 2.29/1.00      | v1_zfmisc_1(sK3) = iProver_top ),
% 2.29/1.00      inference(superposition,[status(thm)],[c_2304,c_2572]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_0,plain,
% 2.29/1.00      ( r2_hidden(sK0(X0),X0) | v1_xboole_0(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f54]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3,plain,
% 2.29/1.00      ( r1_tarski(k1_tarski(X0),X1) | ~ r2_hidden(X0,X1) ),
% 2.29/1.00      inference(cnf_transformation,[],[f57]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_229,plain,
% 2.29/1.00      ( ~ r2_hidden(X0,X1) | r1_tarski(k1_tarski(X0),X1) ),
% 2.29/1.00      inference(prop_impl,[status(thm)],[c_3]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_230,plain,
% 2.29/1.00      ( r1_tarski(k1_tarski(X0),X1) | ~ r2_hidden(X0,X1) ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_229]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_554,plain,
% 2.29/1.00      ( r1_tarski(k1_tarski(X0),X1)
% 2.29/1.00      | v1_xboole_0(X2)
% 2.29/1.00      | X1 != X2
% 2.29/1.00      | sK0(X2) != X0 ),
% 2.29/1.00      inference(resolution_lifted,[status(thm)],[c_0,c_230]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_555,plain,
% 2.29/1.00      ( r1_tarski(k1_tarski(sK0(X0)),X0) | v1_xboole_0(X0) ),
% 2.29/1.00      inference(unflattening,[status(thm)],[c_554]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2298,plain,
% 2.29/1.00      ( r1_tarski(k1_tarski(sK0(X0)),X0) = iProver_top
% 2.29/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_555]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_16,plain,
% 2.29/1.00      ( ~ r1_tarski(X0,X1)
% 2.29/1.00      | ~ v1_zfmisc_1(X1)
% 2.29/1.00      | v1_xboole_0(X0)
% 2.29/1.00      | v1_xboole_0(X1)
% 2.29/1.00      | X1 = X0 ),
% 2.29/1.00      inference(cnf_transformation,[],[f69]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_6,plain,
% 2.29/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.29/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_5,plain,
% 2.29/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.29/1.00      | ~ v1_xboole_0(X1)
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_170,plain,
% 2.29/1.00      ( v1_xboole_0(X0)
% 2.29/1.00      | ~ v1_zfmisc_1(X1)
% 2.29/1.00      | ~ r1_tarski(X0,X1)
% 2.29/1.00      | X1 = X0 ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_16,c_6,c_5]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_171,plain,
% 2.29/1.00      ( ~ r1_tarski(X0,X1)
% 2.29/1.00      | ~ v1_zfmisc_1(X1)
% 2.29/1.00      | v1_xboole_0(X0)
% 2.29/1.00      | X1 = X0 ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_170]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2301,plain,
% 2.29/1.00      ( X0 = X1
% 2.29/1.00      | r1_tarski(X1,X0) != iProver_top
% 2.29/1.00      | v1_zfmisc_1(X0) != iProver_top
% 2.29/1.00      | v1_xboole_0(X1) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_171]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3604,plain,
% 2.29/1.00      ( k1_tarski(sK0(X0)) = X0
% 2.29/1.00      | v1_zfmisc_1(X0) != iProver_top
% 2.29/1.00      | v1_xboole_0(X0) = iProver_top
% 2.29/1.00      | v1_xboole_0(k1_tarski(sK0(X0))) = iProver_top ),
% 2.29/1.00      inference(superposition,[status(thm)],[c_2298,c_2301]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2,plain,
% 2.29/1.00      ( ~ v1_xboole_0(k1_tarski(X0)) ),
% 2.29/1.00      inference(cnf_transformation,[],[f55]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2309,plain,
% 2.29/1.00      ( v1_xboole_0(k1_tarski(X0)) != iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_4070,plain,
% 2.29/1.00      ( k1_tarski(sK0(X0)) = X0
% 2.29/1.00      | v1_zfmisc_1(X0) != iProver_top
% 2.29/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.29/1.00      inference(forward_subsumption_resolution,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_3604,c_2309]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_4074,plain,
% 2.29/1.00      ( u1_struct_0(sK1(sK2,sK3)) = sK3
% 2.29/1.00      | k1_tarski(sK0(sK3)) = sK3
% 2.29/1.00      | v1_xboole_0(sK3) = iProver_top ),
% 2.29/1.00      inference(superposition,[status(thm)],[c_2577,c_4070]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_36,plain,
% 2.29/1.00      ( v2_tex_2(sK3,sK2) = iProver_top
% 2.29/1.00      | v1_zfmisc_1(sK3) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_22,negated_conjecture,
% 2.29/1.00      ( ~ v2_tex_2(sK3,sK2) | ~ v1_zfmisc_1(sK3) ),
% 2.29/1.00      inference(cnf_transformation,[],[f82]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_37,plain,
% 2.29/1.00      ( v2_tex_2(sK3,sK2) != iProver_top
% 2.29/1.00      | v1_zfmisc_1(sK3) != iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2452,plain,
% 2.29/1.00      ( r1_tarski(k1_tarski(sK0(sK3)),sK3) | v1_xboole_0(sK3) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_555]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2453,plain,
% 2.29/1.00      ( r1_tarski(k1_tarski(sK0(sK3)),sK3) = iProver_top
% 2.29/1.00      | v1_xboole_0(sK3) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_2452]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1829,plain,( X0 = X0 ),theory(equality) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2592,plain,
% 2.29/1.00      ( sK3 = sK3 ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_1829]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2503,plain,
% 2.29/1.00      ( ~ r1_tarski(k1_tarski(X0),X1)
% 2.29/1.00      | ~ v1_zfmisc_1(X1)
% 2.29/1.00      | v1_xboole_0(k1_tarski(X0))
% 2.29/1.00      | X1 = k1_tarski(X0) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_171]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2805,plain,
% 2.29/1.00      ( ~ r1_tarski(k1_tarski(X0),sK3)
% 2.29/1.00      | ~ v1_zfmisc_1(sK3)
% 2.29/1.00      | v1_xboole_0(k1_tarski(X0))
% 2.29/1.00      | sK3 = k1_tarski(X0) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2503]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2825,plain,
% 2.29/1.00      ( ~ r1_tarski(k1_tarski(sK0(sK3)),sK3)
% 2.29/1.00      | ~ v1_zfmisc_1(sK3)
% 2.29/1.00      | v1_xboole_0(k1_tarski(sK0(sK3)))
% 2.29/1.00      | sK3 = k1_tarski(sK0(sK3)) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2805]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2827,plain,
% 2.29/1.00      ( sK3 = k1_tarski(sK0(sK3))
% 2.29/1.00      | r1_tarski(k1_tarski(sK0(sK3)),sK3) != iProver_top
% 2.29/1.00      | v1_zfmisc_1(sK3) != iProver_top
% 2.29/1.00      | v1_xboole_0(k1_tarski(sK0(sK3))) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_2825]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2846,plain,
% 2.29/1.00      ( ~ v1_xboole_0(k1_tarski(sK0(sK3))) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2847,plain,
% 2.29/1.00      ( v1_xboole_0(k1_tarski(sK0(sK3))) != iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_2846]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1832,plain,
% 2.29/1.00      ( X0 != X1 | k1_tarski(X0) = k1_tarski(X1) ),
% 2.29/1.00      theory(equality) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2704,plain,
% 2.29/1.00      ( X0 != sK0(sK3) | k1_tarski(X0) = k1_tarski(sK0(sK3)) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_1832]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2906,plain,
% 2.29/1.00      ( k1_tarski(sK0(sK3)) = k1_tarski(sK0(sK3))
% 2.29/1.00      | sK0(sK3) != sK0(sK3) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2704]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2907,plain,
% 2.29/1.00      ( sK0(sK3) = sK0(sK3) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_1829]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1830,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2559,plain,
% 2.29/1.00      ( X0 != X1 | sK3 != X1 | sK3 = X0 ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_1830]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2729,plain,
% 2.29/1.00      ( X0 != sK3 | sK3 = X0 | sK3 != sK3 ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2559]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2931,plain,
% 2.29/1.00      ( u1_struct_0(sK1(sK2,sK3)) != sK3
% 2.29/1.00      | sK3 = u1_struct_0(sK1(sK2,sK3))
% 2.29/1.00      | sK3 != sK3 ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2729]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_19,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | v1_tdlat_3(sK1(X1,X0))
% 2.29/1.00      | ~ v2_pre_topc(X1)
% 2.29/1.00      | ~ l1_pre_topc(X1)
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f71]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1093,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | v1_tdlat_3(sK1(X1,X0))
% 2.29/1.00      | ~ l1_pre_topc(X1)
% 2.29/1.00      | v1_xboole_0(X0)
% 2.29/1.00      | sK2 != X1 ),
% 2.29/1.00      inference(resolution_lifted,[status(thm)],[c_19,c_28]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1094,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | v2_struct_0(sK2)
% 2.29/1.00      | v1_tdlat_3(sK1(sK2,X0))
% 2.29/1.00      | ~ l1_pre_topc(sK2)
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(unflattening,[status(thm)],[c_1093]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1098,plain,
% 2.29/1.00      ( v1_tdlat_3(sK1(sK2,X0))
% 2.29/1.00      | ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_1094,c_29,c_26]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1099,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | v1_tdlat_3(sK1(sK2,X0))
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_1098]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_20,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ v2_struct_0(sK1(X1,X0))
% 2.29/1.00      | ~ v2_pre_topc(X1)
% 2.29/1.00      | ~ l1_pre_topc(X1)
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f70]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1069,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ v2_struct_0(sK1(X1,X0))
% 2.29/1.00      | ~ l1_pre_topc(X1)
% 2.29/1.00      | v1_xboole_0(X0)
% 2.29/1.00      | sK2 != X1 ),
% 2.29/1.00      inference(resolution_lifted,[status(thm)],[c_20,c_28]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1070,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | ~ v2_struct_0(sK1(sK2,X0))
% 2.29/1.00      | v2_struct_0(sK2)
% 2.29/1.00      | ~ l1_pre_topc(sK2)
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(unflattening,[status(thm)],[c_1069]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1074,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | ~ v2_struct_0(sK1(sK2,X0))
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_1070,c_29,c_26]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_18,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,X1)
% 2.29/1.00      | m1_pre_topc(sK1(X1,X0),X1)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ v2_pre_topc(X1)
% 2.29/1.00      | ~ l1_pre_topc(X1)
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f72]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_14,plain,
% 2.29/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | ~ v1_tdlat_3(X0)
% 2.29/1.00      | ~ v2_tdlat_3(X1)
% 2.29/1.00      | ~ v2_pre_topc(X1)
% 2.29/1.00      | v7_struct_0(X0)
% 2.29/1.00      | ~ l1_pre_topc(X1) ),
% 2.29/1.00      inference(cnf_transformation,[],[f68]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_9,plain,
% 2.29/1.00      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_11,plain,
% 2.29/1.00      ( ~ v7_struct_0(X0)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(X0))
% 2.29/1.00      | ~ l1_struct_0(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f64]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_406,plain,
% 2.29/1.00      ( ~ v7_struct_0(X0)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(X0))
% 2.29/1.00      | ~ l1_pre_topc(X0) ),
% 2.29/1.00      inference(resolution,[status(thm)],[c_9,c_11]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_424,plain,
% 2.29/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ v1_tdlat_3(X0)
% 2.29/1.00      | ~ v2_tdlat_3(X1)
% 2.29/1.00      | ~ v2_pre_topc(X1)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(X0))
% 2.29/1.00      | ~ l1_pre_topc(X0)
% 2.29/1.00      | ~ l1_pre_topc(X1) ),
% 2.29/1.00      inference(resolution,[status(thm)],[c_14,c_406]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_10,plain,
% 2.29/1.00      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f63]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_428,plain,
% 2.29/1.00      ( v1_zfmisc_1(u1_struct_0(X0))
% 2.29/1.00      | ~ v2_pre_topc(X1)
% 2.29/1.00      | ~ v2_tdlat_3(X1)
% 2.29/1.00      | ~ v1_tdlat_3(X0)
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | ~ m1_pre_topc(X0,X1)
% 2.29/1.00      | ~ l1_pre_topc(X1) ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_424,c_10]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_429,plain,
% 2.29/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ v1_tdlat_3(X0)
% 2.29/1.00      | ~ v2_tdlat_3(X1)
% 2.29/1.00      | ~ v2_pre_topc(X1)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(X0))
% 2.29/1.00      | ~ l1_pre_topc(X1) ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_428]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_13,plain,
% 2.29/1.00      ( ~ v2_tdlat_3(X0) | v2_pre_topc(X0) | ~ l1_pre_topc(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_448,plain,
% 2.29/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ v1_tdlat_3(X0)
% 2.29/1.00      | ~ v2_tdlat_3(X1)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(X0))
% 2.29/1.00      | ~ l1_pre_topc(X1) ),
% 2.29/1.00      inference(forward_subsumption_resolution,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_429,c_13]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_27,negated_conjecture,
% 2.29/1.00      ( v2_tdlat_3(sK2) ),
% 2.29/1.00      inference(cnf_transformation,[],[f77]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_469,plain,
% 2.29/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ v1_tdlat_3(X0)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(X0))
% 2.29/1.00      | ~ l1_pre_topc(X1)
% 2.29/1.00      | sK2 != X1 ),
% 2.29/1.00      inference(resolution_lifted,[status(thm)],[c_448,c_27]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_470,plain,
% 2.29/1.00      ( ~ m1_pre_topc(X0,sK2)
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | v2_struct_0(sK2)
% 2.29/1.00      | ~ v1_tdlat_3(X0)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(X0))
% 2.29/1.00      | ~ l1_pre_topc(sK2) ),
% 2.29/1.00      inference(unflattening,[status(thm)],[c_469]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_474,plain,
% 2.29/1.00      ( v1_zfmisc_1(u1_struct_0(X0))
% 2.29/1.00      | ~ v1_tdlat_3(X0)
% 2.29/1.00      | ~ m1_pre_topc(X0,sK2)
% 2.29/1.00      | v2_struct_0(X0) ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_470,c_29,c_26]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_475,plain,
% 2.29/1.00      ( ~ m1_pre_topc(X0,sK2)
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | ~ v1_tdlat_3(X0)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(X0)) ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_474]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_717,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.29/1.00      | v2_struct_0(X2)
% 2.29/1.00      | v2_struct_0(X1)
% 2.29/1.00      | ~ v1_tdlat_3(X2)
% 2.29/1.00      | ~ v2_pre_topc(X1)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(X2))
% 2.29/1.00      | ~ l1_pre_topc(X1)
% 2.29/1.00      | v1_xboole_0(X0)
% 2.29/1.00      | sK1(X1,X0) != X2
% 2.29/1.00      | sK2 != X1 ),
% 2.29/1.00      inference(resolution_lifted,[status(thm)],[c_18,c_475]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_718,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | v2_struct_0(sK1(sK2,X0))
% 2.29/1.00      | v2_struct_0(sK2)
% 2.29/1.00      | ~ v1_tdlat_3(sK1(sK2,X0))
% 2.29/1.00      | ~ v2_pre_topc(sK2)
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
% 2.29/1.00      | ~ l1_pre_topc(sK2)
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(unflattening,[status(thm)],[c_717]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_722,plain,
% 2.29/1.00      ( v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
% 2.29/1.00      | v2_struct_0(sK1(sK2,X0))
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ v1_tdlat_3(sK1(sK2,X0))
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_718,c_29,c_28,c_26]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_723,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | v2_struct_0(sK1(sK2,X0))
% 2.29/1.00      | ~ v1_tdlat_3(sK1(sK2,X0))
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_722]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1152,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | ~ v1_tdlat_3(sK1(sK2,X0))
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(backward_subsumption_resolution,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_1074,c_723]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1161,plain,
% 2.29/1.00      ( ~ v2_tex_2(X0,sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0)))
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(backward_subsumption_resolution,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_1099,c_1152]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2294,plain,
% 2.29/1.00      ( v2_tex_2(X0,sK2) != iProver_top
% 2.29/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(sK1(sK2,X0))) = iProver_top
% 2.29/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_1161]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3007,plain,
% 2.29/1.00      ( v2_tex_2(sK3,sK2) != iProver_top
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(sK1(sK2,sK3))) = iProver_top
% 2.29/1.00      | v1_xboole_0(sK3) = iProver_top ),
% 2.29/1.00      inference(superposition,[status(thm)],[c_2303,c_2294]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1837,plain,
% 2.29/1.00      ( ~ v1_zfmisc_1(X0) | v1_zfmisc_1(X1) | X1 != X0 ),
% 2.29/1.00      theory(equality) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2970,plain,
% 2.29/1.00      ( v1_zfmisc_1(X0)
% 2.29/1.00      | ~ v1_zfmisc_1(u1_struct_0(sK1(sK2,sK3)))
% 2.29/1.00      | X0 != u1_struct_0(sK1(sK2,sK3)) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_1837]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3520,plain,
% 2.29/1.00      ( ~ v1_zfmisc_1(u1_struct_0(sK1(sK2,sK3)))
% 2.29/1.00      | v1_zfmisc_1(sK3)
% 2.29/1.00      | sK3 != u1_struct_0(sK1(sK2,sK3)) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2970]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3521,plain,
% 2.29/1.00      ( sK3 != u1_struct_0(sK1(sK2,sK3))
% 2.29/1.00      | v1_zfmisc_1(u1_struct_0(sK1(sK2,sK3))) != iProver_top
% 2.29/1.00      | v1_zfmisc_1(sK3) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_3520]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2713,plain,
% 2.29/1.00      ( X0 != X1 | k1_tarski(X2) != X1 | k1_tarski(X2) = X0 ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_1830]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3119,plain,
% 2.29/1.00      ( X0 != k1_tarski(X1)
% 2.29/1.00      | k1_tarski(X1) = X0
% 2.29/1.00      | k1_tarski(X1) != k1_tarski(X1) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2713]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3944,plain,
% 2.29/1.00      ( k1_tarski(sK0(sK3)) != k1_tarski(sK0(sK3))
% 2.29/1.00      | k1_tarski(sK0(sK3)) = sK3
% 2.29/1.00      | sK3 != k1_tarski(sK0(sK3)) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_3119]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_4176,plain,
% 2.29/1.00      ( k1_tarski(sK0(sK3)) = sK3 ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_4074,c_34,c_36,c_37,c_2453,c_2539,c_2592,c_2827,
% 2.29/1.00                 c_2847,c_2906,c_2907,c_2931,c_3007,c_3521,c_3944]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_4,plain,
% 2.29/1.00      ( ~ r1_tarski(k1_tarski(X0),X1) | r2_hidden(X0,X1) ),
% 2.29/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_227,plain,
% 2.29/1.00      ( r2_hidden(X0,X1) | ~ r1_tarski(k1_tarski(X0),X1) ),
% 2.29/1.00      inference(prop_impl,[status(thm)],[c_4]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_228,plain,
% 2.29/1.00      ( ~ r1_tarski(k1_tarski(X0),X1) | r2_hidden(X0,X1) ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_227]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_8,plain,
% 2.29/1.00      ( m1_subset_1(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.29/1.00      | ~ r2_hidden(X0,X2) ),
% 2.29/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_583,plain,
% 2.29/1.00      ( m1_subset_1(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.29/1.00      | ~ r1_tarski(k1_tarski(X3),X4)
% 2.29/1.00      | X0 != X3
% 2.29/1.00      | X2 != X4 ),
% 2.29/1.00      inference(resolution_lifted,[status(thm)],[c_228,c_8]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_584,plain,
% 2.29/1.00      ( m1_subset_1(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.29/1.00      | ~ r1_tarski(k1_tarski(X0),X2) ),
% 2.29/1.00      inference(unflattening,[status(thm)],[c_583]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2297,plain,
% 2.29/1.00      ( m1_subset_1(X0,X1) = iProver_top
% 2.29/1.00      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 2.29/1.00      | r1_tarski(k1_tarski(X0),X2) != iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_584]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3135,plain,
% 2.29/1.00      ( m1_subset_1(X0,u1_struct_0(sK2)) = iProver_top
% 2.29/1.00      | r1_tarski(k1_tarski(X0),sK3) != iProver_top ),
% 2.29/1.00      inference(superposition,[status(thm)],[c_2303,c_2297]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3450,plain,
% 2.29/1.00      ( m1_subset_1(sK0(sK3),u1_struct_0(sK2)) = iProver_top
% 2.29/1.00      | v1_xboole_0(sK3) = iProver_top ),
% 2.29/1.00      inference(superposition,[status(thm)],[c_2298,c_3135]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_35,plain,
% 2.29/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_7,plain,
% 2.29/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.29/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2459,plain,
% 2.29/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.29/1.00      | r1_tarski(sK3,u1_struct_0(sK2)) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2460,plain,
% 2.29/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.29/1.00      | r1_tarski(sK3,u1_struct_0(sK2)) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_2459]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_568,plain,
% 2.29/1.00      ( m1_subset_1(X0,X1)
% 2.29/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.29/1.00      | v1_xboole_0(X3)
% 2.29/1.00      | X2 != X3
% 2.29/1.00      | sK0(X3) != X0 ),
% 2.29/1.00      inference(resolution_lifted,[status(thm)],[c_0,c_8]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_569,plain,
% 2.29/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.29/1.00      | m1_subset_1(sK0(X0),X1)
% 2.29/1.00      | v1_xboole_0(X0) ),
% 2.29/1.00      inference(unflattening,[status(thm)],[c_568]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1404,plain,
% 2.29/1.00      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.29/1.00      inference(prop_impl,[status(thm)],[c_6]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1405,plain,
% 2.29/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_1404]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1444,plain,
% 2.29/1.00      ( m1_subset_1(sK0(X0),X1) | ~ r1_tarski(X0,X1) | v1_xboole_0(X0) ),
% 2.29/1.00      inference(bin_hyper_res,[status(thm)],[c_569,c_1405]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2488,plain,
% 2.29/1.00      ( m1_subset_1(sK0(sK3),X0)
% 2.29/1.00      | ~ r1_tarski(sK3,X0)
% 2.29/1.00      | v1_xboole_0(sK3) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_1444]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2564,plain,
% 2.29/1.00      ( m1_subset_1(sK0(sK3),u1_struct_0(sK2))
% 2.29/1.00      | ~ r1_tarski(sK3,u1_struct_0(sK2))
% 2.29/1.00      | v1_xboole_0(sK3) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2488]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2565,plain,
% 2.29/1.00      ( m1_subset_1(sK0(sK3),u1_struct_0(sK2)) = iProver_top
% 2.29/1.00      | r1_tarski(sK3,u1_struct_0(sK2)) != iProver_top
% 2.29/1.00      | v1_xboole_0(sK3) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_2564]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3488,plain,
% 2.29/1.00      ( m1_subset_1(sK0(sK3),u1_struct_0(sK2)) = iProver_top ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_3450,c_34,c_35,c_2460,c_2565]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_12,plain,
% 2.29/1.00      ( ~ m1_subset_1(X0,X1)
% 2.29/1.00      | v1_xboole_0(X1)
% 2.29/1.00      | k6_domain_1(X1,X0) = k1_tarski(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f65]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2306,plain,
% 2.29/1.00      ( k6_domain_1(X0,X1) = k1_tarski(X1)
% 2.29/1.00      | m1_subset_1(X1,X0) != iProver_top
% 2.29/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3493,plain,
% 2.29/1.00      ( k6_domain_1(u1_struct_0(sK2),sK0(sK3)) = k1_tarski(sK0(sK3))
% 2.29/1.00      | v1_xboole_0(u1_struct_0(sK2)) = iProver_top ),
% 2.29/1.00      inference(superposition,[status(thm)],[c_3488,c_2306]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_233,plain,
% 2.29/1.00      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.29/1.00      inference(prop_impl,[status(thm)],[c_6]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_234,plain,
% 2.29/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.29/1.00      inference(renaming,[status(thm)],[c_233]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_296,plain,
% 2.29/1.00      ( ~ r1_tarski(X0,X1) | ~ v1_xboole_0(X1) | v1_xboole_0(X0) ),
% 2.29/1.00      inference(bin_hyper_res,[status(thm)],[c_5,c_234]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2463,plain,
% 2.29/1.00      ( ~ r1_tarski(sK3,X0) | ~ v1_xboole_0(X0) | v1_xboole_0(sK3) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_296]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2556,plain,
% 2.29/1.00      ( ~ r1_tarski(sK3,u1_struct_0(sK2))
% 2.29/1.00      | ~ v1_xboole_0(u1_struct_0(sK2))
% 2.29/1.00      | v1_xboole_0(sK3) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2463]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2658,plain,
% 2.29/1.00      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.29/1.00      | v1_xboole_0(u1_struct_0(sK2))
% 2.29/1.00      | k6_domain_1(u1_struct_0(sK2),X0) = k1_tarski(X0) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_12]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3089,plain,
% 2.29/1.00      ( ~ m1_subset_1(sK0(sK3),u1_struct_0(sK2))
% 2.29/1.00      | v1_xboole_0(u1_struct_0(sK2))
% 2.29/1.00      | k6_domain_1(u1_struct_0(sK2),sK0(sK3)) = k1_tarski(sK0(sK3)) ),
% 2.29/1.00      inference(instantiation,[status(thm)],[c_2658]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3528,plain,
% 2.29/1.00      ( k6_domain_1(u1_struct_0(sK2),sK0(sK3)) = k1_tarski(sK0(sK3)) ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_3493,c_25,c_24,c_2459,c_2556,c_2564,c_3089]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_21,plain,
% 2.29/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
% 2.29/1.00      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | ~ v2_pre_topc(X0)
% 2.29/1.00      | ~ l1_pre_topc(X0) ),
% 2.29/1.00      inference(cnf_transformation,[],[f74]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1027,plain,
% 2.29/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
% 2.29/1.00      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.29/1.00      | v2_struct_0(X0)
% 2.29/1.00      | ~ l1_pre_topc(X0)
% 2.29/1.00      | sK2 != X0 ),
% 2.29/1.00      inference(resolution_lifted,[status(thm)],[c_21,c_28]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1028,plain,
% 2.29/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(sK2),X0),sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.29/1.00      | v2_struct_0(sK2)
% 2.29/1.00      | ~ l1_pre_topc(sK2) ),
% 2.29/1.00      inference(unflattening,[status(thm)],[c_1027]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_1032,plain,
% 2.29/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(sK2),X0),sK2)
% 2.29/1.00      | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_1028,c_29,c_26]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_2296,plain,
% 2.29/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(sK2),X0),sK2) = iProver_top
% 2.29/1.00      | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
% 2.29/1.00      inference(predicate_to_equality,[status(thm)],[c_1032]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3531,plain,
% 2.29/1.00      ( v2_tex_2(k1_tarski(sK0(sK3)),sK2) = iProver_top
% 2.29/1.00      | m1_subset_1(sK0(sK3),u1_struct_0(sK2)) != iProver_top ),
% 2.29/1.00      inference(superposition,[status(thm)],[c_3528,c_2296]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_3534,plain,
% 2.29/1.00      ( v2_tex_2(k1_tarski(sK0(sK3)),sK2) = iProver_top ),
% 2.29/1.00      inference(global_propositional_subsumption,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_3531,c_34,c_35,c_2460,c_2565]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(c_4179,plain,
% 2.29/1.00      ( v2_tex_2(sK3,sK2) = iProver_top ),
% 2.29/1.00      inference(demodulation,[status(thm)],[c_4176,c_3534]) ).
% 2.29/1.00  
% 2.29/1.00  cnf(contradiction,plain,
% 2.29/1.00      ( $false ),
% 2.29/1.00      inference(minisat,
% 2.29/1.00                [status(thm)],
% 2.29/1.00                [c_4179,c_3521,c_3007,c_2931,c_2592,c_2539,c_37,c_34]) ).
% 2.29/1.00  
% 2.29/1.00  
% 2.29/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.29/1.00  
% 2.29/1.00  ------                               Statistics
% 2.29/1.00  
% 2.29/1.00  ------ General
% 2.29/1.00  
% 2.29/1.00  abstr_ref_over_cycles:                  0
% 2.29/1.00  abstr_ref_under_cycles:                 0
% 2.29/1.00  gc_basic_clause_elim:                   0
% 2.29/1.00  forced_gc_time:                         0
% 2.29/1.00  parsing_time:                           0.009
% 2.29/1.00  unif_index_cands_time:                  0.
% 2.29/1.00  unif_index_add_time:                    0.
% 2.29/1.00  orderings_time:                         0.
% 2.29/1.00  out_proof_time:                         0.012
% 2.29/1.00  total_time:                             0.136
% 2.29/1.00  num_of_symbols:                         53
% 2.29/1.00  num_of_terms:                           2381
% 2.29/1.00  
% 2.29/1.00  ------ Preprocessing
% 2.29/1.00  
% 2.29/1.00  num_of_splits:                          0
% 2.29/1.00  num_of_split_atoms:                     0
% 2.29/1.00  num_of_reused_defs:                     0
% 2.29/1.00  num_eq_ax_congr_red:                    18
% 2.29/1.00  num_of_sem_filtered_clauses:            1
% 2.29/1.00  num_of_subtypes:                        0
% 2.29/1.00  monotx_restored_types:                  0
% 2.29/1.00  sat_num_of_epr_types:                   0
% 2.29/1.00  sat_num_of_non_cyclic_types:            0
% 2.29/1.00  sat_guarded_non_collapsed_types:        0
% 2.29/1.00  num_pure_diseq_elim:                    0
% 2.29/1.00  simp_replaced_by:                       0
% 2.29/1.00  res_preprocessed:                       105
% 2.29/1.00  prep_upred:                             0
% 2.29/1.00  prep_unflattend:                        62
% 2.29/1.00  smt_new_axioms:                         0
% 2.29/1.00  pred_elim_cands:                        5
% 2.29/1.00  pred_elim:                              9
% 2.29/1.00  pred_elim_cl:                           12
% 2.29/1.00  pred_elim_cycles:                       19
% 2.29/1.00  merged_defs:                            18
% 2.29/1.00  merged_defs_ncl:                        0
% 2.29/1.00  bin_hyper_res:                          20
% 2.29/1.00  prep_cycles:                            4
% 2.29/1.00  pred_elim_time:                         0.024
% 2.29/1.00  splitting_time:                         0.
% 2.29/1.00  sem_filter_time:                        0.
% 2.29/1.00  monotx_time:                            0.001
% 2.29/1.00  subtype_inf_time:                       0.
% 2.29/1.00  
% 2.29/1.00  ------ Problem properties
% 2.29/1.00  
% 2.29/1.00  clauses:                                17
% 2.29/1.00  conjectures:                            4
% 2.29/1.00  epr:                                    5
% 2.29/1.00  horn:                                   10
% 2.29/1.00  ground:                                 4
% 2.29/1.00  unary:                                  3
% 2.29/1.00  binary:                                 7
% 2.29/1.00  lits:                                   41
% 2.29/1.00  lits_eq:                                3
% 2.29/1.00  fd_pure:                                0
% 2.29/1.00  fd_pseudo:                              0
% 2.29/1.00  fd_cond:                                0
% 2.29/1.00  fd_pseudo_cond:                         1
% 2.29/1.00  ac_symbols:                             0
% 2.29/1.00  
% 2.29/1.00  ------ Propositional Solver
% 2.29/1.00  
% 2.29/1.00  prop_solver_calls:                      28
% 2.29/1.00  prop_fast_solver_calls:                 1008
% 2.29/1.00  smt_solver_calls:                       0
% 2.29/1.00  smt_fast_solver_calls:                  0
% 2.29/1.00  prop_num_of_clauses:                    1081
% 2.29/1.00  prop_preprocess_simplified:             4206
% 2.29/1.00  prop_fo_subsumed:                       38
% 2.29/1.00  prop_solver_time:                       0.
% 2.29/1.00  smt_solver_time:                        0.
% 2.29/1.00  smt_fast_solver_time:                   0.
% 2.29/1.00  prop_fast_solver_time:                  0.
% 2.29/1.00  prop_unsat_core_time:                   0.
% 2.29/1.00  
% 2.29/1.00  ------ QBF
% 2.29/1.00  
% 2.29/1.00  qbf_q_res:                              0
% 2.29/1.00  qbf_num_tautologies:                    0
% 2.29/1.00  qbf_prep_cycles:                        0
% 2.29/1.00  
% 2.29/1.00  ------ BMC1
% 2.29/1.00  
% 2.29/1.00  bmc1_current_bound:                     -1
% 2.29/1.00  bmc1_last_solved_bound:                 -1
% 2.29/1.00  bmc1_unsat_core_size:                   -1
% 2.29/1.00  bmc1_unsat_core_parents_size:           -1
% 2.29/1.00  bmc1_merge_next_fun:                    0
% 2.29/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.29/1.00  
% 2.29/1.00  ------ Instantiation
% 2.29/1.00  
% 2.29/1.00  inst_num_of_clauses:                    278
% 2.29/1.00  inst_num_in_passive:                    59
% 2.29/1.00  inst_num_in_active:                     191
% 2.29/1.00  inst_num_in_unprocessed:                28
% 2.29/1.00  inst_num_of_loops:                      230
% 2.29/1.00  inst_num_of_learning_restarts:          0
% 2.29/1.00  inst_num_moves_active_passive:          36
% 2.29/1.00  inst_lit_activity:                      0
% 2.29/1.00  inst_lit_activity_moves:                0
% 2.29/1.00  inst_num_tautologies:                   0
% 2.29/1.00  inst_num_prop_implied:                  0
% 2.29/1.00  inst_num_existing_simplified:           0
% 2.29/1.00  inst_num_eq_res_simplified:             0
% 2.29/1.00  inst_num_child_elim:                    0
% 2.29/1.00  inst_num_of_dismatching_blockings:      60
% 2.29/1.00  inst_num_of_non_proper_insts:           294
% 2.29/1.00  inst_num_of_duplicates:                 0
% 2.29/1.00  inst_inst_num_from_inst_to_res:         0
% 2.29/1.00  inst_dismatching_checking_time:         0.
% 2.29/1.00  
% 2.29/1.00  ------ Resolution
% 2.29/1.00  
% 2.29/1.00  res_num_of_clauses:                     0
% 2.29/1.00  res_num_in_passive:                     0
% 2.29/1.00  res_num_in_active:                      0
% 2.29/1.00  res_num_of_loops:                       109
% 2.29/1.00  res_forward_subset_subsumed:            44
% 2.29/1.00  res_backward_subset_subsumed:           0
% 2.29/1.00  res_forward_subsumed:                   0
% 2.29/1.00  res_backward_subsumed:                  0
% 2.29/1.00  res_forward_subsumption_resolution:     3
% 2.29/1.00  res_backward_subsumption_resolution:    2
% 2.29/1.00  res_clause_to_clause_subsumption:       147
% 2.29/1.00  res_orphan_elimination:                 0
% 2.29/1.00  res_tautology_del:                      119
% 2.29/1.00  res_num_eq_res_simplified:              0
% 2.29/1.00  res_num_sel_changes:                    0
% 2.29/1.00  res_moves_from_active_to_pass:          0
% 2.29/1.00  
% 2.29/1.00  ------ Superposition
% 2.29/1.00  
% 2.29/1.00  sup_time_total:                         0.
% 2.29/1.00  sup_time_generating:                    0.
% 2.29/1.00  sup_time_sim_full:                      0.
% 2.29/1.00  sup_time_sim_immed:                     0.
% 2.29/1.00  
% 2.29/1.00  sup_num_of_clauses:                     52
% 2.29/1.00  sup_num_in_active:                      41
% 2.29/1.00  sup_num_in_passive:                     11
% 2.29/1.00  sup_num_of_loops:                       44
% 2.29/1.00  sup_fw_superposition:                   25
% 2.29/1.00  sup_bw_superposition:                   20
% 2.29/1.00  sup_immediate_simplified:               1
% 2.29/1.00  sup_given_eliminated:                   0
% 2.29/1.00  comparisons_done:                       0
% 2.29/1.00  comparisons_avoided:                    0
% 2.29/1.00  
% 2.29/1.00  ------ Simplifications
% 2.29/1.00  
% 2.29/1.00  
% 2.29/1.00  sim_fw_subset_subsumed:                 1
% 2.29/1.00  sim_bw_subset_subsumed:                 1
% 2.29/1.00  sim_fw_subsumed:                        0
% 2.29/1.00  sim_bw_subsumed:                        0
% 2.29/1.00  sim_fw_subsumption_res:                 4
% 2.29/1.00  sim_bw_subsumption_res:                 0
% 2.29/1.00  sim_tautology_del:                      4
% 2.29/1.00  sim_eq_tautology_del:                   0
% 2.29/1.00  sim_eq_res_simp:                        0
% 2.29/1.00  sim_fw_demodulated:                     0
% 2.29/1.00  sim_bw_demodulated:                     2
% 2.29/1.00  sim_light_normalised:                   0
% 2.29/1.00  sim_joinable_taut:                      0
% 2.29/1.00  sim_joinable_simp:                      0
% 2.29/1.00  sim_ac_normalised:                      0
% 2.29/1.00  sim_smt_subsumption:                    0
% 2.29/1.00  
%------------------------------------------------------------------------------
