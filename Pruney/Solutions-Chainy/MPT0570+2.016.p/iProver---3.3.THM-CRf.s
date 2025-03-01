%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:47:37 EST 2020

% Result     : Theorem 0.37s
% Output     : CNFRefutation 0.37s
% Verified   : 
% Statistics : Number of formulae       :  103 ( 220 expanded)
%              Number of clauses        :   47 (  78 expanded)
%              Number of leaves         :   15 (  41 expanded)
%              Depth                    :   18
%              Number of atoms          :  284 ( 690 expanded)
%              Number of equality atoms :   79 ( 215 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f27,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f26])).

fof(f28,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f27,f28])).

fof(f43,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f8,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f20,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f19])).

fof(f59,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f7,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f7])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ~ r1_tarski(X2,X0) )
            & ( r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(rectify,[],[f36])).

fof(f38,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK2(X0,X1),X0)
          | ~ r2_hidden(sK2(X0,X1),X1) )
        & ( r1_tarski(sK2(X0,X1),X0)
          | r2_hidden(sK2(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK2(X0,X1),X0)
            | ~ r2_hidden(sK2(X0,X1),X1) )
          & ( r1_tarski(sK2(X0,X1),X0)
            | r2_hidden(sK2(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f37,f38])).

fof(f53,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f39])).

fof(f70,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f53])).

fof(f12,conjecture,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ~ ( k1_xboole_0 = k10_relat_1(X1,X0)
          & r1_tarski(X0,k2_relat_1(X1))
          & k1_xboole_0 != X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1] :
        ( v1_relat_1(X1)
       => ~ ( k1_xboole_0 = k10_relat_1(X1,X0)
            & r1_tarski(X0,k2_relat_1(X1))
            & k1_xboole_0 != X0 ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f24,plain,(
    ? [X0,X1] :
      ( k1_xboole_0 = k10_relat_1(X1,X0)
      & r1_tarski(X0,k2_relat_1(X1))
      & k1_xboole_0 != X0
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f25,plain,(
    ? [X0,X1] :
      ( k1_xboole_0 = k10_relat_1(X1,X0)
      & r1_tarski(X0,k2_relat_1(X1))
      & k1_xboole_0 != X0
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f24])).

fof(f41,plain,
    ( ? [X0,X1] :
        ( k1_xboole_0 = k10_relat_1(X1,X0)
        & r1_tarski(X0,k2_relat_1(X1))
        & k1_xboole_0 != X0
        & v1_relat_1(X1) )
   => ( k1_xboole_0 = k10_relat_1(sK4,sK3)
      & r1_tarski(sK3,k2_relat_1(sK4))
      & k1_xboole_0 != sK3
      & v1_relat_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( k1_xboole_0 = k10_relat_1(sK4,sK3)
    & r1_tarski(sK3,k2_relat_1(sK4))
    & k1_xboole_0 != sK3
    & v1_relat_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f25,f41])).

fof(f65,plain,(
    r1_tarski(sK3,k2_relat_1(sK4)) ),
    inference(cnf_transformation,[],[f42])).

fof(f66,plain,(
    k1_xboole_0 = k10_relat_1(sK4,sK3) ),
    inference(cnf_transformation,[],[f42])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( k1_xboole_0 = k10_relat_1(X1,X0)
      <=> r1_xboole_0(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k10_relat_1(X1,X0)
      <=> r1_xboole_0(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( ( k1_xboole_0 = k10_relat_1(X1,X0)
          | ~ r1_xboole_0(k2_relat_1(X1),X0) )
        & ( r1_xboole_0(k2_relat_1(X1),X0)
          | k1_xboole_0 != k10_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k2_relat_1(X1),X0)
      | k1_xboole_0 != k10_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f63,plain,(
    v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f42])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_xboole_0(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f15])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ~ ( r1_xboole_0(X1,X0)
          & r1_tarski(X1,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f17])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f34])).

fof(f48,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f68,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f48])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f30])).

fof(f32,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f31,f32])).

fof(f46,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK1(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f50,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f64,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_6200,plain,
    ( ~ r2_hidden(sK1(k1_xboole_0,sK3),k1_xboole_0)
    | ~ v1_xboole_0(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_6192,plain,
    ( ~ r2_hidden(sK1(sK3,k1_xboole_0),sK3)
    | ~ v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_15,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1181,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1180,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2256,plain,
    ( r2_hidden(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1181,c_1180])).

cnf(c_14,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_41,plain,
    ( v1_xboole_0(k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3376,plain,
    ( r2_hidden(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2256,c_41])).

cnf(c_13,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1183,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3384,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_3376,c_1183])).

cnf(c_21,negated_conjecture,
    ( r1_tarski(sK3,k2_relat_1(sK4)) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1178,plain,
    ( r1_tarski(sK3,k2_relat_1(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_20,negated_conjecture,
    ( k1_xboole_0 = k10_relat_1(sK4,sK3) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_19,plain,
    ( r1_xboole_0(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k10_relat_1(X0,X1) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_23,negated_conjecture,
    ( v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_289,plain,
    ( r1_xboole_0(k2_relat_1(X0),X1)
    | k10_relat_1(X0,X1) != k1_xboole_0
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_23])).

cnf(c_290,plain,
    ( r1_xboole_0(k2_relat_1(sK4),X0)
    | k10_relat_1(sK4,X0) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_289])).

cnf(c_476,plain,
    ( r1_xboole_0(k2_relat_1(sK4),X0)
    | k10_relat_1(sK4,X0) != k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_290])).

cnf(c_1177,plain,
    ( k10_relat_1(sK4,X0) != k1_xboole_0
    | r1_xboole_0(k2_relat_1(sK4),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_476])).

cnf(c_1555,plain,
    ( r1_xboole_0(k2_relat_1(sK4),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_20,c_1177])).

cnf(c_8,plain,
    ( ~ r1_xboole_0(X0,X1)
    | r1_xboole_0(X2,X1)
    | ~ r1_tarski(X2,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1188,plain,
    ( r1_xboole_0(X0,X1) != iProver_top
    | r1_xboole_0(X2,X1) = iProver_top
    | r1_tarski(X2,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_2264,plain,
    ( r1_xboole_0(X0,sK3) = iProver_top
    | r1_tarski(X0,k2_relat_1(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1555,c_1188])).

cnf(c_2438,plain,
    ( r1_xboole_0(sK3,sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1178,c_2264])).

cnf(c_2494,plain,
    ( r1_xboole_0(X0,sK3) = iProver_top
    | r1_tarski(X0,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2438,c_1188])).

cnf(c_3947,plain,
    ( r1_xboole_0(k1_xboole_0,sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_3384,c_2494])).

cnf(c_9,plain,
    ( ~ r1_xboole_0(X0,X1)
    | ~ r1_tarski(X0,X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1187,plain,
    ( r1_xboole_0(X0,X1) != iProver_top
    | r1_tarski(X0,X1) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_3945,plain,
    ( r1_xboole_0(k1_xboole_0,X0) != iProver_top
    | v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_3384,c_1187])).

cnf(c_4353,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_3947,c_3945])).

cnf(c_4361,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4353])).

cnf(c_7,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1189,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1944,plain,
    ( r1_xboole_0(X0,X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1189,c_1187])).

cnf(c_3241,plain,
    ( v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2438,c_1944])).

cnf(c_3242,plain,
    ( v1_xboole_0(sK3) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3241])).

cnf(c_3,plain,
    ( r1_tarski(X0,X1)
    | r2_hidden(sK1(X0,X1),X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1495,plain,
    ( r1_tarski(k1_xboole_0,sK3)
    | r2_hidden(sK1(k1_xboole_0,sK3),k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1393,plain,
    ( r1_tarski(sK3,k1_xboole_0)
    | r2_hidden(sK1(sK3,k1_xboole_0),sK3) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_5,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1340,plain,
    ( ~ r1_tarski(sK3,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,sK3)
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_22,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f64])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6200,c_6192,c_4361,c_3242,c_1495,c_1393,c_1340,c_22])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 19:22:19 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 0.37/1.04  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.37/1.04  
% 0.37/1.04  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.37/1.04  
% 0.37/1.04  ------  iProver source info
% 0.37/1.04  
% 0.37/1.04  git: date: 2020-06-30 10:37:57 +0100
% 0.37/1.04  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.37/1.04  git: non_committed_changes: false
% 0.37/1.04  git: last_make_outside_of_git: false
% 0.37/1.04  
% 0.37/1.04  ------ 
% 0.37/1.04  
% 0.37/1.04  ------ Input Options
% 0.37/1.04  
% 0.37/1.04  --out_options                           all
% 0.37/1.04  --tptp_safe_out                         true
% 0.37/1.04  --problem_path                          ""
% 0.37/1.04  --include_path                          ""
% 0.37/1.04  --clausifier                            res/vclausify_rel
% 0.37/1.04  --clausifier_options                    --mode clausify
% 0.37/1.04  --stdin                                 false
% 0.37/1.04  --stats_out                             all
% 0.37/1.04  
% 0.37/1.04  ------ General Options
% 0.37/1.04  
% 0.37/1.04  --fof                                   false
% 0.37/1.04  --time_out_real                         305.
% 0.37/1.04  --time_out_virtual                      -1.
% 0.37/1.04  --symbol_type_check                     false
% 0.37/1.04  --clausify_out                          false
% 0.37/1.04  --sig_cnt_out                           false
% 0.37/1.04  --trig_cnt_out                          false
% 0.37/1.04  --trig_cnt_out_tolerance                1.
% 0.37/1.04  --trig_cnt_out_sk_spl                   false
% 0.37/1.04  --abstr_cl_out                          false
% 0.37/1.04  
% 0.37/1.04  ------ Global Options
% 0.37/1.04  
% 0.37/1.04  --schedule                              default
% 0.37/1.04  --add_important_lit                     false
% 0.37/1.04  --prop_solver_per_cl                    1000
% 0.37/1.04  --min_unsat_core                        false
% 0.37/1.04  --soft_assumptions                      false
% 0.37/1.04  --soft_lemma_size                       3
% 0.37/1.04  --prop_impl_unit_size                   0
% 0.37/1.04  --prop_impl_unit                        []
% 0.37/1.04  --share_sel_clauses                     true
% 0.37/1.04  --reset_solvers                         false
% 0.37/1.04  --bc_imp_inh                            [conj_cone]
% 0.37/1.04  --conj_cone_tolerance                   3.
% 0.37/1.04  --extra_neg_conj                        none
% 0.37/1.04  --large_theory_mode                     true
% 0.37/1.04  --prolific_symb_bound                   200
% 0.37/1.04  --lt_threshold                          2000
% 0.37/1.04  --clause_weak_htbl                      true
% 0.37/1.04  --gc_record_bc_elim                     false
% 0.37/1.04  
% 0.37/1.04  ------ Preprocessing Options
% 0.37/1.04  
% 0.37/1.04  --preprocessing_flag                    true
% 0.37/1.04  --time_out_prep_mult                    0.1
% 0.37/1.04  --splitting_mode                        input
% 0.37/1.04  --splitting_grd                         true
% 0.37/1.04  --splitting_cvd                         false
% 0.37/1.04  --splitting_cvd_svl                     false
% 0.37/1.04  --splitting_nvd                         32
% 0.37/1.04  --sub_typing                            true
% 0.37/1.04  --prep_gs_sim                           true
% 0.37/1.04  --prep_unflatten                        true
% 0.37/1.04  --prep_res_sim                          true
% 0.37/1.04  --prep_upred                            true
% 0.37/1.04  --prep_sem_filter                       exhaustive
% 0.37/1.04  --prep_sem_filter_out                   false
% 0.37/1.04  --pred_elim                             true
% 0.37/1.04  --res_sim_input                         true
% 0.37/1.04  --eq_ax_congr_red                       true
% 0.37/1.04  --pure_diseq_elim                       true
% 0.37/1.04  --brand_transform                       false
% 0.37/1.04  --non_eq_to_eq                          false
% 0.37/1.04  --prep_def_merge                        true
% 0.37/1.04  --prep_def_merge_prop_impl              false
% 0.37/1.04  --prep_def_merge_mbd                    true
% 0.37/1.04  --prep_def_merge_tr_red                 false
% 0.37/1.04  --prep_def_merge_tr_cl                  false
% 0.37/1.04  --smt_preprocessing                     true
% 0.37/1.04  --smt_ac_axioms                         fast
% 0.37/1.04  --preprocessed_out                      false
% 0.37/1.04  --preprocessed_stats                    false
% 0.37/1.04  
% 0.37/1.04  ------ Abstraction refinement Options
% 0.37/1.04  
% 0.37/1.04  --abstr_ref                             []
% 0.37/1.04  --abstr_ref_prep                        false
% 0.37/1.04  --abstr_ref_until_sat                   false
% 0.37/1.04  --abstr_ref_sig_restrict                funpre
% 0.37/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 0.37/1.04  --abstr_ref_under                       []
% 0.37/1.04  
% 0.37/1.04  ------ SAT Options
% 0.37/1.04  
% 0.37/1.04  --sat_mode                              false
% 0.37/1.04  --sat_fm_restart_options                ""
% 0.37/1.04  --sat_gr_def                            false
% 0.37/1.04  --sat_epr_types                         true
% 0.37/1.04  --sat_non_cyclic_types                  false
% 0.37/1.04  --sat_finite_models                     false
% 0.37/1.04  --sat_fm_lemmas                         false
% 0.37/1.04  --sat_fm_prep                           false
% 0.37/1.04  --sat_fm_uc_incr                        true
% 0.37/1.04  --sat_out_model                         small
% 0.37/1.04  --sat_out_clauses                       false
% 0.37/1.04  
% 0.37/1.04  ------ QBF Options
% 0.37/1.04  
% 0.37/1.04  --qbf_mode                              false
% 0.37/1.04  --qbf_elim_univ                         false
% 0.37/1.04  --qbf_dom_inst                          none
% 0.37/1.04  --qbf_dom_pre_inst                      false
% 0.37/1.04  --qbf_sk_in                             false
% 0.37/1.04  --qbf_pred_elim                         true
% 0.37/1.04  --qbf_split                             512
% 0.37/1.04  
% 0.37/1.04  ------ BMC1 Options
% 0.37/1.04  
% 0.37/1.04  --bmc1_incremental                      false
% 0.37/1.04  --bmc1_axioms                           reachable_all
% 0.37/1.04  --bmc1_min_bound                        0
% 0.37/1.04  --bmc1_max_bound                        -1
% 0.37/1.04  --bmc1_max_bound_default                -1
% 0.37/1.04  --bmc1_symbol_reachability              true
% 0.37/1.04  --bmc1_property_lemmas                  false
% 0.37/1.04  --bmc1_k_induction                      false
% 0.37/1.04  --bmc1_non_equiv_states                 false
% 0.37/1.04  --bmc1_deadlock                         false
% 0.37/1.04  --bmc1_ucm                              false
% 0.37/1.04  --bmc1_add_unsat_core                   none
% 0.37/1.04  --bmc1_unsat_core_children              false
% 0.37/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 0.37/1.04  --bmc1_out_stat                         full
% 0.37/1.04  --bmc1_ground_init                      false
% 0.37/1.04  --bmc1_pre_inst_next_state              false
% 0.37/1.04  --bmc1_pre_inst_state                   false
% 0.37/1.04  --bmc1_pre_inst_reach_state             false
% 0.37/1.04  --bmc1_out_unsat_core                   false
% 0.37/1.04  --bmc1_aig_witness_out                  false
% 0.37/1.04  --bmc1_verbose                          false
% 0.37/1.04  --bmc1_dump_clauses_tptp                false
% 0.37/1.04  --bmc1_dump_unsat_core_tptp             false
% 0.37/1.04  --bmc1_dump_file                        -
% 0.37/1.04  --bmc1_ucm_expand_uc_limit              128
% 0.37/1.04  --bmc1_ucm_n_expand_iterations          6
% 0.37/1.04  --bmc1_ucm_extend_mode                  1
% 0.37/1.04  --bmc1_ucm_init_mode                    2
% 0.37/1.04  --bmc1_ucm_cone_mode                    none
% 0.37/1.04  --bmc1_ucm_reduced_relation_type        0
% 0.37/1.04  --bmc1_ucm_relax_model                  4
% 0.37/1.04  --bmc1_ucm_full_tr_after_sat            true
% 0.37/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 0.37/1.04  --bmc1_ucm_layered_model                none
% 0.37/1.04  --bmc1_ucm_max_lemma_size               10
% 0.37/1.04  
% 0.37/1.04  ------ AIG Options
% 0.37/1.04  
% 0.37/1.04  --aig_mode                              false
% 0.37/1.04  
% 0.37/1.04  ------ Instantiation Options
% 0.37/1.04  
% 0.37/1.04  --instantiation_flag                    true
% 0.37/1.04  --inst_sos_flag                         false
% 0.37/1.04  --inst_sos_phase                        true
% 0.37/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.37/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.37/1.04  --inst_lit_sel_side                     num_symb
% 0.37/1.04  --inst_solver_per_active                1400
% 0.37/1.04  --inst_solver_calls_frac                1.
% 0.37/1.04  --inst_passive_queue_type               priority_queues
% 0.37/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.37/1.04  --inst_passive_queues_freq              [25;2]
% 0.37/1.04  --inst_dismatching                      true
% 0.37/1.04  --inst_eager_unprocessed_to_passive     true
% 0.37/1.04  --inst_prop_sim_given                   true
% 0.37/1.04  --inst_prop_sim_new                     false
% 0.37/1.04  --inst_subs_new                         false
% 0.37/1.04  --inst_eq_res_simp                      false
% 0.37/1.04  --inst_subs_given                       false
% 0.37/1.04  --inst_orphan_elimination               true
% 0.37/1.04  --inst_learning_loop_flag               true
% 0.37/1.04  --inst_learning_start                   3000
% 0.37/1.04  --inst_learning_factor                  2
% 0.37/1.04  --inst_start_prop_sim_after_learn       3
% 0.37/1.04  --inst_sel_renew                        solver
% 0.37/1.04  --inst_lit_activity_flag                true
% 0.37/1.04  --inst_restr_to_given                   false
% 0.37/1.04  --inst_activity_threshold               500
% 0.37/1.04  --inst_out_proof                        true
% 0.37/1.04  
% 0.37/1.04  ------ Resolution Options
% 0.37/1.04  
% 0.37/1.04  --resolution_flag                       true
% 0.37/1.04  --res_lit_sel                           adaptive
% 0.37/1.04  --res_lit_sel_side                      none
% 0.37/1.04  --res_ordering                          kbo
% 0.37/1.04  --res_to_prop_solver                    active
% 0.37/1.04  --res_prop_simpl_new                    false
% 0.37/1.04  --res_prop_simpl_given                  true
% 0.37/1.04  --res_passive_queue_type                priority_queues
% 0.37/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.37/1.04  --res_passive_queues_freq               [15;5]
% 0.37/1.04  --res_forward_subs                      full
% 0.37/1.04  --res_backward_subs                     full
% 0.37/1.04  --res_forward_subs_resolution           true
% 0.37/1.04  --res_backward_subs_resolution          true
% 0.37/1.04  --res_orphan_elimination                true
% 0.37/1.04  --res_time_limit                        2.
% 0.37/1.04  --res_out_proof                         true
% 0.37/1.04  
% 0.37/1.04  ------ Superposition Options
% 0.37/1.04  
% 0.37/1.04  --superposition_flag                    true
% 0.37/1.04  --sup_passive_queue_type                priority_queues
% 0.37/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.37/1.04  --sup_passive_queues_freq               [8;1;4]
% 0.37/1.04  --demod_completeness_check              fast
% 0.37/1.04  --demod_use_ground                      true
% 0.37/1.04  --sup_to_prop_solver                    passive
% 0.37/1.04  --sup_prop_simpl_new                    true
% 0.37/1.04  --sup_prop_simpl_given                  true
% 0.37/1.04  --sup_fun_splitting                     false
% 0.37/1.04  --sup_smt_interval                      50000
% 0.37/1.04  
% 0.37/1.04  ------ Superposition Simplification Setup
% 0.37/1.04  
% 0.37/1.04  --sup_indices_passive                   []
% 0.37/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.37/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.37/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.37/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 0.37/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.37/1.04  --sup_full_bw                           [BwDemod]
% 0.37/1.04  --sup_immed_triv                        [TrivRules]
% 0.37/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.37/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.37/1.04  --sup_immed_bw_main                     []
% 0.37/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.37/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 0.37/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.37/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.37/1.04  
% 0.37/1.04  ------ Combination Options
% 0.37/1.04  
% 0.37/1.04  --comb_res_mult                         3
% 0.37/1.04  --comb_sup_mult                         2
% 0.37/1.04  --comb_inst_mult                        10
% 0.37/1.04  
% 0.37/1.04  ------ Debug Options
% 0.37/1.04  
% 0.37/1.04  --dbg_backtrace                         false
% 0.37/1.04  --dbg_dump_prop_clauses                 false
% 0.37/1.04  --dbg_dump_prop_clauses_file            -
% 0.37/1.04  --dbg_out_stat                          false
% 0.37/1.04  ------ Parsing...
% 0.37/1.04  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.37/1.04  
% 0.37/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 0.37/1.04  
% 0.37/1.04  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.37/1.04  
% 0.37/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.37/1.04  ------ Proving...
% 0.37/1.04  ------ Problem Properties 
% 0.37/1.04  
% 0.37/1.04  
% 0.37/1.04  clauses                                 22
% 0.37/1.04  conjectures                             3
% 0.37/1.04  EPR                                     8
% 0.37/1.04  Horn                                    18
% 0.37/1.04  unary                                   6
% 0.37/1.04  binary                                  8
% 0.37/1.04  lits                                    46
% 0.37/1.04  lits eq                                 7
% 0.37/1.04  fd_pure                                 0
% 0.37/1.04  fd_pseudo                               0
% 0.37/1.04  fd_cond                                 0
% 0.37/1.04  fd_pseudo_cond                          3
% 0.37/1.04  AC symbols                              0
% 0.37/1.04  
% 0.37/1.04  ------ Schedule dynamic 5 is on 
% 0.37/1.04  
% 0.37/1.04  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.37/1.04  
% 0.37/1.04  
% 0.37/1.04  ------ 
% 0.37/1.04  Current options:
% 0.37/1.04  ------ 
% 0.37/1.04  
% 0.37/1.04  ------ Input Options
% 0.37/1.04  
% 0.37/1.04  --out_options                           all
% 0.37/1.04  --tptp_safe_out                         true
% 0.37/1.04  --problem_path                          ""
% 0.37/1.04  --include_path                          ""
% 0.37/1.04  --clausifier                            res/vclausify_rel
% 0.37/1.04  --clausifier_options                    --mode clausify
% 0.37/1.04  --stdin                                 false
% 0.37/1.04  --stats_out                             all
% 0.37/1.04  
% 0.37/1.04  ------ General Options
% 0.37/1.04  
% 0.37/1.04  --fof                                   false
% 0.37/1.04  --time_out_real                         305.
% 0.37/1.04  --time_out_virtual                      -1.
% 0.37/1.04  --symbol_type_check                     false
% 0.37/1.04  --clausify_out                          false
% 0.37/1.04  --sig_cnt_out                           false
% 0.37/1.04  --trig_cnt_out                          false
% 0.37/1.04  --trig_cnt_out_tolerance                1.
% 0.37/1.04  --trig_cnt_out_sk_spl                   false
% 0.37/1.04  --abstr_cl_out                          false
% 0.37/1.04  
% 0.37/1.04  ------ Global Options
% 0.37/1.04  
% 0.37/1.04  --schedule                              default
% 0.37/1.04  --add_important_lit                     false
% 0.37/1.04  --prop_solver_per_cl                    1000
% 0.37/1.04  --min_unsat_core                        false
% 0.37/1.04  --soft_assumptions                      false
% 0.37/1.04  --soft_lemma_size                       3
% 0.37/1.04  --prop_impl_unit_size                   0
% 0.37/1.04  --prop_impl_unit                        []
% 0.37/1.04  --share_sel_clauses                     true
% 0.37/1.04  --reset_solvers                         false
% 0.37/1.04  --bc_imp_inh                            [conj_cone]
% 0.37/1.04  --conj_cone_tolerance                   3.
% 0.37/1.04  --extra_neg_conj                        none
% 0.37/1.04  --large_theory_mode                     true
% 0.37/1.04  --prolific_symb_bound                   200
% 0.37/1.04  --lt_threshold                          2000
% 0.37/1.04  --clause_weak_htbl                      true
% 0.37/1.04  --gc_record_bc_elim                     false
% 0.37/1.04  
% 0.37/1.04  ------ Preprocessing Options
% 0.37/1.04  
% 0.37/1.04  --preprocessing_flag                    true
% 0.37/1.04  --time_out_prep_mult                    0.1
% 0.37/1.04  --splitting_mode                        input
% 0.37/1.04  --splitting_grd                         true
% 0.37/1.04  --splitting_cvd                         false
% 0.37/1.04  --splitting_cvd_svl                     false
% 0.37/1.04  --splitting_nvd                         32
% 0.37/1.04  --sub_typing                            true
% 0.37/1.04  --prep_gs_sim                           true
% 0.37/1.04  --prep_unflatten                        true
% 0.37/1.04  --prep_res_sim                          true
% 0.37/1.04  --prep_upred                            true
% 0.37/1.04  --prep_sem_filter                       exhaustive
% 0.37/1.04  --prep_sem_filter_out                   false
% 0.37/1.04  --pred_elim                             true
% 0.37/1.04  --res_sim_input                         true
% 0.37/1.04  --eq_ax_congr_red                       true
% 0.37/1.04  --pure_diseq_elim                       true
% 0.37/1.04  --brand_transform                       false
% 0.37/1.04  --non_eq_to_eq                          false
% 0.37/1.04  --prep_def_merge                        true
% 0.37/1.04  --prep_def_merge_prop_impl              false
% 0.37/1.04  --prep_def_merge_mbd                    true
% 0.37/1.04  --prep_def_merge_tr_red                 false
% 0.37/1.04  --prep_def_merge_tr_cl                  false
% 0.37/1.04  --smt_preprocessing                     true
% 0.37/1.04  --smt_ac_axioms                         fast
% 0.37/1.04  --preprocessed_out                      false
% 0.37/1.04  --preprocessed_stats                    false
% 0.37/1.04  
% 0.37/1.04  ------ Abstraction refinement Options
% 0.37/1.04  
% 0.37/1.04  --abstr_ref                             []
% 0.37/1.04  --abstr_ref_prep                        false
% 0.37/1.04  --abstr_ref_until_sat                   false
% 0.37/1.04  --abstr_ref_sig_restrict                funpre
% 0.37/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 0.37/1.04  --abstr_ref_under                       []
% 0.37/1.04  
% 0.37/1.04  ------ SAT Options
% 0.37/1.04  
% 0.37/1.04  --sat_mode                              false
% 0.37/1.04  --sat_fm_restart_options                ""
% 0.37/1.04  --sat_gr_def                            false
% 0.37/1.04  --sat_epr_types                         true
% 0.37/1.04  --sat_non_cyclic_types                  false
% 0.37/1.04  --sat_finite_models                     false
% 0.37/1.04  --sat_fm_lemmas                         false
% 0.37/1.04  --sat_fm_prep                           false
% 0.37/1.04  --sat_fm_uc_incr                        true
% 0.37/1.04  --sat_out_model                         small
% 0.37/1.04  --sat_out_clauses                       false
% 0.37/1.04  
% 0.37/1.04  ------ QBF Options
% 0.37/1.04  
% 0.37/1.04  --qbf_mode                              false
% 0.37/1.04  --qbf_elim_univ                         false
% 0.37/1.04  --qbf_dom_inst                          none
% 0.37/1.04  --qbf_dom_pre_inst                      false
% 0.37/1.04  --qbf_sk_in                             false
% 0.37/1.04  --qbf_pred_elim                         true
% 0.37/1.04  --qbf_split                             512
% 0.37/1.04  
% 0.37/1.04  ------ BMC1 Options
% 0.37/1.04  
% 0.37/1.04  --bmc1_incremental                      false
% 0.37/1.04  --bmc1_axioms                           reachable_all
% 0.37/1.04  --bmc1_min_bound                        0
% 0.37/1.04  --bmc1_max_bound                        -1
% 0.37/1.04  --bmc1_max_bound_default                -1
% 0.37/1.04  --bmc1_symbol_reachability              true
% 0.37/1.04  --bmc1_property_lemmas                  false
% 0.37/1.04  --bmc1_k_induction                      false
% 0.37/1.04  --bmc1_non_equiv_states                 false
% 0.37/1.04  --bmc1_deadlock                         false
% 0.37/1.04  --bmc1_ucm                              false
% 0.37/1.04  --bmc1_add_unsat_core                   none
% 0.37/1.04  --bmc1_unsat_core_children              false
% 0.37/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 0.37/1.04  --bmc1_out_stat                         full
% 0.37/1.04  --bmc1_ground_init                      false
% 0.37/1.04  --bmc1_pre_inst_next_state              false
% 0.37/1.04  --bmc1_pre_inst_state                   false
% 0.37/1.04  --bmc1_pre_inst_reach_state             false
% 0.37/1.04  --bmc1_out_unsat_core                   false
% 0.37/1.04  --bmc1_aig_witness_out                  false
% 0.37/1.04  --bmc1_verbose                          false
% 0.37/1.04  --bmc1_dump_clauses_tptp                false
% 0.37/1.04  --bmc1_dump_unsat_core_tptp             false
% 0.37/1.04  --bmc1_dump_file                        -
% 0.37/1.04  --bmc1_ucm_expand_uc_limit              128
% 0.37/1.04  --bmc1_ucm_n_expand_iterations          6
% 0.37/1.04  --bmc1_ucm_extend_mode                  1
% 0.37/1.04  --bmc1_ucm_init_mode                    2
% 0.37/1.04  --bmc1_ucm_cone_mode                    none
% 0.37/1.04  --bmc1_ucm_reduced_relation_type        0
% 0.37/1.04  --bmc1_ucm_relax_model                  4
% 0.37/1.04  --bmc1_ucm_full_tr_after_sat            true
% 0.37/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 0.37/1.04  --bmc1_ucm_layered_model                none
% 0.37/1.04  --bmc1_ucm_max_lemma_size               10
% 0.37/1.04  
% 0.37/1.04  ------ AIG Options
% 0.37/1.04  
% 0.37/1.04  --aig_mode                              false
% 0.37/1.04  
% 0.37/1.04  ------ Instantiation Options
% 0.37/1.04  
% 0.37/1.04  --instantiation_flag                    true
% 0.37/1.04  --inst_sos_flag                         false
% 0.37/1.04  --inst_sos_phase                        true
% 0.37/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.37/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.37/1.04  --inst_lit_sel_side                     none
% 0.37/1.04  --inst_solver_per_active                1400
% 0.37/1.04  --inst_solver_calls_frac                1.
% 0.37/1.04  --inst_passive_queue_type               priority_queues
% 0.37/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.37/1.04  --inst_passive_queues_freq              [25;2]
% 0.37/1.04  --inst_dismatching                      true
% 0.37/1.04  --inst_eager_unprocessed_to_passive     true
% 0.37/1.04  --inst_prop_sim_given                   true
% 0.37/1.04  --inst_prop_sim_new                     false
% 0.37/1.04  --inst_subs_new                         false
% 0.37/1.04  --inst_eq_res_simp                      false
% 0.37/1.04  --inst_subs_given                       false
% 0.37/1.04  --inst_orphan_elimination               true
% 0.37/1.04  --inst_learning_loop_flag               true
% 0.37/1.04  --inst_learning_start                   3000
% 0.37/1.04  --inst_learning_factor                  2
% 0.37/1.04  --inst_start_prop_sim_after_learn       3
% 0.37/1.04  --inst_sel_renew                        solver
% 0.37/1.04  --inst_lit_activity_flag                true
% 0.37/1.04  --inst_restr_to_given                   false
% 0.37/1.04  --inst_activity_threshold               500
% 0.37/1.04  --inst_out_proof                        true
% 0.37/1.04  
% 0.37/1.04  ------ Resolution Options
% 0.37/1.04  
% 0.37/1.04  --resolution_flag                       false
% 0.37/1.04  --res_lit_sel                           adaptive
% 0.37/1.04  --res_lit_sel_side                      none
% 0.37/1.04  --res_ordering                          kbo
% 0.37/1.04  --res_to_prop_solver                    active
% 0.37/1.04  --res_prop_simpl_new                    false
% 0.37/1.04  --res_prop_simpl_given                  true
% 0.37/1.04  --res_passive_queue_type                priority_queues
% 0.37/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.37/1.04  --res_passive_queues_freq               [15;5]
% 0.37/1.04  --res_forward_subs                      full
% 0.37/1.04  --res_backward_subs                     full
% 0.37/1.04  --res_forward_subs_resolution           true
% 0.37/1.04  --res_backward_subs_resolution          true
% 0.37/1.04  --res_orphan_elimination                true
% 0.37/1.04  --res_time_limit                        2.
% 0.37/1.04  --res_out_proof                         true
% 0.37/1.04  
% 0.37/1.04  ------ Superposition Options
% 0.37/1.04  
% 0.37/1.04  --superposition_flag                    true
% 0.37/1.04  --sup_passive_queue_type                priority_queues
% 0.37/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.37/1.04  --sup_passive_queues_freq               [8;1;4]
% 0.37/1.04  --demod_completeness_check              fast
% 0.37/1.04  --demod_use_ground                      true
% 0.37/1.04  --sup_to_prop_solver                    passive
% 0.37/1.04  --sup_prop_simpl_new                    true
% 0.37/1.04  --sup_prop_simpl_given                  true
% 0.37/1.04  --sup_fun_splitting                     false
% 0.37/1.04  --sup_smt_interval                      50000
% 0.37/1.04  
% 0.37/1.04  ------ Superposition Simplification Setup
% 0.37/1.04  
% 0.37/1.04  --sup_indices_passive                   []
% 0.37/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.37/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.37/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.37/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 0.37/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.37/1.04  --sup_full_bw                           [BwDemod]
% 0.37/1.04  --sup_immed_triv                        [TrivRules]
% 0.37/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.37/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.37/1.04  --sup_immed_bw_main                     []
% 0.37/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.37/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 0.37/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.37/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.37/1.04  
% 0.37/1.04  ------ Combination Options
% 0.37/1.04  
% 0.37/1.04  --comb_res_mult                         3
% 0.37/1.04  --comb_sup_mult                         2
% 0.37/1.04  --comb_inst_mult                        10
% 0.37/1.04  
% 0.37/1.04  ------ Debug Options
% 0.37/1.04  
% 0.37/1.04  --dbg_backtrace                         false
% 0.37/1.04  --dbg_dump_prop_clauses                 false
% 0.37/1.04  --dbg_dump_prop_clauses_file            -
% 0.37/1.04  --dbg_out_stat                          false
% 0.37/1.04  
% 0.37/1.04  
% 0.37/1.04  
% 0.37/1.04  
% 0.37/1.04  ------ Proving...
% 0.37/1.04  
% 0.37/1.04  
% 0.37/1.04  % SZS status Theorem for theBenchmark.p
% 0.37/1.04  
% 0.37/1.04  % SZS output start CNFRefutation for theBenchmark.p
% 0.37/1.04  
% 0.37/1.04  fof(f1,axiom,(
% 0.37/1.04    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f26,plain,(
% 0.37/1.04    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 0.37/1.04    inference(nnf_transformation,[],[f1])).
% 0.37/1.04  
% 0.37/1.04  fof(f27,plain,(
% 0.37/1.04    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 0.37/1.04    inference(rectify,[],[f26])).
% 0.37/1.04  
% 0.37/1.04  fof(f28,plain,(
% 0.37/1.04    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 0.37/1.04    introduced(choice_axiom,[])).
% 0.37/1.04  
% 0.37/1.04  fof(f29,plain,(
% 0.37/1.04    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 0.37/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f27,f28])).
% 0.37/1.04  
% 0.37/1.04  fof(f43,plain,(
% 0.37/1.04    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 0.37/1.04    inference(cnf_transformation,[],[f29])).
% 0.37/1.04  
% 0.37/1.04  fof(f8,axiom,(
% 0.37/1.04    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f58,plain,(
% 0.37/1.04    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 0.37/1.04    inference(cnf_transformation,[],[f8])).
% 0.37/1.04  
% 0.37/1.04  fof(f9,axiom,(
% 0.37/1.04    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f19,plain,(
% 0.37/1.04    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 0.37/1.04    inference(ennf_transformation,[],[f9])).
% 0.37/1.04  
% 0.37/1.04  fof(f20,plain,(
% 0.37/1.04    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 0.37/1.04    inference(flattening,[],[f19])).
% 0.37/1.04  
% 0.37/1.04  fof(f59,plain,(
% 0.37/1.04    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 0.37/1.04    inference(cnf_transformation,[],[f20])).
% 0.37/1.04  
% 0.37/1.04  fof(f7,axiom,(
% 0.37/1.04    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f57,plain,(
% 0.37/1.04    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 0.37/1.04    inference(cnf_transformation,[],[f7])).
% 0.37/1.04  
% 0.37/1.04  fof(f6,axiom,(
% 0.37/1.04    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f36,plain,(
% 0.37/1.04    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.37/1.04    inference(nnf_transformation,[],[f6])).
% 0.37/1.04  
% 0.37/1.04  fof(f37,plain,(
% 0.37/1.04    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.37/1.04    inference(rectify,[],[f36])).
% 0.37/1.04  
% 0.37/1.04  fof(f38,plain,(
% 0.37/1.04    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK2(X0,X1),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (r1_tarski(sK2(X0,X1),X0) | r2_hidden(sK2(X0,X1),X1))))),
% 0.37/1.04    introduced(choice_axiom,[])).
% 0.37/1.04  
% 0.37/1.04  fof(f39,plain,(
% 0.37/1.04    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK2(X0,X1),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (r1_tarski(sK2(X0,X1),X0) | r2_hidden(sK2(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.37/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f37,f38])).
% 0.37/1.04  
% 0.37/1.04  fof(f53,plain,(
% 0.37/1.04    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 0.37/1.04    inference(cnf_transformation,[],[f39])).
% 0.37/1.04  
% 0.37/1.04  fof(f70,plain,(
% 0.37/1.04    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 0.37/1.04    inference(equality_resolution,[],[f53])).
% 0.37/1.04  
% 0.37/1.04  fof(f12,conjecture,(
% 0.37/1.04    ! [X0,X1] : (v1_relat_1(X1) => ~(k1_xboole_0 = k10_relat_1(X1,X0) & r1_tarski(X0,k2_relat_1(X1)) & k1_xboole_0 != X0))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f13,negated_conjecture,(
% 0.37/1.04    ~! [X0,X1] : (v1_relat_1(X1) => ~(k1_xboole_0 = k10_relat_1(X1,X0) & r1_tarski(X0,k2_relat_1(X1)) & k1_xboole_0 != X0))),
% 0.37/1.04    inference(negated_conjecture,[],[f12])).
% 0.37/1.04  
% 0.37/1.04  fof(f24,plain,(
% 0.37/1.04    ? [X0,X1] : ((k1_xboole_0 = k10_relat_1(X1,X0) & r1_tarski(X0,k2_relat_1(X1)) & k1_xboole_0 != X0) & v1_relat_1(X1))),
% 0.37/1.04    inference(ennf_transformation,[],[f13])).
% 0.37/1.04  
% 0.37/1.04  fof(f25,plain,(
% 0.37/1.04    ? [X0,X1] : (k1_xboole_0 = k10_relat_1(X1,X0) & r1_tarski(X0,k2_relat_1(X1)) & k1_xboole_0 != X0 & v1_relat_1(X1))),
% 0.37/1.04    inference(flattening,[],[f24])).
% 0.37/1.04  
% 0.37/1.04  fof(f41,plain,(
% 0.37/1.04    ? [X0,X1] : (k1_xboole_0 = k10_relat_1(X1,X0) & r1_tarski(X0,k2_relat_1(X1)) & k1_xboole_0 != X0 & v1_relat_1(X1)) => (k1_xboole_0 = k10_relat_1(sK4,sK3) & r1_tarski(sK3,k2_relat_1(sK4)) & k1_xboole_0 != sK3 & v1_relat_1(sK4))),
% 0.37/1.04    introduced(choice_axiom,[])).
% 0.37/1.04  
% 0.37/1.04  fof(f42,plain,(
% 0.37/1.04    k1_xboole_0 = k10_relat_1(sK4,sK3) & r1_tarski(sK3,k2_relat_1(sK4)) & k1_xboole_0 != sK3 & v1_relat_1(sK4)),
% 0.37/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f25,f41])).
% 0.37/1.04  
% 0.37/1.04  fof(f65,plain,(
% 0.37/1.04    r1_tarski(sK3,k2_relat_1(sK4))),
% 0.37/1.04    inference(cnf_transformation,[],[f42])).
% 0.37/1.04  
% 0.37/1.04  fof(f66,plain,(
% 0.37/1.04    k1_xboole_0 = k10_relat_1(sK4,sK3)),
% 0.37/1.04    inference(cnf_transformation,[],[f42])).
% 0.37/1.04  
% 0.37/1.04  fof(f11,axiom,(
% 0.37/1.04    ! [X0,X1] : (v1_relat_1(X1) => (k1_xboole_0 = k10_relat_1(X1,X0) <=> r1_xboole_0(k2_relat_1(X1),X0)))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f23,plain,(
% 0.37/1.04    ! [X0,X1] : ((k1_xboole_0 = k10_relat_1(X1,X0) <=> r1_xboole_0(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 0.37/1.04    inference(ennf_transformation,[],[f11])).
% 0.37/1.04  
% 0.37/1.04  fof(f40,plain,(
% 0.37/1.04    ! [X0,X1] : (((k1_xboole_0 = k10_relat_1(X1,X0) | ~r1_xboole_0(k2_relat_1(X1),X0)) & (r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 != k10_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 0.37/1.04    inference(nnf_transformation,[],[f23])).
% 0.37/1.04  
% 0.37/1.04  fof(f61,plain,(
% 0.37/1.04    ( ! [X0,X1] : (r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 != k10_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 0.37/1.04    inference(cnf_transformation,[],[f40])).
% 0.37/1.04  
% 0.37/1.04  fof(f63,plain,(
% 0.37/1.04    v1_relat_1(sK4)),
% 0.37/1.04    inference(cnf_transformation,[],[f42])).
% 0.37/1.04  
% 0.37/1.04  fof(f4,axiom,(
% 0.37/1.04    ! [X0,X1,X2] : ((r1_xboole_0(X1,X2) & r1_tarski(X0,X1)) => r1_xboole_0(X0,X2))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f15,plain,(
% 0.37/1.04    ! [X0,X1,X2] : (r1_xboole_0(X0,X2) | (~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1)))),
% 0.37/1.04    inference(ennf_transformation,[],[f4])).
% 0.37/1.04  
% 0.37/1.04  fof(f16,plain,(
% 0.37/1.04    ! [X0,X1,X2] : (r1_xboole_0(X0,X2) | ~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1))),
% 0.37/1.04    inference(flattening,[],[f15])).
% 0.37/1.04  
% 0.37/1.04  fof(f51,plain,(
% 0.37/1.04    ( ! [X2,X0,X1] : (r1_xboole_0(X0,X2) | ~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1)) )),
% 0.37/1.04    inference(cnf_transformation,[],[f16])).
% 0.37/1.04  
% 0.37/1.04  fof(f5,axiom,(
% 0.37/1.04    ! [X0,X1] : (~v1_xboole_0(X1) => ~(r1_xboole_0(X1,X0) & r1_tarski(X1,X0)))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f17,plain,(
% 0.37/1.04    ! [X0,X1] : ((~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0)) | v1_xboole_0(X1))),
% 0.37/1.04    inference(ennf_transformation,[],[f5])).
% 0.37/1.04  
% 0.37/1.04  fof(f18,plain,(
% 0.37/1.04    ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1))),
% 0.37/1.04    inference(flattening,[],[f17])).
% 0.37/1.04  
% 0.37/1.04  fof(f52,plain,(
% 0.37/1.04    ( ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1)) )),
% 0.37/1.04    inference(cnf_transformation,[],[f18])).
% 0.37/1.04  
% 0.37/1.04  fof(f3,axiom,(
% 0.37/1.04    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f34,plain,(
% 0.37/1.04    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.37/1.04    inference(nnf_transformation,[],[f3])).
% 0.37/1.04  
% 0.37/1.04  fof(f35,plain,(
% 0.37/1.04    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.37/1.04    inference(flattening,[],[f34])).
% 0.37/1.04  
% 0.37/1.04  fof(f48,plain,(
% 0.37/1.04    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 0.37/1.04    inference(cnf_transformation,[],[f35])).
% 0.37/1.04  
% 0.37/1.04  fof(f68,plain,(
% 0.37/1.04    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 0.37/1.04    inference(equality_resolution,[],[f48])).
% 0.37/1.04  
% 0.37/1.04  fof(f2,axiom,(
% 0.37/1.04    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 0.37/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.37/1.04  
% 0.37/1.04  fof(f14,plain,(
% 0.37/1.04    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 0.37/1.04    inference(ennf_transformation,[],[f2])).
% 0.37/1.04  
% 0.37/1.04  fof(f30,plain,(
% 0.37/1.04    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 0.37/1.04    inference(nnf_transformation,[],[f14])).
% 0.37/1.04  
% 0.37/1.04  fof(f31,plain,(
% 0.37/1.04    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 0.37/1.04    inference(rectify,[],[f30])).
% 0.37/1.04  
% 0.37/1.04  fof(f32,plain,(
% 0.37/1.04    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 0.37/1.04    introduced(choice_axiom,[])).
% 0.37/1.04  
% 0.37/1.04  fof(f33,plain,(
% 0.37/1.04    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 0.37/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f31,f32])).
% 0.37/1.04  
% 0.37/1.04  fof(f46,plain,(
% 0.37/1.04    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0)) )),
% 0.37/1.04    inference(cnf_transformation,[],[f33])).
% 0.37/1.04  
% 0.37/1.04  fof(f50,plain,(
% 0.37/1.04    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 0.37/1.04    inference(cnf_transformation,[],[f35])).
% 0.37/1.04  
% 0.37/1.04  fof(f64,plain,(
% 0.37/1.04    k1_xboole_0 != sK3),
% 0.37/1.04    inference(cnf_transformation,[],[f42])).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1,plain,
% 0.37/1.04      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 0.37/1.04      inference(cnf_transformation,[],[f43]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_6200,plain,
% 0.37/1.04      ( ~ r2_hidden(sK1(k1_xboole_0,sK3),k1_xboole_0)
% 0.37/1.04      | ~ v1_xboole_0(k1_xboole_0) ),
% 0.37/1.04      inference(instantiation,[status(thm)],[c_1]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_6192,plain,
% 0.37/1.04      ( ~ r2_hidden(sK1(sK3,k1_xboole_0),sK3) | ~ v1_xboole_0(sK3) ),
% 0.37/1.04      inference(instantiation,[status(thm)],[c_1]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_15,plain,
% 0.37/1.04      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 0.37/1.04      inference(cnf_transformation,[],[f58]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1181,plain,
% 0.37/1.04      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 0.37/1.04      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_16,plain,
% 0.37/1.04      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 0.37/1.04      inference(cnf_transformation,[],[f59]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1180,plain,
% 0.37/1.04      ( m1_subset_1(X0,X1) != iProver_top
% 0.37/1.04      | r2_hidden(X0,X1) = iProver_top
% 0.37/1.04      | v1_xboole_0(X1) = iProver_top ),
% 0.37/1.04      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_2256,plain,
% 0.37/1.04      ( r2_hidden(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top
% 0.37/1.04      | v1_xboole_0(k1_zfmisc_1(X0)) = iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_1181,c_1180]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_14,plain,
% 0.37/1.04      ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
% 0.37/1.04      inference(cnf_transformation,[],[f57]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_41,plain,
% 0.37/1.04      ( v1_xboole_0(k1_zfmisc_1(X0)) != iProver_top ),
% 0.37/1.04      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_3376,plain,
% 0.37/1.04      ( r2_hidden(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 0.37/1.04      inference(global_propositional_subsumption,
% 0.37/1.04                [status(thm)],
% 0.37/1.04                [c_2256,c_41]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_13,plain,
% 0.37/1.04      ( r1_tarski(X0,X1) | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
% 0.37/1.04      inference(cnf_transformation,[],[f70]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1183,plain,
% 0.37/1.04      ( r1_tarski(X0,X1) = iProver_top
% 0.37/1.04      | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
% 0.37/1.04      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_3384,plain,
% 0.37/1.04      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_3376,c_1183]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_21,negated_conjecture,
% 0.37/1.04      ( r1_tarski(sK3,k2_relat_1(sK4)) ),
% 0.37/1.04      inference(cnf_transformation,[],[f65]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1178,plain,
% 0.37/1.04      ( r1_tarski(sK3,k2_relat_1(sK4)) = iProver_top ),
% 0.37/1.04      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_20,negated_conjecture,
% 0.37/1.04      ( k1_xboole_0 = k10_relat_1(sK4,sK3) ),
% 0.37/1.04      inference(cnf_transformation,[],[f66]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_19,plain,
% 0.37/1.04      ( r1_xboole_0(k2_relat_1(X0),X1)
% 0.37/1.04      | ~ v1_relat_1(X0)
% 0.37/1.04      | k10_relat_1(X0,X1) != k1_xboole_0 ),
% 0.37/1.04      inference(cnf_transformation,[],[f61]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_23,negated_conjecture,
% 0.37/1.04      ( v1_relat_1(sK4) ),
% 0.37/1.04      inference(cnf_transformation,[],[f63]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_289,plain,
% 0.37/1.04      ( r1_xboole_0(k2_relat_1(X0),X1)
% 0.37/1.04      | k10_relat_1(X0,X1) != k1_xboole_0
% 0.37/1.04      | sK4 != X0 ),
% 0.37/1.04      inference(resolution_lifted,[status(thm)],[c_19,c_23]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_290,plain,
% 0.37/1.04      ( r1_xboole_0(k2_relat_1(sK4),X0)
% 0.37/1.04      | k10_relat_1(sK4,X0) != k1_xboole_0 ),
% 0.37/1.04      inference(unflattening,[status(thm)],[c_289]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_476,plain,
% 0.37/1.04      ( r1_xboole_0(k2_relat_1(sK4),X0)
% 0.37/1.04      | k10_relat_1(sK4,X0) != k1_xboole_0 ),
% 0.37/1.04      inference(prop_impl,[status(thm)],[c_290]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1177,plain,
% 0.37/1.04      ( k10_relat_1(sK4,X0) != k1_xboole_0
% 0.37/1.04      | r1_xboole_0(k2_relat_1(sK4),X0) = iProver_top ),
% 0.37/1.04      inference(predicate_to_equality,[status(thm)],[c_476]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1555,plain,
% 0.37/1.04      ( r1_xboole_0(k2_relat_1(sK4),sK3) = iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_20,c_1177]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_8,plain,
% 0.37/1.04      ( ~ r1_xboole_0(X0,X1) | r1_xboole_0(X2,X1) | ~ r1_tarski(X2,X0) ),
% 0.37/1.04      inference(cnf_transformation,[],[f51]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1188,plain,
% 0.37/1.04      ( r1_xboole_0(X0,X1) != iProver_top
% 0.37/1.04      | r1_xboole_0(X2,X1) = iProver_top
% 0.37/1.04      | r1_tarski(X2,X0) != iProver_top ),
% 0.37/1.04      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_2264,plain,
% 0.37/1.04      ( r1_xboole_0(X0,sK3) = iProver_top
% 0.37/1.04      | r1_tarski(X0,k2_relat_1(sK4)) != iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_1555,c_1188]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_2438,plain,
% 0.37/1.04      ( r1_xboole_0(sK3,sK3) = iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_1178,c_2264]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_2494,plain,
% 0.37/1.04      ( r1_xboole_0(X0,sK3) = iProver_top
% 0.37/1.04      | r1_tarski(X0,sK3) != iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_2438,c_1188]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_3947,plain,
% 0.37/1.04      ( r1_xboole_0(k1_xboole_0,sK3) = iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_3384,c_2494]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_9,plain,
% 0.37/1.04      ( ~ r1_xboole_0(X0,X1) | ~ r1_tarski(X0,X1) | v1_xboole_0(X0) ),
% 0.37/1.04      inference(cnf_transformation,[],[f52]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1187,plain,
% 0.37/1.04      ( r1_xboole_0(X0,X1) != iProver_top
% 0.37/1.04      | r1_tarski(X0,X1) != iProver_top
% 0.37/1.04      | v1_xboole_0(X0) = iProver_top ),
% 0.37/1.04      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_3945,plain,
% 0.37/1.04      ( r1_xboole_0(k1_xboole_0,X0) != iProver_top
% 0.37/1.04      | v1_xboole_0(k1_xboole_0) = iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_3384,c_1187]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_4353,plain,
% 0.37/1.04      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_3947,c_3945]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_4361,plain,
% 0.37/1.04      ( v1_xboole_0(k1_xboole_0) ),
% 0.37/1.04      inference(predicate_to_equality_rev,[status(thm)],[c_4353]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_7,plain,
% 0.37/1.04      ( r1_tarski(X0,X0) ),
% 0.37/1.04      inference(cnf_transformation,[],[f68]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1189,plain,
% 0.37/1.04      ( r1_tarski(X0,X0) = iProver_top ),
% 0.37/1.04      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1944,plain,
% 0.37/1.04      ( r1_xboole_0(X0,X0) != iProver_top
% 0.37/1.04      | v1_xboole_0(X0) = iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_1189,c_1187]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_3241,plain,
% 0.37/1.04      ( v1_xboole_0(sK3) = iProver_top ),
% 0.37/1.04      inference(superposition,[status(thm)],[c_2438,c_1944]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_3242,plain,
% 0.37/1.04      ( v1_xboole_0(sK3) ),
% 0.37/1.04      inference(predicate_to_equality_rev,[status(thm)],[c_3241]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_3,plain,
% 0.37/1.04      ( r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0) ),
% 0.37/1.04      inference(cnf_transformation,[],[f46]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1495,plain,
% 0.37/1.04      ( r1_tarski(k1_xboole_0,sK3)
% 0.37/1.04      | r2_hidden(sK1(k1_xboole_0,sK3),k1_xboole_0) ),
% 0.37/1.04      inference(instantiation,[status(thm)],[c_3]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1393,plain,
% 0.37/1.04      ( r1_tarski(sK3,k1_xboole_0)
% 0.37/1.04      | r2_hidden(sK1(sK3,k1_xboole_0),sK3) ),
% 0.37/1.04      inference(instantiation,[status(thm)],[c_3]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_5,plain,
% 0.37/1.04      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 0.37/1.04      inference(cnf_transformation,[],[f50]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_1340,plain,
% 0.37/1.04      ( ~ r1_tarski(sK3,k1_xboole_0)
% 0.37/1.04      | ~ r1_tarski(k1_xboole_0,sK3)
% 0.37/1.04      | k1_xboole_0 = sK3 ),
% 0.37/1.04      inference(instantiation,[status(thm)],[c_5]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(c_22,negated_conjecture,
% 0.37/1.04      ( k1_xboole_0 != sK3 ),
% 0.37/1.04      inference(cnf_transformation,[],[f64]) ).
% 0.37/1.04  
% 0.37/1.04  cnf(contradiction,plain,
% 0.37/1.04      ( $false ),
% 0.37/1.04      inference(minisat,
% 0.37/1.04                [status(thm)],
% 0.37/1.04                [c_6200,c_6192,c_4361,c_3242,c_1495,c_1393,c_1340,c_22]) ).
% 0.37/1.04  
% 0.37/1.04  
% 0.37/1.04  % SZS output end CNFRefutation for theBenchmark.p
% 0.37/1.04  
% 0.37/1.04  ------                               Statistics
% 0.37/1.04  
% 0.37/1.04  ------ General
% 0.37/1.04  
% 0.37/1.04  abstr_ref_over_cycles:                  0
% 0.37/1.04  abstr_ref_under_cycles:                 0
% 0.37/1.04  gc_basic_clause_elim:                   0
% 0.37/1.04  forced_gc_time:                         0
% 0.37/1.04  parsing_time:                           0.019
% 0.37/1.04  unif_index_cands_time:                  0.
% 0.37/1.04  unif_index_add_time:                    0.
% 0.37/1.04  orderings_time:                         0.
% 0.37/1.04  out_proof_time:                         0.01
% 0.37/1.04  total_time:                             0.312
% 0.37/1.04  num_of_symbols:                         46
% 0.37/1.04  num_of_terms:                           5196
% 0.37/1.04  
% 0.37/1.04  ------ Preprocessing
% 0.37/1.04  
% 0.37/1.04  num_of_splits:                          0
% 0.37/1.04  num_of_split_atoms:                     0
% 0.37/1.04  num_of_reused_defs:                     0
% 0.37/1.04  num_eq_ax_congr_red:                    21
% 0.37/1.04  num_of_sem_filtered_clauses:            1
% 0.37/1.04  num_of_subtypes:                        0
% 0.37/1.04  monotx_restored_types:                  0
% 0.37/1.04  sat_num_of_epr_types:                   0
% 0.37/1.04  sat_num_of_non_cyclic_types:            0
% 0.37/1.04  sat_guarded_non_collapsed_types:        0
% 0.37/1.04  num_pure_diseq_elim:                    0
% 0.37/1.04  simp_replaced_by:                       0
% 0.37/1.04  res_preprocessed:                       108
% 0.37/1.04  prep_upred:                             0
% 0.37/1.04  prep_unflattend:                        12
% 0.37/1.04  smt_new_axioms:                         0
% 0.37/1.04  pred_elim_cands:                        5
% 0.37/1.04  pred_elim:                              1
% 0.37/1.04  pred_elim_cl:                           1
% 0.37/1.04  pred_elim_cycles:                       3
% 0.37/1.04  merged_defs:                            14
% 0.37/1.04  merged_defs_ncl:                        0
% 0.37/1.04  bin_hyper_res:                          14
% 0.37/1.04  prep_cycles:                            4
% 0.37/1.04  pred_elim_time:                         0.017
% 0.37/1.04  splitting_time:                         0.
% 0.37/1.04  sem_filter_time:                        0.
% 0.37/1.04  monotx_time:                            0.
% 0.37/1.04  subtype_inf_time:                       0.
% 0.37/1.04  
% 0.37/1.04  ------ Problem properties
% 0.37/1.04  
% 0.37/1.04  clauses:                                22
% 0.37/1.04  conjectures:                            3
% 0.37/1.04  epr:                                    8
% 0.37/1.04  horn:                                   18
% 0.37/1.04  ground:                                 3
% 0.37/1.04  unary:                                  6
% 0.37/1.04  binary:                                 8
% 0.37/1.04  lits:                                   46
% 0.37/1.04  lits_eq:                                7
% 0.37/1.04  fd_pure:                                0
% 0.37/1.04  fd_pseudo:                              0
% 0.37/1.04  fd_cond:                                0
% 0.37/1.04  fd_pseudo_cond:                         3
% 0.37/1.04  ac_symbols:                             0
% 0.37/1.04  
% 0.37/1.04  ------ Propositional Solver
% 0.37/1.04  
% 0.37/1.04  prop_solver_calls:                      28
% 0.37/1.04  prop_fast_solver_calls:                 667
% 0.37/1.04  smt_solver_calls:                       0
% 0.37/1.04  smt_fast_solver_calls:                  0
% 0.37/1.04  prop_num_of_clauses:                    2291
% 0.37/1.04  prop_preprocess_simplified:             7307
% 0.37/1.04  prop_fo_subsumed:                       5
% 0.37/1.04  prop_solver_time:                       0.
% 0.37/1.04  smt_solver_time:                        0.
% 0.37/1.04  smt_fast_solver_time:                   0.
% 0.37/1.04  prop_fast_solver_time:                  0.
% 0.37/1.04  prop_unsat_core_time:                   0.
% 0.37/1.04  
% 0.37/1.04  ------ QBF
% 0.37/1.04  
% 0.37/1.04  qbf_q_res:                              0
% 0.37/1.04  qbf_num_tautologies:                    0
% 0.37/1.04  qbf_prep_cycles:                        0
% 0.37/1.04  
% 0.37/1.04  ------ BMC1
% 0.37/1.04  
% 0.37/1.04  bmc1_current_bound:                     -1
% 0.37/1.04  bmc1_last_solved_bound:                 -1
% 0.37/1.04  bmc1_unsat_core_size:                   -1
% 0.37/1.04  bmc1_unsat_core_parents_size:           -1
% 0.37/1.04  bmc1_merge_next_fun:                    0
% 0.37/1.04  bmc1_unsat_core_clauses_time:           0.
% 0.37/1.04  
% 0.37/1.04  ------ Instantiation
% 0.37/1.04  
% 0.37/1.04  inst_num_of_clauses:                    624
% 0.37/1.04  inst_num_in_passive:                    301
% 0.37/1.04  inst_num_in_active:                     259
% 0.37/1.04  inst_num_in_unprocessed:                65
% 0.37/1.04  inst_num_of_loops:                      353
% 0.37/1.04  inst_num_of_learning_restarts:          0
% 0.37/1.04  inst_num_moves_active_passive:          91
% 0.37/1.04  inst_lit_activity:                      0
% 0.37/1.04  inst_lit_activity_moves:                0
% 0.37/1.04  inst_num_tautologies:                   0
% 0.37/1.04  inst_num_prop_implied:                  0
% 0.37/1.04  inst_num_existing_simplified:           0
% 0.37/1.04  inst_num_eq_res_simplified:             0
% 0.37/1.04  inst_num_child_elim:                    0
% 0.37/1.04  inst_num_of_dismatching_blockings:      240
% 0.37/1.04  inst_num_of_non_proper_insts:           654
% 0.37/1.04  inst_num_of_duplicates:                 0
% 0.37/1.04  inst_inst_num_from_inst_to_res:         0
% 0.37/1.04  inst_dismatching_checking_time:         0.
% 0.37/1.04  
% 0.37/1.04  ------ Resolution
% 0.37/1.04  
% 0.37/1.04  res_num_of_clauses:                     0
% 0.37/1.04  res_num_in_passive:                     0
% 0.37/1.04  res_num_in_active:                      0
% 0.37/1.04  res_num_of_loops:                       112
% 0.37/1.04  res_forward_subset_subsumed:            64
% 0.37/1.04  res_backward_subset_subsumed:           4
% 0.37/1.04  res_forward_subsumed:                   0
% 0.37/1.04  res_backward_subsumed:                  0
% 0.37/1.04  res_forward_subsumption_resolution:     0
% 0.37/1.04  res_backward_subsumption_resolution:    0
% 0.37/1.04  res_clause_to_clause_subsumption:       410
% 0.37/1.04  res_orphan_elimination:                 0
% 0.37/1.04  res_tautology_del:                      80
% 0.37/1.04  res_num_eq_res_simplified:              0
% 0.37/1.04  res_num_sel_changes:                    0
% 0.37/1.04  res_moves_from_active_to_pass:          0
% 0.37/1.04  
% 0.37/1.04  ------ Superposition
% 0.37/1.04  
% 0.37/1.04  sup_time_total:                         0.
% 0.37/1.04  sup_time_generating:                    0.
% 0.37/1.04  sup_time_sim_full:                      0.
% 0.37/1.04  sup_time_sim_immed:                     0.
% 0.37/1.04  
% 0.37/1.04  sup_num_of_clauses:                     140
% 0.37/1.04  sup_num_in_active:                      70
% 0.37/1.04  sup_num_in_passive:                     70
% 0.37/1.04  sup_num_of_loops:                       70
% 0.37/1.04  sup_fw_superposition:                   78
% 0.37/1.04  sup_bw_superposition:                   85
% 0.37/1.04  sup_immediate_simplified:               13
% 0.37/1.04  sup_given_eliminated:                   0
% 0.37/1.04  comparisons_done:                       0
% 0.37/1.04  comparisons_avoided:                    0
% 0.37/1.04  
% 0.37/1.04  ------ Simplifications
% 0.37/1.04  
% 0.37/1.04  
% 0.37/1.04  sim_fw_subset_subsumed:                 7
% 0.37/1.04  sim_bw_subset_subsumed:                 0
% 0.37/1.04  sim_fw_subsumed:                        5
% 0.37/1.04  sim_bw_subsumed:                        1
% 0.37/1.04  sim_fw_subsumption_res:                 0
% 0.37/1.04  sim_bw_subsumption_res:                 0
% 0.37/1.04  sim_tautology_del:                      6
% 0.37/1.04  sim_eq_tautology_del:                   5
% 0.37/1.04  sim_eq_res_simp:                        0
% 0.37/1.04  sim_fw_demodulated:                     0
% 0.37/1.04  sim_bw_demodulated:                     0
% 0.37/1.04  sim_light_normalised:                   0
% 0.37/1.04  sim_joinable_taut:                      0
% 0.37/1.04  sim_joinable_simp:                      0
% 0.37/1.04  sim_ac_normalised:                      0
% 0.37/1.04  sim_smt_subsumption:                    0
% 0.37/1.04  
%------------------------------------------------------------------------------
