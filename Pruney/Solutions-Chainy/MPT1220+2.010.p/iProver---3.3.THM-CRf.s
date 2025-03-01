%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:13:26 EST 2020

% Result     : Theorem 3.60s
% Output     : CNFRefutation 3.60s
% Verified   : 
% Statistics : Number of formulae       :  138 ( 246 expanded)
%              Number of clauses        :   78 ( 116 expanded)
%              Number of leaves         :   22 (  47 expanded)
%              Depth                    :   17
%              Number of atoms          :  343 ( 584 expanded)
%              Number of equality atoms :  101 ( 159 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f26,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f25])).

fof(f63,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f17,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => k2_pre_topc(X0,k2_struct_0(X0)) = k2_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => k2_pre_topc(X0,k2_struct_0(X0)) = k2_struct_0(X0) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f31,plain,(
    ? [X0] :
      ( k2_pre_topc(X0,k2_struct_0(X0)) != k2_struct_0(X0)
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f42,plain,
    ( ? [X0] :
        ( k2_pre_topc(X0,k2_struct_0(X0)) != k2_struct_0(X0)
        & l1_pre_topc(X0) )
   => ( k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_struct_0(sK2)
      & l1_pre_topc(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,
    ( k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_struct_0(sK2)
    & l1_pre_topc(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f31,f42])).

fof(f68,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f43])).

fof(f4,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f58,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f61,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X2] :
              ~ ( r2_hidden(X2,X1)
                & r2_hidden(X2,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f2])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f36,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f21,f36])).

fof(f48,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK1(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f13,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f64,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f14,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => v1_xboole_0(k1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( v1_xboole_0(k1_struct_0(X0))
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f65,plain,(
    ! [X0] :
      ( v1_xboole_0(k1_struct_0(X0))
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f55,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f32])).

fof(f34,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f33,f34])).

fof(f45,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f38])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f39])).

fof(f71,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f50])).

fof(f5,axiom,(
    ! [X0] :
      ( r1_tarski(X0,k1_xboole_0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_xboole_0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f54,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_xboole_0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f15,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f66,plain,(
    ! [X0] :
      ( k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f60,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f16,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => r1_tarski(X1,k2_pre_topc(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(X1,k2_pre_topc(X0,X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f67,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,k2_pre_topc(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f52,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f69,plain,(
    k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_739,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1311,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),k2_struct_0(sK2))
    | k2_pre_topc(sK2,k2_struct_0(sK2)) != X0
    | k2_struct_0(sK2) != X1 ),
    inference(instantiation,[status(thm)],[c_739])).

cnf(c_5566,plain,
    ( ~ r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),X0)
    | r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),k2_struct_0(sK2))
    | k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_pre_topc(sK2,k2_struct_0(sK2))
    | k2_struct_0(sK2) != X0 ),
    inference(instantiation,[status(thm)],[c_1311])).

cnf(c_10527,plain,
    ( r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),k2_struct_0(sK2))
    | ~ r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),u1_struct_0(sK2))
    | k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_pre_topc(sK2,k2_struct_0(sK2))
    | k2_struct_0(sK2) != u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_5566])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_25,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_370,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_25])).

cnf(c_371,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(k2_pre_topc(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(unflattening,[status(thm)],[c_370])).

cnf(c_8596,plain,
    ( m1_subset_1(k2_pre_topc(sK2,k2_struct_0(sK2)),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(instantiation,[status(thm)],[c_371])).

cnf(c_9,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1204,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_16,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_201,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_16])).

cnf(c_202,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_201])).

cnf(c_243,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
    inference(bin_hyper_res,[status(thm)],[c_14,c_202])).

cnf(c_1197,plain,
    ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_243])).

cnf(c_1559,plain,
    ( k3_subset_1(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_1204,c_1197])).

cnf(c_4,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK1(X0,X1),X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1208,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_20,plain,
    ( l1_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_351,plain,
    ( l1_struct_0(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_25])).

cnf(c_352,plain,
    ( l1_struct_0(sK2) ),
    inference(unflattening,[status(thm)],[c_351])).

cnf(c_21,plain,
    ( ~ l1_struct_0(X0)
    | v1_xboole_0(k1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_246,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X2)
    | ~ v1_xboole_0(X2) ),
    inference(bin_hyper_res,[status(thm)],[c_18,c_202])).

cnf(c_332,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X2)
    | ~ l1_struct_0(X3)
    | k1_struct_0(X3) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_246])).

cnf(c_333,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,k1_struct_0(X2))
    | ~ l1_struct_0(X2) ),
    inference(unflattening,[status(thm)],[c_332])).

cnf(c_395,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,k1_struct_0(X2))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_352,c_333])).

cnf(c_396,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,k1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_395])).

cnf(c_1194,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(X1,k1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_396])).

cnf(c_1526,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1204,c_1194])).

cnf(c_2855,plain,
    ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1208,c_1526])).

cnf(c_12,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1201,plain,
    ( k4_xboole_0(X0,X1) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_4617,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(superposition,[status(thm)],[c_2855,c_1201])).

cnf(c_6181,plain,
    ( k3_subset_1(X0,k1_xboole_0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_1559,c_1559,c_4617])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1211,plain,
    ( r2_hidden(sK0(X0,X1),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_8,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1205,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1567,plain,
    ( r2_hidden(X0,k1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1205,c_1194])).

cnf(c_3094,plain,
    ( r1_tarski(k1_struct_0(sK2),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1211,c_1567])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,k1_xboole_0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1203,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_5788,plain,
    ( k1_struct_0(sK2) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3094,c_1203])).

cnf(c_22,plain,
    ( ~ l1_struct_0(X0)
    | k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_390,plain,
    ( k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_352])).

cnf(c_391,plain,
    ( k3_subset_1(u1_struct_0(sK2),k1_struct_0(sK2)) = k2_struct_0(sK2) ),
    inference(unflattening,[status(thm)],[c_390])).

cnf(c_5797,plain,
    ( k3_subset_1(u1_struct_0(sK2),k1_xboole_0) = k2_struct_0(sK2) ),
    inference(demodulation,[status(thm)],[c_5788,c_391])).

cnf(c_6183,plain,
    ( k2_struct_0(sK2) = u1_struct_0(sK2) ),
    inference(demodulation,[status(thm)],[c_6181,c_5797])).

cnf(c_743,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1251,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2)))
    | X2 != X0
    | k1_zfmisc_1(u1_struct_0(sK2)) != X1 ),
    inference(instantiation,[status(thm)],[c_743])).

cnf(c_1363,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | X1 != X0
    | k1_zfmisc_1(u1_struct_0(sK2)) != k1_zfmisc_1(u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1251])).

cnf(c_2450,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
    | X0 != u1_struct_0(sK2)
    | k1_zfmisc_1(u1_struct_0(sK2)) != k1_zfmisc_1(u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1363])).

cnf(c_5550,plain,
    ( m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
    | k2_struct_0(sK2) != u1_struct_0(sK2)
    | k1_zfmisc_1(u1_struct_0(sK2)) != k1_zfmisc_1(u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_2450])).

cnf(c_737,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2620,plain,
    ( k2_pre_topc(sK2,k2_struct_0(sK2)) = k2_pre_topc(sK2,k2_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_737])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1774,plain,
    ( ~ m1_subset_1(k2_pre_topc(sK2,k2_struct_0(sK2)),k1_zfmisc_1(X0))
    | r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),X0) ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_2599,plain,
    ( ~ m1_subset_1(k2_pre_topc(sK2,k2_struct_0(sK2)),k1_zfmisc_1(u1_struct_0(sK2)))
    | r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1774])).

cnf(c_738,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1412,plain,
    ( k2_pre_topc(sK2,k2_struct_0(sK2)) != X0
    | k2_pre_topc(sK2,k2_struct_0(sK2)) = k2_struct_0(X1)
    | k2_struct_0(X1) != X0 ),
    inference(instantiation,[status(thm)],[c_738])).

cnf(c_1867,plain,
    ( k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_pre_topc(sK2,k2_struct_0(sK2))
    | k2_pre_topc(sK2,k2_struct_0(sK2)) = k2_struct_0(X0)
    | k2_struct_0(X0) != k2_pre_topc(sK2,k2_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1412])).

cnf(c_1868,plain,
    ( k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_pre_topc(sK2,k2_struct_0(sK2))
    | k2_pre_topc(sK2,k2_struct_0(sK2)) = k2_struct_0(sK2)
    | k2_struct_0(sK2) != k2_pre_topc(sK2,k2_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1867])).

cnf(c_1863,plain,
    ( k1_zfmisc_1(u1_struct_0(sK2)) = k1_zfmisc_1(u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_737])).

cnf(c_1474,plain,
    ( r1_tarski(u1_struct_0(sK2),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_23,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(X0,k2_pre_topc(X1,X0))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_358,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(X0,k2_pre_topc(X1,X0))
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_25])).

cnf(c_359,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | r1_tarski(X0,k2_pre_topc(sK2,X0)) ),
    inference(unflattening,[status(thm)],[c_358])).

cnf(c_1454,plain,
    ( ~ m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
    | r1_tarski(k2_struct_0(sK2),k2_pre_topc(sK2,k2_struct_0(sK2))) ),
    inference(instantiation,[status(thm)],[c_359])).

cnf(c_6,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1316,plain,
    ( ~ r1_tarski(X0,k2_struct_0(sK2))
    | ~ r1_tarski(k2_struct_0(sK2),X0)
    | k2_struct_0(sK2) = X0 ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1413,plain,
    ( ~ r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),k2_struct_0(sK2))
    | ~ r1_tarski(k2_struct_0(sK2),k2_pre_topc(sK2,k2_struct_0(sK2)))
    | k2_struct_0(sK2) = k2_pre_topc(sK2,k2_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1316])).

cnf(c_1243,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_tarski(X0,u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_1347,plain,
    ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_tarski(u1_struct_0(sK2),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1243])).

cnf(c_24,negated_conjecture,
    ( k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f69])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_10527,c_8596,c_6183,c_5550,c_2620,c_2599,c_1868,c_1863,c_1474,c_1454,c_1413,c_1347,c_24])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n023.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 19:03:21 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.60/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.60/0.99  
% 3.60/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.60/0.99  
% 3.60/0.99  ------  iProver source info
% 3.60/0.99  
% 3.60/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.60/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.60/0.99  git: non_committed_changes: false
% 3.60/0.99  git: last_make_outside_of_git: false
% 3.60/0.99  
% 3.60/0.99  ------ 
% 3.60/0.99  
% 3.60/0.99  ------ Input Options
% 3.60/0.99  
% 3.60/0.99  --out_options                           all
% 3.60/0.99  --tptp_safe_out                         true
% 3.60/0.99  --problem_path                          ""
% 3.60/0.99  --include_path                          ""
% 3.60/0.99  --clausifier                            res/vclausify_rel
% 3.60/0.99  --clausifier_options                    ""
% 3.60/0.99  --stdin                                 false
% 3.60/0.99  --stats_out                             all
% 3.60/0.99  
% 3.60/0.99  ------ General Options
% 3.60/0.99  
% 3.60/0.99  --fof                                   false
% 3.60/0.99  --time_out_real                         305.
% 3.60/0.99  --time_out_virtual                      -1.
% 3.60/0.99  --symbol_type_check                     false
% 3.60/0.99  --clausify_out                          false
% 3.60/0.99  --sig_cnt_out                           false
% 3.60/0.99  --trig_cnt_out                          false
% 3.60/0.99  --trig_cnt_out_tolerance                1.
% 3.60/0.99  --trig_cnt_out_sk_spl                   false
% 3.60/0.99  --abstr_cl_out                          false
% 3.60/0.99  
% 3.60/0.99  ------ Global Options
% 3.60/0.99  
% 3.60/0.99  --schedule                              default
% 3.60/0.99  --add_important_lit                     false
% 3.60/0.99  --prop_solver_per_cl                    1000
% 3.60/0.99  --min_unsat_core                        false
% 3.60/0.99  --soft_assumptions                      false
% 3.60/0.99  --soft_lemma_size                       3
% 3.60/0.99  --prop_impl_unit_size                   0
% 3.60/0.99  --prop_impl_unit                        []
% 3.60/0.99  --share_sel_clauses                     true
% 3.60/0.99  --reset_solvers                         false
% 3.60/0.99  --bc_imp_inh                            [conj_cone]
% 3.60/0.99  --conj_cone_tolerance                   3.
% 3.60/0.99  --extra_neg_conj                        none
% 3.60/0.99  --large_theory_mode                     true
% 3.60/0.99  --prolific_symb_bound                   200
% 3.60/0.99  --lt_threshold                          2000
% 3.60/0.99  --clause_weak_htbl                      true
% 3.60/0.99  --gc_record_bc_elim                     false
% 3.60/0.99  
% 3.60/0.99  ------ Preprocessing Options
% 3.60/0.99  
% 3.60/0.99  --preprocessing_flag                    true
% 3.60/0.99  --time_out_prep_mult                    0.1
% 3.60/0.99  --splitting_mode                        input
% 3.60/0.99  --splitting_grd                         true
% 3.60/0.99  --splitting_cvd                         false
% 3.60/0.99  --splitting_cvd_svl                     false
% 3.60/0.99  --splitting_nvd                         32
% 3.60/0.99  --sub_typing                            true
% 3.60/0.99  --prep_gs_sim                           true
% 3.60/0.99  --prep_unflatten                        true
% 3.60/0.99  --prep_res_sim                          true
% 3.60/0.99  --prep_upred                            true
% 3.60/0.99  --prep_sem_filter                       exhaustive
% 3.60/0.99  --prep_sem_filter_out                   false
% 3.60/0.99  --pred_elim                             true
% 3.60/0.99  --res_sim_input                         true
% 3.60/0.99  --eq_ax_congr_red                       true
% 3.60/0.99  --pure_diseq_elim                       true
% 3.60/0.99  --brand_transform                       false
% 3.60/0.99  --non_eq_to_eq                          false
% 3.60/0.99  --prep_def_merge                        true
% 3.60/0.99  --prep_def_merge_prop_impl              false
% 3.60/0.99  --prep_def_merge_mbd                    true
% 3.60/0.99  --prep_def_merge_tr_red                 false
% 3.60/0.99  --prep_def_merge_tr_cl                  false
% 3.60/0.99  --smt_preprocessing                     true
% 3.60/0.99  --smt_ac_axioms                         fast
% 3.60/0.99  --preprocessed_out                      false
% 3.60/0.99  --preprocessed_stats                    false
% 3.60/0.99  
% 3.60/0.99  ------ Abstraction refinement Options
% 3.60/0.99  
% 3.60/0.99  --abstr_ref                             []
% 3.60/0.99  --abstr_ref_prep                        false
% 3.60/0.99  --abstr_ref_until_sat                   false
% 3.60/0.99  --abstr_ref_sig_restrict                funpre
% 3.60/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.60/0.99  --abstr_ref_under                       []
% 3.60/0.99  
% 3.60/0.99  ------ SAT Options
% 3.60/0.99  
% 3.60/0.99  --sat_mode                              false
% 3.60/0.99  --sat_fm_restart_options                ""
% 3.60/0.99  --sat_gr_def                            false
% 3.60/0.99  --sat_epr_types                         true
% 3.60/0.99  --sat_non_cyclic_types                  false
% 3.60/0.99  --sat_finite_models                     false
% 3.60/0.99  --sat_fm_lemmas                         false
% 3.60/0.99  --sat_fm_prep                           false
% 3.60/0.99  --sat_fm_uc_incr                        true
% 3.60/0.99  --sat_out_model                         small
% 3.60/0.99  --sat_out_clauses                       false
% 3.60/0.99  
% 3.60/0.99  ------ QBF Options
% 3.60/0.99  
% 3.60/0.99  --qbf_mode                              false
% 3.60/0.99  --qbf_elim_univ                         false
% 3.60/0.99  --qbf_dom_inst                          none
% 3.60/0.99  --qbf_dom_pre_inst                      false
% 3.60/0.99  --qbf_sk_in                             false
% 3.60/0.99  --qbf_pred_elim                         true
% 3.60/0.99  --qbf_split                             512
% 3.60/0.99  
% 3.60/0.99  ------ BMC1 Options
% 3.60/0.99  
% 3.60/0.99  --bmc1_incremental                      false
% 3.60/0.99  --bmc1_axioms                           reachable_all
% 3.60/0.99  --bmc1_min_bound                        0
% 3.60/0.99  --bmc1_max_bound                        -1
% 3.60/0.99  --bmc1_max_bound_default                -1
% 3.60/0.99  --bmc1_symbol_reachability              true
% 3.60/0.99  --bmc1_property_lemmas                  false
% 3.60/0.99  --bmc1_k_induction                      false
% 3.60/0.99  --bmc1_non_equiv_states                 false
% 3.60/0.99  --bmc1_deadlock                         false
% 3.60/0.99  --bmc1_ucm                              false
% 3.60/0.99  --bmc1_add_unsat_core                   none
% 3.60/0.99  --bmc1_unsat_core_children              false
% 3.60/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.60/0.99  --bmc1_out_stat                         full
% 3.60/0.99  --bmc1_ground_init                      false
% 3.60/0.99  --bmc1_pre_inst_next_state              false
% 3.60/0.99  --bmc1_pre_inst_state                   false
% 3.60/0.99  --bmc1_pre_inst_reach_state             false
% 3.60/0.99  --bmc1_out_unsat_core                   false
% 3.60/0.99  --bmc1_aig_witness_out                  false
% 3.60/0.99  --bmc1_verbose                          false
% 3.60/0.99  --bmc1_dump_clauses_tptp                false
% 3.60/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.60/0.99  --bmc1_dump_file                        -
% 3.60/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.60/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.60/0.99  --bmc1_ucm_extend_mode                  1
% 3.60/0.99  --bmc1_ucm_init_mode                    2
% 3.60/0.99  --bmc1_ucm_cone_mode                    none
% 3.60/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.60/0.99  --bmc1_ucm_relax_model                  4
% 3.60/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.60/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.60/0.99  --bmc1_ucm_layered_model                none
% 3.60/0.99  --bmc1_ucm_max_lemma_size               10
% 3.60/0.99  
% 3.60/0.99  ------ AIG Options
% 3.60/0.99  
% 3.60/0.99  --aig_mode                              false
% 3.60/0.99  
% 3.60/0.99  ------ Instantiation Options
% 3.60/0.99  
% 3.60/0.99  --instantiation_flag                    true
% 3.60/0.99  --inst_sos_flag                         true
% 3.60/0.99  --inst_sos_phase                        true
% 3.60/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.60/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.60/0.99  --inst_lit_sel_side                     num_symb
% 3.60/0.99  --inst_solver_per_active                1400
% 3.60/0.99  --inst_solver_calls_frac                1.
% 3.60/0.99  --inst_passive_queue_type               priority_queues
% 3.60/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.60/0.99  --inst_passive_queues_freq              [25;2]
% 3.60/0.99  --inst_dismatching                      true
% 3.60/0.99  --inst_eager_unprocessed_to_passive     true
% 3.60/0.99  --inst_prop_sim_given                   true
% 3.60/0.99  --inst_prop_sim_new                     false
% 3.60/0.99  --inst_subs_new                         false
% 3.60/0.99  --inst_eq_res_simp                      false
% 3.60/0.99  --inst_subs_given                       false
% 3.60/0.99  --inst_orphan_elimination               true
% 3.60/0.99  --inst_learning_loop_flag               true
% 3.60/0.99  --inst_learning_start                   3000
% 3.60/0.99  --inst_learning_factor                  2
% 3.60/0.99  --inst_start_prop_sim_after_learn       3
% 3.60/0.99  --inst_sel_renew                        solver
% 3.60/0.99  --inst_lit_activity_flag                true
% 3.60/0.99  --inst_restr_to_given                   false
% 3.60/0.99  --inst_activity_threshold               500
% 3.60/0.99  --inst_out_proof                        true
% 3.60/0.99  
% 3.60/0.99  ------ Resolution Options
% 3.60/0.99  
% 3.60/0.99  --resolution_flag                       true
% 3.60/0.99  --res_lit_sel                           adaptive
% 3.60/0.99  --res_lit_sel_side                      none
% 3.60/0.99  --res_ordering                          kbo
% 3.60/0.99  --res_to_prop_solver                    active
% 3.60/0.99  --res_prop_simpl_new                    false
% 3.60/0.99  --res_prop_simpl_given                  true
% 3.60/0.99  --res_passive_queue_type                priority_queues
% 3.60/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.60/0.99  --res_passive_queues_freq               [15;5]
% 3.60/0.99  --res_forward_subs                      full
% 3.60/0.99  --res_backward_subs                     full
% 3.60/0.99  --res_forward_subs_resolution           true
% 3.60/0.99  --res_backward_subs_resolution          true
% 3.60/0.99  --res_orphan_elimination                true
% 3.60/0.99  --res_time_limit                        2.
% 3.60/0.99  --res_out_proof                         true
% 3.60/0.99  
% 3.60/0.99  ------ Superposition Options
% 3.60/0.99  
% 3.60/0.99  --superposition_flag                    true
% 3.60/0.99  --sup_passive_queue_type                priority_queues
% 3.60/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.60/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.60/0.99  --demod_completeness_check              fast
% 3.60/0.99  --demod_use_ground                      true
% 3.60/0.99  --sup_to_prop_solver                    passive
% 3.60/0.99  --sup_prop_simpl_new                    true
% 3.60/0.99  --sup_prop_simpl_given                  true
% 3.60/0.99  --sup_fun_splitting                     true
% 3.60/0.99  --sup_smt_interval                      50000
% 3.60/0.99  
% 3.60/0.99  ------ Superposition Simplification Setup
% 3.60/0.99  
% 3.60/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.60/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.60/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.60/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.60/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.60/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.60/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.60/0.99  --sup_immed_triv                        [TrivRules]
% 3.60/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.60/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.60/0.99  --sup_immed_bw_main                     []
% 3.60/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.60/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.60/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.60/0.99  --sup_input_bw                          []
% 3.60/0.99  
% 3.60/0.99  ------ Combination Options
% 3.60/0.99  
% 3.60/0.99  --comb_res_mult                         3
% 3.60/0.99  --comb_sup_mult                         2
% 3.60/0.99  --comb_inst_mult                        10
% 3.60/0.99  
% 3.60/0.99  ------ Debug Options
% 3.60/0.99  
% 3.60/0.99  --dbg_backtrace                         false
% 3.60/0.99  --dbg_dump_prop_clauses                 false
% 3.60/0.99  --dbg_dump_prop_clauses_file            -
% 3.60/0.99  --dbg_out_stat                          false
% 3.60/0.99  ------ Parsing...
% 3.60/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.60/0.99  
% 3.60/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.60/0.99  
% 3.60/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.60/0.99  
% 3.60/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.60/0.99  ------ Proving...
% 3.60/0.99  ------ Problem Properties 
% 3.60/0.99  
% 3.60/0.99  
% 3.60/0.99  clauses                                 22
% 3.60/0.99  conjectures                             1
% 3.60/0.99  EPR                                     6
% 3.60/0.99  Horn                                    19
% 3.60/0.99  unary                                   6
% 3.60/0.99  binary                                  13
% 3.60/0.99  lits                                    41
% 3.60/0.99  lits eq                                 8
% 3.60/0.99  fd_pure                                 0
% 3.60/0.99  fd_pseudo                               0
% 3.60/0.99  fd_cond                                 1
% 3.60/0.99  fd_pseudo_cond                          1
% 3.60/0.99  AC symbols                              0
% 3.60/0.99  
% 3.60/0.99  ------ Schedule dynamic 5 is on 
% 3.60/0.99  
% 3.60/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.60/0.99  
% 3.60/0.99  
% 3.60/0.99  ------ 
% 3.60/0.99  Current options:
% 3.60/0.99  ------ 
% 3.60/0.99  
% 3.60/0.99  ------ Input Options
% 3.60/0.99  
% 3.60/0.99  --out_options                           all
% 3.60/0.99  --tptp_safe_out                         true
% 3.60/0.99  --problem_path                          ""
% 3.60/0.99  --include_path                          ""
% 3.60/0.99  --clausifier                            res/vclausify_rel
% 3.60/0.99  --clausifier_options                    ""
% 3.60/0.99  --stdin                                 false
% 3.60/0.99  --stats_out                             all
% 3.60/0.99  
% 3.60/0.99  ------ General Options
% 3.60/0.99  
% 3.60/0.99  --fof                                   false
% 3.60/0.99  --time_out_real                         305.
% 3.60/0.99  --time_out_virtual                      -1.
% 3.60/0.99  --symbol_type_check                     false
% 3.60/0.99  --clausify_out                          false
% 3.60/0.99  --sig_cnt_out                           false
% 3.60/0.99  --trig_cnt_out                          false
% 3.60/0.99  --trig_cnt_out_tolerance                1.
% 3.60/0.99  --trig_cnt_out_sk_spl                   false
% 3.60/0.99  --abstr_cl_out                          false
% 3.60/0.99  
% 3.60/0.99  ------ Global Options
% 3.60/0.99  
% 3.60/0.99  --schedule                              default
% 3.60/0.99  --add_important_lit                     false
% 3.60/0.99  --prop_solver_per_cl                    1000
% 3.60/0.99  --min_unsat_core                        false
% 3.60/0.99  --soft_assumptions                      false
% 3.60/0.99  --soft_lemma_size                       3
% 3.60/0.99  --prop_impl_unit_size                   0
% 3.60/0.99  --prop_impl_unit                        []
% 3.60/0.99  --share_sel_clauses                     true
% 3.60/0.99  --reset_solvers                         false
% 3.60/0.99  --bc_imp_inh                            [conj_cone]
% 3.60/0.99  --conj_cone_tolerance                   3.
% 3.60/0.99  --extra_neg_conj                        none
% 3.60/0.99  --large_theory_mode                     true
% 3.60/0.99  --prolific_symb_bound                   200
% 3.60/0.99  --lt_threshold                          2000
% 3.60/0.99  --clause_weak_htbl                      true
% 3.60/0.99  --gc_record_bc_elim                     false
% 3.60/0.99  
% 3.60/0.99  ------ Preprocessing Options
% 3.60/0.99  
% 3.60/0.99  --preprocessing_flag                    true
% 3.60/0.99  --time_out_prep_mult                    0.1
% 3.60/0.99  --splitting_mode                        input
% 3.60/0.99  --splitting_grd                         true
% 3.60/0.99  --splitting_cvd                         false
% 3.60/0.99  --splitting_cvd_svl                     false
% 3.60/0.99  --splitting_nvd                         32
% 3.60/0.99  --sub_typing                            true
% 3.60/0.99  --prep_gs_sim                           true
% 3.60/0.99  --prep_unflatten                        true
% 3.60/0.99  --prep_res_sim                          true
% 3.60/0.99  --prep_upred                            true
% 3.60/0.99  --prep_sem_filter                       exhaustive
% 3.60/0.99  --prep_sem_filter_out                   false
% 3.60/0.99  --pred_elim                             true
% 3.60/0.99  --res_sim_input                         true
% 3.60/0.99  --eq_ax_congr_red                       true
% 3.60/0.99  --pure_diseq_elim                       true
% 3.60/0.99  --brand_transform                       false
% 3.60/0.99  --non_eq_to_eq                          false
% 3.60/0.99  --prep_def_merge                        true
% 3.60/0.99  --prep_def_merge_prop_impl              false
% 3.60/0.99  --prep_def_merge_mbd                    true
% 3.60/0.99  --prep_def_merge_tr_red                 false
% 3.60/0.99  --prep_def_merge_tr_cl                  false
% 3.60/0.99  --smt_preprocessing                     true
% 3.60/0.99  --smt_ac_axioms                         fast
% 3.60/0.99  --preprocessed_out                      false
% 3.60/0.99  --preprocessed_stats                    false
% 3.60/0.99  
% 3.60/0.99  ------ Abstraction refinement Options
% 3.60/0.99  
% 3.60/0.99  --abstr_ref                             []
% 3.60/0.99  --abstr_ref_prep                        false
% 3.60/0.99  --abstr_ref_until_sat                   false
% 3.60/0.99  --abstr_ref_sig_restrict                funpre
% 3.60/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.60/0.99  --abstr_ref_under                       []
% 3.60/0.99  
% 3.60/0.99  ------ SAT Options
% 3.60/0.99  
% 3.60/0.99  --sat_mode                              false
% 3.60/0.99  --sat_fm_restart_options                ""
% 3.60/0.99  --sat_gr_def                            false
% 3.60/0.99  --sat_epr_types                         true
% 3.60/0.99  --sat_non_cyclic_types                  false
% 3.60/0.99  --sat_finite_models                     false
% 3.60/0.99  --sat_fm_lemmas                         false
% 3.60/0.99  --sat_fm_prep                           false
% 3.60/0.99  --sat_fm_uc_incr                        true
% 3.60/0.99  --sat_out_model                         small
% 3.60/0.99  --sat_out_clauses                       false
% 3.60/0.99  
% 3.60/0.99  ------ QBF Options
% 3.60/0.99  
% 3.60/0.99  --qbf_mode                              false
% 3.60/0.99  --qbf_elim_univ                         false
% 3.60/0.99  --qbf_dom_inst                          none
% 3.60/0.99  --qbf_dom_pre_inst                      false
% 3.60/0.99  --qbf_sk_in                             false
% 3.60/0.99  --qbf_pred_elim                         true
% 3.60/0.99  --qbf_split                             512
% 3.60/0.99  
% 3.60/0.99  ------ BMC1 Options
% 3.60/0.99  
% 3.60/0.99  --bmc1_incremental                      false
% 3.60/0.99  --bmc1_axioms                           reachable_all
% 3.60/0.99  --bmc1_min_bound                        0
% 3.60/0.99  --bmc1_max_bound                        -1
% 3.60/0.99  --bmc1_max_bound_default                -1
% 3.60/0.99  --bmc1_symbol_reachability              true
% 3.60/0.99  --bmc1_property_lemmas                  false
% 3.60/0.99  --bmc1_k_induction                      false
% 3.60/0.99  --bmc1_non_equiv_states                 false
% 3.60/0.99  --bmc1_deadlock                         false
% 3.60/0.99  --bmc1_ucm                              false
% 3.60/0.99  --bmc1_add_unsat_core                   none
% 3.60/0.99  --bmc1_unsat_core_children              false
% 3.60/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.60/0.99  --bmc1_out_stat                         full
% 3.60/0.99  --bmc1_ground_init                      false
% 3.60/0.99  --bmc1_pre_inst_next_state              false
% 3.60/0.99  --bmc1_pre_inst_state                   false
% 3.60/0.99  --bmc1_pre_inst_reach_state             false
% 3.60/0.99  --bmc1_out_unsat_core                   false
% 3.60/0.99  --bmc1_aig_witness_out                  false
% 3.60/0.99  --bmc1_verbose                          false
% 3.60/0.99  --bmc1_dump_clauses_tptp                false
% 3.60/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.60/0.99  --bmc1_dump_file                        -
% 3.60/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.60/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.60/0.99  --bmc1_ucm_extend_mode                  1
% 3.60/0.99  --bmc1_ucm_init_mode                    2
% 3.60/0.99  --bmc1_ucm_cone_mode                    none
% 3.60/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.60/0.99  --bmc1_ucm_relax_model                  4
% 3.60/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.60/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.60/0.99  --bmc1_ucm_layered_model                none
% 3.60/0.99  --bmc1_ucm_max_lemma_size               10
% 3.60/0.99  
% 3.60/0.99  ------ AIG Options
% 3.60/0.99  
% 3.60/0.99  --aig_mode                              false
% 3.60/0.99  
% 3.60/0.99  ------ Instantiation Options
% 3.60/0.99  
% 3.60/0.99  --instantiation_flag                    true
% 3.60/0.99  --inst_sos_flag                         true
% 3.60/0.99  --inst_sos_phase                        true
% 3.60/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.60/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.60/0.99  --inst_lit_sel_side                     none
% 3.60/0.99  --inst_solver_per_active                1400
% 3.60/0.99  --inst_solver_calls_frac                1.
% 3.60/0.99  --inst_passive_queue_type               priority_queues
% 3.60/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.60/0.99  --inst_passive_queues_freq              [25;2]
% 3.60/0.99  --inst_dismatching                      true
% 3.60/0.99  --inst_eager_unprocessed_to_passive     true
% 3.60/0.99  --inst_prop_sim_given                   true
% 3.60/0.99  --inst_prop_sim_new                     false
% 3.60/0.99  --inst_subs_new                         false
% 3.60/0.99  --inst_eq_res_simp                      false
% 3.60/0.99  --inst_subs_given                       false
% 3.60/0.99  --inst_orphan_elimination               true
% 3.60/0.99  --inst_learning_loop_flag               true
% 3.60/0.99  --inst_learning_start                   3000
% 3.60/0.99  --inst_learning_factor                  2
% 3.60/0.99  --inst_start_prop_sim_after_learn       3
% 3.60/0.99  --inst_sel_renew                        solver
% 3.60/0.99  --inst_lit_activity_flag                true
% 3.60/0.99  --inst_restr_to_given                   false
% 3.60/0.99  --inst_activity_threshold               500
% 3.60/0.99  --inst_out_proof                        true
% 3.60/0.99  
% 3.60/0.99  ------ Resolution Options
% 3.60/0.99  
% 3.60/0.99  --resolution_flag                       false
% 3.60/0.99  --res_lit_sel                           adaptive
% 3.60/0.99  --res_lit_sel_side                      none
% 3.60/0.99  --res_ordering                          kbo
% 3.60/0.99  --res_to_prop_solver                    active
% 3.60/0.99  --res_prop_simpl_new                    false
% 3.60/0.99  --res_prop_simpl_given                  true
% 3.60/0.99  --res_passive_queue_type                priority_queues
% 3.60/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.60/0.99  --res_passive_queues_freq               [15;5]
% 3.60/0.99  --res_forward_subs                      full
% 3.60/0.99  --res_backward_subs                     full
% 3.60/0.99  --res_forward_subs_resolution           true
% 3.60/0.99  --res_backward_subs_resolution          true
% 3.60/0.99  --res_orphan_elimination                true
% 3.60/0.99  --res_time_limit                        2.
% 3.60/0.99  --res_out_proof                         true
% 3.60/0.99  
% 3.60/0.99  ------ Superposition Options
% 3.60/0.99  
% 3.60/0.99  --superposition_flag                    true
% 3.60/0.99  --sup_passive_queue_type                priority_queues
% 3.60/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.60/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.60/0.99  --demod_completeness_check              fast
% 3.60/0.99  --demod_use_ground                      true
% 3.60/0.99  --sup_to_prop_solver                    passive
% 3.60/0.99  --sup_prop_simpl_new                    true
% 3.60/0.99  --sup_prop_simpl_given                  true
% 3.60/0.99  --sup_fun_splitting                     true
% 3.60/0.99  --sup_smt_interval                      50000
% 3.60/0.99  
% 3.60/0.99  ------ Superposition Simplification Setup
% 3.60/0.99  
% 3.60/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.60/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.60/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.60/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.60/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.60/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.60/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.60/0.99  --sup_immed_triv                        [TrivRules]
% 3.60/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.60/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.60/0.99  --sup_immed_bw_main                     []
% 3.60/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.60/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.60/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.60/0.99  --sup_input_bw                          []
% 3.60/0.99  
% 3.60/0.99  ------ Combination Options
% 3.60/0.99  
% 3.60/0.99  --comb_res_mult                         3
% 3.60/0.99  --comb_sup_mult                         2
% 3.60/0.99  --comb_inst_mult                        10
% 3.60/0.99  
% 3.60/0.99  ------ Debug Options
% 3.60/0.99  
% 3.60/0.99  --dbg_backtrace                         false
% 3.60/0.99  --dbg_dump_prop_clauses                 false
% 3.60/0.99  --dbg_dump_prop_clauses_file            -
% 3.60/0.99  --dbg_out_stat                          false
% 3.60/0.99  
% 3.60/0.99  
% 3.60/0.99  
% 3.60/0.99  
% 3.60/0.99  ------ Proving...
% 3.60/0.99  
% 3.60/0.99  
% 3.60/0.99  % SZS status Theorem for theBenchmark.p
% 3.60/0.99  
% 3.60/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.60/0.99  
% 3.60/0.99  fof(f12,axiom,(
% 3.60/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f25,plain,(
% 3.60/0.99    ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 3.60/0.99    inference(ennf_transformation,[],[f12])).
% 3.60/0.99  
% 3.60/0.99  fof(f26,plain,(
% 3.60/0.99    ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 3.60/0.99    inference(flattening,[],[f25])).
% 3.60/0.99  
% 3.60/0.99  fof(f63,plain,(
% 3.60/0.99    ( ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f26])).
% 3.60/0.99  
% 3.60/0.99  fof(f17,conjecture,(
% 3.60/0.99    ! [X0] : (l1_pre_topc(X0) => k2_pre_topc(X0,k2_struct_0(X0)) = k2_struct_0(X0))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f18,negated_conjecture,(
% 3.60/0.99    ~! [X0] : (l1_pre_topc(X0) => k2_pre_topc(X0,k2_struct_0(X0)) = k2_struct_0(X0))),
% 3.60/0.99    inference(negated_conjecture,[],[f17])).
% 3.60/0.99  
% 3.60/0.99  fof(f31,plain,(
% 3.60/0.99    ? [X0] : (k2_pre_topc(X0,k2_struct_0(X0)) != k2_struct_0(X0) & l1_pre_topc(X0))),
% 3.60/0.99    inference(ennf_transformation,[],[f18])).
% 3.60/0.99  
% 3.60/0.99  fof(f42,plain,(
% 3.60/0.99    ? [X0] : (k2_pre_topc(X0,k2_struct_0(X0)) != k2_struct_0(X0) & l1_pre_topc(X0)) => (k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_struct_0(sK2) & l1_pre_topc(sK2))),
% 3.60/0.99    introduced(choice_axiom,[])).
% 3.60/0.99  
% 3.60/0.99  fof(f43,plain,(
% 3.60/0.99    k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_struct_0(sK2) & l1_pre_topc(sK2)),
% 3.60/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f31,f42])).
% 3.60/0.99  
% 3.60/0.99  fof(f68,plain,(
% 3.60/0.99    l1_pre_topc(sK2)),
% 3.60/0.99    inference(cnf_transformation,[],[f43])).
% 3.60/0.99  
% 3.60/0.99  fof(f4,axiom,(
% 3.60/0.99    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f53,plain,(
% 3.60/0.99    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f4])).
% 3.60/0.99  
% 3.60/0.99  fof(f8,axiom,(
% 3.60/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f23,plain,(
% 3.60/0.99    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.60/0.99    inference(ennf_transformation,[],[f8])).
% 3.60/0.99  
% 3.60/0.99  fof(f58,plain,(
% 3.60/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.60/0.99    inference(cnf_transformation,[],[f23])).
% 3.60/0.99  
% 3.60/0.99  fof(f10,axiom,(
% 3.60/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f41,plain,(
% 3.60/0.99    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 3.60/0.99    inference(nnf_transformation,[],[f10])).
% 3.60/0.99  
% 3.60/0.99  fof(f61,plain,(
% 3.60/0.99    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f41])).
% 3.60/0.99  
% 3.60/0.99  fof(f2,axiom,(
% 3.60/0.99    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f19,plain,(
% 3.60/0.99    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 3.60/0.99    inference(rectify,[],[f2])).
% 3.60/0.99  
% 3.60/0.99  fof(f21,plain,(
% 3.60/0.99    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 3.60/0.99    inference(ennf_transformation,[],[f19])).
% 3.60/0.99  
% 3.60/0.99  fof(f36,plain,(
% 3.60/0.99    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 3.60/0.99    introduced(choice_axiom,[])).
% 3.60/0.99  
% 3.60/0.99  fof(f37,plain,(
% 3.60/0.99    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 3.60/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f21,f36])).
% 3.60/0.99  
% 3.60/0.99  fof(f48,plain,(
% 3.60/0.99    ( ! [X0,X1] : (r2_hidden(sK1(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f37])).
% 3.60/0.99  
% 3.60/0.99  fof(f13,axiom,(
% 3.60/0.99    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f27,plain,(
% 3.60/0.99    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 3.60/0.99    inference(ennf_transformation,[],[f13])).
% 3.60/0.99  
% 3.60/0.99  fof(f64,plain,(
% 3.60/0.99    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f27])).
% 3.60/0.99  
% 3.60/0.99  fof(f14,axiom,(
% 3.60/0.99    ! [X0] : (l1_struct_0(X0) => v1_xboole_0(k1_struct_0(X0)))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f28,plain,(
% 3.60/0.99    ! [X0] : (v1_xboole_0(k1_struct_0(X0)) | ~l1_struct_0(X0))),
% 3.60/0.99    inference(ennf_transformation,[],[f14])).
% 3.60/0.99  
% 3.60/0.99  fof(f65,plain,(
% 3.60/0.99    ( ! [X0] : (v1_xboole_0(k1_struct_0(X0)) | ~l1_struct_0(X0)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f28])).
% 3.60/0.99  
% 3.60/0.99  fof(f11,axiom,(
% 3.60/0.99    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f24,plain,(
% 3.60/0.99    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 3.60/0.99    inference(ennf_transformation,[],[f11])).
% 3.60/0.99  
% 3.60/0.99  fof(f62,plain,(
% 3.60/0.99    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f24])).
% 3.60/0.99  
% 3.60/0.99  fof(f6,axiom,(
% 3.60/0.99    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f40,plain,(
% 3.60/0.99    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 3.60/0.99    inference(nnf_transformation,[],[f6])).
% 3.60/0.99  
% 3.60/0.99  fof(f55,plain,(
% 3.60/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f40])).
% 3.60/0.99  
% 3.60/0.99  fof(f1,axiom,(
% 3.60/0.99    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f20,plain,(
% 3.60/0.99    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 3.60/0.99    inference(ennf_transformation,[],[f1])).
% 3.60/0.99  
% 3.60/0.99  fof(f32,plain,(
% 3.60/0.99    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 3.60/0.99    inference(nnf_transformation,[],[f20])).
% 3.60/0.99  
% 3.60/0.99  fof(f33,plain,(
% 3.60/0.99    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.60/0.99    inference(rectify,[],[f32])).
% 3.60/0.99  
% 3.60/0.99  fof(f34,plain,(
% 3.60/0.99    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 3.60/0.99    introduced(choice_axiom,[])).
% 3.60/0.99  
% 3.60/0.99  fof(f35,plain,(
% 3.60/0.99    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.60/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f33,f34])).
% 3.60/0.99  
% 3.60/0.99  fof(f45,plain,(
% 3.60/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f35])).
% 3.60/0.99  
% 3.60/0.99  fof(f3,axiom,(
% 3.60/0.99    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f38,plain,(
% 3.60/0.99    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.60/0.99    inference(nnf_transformation,[],[f3])).
% 3.60/0.99  
% 3.60/0.99  fof(f39,plain,(
% 3.60/0.99    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.60/0.99    inference(flattening,[],[f38])).
% 3.60/0.99  
% 3.60/0.99  fof(f50,plain,(
% 3.60/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.60/0.99    inference(cnf_transformation,[],[f39])).
% 3.60/0.99  
% 3.60/0.99  fof(f71,plain,(
% 3.60/0.99    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.60/0.99    inference(equality_resolution,[],[f50])).
% 3.60/0.99  
% 3.60/0.99  fof(f5,axiom,(
% 3.60/0.99    ! [X0] : (r1_tarski(X0,k1_xboole_0) => k1_xboole_0 = X0)),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f22,plain,(
% 3.60/0.99    ! [X0] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k1_xboole_0))),
% 3.60/0.99    inference(ennf_transformation,[],[f5])).
% 3.60/0.99  
% 3.60/0.99  fof(f54,plain,(
% 3.60/0.99    ( ! [X0] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k1_xboole_0)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f22])).
% 3.60/0.99  
% 3.60/0.99  fof(f15,axiom,(
% 3.60/0.99    ! [X0] : (l1_struct_0(X0) => k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f29,plain,(
% 3.60/0.99    ! [X0] : (k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0) | ~l1_struct_0(X0))),
% 3.60/0.99    inference(ennf_transformation,[],[f15])).
% 3.60/0.99  
% 3.60/0.99  fof(f66,plain,(
% 3.60/0.99    ( ! [X0] : (k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0) | ~l1_struct_0(X0)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f29])).
% 3.60/0.99  
% 3.60/0.99  fof(f60,plain,(
% 3.60/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 3.60/0.99    inference(cnf_transformation,[],[f41])).
% 3.60/0.99  
% 3.60/0.99  fof(f16,axiom,(
% 3.60/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => r1_tarski(X1,k2_pre_topc(X0,X1))))),
% 3.60/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.60/0.99  
% 3.60/0.99  fof(f30,plain,(
% 3.60/0.99    ! [X0] : (! [X1] : (r1_tarski(X1,k2_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.60/0.99    inference(ennf_transformation,[],[f16])).
% 3.60/0.99  
% 3.60/0.99  fof(f67,plain,(
% 3.60/0.99    ( ! [X0,X1] : (r1_tarski(X1,k2_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f30])).
% 3.60/0.99  
% 3.60/0.99  fof(f52,plain,(
% 3.60/0.99    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.60/0.99    inference(cnf_transformation,[],[f39])).
% 3.60/0.99  
% 3.60/0.99  fof(f69,plain,(
% 3.60/0.99    k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_struct_0(sK2)),
% 3.60/0.99    inference(cnf_transformation,[],[f43])).
% 3.60/0.99  
% 3.60/0.99  cnf(c_739,plain,
% 3.60/0.99      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.60/0.99      theory(equality) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1311,plain,
% 3.60/0.99      ( ~ r1_tarski(X0,X1)
% 3.60/0.99      | r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),k2_struct_0(sK2))
% 3.60/0.99      | k2_pre_topc(sK2,k2_struct_0(sK2)) != X0
% 3.60/0.99      | k2_struct_0(sK2) != X1 ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_739]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_5566,plain,
% 3.60/0.99      ( ~ r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),X0)
% 3.60/0.99      | r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),k2_struct_0(sK2))
% 3.60/0.99      | k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_pre_topc(sK2,k2_struct_0(sK2))
% 3.60/0.99      | k2_struct_0(sK2) != X0 ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_1311]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_10527,plain,
% 3.60/0.99      ( r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),k2_struct_0(sK2))
% 3.60/0.99      | ~ r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),u1_struct_0(sK2))
% 3.60/0.99      | k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_pre_topc(sK2,k2_struct_0(sK2))
% 3.60/0.99      | k2_struct_0(sK2) != u1_struct_0(sK2) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_5566]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_19,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.60/0.99      | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 3.60/0.99      | ~ l1_pre_topc(X1) ),
% 3.60/0.99      inference(cnf_transformation,[],[f63]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_25,negated_conjecture,
% 3.60/0.99      ( l1_pre_topc(sK2) ),
% 3.60/0.99      inference(cnf_transformation,[],[f68]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_370,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.60/0.99      | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 3.60/0.99      | sK2 != X1 ),
% 3.60/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_25]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_371,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | m1_subset_1(k2_pre_topc(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 3.60/0.99      inference(unflattening,[status(thm)],[c_370]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_8596,plain,
% 3.60/0.99      ( m1_subset_1(k2_pre_topc(sK2,k2_struct_0(sK2)),k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | ~ m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_371]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_9,plain,
% 3.60/0.99      ( r1_tarski(k1_xboole_0,X0) ),
% 3.60/0.99      inference(cnf_transformation,[],[f53]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1204,plain,
% 3.60/0.99      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 3.60/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_14,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.60/0.99      | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
% 3.60/0.99      inference(cnf_transformation,[],[f58]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_16,plain,
% 3.60/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.60/0.99      inference(cnf_transformation,[],[f61]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_201,plain,
% 3.60/0.99      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 3.60/0.99      inference(prop_impl,[status(thm)],[c_16]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_202,plain,
% 3.60/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.60/0.99      inference(renaming,[status(thm)],[c_201]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_243,plain,
% 3.60/0.99      ( ~ r1_tarski(X0,X1) | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
% 3.60/0.99      inference(bin_hyper_res,[status(thm)],[c_14,c_202]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1197,plain,
% 3.60/0.99      ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
% 3.60/0.99      | r1_tarski(X1,X0) != iProver_top ),
% 3.60/0.99      inference(predicate_to_equality,[status(thm)],[c_243]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1559,plain,
% 3.60/0.99      ( k3_subset_1(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
% 3.60/0.99      inference(superposition,[status(thm)],[c_1204,c_1197]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_4,plain,
% 3.60/0.99      ( r1_xboole_0(X0,X1) | r2_hidden(sK1(X0,X1),X1) ),
% 3.60/0.99      inference(cnf_transformation,[],[f48]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1208,plain,
% 3.60/0.99      ( r1_xboole_0(X0,X1) = iProver_top
% 3.60/0.99      | r2_hidden(sK1(X0,X1),X1) = iProver_top ),
% 3.60/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_20,plain,
% 3.60/0.99      ( l1_struct_0(X0) | ~ l1_pre_topc(X0) ),
% 3.60/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_351,plain,
% 3.60/0.99      ( l1_struct_0(X0) | sK2 != X0 ),
% 3.60/0.99      inference(resolution_lifted,[status(thm)],[c_20,c_25]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_352,plain,
% 3.60/0.99      ( l1_struct_0(sK2) ),
% 3.60/0.99      inference(unflattening,[status(thm)],[c_351]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_21,plain,
% 3.60/0.99      ( ~ l1_struct_0(X0) | v1_xboole_0(k1_struct_0(X0)) ),
% 3.60/0.99      inference(cnf_transformation,[],[f65]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_18,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.60/0.99      | ~ r2_hidden(X2,X0)
% 3.60/0.99      | ~ v1_xboole_0(X1) ),
% 3.60/0.99      inference(cnf_transformation,[],[f62]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_246,plain,
% 3.60/0.99      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X2) | ~ v1_xboole_0(X2) ),
% 3.60/0.99      inference(bin_hyper_res,[status(thm)],[c_18,c_202]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_332,plain,
% 3.60/0.99      ( ~ r2_hidden(X0,X1)
% 3.60/0.99      | ~ r1_tarski(X1,X2)
% 3.60/0.99      | ~ l1_struct_0(X3)
% 3.60/0.99      | k1_struct_0(X3) != X2 ),
% 3.60/0.99      inference(resolution_lifted,[status(thm)],[c_21,c_246]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_333,plain,
% 3.60/0.99      ( ~ r2_hidden(X0,X1)
% 3.60/0.99      | ~ r1_tarski(X1,k1_struct_0(X2))
% 3.60/0.99      | ~ l1_struct_0(X2) ),
% 3.60/0.99      inference(unflattening,[status(thm)],[c_332]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_395,plain,
% 3.60/0.99      ( ~ r2_hidden(X0,X1)
% 3.60/0.99      | ~ r1_tarski(X1,k1_struct_0(X2))
% 3.60/0.99      | sK2 != X2 ),
% 3.60/0.99      inference(resolution_lifted,[status(thm)],[c_352,c_333]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_396,plain,
% 3.60/0.99      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,k1_struct_0(sK2)) ),
% 3.60/0.99      inference(unflattening,[status(thm)],[c_395]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1194,plain,
% 3.60/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.60/0.99      | r1_tarski(X1,k1_struct_0(sK2)) != iProver_top ),
% 3.60/0.99      inference(predicate_to_equality,[status(thm)],[c_396]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1526,plain,
% 3.60/0.99      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 3.60/0.99      inference(superposition,[status(thm)],[c_1204,c_1194]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_2855,plain,
% 3.60/0.99      ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
% 3.60/0.99      inference(superposition,[status(thm)],[c_1208,c_1526]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_12,plain,
% 3.60/0.99      ( ~ r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) = X0 ),
% 3.60/0.99      inference(cnf_transformation,[],[f55]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1201,plain,
% 3.60/0.99      ( k4_xboole_0(X0,X1) = X0 | r1_xboole_0(X0,X1) != iProver_top ),
% 3.60/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_4617,plain,
% 3.60/0.99      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.60/0.99      inference(superposition,[status(thm)],[c_2855,c_1201]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_6181,plain,
% 3.60/0.99      ( k3_subset_1(X0,k1_xboole_0) = X0 ),
% 3.60/0.99      inference(light_normalisation,[status(thm)],[c_1559,c_1559,c_4617]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1,plain,
% 3.60/0.99      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 3.60/0.99      inference(cnf_transformation,[],[f45]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1211,plain,
% 3.60/0.99      ( r2_hidden(sK0(X0,X1),X0) = iProver_top
% 3.60/0.99      | r1_tarski(X0,X1) = iProver_top ),
% 3.60/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_8,plain,
% 3.60/0.99      ( r1_tarski(X0,X0) ),
% 3.60/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1205,plain,
% 3.60/0.99      ( r1_tarski(X0,X0) = iProver_top ),
% 3.60/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1567,plain,
% 3.60/0.99      ( r2_hidden(X0,k1_struct_0(sK2)) != iProver_top ),
% 3.60/0.99      inference(superposition,[status(thm)],[c_1205,c_1194]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_3094,plain,
% 3.60/0.99      ( r1_tarski(k1_struct_0(sK2),X0) = iProver_top ),
% 3.60/0.99      inference(superposition,[status(thm)],[c_1211,c_1567]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_10,plain,
% 3.60/0.99      ( ~ r1_tarski(X0,k1_xboole_0) | k1_xboole_0 = X0 ),
% 3.60/0.99      inference(cnf_transformation,[],[f54]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1203,plain,
% 3.60/0.99      ( k1_xboole_0 = X0 | r1_tarski(X0,k1_xboole_0) != iProver_top ),
% 3.60/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_5788,plain,
% 3.60/0.99      ( k1_struct_0(sK2) = k1_xboole_0 ),
% 3.60/0.99      inference(superposition,[status(thm)],[c_3094,c_1203]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_22,plain,
% 3.60/0.99      ( ~ l1_struct_0(X0)
% 3.60/0.99      | k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0) ),
% 3.60/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_390,plain,
% 3.60/0.99      ( k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) = k2_struct_0(X0)
% 3.60/0.99      | sK2 != X0 ),
% 3.60/0.99      inference(resolution_lifted,[status(thm)],[c_22,c_352]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_391,plain,
% 3.60/0.99      ( k3_subset_1(u1_struct_0(sK2),k1_struct_0(sK2)) = k2_struct_0(sK2) ),
% 3.60/0.99      inference(unflattening,[status(thm)],[c_390]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_5797,plain,
% 3.60/0.99      ( k3_subset_1(u1_struct_0(sK2),k1_xboole_0) = k2_struct_0(sK2) ),
% 3.60/0.99      inference(demodulation,[status(thm)],[c_5788,c_391]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_6183,plain,
% 3.60/0.99      ( k2_struct_0(sK2) = u1_struct_0(sK2) ),
% 3.60/0.99      inference(demodulation,[status(thm)],[c_6181,c_5797]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_743,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,X1) | m1_subset_1(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.60/0.99      theory(equality) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1251,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,X1)
% 3.60/0.99      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | X2 != X0
% 3.60/0.99      | k1_zfmisc_1(u1_struct_0(sK2)) != X1 ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_743]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1363,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | X1 != X0
% 3.60/0.99      | k1_zfmisc_1(u1_struct_0(sK2)) != k1_zfmisc_1(u1_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_1251]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_2450,plain,
% 3.60/0.99      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | X0 != u1_struct_0(sK2)
% 3.60/0.99      | k1_zfmisc_1(u1_struct_0(sK2)) != k1_zfmisc_1(u1_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_1363]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_5550,plain,
% 3.60/0.99      ( m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | k2_struct_0(sK2) != u1_struct_0(sK2)
% 3.60/0.99      | k1_zfmisc_1(u1_struct_0(sK2)) != k1_zfmisc_1(u1_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_2450]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_737,plain,( X0 = X0 ),theory(equality) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_2620,plain,
% 3.60/0.99      ( k2_pre_topc(sK2,k2_struct_0(sK2)) = k2_pre_topc(sK2,k2_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_737]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_17,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 3.60/0.99      inference(cnf_transformation,[],[f60]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1774,plain,
% 3.60/0.99      ( ~ m1_subset_1(k2_pre_topc(sK2,k2_struct_0(sK2)),k1_zfmisc_1(X0))
% 3.60/0.99      | r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),X0) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_17]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_2599,plain,
% 3.60/0.99      ( ~ m1_subset_1(k2_pre_topc(sK2,k2_struct_0(sK2)),k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),u1_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_1774]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_738,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1412,plain,
% 3.60/0.99      ( k2_pre_topc(sK2,k2_struct_0(sK2)) != X0
% 3.60/0.99      | k2_pre_topc(sK2,k2_struct_0(sK2)) = k2_struct_0(X1)
% 3.60/0.99      | k2_struct_0(X1) != X0 ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_738]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1867,plain,
% 3.60/0.99      ( k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_pre_topc(sK2,k2_struct_0(sK2))
% 3.60/0.99      | k2_pre_topc(sK2,k2_struct_0(sK2)) = k2_struct_0(X0)
% 3.60/0.99      | k2_struct_0(X0) != k2_pre_topc(sK2,k2_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_1412]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1868,plain,
% 3.60/0.99      ( k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_pre_topc(sK2,k2_struct_0(sK2))
% 3.60/0.99      | k2_pre_topc(sK2,k2_struct_0(sK2)) = k2_struct_0(sK2)
% 3.60/0.99      | k2_struct_0(sK2) != k2_pre_topc(sK2,k2_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_1867]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1863,plain,
% 3.60/0.99      ( k1_zfmisc_1(u1_struct_0(sK2)) = k1_zfmisc_1(u1_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_737]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1474,plain,
% 3.60/0.99      ( r1_tarski(u1_struct_0(sK2),u1_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_8]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_23,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.60/0.99      | r1_tarski(X0,k2_pre_topc(X1,X0))
% 3.60/0.99      | ~ l1_pre_topc(X1) ),
% 3.60/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_358,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.60/0.99      | r1_tarski(X0,k2_pre_topc(X1,X0))
% 3.60/0.99      | sK2 != X1 ),
% 3.60/0.99      inference(resolution_lifted,[status(thm)],[c_23,c_25]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_359,plain,
% 3.60/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | r1_tarski(X0,k2_pre_topc(sK2,X0)) ),
% 3.60/0.99      inference(unflattening,[status(thm)],[c_358]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1454,plain,
% 3.60/0.99      ( ~ m1_subset_1(k2_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | r1_tarski(k2_struct_0(sK2),k2_pre_topc(sK2,k2_struct_0(sK2))) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_359]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_6,plain,
% 3.60/0.99      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 3.60/0.99      inference(cnf_transformation,[],[f52]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1316,plain,
% 3.60/0.99      ( ~ r1_tarski(X0,k2_struct_0(sK2))
% 3.60/0.99      | ~ r1_tarski(k2_struct_0(sK2),X0)
% 3.60/0.99      | k2_struct_0(sK2) = X0 ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1413,plain,
% 3.60/0.99      ( ~ r1_tarski(k2_pre_topc(sK2,k2_struct_0(sK2)),k2_struct_0(sK2))
% 3.60/0.99      | ~ r1_tarski(k2_struct_0(sK2),k2_pre_topc(sK2,k2_struct_0(sK2)))
% 3.60/0.99      | k2_struct_0(sK2) = k2_pre_topc(sK2,k2_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_1316]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1243,plain,
% 3.60/0.99      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | ~ r1_tarski(X0,u1_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_16]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_1347,plain,
% 3.60/0.99      ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK2)))
% 3.60/0.99      | ~ r1_tarski(u1_struct_0(sK2),u1_struct_0(sK2)) ),
% 3.60/0.99      inference(instantiation,[status(thm)],[c_1243]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(c_24,negated_conjecture,
% 3.60/0.99      ( k2_pre_topc(sK2,k2_struct_0(sK2)) != k2_struct_0(sK2) ),
% 3.60/0.99      inference(cnf_transformation,[],[f69]) ).
% 3.60/0.99  
% 3.60/0.99  cnf(contradiction,plain,
% 3.60/0.99      ( $false ),
% 3.60/0.99      inference(minisat,
% 3.60/0.99                [status(thm)],
% 3.60/0.99                [c_10527,c_8596,c_6183,c_5550,c_2620,c_2599,c_1868,
% 3.60/0.99                 c_1863,c_1474,c_1454,c_1413,c_1347,c_24]) ).
% 3.60/0.99  
% 3.60/0.99  
% 3.60/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.60/0.99  
% 3.60/0.99  ------                               Statistics
% 3.60/0.99  
% 3.60/0.99  ------ General
% 3.60/0.99  
% 3.60/0.99  abstr_ref_over_cycles:                  0
% 3.60/0.99  abstr_ref_under_cycles:                 0
% 3.60/0.99  gc_basic_clause_elim:                   0
% 3.60/0.99  forced_gc_time:                         0
% 3.60/0.99  parsing_time:                           0.014
% 3.60/0.99  unif_index_cands_time:                  0.
% 3.60/0.99  unif_index_add_time:                    0.
% 3.60/0.99  orderings_time:                         0.
% 3.60/0.99  out_proof_time:                         0.013
% 3.60/0.99  total_time:                             0.462
% 3.60/0.99  num_of_symbols:                         50
% 3.60/0.99  num_of_terms:                           8088
% 3.60/0.99  
% 3.60/0.99  ------ Preprocessing
% 3.60/0.99  
% 3.60/0.99  num_of_splits:                          0
% 3.60/0.99  num_of_split_atoms:                     0
% 3.60/0.99  num_of_reused_defs:                     0
% 3.60/0.99  num_eq_ax_congr_red:                    33
% 3.60/0.99  num_of_sem_filtered_clauses:            1
% 3.60/0.99  num_of_subtypes:                        0
% 3.60/0.99  monotx_restored_types:                  0
% 3.60/0.99  sat_num_of_epr_types:                   0
% 3.60/0.99  sat_num_of_non_cyclic_types:            0
% 3.60/0.99  sat_guarded_non_collapsed_types:        0
% 3.60/0.99  num_pure_diseq_elim:                    0
% 3.60/0.99  simp_replaced_by:                       0
% 3.60/0.99  res_preprocessed:                       114
% 3.60/0.99  prep_upred:                             0
% 3.60/0.99  prep_unflattend:                        6
% 3.60/0.99  smt_new_axioms:                         0
% 3.60/0.99  pred_elim_cands:                        4
% 3.60/0.99  pred_elim:                              3
% 3.60/0.99  pred_elim_cl:                           3
% 3.60/0.99  pred_elim_cycles:                       5
% 3.60/0.99  merged_defs:                            16
% 3.60/0.99  merged_defs_ncl:                        0
% 3.60/0.99  bin_hyper_res:                          18
% 3.60/0.99  prep_cycles:                            4
% 3.60/0.99  pred_elim_time:                         0.006
% 3.60/0.99  splitting_time:                         0.
% 3.60/0.99  sem_filter_time:                        0.
% 3.60/0.99  monotx_time:                            0.001
% 3.60/0.99  subtype_inf_time:                       0.
% 3.60/0.99  
% 3.60/0.99  ------ Problem properties
% 3.60/0.99  
% 3.60/0.99  clauses:                                22
% 3.60/0.99  conjectures:                            1
% 3.60/0.99  epr:                                    6
% 3.60/0.99  horn:                                   19
% 3.60/0.99  ground:                                 2
% 3.60/0.99  unary:                                  6
% 3.60/0.99  binary:                                 13
% 3.60/0.99  lits:                                   41
% 3.60/0.99  lits_eq:                                8
% 3.60/0.99  fd_pure:                                0
% 3.60/0.99  fd_pseudo:                              0
% 3.60/0.99  fd_cond:                                1
% 3.60/0.99  fd_pseudo_cond:                         1
% 3.60/0.99  ac_symbols:                             0
% 3.60/0.99  
% 3.60/0.99  ------ Propositional Solver
% 3.60/0.99  
% 3.60/0.99  prop_solver_calls:                      30
% 3.60/0.99  prop_fast_solver_calls:                 750
% 3.60/0.99  smt_solver_calls:                       0
% 3.60/0.99  smt_fast_solver_calls:                  0
% 3.60/0.99  prop_num_of_clauses:                    4386
% 3.60/0.99  prop_preprocess_simplified:             11924
% 3.60/0.99  prop_fo_subsumed:                       1
% 3.60/0.99  prop_solver_time:                       0.
% 3.60/0.99  smt_solver_time:                        0.
% 3.60/0.99  smt_fast_solver_time:                   0.
% 3.60/0.99  prop_fast_solver_time:                  0.
% 3.60/0.99  prop_unsat_core_time:                   0.
% 3.60/0.99  
% 3.60/0.99  ------ QBF
% 3.60/0.99  
% 3.60/0.99  qbf_q_res:                              0
% 3.60/0.99  qbf_num_tautologies:                    0
% 3.60/0.99  qbf_prep_cycles:                        0
% 3.60/0.99  
% 3.60/0.99  ------ BMC1
% 3.60/0.99  
% 3.60/0.99  bmc1_current_bound:                     -1
% 3.60/0.99  bmc1_last_solved_bound:                 -1
% 3.60/0.99  bmc1_unsat_core_size:                   -1
% 3.60/0.99  bmc1_unsat_core_parents_size:           -1
% 3.60/0.99  bmc1_merge_next_fun:                    0
% 3.60/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.60/0.99  
% 3.60/0.99  ------ Instantiation
% 3.60/0.99  
% 3.60/0.99  inst_num_of_clauses:                    1397
% 3.60/0.99  inst_num_in_passive:                    809
% 3.60/0.99  inst_num_in_active:                     452
% 3.60/0.99  inst_num_in_unprocessed:                135
% 3.60/0.99  inst_num_of_loops:                      655
% 3.60/0.99  inst_num_of_learning_restarts:          0
% 3.60/0.99  inst_num_moves_active_passive:          201
% 3.60/0.99  inst_lit_activity:                      0
% 3.60/0.99  inst_lit_activity_moves:                0
% 3.60/0.99  inst_num_tautologies:                   0
% 3.60/0.99  inst_num_prop_implied:                  0
% 3.60/0.99  inst_num_existing_simplified:           0
% 3.60/0.99  inst_num_eq_res_simplified:             0
% 3.60/0.99  inst_num_child_elim:                    0
% 3.60/0.99  inst_num_of_dismatching_blockings:      365
% 3.60/0.99  inst_num_of_non_proper_insts:           1168
% 3.60/0.99  inst_num_of_duplicates:                 0
% 3.60/0.99  inst_inst_num_from_inst_to_res:         0
% 3.60/0.99  inst_dismatching_checking_time:         0.
% 3.60/0.99  
% 3.60/0.99  ------ Resolution
% 3.60/0.99  
% 3.60/0.99  res_num_of_clauses:                     0
% 3.60/0.99  res_num_in_passive:                     0
% 3.60/0.99  res_num_in_active:                      0
% 3.60/0.99  res_num_of_loops:                       118
% 3.60/0.99  res_forward_subset_subsumed:            108
% 3.60/0.99  res_backward_subset_subsumed:           0
% 3.60/0.99  res_forward_subsumed:                   0
% 3.60/0.99  res_backward_subsumed:                  0
% 3.60/0.99  res_forward_subsumption_resolution:     0
% 3.60/0.99  res_backward_subsumption_resolution:    0
% 3.60/0.99  res_clause_to_clause_subsumption:       5525
% 3.60/0.99  res_orphan_elimination:                 0
% 3.60/0.99  res_tautology_del:                      141
% 3.60/0.99  res_num_eq_res_simplified:              0
% 3.60/0.99  res_num_sel_changes:                    0
% 3.60/0.99  res_moves_from_active_to_pass:          0
% 3.60/0.99  
% 3.60/0.99  ------ Superposition
% 3.60/0.99  
% 3.60/0.99  sup_time_total:                         0.
% 3.60/0.99  sup_time_generating:                    0.
% 3.60/0.99  sup_time_sim_full:                      0.
% 3.60/0.99  sup_time_sim_immed:                     0.
% 3.60/0.99  
% 3.60/0.99  sup_num_of_clauses:                     244
% 3.60/0.99  sup_num_in_active:                      117
% 3.60/0.99  sup_num_in_passive:                     127
% 3.60/0.99  sup_num_of_loops:                       130
% 3.60/0.99  sup_fw_superposition:                   255
% 3.60/0.99  sup_bw_superposition:                   47
% 3.60/0.99  sup_immediate_simplified:               38
% 3.60/0.99  sup_given_eliminated:                   1
% 3.60/0.99  comparisons_done:                       0
% 3.60/0.99  comparisons_avoided:                    0
% 3.60/0.99  
% 3.60/0.99  ------ Simplifications
% 3.60/0.99  
% 3.60/0.99  
% 3.60/0.99  sim_fw_subset_subsumed:                 2
% 3.60/0.99  sim_bw_subset_subsumed:                 0
% 3.60/0.99  sim_fw_subsumed:                        5
% 3.60/0.99  sim_bw_subsumed:                        0
% 3.60/0.99  sim_fw_subsumption_res:                 0
% 3.60/0.99  sim_bw_subsumption_res:                 0
% 3.60/0.99  sim_tautology_del:                      5
% 3.60/0.99  sim_eq_tautology_del:                   6
% 3.60/0.99  sim_eq_res_simp:                        0
% 3.60/0.99  sim_fw_demodulated:                     2
% 3.60/0.99  sim_bw_demodulated:                     14
% 3.60/0.99  sim_light_normalised:                   35
% 3.60/0.99  sim_joinable_taut:                      0
% 3.60/0.99  sim_joinable_simp:                      0
% 3.60/0.99  sim_ac_normalised:                      0
% 3.60/0.99  sim_smt_subsumption:                    0
% 3.60/0.99  
%------------------------------------------------------------------------------
