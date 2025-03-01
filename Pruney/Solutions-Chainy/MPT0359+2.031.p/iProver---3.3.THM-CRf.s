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
% DateTime   : Thu Dec  3 11:40:06 EST 2020

% Result     : Theorem 2.65s
% Output     : CNFRefutation 2.65s
% Verified   : 
% Statistics : Number of formulae       :  121 ( 402 expanded)
%              Number of clauses        :   71 ( 172 expanded)
%              Number of leaves         :   20 (  82 expanded)
%              Depth                    :   22
%              Number of atoms          :  287 (1199 expanded)
%              Number of equality atoms :  145 ( 470 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
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
    inference(nnf_transformation,[],[f9])).

fof(f22,plain,(
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
    inference(rectify,[],[f21])).

fof(f23,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK0(X0,X1),X0)
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( r1_tarski(sK0(X0,X1),X0)
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK0(X0,X1),X0)
            | ~ r2_hidden(sK0(X0,X1),X1) )
          & ( r1_tarski(sK0(X0,X1),X0)
            | r2_hidden(sK0(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f22,f23])).

fof(f38,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f57,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f38])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f25,plain,(
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
    inference(nnf_transformation,[],[f18])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f14,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ( r1_tarski(k3_subset_1(X0,X1),X1)
      <=> k2_subset_1(X0) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => ( r1_tarski(k3_subset_1(X0,X1),X1)
        <=> k2_subset_1(X0) = X1 ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f20,plain,(
    ? [X0,X1] :
      ( ( r1_tarski(k3_subset_1(X0,X1),X1)
      <~> k2_subset_1(X0) = X1 )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f26,plain,(
    ? [X0,X1] :
      ( ( k2_subset_1(X0) != X1
        | ~ r1_tarski(k3_subset_1(X0,X1),X1) )
      & ( k2_subset_1(X0) = X1
        | r1_tarski(k3_subset_1(X0,X1),X1) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f27,plain,(
    ? [X0,X1] :
      ( ( k2_subset_1(X0) != X1
        | ~ r1_tarski(k3_subset_1(X0,X1),X1) )
      & ( k2_subset_1(X0) = X1
        | r1_tarski(k3_subset_1(X0,X1),X1) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f26])).

fof(f28,plain,
    ( ? [X0,X1] :
        ( ( k2_subset_1(X0) != X1
          | ~ r1_tarski(k3_subset_1(X0,X1),X1) )
        & ( k2_subset_1(X0) = X1
          | r1_tarski(k3_subset_1(X0,X1),X1) )
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( ( k2_subset_1(sK1) != sK2
        | ~ r1_tarski(k3_subset_1(sK1,sK2),sK2) )
      & ( k2_subset_1(sK1) = sK2
        | r1_tarski(k3_subset_1(sK1,sK2),sK2) )
      & m1_subset_1(sK2,k1_zfmisc_1(sK1)) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,
    ( ( k2_subset_1(sK1) != sK2
      | ~ r1_tarski(k3_subset_1(sK1,sK2),sK2) )
    & ( k2_subset_1(sK1) = sK2
      | r1_tarski(k3_subset_1(sK1,sK2),sK2) )
    & m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f27,f28])).

fof(f49,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f29])).

fof(f13,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f13])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f33,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f32,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f8,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f2,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f52,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f37,f31])).

fof(f53,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f32,f52])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f47,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f55,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f47,f31])).

fof(f50,plain,
    ( k2_subset_1(sK1) = sK2
    | r1_tarski(k3_subset_1(sK1,sK2),sK2) ),
    inference(cnf_transformation,[],[f29])).

fof(f11,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f11])).

fof(f6,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f54,plain,(
    ! [X0,X1] : r1_tarski(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X0) ),
    inference(definition_unfolding,[],[f35,f31])).

fof(f7,axiom,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f7])).

fof(f5,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f51,plain,
    ( k2_subset_1(sK1) != sK2
    | ~ r1_tarski(k3_subset_1(sK1,sK2),sK2) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_9,plain,
    ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_740,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_9])).

cnf(c_741,plain,
    ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_740])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_271,plain,
    ( r2_hidden(X0,X1)
    | v1_xboole_0(X1)
    | k1_zfmisc_1(sK1) != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_19])).

cnf(c_272,plain,
    ( r2_hidden(sK2,k1_zfmisc_1(sK1))
    | v1_xboole_0(k1_zfmisc_1(sK1)) ),
    inference(unflattening,[status(thm)],[c_271])).

cnf(c_16,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_278,plain,
    ( r2_hidden(sK2,k1_zfmisc_1(sK1)) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_272,c_16])).

cnf(c_864,plain,
    ( r1_tarski(X0,X1)
    | k1_zfmisc_1(X1) != k1_zfmisc_1(sK1)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_741,c_278])).

cnf(c_865,plain,
    ( r1_tarski(sK2,X0)
    | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1) ),
    inference(unflattening,[status(thm)],[c_864])).

cnf(c_1285,plain,
    ( k1_zfmisc_1(X0) != k1_zfmisc_1(sK1)
    | r1_tarski(sK2,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_865])).

cnf(c_1457,plain,
    ( r1_tarski(sK2,sK1) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1285])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f33])).

cnf(c_1294,plain,
    ( k3_xboole_0(X0,X1) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1607,plain,
    ( k3_xboole_0(sK2,sK1) = sK2 ),
    inference(superposition,[status(thm)],[c_1457,c_1294])).

cnf(c_0,plain,
    ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_2684,plain,
    ( k3_xboole_0(sK1,sK2) = sK2 ),
    inference(superposition,[status(thm)],[c_1607,c_0])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = X1 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1295,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = X1
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_2001,plain,
    ( k5_xboole_0(sK2,k5_xboole_0(sK1,k3_xboole_0(sK1,sK2))) = sK1 ),
    inference(superposition,[status(thm)],[c_1457,c_1295])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k5_xboole_0(X1,k3_xboole_0(X1,X0)) = k3_subset_1(X1,X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_284,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1)
    | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_19])).

cnf(c_285,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,sK2)) = k3_subset_1(X0,sK2)
    | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1) ),
    inference(unflattening,[status(thm)],[c_284])).

cnf(c_1384,plain,
    ( k5_xboole_0(sK1,k3_xboole_0(sK1,sK2)) = k3_subset_1(sK1,sK2) ),
    inference(equality_resolution,[status(thm)],[c_285])).

cnf(c_2018,plain,
    ( k5_xboole_0(sK2,k3_subset_1(sK1,sK2)) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_2001,c_1384])).

cnf(c_18,negated_conjecture,
    ( r1_tarski(k3_subset_1(sK1,sK2),sK2)
    | k2_subset_1(sK1) = sK2 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1290,plain,
    ( k2_subset_1(sK1) = sK2
    | r1_tarski(k3_subset_1(sK1,sK2),sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_14,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1310,plain,
    ( sK2 = sK1
    | r1_tarski(k3_subset_1(sK1,sK2),sK2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1290,c_14])).

cnf(c_1606,plain,
    ( k3_xboole_0(k3_subset_1(sK1,sK2),sK2) = k3_subset_1(sK1,sK2)
    | sK2 = sK1 ),
    inference(superposition,[status(thm)],[c_1310,c_1294])).

cnf(c_4,plain,
    ( r1_tarski(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1292,plain,
    ( r1_tarski(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1553,plain,
    ( r1_tarski(k5_xboole_0(X0,k3_xboole_0(X1,X0)),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_1292])).

cnf(c_1676,plain,
    ( sK2 = sK1
    | r1_tarski(k5_xboole_0(sK2,k3_subset_1(sK1,sK2)),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1606,c_1553])).

cnf(c_2305,plain,
    ( sK2 = sK1
    | r1_tarski(sK1,sK2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2018,c_1676])).

cnf(c_141,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_9])).

cnf(c_142,plain,
    ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_141])).

cnf(c_375,plain,
    ( r1_tarski(X0,X1)
    | k1_zfmisc_1(X1) != k1_zfmisc_1(sK1)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_142,c_278])).

cnf(c_376,plain,
    ( r1_tarski(sK2,X0)
    | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1) ),
    inference(unflattening,[status(thm)],[c_375])).

cnf(c_377,plain,
    ( k1_zfmisc_1(X0) != k1_zfmisc_1(sK1)
    | r1_tarski(sK2,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_376])).

cnf(c_379,plain,
    ( k1_zfmisc_1(sK2) != k1_zfmisc_1(sK1)
    | r1_tarski(sK2,sK2) = iProver_top ),
    inference(instantiation,[status(thm)],[c_377])).

cnf(c_1002,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1018,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_1002])).

cnf(c_1007,plain,
    ( X0 != X1
    | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
    theory(equality)).

cnf(c_1386,plain,
    ( X0 != sK1
    | k1_zfmisc_1(X0) = k1_zfmisc_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1007])).

cnf(c_1387,plain,
    ( k1_zfmisc_1(sK2) = k1_zfmisc_1(sK1)
    | sK2 != sK1 ),
    inference(instantiation,[status(thm)],[c_1386])).

cnf(c_1003,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1477,plain,
    ( X0 != X1
    | sK1 != X1
    | sK1 = X0 ),
    inference(instantiation,[status(thm)],[c_1003])).

cnf(c_1525,plain,
    ( X0 != sK1
    | sK1 = X0
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_1477])).

cnf(c_1527,plain,
    ( sK2 != sK1
    | sK1 = sK2
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_1525])).

cnf(c_1526,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_1002])).

cnf(c_1006,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_2073,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(sK1,X2)
    | X2 != X1
    | sK1 != X0 ),
    inference(instantiation,[status(thm)],[c_1006])).

cnf(c_2074,plain,
    ( X0 != X1
    | sK1 != X2
    | r1_tarski(X2,X1) != iProver_top
    | r1_tarski(sK1,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2073])).

cnf(c_2076,plain,
    ( sK2 != sK2
    | sK1 != sK2
    | r1_tarski(sK2,sK2) != iProver_top
    | r1_tarski(sK1,sK2) = iProver_top ),
    inference(instantiation,[status(thm)],[c_2074])).

cnf(c_2347,plain,
    ( r1_tarski(sK1,sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2305,c_379,c_1018,c_1387,c_1527,c_1526,c_2076])).

cnf(c_2353,plain,
    ( k3_xboole_0(sK1,sK2) = sK1 ),
    inference(superposition,[status(thm)],[c_2347,c_1294])).

cnf(c_2686,plain,
    ( sK2 = sK1 ),
    inference(light_normalisation,[status(thm)],[c_2684,c_2353])).

cnf(c_2484,plain,
    ( k3_subset_1(sK1,sK2) = k5_xboole_0(sK1,sK1) ),
    inference(demodulation,[status(thm)],[c_2353,c_1384])).

cnf(c_5,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_2485,plain,
    ( k3_subset_1(sK1,sK2) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2484,c_5])).

cnf(c_1464,plain,
    ( k2_subset_1(sK1) = sK1 ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_1397,plain,
    ( k2_subset_1(sK1) != X0
    | k2_subset_1(sK1) = sK2
    | sK2 != X0 ),
    inference(instantiation,[status(thm)],[c_1003])).

cnf(c_1463,plain,
    ( k2_subset_1(sK1) = sK2
    | k2_subset_1(sK1) != sK1
    | sK2 != sK1 ),
    inference(instantiation,[status(thm)],[c_1397])).

cnf(c_3,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_17,negated_conjecture,
    ( ~ r1_tarski(k3_subset_1(sK1,sK2),sK2)
    | k2_subset_1(sK1) != sK2 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_145,plain,
    ( ~ r1_tarski(k3_subset_1(sK1,sK2),sK2)
    | k2_subset_1(sK1) != sK2 ),
    inference(prop_impl,[status(thm)],[c_17])).

cnf(c_581,plain,
    ( k3_subset_1(sK1,sK2) != k1_xboole_0
    | k2_subset_1(sK1) != sK2
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_145])).

cnf(c_582,plain,
    ( k3_subset_1(sK1,sK2) != k1_xboole_0
    | k2_subset_1(sK1) != sK2 ),
    inference(unflattening,[status(thm)],[c_581])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2686,c_2485,c_1464,c_1463,c_582])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n013.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 13:09:39 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 2.65/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.65/0.98  
% 2.65/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.65/0.98  
% 2.65/0.98  ------  iProver source info
% 2.65/0.98  
% 2.65/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.65/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.65/0.98  git: non_committed_changes: false
% 2.65/0.98  git: last_make_outside_of_git: false
% 2.65/0.98  
% 2.65/0.98  ------ 
% 2.65/0.98  
% 2.65/0.98  ------ Input Options
% 2.65/0.98  
% 2.65/0.98  --out_options                           all
% 2.65/0.98  --tptp_safe_out                         true
% 2.65/0.98  --problem_path                          ""
% 2.65/0.98  --include_path                          ""
% 2.65/0.98  --clausifier                            res/vclausify_rel
% 2.65/0.98  --clausifier_options                    --mode clausify
% 2.65/0.98  --stdin                                 false
% 2.65/0.98  --stats_out                             all
% 2.65/0.98  
% 2.65/0.98  ------ General Options
% 2.65/0.98  
% 2.65/0.98  --fof                                   false
% 2.65/0.98  --time_out_real                         305.
% 2.65/0.98  --time_out_virtual                      -1.
% 2.65/0.98  --symbol_type_check                     false
% 2.65/0.98  --clausify_out                          false
% 2.65/0.98  --sig_cnt_out                           false
% 2.65/0.98  --trig_cnt_out                          false
% 2.65/0.98  --trig_cnt_out_tolerance                1.
% 2.65/0.98  --trig_cnt_out_sk_spl                   false
% 2.65/0.98  --abstr_cl_out                          false
% 2.65/0.98  
% 2.65/0.98  ------ Global Options
% 2.65/0.98  
% 2.65/0.98  --schedule                              default
% 2.65/0.98  --add_important_lit                     false
% 2.65/0.98  --prop_solver_per_cl                    1000
% 2.65/0.98  --min_unsat_core                        false
% 2.65/0.98  --soft_assumptions                      false
% 2.65/0.98  --soft_lemma_size                       3
% 2.65/0.98  --prop_impl_unit_size                   0
% 2.65/0.98  --prop_impl_unit                        []
% 2.65/0.98  --share_sel_clauses                     true
% 2.65/0.98  --reset_solvers                         false
% 2.65/0.98  --bc_imp_inh                            [conj_cone]
% 2.65/0.98  --conj_cone_tolerance                   3.
% 2.65/0.98  --extra_neg_conj                        none
% 2.65/0.98  --large_theory_mode                     true
% 2.65/0.98  --prolific_symb_bound                   200
% 2.65/0.98  --lt_threshold                          2000
% 2.65/0.98  --clause_weak_htbl                      true
% 2.65/0.98  --gc_record_bc_elim                     false
% 2.65/0.98  
% 2.65/0.98  ------ Preprocessing Options
% 2.65/0.98  
% 2.65/0.98  --preprocessing_flag                    true
% 2.65/0.98  --time_out_prep_mult                    0.1
% 2.65/0.98  --splitting_mode                        input
% 2.65/0.98  --splitting_grd                         true
% 2.65/0.98  --splitting_cvd                         false
% 2.65/0.98  --splitting_cvd_svl                     false
% 2.65/0.98  --splitting_nvd                         32
% 2.65/0.98  --sub_typing                            true
% 2.65/0.98  --prep_gs_sim                           true
% 2.65/0.98  --prep_unflatten                        true
% 2.65/0.98  --prep_res_sim                          true
% 2.65/0.98  --prep_upred                            true
% 2.65/0.98  --prep_sem_filter                       exhaustive
% 2.65/0.98  --prep_sem_filter_out                   false
% 2.65/0.98  --pred_elim                             true
% 2.65/0.98  --res_sim_input                         true
% 2.65/0.98  --eq_ax_congr_red                       true
% 2.65/0.98  --pure_diseq_elim                       true
% 2.65/0.98  --brand_transform                       false
% 2.65/0.98  --non_eq_to_eq                          false
% 2.65/0.98  --prep_def_merge                        true
% 2.65/0.98  --prep_def_merge_prop_impl              false
% 2.65/0.98  --prep_def_merge_mbd                    true
% 2.65/0.98  --prep_def_merge_tr_red                 false
% 2.65/0.98  --prep_def_merge_tr_cl                  false
% 2.65/0.98  --smt_preprocessing                     true
% 2.65/0.98  --smt_ac_axioms                         fast
% 2.65/0.98  --preprocessed_out                      false
% 2.65/0.98  --preprocessed_stats                    false
% 2.65/0.98  
% 2.65/0.98  ------ Abstraction refinement Options
% 2.65/0.98  
% 2.65/0.98  --abstr_ref                             []
% 2.65/0.98  --abstr_ref_prep                        false
% 2.65/0.98  --abstr_ref_until_sat                   false
% 2.65/0.98  --abstr_ref_sig_restrict                funpre
% 2.65/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.65/0.98  --abstr_ref_under                       []
% 2.65/0.98  
% 2.65/0.98  ------ SAT Options
% 2.65/0.98  
% 2.65/0.98  --sat_mode                              false
% 2.65/0.98  --sat_fm_restart_options                ""
% 2.65/0.98  --sat_gr_def                            false
% 2.65/0.98  --sat_epr_types                         true
% 2.65/0.98  --sat_non_cyclic_types                  false
% 2.65/0.98  --sat_finite_models                     false
% 2.65/0.98  --sat_fm_lemmas                         false
% 2.65/0.98  --sat_fm_prep                           false
% 2.65/0.98  --sat_fm_uc_incr                        true
% 2.65/0.98  --sat_out_model                         small
% 2.65/0.98  --sat_out_clauses                       false
% 2.65/0.98  
% 2.65/0.98  ------ QBF Options
% 2.65/0.98  
% 2.65/0.98  --qbf_mode                              false
% 2.65/0.98  --qbf_elim_univ                         false
% 2.65/0.98  --qbf_dom_inst                          none
% 2.65/0.98  --qbf_dom_pre_inst                      false
% 2.65/0.98  --qbf_sk_in                             false
% 2.65/0.98  --qbf_pred_elim                         true
% 2.65/0.98  --qbf_split                             512
% 2.65/0.98  
% 2.65/0.98  ------ BMC1 Options
% 2.65/0.98  
% 2.65/0.98  --bmc1_incremental                      false
% 2.65/0.98  --bmc1_axioms                           reachable_all
% 2.65/0.98  --bmc1_min_bound                        0
% 2.65/0.98  --bmc1_max_bound                        -1
% 2.65/0.98  --bmc1_max_bound_default                -1
% 2.65/0.98  --bmc1_symbol_reachability              true
% 2.65/0.98  --bmc1_property_lemmas                  false
% 2.65/0.98  --bmc1_k_induction                      false
% 2.65/0.98  --bmc1_non_equiv_states                 false
% 2.65/0.98  --bmc1_deadlock                         false
% 2.65/0.98  --bmc1_ucm                              false
% 2.65/0.98  --bmc1_add_unsat_core                   none
% 2.65/0.98  --bmc1_unsat_core_children              false
% 2.65/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.65/0.98  --bmc1_out_stat                         full
% 2.65/0.98  --bmc1_ground_init                      false
% 2.65/0.98  --bmc1_pre_inst_next_state              false
% 2.65/0.98  --bmc1_pre_inst_state                   false
% 2.65/0.98  --bmc1_pre_inst_reach_state             false
% 2.65/0.98  --bmc1_out_unsat_core                   false
% 2.65/0.98  --bmc1_aig_witness_out                  false
% 2.65/0.98  --bmc1_verbose                          false
% 2.65/0.98  --bmc1_dump_clauses_tptp                false
% 2.65/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.65/0.98  --bmc1_dump_file                        -
% 2.65/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.65/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.65/0.98  --bmc1_ucm_extend_mode                  1
% 2.65/0.98  --bmc1_ucm_init_mode                    2
% 2.65/0.98  --bmc1_ucm_cone_mode                    none
% 2.65/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.65/0.98  --bmc1_ucm_relax_model                  4
% 2.65/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.65/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.65/0.98  --bmc1_ucm_layered_model                none
% 2.65/0.98  --bmc1_ucm_max_lemma_size               10
% 2.65/0.98  
% 2.65/0.98  ------ AIG Options
% 2.65/0.98  
% 2.65/0.98  --aig_mode                              false
% 2.65/0.98  
% 2.65/0.98  ------ Instantiation Options
% 2.65/0.98  
% 2.65/0.98  --instantiation_flag                    true
% 2.65/0.98  --inst_sos_flag                         false
% 2.65/0.98  --inst_sos_phase                        true
% 2.65/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.65/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.65/0.98  --inst_lit_sel_side                     num_symb
% 2.65/0.98  --inst_solver_per_active                1400
% 2.65/0.98  --inst_solver_calls_frac                1.
% 2.65/0.98  --inst_passive_queue_type               priority_queues
% 2.65/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.65/0.98  --inst_passive_queues_freq              [25;2]
% 2.65/0.98  --inst_dismatching                      true
% 2.65/0.98  --inst_eager_unprocessed_to_passive     true
% 2.65/0.98  --inst_prop_sim_given                   true
% 2.65/0.98  --inst_prop_sim_new                     false
% 2.65/0.98  --inst_subs_new                         false
% 2.65/0.98  --inst_eq_res_simp                      false
% 2.65/0.98  --inst_subs_given                       false
% 2.65/0.98  --inst_orphan_elimination               true
% 2.65/0.98  --inst_learning_loop_flag               true
% 2.65/0.98  --inst_learning_start                   3000
% 2.65/0.98  --inst_learning_factor                  2
% 2.65/0.98  --inst_start_prop_sim_after_learn       3
% 2.65/0.98  --inst_sel_renew                        solver
% 2.65/0.98  --inst_lit_activity_flag                true
% 2.65/0.98  --inst_restr_to_given                   false
% 2.65/0.98  --inst_activity_threshold               500
% 2.65/0.98  --inst_out_proof                        true
% 2.65/0.98  
% 2.65/0.98  ------ Resolution Options
% 2.65/0.98  
% 2.65/0.98  --resolution_flag                       true
% 2.65/0.98  --res_lit_sel                           adaptive
% 2.65/0.98  --res_lit_sel_side                      none
% 2.65/0.98  --res_ordering                          kbo
% 2.65/0.98  --res_to_prop_solver                    active
% 2.65/0.98  --res_prop_simpl_new                    false
% 2.65/0.98  --res_prop_simpl_given                  true
% 2.65/0.98  --res_passive_queue_type                priority_queues
% 2.65/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.65/0.98  --res_passive_queues_freq               [15;5]
% 2.65/0.98  --res_forward_subs                      full
% 2.65/0.98  --res_backward_subs                     full
% 2.65/0.98  --res_forward_subs_resolution           true
% 2.65/0.98  --res_backward_subs_resolution          true
% 2.65/0.98  --res_orphan_elimination                true
% 2.65/0.98  --res_time_limit                        2.
% 2.65/0.98  --res_out_proof                         true
% 2.65/0.98  
% 2.65/0.98  ------ Superposition Options
% 2.65/0.98  
% 2.65/0.98  --superposition_flag                    true
% 2.65/0.98  --sup_passive_queue_type                priority_queues
% 2.65/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.65/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.65/0.98  --demod_completeness_check              fast
% 2.65/0.98  --demod_use_ground                      true
% 2.65/0.98  --sup_to_prop_solver                    passive
% 2.65/0.98  --sup_prop_simpl_new                    true
% 2.65/0.98  --sup_prop_simpl_given                  true
% 2.65/0.98  --sup_fun_splitting                     false
% 2.65/0.98  --sup_smt_interval                      50000
% 2.65/0.98  
% 2.65/0.98  ------ Superposition Simplification Setup
% 2.65/0.98  
% 2.65/0.98  --sup_indices_passive                   []
% 2.65/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.65/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.65/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.65/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.65/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.65/0.98  --sup_full_bw                           [BwDemod]
% 2.65/0.98  --sup_immed_triv                        [TrivRules]
% 2.65/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.65/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.65/0.98  --sup_immed_bw_main                     []
% 2.65/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.65/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.65/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.65/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.65/0.98  
% 2.65/0.98  ------ Combination Options
% 2.65/0.98  
% 2.65/0.98  --comb_res_mult                         3
% 2.65/0.98  --comb_sup_mult                         2
% 2.65/0.98  --comb_inst_mult                        10
% 2.65/0.98  
% 2.65/0.98  ------ Debug Options
% 2.65/0.98  
% 2.65/0.98  --dbg_backtrace                         false
% 2.65/0.98  --dbg_dump_prop_clauses                 false
% 2.65/0.98  --dbg_dump_prop_clauses_file            -
% 2.65/0.98  --dbg_out_stat                          false
% 2.65/0.98  ------ Parsing...
% 2.65/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.65/0.98  
% 2.65/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 2.65/0.98  
% 2.65/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.65/0.98  
% 2.65/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.65/0.98  ------ Proving...
% 2.65/0.98  ------ Problem Properties 
% 2.65/0.98  
% 2.65/0.98  
% 2.65/0.98  clauses                                 15
% 2.65/0.98  conjectures                             2
% 2.65/0.98  EPR                                     1
% 2.65/0.98  Horn                                    13
% 2.65/0.98  unary                                   5
% 2.65/0.98  binary                                  7
% 2.65/0.98  lits                                    28
% 2.65/0.98  lits eq                                 15
% 2.65/0.98  fd_pure                                 0
% 2.65/0.98  fd_pseudo                               0
% 2.65/0.98  fd_cond                                 0
% 2.65/0.98  fd_pseudo_cond                          0
% 2.65/0.98  AC symbols                              0
% 2.65/0.98  
% 2.65/0.98  ------ Schedule dynamic 5 is on 
% 2.65/0.98  
% 2.65/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.65/0.98  
% 2.65/0.98  
% 2.65/0.98  ------ 
% 2.65/0.98  Current options:
% 2.65/0.98  ------ 
% 2.65/0.98  
% 2.65/0.98  ------ Input Options
% 2.65/0.98  
% 2.65/0.98  --out_options                           all
% 2.65/0.98  --tptp_safe_out                         true
% 2.65/0.98  --problem_path                          ""
% 2.65/0.98  --include_path                          ""
% 2.65/0.98  --clausifier                            res/vclausify_rel
% 2.65/0.98  --clausifier_options                    --mode clausify
% 2.65/0.98  --stdin                                 false
% 2.65/0.98  --stats_out                             all
% 2.65/0.98  
% 2.65/0.98  ------ General Options
% 2.65/0.98  
% 2.65/0.98  --fof                                   false
% 2.65/0.98  --time_out_real                         305.
% 2.65/0.98  --time_out_virtual                      -1.
% 2.65/0.98  --symbol_type_check                     false
% 2.65/0.98  --clausify_out                          false
% 2.65/0.98  --sig_cnt_out                           false
% 2.65/0.98  --trig_cnt_out                          false
% 2.65/0.98  --trig_cnt_out_tolerance                1.
% 2.65/0.98  --trig_cnt_out_sk_spl                   false
% 2.65/0.98  --abstr_cl_out                          false
% 2.65/0.98  
% 2.65/0.98  ------ Global Options
% 2.65/0.98  
% 2.65/0.98  --schedule                              default
% 2.65/0.98  --add_important_lit                     false
% 2.65/0.98  --prop_solver_per_cl                    1000
% 2.65/0.98  --min_unsat_core                        false
% 2.65/0.98  --soft_assumptions                      false
% 2.65/0.98  --soft_lemma_size                       3
% 2.65/0.98  --prop_impl_unit_size                   0
% 2.65/0.98  --prop_impl_unit                        []
% 2.65/0.98  --share_sel_clauses                     true
% 2.65/0.98  --reset_solvers                         false
% 2.65/0.98  --bc_imp_inh                            [conj_cone]
% 2.65/0.98  --conj_cone_tolerance                   3.
% 2.65/0.98  --extra_neg_conj                        none
% 2.65/0.98  --large_theory_mode                     true
% 2.65/0.98  --prolific_symb_bound                   200
% 2.65/0.98  --lt_threshold                          2000
% 2.65/0.98  --clause_weak_htbl                      true
% 2.65/0.98  --gc_record_bc_elim                     false
% 2.65/0.98  
% 2.65/0.98  ------ Preprocessing Options
% 2.65/0.98  
% 2.65/0.98  --preprocessing_flag                    true
% 2.65/0.98  --time_out_prep_mult                    0.1
% 2.65/0.98  --splitting_mode                        input
% 2.65/0.98  --splitting_grd                         true
% 2.65/0.98  --splitting_cvd                         false
% 2.65/0.98  --splitting_cvd_svl                     false
% 2.65/0.98  --splitting_nvd                         32
% 2.65/0.98  --sub_typing                            true
% 2.65/0.98  --prep_gs_sim                           true
% 2.65/0.98  --prep_unflatten                        true
% 2.65/0.98  --prep_res_sim                          true
% 2.65/0.98  --prep_upred                            true
% 2.65/0.98  --prep_sem_filter                       exhaustive
% 2.65/0.98  --prep_sem_filter_out                   false
% 2.65/0.98  --pred_elim                             true
% 2.65/0.98  --res_sim_input                         true
% 2.65/0.98  --eq_ax_congr_red                       true
% 2.65/0.98  --pure_diseq_elim                       true
% 2.65/0.98  --brand_transform                       false
% 2.65/0.98  --non_eq_to_eq                          false
% 2.65/0.98  --prep_def_merge                        true
% 2.65/0.98  --prep_def_merge_prop_impl              false
% 2.65/0.98  --prep_def_merge_mbd                    true
% 2.65/0.98  --prep_def_merge_tr_red                 false
% 2.65/0.98  --prep_def_merge_tr_cl                  false
% 2.65/0.98  --smt_preprocessing                     true
% 2.65/0.98  --smt_ac_axioms                         fast
% 2.65/0.98  --preprocessed_out                      false
% 2.65/0.98  --preprocessed_stats                    false
% 2.65/0.98  
% 2.65/0.98  ------ Abstraction refinement Options
% 2.65/0.98  
% 2.65/0.98  --abstr_ref                             []
% 2.65/0.98  --abstr_ref_prep                        false
% 2.65/0.98  --abstr_ref_until_sat                   false
% 2.65/0.98  --abstr_ref_sig_restrict                funpre
% 2.65/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.65/0.98  --abstr_ref_under                       []
% 2.65/0.98  
% 2.65/0.98  ------ SAT Options
% 2.65/0.98  
% 2.65/0.98  --sat_mode                              false
% 2.65/0.98  --sat_fm_restart_options                ""
% 2.65/0.98  --sat_gr_def                            false
% 2.65/0.98  --sat_epr_types                         true
% 2.65/0.98  --sat_non_cyclic_types                  false
% 2.65/0.98  --sat_finite_models                     false
% 2.65/0.98  --sat_fm_lemmas                         false
% 2.65/0.98  --sat_fm_prep                           false
% 2.65/0.98  --sat_fm_uc_incr                        true
% 2.65/0.98  --sat_out_model                         small
% 2.65/0.98  --sat_out_clauses                       false
% 2.65/0.98  
% 2.65/0.98  ------ QBF Options
% 2.65/0.98  
% 2.65/0.98  --qbf_mode                              false
% 2.65/0.98  --qbf_elim_univ                         false
% 2.65/0.98  --qbf_dom_inst                          none
% 2.65/0.98  --qbf_dom_pre_inst                      false
% 2.65/0.98  --qbf_sk_in                             false
% 2.65/0.98  --qbf_pred_elim                         true
% 2.65/0.98  --qbf_split                             512
% 2.65/0.98  
% 2.65/0.98  ------ BMC1 Options
% 2.65/0.98  
% 2.65/0.98  --bmc1_incremental                      false
% 2.65/0.98  --bmc1_axioms                           reachable_all
% 2.65/0.98  --bmc1_min_bound                        0
% 2.65/0.98  --bmc1_max_bound                        -1
% 2.65/0.98  --bmc1_max_bound_default                -1
% 2.65/0.98  --bmc1_symbol_reachability              true
% 2.65/0.98  --bmc1_property_lemmas                  false
% 2.65/0.98  --bmc1_k_induction                      false
% 2.65/0.98  --bmc1_non_equiv_states                 false
% 2.65/0.98  --bmc1_deadlock                         false
% 2.65/0.98  --bmc1_ucm                              false
% 2.65/0.98  --bmc1_add_unsat_core                   none
% 2.65/0.98  --bmc1_unsat_core_children              false
% 2.65/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.65/0.98  --bmc1_out_stat                         full
% 2.65/0.98  --bmc1_ground_init                      false
% 2.65/0.98  --bmc1_pre_inst_next_state              false
% 2.65/0.98  --bmc1_pre_inst_state                   false
% 2.65/0.98  --bmc1_pre_inst_reach_state             false
% 2.65/0.98  --bmc1_out_unsat_core                   false
% 2.65/0.98  --bmc1_aig_witness_out                  false
% 2.65/0.98  --bmc1_verbose                          false
% 2.65/0.98  --bmc1_dump_clauses_tptp                false
% 2.65/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.65/0.98  --bmc1_dump_file                        -
% 2.65/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.65/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.65/0.98  --bmc1_ucm_extend_mode                  1
% 2.65/0.98  --bmc1_ucm_init_mode                    2
% 2.65/0.98  --bmc1_ucm_cone_mode                    none
% 2.65/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.65/0.98  --bmc1_ucm_relax_model                  4
% 2.65/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.65/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.65/0.98  --bmc1_ucm_layered_model                none
% 2.65/0.98  --bmc1_ucm_max_lemma_size               10
% 2.65/0.98  
% 2.65/0.98  ------ AIG Options
% 2.65/0.98  
% 2.65/0.98  --aig_mode                              false
% 2.65/0.98  
% 2.65/0.98  ------ Instantiation Options
% 2.65/0.98  
% 2.65/0.98  --instantiation_flag                    true
% 2.65/0.98  --inst_sos_flag                         false
% 2.65/0.98  --inst_sos_phase                        true
% 2.65/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.65/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.65/0.98  --inst_lit_sel_side                     none
% 2.65/0.98  --inst_solver_per_active                1400
% 2.65/0.98  --inst_solver_calls_frac                1.
% 2.65/0.98  --inst_passive_queue_type               priority_queues
% 2.65/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.65/0.98  --inst_passive_queues_freq              [25;2]
% 2.65/0.98  --inst_dismatching                      true
% 2.65/0.98  --inst_eager_unprocessed_to_passive     true
% 2.65/0.98  --inst_prop_sim_given                   true
% 2.65/0.98  --inst_prop_sim_new                     false
% 2.65/0.98  --inst_subs_new                         false
% 2.65/0.98  --inst_eq_res_simp                      false
% 2.65/0.98  --inst_subs_given                       false
% 2.65/0.98  --inst_orphan_elimination               true
% 2.65/0.98  --inst_learning_loop_flag               true
% 2.65/0.98  --inst_learning_start                   3000
% 2.65/0.98  --inst_learning_factor                  2
% 2.65/0.98  --inst_start_prop_sim_after_learn       3
% 2.65/0.98  --inst_sel_renew                        solver
% 2.65/0.98  --inst_lit_activity_flag                true
% 2.65/0.98  --inst_restr_to_given                   false
% 2.65/0.98  --inst_activity_threshold               500
% 2.65/0.98  --inst_out_proof                        true
% 2.65/0.98  
% 2.65/0.98  ------ Resolution Options
% 2.65/0.98  
% 2.65/0.98  --resolution_flag                       false
% 2.65/0.98  --res_lit_sel                           adaptive
% 2.65/0.98  --res_lit_sel_side                      none
% 2.65/0.98  --res_ordering                          kbo
% 2.65/0.98  --res_to_prop_solver                    active
% 2.65/0.98  --res_prop_simpl_new                    false
% 2.65/0.98  --res_prop_simpl_given                  true
% 2.65/0.98  --res_passive_queue_type                priority_queues
% 2.65/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.65/0.98  --res_passive_queues_freq               [15;5]
% 2.65/0.98  --res_forward_subs                      full
% 2.65/0.98  --res_backward_subs                     full
% 2.65/0.98  --res_forward_subs_resolution           true
% 2.65/0.98  --res_backward_subs_resolution          true
% 2.65/0.98  --res_orphan_elimination                true
% 2.65/0.98  --res_time_limit                        2.
% 2.65/0.98  --res_out_proof                         true
% 2.65/0.98  
% 2.65/0.98  ------ Superposition Options
% 2.65/0.98  
% 2.65/0.98  --superposition_flag                    true
% 2.65/0.98  --sup_passive_queue_type                priority_queues
% 2.65/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.65/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.65/0.98  --demod_completeness_check              fast
% 2.65/0.98  --demod_use_ground                      true
% 2.65/0.98  --sup_to_prop_solver                    passive
% 2.65/0.98  --sup_prop_simpl_new                    true
% 2.65/0.98  --sup_prop_simpl_given                  true
% 2.65/0.98  --sup_fun_splitting                     false
% 2.65/0.98  --sup_smt_interval                      50000
% 2.65/0.98  
% 2.65/0.98  ------ Superposition Simplification Setup
% 2.65/0.98  
% 2.65/0.98  --sup_indices_passive                   []
% 2.65/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.65/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.65/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.65/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.65/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.65/0.98  --sup_full_bw                           [BwDemod]
% 2.65/0.98  --sup_immed_triv                        [TrivRules]
% 2.65/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.65/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.65/0.98  --sup_immed_bw_main                     []
% 2.65/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.65/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.65/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.65/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.65/0.98  
% 2.65/0.98  ------ Combination Options
% 2.65/0.98  
% 2.65/0.98  --comb_res_mult                         3
% 2.65/0.98  --comb_sup_mult                         2
% 2.65/0.98  --comb_inst_mult                        10
% 2.65/0.98  
% 2.65/0.98  ------ Debug Options
% 2.65/0.98  
% 2.65/0.98  --dbg_backtrace                         false
% 2.65/0.98  --dbg_dump_prop_clauses                 false
% 2.65/0.98  --dbg_dump_prop_clauses_file            -
% 2.65/0.98  --dbg_out_stat                          false
% 2.65/0.98  
% 2.65/0.98  
% 2.65/0.98  
% 2.65/0.98  
% 2.65/0.98  ------ Proving...
% 2.65/0.98  
% 2.65/0.98  
% 2.65/0.98  % SZS status Theorem for theBenchmark.p
% 2.65/0.98  
% 2.65/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.65/0.98  
% 2.65/0.98  fof(f9,axiom,(
% 2.65/0.98    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f21,plain,(
% 2.65/0.98    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 2.65/0.98    inference(nnf_transformation,[],[f9])).
% 2.65/0.98  
% 2.65/0.98  fof(f22,plain,(
% 2.65/0.98    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 2.65/0.98    inference(rectify,[],[f21])).
% 2.65/0.98  
% 2.65/0.98  fof(f23,plain,(
% 2.65/0.98    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1))))),
% 2.65/0.98    introduced(choice_axiom,[])).
% 2.65/0.98  
% 2.65/0.98  fof(f24,plain,(
% 2.65/0.98    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 2.65/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f22,f23])).
% 2.65/0.98  
% 2.65/0.98  fof(f38,plain,(
% 2.65/0.98    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 2.65/0.98    inference(cnf_transformation,[],[f24])).
% 2.65/0.98  
% 2.65/0.98  fof(f57,plain,(
% 2.65/0.98    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 2.65/0.98    inference(equality_resolution,[],[f38])).
% 2.65/0.98  
% 2.65/0.98  fof(f10,axiom,(
% 2.65/0.98    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f18,plain,(
% 2.65/0.98    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 2.65/0.98    inference(ennf_transformation,[],[f10])).
% 2.65/0.98  
% 2.65/0.98  fof(f25,plain,(
% 2.65/0.98    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 2.65/0.98    inference(nnf_transformation,[],[f18])).
% 2.65/0.98  
% 2.65/0.98  fof(f42,plain,(
% 2.65/0.98    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.65/0.98    inference(cnf_transformation,[],[f25])).
% 2.65/0.98  
% 2.65/0.98  fof(f14,conjecture,(
% 2.65/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (r1_tarski(k3_subset_1(X0,X1),X1) <=> k2_subset_1(X0) = X1))),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f15,negated_conjecture,(
% 2.65/0.98    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (r1_tarski(k3_subset_1(X0,X1),X1) <=> k2_subset_1(X0) = X1))),
% 2.65/0.98    inference(negated_conjecture,[],[f14])).
% 2.65/0.98  
% 2.65/0.98  fof(f20,plain,(
% 2.65/0.98    ? [X0,X1] : ((r1_tarski(k3_subset_1(X0,X1),X1) <~> k2_subset_1(X0) = X1) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.65/0.98    inference(ennf_transformation,[],[f15])).
% 2.65/0.98  
% 2.65/0.98  fof(f26,plain,(
% 2.65/0.98    ? [X0,X1] : (((k2_subset_1(X0) != X1 | ~r1_tarski(k3_subset_1(X0,X1),X1)) & (k2_subset_1(X0) = X1 | r1_tarski(k3_subset_1(X0,X1),X1))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.65/0.98    inference(nnf_transformation,[],[f20])).
% 2.65/0.98  
% 2.65/0.98  fof(f27,plain,(
% 2.65/0.98    ? [X0,X1] : ((k2_subset_1(X0) != X1 | ~r1_tarski(k3_subset_1(X0,X1),X1)) & (k2_subset_1(X0) = X1 | r1_tarski(k3_subset_1(X0,X1),X1)) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.65/0.98    inference(flattening,[],[f26])).
% 2.65/0.98  
% 2.65/0.98  fof(f28,plain,(
% 2.65/0.98    ? [X0,X1] : ((k2_subset_1(X0) != X1 | ~r1_tarski(k3_subset_1(X0,X1),X1)) & (k2_subset_1(X0) = X1 | r1_tarski(k3_subset_1(X0,X1),X1)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => ((k2_subset_1(sK1) != sK2 | ~r1_tarski(k3_subset_1(sK1,sK2),sK2)) & (k2_subset_1(sK1) = sK2 | r1_tarski(k3_subset_1(sK1,sK2),sK2)) & m1_subset_1(sK2,k1_zfmisc_1(sK1)))),
% 2.65/0.98    introduced(choice_axiom,[])).
% 2.65/0.98  
% 2.65/0.98  fof(f29,plain,(
% 2.65/0.98    (k2_subset_1(sK1) != sK2 | ~r1_tarski(k3_subset_1(sK1,sK2),sK2)) & (k2_subset_1(sK1) = sK2 | r1_tarski(k3_subset_1(sK1,sK2),sK2)) & m1_subset_1(sK2,k1_zfmisc_1(sK1))),
% 2.65/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f27,f28])).
% 2.65/0.98  
% 2.65/0.98  fof(f49,plain,(
% 2.65/0.98    m1_subset_1(sK2,k1_zfmisc_1(sK1))),
% 2.65/0.98    inference(cnf_transformation,[],[f29])).
% 2.65/0.98  
% 2.65/0.98  fof(f13,axiom,(
% 2.65/0.98    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f48,plain,(
% 2.65/0.98    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 2.65/0.98    inference(cnf_transformation,[],[f13])).
% 2.65/0.98  
% 2.65/0.98  fof(f4,axiom,(
% 2.65/0.98    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f17,plain,(
% 2.65/0.98    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 2.65/0.98    inference(ennf_transformation,[],[f4])).
% 2.65/0.98  
% 2.65/0.98  fof(f33,plain,(
% 2.65/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 2.65/0.98    inference(cnf_transformation,[],[f17])).
% 2.65/0.98  
% 2.65/0.98  fof(f1,axiom,(
% 2.65/0.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f30,plain,(
% 2.65/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 2.65/0.98    inference(cnf_transformation,[],[f1])).
% 2.65/0.98  
% 2.65/0.98  fof(f3,axiom,(
% 2.65/0.98    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f16,plain,(
% 2.65/0.98    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 2.65/0.98    inference(ennf_transformation,[],[f3])).
% 2.65/0.98  
% 2.65/0.98  fof(f32,plain,(
% 2.65/0.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 2.65/0.98    inference(cnf_transformation,[],[f16])).
% 2.65/0.98  
% 2.65/0.98  fof(f8,axiom,(
% 2.65/0.98    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f37,plain,(
% 2.65/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 2.65/0.98    inference(cnf_transformation,[],[f8])).
% 2.65/0.98  
% 2.65/0.98  fof(f2,axiom,(
% 2.65/0.98    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f31,plain,(
% 2.65/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 2.65/0.98    inference(cnf_transformation,[],[f2])).
% 2.65/0.98  
% 2.65/0.98  fof(f52,plain,(
% 2.65/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1)) )),
% 2.65/0.98    inference(definition_unfolding,[],[f37,f31])).
% 2.65/0.98  
% 2.65/0.98  fof(f53,plain,(
% 2.65/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = X1 | ~r1_tarski(X0,X1)) )),
% 2.65/0.98    inference(definition_unfolding,[],[f32,f52])).
% 2.65/0.98  
% 2.65/0.98  fof(f12,axiom,(
% 2.65/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f19,plain,(
% 2.65/0.98    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.65/0.98    inference(ennf_transformation,[],[f12])).
% 2.65/0.98  
% 2.65/0.98  fof(f47,plain,(
% 2.65/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.65/0.98    inference(cnf_transformation,[],[f19])).
% 2.65/0.98  
% 2.65/0.98  fof(f55,plain,(
% 2.65/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.65/0.98    inference(definition_unfolding,[],[f47,f31])).
% 2.65/0.98  
% 2.65/0.98  fof(f50,plain,(
% 2.65/0.98    k2_subset_1(sK1) = sK2 | r1_tarski(k3_subset_1(sK1,sK2),sK2)),
% 2.65/0.98    inference(cnf_transformation,[],[f29])).
% 2.65/0.98  
% 2.65/0.98  fof(f11,axiom,(
% 2.65/0.98    ! [X0] : k2_subset_1(X0) = X0),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f46,plain,(
% 2.65/0.98    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 2.65/0.98    inference(cnf_transformation,[],[f11])).
% 2.65/0.98  
% 2.65/0.98  fof(f6,axiom,(
% 2.65/0.98    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f35,plain,(
% 2.65/0.98    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 2.65/0.98    inference(cnf_transformation,[],[f6])).
% 2.65/0.98  
% 2.65/0.98  fof(f54,plain,(
% 2.65/0.98    ( ! [X0,X1] : (r1_tarski(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X0)) )),
% 2.65/0.98    inference(definition_unfolding,[],[f35,f31])).
% 2.65/0.98  
% 2.65/0.98  fof(f7,axiom,(
% 2.65/0.98    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f36,plain,(
% 2.65/0.98    ( ! [X0] : (k5_xboole_0(X0,X0) = k1_xboole_0) )),
% 2.65/0.98    inference(cnf_transformation,[],[f7])).
% 2.65/0.98  
% 2.65/0.98  fof(f5,axiom,(
% 2.65/0.98    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.65/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.65/0.98  
% 2.65/0.98  fof(f34,plain,(
% 2.65/0.98    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.65/0.98    inference(cnf_transformation,[],[f5])).
% 2.65/0.98  
% 2.65/0.98  fof(f51,plain,(
% 2.65/0.98    k2_subset_1(sK1) != sK2 | ~r1_tarski(k3_subset_1(sK1,sK2),sK2)),
% 2.65/0.98    inference(cnf_transformation,[],[f29])).
% 2.65/0.98  
% 2.65/0.98  cnf(c_9,plain,
% 2.65/0.98      ( ~ r2_hidden(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.65/0.98      inference(cnf_transformation,[],[f57]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_740,plain,
% 2.65/0.98      ( r1_tarski(X0,X1) | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
% 2.65/0.98      inference(prop_impl,[status(thm)],[c_9]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_741,plain,
% 2.65/0.98      ( ~ r2_hidden(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.65/0.98      inference(renaming,[status(thm)],[c_740]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_13,plain,
% 2.65/0.98      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 2.65/0.98      inference(cnf_transformation,[],[f42]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_19,negated_conjecture,
% 2.65/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
% 2.65/0.98      inference(cnf_transformation,[],[f49]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_271,plain,
% 2.65/0.98      ( r2_hidden(X0,X1)
% 2.65/0.98      | v1_xboole_0(X1)
% 2.65/0.98      | k1_zfmisc_1(sK1) != X1
% 2.65/0.98      | sK2 != X0 ),
% 2.65/0.98      inference(resolution_lifted,[status(thm)],[c_13,c_19]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_272,plain,
% 2.65/0.98      ( r2_hidden(sK2,k1_zfmisc_1(sK1)) | v1_xboole_0(k1_zfmisc_1(sK1)) ),
% 2.65/0.98      inference(unflattening,[status(thm)],[c_271]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_16,plain,
% 2.65/0.98      ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
% 2.65/0.98      inference(cnf_transformation,[],[f48]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_278,plain,
% 2.65/0.98      ( r2_hidden(sK2,k1_zfmisc_1(sK1)) ),
% 2.65/0.98      inference(forward_subsumption_resolution,
% 2.65/0.98                [status(thm)],
% 2.65/0.98                [c_272,c_16]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_864,plain,
% 2.65/0.98      ( r1_tarski(X0,X1)
% 2.65/0.98      | k1_zfmisc_1(X1) != k1_zfmisc_1(sK1)
% 2.65/0.98      | sK2 != X0 ),
% 2.65/0.98      inference(resolution_lifted,[status(thm)],[c_741,c_278]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_865,plain,
% 2.65/0.98      ( r1_tarski(sK2,X0) | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1) ),
% 2.65/0.98      inference(unflattening,[status(thm)],[c_864]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1285,plain,
% 2.65/0.98      ( k1_zfmisc_1(X0) != k1_zfmisc_1(sK1)
% 2.65/0.98      | r1_tarski(sK2,X0) = iProver_top ),
% 2.65/0.98      inference(predicate_to_equality,[status(thm)],[c_865]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1457,plain,
% 2.65/0.98      ( r1_tarski(sK2,sK1) = iProver_top ),
% 2.65/0.98      inference(equality_resolution,[status(thm)],[c_1285]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2,plain,
% 2.65/0.98      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 2.65/0.98      inference(cnf_transformation,[],[f33]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1294,plain,
% 2.65/0.98      ( k3_xboole_0(X0,X1) = X0 | r1_tarski(X0,X1) != iProver_top ),
% 2.65/0.98      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1607,plain,
% 2.65/0.98      ( k3_xboole_0(sK2,sK1) = sK2 ),
% 2.65/0.98      inference(superposition,[status(thm)],[c_1457,c_1294]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_0,plain,
% 2.65/0.98      ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
% 2.65/0.98      inference(cnf_transformation,[],[f30]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2684,plain,
% 2.65/0.98      ( k3_xboole_0(sK1,sK2) = sK2 ),
% 2.65/0.98      inference(superposition,[status(thm)],[c_1607,c_0]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1,plain,
% 2.65/0.98      ( ~ r1_tarski(X0,X1)
% 2.65/0.98      | k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = X1 ),
% 2.65/0.98      inference(cnf_transformation,[],[f53]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1295,plain,
% 2.65/0.98      ( k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = X1
% 2.65/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 2.65/0.98      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2001,plain,
% 2.65/0.98      ( k5_xboole_0(sK2,k5_xboole_0(sK1,k3_xboole_0(sK1,sK2))) = sK1 ),
% 2.65/0.98      inference(superposition,[status(thm)],[c_1457,c_1295]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_15,plain,
% 2.65/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.65/0.98      | k5_xboole_0(X1,k3_xboole_0(X1,X0)) = k3_subset_1(X1,X0) ),
% 2.65/0.98      inference(cnf_transformation,[],[f55]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_284,plain,
% 2.65/0.98      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1)
% 2.65/0.98      | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1)
% 2.65/0.98      | sK2 != X1 ),
% 2.65/0.98      inference(resolution_lifted,[status(thm)],[c_15,c_19]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_285,plain,
% 2.65/0.98      ( k5_xboole_0(X0,k3_xboole_0(X0,sK2)) = k3_subset_1(X0,sK2)
% 2.65/0.98      | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1) ),
% 2.65/0.98      inference(unflattening,[status(thm)],[c_284]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1384,plain,
% 2.65/0.98      ( k5_xboole_0(sK1,k3_xboole_0(sK1,sK2)) = k3_subset_1(sK1,sK2) ),
% 2.65/0.98      inference(equality_resolution,[status(thm)],[c_285]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2018,plain,
% 2.65/0.98      ( k5_xboole_0(sK2,k3_subset_1(sK1,sK2)) = sK1 ),
% 2.65/0.98      inference(light_normalisation,[status(thm)],[c_2001,c_1384]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_18,negated_conjecture,
% 2.65/0.98      ( r1_tarski(k3_subset_1(sK1,sK2),sK2) | k2_subset_1(sK1) = sK2 ),
% 2.65/0.98      inference(cnf_transformation,[],[f50]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1290,plain,
% 2.65/0.98      ( k2_subset_1(sK1) = sK2
% 2.65/0.98      | r1_tarski(k3_subset_1(sK1,sK2),sK2) = iProver_top ),
% 2.65/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_14,plain,
% 2.65/0.98      ( k2_subset_1(X0) = X0 ),
% 2.65/0.98      inference(cnf_transformation,[],[f46]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1310,plain,
% 2.65/0.98      ( sK2 = sK1 | r1_tarski(k3_subset_1(sK1,sK2),sK2) = iProver_top ),
% 2.65/0.98      inference(demodulation,[status(thm)],[c_1290,c_14]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1606,plain,
% 2.65/0.98      ( k3_xboole_0(k3_subset_1(sK1,sK2),sK2) = k3_subset_1(sK1,sK2)
% 2.65/0.98      | sK2 = sK1 ),
% 2.65/0.98      inference(superposition,[status(thm)],[c_1310,c_1294]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_4,plain,
% 2.65/0.98      ( r1_tarski(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X0) ),
% 2.65/0.98      inference(cnf_transformation,[],[f54]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1292,plain,
% 2.65/0.98      ( r1_tarski(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X0) = iProver_top ),
% 2.65/0.98      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1553,plain,
% 2.65/0.98      ( r1_tarski(k5_xboole_0(X0,k3_xboole_0(X1,X0)),X0) = iProver_top ),
% 2.65/0.98      inference(superposition,[status(thm)],[c_0,c_1292]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1676,plain,
% 2.65/0.98      ( sK2 = sK1
% 2.65/0.98      | r1_tarski(k5_xboole_0(sK2,k3_subset_1(sK1,sK2)),sK2) = iProver_top ),
% 2.65/0.98      inference(superposition,[status(thm)],[c_1606,c_1553]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2305,plain,
% 2.65/0.98      ( sK2 = sK1 | r1_tarski(sK1,sK2) = iProver_top ),
% 2.65/0.98      inference(demodulation,[status(thm)],[c_2018,c_1676]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_141,plain,
% 2.65/0.98      ( r1_tarski(X0,X1) | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
% 2.65/0.98      inference(prop_impl,[status(thm)],[c_9]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_142,plain,
% 2.65/0.98      ( ~ r2_hidden(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.65/0.98      inference(renaming,[status(thm)],[c_141]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_375,plain,
% 2.65/0.98      ( r1_tarski(X0,X1)
% 2.65/0.98      | k1_zfmisc_1(X1) != k1_zfmisc_1(sK1)
% 2.65/0.98      | sK2 != X0 ),
% 2.65/0.98      inference(resolution_lifted,[status(thm)],[c_142,c_278]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_376,plain,
% 2.65/0.98      ( r1_tarski(sK2,X0) | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1) ),
% 2.65/0.98      inference(unflattening,[status(thm)],[c_375]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_377,plain,
% 2.65/0.98      ( k1_zfmisc_1(X0) != k1_zfmisc_1(sK1)
% 2.65/0.98      | r1_tarski(sK2,X0) = iProver_top ),
% 2.65/0.98      inference(predicate_to_equality,[status(thm)],[c_376]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_379,plain,
% 2.65/0.98      ( k1_zfmisc_1(sK2) != k1_zfmisc_1(sK1)
% 2.65/0.98      | r1_tarski(sK2,sK2) = iProver_top ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_377]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1002,plain,( X0 = X0 ),theory(equality) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1018,plain,
% 2.65/0.98      ( sK2 = sK2 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1002]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1007,plain,
% 2.65/0.98      ( X0 != X1 | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
% 2.65/0.98      theory(equality) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1386,plain,
% 2.65/0.98      ( X0 != sK1 | k1_zfmisc_1(X0) = k1_zfmisc_1(sK1) ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1007]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1387,plain,
% 2.65/0.98      ( k1_zfmisc_1(sK2) = k1_zfmisc_1(sK1) | sK2 != sK1 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1386]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1003,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1477,plain,
% 2.65/0.98      ( X0 != X1 | sK1 != X1 | sK1 = X0 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1003]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1525,plain,
% 2.65/0.98      ( X0 != sK1 | sK1 = X0 | sK1 != sK1 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1477]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1527,plain,
% 2.65/0.98      ( sK2 != sK1 | sK1 = sK2 | sK1 != sK1 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1525]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1526,plain,
% 2.65/0.98      ( sK1 = sK1 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1002]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1006,plain,
% 2.65/0.98      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.65/0.98      theory(equality) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2073,plain,
% 2.65/0.98      ( ~ r1_tarski(X0,X1) | r1_tarski(sK1,X2) | X2 != X1 | sK1 != X0 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1006]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2074,plain,
% 2.65/0.98      ( X0 != X1
% 2.65/0.98      | sK1 != X2
% 2.65/0.98      | r1_tarski(X2,X1) != iProver_top
% 2.65/0.98      | r1_tarski(sK1,X0) = iProver_top ),
% 2.65/0.98      inference(predicate_to_equality,[status(thm)],[c_2073]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2076,plain,
% 2.65/0.98      ( sK2 != sK2
% 2.65/0.98      | sK1 != sK2
% 2.65/0.98      | r1_tarski(sK2,sK2) != iProver_top
% 2.65/0.98      | r1_tarski(sK1,sK2) = iProver_top ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_2074]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2347,plain,
% 2.65/0.98      ( r1_tarski(sK1,sK2) = iProver_top ),
% 2.65/0.98      inference(global_propositional_subsumption,
% 2.65/0.98                [status(thm)],
% 2.65/0.98                [c_2305,c_379,c_1018,c_1387,c_1527,c_1526,c_2076]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2353,plain,
% 2.65/0.98      ( k3_xboole_0(sK1,sK2) = sK1 ),
% 2.65/0.98      inference(superposition,[status(thm)],[c_2347,c_1294]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2686,plain,
% 2.65/0.98      ( sK2 = sK1 ),
% 2.65/0.98      inference(light_normalisation,[status(thm)],[c_2684,c_2353]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2484,plain,
% 2.65/0.98      ( k3_subset_1(sK1,sK2) = k5_xboole_0(sK1,sK1) ),
% 2.65/0.98      inference(demodulation,[status(thm)],[c_2353,c_1384]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_5,plain,
% 2.65/0.98      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 2.65/0.98      inference(cnf_transformation,[],[f36]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_2485,plain,
% 2.65/0.98      ( k3_subset_1(sK1,sK2) = k1_xboole_0 ),
% 2.65/0.98      inference(demodulation,[status(thm)],[c_2484,c_5]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1464,plain,
% 2.65/0.98      ( k2_subset_1(sK1) = sK1 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_14]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1397,plain,
% 2.65/0.98      ( k2_subset_1(sK1) != X0 | k2_subset_1(sK1) = sK2 | sK2 != X0 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1003]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_1463,plain,
% 2.65/0.98      ( k2_subset_1(sK1) = sK2 | k2_subset_1(sK1) != sK1 | sK2 != sK1 ),
% 2.65/0.98      inference(instantiation,[status(thm)],[c_1397]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_3,plain,
% 2.65/0.98      ( r1_tarski(k1_xboole_0,X0) ),
% 2.65/0.98      inference(cnf_transformation,[],[f34]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_17,negated_conjecture,
% 2.65/0.98      ( ~ r1_tarski(k3_subset_1(sK1,sK2),sK2) | k2_subset_1(sK1) != sK2 ),
% 2.65/0.98      inference(cnf_transformation,[],[f51]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_145,plain,
% 2.65/0.98      ( ~ r1_tarski(k3_subset_1(sK1,sK2),sK2) | k2_subset_1(sK1) != sK2 ),
% 2.65/0.98      inference(prop_impl,[status(thm)],[c_17]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_581,plain,
% 2.65/0.98      ( k3_subset_1(sK1,sK2) != k1_xboole_0
% 2.65/0.98      | k2_subset_1(sK1) != sK2
% 2.65/0.98      | sK2 != X0 ),
% 2.65/0.98      inference(resolution_lifted,[status(thm)],[c_3,c_145]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(c_582,plain,
% 2.65/0.98      ( k3_subset_1(sK1,sK2) != k1_xboole_0 | k2_subset_1(sK1) != sK2 ),
% 2.65/0.98      inference(unflattening,[status(thm)],[c_581]) ).
% 2.65/0.98  
% 2.65/0.98  cnf(contradiction,plain,
% 2.65/0.98      ( $false ),
% 2.65/0.98      inference(minisat,[status(thm)],[c_2686,c_2485,c_1464,c_1463,c_582]) ).
% 2.65/0.98  
% 2.65/0.98  
% 2.65/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 2.65/0.98  
% 2.65/0.98  ------                               Statistics
% 2.65/0.98  
% 2.65/0.98  ------ General
% 2.65/0.98  
% 2.65/0.98  abstr_ref_over_cycles:                  0
% 2.65/0.98  abstr_ref_under_cycles:                 0
% 2.65/0.98  gc_basic_clause_elim:                   0
% 2.65/0.98  forced_gc_time:                         0
% 2.65/0.98  parsing_time:                           0.008
% 2.65/0.98  unif_index_cands_time:                  0.
% 2.65/0.98  unif_index_add_time:                    0.
% 2.65/0.98  orderings_time:                         0.
% 2.65/0.98  out_proof_time:                         0.01
% 2.65/0.98  total_time:                             0.108
% 2.65/0.98  num_of_symbols:                         44
% 2.65/0.98  num_of_terms:                           2086
% 2.65/0.98  
% 2.65/0.98  ------ Preprocessing
% 2.65/0.98  
% 2.65/0.98  num_of_splits:                          0
% 2.65/0.98  num_of_split_atoms:                     0
% 2.65/0.98  num_of_reused_defs:                     0
% 2.65/0.98  num_eq_ax_congr_red:                    15
% 2.65/0.98  num_of_sem_filtered_clauses:            1
% 2.65/0.98  num_of_subtypes:                        0
% 2.65/0.98  monotx_restored_types:                  0
% 2.65/0.98  sat_num_of_epr_types:                   0
% 2.65/0.98  sat_num_of_non_cyclic_types:            0
% 2.65/0.98  sat_guarded_non_collapsed_types:        0
% 2.65/0.98  num_pure_diseq_elim:                    0
% 2.65/0.98  simp_replaced_by:                       0
% 2.65/0.98  res_preprocessed:                       100
% 2.65/0.98  prep_upred:                             0
% 2.65/0.98  prep_unflattend:                        58
% 2.65/0.98  smt_new_axioms:                         0
% 2.65/0.98  pred_elim_cands:                        1
% 2.65/0.98  pred_elim:                              3
% 2.65/0.98  pred_elim_cl:                           5
% 2.65/0.98  pred_elim_cycles:                       7
% 2.65/0.98  merged_defs:                            14
% 2.65/0.98  merged_defs_ncl:                        0
% 2.65/0.98  bin_hyper_res:                          15
% 2.65/0.98  prep_cycles:                            5
% 2.65/0.98  pred_elim_time:                         0.009
% 2.65/0.98  splitting_time:                         0.
% 2.65/0.98  sem_filter_time:                        0.
% 2.65/0.98  monotx_time:                            0.
% 2.65/0.98  subtype_inf_time:                       0.
% 2.65/0.98  
% 2.65/0.98  ------ Problem properties
% 2.65/0.98  
% 2.65/0.98  clauses:                                15
% 2.65/0.98  conjectures:                            2
% 2.65/0.98  epr:                                    1
% 2.65/0.98  horn:                                   13
% 2.65/0.98  ground:                                 2
% 2.65/0.98  unary:                                  5
% 2.65/0.98  binary:                                 7
% 2.65/0.99  lits:                                   28
% 2.65/0.99  lits_eq:                                15
% 2.65/0.99  fd_pure:                                0
% 2.65/0.99  fd_pseudo:                              0
% 2.65/0.99  fd_cond:                                0
% 2.65/0.99  fd_pseudo_cond:                         0
% 2.65/0.99  ac_symbols:                             0
% 2.65/0.99  
% 2.65/0.99  ------ Propositional Solver
% 2.65/0.99  
% 2.65/0.99  prop_solver_calls:                      31
% 2.65/0.99  prop_fast_solver_calls:                 534
% 2.65/0.99  smt_solver_calls:                       0
% 2.65/0.99  smt_fast_solver_calls:                  0
% 2.65/0.99  prop_num_of_clauses:                    782
% 2.65/0.99  prop_preprocess_simplified:             3518
% 2.65/0.99  prop_fo_subsumed:                       4
% 2.65/0.99  prop_solver_time:                       0.
% 2.65/0.99  smt_solver_time:                        0.
% 2.65/0.99  smt_fast_solver_time:                   0.
% 2.65/0.99  prop_fast_solver_time:                  0.
% 2.65/0.99  prop_unsat_core_time:                   0.
% 2.65/0.99  
% 2.65/0.99  ------ QBF
% 2.65/0.99  
% 2.65/0.99  qbf_q_res:                              0
% 2.65/0.99  qbf_num_tautologies:                    0
% 2.65/0.99  qbf_prep_cycles:                        0
% 2.65/0.99  
% 2.65/0.99  ------ BMC1
% 2.65/0.99  
% 2.65/0.99  bmc1_current_bound:                     -1
% 2.65/0.99  bmc1_last_solved_bound:                 -1
% 2.65/0.99  bmc1_unsat_core_size:                   -1
% 2.65/0.99  bmc1_unsat_core_parents_size:           -1
% 2.65/0.99  bmc1_merge_next_fun:                    0
% 2.65/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.65/0.99  
% 2.65/0.99  ------ Instantiation
% 2.65/0.99  
% 2.65/0.99  inst_num_of_clauses:                    271
% 2.65/0.99  inst_num_in_passive:                    97
% 2.65/0.99  inst_num_in_active:                     123
% 2.65/0.99  inst_num_in_unprocessed:                51
% 2.65/0.99  inst_num_of_loops:                      180
% 2.65/0.99  inst_num_of_learning_restarts:          0
% 2.65/0.99  inst_num_moves_active_passive:          54
% 2.65/0.99  inst_lit_activity:                      0
% 2.65/0.99  inst_lit_activity_moves:                0
% 2.65/0.99  inst_num_tautologies:                   0
% 2.65/0.99  inst_num_prop_implied:                  0
% 2.65/0.99  inst_num_existing_simplified:           0
% 2.65/0.99  inst_num_eq_res_simplified:             0
% 2.65/0.99  inst_num_child_elim:                    0
% 2.65/0.99  inst_num_of_dismatching_blockings:      30
% 2.65/0.99  inst_num_of_non_proper_insts:           182
% 2.65/0.99  inst_num_of_duplicates:                 0
% 2.65/0.99  inst_inst_num_from_inst_to_res:         0
% 2.65/0.99  inst_dismatching_checking_time:         0.
% 2.65/0.99  
% 2.65/0.99  ------ Resolution
% 2.65/0.99  
% 2.65/0.99  res_num_of_clauses:                     0
% 2.65/0.99  res_num_in_passive:                     0
% 2.65/0.99  res_num_in_active:                      0
% 2.65/0.99  res_num_of_loops:                       105
% 2.65/0.99  res_forward_subset_subsumed:            46
% 2.65/0.99  res_backward_subset_subsumed:           0
% 2.65/0.99  res_forward_subsumed:                   2
% 2.65/0.99  res_backward_subsumed:                  0
% 2.65/0.99  res_forward_subsumption_resolution:     2
% 2.65/0.99  res_backward_subsumption_resolution:    0
% 2.65/0.99  res_clause_to_clause_subsumption:       137
% 2.65/0.99  res_orphan_elimination:                 0
% 2.65/0.99  res_tautology_del:                      63
% 2.65/0.99  res_num_eq_res_simplified:              0
% 2.65/0.99  res_num_sel_changes:                    0
% 2.65/0.99  res_moves_from_active_to_pass:          0
% 2.65/0.99  
% 2.65/0.99  ------ Superposition
% 2.65/0.99  
% 2.65/0.99  sup_time_total:                         0.
% 2.65/0.99  sup_time_generating:                    0.
% 2.65/0.99  sup_time_sim_full:                      0.
% 2.65/0.99  sup_time_sim_immed:                     0.
% 2.65/0.99  
% 2.65/0.99  sup_num_of_clauses:                     49
% 2.65/0.99  sup_num_in_active:                      22
% 2.65/0.99  sup_num_in_passive:                     27
% 2.65/0.99  sup_num_of_loops:                       34
% 2.65/0.99  sup_fw_superposition:                   39
% 2.65/0.99  sup_bw_superposition:                   34
% 2.65/0.99  sup_immediate_simplified:               17
% 2.65/0.99  sup_given_eliminated:                   1
% 2.65/0.99  comparisons_done:                       0
% 2.65/0.99  comparisons_avoided:                    6
% 2.65/0.99  
% 2.65/0.99  ------ Simplifications
% 2.65/0.99  
% 2.65/0.99  
% 2.65/0.99  sim_fw_subset_subsumed:                 0
% 2.65/0.99  sim_bw_subset_subsumed:                 1
% 2.65/0.99  sim_fw_subsumed:                        8
% 2.65/0.99  sim_bw_subsumed:                        0
% 2.65/0.99  sim_fw_subsumption_res:                 0
% 2.65/0.99  sim_bw_subsumption_res:                 0
% 2.65/0.99  sim_tautology_del:                      2
% 2.65/0.99  sim_eq_tautology_del:                   3
% 2.65/0.99  sim_eq_res_simp:                        0
% 2.65/0.99  sim_fw_demodulated:                     9
% 2.65/0.99  sim_bw_demodulated:                     15
% 2.65/0.99  sim_light_normalised:                   5
% 2.65/0.99  sim_joinable_taut:                      0
% 2.65/0.99  sim_joinable_simp:                      0
% 2.65/0.99  sim_ac_normalised:                      0
% 2.65/0.99  sim_smt_subsumption:                    0
% 2.65/0.99  
%------------------------------------------------------------------------------
