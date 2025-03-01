%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:26:55 EST 2020

% Result     : Theorem 3.12s
% Output     : CNFRefutation 3.12s
% Verified   : 
% Statistics : Number of formulae       :  227 (2301 expanded)
%              Number of clauses        :  141 ( 564 expanded)
%              Number of leaves         :   24 ( 524 expanded)
%              Depth                    :   35
%              Number of atoms          :  865 (16531 expanded)
%              Number of equality atoms :  181 ( 691 expanded)
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

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

fof(f37,plain,(
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
    inference(flattening,[],[f37])).

fof(f52,plain,(
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
    inference(nnf_transformation,[],[f38])).

fof(f53,plain,(
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
    inference(flattening,[],[f52])).

fof(f55,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( ~ v1_zfmisc_1(X1)
            | ~ v2_tex_2(X1,X0) )
          & ( v1_zfmisc_1(X1)
            | v2_tex_2(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & ~ v1_xboole_0(X1) )
     => ( ( ~ v1_zfmisc_1(sK4)
          | ~ v2_tex_2(sK4,X0) )
        & ( v1_zfmisc_1(sK4)
          | v2_tex_2(sK4,X0) )
        & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X0)))
        & ~ v1_xboole_0(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f54,plain,
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
            | ~ v2_tex_2(X1,sK3) )
          & ( v1_zfmisc_1(X1)
            | v2_tex_2(X1,sK3) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
          & ~ v1_xboole_0(X1) )
      & l1_pre_topc(sK3)
      & v2_tdlat_3(sK3)
      & v2_pre_topc(sK3)
      & ~ v2_struct_0(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f56,plain,
    ( ( ~ v1_zfmisc_1(sK4)
      | ~ v2_tex_2(sK4,sK3) )
    & ( v1_zfmisc_1(sK4)
      | v2_tex_2(sK4,sK3) )
    & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3)))
    & ~ v1_xboole_0(sK4)
    & l1_pre_topc(sK3)
    & v2_tdlat_3(sK3)
    & v2_pre_topc(sK3)
    & ~ v2_struct_0(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f53,f55,f54])).

fof(f90,plain,
    ( v1_zfmisc_1(sK4)
    | v2_tex_2(sK4,sK3) ),
    inference(cnf_transformation,[],[f56])).

fof(f89,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f56])).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

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

fof(f33,plain,(
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
    inference(flattening,[],[f33])).

fof(f50,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( u1_struct_0(X2) = X1
          & m1_pre_topc(X2,X0)
          & v1_tdlat_3(X2)
          & ~ v2_struct_0(X2) )
     => ( u1_struct_0(sK2(X0,X1)) = X1
        & m1_pre_topc(sK2(X0,X1),X0)
        & v1_tdlat_3(sK2(X0,X1))
        & ~ v2_struct_0(sK2(X0,X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f51,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( u1_struct_0(sK2(X0,X1)) = X1
            & m1_pre_topc(sK2(X0,X1),X0)
            & v1_tdlat_3(sK2(X0,X1))
            & ~ v2_struct_0(sK2(X0,X1)) )
          | ~ v2_tex_2(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          | v1_xboole_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f34,f50])).

fof(f82,plain,(
    ! [X0,X1] :
      ( u1_struct_0(sK2(X0,X1)) = X1
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f85,plain,(
    v2_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f56])).

fof(f84,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f56])).

fof(f87,plain,(
    l1_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f56])).

fof(f88,plain,(
    ~ v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f56])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f40,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f39])).

fof(f41,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f40,f41])).

fof(f58,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f64,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f13,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ( v1_zfmisc_1(X1)
            & ~ v1_xboole_0(X1) )
         => ( r1_tarski(X0,X1)
           => X0 = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( X0 = X1
          | ~ r1_tarski(X0,X1)
          | ~ v1_zfmisc_1(X1)
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( X0 = X1
          | ~ r1_tarski(X0,X1)
          | ~ v1_zfmisc_1(X1)
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f78,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X0,X1)
      | ~ v1_zfmisc_1(X1)
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f3,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_tarski(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0] : ~ v1_xboole_0(k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f3])).

fof(f57,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f80,plain,(
    ! [X0,X1] :
      ( v1_tdlat_3(sK2(X0,X1))
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f79,plain,(
    ! [X0,X1] :
      ( ~ v2_struct_0(sK2(X0,X1))
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f81,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(sK2(X0,X1),X0)
      | ~ v2_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v1_xboole_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f51])).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
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
    inference(flattening,[],[f29])).

fof(f77,plain,(
    ! [X0,X1] :
      ( ~ v1_tdlat_3(X1)
      | v7_struct_0(X1)
      | v2_struct_0(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f71,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & v7_struct_0(X0) )
     => v1_zfmisc_1(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( v1_zfmisc_1(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | ~ v7_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f24,plain,(
    ! [X0] :
      ( v1_zfmisc_1(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | ~ v7_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f73,plain,(
    ! [X0] :
      ( v1_zfmisc_1(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | ~ v7_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f72,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ( v2_tdlat_3(X0)
       => v2_pre_topc(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( v2_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f28,plain,(
    ! [X0] :
      ( v2_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f27])).

fof(f75,plain,(
    ! [X0] :
      ( v2_pre_topc(X0)
      | ~ v2_tdlat_3(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f86,plain,(
    v2_tdlat_3(sK3) ),
    inference(cnf_transformation,[],[f56])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f43])).

fof(f45,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f44,f45])).

fof(f60,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK1(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK1(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f63,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | ~ r1_tarski(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f69,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f59,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f48,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f66,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f48])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f74,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f15,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f35])).

fof(f83,plain,(
    ! [X0,X1] :
      ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f91,plain,
    ( ~ v1_zfmisc_1(sK4)
    | ~ v2_tex_2(sK4,sK3) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_28,negated_conjecture,
    ( v2_tex_2(sK4,sK3)
    | v1_zfmisc_1(sK4) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_3271,plain,
    ( v2_tex_2(sK4,sK3) = iProver_top
    | v1_zfmisc_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_29,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_3270,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_22,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | u1_struct_0(sK2(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f82])).

cnf(c_33,negated_conjecture,
    ( v2_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_909,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | u1_struct_0(sK2(X1,X0)) = X0
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_33])).

cnf(c_910,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | v2_struct_0(sK3)
    | ~ l1_pre_topc(sK3)
    | v1_xboole_0(X0)
    | u1_struct_0(sK2(sK3,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_909])).

cnf(c_34,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_31,negated_conjecture,
    ( l1_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_914,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | v1_xboole_0(X0)
    | u1_struct_0(sK2(sK3,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_910,c_34,c_31])).

cnf(c_3266,plain,
    ( u1_struct_0(sK2(sK3,X0)) = X0
    | v2_tex_2(X0,sK3) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_914])).

cnf(c_3579,plain,
    ( u1_struct_0(sK2(sK3,sK4)) = sK4
    | v2_tex_2(sK4,sK3) != iProver_top
    | v1_xboole_0(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_3270,c_3266])).

cnf(c_30,negated_conjecture,
    ( ~ v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_39,plain,
    ( v1_xboole_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_1666,plain,
    ( ~ v2_tex_2(X0,sK3)
    | v1_xboole_0(X0)
    | u1_struct_0(sK2(sK3,X0)) = X0
    | k1_zfmisc_1(u1_struct_0(sK3)) != k1_zfmisc_1(u1_struct_0(sK3))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_29,c_914])).

cnf(c_1667,plain,
    ( ~ v2_tex_2(sK4,sK3)
    | v1_xboole_0(sK4)
    | u1_struct_0(sK2(sK3,sK4)) = sK4 ),
    inference(unflattening,[status(thm)],[c_1666])).

cnf(c_1668,plain,
    ( u1_struct_0(sK2(sK3,sK4)) = sK4
    | v2_tex_2(sK4,sK3) != iProver_top
    | v1_xboole_0(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1667])).

cnf(c_3623,plain,
    ( v2_tex_2(sK4,sK3) != iProver_top
    | u1_struct_0(sK2(sK3,sK4)) = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3579,c_39,c_1668])).

cnf(c_3624,plain,
    ( u1_struct_0(sK2(sK3,sK4)) = sK4
    | v2_tex_2(sK4,sK3) != iProver_top ),
    inference(renaming,[status(thm)],[c_3623])).

cnf(c_3629,plain,
    ( u1_struct_0(sK2(sK3,sK4)) = sK4
    | v1_zfmisc_1(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_3271,c_3624])).

cnf(c_0,plain,
    ( r2_hidden(sK0(X0),X0)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_3287,plain,
    ( r2_hidden(sK0(X0),X0) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_6,plain,
    ( r1_tarski(k1_tarski(X0),X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_3281,plain,
    ( r1_tarski(k1_tarski(X0),X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_21,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_zfmisc_1(X1)
    | v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_3273,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | v1_zfmisc_1(X0) != iProver_top
    | v1_xboole_0(X1) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_4097,plain,
    ( k1_tarski(X0) = X1
    | r2_hidden(X0,X1) != iProver_top
    | v1_zfmisc_1(X1) != iProver_top
    | v1_xboole_0(X1) = iProver_top
    | v1_xboole_0(k1_tarski(X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3281,c_3273])).

cnf(c_5,plain,
    ( ~ v1_xboole_0(k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_98,plain,
    ( v1_xboole_0(k1_tarski(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_108,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_5316,plain,
    ( k1_tarski(X0) = X1
    | r2_hidden(X0,X1) != iProver_top
    | v1_zfmisc_1(X1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4097,c_98,c_108])).

cnf(c_5325,plain,
    ( k1_tarski(sK0(X0)) = X0
    | v1_zfmisc_1(X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_3287,c_5316])).

cnf(c_5940,plain,
    ( u1_struct_0(sK2(sK3,sK4)) = sK4
    | k1_tarski(sK0(sK4)) = sK4
    | v1_xboole_0(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_3629,c_5325])).

cnf(c_5985,plain,
    ( v1_xboole_0(sK4)
    | u1_struct_0(sK2(sK3,sK4)) = sK4
    | k1_tarski(sK0(sK4)) = sK4 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_5940])).

cnf(c_6091,plain,
    ( k1_tarski(sK0(sK4)) = sK4
    | u1_struct_0(sK2(sK3,sK4)) = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5940,c_30,c_5985])).

cnf(c_6092,plain,
    ( u1_struct_0(sK2(sK3,sK4)) = sK4
    | k1_tarski(sK0(sK4)) = sK4 ),
    inference(renaming,[status(thm)],[c_6091])).

cnf(c_24,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | v1_tdlat_3(sK2(X1,X0))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_885,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | v1_tdlat_3(sK2(X1,X0))
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_33])).

cnf(c_886,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | v2_struct_0(sK3)
    | v1_tdlat_3(sK2(sK3,X0))
    | ~ l1_pre_topc(sK3)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_885])).

cnf(c_890,plain,
    ( v1_tdlat_3(sK2(sK3,X0))
    | ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | v1_xboole_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_886,c_34,c_31])).

cnf(c_891,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | v1_tdlat_3(sK2(sK3,X0))
    | v1_xboole_0(X0) ),
    inference(renaming,[status(thm)],[c_890])).

cnf(c_25,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_struct_0(sK2(X1,X0))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_861,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_struct_0(sK2(X1,X0))
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_33])).

cnf(c_862,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ v2_struct_0(sK2(sK3,X0))
    | v2_struct_0(sK3)
    | ~ l1_pre_topc(sK3)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_861])).

cnf(c_866,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ v2_struct_0(sK2(sK3,X0))
    | v1_xboole_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_862,c_34,c_31])).

cnf(c_23,plain,
    ( ~ v2_tex_2(X0,X1)
    | m1_pre_topc(sK2(X1,X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_19,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v1_tdlat_3(X0)
    | ~ v2_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | v7_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_14,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_16,plain,
    ( ~ v7_struct_0(X0)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_466,plain,
    ( ~ v7_struct_0(X0)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_14,c_16])).

cnf(c_484,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X0)
    | ~ v2_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1) ),
    inference(resolution,[status(thm)],[c_19,c_466])).

cnf(c_15,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_488,plain,
    ( v1_zfmisc_1(u1_struct_0(X0))
    | ~ v2_pre_topc(X1)
    | ~ v2_tdlat_3(X1)
    | ~ v1_tdlat_3(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_484,c_15])).

cnf(c_489,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X0)
    | ~ v2_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_488])).

cnf(c_18,plain,
    ( ~ v2_tdlat_3(X0)
    | v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_508,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X0)
    | ~ v2_tdlat_3(X1)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_489,c_18])).

cnf(c_32,negated_conjecture,
    ( v2_tdlat_3(sK3) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_529,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X0)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(X1)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_508,c_32])).

cnf(c_530,plain,
    ( ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X0)
    | v2_struct_0(sK3)
    | ~ v1_tdlat_3(X0)
    | v1_zfmisc_1(u1_struct_0(X0))
    | ~ l1_pre_topc(sK3) ),
    inference(unflattening,[status(thm)],[c_529])).

cnf(c_534,plain,
    ( v1_zfmisc_1(u1_struct_0(X0))
    | ~ v1_tdlat_3(X0)
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_530,c_34,c_31])).

cnf(c_535,plain,
    ( ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X0)
    | ~ v1_tdlat_3(X0)
    | v1_zfmisc_1(u1_struct_0(X0)) ),
    inference(renaming,[status(thm)],[c_534])).

cnf(c_629,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ v1_tdlat_3(X2)
    | ~ v2_pre_topc(X1)
    | v1_zfmisc_1(u1_struct_0(X2))
    | ~ l1_pre_topc(X1)
    | v1_xboole_0(X0)
    | sK2(X1,X0) != X2
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_535])).

cnf(c_630,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | v2_struct_0(sK2(sK3,X0))
    | v2_struct_0(sK3)
    | ~ v1_tdlat_3(sK2(sK3,X0))
    | ~ v2_pre_topc(sK3)
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
    | ~ l1_pre_topc(sK3)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_629])).

cnf(c_634,plain,
    ( v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
    | v2_struct_0(sK2(sK3,X0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ v2_tex_2(X0,sK3)
    | ~ v1_tdlat_3(sK2(sK3,X0))
    | v1_xboole_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_630,c_34,c_33,c_31])).

cnf(c_635,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | v2_struct_0(sK2(sK3,X0))
    | ~ v1_tdlat_3(sK2(sK3,X0))
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
    | v1_xboole_0(X0) ),
    inference(renaming,[status(thm)],[c_634])).

cnf(c_944,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ v1_tdlat_3(sK2(sK3,X0))
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
    | v1_xboole_0(X0) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_866,c_635])).

cnf(c_953,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
    | v1_xboole_0(X0) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_891,c_944])).

cnf(c_3265,plain,
    ( v2_tex_2(X0,sK3) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0))) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_953])).

cnf(c_3636,plain,
    ( v2_tex_2(sK4,sK3) != iProver_top
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top
    | v1_xboole_0(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_3270,c_3265])).

cnf(c_1652,plain,
    ( ~ v2_tex_2(X0,sK3)
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
    | v1_xboole_0(X0)
    | k1_zfmisc_1(u1_struct_0(sK3)) != k1_zfmisc_1(u1_struct_0(sK3))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_29,c_953])).

cnf(c_1653,plain,
    ( ~ v2_tex_2(sK4,sK3)
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4)))
    | v1_xboole_0(sK4) ),
    inference(unflattening,[status(thm)],[c_1652])).

cnf(c_1655,plain,
    ( v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4)))
    | ~ v2_tex_2(sK4,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1653,c_30])).

cnf(c_1656,plain,
    ( ~ v2_tex_2(sK4,sK3)
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) ),
    inference(renaming,[status(thm)],[c_1655])).

cnf(c_1657,plain,
    ( v2_tex_2(sK4,sK3) != iProver_top
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1656])).

cnf(c_3982,plain,
    ( v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top
    | v2_tex_2(sK4,sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3636,c_1657])).

cnf(c_3983,plain,
    ( v2_tex_2(sK4,sK3) != iProver_top
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top ),
    inference(renaming,[status(thm)],[c_3982])).

cnf(c_6096,plain,
    ( k1_tarski(sK0(sK4)) = sK4
    | v2_tex_2(sK4,sK3) != iProver_top
    | v1_zfmisc_1(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_6092,c_3983])).

cnf(c_41,plain,
    ( v2_tex_2(sK4,sK3) = iProver_top
    | v1_zfmisc_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_6260,plain,
    ( k1_tarski(sK0(sK4)) = sK4
    | v1_zfmisc_1(sK4) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6096,c_41])).

cnf(c_6266,plain,
    ( k1_tarski(sK0(sK4)) = sK4
    | v1_xboole_0(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_6260,c_5325])).

cnf(c_6333,plain,
    ( k1_tarski(sK0(sK4)) = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6266,c_39])).

cnf(c_3,plain,
    ( r1_tarski(X0,X1)
    | r2_hidden(sK1(X0,X1),X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_3284,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(sK1(X0,X1),X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_3285,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_4190,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_3284,c_3285])).

cnf(c_7,plain,
    ( ~ r1_tarski(k1_tarski(X0),X1)
    | r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_3280,plain,
    ( r1_tarski(k1_tarski(X0),X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_4362,plain,
    ( r2_hidden(X0,k1_tarski(X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_4190,c_3280])).

cnf(c_6341,plain,
    ( r2_hidden(sK0(sK4),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_6333,c_4362])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_3275,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3818,plain,
    ( r1_tarski(sK4,u1_struct_0(sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3270,c_3275])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_3283,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | r2_hidden(X2,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_4842,plain,
    ( r2_hidden(X0,u1_struct_0(sK3)) = iProver_top
    | r2_hidden(X0,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_3818,c_3283])).

cnf(c_10,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_208,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_10,c_1])).

cnf(c_209,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_208])).

cnf(c_3268,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_209])).

cnf(c_5113,plain,
    ( m1_subset_1(X0,u1_struct_0(sK3)) = iProver_top
    | r2_hidden(X0,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_4842,c_3268])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k6_domain_1(X1,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_3274,plain,
    ( k6_domain_1(X0,X1) = k1_tarski(X1)
    | m1_subset_1(X1,X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_5257,plain,
    ( k6_domain_1(u1_struct_0(sK3),X0) = k1_tarski(X0)
    | r2_hidden(X0,sK4) != iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_5113,c_3274])).

cnf(c_3471,plain,
    ( r2_hidden(sK0(sK4),sK4)
    | v1_xboole_0(sK4) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_3472,plain,
    ( r2_hidden(sK0(sK4),sK4) = iProver_top
    | v1_xboole_0(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3471])).

cnf(c_3595,plain,
    ( ~ r1_tarski(sK4,X0)
    | r2_hidden(sK0(sK4),X0)
    | ~ r2_hidden(sK0(sK4),sK4) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_4009,plain,
    ( ~ r1_tarski(sK4,u1_struct_0(sK3))
    | r2_hidden(sK0(sK4),u1_struct_0(sK3))
    | ~ r2_hidden(sK0(sK4),sK4) ),
    inference(instantiation,[status(thm)],[c_3595])).

cnf(c_4011,plain,
    ( r1_tarski(sK4,u1_struct_0(sK3)) != iProver_top
    | r2_hidden(sK0(sK4),u1_struct_0(sK3)) = iProver_top
    | r2_hidden(sK0(sK4),sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4009])).

cnf(c_4085,plain,
    ( ~ r2_hidden(X0,u1_struct_0(sK3))
    | ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_5145,plain,
    ( ~ r2_hidden(sK0(sK4),u1_struct_0(sK3))
    | ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_4085])).

cnf(c_5146,plain,
    ( r2_hidden(sK0(sK4),u1_struct_0(sK3)) != iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5145])).

cnf(c_7679,plain,
    ( r2_hidden(X0,sK4) != iProver_top
    | k6_domain_1(u1_struct_0(sK3),X0) = k1_tarski(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_5257,c_39,c_3472,c_3818,c_4011,c_5146])).

cnf(c_7680,plain,
    ( k6_domain_1(u1_struct_0(sK3),X0) = k1_tarski(X0)
    | r2_hidden(X0,sK4) != iProver_top ),
    inference(renaming,[status(thm)],[c_7679])).

cnf(c_7689,plain,
    ( k6_domain_1(u1_struct_0(sK3),sK0(sK4)) = k1_tarski(sK0(sK4)) ),
    inference(superposition,[status(thm)],[c_6341,c_7680])).

cnf(c_7697,plain,
    ( k6_domain_1(u1_struct_0(sK3),sK0(sK4)) = sK4 ),
    inference(light_normalisation,[status(thm)],[c_7689,c_6333])).

cnf(c_26,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_819,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_26,c_33])).

cnf(c_820,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | v2_struct_0(sK3)
    | ~ l1_pre_topc(sK3) ),
    inference(unflattening,[status(thm)],[c_819])).

cnf(c_824,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3)
    | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_820,c_34,c_31])).

cnf(c_3267,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_824])).

cnf(c_7771,plain,
    ( v2_tex_2(sK4,sK3) = iProver_top
    | m1_subset_1(sK0(sK4),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7697,c_3267])).

cnf(c_2684,plain,
    ( ~ v1_zfmisc_1(X0)
    | v1_zfmisc_1(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_5036,plain,
    ( v1_zfmisc_1(X0)
    | ~ v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4)))
    | X0 != u1_struct_0(sK2(sK3,sK4)) ),
    inference(instantiation,[status(thm)],[c_2684])).

cnf(c_7583,plain,
    ( ~ v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4)))
    | v1_zfmisc_1(sK4)
    | sK4 != u1_struct_0(sK2(sK3,sK4)) ),
    inference(instantiation,[status(thm)],[c_5036])).

cnf(c_7584,plain,
    ( sK4 != u1_struct_0(sK2(sK3,sK4))
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) != iProver_top
    | v1_zfmisc_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7583])).

cnf(c_2677,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_3638,plain,
    ( X0 != X1
    | sK4 != X1
    | sK4 = X0 ),
    inference(instantiation,[status(thm)],[c_2677])).

cnf(c_3805,plain,
    ( X0 != sK4
    | sK4 = X0
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_3638])).

cnf(c_5026,plain,
    ( u1_struct_0(sK2(sK3,sK4)) != sK4
    | sK4 = u1_struct_0(sK2(sK3,sK4))
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_3805])).

cnf(c_3493,plain,
    ( m1_subset_1(X0,u1_struct_0(sK3))
    | ~ r2_hidden(X0,u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_209])).

cnf(c_4010,plain,
    ( m1_subset_1(sK0(sK4),u1_struct_0(sK3))
    | ~ r2_hidden(sK0(sK4),u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_3493])).

cnf(c_4013,plain,
    ( m1_subset_1(sK0(sK4),u1_struct_0(sK3)) = iProver_top
    | r2_hidden(sK0(sK4),u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4010])).

cnf(c_2676,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_3806,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_2676])).

cnf(c_1654,plain,
    ( v2_tex_2(sK4,sK3) != iProver_top
    | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top
    | v1_xboole_0(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1653])).

cnf(c_27,negated_conjecture,
    ( ~ v2_tex_2(sK4,sK3)
    | ~ v1_zfmisc_1(sK4) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_42,plain,
    ( v2_tex_2(sK4,sK3) != iProver_top
    | v1_zfmisc_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_7771,c_7584,c_5026,c_4013,c_4011,c_3818,c_3806,c_3472,c_1668,c_1654,c_42,c_39])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n017.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:23:16 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 3.12/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.12/1.01  
% 3.12/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.12/1.01  
% 3.12/1.01  ------  iProver source info
% 3.12/1.01  
% 3.12/1.01  git: date: 2020-06-30 10:37:57 +0100
% 3.12/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.12/1.01  git: non_committed_changes: false
% 3.12/1.01  git: last_make_outside_of_git: false
% 3.12/1.01  
% 3.12/1.01  ------ 
% 3.12/1.01  
% 3.12/1.01  ------ Input Options
% 3.12/1.01  
% 3.12/1.01  --out_options                           all
% 3.12/1.01  --tptp_safe_out                         true
% 3.12/1.01  --problem_path                          ""
% 3.12/1.01  --include_path                          ""
% 3.12/1.01  --clausifier                            res/vclausify_rel
% 3.12/1.01  --clausifier_options                    --mode clausify
% 3.12/1.01  --stdin                                 false
% 3.12/1.01  --stats_out                             all
% 3.12/1.01  
% 3.12/1.01  ------ General Options
% 3.12/1.01  
% 3.12/1.01  --fof                                   false
% 3.12/1.01  --time_out_real                         305.
% 3.12/1.01  --time_out_virtual                      -1.
% 3.12/1.01  --symbol_type_check                     false
% 3.12/1.01  --clausify_out                          false
% 3.12/1.01  --sig_cnt_out                           false
% 3.12/1.01  --trig_cnt_out                          false
% 3.12/1.01  --trig_cnt_out_tolerance                1.
% 3.12/1.01  --trig_cnt_out_sk_spl                   false
% 3.12/1.01  --abstr_cl_out                          false
% 3.12/1.01  
% 3.12/1.01  ------ Global Options
% 3.12/1.01  
% 3.12/1.01  --schedule                              default
% 3.12/1.01  --add_important_lit                     false
% 3.12/1.01  --prop_solver_per_cl                    1000
% 3.12/1.01  --min_unsat_core                        false
% 3.12/1.01  --soft_assumptions                      false
% 3.12/1.01  --soft_lemma_size                       3
% 3.12/1.01  --prop_impl_unit_size                   0
% 3.12/1.01  --prop_impl_unit                        []
% 3.12/1.01  --share_sel_clauses                     true
% 3.12/1.01  --reset_solvers                         false
% 3.12/1.01  --bc_imp_inh                            [conj_cone]
% 3.12/1.01  --conj_cone_tolerance                   3.
% 3.12/1.01  --extra_neg_conj                        none
% 3.12/1.01  --large_theory_mode                     true
% 3.12/1.01  --prolific_symb_bound                   200
% 3.12/1.01  --lt_threshold                          2000
% 3.12/1.01  --clause_weak_htbl                      true
% 3.12/1.01  --gc_record_bc_elim                     false
% 3.12/1.01  
% 3.12/1.01  ------ Preprocessing Options
% 3.12/1.01  
% 3.12/1.01  --preprocessing_flag                    true
% 3.12/1.01  --time_out_prep_mult                    0.1
% 3.12/1.01  --splitting_mode                        input
% 3.12/1.01  --splitting_grd                         true
% 3.12/1.01  --splitting_cvd                         false
% 3.12/1.01  --splitting_cvd_svl                     false
% 3.12/1.01  --splitting_nvd                         32
% 3.12/1.01  --sub_typing                            true
% 3.12/1.01  --prep_gs_sim                           true
% 3.12/1.01  --prep_unflatten                        true
% 3.12/1.01  --prep_res_sim                          true
% 3.12/1.01  --prep_upred                            true
% 3.12/1.01  --prep_sem_filter                       exhaustive
% 3.12/1.01  --prep_sem_filter_out                   false
% 3.12/1.01  --pred_elim                             true
% 3.12/1.01  --res_sim_input                         true
% 3.12/1.01  --eq_ax_congr_red                       true
% 3.12/1.01  --pure_diseq_elim                       true
% 3.12/1.01  --brand_transform                       false
% 3.12/1.01  --non_eq_to_eq                          false
% 3.12/1.01  --prep_def_merge                        true
% 3.12/1.01  --prep_def_merge_prop_impl              false
% 3.12/1.01  --prep_def_merge_mbd                    true
% 3.12/1.01  --prep_def_merge_tr_red                 false
% 3.12/1.01  --prep_def_merge_tr_cl                  false
% 3.12/1.01  --smt_preprocessing                     true
% 3.12/1.01  --smt_ac_axioms                         fast
% 3.12/1.01  --preprocessed_out                      false
% 3.12/1.01  --preprocessed_stats                    false
% 3.12/1.01  
% 3.12/1.01  ------ Abstraction refinement Options
% 3.12/1.01  
% 3.12/1.01  --abstr_ref                             []
% 3.12/1.01  --abstr_ref_prep                        false
% 3.12/1.01  --abstr_ref_until_sat                   false
% 3.12/1.01  --abstr_ref_sig_restrict                funpre
% 3.12/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 3.12/1.01  --abstr_ref_under                       []
% 3.12/1.01  
% 3.12/1.01  ------ SAT Options
% 3.12/1.01  
% 3.12/1.01  --sat_mode                              false
% 3.12/1.01  --sat_fm_restart_options                ""
% 3.12/1.01  --sat_gr_def                            false
% 3.12/1.01  --sat_epr_types                         true
% 3.12/1.01  --sat_non_cyclic_types                  false
% 3.12/1.01  --sat_finite_models                     false
% 3.12/1.01  --sat_fm_lemmas                         false
% 3.12/1.01  --sat_fm_prep                           false
% 3.12/1.01  --sat_fm_uc_incr                        true
% 3.12/1.01  --sat_out_model                         small
% 3.12/1.01  --sat_out_clauses                       false
% 3.12/1.01  
% 3.12/1.01  ------ QBF Options
% 3.12/1.01  
% 3.12/1.01  --qbf_mode                              false
% 3.12/1.01  --qbf_elim_univ                         false
% 3.12/1.01  --qbf_dom_inst                          none
% 3.12/1.01  --qbf_dom_pre_inst                      false
% 3.12/1.01  --qbf_sk_in                             false
% 3.12/1.01  --qbf_pred_elim                         true
% 3.12/1.01  --qbf_split                             512
% 3.12/1.01  
% 3.12/1.01  ------ BMC1 Options
% 3.12/1.01  
% 3.12/1.01  --bmc1_incremental                      false
% 3.12/1.01  --bmc1_axioms                           reachable_all
% 3.12/1.01  --bmc1_min_bound                        0
% 3.12/1.01  --bmc1_max_bound                        -1
% 3.12/1.01  --bmc1_max_bound_default                -1
% 3.12/1.01  --bmc1_symbol_reachability              true
% 3.12/1.01  --bmc1_property_lemmas                  false
% 3.12/1.01  --bmc1_k_induction                      false
% 3.12/1.01  --bmc1_non_equiv_states                 false
% 3.12/1.01  --bmc1_deadlock                         false
% 3.12/1.01  --bmc1_ucm                              false
% 3.12/1.01  --bmc1_add_unsat_core                   none
% 3.12/1.01  --bmc1_unsat_core_children              false
% 3.12/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 3.12/1.01  --bmc1_out_stat                         full
% 3.12/1.01  --bmc1_ground_init                      false
% 3.12/1.01  --bmc1_pre_inst_next_state              false
% 3.12/1.01  --bmc1_pre_inst_state                   false
% 3.12/1.01  --bmc1_pre_inst_reach_state             false
% 3.12/1.01  --bmc1_out_unsat_core                   false
% 3.12/1.01  --bmc1_aig_witness_out                  false
% 3.12/1.01  --bmc1_verbose                          false
% 3.12/1.01  --bmc1_dump_clauses_tptp                false
% 3.12/1.01  --bmc1_dump_unsat_core_tptp             false
% 3.12/1.01  --bmc1_dump_file                        -
% 3.12/1.01  --bmc1_ucm_expand_uc_limit              128
% 3.12/1.01  --bmc1_ucm_n_expand_iterations          6
% 3.12/1.01  --bmc1_ucm_extend_mode                  1
% 3.12/1.01  --bmc1_ucm_init_mode                    2
% 3.12/1.01  --bmc1_ucm_cone_mode                    none
% 3.12/1.01  --bmc1_ucm_reduced_relation_type        0
% 3.12/1.01  --bmc1_ucm_relax_model                  4
% 3.12/1.01  --bmc1_ucm_full_tr_after_sat            true
% 3.12/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 3.12/1.01  --bmc1_ucm_layered_model                none
% 3.12/1.01  --bmc1_ucm_max_lemma_size               10
% 3.12/1.01  
% 3.12/1.01  ------ AIG Options
% 3.12/1.01  
% 3.12/1.01  --aig_mode                              false
% 3.12/1.01  
% 3.12/1.01  ------ Instantiation Options
% 3.12/1.01  
% 3.12/1.01  --instantiation_flag                    true
% 3.12/1.01  --inst_sos_flag                         false
% 3.12/1.01  --inst_sos_phase                        true
% 3.12/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.12/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.12/1.01  --inst_lit_sel_side                     num_symb
% 3.12/1.01  --inst_solver_per_active                1400
% 3.12/1.01  --inst_solver_calls_frac                1.
% 3.12/1.01  --inst_passive_queue_type               priority_queues
% 3.12/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.12/1.01  --inst_passive_queues_freq              [25;2]
% 3.12/1.01  --inst_dismatching                      true
% 3.12/1.01  --inst_eager_unprocessed_to_passive     true
% 3.12/1.01  --inst_prop_sim_given                   true
% 3.12/1.01  --inst_prop_sim_new                     false
% 3.12/1.01  --inst_subs_new                         false
% 3.12/1.01  --inst_eq_res_simp                      false
% 3.12/1.01  --inst_subs_given                       false
% 3.12/1.01  --inst_orphan_elimination               true
% 3.12/1.01  --inst_learning_loop_flag               true
% 3.12/1.01  --inst_learning_start                   3000
% 3.12/1.01  --inst_learning_factor                  2
% 3.12/1.01  --inst_start_prop_sim_after_learn       3
% 3.12/1.01  --inst_sel_renew                        solver
% 3.12/1.01  --inst_lit_activity_flag                true
% 3.12/1.01  --inst_restr_to_given                   false
% 3.12/1.01  --inst_activity_threshold               500
% 3.12/1.01  --inst_out_proof                        true
% 3.12/1.01  
% 3.12/1.01  ------ Resolution Options
% 3.12/1.01  
% 3.12/1.01  --resolution_flag                       true
% 3.12/1.01  --res_lit_sel                           adaptive
% 3.12/1.01  --res_lit_sel_side                      none
% 3.12/1.01  --res_ordering                          kbo
% 3.12/1.01  --res_to_prop_solver                    active
% 3.12/1.01  --res_prop_simpl_new                    false
% 3.12/1.01  --res_prop_simpl_given                  true
% 3.12/1.01  --res_passive_queue_type                priority_queues
% 3.12/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.12/1.01  --res_passive_queues_freq               [15;5]
% 3.12/1.01  --res_forward_subs                      full
% 3.12/1.01  --res_backward_subs                     full
% 3.12/1.01  --res_forward_subs_resolution           true
% 3.12/1.01  --res_backward_subs_resolution          true
% 3.12/1.01  --res_orphan_elimination                true
% 3.12/1.01  --res_time_limit                        2.
% 3.12/1.01  --res_out_proof                         true
% 3.12/1.01  
% 3.12/1.01  ------ Superposition Options
% 3.12/1.01  
% 3.12/1.01  --superposition_flag                    true
% 3.12/1.01  --sup_passive_queue_type                priority_queues
% 3.12/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.12/1.01  --sup_passive_queues_freq               [8;1;4]
% 3.12/1.01  --demod_completeness_check              fast
% 3.12/1.01  --demod_use_ground                      true
% 3.12/1.01  --sup_to_prop_solver                    passive
% 3.12/1.01  --sup_prop_simpl_new                    true
% 3.12/1.01  --sup_prop_simpl_given                  true
% 3.12/1.01  --sup_fun_splitting                     false
% 3.12/1.01  --sup_smt_interval                      50000
% 3.12/1.01  
% 3.12/1.01  ------ Superposition Simplification Setup
% 3.12/1.01  
% 3.12/1.01  --sup_indices_passive                   []
% 3.12/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 3.12/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/1.01  --sup_full_bw                           [BwDemod]
% 3.12/1.01  --sup_immed_triv                        [TrivRules]
% 3.12/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/1.01  --sup_immed_bw_main                     []
% 3.12/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.12/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 3.12/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.12/1.01  
% 3.12/1.01  ------ Combination Options
% 3.12/1.01  
% 3.12/1.01  --comb_res_mult                         3
% 3.12/1.01  --comb_sup_mult                         2
% 3.12/1.01  --comb_inst_mult                        10
% 3.12/1.01  
% 3.12/1.01  ------ Debug Options
% 3.12/1.01  
% 3.12/1.01  --dbg_backtrace                         false
% 3.12/1.01  --dbg_dump_prop_clauses                 false
% 3.12/1.01  --dbg_dump_prop_clauses_file            -
% 3.12/1.01  --dbg_out_stat                          false
% 3.12/1.01  ------ Parsing...
% 3.12/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.12/1.01  
% 3.12/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 3.12/1.01  
% 3.12/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.12/1.01  
% 3.12/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.12/1.01  ------ Proving...
% 3.12/1.01  ------ Problem Properties 
% 3.12/1.01  
% 3.12/1.01  
% 3.12/1.01  clauses                                 23
% 3.12/1.01  conjectures                             4
% 3.12/1.01  EPR                                     10
% 3.12/1.01  Horn                                    15
% 3.12/1.01  unary                                   3
% 3.12/1.01  binary                                  12
% 3.12/1.01  lits                                    55
% 3.12/1.01  lits eq                                 3
% 3.12/1.01  fd_pure                                 0
% 3.12/1.01  fd_pseudo                               0
% 3.12/1.01  fd_cond                                 0
% 3.12/1.01  fd_pseudo_cond                          1
% 3.12/1.01  AC symbols                              0
% 3.12/1.01  
% 3.12/1.01  ------ Schedule dynamic 5 is on 
% 3.12/1.01  
% 3.12/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.12/1.01  
% 3.12/1.01  
% 3.12/1.01  ------ 
% 3.12/1.01  Current options:
% 3.12/1.01  ------ 
% 3.12/1.01  
% 3.12/1.01  ------ Input Options
% 3.12/1.01  
% 3.12/1.01  --out_options                           all
% 3.12/1.01  --tptp_safe_out                         true
% 3.12/1.01  --problem_path                          ""
% 3.12/1.01  --include_path                          ""
% 3.12/1.01  --clausifier                            res/vclausify_rel
% 3.12/1.01  --clausifier_options                    --mode clausify
% 3.12/1.01  --stdin                                 false
% 3.12/1.01  --stats_out                             all
% 3.12/1.01  
% 3.12/1.01  ------ General Options
% 3.12/1.01  
% 3.12/1.01  --fof                                   false
% 3.12/1.01  --time_out_real                         305.
% 3.12/1.01  --time_out_virtual                      -1.
% 3.12/1.01  --symbol_type_check                     false
% 3.12/1.01  --clausify_out                          false
% 3.12/1.01  --sig_cnt_out                           false
% 3.12/1.01  --trig_cnt_out                          false
% 3.12/1.01  --trig_cnt_out_tolerance                1.
% 3.12/1.01  --trig_cnt_out_sk_spl                   false
% 3.12/1.01  --abstr_cl_out                          false
% 3.12/1.01  
% 3.12/1.01  ------ Global Options
% 3.12/1.01  
% 3.12/1.01  --schedule                              default
% 3.12/1.01  --add_important_lit                     false
% 3.12/1.01  --prop_solver_per_cl                    1000
% 3.12/1.01  --min_unsat_core                        false
% 3.12/1.01  --soft_assumptions                      false
% 3.12/1.01  --soft_lemma_size                       3
% 3.12/1.01  --prop_impl_unit_size                   0
% 3.12/1.01  --prop_impl_unit                        []
% 3.12/1.01  --share_sel_clauses                     true
% 3.12/1.01  --reset_solvers                         false
% 3.12/1.01  --bc_imp_inh                            [conj_cone]
% 3.12/1.01  --conj_cone_tolerance                   3.
% 3.12/1.01  --extra_neg_conj                        none
% 3.12/1.01  --large_theory_mode                     true
% 3.12/1.01  --prolific_symb_bound                   200
% 3.12/1.01  --lt_threshold                          2000
% 3.12/1.01  --clause_weak_htbl                      true
% 3.12/1.01  --gc_record_bc_elim                     false
% 3.12/1.01  
% 3.12/1.01  ------ Preprocessing Options
% 3.12/1.01  
% 3.12/1.01  --preprocessing_flag                    true
% 3.12/1.01  --time_out_prep_mult                    0.1
% 3.12/1.01  --splitting_mode                        input
% 3.12/1.01  --splitting_grd                         true
% 3.12/1.01  --splitting_cvd                         false
% 3.12/1.01  --splitting_cvd_svl                     false
% 3.12/1.01  --splitting_nvd                         32
% 3.12/1.01  --sub_typing                            true
% 3.12/1.01  --prep_gs_sim                           true
% 3.12/1.01  --prep_unflatten                        true
% 3.12/1.01  --prep_res_sim                          true
% 3.12/1.01  --prep_upred                            true
% 3.12/1.01  --prep_sem_filter                       exhaustive
% 3.12/1.01  --prep_sem_filter_out                   false
% 3.12/1.01  --pred_elim                             true
% 3.12/1.02  --res_sim_input                         true
% 3.12/1.02  --eq_ax_congr_red                       true
% 3.12/1.02  --pure_diseq_elim                       true
% 3.12/1.02  --brand_transform                       false
% 3.12/1.02  --non_eq_to_eq                          false
% 3.12/1.02  --prep_def_merge                        true
% 3.12/1.02  --prep_def_merge_prop_impl              false
% 3.12/1.02  --prep_def_merge_mbd                    true
% 3.12/1.02  --prep_def_merge_tr_red                 false
% 3.12/1.02  --prep_def_merge_tr_cl                  false
% 3.12/1.02  --smt_preprocessing                     true
% 3.12/1.02  --smt_ac_axioms                         fast
% 3.12/1.02  --preprocessed_out                      false
% 3.12/1.02  --preprocessed_stats                    false
% 3.12/1.02  
% 3.12/1.02  ------ Abstraction refinement Options
% 3.12/1.02  
% 3.12/1.02  --abstr_ref                             []
% 3.12/1.02  --abstr_ref_prep                        false
% 3.12/1.02  --abstr_ref_until_sat                   false
% 3.12/1.02  --abstr_ref_sig_restrict                funpre
% 3.12/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 3.12/1.02  --abstr_ref_under                       []
% 3.12/1.02  
% 3.12/1.02  ------ SAT Options
% 3.12/1.02  
% 3.12/1.02  --sat_mode                              false
% 3.12/1.02  --sat_fm_restart_options                ""
% 3.12/1.02  --sat_gr_def                            false
% 3.12/1.02  --sat_epr_types                         true
% 3.12/1.02  --sat_non_cyclic_types                  false
% 3.12/1.02  --sat_finite_models                     false
% 3.12/1.02  --sat_fm_lemmas                         false
% 3.12/1.02  --sat_fm_prep                           false
% 3.12/1.02  --sat_fm_uc_incr                        true
% 3.12/1.02  --sat_out_model                         small
% 3.12/1.02  --sat_out_clauses                       false
% 3.12/1.02  
% 3.12/1.02  ------ QBF Options
% 3.12/1.02  
% 3.12/1.02  --qbf_mode                              false
% 3.12/1.02  --qbf_elim_univ                         false
% 3.12/1.02  --qbf_dom_inst                          none
% 3.12/1.02  --qbf_dom_pre_inst                      false
% 3.12/1.02  --qbf_sk_in                             false
% 3.12/1.02  --qbf_pred_elim                         true
% 3.12/1.02  --qbf_split                             512
% 3.12/1.02  
% 3.12/1.02  ------ BMC1 Options
% 3.12/1.02  
% 3.12/1.02  --bmc1_incremental                      false
% 3.12/1.02  --bmc1_axioms                           reachable_all
% 3.12/1.02  --bmc1_min_bound                        0
% 3.12/1.02  --bmc1_max_bound                        -1
% 3.12/1.02  --bmc1_max_bound_default                -1
% 3.12/1.02  --bmc1_symbol_reachability              true
% 3.12/1.02  --bmc1_property_lemmas                  false
% 3.12/1.02  --bmc1_k_induction                      false
% 3.12/1.02  --bmc1_non_equiv_states                 false
% 3.12/1.02  --bmc1_deadlock                         false
% 3.12/1.02  --bmc1_ucm                              false
% 3.12/1.02  --bmc1_add_unsat_core                   none
% 3.12/1.02  --bmc1_unsat_core_children              false
% 3.12/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 3.12/1.02  --bmc1_out_stat                         full
% 3.12/1.02  --bmc1_ground_init                      false
% 3.12/1.02  --bmc1_pre_inst_next_state              false
% 3.12/1.02  --bmc1_pre_inst_state                   false
% 3.12/1.02  --bmc1_pre_inst_reach_state             false
% 3.12/1.02  --bmc1_out_unsat_core                   false
% 3.12/1.02  --bmc1_aig_witness_out                  false
% 3.12/1.02  --bmc1_verbose                          false
% 3.12/1.02  --bmc1_dump_clauses_tptp                false
% 3.12/1.02  --bmc1_dump_unsat_core_tptp             false
% 3.12/1.02  --bmc1_dump_file                        -
% 3.12/1.02  --bmc1_ucm_expand_uc_limit              128
% 3.12/1.02  --bmc1_ucm_n_expand_iterations          6
% 3.12/1.02  --bmc1_ucm_extend_mode                  1
% 3.12/1.02  --bmc1_ucm_init_mode                    2
% 3.12/1.02  --bmc1_ucm_cone_mode                    none
% 3.12/1.02  --bmc1_ucm_reduced_relation_type        0
% 3.12/1.02  --bmc1_ucm_relax_model                  4
% 3.12/1.02  --bmc1_ucm_full_tr_after_sat            true
% 3.12/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 3.12/1.02  --bmc1_ucm_layered_model                none
% 3.12/1.02  --bmc1_ucm_max_lemma_size               10
% 3.12/1.02  
% 3.12/1.02  ------ AIG Options
% 3.12/1.02  
% 3.12/1.02  --aig_mode                              false
% 3.12/1.02  
% 3.12/1.02  ------ Instantiation Options
% 3.12/1.02  
% 3.12/1.02  --instantiation_flag                    true
% 3.12/1.02  --inst_sos_flag                         false
% 3.12/1.02  --inst_sos_phase                        true
% 3.12/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.12/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.12/1.02  --inst_lit_sel_side                     none
% 3.12/1.02  --inst_solver_per_active                1400
% 3.12/1.02  --inst_solver_calls_frac                1.
% 3.12/1.02  --inst_passive_queue_type               priority_queues
% 3.12/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.12/1.02  --inst_passive_queues_freq              [25;2]
% 3.12/1.02  --inst_dismatching                      true
% 3.12/1.02  --inst_eager_unprocessed_to_passive     true
% 3.12/1.02  --inst_prop_sim_given                   true
% 3.12/1.02  --inst_prop_sim_new                     false
% 3.12/1.02  --inst_subs_new                         false
% 3.12/1.02  --inst_eq_res_simp                      false
% 3.12/1.02  --inst_subs_given                       false
% 3.12/1.02  --inst_orphan_elimination               true
% 3.12/1.02  --inst_learning_loop_flag               true
% 3.12/1.02  --inst_learning_start                   3000
% 3.12/1.02  --inst_learning_factor                  2
% 3.12/1.02  --inst_start_prop_sim_after_learn       3
% 3.12/1.02  --inst_sel_renew                        solver
% 3.12/1.02  --inst_lit_activity_flag                true
% 3.12/1.02  --inst_restr_to_given                   false
% 3.12/1.02  --inst_activity_threshold               500
% 3.12/1.02  --inst_out_proof                        true
% 3.12/1.02  
% 3.12/1.02  ------ Resolution Options
% 3.12/1.02  
% 3.12/1.02  --resolution_flag                       false
% 3.12/1.02  --res_lit_sel                           adaptive
% 3.12/1.02  --res_lit_sel_side                      none
% 3.12/1.02  --res_ordering                          kbo
% 3.12/1.02  --res_to_prop_solver                    active
% 3.12/1.02  --res_prop_simpl_new                    false
% 3.12/1.02  --res_prop_simpl_given                  true
% 3.12/1.02  --res_passive_queue_type                priority_queues
% 3.12/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.12/1.02  --res_passive_queues_freq               [15;5]
% 3.12/1.02  --res_forward_subs                      full
% 3.12/1.02  --res_backward_subs                     full
% 3.12/1.02  --res_forward_subs_resolution           true
% 3.12/1.02  --res_backward_subs_resolution          true
% 3.12/1.02  --res_orphan_elimination                true
% 3.12/1.02  --res_time_limit                        2.
% 3.12/1.02  --res_out_proof                         true
% 3.12/1.02  
% 3.12/1.02  ------ Superposition Options
% 3.12/1.02  
% 3.12/1.02  --superposition_flag                    true
% 3.12/1.02  --sup_passive_queue_type                priority_queues
% 3.12/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.12/1.02  --sup_passive_queues_freq               [8;1;4]
% 3.12/1.02  --demod_completeness_check              fast
% 3.12/1.02  --demod_use_ground                      true
% 3.12/1.02  --sup_to_prop_solver                    passive
% 3.12/1.02  --sup_prop_simpl_new                    true
% 3.12/1.02  --sup_prop_simpl_given                  true
% 3.12/1.02  --sup_fun_splitting                     false
% 3.12/1.02  --sup_smt_interval                      50000
% 3.12/1.02  
% 3.12/1.02  ------ Superposition Simplification Setup
% 3.12/1.02  
% 3.12/1.02  --sup_indices_passive                   []
% 3.12/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 3.12/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/1.02  --sup_full_bw                           [BwDemod]
% 3.12/1.02  --sup_immed_triv                        [TrivRules]
% 3.12/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/1.02  --sup_immed_bw_main                     []
% 3.12/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.12/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 3.12/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.12/1.02  
% 3.12/1.02  ------ Combination Options
% 3.12/1.02  
% 3.12/1.02  --comb_res_mult                         3
% 3.12/1.02  --comb_sup_mult                         2
% 3.12/1.02  --comb_inst_mult                        10
% 3.12/1.02  
% 3.12/1.02  ------ Debug Options
% 3.12/1.02  
% 3.12/1.02  --dbg_backtrace                         false
% 3.12/1.02  --dbg_dump_prop_clauses                 false
% 3.12/1.02  --dbg_dump_prop_clauses_file            -
% 3.12/1.02  --dbg_out_stat                          false
% 3.12/1.02  
% 3.12/1.02  
% 3.12/1.02  
% 3.12/1.02  
% 3.12/1.02  ------ Proving...
% 3.12/1.02  
% 3.12/1.02  
% 3.12/1.02  % SZS status Theorem for theBenchmark.p
% 3.12/1.02  
% 3.12/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 3.12/1.02  
% 3.12/1.02  fof(f16,conjecture,(
% 3.12/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => (v2_tex_2(X1,X0) <=> v1_zfmisc_1(X1))))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f17,negated_conjecture,(
% 3.12/1.02    ~! [X0] : ((l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => (v2_tex_2(X1,X0) <=> v1_zfmisc_1(X1))))),
% 3.12/1.02    inference(negated_conjecture,[],[f16])).
% 3.12/1.02  
% 3.12/1.02  fof(f37,plain,(
% 3.12/1.02    ? [X0] : (? [X1] : ((v2_tex_2(X1,X0) <~> v1_zfmisc_1(X1)) & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1))) & (l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 3.12/1.02    inference(ennf_transformation,[],[f17])).
% 3.12/1.02  
% 3.12/1.02  fof(f38,plain,(
% 3.12/1.02    ? [X0] : (? [X1] : ((v2_tex_2(X1,X0) <~> v1_zfmisc_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.12/1.02    inference(flattening,[],[f37])).
% 3.12/1.02  
% 3.12/1.02  fof(f52,plain,(
% 3.12/1.02    ? [X0] : (? [X1] : (((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,X0)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.12/1.02    inference(nnf_transformation,[],[f38])).
% 3.12/1.02  
% 3.12/1.02  fof(f53,plain,(
% 3.12/1.02    ? [X0] : (? [X1] : ((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,X0)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.12/1.02    inference(flattening,[],[f52])).
% 3.12/1.02  
% 3.12/1.02  fof(f55,plain,(
% 3.12/1.02    ( ! [X0] : (? [X1] : ((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,X0)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => ((~v1_zfmisc_1(sK4) | ~v2_tex_2(sK4,X0)) & (v1_zfmisc_1(sK4) | v2_tex_2(sK4,X0)) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(sK4))) )),
% 3.12/1.02    introduced(choice_axiom,[])).
% 3.12/1.02  
% 3.12/1.02  fof(f54,plain,(
% 3.12/1.02    ? [X0] : (? [X1] : ((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,X0)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : ((~v1_zfmisc_1(X1) | ~v2_tex_2(X1,sK3)) & (v1_zfmisc_1(X1) | v2_tex_2(X1,sK3)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3))) & ~v1_xboole_0(X1)) & l1_pre_topc(sK3) & v2_tdlat_3(sK3) & v2_pre_topc(sK3) & ~v2_struct_0(sK3))),
% 3.12/1.02    introduced(choice_axiom,[])).
% 3.12/1.02  
% 3.12/1.02  fof(f56,plain,(
% 3.12/1.02    ((~v1_zfmisc_1(sK4) | ~v2_tex_2(sK4,sK3)) & (v1_zfmisc_1(sK4) | v2_tex_2(sK4,sK3)) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) & ~v1_xboole_0(sK4)) & l1_pre_topc(sK3) & v2_tdlat_3(sK3) & v2_pre_topc(sK3) & ~v2_struct_0(sK3)),
% 3.12/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f53,f55,f54])).
% 3.12/1.02  
% 3.12/1.02  fof(f90,plain,(
% 3.12/1.02    v1_zfmisc_1(sK4) | v2_tex_2(sK4,sK3)),
% 3.12/1.02    inference(cnf_transformation,[],[f56])).
% 3.12/1.02  
% 3.12/1.02  fof(f89,plain,(
% 3.12/1.02    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3)))),
% 3.12/1.02    inference(cnf_transformation,[],[f56])).
% 3.12/1.02  
% 3.12/1.02  fof(f14,axiom,(
% 3.12/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => ~(! [X2] : ((m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & v1_pre_topc(X2) & ~v2_struct_0(X2)) => u1_struct_0(X2) != X1) & v2_tex_2(X1,X0))))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f18,plain,(
% 3.12/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & ~v1_xboole_0(X1)) => ~(! [X2] : ((m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & ~v2_struct_0(X2)) => u1_struct_0(X2) != X1) & v2_tex_2(X1,X0))))),
% 3.12/1.02    inference(pure_predicate_removal,[],[f14])).
% 3.12/1.02  
% 3.12/1.02  fof(f33,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : ((? [X2] : (u1_struct_0(X2) = X1 & (m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & ~v2_struct_0(X2))) | ~v2_tex_2(X1,X0)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.12/1.02    inference(ennf_transformation,[],[f18])).
% 3.12/1.02  
% 3.12/1.02  fof(f34,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : (? [X2] : (u1_struct_0(X2) = X1 & m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & ~v2_struct_0(X2)) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.12/1.02    inference(flattening,[],[f33])).
% 3.12/1.02  
% 3.12/1.02  fof(f50,plain,(
% 3.12/1.02    ! [X1,X0] : (? [X2] : (u1_struct_0(X2) = X1 & m1_pre_topc(X2,X0) & v1_tdlat_3(X2) & ~v2_struct_0(X2)) => (u1_struct_0(sK2(X0,X1)) = X1 & m1_pre_topc(sK2(X0,X1),X0) & v1_tdlat_3(sK2(X0,X1)) & ~v2_struct_0(sK2(X0,X1))))),
% 3.12/1.02    introduced(choice_axiom,[])).
% 3.12/1.02  
% 3.12/1.02  fof(f51,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : ((u1_struct_0(sK2(X0,X1)) = X1 & m1_pre_topc(sK2(X0,X1),X0) & v1_tdlat_3(sK2(X0,X1)) & ~v2_struct_0(sK2(X0,X1))) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.12/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f34,f50])).
% 3.12/1.02  
% 3.12/1.02  fof(f82,plain,(
% 3.12/1.02    ( ! [X0,X1] : (u1_struct_0(sK2(X0,X1)) = X1 | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f51])).
% 3.12/1.02  
% 3.12/1.02  fof(f85,plain,(
% 3.12/1.02    v2_pre_topc(sK3)),
% 3.12/1.02    inference(cnf_transformation,[],[f56])).
% 3.12/1.02  
% 3.12/1.02  fof(f84,plain,(
% 3.12/1.02    ~v2_struct_0(sK3)),
% 3.12/1.02    inference(cnf_transformation,[],[f56])).
% 3.12/1.02  
% 3.12/1.02  fof(f87,plain,(
% 3.12/1.02    l1_pre_topc(sK3)),
% 3.12/1.02    inference(cnf_transformation,[],[f56])).
% 3.12/1.02  
% 3.12/1.02  fof(f88,plain,(
% 3.12/1.02    ~v1_xboole_0(sK4)),
% 3.12/1.02    inference(cnf_transformation,[],[f56])).
% 3.12/1.02  
% 3.12/1.02  fof(f1,axiom,(
% 3.12/1.02    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f39,plain,(
% 3.12/1.02    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 3.12/1.02    inference(nnf_transformation,[],[f1])).
% 3.12/1.02  
% 3.12/1.02  fof(f40,plain,(
% 3.12/1.02    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 3.12/1.02    inference(rectify,[],[f39])).
% 3.12/1.02  
% 3.12/1.02  fof(f41,plain,(
% 3.12/1.02    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 3.12/1.02    introduced(choice_axiom,[])).
% 3.12/1.02  
% 3.12/1.02  fof(f42,plain,(
% 3.12/1.02    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 3.12/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f40,f41])).
% 3.12/1.02  
% 3.12/1.02  fof(f58,plain,(
% 3.12/1.02    ( ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f42])).
% 3.12/1.02  
% 3.12/1.02  fof(f4,axiom,(
% 3.12/1.02    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f47,plain,(
% 3.12/1.02    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 3.12/1.02    inference(nnf_transformation,[],[f4])).
% 3.12/1.02  
% 3.12/1.02  fof(f64,plain,(
% 3.12/1.02    ( ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f47])).
% 3.12/1.02  
% 3.12/1.02  fof(f13,axiom,(
% 3.12/1.02    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : ((v1_zfmisc_1(X1) & ~v1_xboole_0(X1)) => (r1_tarski(X0,X1) => X0 = X1)))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f31,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : ((X0 = X1 | ~r1_tarski(X0,X1)) | (~v1_zfmisc_1(X1) | v1_xboole_0(X1))) | v1_xboole_0(X0))),
% 3.12/1.02    inference(ennf_transformation,[],[f13])).
% 3.12/1.02  
% 3.12/1.02  fof(f32,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : (X0 = X1 | ~r1_tarski(X0,X1) | ~v1_zfmisc_1(X1) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 3.12/1.02    inference(flattening,[],[f31])).
% 3.12/1.02  
% 3.12/1.02  fof(f78,plain,(
% 3.12/1.02    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X0,X1) | ~v1_zfmisc_1(X1) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f32])).
% 3.12/1.02  
% 3.12/1.02  fof(f3,axiom,(
% 3.12/1.02    ! [X0] : ~v1_xboole_0(k1_tarski(X0))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f62,plain,(
% 3.12/1.02    ( ! [X0] : (~v1_xboole_0(k1_tarski(X0))) )),
% 3.12/1.02    inference(cnf_transformation,[],[f3])).
% 3.12/1.02  
% 3.12/1.02  fof(f57,plain,(
% 3.12/1.02    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f42])).
% 3.12/1.02  
% 3.12/1.02  fof(f80,plain,(
% 3.12/1.02    ( ! [X0,X1] : (v1_tdlat_3(sK2(X0,X1)) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f51])).
% 3.12/1.02  
% 3.12/1.02  fof(f79,plain,(
% 3.12/1.02    ( ! [X0,X1] : (~v2_struct_0(sK2(X0,X1)) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f51])).
% 3.12/1.02  
% 3.12/1.02  fof(f81,plain,(
% 3.12/1.02    ( ! [X0,X1] : (m1_pre_topc(sK2(X0,X1),X0) | ~v2_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v1_xboole_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f51])).
% 3.12/1.02  
% 3.12/1.02  fof(f12,axiom,(
% 3.12/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ((~v7_struct_0(X1) & ~v2_struct_0(X1)) => (~v1_tdlat_3(X1) & ~v2_struct_0(X1)))))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f29,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : (((~v1_tdlat_3(X1) & ~v2_struct_0(X1)) | (v7_struct_0(X1) | v2_struct_0(X1))) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.12/1.02    inference(ennf_transformation,[],[f12])).
% 3.12/1.02  
% 3.12/1.02  fof(f30,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : ((~v1_tdlat_3(X1) & ~v2_struct_0(X1)) | v7_struct_0(X1) | v2_struct_0(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.12/1.02    inference(flattening,[],[f29])).
% 3.12/1.02  
% 3.12/1.02  fof(f77,plain,(
% 3.12/1.02    ( ! [X0,X1] : (~v1_tdlat_3(X1) | v7_struct_0(X1) | v2_struct_0(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f30])).
% 3.12/1.02  
% 3.12/1.02  fof(f7,axiom,(
% 3.12/1.02    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f21,plain,(
% 3.12/1.02    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 3.12/1.02    inference(ennf_transformation,[],[f7])).
% 3.12/1.02  
% 3.12/1.02  fof(f71,plain,(
% 3.12/1.02    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f21])).
% 3.12/1.02  
% 3.12/1.02  fof(f9,axiom,(
% 3.12/1.02    ! [X0] : ((l1_struct_0(X0) & v7_struct_0(X0)) => v1_zfmisc_1(u1_struct_0(X0)))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f23,plain,(
% 3.12/1.02    ! [X0] : (v1_zfmisc_1(u1_struct_0(X0)) | (~l1_struct_0(X0) | ~v7_struct_0(X0)))),
% 3.12/1.02    inference(ennf_transformation,[],[f9])).
% 3.12/1.02  
% 3.12/1.02  fof(f24,plain,(
% 3.12/1.02    ! [X0] : (v1_zfmisc_1(u1_struct_0(X0)) | ~l1_struct_0(X0) | ~v7_struct_0(X0))),
% 3.12/1.02    inference(flattening,[],[f23])).
% 3.12/1.02  
% 3.12/1.02  fof(f73,plain,(
% 3.12/1.02    ( ! [X0] : (v1_zfmisc_1(u1_struct_0(X0)) | ~l1_struct_0(X0) | ~v7_struct_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f24])).
% 3.12/1.02  
% 3.12/1.02  fof(f8,axiom,(
% 3.12/1.02    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f22,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.12/1.02    inference(ennf_transformation,[],[f8])).
% 3.12/1.02  
% 3.12/1.02  fof(f72,plain,(
% 3.12/1.02    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f22])).
% 3.12/1.02  
% 3.12/1.02  fof(f11,axiom,(
% 3.12/1.02    ! [X0] : (l1_pre_topc(X0) => (v2_tdlat_3(X0) => v2_pre_topc(X0)))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f27,plain,(
% 3.12/1.02    ! [X0] : ((v2_pre_topc(X0) | ~v2_tdlat_3(X0)) | ~l1_pre_topc(X0))),
% 3.12/1.02    inference(ennf_transformation,[],[f11])).
% 3.12/1.02  
% 3.12/1.02  fof(f28,plain,(
% 3.12/1.02    ! [X0] : (v2_pre_topc(X0) | ~v2_tdlat_3(X0) | ~l1_pre_topc(X0))),
% 3.12/1.02    inference(flattening,[],[f27])).
% 3.12/1.02  
% 3.12/1.02  fof(f75,plain,(
% 3.12/1.02    ( ! [X0] : (v2_pre_topc(X0) | ~v2_tdlat_3(X0) | ~l1_pre_topc(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f28])).
% 3.12/1.02  
% 3.12/1.02  fof(f86,plain,(
% 3.12/1.02    v2_tdlat_3(sK3)),
% 3.12/1.02    inference(cnf_transformation,[],[f56])).
% 3.12/1.02  
% 3.12/1.02  fof(f2,axiom,(
% 3.12/1.02    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f19,plain,(
% 3.12/1.02    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 3.12/1.02    inference(ennf_transformation,[],[f2])).
% 3.12/1.02  
% 3.12/1.02  fof(f43,plain,(
% 3.12/1.02    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 3.12/1.02    inference(nnf_transformation,[],[f19])).
% 3.12/1.02  
% 3.12/1.02  fof(f44,plain,(
% 3.12/1.02    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.12/1.02    inference(rectify,[],[f43])).
% 3.12/1.02  
% 3.12/1.02  fof(f45,plain,(
% 3.12/1.02    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 3.12/1.02    introduced(choice_axiom,[])).
% 3.12/1.02  
% 3.12/1.02  fof(f46,plain,(
% 3.12/1.02    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.12/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f44,f45])).
% 3.12/1.02  
% 3.12/1.02  fof(f60,plain,(
% 3.12/1.02    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f46])).
% 3.12/1.02  
% 3.12/1.02  fof(f61,plain,(
% 3.12/1.02    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK1(X0,X1),X1)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f46])).
% 3.12/1.02  
% 3.12/1.02  fof(f63,plain,(
% 3.12/1.02    ( ! [X0,X1] : (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f47])).
% 3.12/1.02  
% 3.12/1.02  fof(f6,axiom,(
% 3.12/1.02    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f49,plain,(
% 3.12/1.02    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 3.12/1.02    inference(nnf_transformation,[],[f6])).
% 3.12/1.02  
% 3.12/1.02  fof(f69,plain,(
% 3.12/1.02    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 3.12/1.02    inference(cnf_transformation,[],[f49])).
% 3.12/1.02  
% 3.12/1.02  fof(f59,plain,(
% 3.12/1.02    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f46])).
% 3.12/1.02  
% 3.12/1.02  fof(f5,axiom,(
% 3.12/1.02    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f20,plain,(
% 3.12/1.02    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 3.12/1.02    inference(ennf_transformation,[],[f5])).
% 3.12/1.02  
% 3.12/1.02  fof(f48,plain,(
% 3.12/1.02    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 3.12/1.02    inference(nnf_transformation,[],[f20])).
% 3.12/1.02  
% 3.12/1.02  fof(f66,plain,(
% 3.12/1.02    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f48])).
% 3.12/1.02  
% 3.12/1.02  fof(f10,axiom,(
% 3.12/1.02    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f25,plain,(
% 3.12/1.02    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 3.12/1.02    inference(ennf_transformation,[],[f10])).
% 3.12/1.02  
% 3.12/1.02  fof(f26,plain,(
% 3.12/1.02    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 3.12/1.02    inference(flattening,[],[f25])).
% 3.12/1.02  
% 3.12/1.02  fof(f74,plain,(
% 3.12/1.02    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f26])).
% 3.12/1.02  
% 3.12/1.02  fof(f15,axiom,(
% 3.12/1.02    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)))),
% 3.12/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.12/1.02  
% 3.12/1.02  fof(f35,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : (v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.12/1.02    inference(ennf_transformation,[],[f15])).
% 3.12/1.02  
% 3.12/1.02  fof(f36,plain,(
% 3.12/1.02    ! [X0] : (! [X1] : (v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.12/1.02    inference(flattening,[],[f35])).
% 3.12/1.02  
% 3.12/1.02  fof(f83,plain,(
% 3.12/1.02    ( ! [X0,X1] : (v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.02    inference(cnf_transformation,[],[f36])).
% 3.12/1.02  
% 3.12/1.02  fof(f91,plain,(
% 3.12/1.02    ~v1_zfmisc_1(sK4) | ~v2_tex_2(sK4,sK3)),
% 3.12/1.02    inference(cnf_transformation,[],[f56])).
% 3.12/1.02  
% 3.12/1.02  cnf(c_28,negated_conjecture,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) | v1_zfmisc_1(sK4) ),
% 3.12/1.02      inference(cnf_transformation,[],[f90]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3271,plain,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) = iProver_top
% 3.12/1.02      | v1_zfmisc_1(sK4) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_29,negated_conjecture,
% 3.12/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) ),
% 3.12/1.02      inference(cnf_transformation,[],[f89]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3270,plain,
% 3.12/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_22,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,X1)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ v2_pre_topc(X1)
% 3.12/1.02      | ~ l1_pre_topc(X1)
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | u1_struct_0(sK2(X1,X0)) = X0 ),
% 3.12/1.02      inference(cnf_transformation,[],[f82]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_33,negated_conjecture,
% 3.12/1.02      ( v2_pre_topc(sK3) ),
% 3.12/1.02      inference(cnf_transformation,[],[f85]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_909,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,X1)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ l1_pre_topc(X1)
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | u1_struct_0(sK2(X1,X0)) = X0
% 3.12/1.02      | sK3 != X1 ),
% 3.12/1.02      inference(resolution_lifted,[status(thm)],[c_22,c_33]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_910,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | v2_struct_0(sK3)
% 3.12/1.02      | ~ l1_pre_topc(sK3)
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | u1_struct_0(sK2(sK3,X0)) = X0 ),
% 3.12/1.02      inference(unflattening,[status(thm)],[c_909]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_34,negated_conjecture,
% 3.12/1.02      ( ~ v2_struct_0(sK3) ),
% 3.12/1.02      inference(cnf_transformation,[],[f84]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_31,negated_conjecture,
% 3.12/1.02      ( l1_pre_topc(sK3) ),
% 3.12/1.02      inference(cnf_transformation,[],[f87]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_914,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | u1_struct_0(sK2(sK3,X0)) = X0 ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_910,c_34,c_31]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3266,plain,
% 3.12/1.02      ( u1_struct_0(sK2(sK3,X0)) = X0
% 3.12/1.02      | v2_tex_2(X0,sK3) != iProver_top
% 3.12/1.02      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top
% 3.12/1.02      | v1_xboole_0(X0) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_914]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3579,plain,
% 3.12/1.02      ( u1_struct_0(sK2(sK3,sK4)) = sK4
% 3.12/1.02      | v2_tex_2(sK4,sK3) != iProver_top
% 3.12/1.02      | v1_xboole_0(sK4) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_3270,c_3266]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_30,negated_conjecture,
% 3.12/1.02      ( ~ v1_xboole_0(sK4) ),
% 3.12/1.02      inference(cnf_transformation,[],[f88]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_39,plain,
% 3.12/1.02      ( v1_xboole_0(sK4) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1666,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | u1_struct_0(sK2(sK3,X0)) = X0
% 3.12/1.02      | k1_zfmisc_1(u1_struct_0(sK3)) != k1_zfmisc_1(u1_struct_0(sK3))
% 3.12/1.02      | sK4 != X0 ),
% 3.12/1.02      inference(resolution_lifted,[status(thm)],[c_29,c_914]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1667,plain,
% 3.12/1.02      ( ~ v2_tex_2(sK4,sK3)
% 3.12/1.02      | v1_xboole_0(sK4)
% 3.12/1.02      | u1_struct_0(sK2(sK3,sK4)) = sK4 ),
% 3.12/1.02      inference(unflattening,[status(thm)],[c_1666]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1668,plain,
% 3.12/1.02      ( u1_struct_0(sK2(sK3,sK4)) = sK4
% 3.12/1.02      | v2_tex_2(sK4,sK3) != iProver_top
% 3.12/1.02      | v1_xboole_0(sK4) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_1667]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3623,plain,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) != iProver_top
% 3.12/1.02      | u1_struct_0(sK2(sK3,sK4)) = sK4 ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_3579,c_39,c_1668]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3624,plain,
% 3.12/1.02      ( u1_struct_0(sK2(sK3,sK4)) = sK4
% 3.12/1.02      | v2_tex_2(sK4,sK3) != iProver_top ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_3623]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3629,plain,
% 3.12/1.02      ( u1_struct_0(sK2(sK3,sK4)) = sK4
% 3.12/1.02      | v1_zfmisc_1(sK4) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_3271,c_3624]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_0,plain,
% 3.12/1.02      ( r2_hidden(sK0(X0),X0) | v1_xboole_0(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f58]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3287,plain,
% 3.12/1.02      ( r2_hidden(sK0(X0),X0) = iProver_top
% 3.12/1.02      | v1_xboole_0(X0) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_6,plain,
% 3.12/1.02      ( r1_tarski(k1_tarski(X0),X1) | ~ r2_hidden(X0,X1) ),
% 3.12/1.02      inference(cnf_transformation,[],[f64]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3281,plain,
% 3.12/1.02      ( r1_tarski(k1_tarski(X0),X1) = iProver_top
% 3.12/1.02      | r2_hidden(X0,X1) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_21,plain,
% 3.12/1.02      ( ~ r1_tarski(X0,X1)
% 3.12/1.02      | ~ v1_zfmisc_1(X1)
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | v1_xboole_0(X1)
% 3.12/1.02      | X1 = X0 ),
% 3.12/1.02      inference(cnf_transformation,[],[f78]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3273,plain,
% 3.12/1.02      ( X0 = X1
% 3.12/1.02      | r1_tarski(X1,X0) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(X0) != iProver_top
% 3.12/1.02      | v1_xboole_0(X1) = iProver_top
% 3.12/1.02      | v1_xboole_0(X0) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4097,plain,
% 3.12/1.02      ( k1_tarski(X0) = X1
% 3.12/1.02      | r2_hidden(X0,X1) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(X1) != iProver_top
% 3.12/1.02      | v1_xboole_0(X1) = iProver_top
% 3.12/1.02      | v1_xboole_0(k1_tarski(X0)) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_3281,c_3273]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5,plain,
% 3.12/1.02      ( ~ v1_xboole_0(k1_tarski(X0)) ),
% 3.12/1.02      inference(cnf_transformation,[],[f62]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_98,plain,
% 3.12/1.02      ( v1_xboole_0(k1_tarski(X0)) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1,plain,
% 3.12/1.02      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 3.12/1.02      inference(cnf_transformation,[],[f57]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_108,plain,
% 3.12/1.02      ( r2_hidden(X0,X1) != iProver_top
% 3.12/1.02      | v1_xboole_0(X1) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5316,plain,
% 3.12/1.02      ( k1_tarski(X0) = X1
% 3.12/1.02      | r2_hidden(X0,X1) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(X1) != iProver_top ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_4097,c_98,c_108]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5325,plain,
% 3.12/1.02      ( k1_tarski(sK0(X0)) = X0
% 3.12/1.02      | v1_zfmisc_1(X0) != iProver_top
% 3.12/1.02      | v1_xboole_0(X0) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_3287,c_5316]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5940,plain,
% 3.12/1.02      ( u1_struct_0(sK2(sK3,sK4)) = sK4
% 3.12/1.02      | k1_tarski(sK0(sK4)) = sK4
% 3.12/1.02      | v1_xboole_0(sK4) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_3629,c_5325]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5985,plain,
% 3.12/1.02      ( v1_xboole_0(sK4)
% 3.12/1.02      | u1_struct_0(sK2(sK3,sK4)) = sK4
% 3.12/1.02      | k1_tarski(sK0(sK4)) = sK4 ),
% 3.12/1.02      inference(predicate_to_equality_rev,[status(thm)],[c_5940]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_6091,plain,
% 3.12/1.02      ( k1_tarski(sK0(sK4)) = sK4 | u1_struct_0(sK2(sK3,sK4)) = sK4 ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_5940,c_30,c_5985]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_6092,plain,
% 3.12/1.02      ( u1_struct_0(sK2(sK3,sK4)) = sK4 | k1_tarski(sK0(sK4)) = sK4 ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_6091]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_24,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,X1)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | v1_tdlat_3(sK2(X1,X0))
% 3.12/1.02      | ~ v2_pre_topc(X1)
% 3.12/1.02      | ~ l1_pre_topc(X1)
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f80]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_885,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,X1)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | v1_tdlat_3(sK2(X1,X0))
% 3.12/1.02      | ~ l1_pre_topc(X1)
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | sK3 != X1 ),
% 3.12/1.02      inference(resolution_lifted,[status(thm)],[c_24,c_33]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_886,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | v2_struct_0(sK3)
% 3.12/1.02      | v1_tdlat_3(sK2(sK3,X0))
% 3.12/1.02      | ~ l1_pre_topc(sK3)
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(unflattening,[status(thm)],[c_885]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_890,plain,
% 3.12/1.02      ( v1_tdlat_3(sK2(sK3,X0))
% 3.12/1.02      | ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_886,c_34,c_31]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_891,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | v1_tdlat_3(sK2(sK3,X0))
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_890]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_25,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,X1)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ v2_struct_0(sK2(X1,X0))
% 3.12/1.02      | ~ v2_pre_topc(X1)
% 3.12/1.02      | ~ l1_pre_topc(X1)
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f79]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_861,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,X1)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ v2_struct_0(sK2(X1,X0))
% 3.12/1.02      | ~ l1_pre_topc(X1)
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | sK3 != X1 ),
% 3.12/1.02      inference(resolution_lifted,[status(thm)],[c_25,c_33]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_862,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | ~ v2_struct_0(sK2(sK3,X0))
% 3.12/1.02      | v2_struct_0(sK3)
% 3.12/1.02      | ~ l1_pre_topc(sK3)
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(unflattening,[status(thm)],[c_861]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_866,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | ~ v2_struct_0(sK2(sK3,X0))
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_862,c_34,c_31]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_23,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,X1)
% 3.12/1.02      | m1_pre_topc(sK2(X1,X0),X1)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ v2_pre_topc(X1)
% 3.12/1.02      | ~ l1_pre_topc(X1)
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f81]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_19,plain,
% 3.12/1.02      ( ~ m1_pre_topc(X0,X1)
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | ~ v1_tdlat_3(X0)
% 3.12/1.02      | ~ v2_tdlat_3(X1)
% 3.12/1.02      | ~ v2_pre_topc(X1)
% 3.12/1.02      | v7_struct_0(X0)
% 3.12/1.02      | ~ l1_pre_topc(X1) ),
% 3.12/1.02      inference(cnf_transformation,[],[f77]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_14,plain,
% 3.12/1.02      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f71]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_16,plain,
% 3.12/1.02      ( ~ v7_struct_0(X0)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(X0))
% 3.12/1.02      | ~ l1_struct_0(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f73]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_466,plain,
% 3.12/1.02      ( ~ v7_struct_0(X0)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(X0))
% 3.12/1.02      | ~ l1_pre_topc(X0) ),
% 3.12/1.02      inference(resolution,[status(thm)],[c_14,c_16]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_484,plain,
% 3.12/1.02      ( ~ m1_pre_topc(X0,X1)
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ v1_tdlat_3(X0)
% 3.12/1.02      | ~ v2_tdlat_3(X1)
% 3.12/1.02      | ~ v2_pre_topc(X1)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(X0))
% 3.12/1.02      | ~ l1_pre_topc(X0)
% 3.12/1.02      | ~ l1_pre_topc(X1) ),
% 3.12/1.02      inference(resolution,[status(thm)],[c_19,c_466]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_15,plain,
% 3.12/1.02      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f72]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_488,plain,
% 3.12/1.02      ( v1_zfmisc_1(u1_struct_0(X0))
% 3.12/1.02      | ~ v2_pre_topc(X1)
% 3.12/1.02      | ~ v2_tdlat_3(X1)
% 3.12/1.02      | ~ v1_tdlat_3(X0)
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | ~ m1_pre_topc(X0,X1)
% 3.12/1.02      | ~ l1_pre_topc(X1) ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_484,c_15]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_489,plain,
% 3.12/1.02      ( ~ m1_pre_topc(X0,X1)
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ v1_tdlat_3(X0)
% 3.12/1.02      | ~ v2_tdlat_3(X1)
% 3.12/1.02      | ~ v2_pre_topc(X1)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(X0))
% 3.12/1.02      | ~ l1_pre_topc(X1) ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_488]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_18,plain,
% 3.12/1.02      ( ~ v2_tdlat_3(X0) | v2_pre_topc(X0) | ~ l1_pre_topc(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f75]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_508,plain,
% 3.12/1.02      ( ~ m1_pre_topc(X0,X1)
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ v1_tdlat_3(X0)
% 3.12/1.02      | ~ v2_tdlat_3(X1)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(X0))
% 3.12/1.02      | ~ l1_pre_topc(X1) ),
% 3.12/1.02      inference(forward_subsumption_resolution,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_489,c_18]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_32,negated_conjecture,
% 3.12/1.02      ( v2_tdlat_3(sK3) ),
% 3.12/1.02      inference(cnf_transformation,[],[f86]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_529,plain,
% 3.12/1.02      ( ~ m1_pre_topc(X0,X1)
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ v1_tdlat_3(X0)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(X0))
% 3.12/1.02      | ~ l1_pre_topc(X1)
% 3.12/1.02      | sK3 != X1 ),
% 3.12/1.02      inference(resolution_lifted,[status(thm)],[c_508,c_32]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_530,plain,
% 3.12/1.02      ( ~ m1_pre_topc(X0,sK3)
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | v2_struct_0(sK3)
% 3.12/1.02      | ~ v1_tdlat_3(X0)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(X0))
% 3.12/1.02      | ~ l1_pre_topc(sK3) ),
% 3.12/1.02      inference(unflattening,[status(thm)],[c_529]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_534,plain,
% 3.12/1.02      ( v1_zfmisc_1(u1_struct_0(X0))
% 3.12/1.02      | ~ v1_tdlat_3(X0)
% 3.12/1.02      | ~ m1_pre_topc(X0,sK3)
% 3.12/1.02      | v2_struct_0(X0) ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_530,c_34,c_31]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_535,plain,
% 3.12/1.02      ( ~ m1_pre_topc(X0,sK3)
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | ~ v1_tdlat_3(X0)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(X0)) ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_534]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_629,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,X1)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.02      | v2_struct_0(X2)
% 3.12/1.02      | v2_struct_0(X1)
% 3.12/1.02      | ~ v1_tdlat_3(X2)
% 3.12/1.02      | ~ v2_pre_topc(X1)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(X2))
% 3.12/1.02      | ~ l1_pre_topc(X1)
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | sK2(X1,X0) != X2
% 3.12/1.02      | sK3 != X1 ),
% 3.12/1.02      inference(resolution_lifted,[status(thm)],[c_23,c_535]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_630,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | v2_struct_0(sK2(sK3,X0))
% 3.12/1.02      | v2_struct_0(sK3)
% 3.12/1.02      | ~ v1_tdlat_3(sK2(sK3,X0))
% 3.12/1.02      | ~ v2_pre_topc(sK3)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
% 3.12/1.02      | ~ l1_pre_topc(sK3)
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(unflattening,[status(thm)],[c_629]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_634,plain,
% 3.12/1.02      ( v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
% 3.12/1.02      | v2_struct_0(sK2(sK3,X0))
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ v1_tdlat_3(sK2(sK3,X0))
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_630,c_34,c_33,c_31]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_635,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | v2_struct_0(sK2(sK3,X0))
% 3.12/1.02      | ~ v1_tdlat_3(sK2(sK3,X0))
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_634]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_944,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | ~ v1_tdlat_3(sK2(sK3,X0))
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(backward_subsumption_resolution,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_866,c_635]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_953,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
% 3.12/1.02      | v1_xboole_0(X0) ),
% 3.12/1.02      inference(backward_subsumption_resolution,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_891,c_944]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3265,plain,
% 3.12/1.02      ( v2_tex_2(X0,sK3) != iProver_top
% 3.12/1.02      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0))) = iProver_top
% 3.12/1.02      | v1_xboole_0(X0) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_953]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3636,plain,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top
% 3.12/1.02      | v1_xboole_0(sK4) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_3270,c_3265]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1652,plain,
% 3.12/1.02      ( ~ v2_tex_2(X0,sK3)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,X0)))
% 3.12/1.02      | v1_xboole_0(X0)
% 3.12/1.02      | k1_zfmisc_1(u1_struct_0(sK3)) != k1_zfmisc_1(u1_struct_0(sK3))
% 3.12/1.02      | sK4 != X0 ),
% 3.12/1.02      inference(resolution_lifted,[status(thm)],[c_29,c_953]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1653,plain,
% 3.12/1.02      ( ~ v2_tex_2(sK4,sK3)
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4)))
% 3.12/1.02      | v1_xboole_0(sK4) ),
% 3.12/1.02      inference(unflattening,[status(thm)],[c_1652]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1655,plain,
% 3.12/1.02      ( v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) | ~ v2_tex_2(sK4,sK3) ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_1653,c_30]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1656,plain,
% 3.12/1.02      ( ~ v2_tex_2(sK4,sK3) | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_1655]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1657,plain,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_1656]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3982,plain,
% 3.12/1.02      ( v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top
% 3.12/1.02      | v2_tex_2(sK4,sK3) != iProver_top ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_3636,c_1657]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3983,plain,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_3982]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_6096,plain,
% 3.12/1.02      ( k1_tarski(sK0(sK4)) = sK4
% 3.12/1.02      | v2_tex_2(sK4,sK3) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(sK4) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_6092,c_3983]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_41,plain,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) = iProver_top
% 3.12/1.02      | v1_zfmisc_1(sK4) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_6260,plain,
% 3.12/1.02      ( k1_tarski(sK0(sK4)) = sK4 | v1_zfmisc_1(sK4) = iProver_top ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_6096,c_41]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_6266,plain,
% 3.12/1.02      ( k1_tarski(sK0(sK4)) = sK4 | v1_xboole_0(sK4) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_6260,c_5325]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_6333,plain,
% 3.12/1.02      ( k1_tarski(sK0(sK4)) = sK4 ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_6266,c_39]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3,plain,
% 3.12/1.02      ( r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f60]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3284,plain,
% 3.12/1.02      ( r1_tarski(X0,X1) = iProver_top
% 3.12/1.02      | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_2,plain,
% 3.12/1.02      ( r1_tarski(X0,X1) | ~ r2_hidden(sK1(X0,X1),X1) ),
% 3.12/1.02      inference(cnf_transformation,[],[f61]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3285,plain,
% 3.12/1.02      ( r1_tarski(X0,X1) = iProver_top
% 3.12/1.02      | r2_hidden(sK1(X0,X1),X1) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4190,plain,
% 3.12/1.02      ( r1_tarski(X0,X0) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_3284,c_3285]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_7,plain,
% 3.12/1.02      ( ~ r1_tarski(k1_tarski(X0),X1) | r2_hidden(X0,X1) ),
% 3.12/1.02      inference(cnf_transformation,[],[f63]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3280,plain,
% 3.12/1.02      ( r1_tarski(k1_tarski(X0),X1) != iProver_top
% 3.12/1.02      | r2_hidden(X0,X1) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4362,plain,
% 3.12/1.02      ( r2_hidden(X0,k1_tarski(X0)) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_4190,c_3280]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_6341,plain,
% 3.12/1.02      ( r2_hidden(sK0(sK4),sK4) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_6333,c_4362]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_13,plain,
% 3.12/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 3.12/1.02      inference(cnf_transformation,[],[f69]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3275,plain,
% 3.12/1.02      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.12/1.02      | r1_tarski(X0,X1) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3818,plain,
% 3.12/1.02      ( r1_tarski(sK4,u1_struct_0(sK3)) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_3270,c_3275]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4,plain,
% 3.12/1.02      ( ~ r1_tarski(X0,X1) | ~ r2_hidden(X2,X0) | r2_hidden(X2,X1) ),
% 3.12/1.02      inference(cnf_transformation,[],[f59]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3283,plain,
% 3.12/1.02      ( r1_tarski(X0,X1) != iProver_top
% 3.12/1.02      | r2_hidden(X2,X0) != iProver_top
% 3.12/1.02      | r2_hidden(X2,X1) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4842,plain,
% 3.12/1.02      ( r2_hidden(X0,u1_struct_0(sK3)) = iProver_top
% 3.12/1.02      | r2_hidden(X0,sK4) != iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_3818,c_3283]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_10,plain,
% 3.12/1.02      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.12/1.02      inference(cnf_transformation,[],[f66]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_208,plain,
% 3.12/1.02      ( ~ r2_hidden(X0,X1) | m1_subset_1(X0,X1) ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_10,c_1]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_209,plain,
% 3.12/1.02      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_208]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3268,plain,
% 3.12/1.02      ( m1_subset_1(X0,X1) = iProver_top
% 3.12/1.02      | r2_hidden(X0,X1) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_209]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5113,plain,
% 3.12/1.02      ( m1_subset_1(X0,u1_struct_0(sK3)) = iProver_top
% 3.12/1.02      | r2_hidden(X0,sK4) != iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_4842,c_3268]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_17,plain,
% 3.12/1.02      ( ~ m1_subset_1(X0,X1)
% 3.12/1.02      | v1_xboole_0(X1)
% 3.12/1.02      | k6_domain_1(X1,X0) = k1_tarski(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f74]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3274,plain,
% 3.12/1.02      ( k6_domain_1(X0,X1) = k1_tarski(X1)
% 3.12/1.02      | m1_subset_1(X1,X0) != iProver_top
% 3.12/1.02      | v1_xboole_0(X0) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5257,plain,
% 3.12/1.02      ( k6_domain_1(u1_struct_0(sK3),X0) = k1_tarski(X0)
% 3.12/1.02      | r2_hidden(X0,sK4) != iProver_top
% 3.12/1.02      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_5113,c_3274]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3471,plain,
% 3.12/1.02      ( r2_hidden(sK0(sK4),sK4) | v1_xboole_0(sK4) ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_0]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3472,plain,
% 3.12/1.02      ( r2_hidden(sK0(sK4),sK4) = iProver_top
% 3.12/1.02      | v1_xboole_0(sK4) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_3471]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3595,plain,
% 3.12/1.02      ( ~ r1_tarski(sK4,X0)
% 3.12/1.02      | r2_hidden(sK0(sK4),X0)
% 3.12/1.02      | ~ r2_hidden(sK0(sK4),sK4) ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_4]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4009,plain,
% 3.12/1.02      ( ~ r1_tarski(sK4,u1_struct_0(sK3))
% 3.12/1.02      | r2_hidden(sK0(sK4),u1_struct_0(sK3))
% 3.12/1.02      | ~ r2_hidden(sK0(sK4),sK4) ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_3595]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4011,plain,
% 3.12/1.02      ( r1_tarski(sK4,u1_struct_0(sK3)) != iProver_top
% 3.12/1.02      | r2_hidden(sK0(sK4),u1_struct_0(sK3)) = iProver_top
% 3.12/1.02      | r2_hidden(sK0(sK4),sK4) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_4009]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4085,plain,
% 3.12/1.02      ( ~ r2_hidden(X0,u1_struct_0(sK3))
% 3.12/1.02      | ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_1]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5145,plain,
% 3.12/1.02      ( ~ r2_hidden(sK0(sK4),u1_struct_0(sK3))
% 3.12/1.02      | ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_4085]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5146,plain,
% 3.12/1.02      ( r2_hidden(sK0(sK4),u1_struct_0(sK3)) != iProver_top
% 3.12/1.02      | v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_5145]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_7679,plain,
% 3.12/1.02      ( r2_hidden(X0,sK4) != iProver_top
% 3.12/1.02      | k6_domain_1(u1_struct_0(sK3),X0) = k1_tarski(X0) ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_5257,c_39,c_3472,c_3818,c_4011,c_5146]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_7680,plain,
% 3.12/1.02      ( k6_domain_1(u1_struct_0(sK3),X0) = k1_tarski(X0)
% 3.12/1.02      | r2_hidden(X0,sK4) != iProver_top ),
% 3.12/1.02      inference(renaming,[status(thm)],[c_7679]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_7689,plain,
% 3.12/1.02      ( k6_domain_1(u1_struct_0(sK3),sK0(sK4)) = k1_tarski(sK0(sK4)) ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_6341,c_7680]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_7697,plain,
% 3.12/1.02      ( k6_domain_1(u1_struct_0(sK3),sK0(sK4)) = sK4 ),
% 3.12/1.02      inference(light_normalisation,[status(thm)],[c_7689,c_6333]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_26,plain,
% 3.12/1.02      ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
% 3.12/1.02      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | ~ v2_pre_topc(X0)
% 3.12/1.02      | ~ l1_pre_topc(X0) ),
% 3.12/1.02      inference(cnf_transformation,[],[f83]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_819,plain,
% 3.12/1.02      ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
% 3.12/1.02      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.12/1.02      | v2_struct_0(X0)
% 3.12/1.02      | ~ l1_pre_topc(X0)
% 3.12/1.02      | sK3 != X0 ),
% 3.12/1.02      inference(resolution_lifted,[status(thm)],[c_26,c_33]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_820,plain,
% 3.12/1.02      ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.12/1.02      | v2_struct_0(sK3)
% 3.12/1.02      | ~ l1_pre_topc(sK3) ),
% 3.12/1.02      inference(unflattening,[status(thm)],[c_819]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_824,plain,
% 3.12/1.02      ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3)
% 3.12/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
% 3.12/1.02      inference(global_propositional_subsumption,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_820,c_34,c_31]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3267,plain,
% 3.12/1.02      ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3) = iProver_top
% 3.12/1.02      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_824]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_7771,plain,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) = iProver_top
% 3.12/1.02      | m1_subset_1(sK0(sK4),u1_struct_0(sK3)) != iProver_top ),
% 3.12/1.02      inference(superposition,[status(thm)],[c_7697,c_3267]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_2684,plain,
% 3.12/1.02      ( ~ v1_zfmisc_1(X0) | v1_zfmisc_1(X1) | X1 != X0 ),
% 3.12/1.02      theory(equality) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5036,plain,
% 3.12/1.02      ( v1_zfmisc_1(X0)
% 3.12/1.02      | ~ v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4)))
% 3.12/1.02      | X0 != u1_struct_0(sK2(sK3,sK4)) ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_2684]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_7583,plain,
% 3.12/1.02      ( ~ v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4)))
% 3.12/1.02      | v1_zfmisc_1(sK4)
% 3.12/1.02      | sK4 != u1_struct_0(sK2(sK3,sK4)) ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_5036]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_7584,plain,
% 3.12/1.02      ( sK4 != u1_struct_0(sK2(sK3,sK4))
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(sK4) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_7583]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_2677,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3638,plain,
% 3.12/1.02      ( X0 != X1 | sK4 != X1 | sK4 = X0 ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_2677]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3805,plain,
% 3.12/1.02      ( X0 != sK4 | sK4 = X0 | sK4 != sK4 ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_3638]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_5026,plain,
% 3.12/1.02      ( u1_struct_0(sK2(sK3,sK4)) != sK4
% 3.12/1.02      | sK4 = u1_struct_0(sK2(sK3,sK4))
% 3.12/1.02      | sK4 != sK4 ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_3805]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3493,plain,
% 3.12/1.02      ( m1_subset_1(X0,u1_struct_0(sK3))
% 3.12/1.02      | ~ r2_hidden(X0,u1_struct_0(sK3)) ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_209]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4010,plain,
% 3.12/1.02      ( m1_subset_1(sK0(sK4),u1_struct_0(sK3))
% 3.12/1.02      | ~ r2_hidden(sK0(sK4),u1_struct_0(sK3)) ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_3493]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_4013,plain,
% 3.12/1.02      ( m1_subset_1(sK0(sK4),u1_struct_0(sK3)) = iProver_top
% 3.12/1.02      | r2_hidden(sK0(sK4),u1_struct_0(sK3)) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_4010]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_2676,plain,( X0 = X0 ),theory(equality) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_3806,plain,
% 3.12/1.02      ( sK4 = sK4 ),
% 3.12/1.02      inference(instantiation,[status(thm)],[c_2676]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_1654,plain,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(u1_struct_0(sK2(sK3,sK4))) = iProver_top
% 3.12/1.02      | v1_xboole_0(sK4) = iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_1653]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_27,negated_conjecture,
% 3.12/1.02      ( ~ v2_tex_2(sK4,sK3) | ~ v1_zfmisc_1(sK4) ),
% 3.12/1.02      inference(cnf_transformation,[],[f91]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(c_42,plain,
% 3.12/1.02      ( v2_tex_2(sK4,sK3) != iProver_top
% 3.12/1.02      | v1_zfmisc_1(sK4) != iProver_top ),
% 3.12/1.02      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.12/1.02  
% 3.12/1.02  cnf(contradiction,plain,
% 3.12/1.02      ( $false ),
% 3.12/1.02      inference(minisat,
% 3.12/1.02                [status(thm)],
% 3.12/1.02                [c_7771,c_7584,c_5026,c_4013,c_4011,c_3818,c_3806,c_3472,
% 3.12/1.02                 c_1668,c_1654,c_42,c_39]) ).
% 3.12/1.02  
% 3.12/1.02  
% 3.12/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 3.12/1.02  
% 3.12/1.02  ------                               Statistics
% 3.12/1.02  
% 3.12/1.02  ------ General
% 3.12/1.02  
% 3.12/1.02  abstr_ref_over_cycles:                  0
% 3.12/1.02  abstr_ref_under_cycles:                 0
% 3.12/1.02  gc_basic_clause_elim:                   0
% 3.12/1.02  forced_gc_time:                         0
% 3.12/1.02  parsing_time:                           0.034
% 3.12/1.02  unif_index_cands_time:                  0.
% 3.12/1.02  unif_index_add_time:                    0.
% 3.12/1.02  orderings_time:                         0.
% 3.12/1.02  out_proof_time:                         0.013
% 3.12/1.02  total_time:                             0.219
% 3.12/1.02  num_of_symbols:                         54
% 3.12/1.02  num_of_terms:                           4374
% 3.12/1.02  
% 3.12/1.02  ------ Preprocessing
% 3.12/1.02  
% 3.12/1.02  num_of_splits:                          0
% 3.12/1.02  num_of_split_atoms:                     0
% 3.12/1.02  num_of_reused_defs:                     0
% 3.12/1.02  num_eq_ax_congr_red:                    28
% 3.12/1.02  num_of_sem_filtered_clauses:            1
% 3.12/1.02  num_of_subtypes:                        0
% 3.12/1.02  monotx_restored_types:                  0
% 3.12/1.02  sat_num_of_epr_types:                   0
% 3.12/1.02  sat_num_of_non_cyclic_types:            0
% 3.12/1.02  sat_guarded_non_collapsed_types:        0
% 3.12/1.02  num_pure_diseq_elim:                    0
% 3.12/1.02  simp_replaced_by:                       0
% 3.12/1.02  res_preprocessed:                       128
% 3.12/1.02  prep_upred:                             0
% 3.12/1.02  prep_unflattend:                        120
% 3.12/1.02  smt_new_axioms:                         0
% 3.12/1.02  pred_elim_cands:                        6
% 3.12/1.02  pred_elim:                              8
% 3.12/1.02  pred_elim_cl:                           11
% 3.12/1.02  pred_elim_cycles:                       19
% 3.12/1.02  merged_defs:                            24
% 3.12/1.02  merged_defs_ncl:                        0
% 3.12/1.02  bin_hyper_res:                          24
% 3.12/1.02  prep_cycles:                            4
% 3.12/1.02  pred_elim_time:                         0.024
% 3.12/1.02  splitting_time:                         0.
% 3.12/1.02  sem_filter_time:                        0.
% 3.12/1.02  monotx_time:                            0.
% 3.12/1.02  subtype_inf_time:                       0.
% 3.12/1.02  
% 3.12/1.02  ------ Problem properties
% 3.12/1.02  
% 3.12/1.02  clauses:                                23
% 3.12/1.02  conjectures:                            4
% 3.12/1.02  epr:                                    10
% 3.12/1.02  horn:                                   15
% 3.12/1.02  ground:                                 4
% 3.12/1.02  unary:                                  3
% 3.12/1.02  binary:                                 12
% 3.12/1.02  lits:                                   55
% 3.12/1.02  lits_eq:                                3
% 3.12/1.02  fd_pure:                                0
% 3.12/1.02  fd_pseudo:                              0
% 3.12/1.02  fd_cond:                                0
% 3.12/1.02  fd_pseudo_cond:                         1
% 3.12/1.02  ac_symbols:                             0
% 3.12/1.02  
% 3.12/1.02  ------ Propositional Solver
% 3.12/1.02  
% 3.12/1.02  prop_solver_calls:                      29
% 3.12/1.02  prop_fast_solver_calls:                 1405
% 3.12/1.02  smt_solver_calls:                       0
% 3.12/1.02  smt_fast_solver_calls:                  0
% 3.12/1.02  prop_num_of_clauses:                    2379
% 3.12/1.02  prop_preprocess_simplified:             6901
% 3.12/1.02  prop_fo_subsumed:                       71
% 3.12/1.02  prop_solver_time:                       0.
% 3.12/1.02  smt_solver_time:                        0.
% 3.12/1.02  smt_fast_solver_time:                   0.
% 3.12/1.02  prop_fast_solver_time:                  0.
% 3.12/1.02  prop_unsat_core_time:                   0.
% 3.12/1.02  
% 3.12/1.02  ------ QBF
% 3.12/1.02  
% 3.12/1.02  qbf_q_res:                              0
% 3.12/1.02  qbf_num_tautologies:                    0
% 3.12/1.02  qbf_prep_cycles:                        0
% 3.12/1.02  
% 3.12/1.02  ------ BMC1
% 3.12/1.02  
% 3.12/1.02  bmc1_current_bound:                     -1
% 3.12/1.02  bmc1_last_solved_bound:                 -1
% 3.12/1.02  bmc1_unsat_core_size:                   -1
% 3.12/1.02  bmc1_unsat_core_parents_size:           -1
% 3.12/1.02  bmc1_merge_next_fun:                    0
% 3.12/1.02  bmc1_unsat_core_clauses_time:           0.
% 3.12/1.02  
% 3.12/1.02  ------ Instantiation
% 3.12/1.02  
% 3.12/1.02  inst_num_of_clauses:                    584
% 3.12/1.02  inst_num_in_passive:                    258
% 3.12/1.02  inst_num_in_active:                     291
% 3.12/1.02  inst_num_in_unprocessed:                35
% 3.12/1.02  inst_num_of_loops:                      440
% 3.12/1.02  inst_num_of_learning_restarts:          0
% 3.12/1.02  inst_num_moves_active_passive:          145
% 3.12/1.02  inst_lit_activity:                      0
% 3.12/1.02  inst_lit_activity_moves:                0
% 3.12/1.02  inst_num_tautologies:                   0
% 3.12/1.02  inst_num_prop_implied:                  0
% 3.12/1.02  inst_num_existing_simplified:           0
% 3.12/1.02  inst_num_eq_res_simplified:             0
% 3.12/1.02  inst_num_child_elim:                    0
% 3.12/1.02  inst_num_of_dismatching_blockings:      181
% 3.12/1.02  inst_num_of_non_proper_insts:           589
% 3.12/1.02  inst_num_of_duplicates:                 0
% 3.12/1.02  inst_inst_num_from_inst_to_res:         0
% 3.12/1.02  inst_dismatching_checking_time:         0.
% 3.12/1.02  
% 3.12/1.02  ------ Resolution
% 3.12/1.02  
% 3.12/1.02  res_num_of_clauses:                     0
% 3.12/1.02  res_num_in_passive:                     0
% 3.12/1.02  res_num_in_active:                      0
% 3.12/1.02  res_num_of_loops:                       132
% 3.12/1.02  res_forward_subset_subsumed:            75
% 3.12/1.02  res_backward_subset_subsumed:           0
% 3.12/1.02  res_forward_subsumed:                   0
% 3.12/1.02  res_backward_subsumed:                  0
% 3.12/1.02  res_forward_subsumption_resolution:     2
% 3.12/1.02  res_backward_subsumption_resolution:    4
% 3.12/1.02  res_clause_to_clause_subsumption:       348
% 3.12/1.02  res_orphan_elimination:                 0
% 3.12/1.02  res_tautology_del:                      123
% 3.12/1.02  res_num_eq_res_simplified:              0
% 3.12/1.02  res_num_sel_changes:                    0
% 3.12/1.02  res_moves_from_active_to_pass:          0
% 3.12/1.02  
% 3.12/1.02  ------ Superposition
% 3.12/1.02  
% 3.12/1.02  sup_time_total:                         0.
% 3.12/1.02  sup_time_generating:                    0.
% 3.12/1.02  sup_time_sim_full:                      0.
% 3.12/1.02  sup_time_sim_immed:                     0.
% 3.12/1.02  
% 3.12/1.02  sup_num_of_clauses:                     124
% 3.12/1.02  sup_num_in_active:                      85
% 3.12/1.02  sup_num_in_passive:                     39
% 3.12/1.02  sup_num_of_loops:                       87
% 3.12/1.02  sup_fw_superposition:                   80
% 3.12/1.02  sup_bw_superposition:                   96
% 3.12/1.02  sup_immediate_simplified:               37
% 3.12/1.02  sup_given_eliminated:                   0
% 3.12/1.02  comparisons_done:                       0
% 3.12/1.02  comparisons_avoided:                    0
% 3.12/1.02  
% 3.12/1.02  ------ Simplifications
% 3.12/1.02  
% 3.12/1.02  
% 3.12/1.02  sim_fw_subset_subsumed:                 16
% 3.12/1.02  sim_bw_subset_subsumed:                 3
% 3.12/1.02  sim_fw_subsumed:                        8
% 3.12/1.02  sim_bw_subsumed:                        0
% 3.12/1.02  sim_fw_subsumption_res:                 0
% 3.12/1.02  sim_bw_subsumption_res:                 0
% 3.12/1.02  sim_tautology_del:                      19
% 3.12/1.02  sim_eq_tautology_del:                   6
% 3.12/1.02  sim_eq_res_simp:                        0
% 3.12/1.02  sim_fw_demodulated:                     2
% 3.12/1.02  sim_bw_demodulated:                     1
% 3.12/1.02  sim_light_normalised:                   11
% 3.12/1.02  sim_joinable_taut:                      0
% 3.12/1.02  sim_joinable_simp:                      0
% 3.12/1.02  sim_ac_normalised:                      0
% 3.12/1.02  sim_smt_subsumption:                    0
% 3.12/1.02  
%------------------------------------------------------------------------------
