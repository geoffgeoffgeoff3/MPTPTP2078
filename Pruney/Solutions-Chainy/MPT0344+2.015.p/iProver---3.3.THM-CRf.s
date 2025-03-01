%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:38:59 EST 2020

% Result     : Theorem 0.90s
% Output     : CNFRefutation 0.90s
% Verified   : 
% Statistics : Number of formulae       :   91 ( 111 expanded)
%              Number of clauses        :   41 (  41 expanded)
%              Number of leaves         :   17 (  24 expanded)
%              Depth                    :   16
%              Number of atoms          :  272 ( 378 expanded)
%              Number of equality atoms :   65 (  79 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f4])).

fof(f28,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK3(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0] :
      ( r2_hidden(sK3(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f15,f28])).

fof(f44,plain,(
    ! [X0] :
      ( r2_hidden(sK3(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f29])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f34,plain,(
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
    inference(nnf_transformation,[],[f17])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f9,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ~ ( ! [X2] :
              ( m1_subset_1(X2,X0)
             => ~ r2_hidden(X2,X1) )
          & k1_xboole_0 != X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => ~ ( ! [X2] :
                ( m1_subset_1(X2,X0)
               => ~ r2_hidden(X2,X1) )
            & k1_xboole_0 != X1 ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f18,plain,(
    ? [X0,X1] :
      ( ! [X2] :
          ( ~ r2_hidden(X2,X1)
          | ~ m1_subset_1(X2,X0) )
      & k1_xboole_0 != X1
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f19,plain,(
    ? [X0,X1] :
      ( ! [X2] :
          ( ~ r2_hidden(X2,X1)
          | ~ m1_subset_1(X2,X0) )
      & k1_xboole_0 != X1
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f18])).

fof(f35,plain,
    ( ? [X0,X1] :
        ( ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ m1_subset_1(X2,X0) )
        & k1_xboole_0 != X1
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( ! [X2] :
          ( ~ r2_hidden(X2,sK6)
          | ~ m1_subset_1(X2,sK5) )
      & k1_xboole_0 != sK6
      & m1_subset_1(sK6,k1_zfmisc_1(sK5)) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( ! [X2] :
        ( ~ r2_hidden(X2,sK6)
        | ~ m1_subset_1(X2,sK5) )
    & k1_xboole_0 != sK6
    & m1_subset_1(sK6,k1_zfmisc_1(sK5)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6])],[f19,f35])).

fof(f55,plain,(
    m1_subset_1(sK6,k1_zfmisc_1(sK5)) ),
    inference(cnf_transformation,[],[f36])).

fof(f8,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
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

fof(f31,plain,(
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
    inference(rectify,[],[f30])).

fof(f32,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK4(X0,X1),X0)
          | ~ r2_hidden(sK4(X0,X1),X1) )
        & ( r1_tarski(sK4(X0,X1),X0)
          | r2_hidden(sK4(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK4(X0,X1),X0)
            | ~ r2_hidden(sK4(X0,X1),X1) )
          & ( r1_tarski(sK4(X0,X1),X0)
            | r2_hidden(sK4(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f31,f32])).

fof(f46,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f59,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f46])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f3])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f26,plain,(
    ! [X1,X0] :
      ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
     => r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f14,f26])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ) ),
    inference(cnf_transformation,[],[f27])).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
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

fof(f13,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f24,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f13,f24])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK1(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK1(X0,X1),X0)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f51,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f21,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f20])).

fof(f22,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f22])).

fof(f37,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f57,plain,(
    ! [X2] :
      ( ~ r2_hidden(X2,sK6)
      | ~ m1_subset_1(X2,sK5) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f56,plain,(
    k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_7,plain,
    ( r2_hidden(sK3(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1244,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK3(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_20,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(sK5)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_465,plain,
    ( r2_hidden(X0,X1)
    | v1_xboole_0(X1)
    | k1_zfmisc_1(sK5) != X1
    | sK6 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_20])).

cnf(c_466,plain,
    ( r2_hidden(sK6,k1_zfmisc_1(sK5))
    | v1_xboole_0(k1_zfmisc_1(sK5)) ),
    inference(unflattening,[status(thm)],[c_465])).

cnf(c_17,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_472,plain,
    ( r2_hidden(sK6,k1_zfmisc_1(sK5)) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_466,c_17])).

cnf(c_1235,plain,
    ( r2_hidden(sK6,k1_zfmisc_1(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_472])).

cnf(c_12,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1239,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_1565,plain,
    ( r1_tarski(sK6,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_1235,c_1239])).

cnf(c_8,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1243,plain,
    ( k3_xboole_0(X0,X1) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_2066,plain,
    ( k3_xboole_0(sK6,sK5) = sK6 ),
    inference(superposition,[status(thm)],[c_1565,c_1243])).

cnf(c_5,plain,
    ( ~ r1_xboole_0(X0,X1)
    | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1246,plain,
    ( r1_xboole_0(X0,X1) != iProver_top
    | r2_hidden(X2,k3_xboole_0(X0,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2719,plain,
    ( r1_xboole_0(sK6,sK5) != iProver_top
    | r2_hidden(X0,sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_2066,c_1246])).

cnf(c_3,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK1(X0,X1),X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1248,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_4,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK1(X0,X1),X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1247,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_15,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_120,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_15,c_1])).

cnf(c_121,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_120])).

cnf(c_18,negated_conjecture,
    ( ~ m1_subset_1(X0,sK5)
    | ~ r2_hidden(X0,sK6) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_440,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X2,sK6)
    | X2 != X0
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_121,c_18])).

cnf(c_441,plain,
    ( ~ r2_hidden(X0,sK5)
    | ~ r2_hidden(X0,sK6) ),
    inference(unflattening,[status(thm)],[c_440])).

cnf(c_1237,plain,
    ( r2_hidden(X0,sK5) != iProver_top
    | r2_hidden(X0,sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_441])).

cnf(c_1778,plain,
    ( r1_xboole_0(sK6,X0) = iProver_top
    | r2_hidden(sK1(sK6,X0),sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1247,c_1237])).

cnf(c_2377,plain,
    ( r1_xboole_0(sK6,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_1248,c_1778])).

cnf(c_3162,plain,
    ( r2_hidden(X0,sK6) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2719,c_2377])).

cnf(c_3172,plain,
    ( sK6 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1244,c_3162])).

cnf(c_806,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1469,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_806])).

cnf(c_807,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1445,plain,
    ( sK6 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK6 ),
    inference(instantiation,[status(thm)],[c_807])).

cnf(c_1468,plain,
    ( sK6 != k1_xboole_0
    | k1_xboole_0 = sK6
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1445])).

cnf(c_19,negated_conjecture,
    ( k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f56])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3172,c_1469,c_1468,c_19])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n009.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 20:22:26 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 0.90/1.06  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.90/1.06  
% 0.90/1.06  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.90/1.06  
% 0.90/1.06  ------  iProver source info
% 0.90/1.06  
% 0.90/1.06  git: date: 2020-06-30 10:37:57 +0100
% 0.90/1.06  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.90/1.06  git: non_committed_changes: false
% 0.90/1.06  git: last_make_outside_of_git: false
% 0.90/1.06  
% 0.90/1.06  ------ 
% 0.90/1.06  
% 0.90/1.06  ------ Input Options
% 0.90/1.06  
% 0.90/1.06  --out_options                           all
% 0.90/1.06  --tptp_safe_out                         true
% 0.90/1.06  --problem_path                          ""
% 0.90/1.06  --include_path                          ""
% 0.90/1.06  --clausifier                            res/vclausify_rel
% 0.90/1.06  --clausifier_options                    --mode clausify
% 0.90/1.06  --stdin                                 false
% 0.90/1.06  --stats_out                             all
% 0.90/1.06  
% 0.90/1.06  ------ General Options
% 0.90/1.06  
% 0.90/1.06  --fof                                   false
% 0.90/1.06  --time_out_real                         305.
% 0.90/1.06  --time_out_virtual                      -1.
% 0.90/1.06  --symbol_type_check                     false
% 0.90/1.06  --clausify_out                          false
% 0.90/1.06  --sig_cnt_out                           false
% 0.90/1.06  --trig_cnt_out                          false
% 0.90/1.06  --trig_cnt_out_tolerance                1.
% 0.90/1.06  --trig_cnt_out_sk_spl                   false
% 0.90/1.06  --abstr_cl_out                          false
% 0.90/1.06  
% 0.90/1.06  ------ Global Options
% 0.90/1.06  
% 0.90/1.06  --schedule                              default
% 0.90/1.06  --add_important_lit                     false
% 0.90/1.06  --prop_solver_per_cl                    1000
% 0.90/1.06  --min_unsat_core                        false
% 0.90/1.06  --soft_assumptions                      false
% 0.90/1.06  --soft_lemma_size                       3
% 0.90/1.06  --prop_impl_unit_size                   0
% 0.90/1.06  --prop_impl_unit                        []
% 0.90/1.06  --share_sel_clauses                     true
% 0.90/1.06  --reset_solvers                         false
% 0.90/1.06  --bc_imp_inh                            [conj_cone]
% 0.90/1.06  --conj_cone_tolerance                   3.
% 0.90/1.06  --extra_neg_conj                        none
% 0.90/1.06  --large_theory_mode                     true
% 0.90/1.06  --prolific_symb_bound                   200
% 0.90/1.06  --lt_threshold                          2000
% 0.90/1.06  --clause_weak_htbl                      true
% 0.90/1.06  --gc_record_bc_elim                     false
% 0.90/1.06  
% 0.90/1.06  ------ Preprocessing Options
% 0.90/1.06  
% 0.90/1.06  --preprocessing_flag                    true
% 0.90/1.06  --time_out_prep_mult                    0.1
% 0.90/1.06  --splitting_mode                        input
% 0.90/1.06  --splitting_grd                         true
% 0.90/1.06  --splitting_cvd                         false
% 0.90/1.06  --splitting_cvd_svl                     false
% 0.90/1.06  --splitting_nvd                         32
% 0.90/1.06  --sub_typing                            true
% 0.90/1.06  --prep_gs_sim                           true
% 0.90/1.06  --prep_unflatten                        true
% 0.90/1.06  --prep_res_sim                          true
% 0.90/1.06  --prep_upred                            true
% 0.90/1.06  --prep_sem_filter                       exhaustive
% 0.90/1.06  --prep_sem_filter_out                   false
% 0.90/1.06  --pred_elim                             true
% 0.90/1.06  --res_sim_input                         true
% 0.90/1.06  --eq_ax_congr_red                       true
% 0.90/1.06  --pure_diseq_elim                       true
% 0.90/1.06  --brand_transform                       false
% 0.90/1.06  --non_eq_to_eq                          false
% 0.90/1.06  --prep_def_merge                        true
% 0.90/1.06  --prep_def_merge_prop_impl              false
% 0.90/1.06  --prep_def_merge_mbd                    true
% 0.90/1.06  --prep_def_merge_tr_red                 false
% 0.90/1.06  --prep_def_merge_tr_cl                  false
% 0.90/1.06  --smt_preprocessing                     true
% 0.90/1.06  --smt_ac_axioms                         fast
% 0.90/1.06  --preprocessed_out                      false
% 0.90/1.06  --preprocessed_stats                    false
% 0.90/1.06  
% 0.90/1.06  ------ Abstraction refinement Options
% 0.90/1.06  
% 0.90/1.06  --abstr_ref                             []
% 0.90/1.06  --abstr_ref_prep                        false
% 0.90/1.06  --abstr_ref_until_sat                   false
% 0.90/1.06  --abstr_ref_sig_restrict                funpre
% 0.90/1.06  --abstr_ref_af_restrict_to_split_sk     false
% 0.90/1.06  --abstr_ref_under                       []
% 0.90/1.06  
% 0.90/1.06  ------ SAT Options
% 0.90/1.06  
% 0.90/1.06  --sat_mode                              false
% 0.90/1.06  --sat_fm_restart_options                ""
% 0.90/1.06  --sat_gr_def                            false
% 0.90/1.06  --sat_epr_types                         true
% 0.90/1.06  --sat_non_cyclic_types                  false
% 0.90/1.06  --sat_finite_models                     false
% 0.90/1.06  --sat_fm_lemmas                         false
% 0.90/1.06  --sat_fm_prep                           false
% 0.90/1.06  --sat_fm_uc_incr                        true
% 0.90/1.06  --sat_out_model                         small
% 0.90/1.06  --sat_out_clauses                       false
% 0.90/1.06  
% 0.90/1.06  ------ QBF Options
% 0.90/1.06  
% 0.90/1.06  --qbf_mode                              false
% 0.90/1.06  --qbf_elim_univ                         false
% 0.90/1.06  --qbf_dom_inst                          none
% 0.90/1.06  --qbf_dom_pre_inst                      false
% 0.90/1.06  --qbf_sk_in                             false
% 0.90/1.06  --qbf_pred_elim                         true
% 0.90/1.06  --qbf_split                             512
% 0.90/1.06  
% 0.90/1.06  ------ BMC1 Options
% 0.90/1.06  
% 0.90/1.06  --bmc1_incremental                      false
% 0.90/1.06  --bmc1_axioms                           reachable_all
% 0.90/1.06  --bmc1_min_bound                        0
% 0.90/1.06  --bmc1_max_bound                        -1
% 0.90/1.06  --bmc1_max_bound_default                -1
% 0.90/1.06  --bmc1_symbol_reachability              true
% 0.90/1.06  --bmc1_property_lemmas                  false
% 0.90/1.06  --bmc1_k_induction                      false
% 0.90/1.06  --bmc1_non_equiv_states                 false
% 0.90/1.06  --bmc1_deadlock                         false
% 0.90/1.06  --bmc1_ucm                              false
% 0.90/1.06  --bmc1_add_unsat_core                   none
% 0.90/1.06  --bmc1_unsat_core_children              false
% 0.90/1.06  --bmc1_unsat_core_extrapolate_axioms    false
% 0.90/1.06  --bmc1_out_stat                         full
% 0.90/1.06  --bmc1_ground_init                      false
% 0.90/1.06  --bmc1_pre_inst_next_state              false
% 0.90/1.06  --bmc1_pre_inst_state                   false
% 0.90/1.06  --bmc1_pre_inst_reach_state             false
% 0.90/1.06  --bmc1_out_unsat_core                   false
% 0.90/1.06  --bmc1_aig_witness_out                  false
% 0.90/1.06  --bmc1_verbose                          false
% 0.90/1.06  --bmc1_dump_clauses_tptp                false
% 0.90/1.06  --bmc1_dump_unsat_core_tptp             false
% 0.90/1.06  --bmc1_dump_file                        -
% 0.90/1.06  --bmc1_ucm_expand_uc_limit              128
% 0.90/1.06  --bmc1_ucm_n_expand_iterations          6
% 0.90/1.06  --bmc1_ucm_extend_mode                  1
% 0.90/1.06  --bmc1_ucm_init_mode                    2
% 0.90/1.06  --bmc1_ucm_cone_mode                    none
% 0.90/1.06  --bmc1_ucm_reduced_relation_type        0
% 0.90/1.06  --bmc1_ucm_relax_model                  4
% 0.90/1.06  --bmc1_ucm_full_tr_after_sat            true
% 0.90/1.06  --bmc1_ucm_expand_neg_assumptions       false
% 0.90/1.06  --bmc1_ucm_layered_model                none
% 0.90/1.06  --bmc1_ucm_max_lemma_size               10
% 0.90/1.06  
% 0.90/1.06  ------ AIG Options
% 0.90/1.06  
% 0.90/1.06  --aig_mode                              false
% 0.90/1.06  
% 0.90/1.06  ------ Instantiation Options
% 0.90/1.06  
% 0.90/1.06  --instantiation_flag                    true
% 0.90/1.06  --inst_sos_flag                         false
% 0.90/1.06  --inst_sos_phase                        true
% 0.90/1.06  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.90/1.06  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.90/1.06  --inst_lit_sel_side                     num_symb
% 0.90/1.06  --inst_solver_per_active                1400
% 0.90/1.06  --inst_solver_calls_frac                1.
% 0.90/1.06  --inst_passive_queue_type               priority_queues
% 0.90/1.06  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.90/1.06  --inst_passive_queues_freq              [25;2]
% 0.90/1.06  --inst_dismatching                      true
% 0.90/1.06  --inst_eager_unprocessed_to_passive     true
% 0.90/1.06  --inst_prop_sim_given                   true
% 0.90/1.06  --inst_prop_sim_new                     false
% 0.90/1.06  --inst_subs_new                         false
% 0.90/1.06  --inst_eq_res_simp                      false
% 0.90/1.06  --inst_subs_given                       false
% 0.90/1.06  --inst_orphan_elimination               true
% 0.90/1.06  --inst_learning_loop_flag               true
% 0.90/1.06  --inst_learning_start                   3000
% 0.90/1.06  --inst_learning_factor                  2
% 0.90/1.06  --inst_start_prop_sim_after_learn       3
% 0.90/1.06  --inst_sel_renew                        solver
% 0.90/1.06  --inst_lit_activity_flag                true
% 0.90/1.06  --inst_restr_to_given                   false
% 0.90/1.06  --inst_activity_threshold               500
% 0.90/1.06  --inst_out_proof                        true
% 0.90/1.06  
% 0.90/1.06  ------ Resolution Options
% 0.90/1.06  
% 0.90/1.06  --resolution_flag                       true
% 0.90/1.06  --res_lit_sel                           adaptive
% 0.90/1.06  --res_lit_sel_side                      none
% 0.90/1.06  --res_ordering                          kbo
% 0.90/1.06  --res_to_prop_solver                    active
% 0.90/1.06  --res_prop_simpl_new                    false
% 0.90/1.06  --res_prop_simpl_given                  true
% 0.90/1.06  --res_passive_queue_type                priority_queues
% 0.90/1.06  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.90/1.06  --res_passive_queues_freq               [15;5]
% 0.90/1.06  --res_forward_subs                      full
% 0.90/1.06  --res_backward_subs                     full
% 0.90/1.06  --res_forward_subs_resolution           true
% 0.90/1.06  --res_backward_subs_resolution          true
% 0.90/1.06  --res_orphan_elimination                true
% 0.90/1.06  --res_time_limit                        2.
% 0.90/1.06  --res_out_proof                         true
% 0.90/1.06  
% 0.90/1.06  ------ Superposition Options
% 0.90/1.06  
% 0.90/1.06  --superposition_flag                    true
% 0.90/1.06  --sup_passive_queue_type                priority_queues
% 0.90/1.06  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.90/1.06  --sup_passive_queues_freq               [8;1;4]
% 0.90/1.06  --demod_completeness_check              fast
% 0.90/1.06  --demod_use_ground                      true
% 0.90/1.06  --sup_to_prop_solver                    passive
% 0.90/1.06  --sup_prop_simpl_new                    true
% 0.90/1.06  --sup_prop_simpl_given                  true
% 0.90/1.06  --sup_fun_splitting                     false
% 0.90/1.06  --sup_smt_interval                      50000
% 0.90/1.06  
% 0.90/1.06  ------ Superposition Simplification Setup
% 0.90/1.06  
% 0.90/1.06  --sup_indices_passive                   []
% 0.90/1.06  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.06  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.06  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.06  --sup_full_triv                         [TrivRules;PropSubs]
% 0.90/1.06  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.06  --sup_full_bw                           [BwDemod]
% 0.90/1.06  --sup_immed_triv                        [TrivRules]
% 0.90/1.06  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.90/1.06  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.06  --sup_immed_bw_main                     []
% 0.90/1.06  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.90/1.06  --sup_input_triv                        [Unflattening;TrivRules]
% 0.90/1.06  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.06  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.90/1.06  
% 0.90/1.06  ------ Combination Options
% 0.90/1.06  
% 0.90/1.06  --comb_res_mult                         3
% 0.90/1.06  --comb_sup_mult                         2
% 0.90/1.06  --comb_inst_mult                        10
% 0.90/1.06  
% 0.90/1.06  ------ Debug Options
% 0.90/1.06  
% 0.90/1.06  --dbg_backtrace                         false
% 0.90/1.06  --dbg_dump_prop_clauses                 false
% 0.90/1.06  --dbg_dump_prop_clauses_file            -
% 0.90/1.06  --dbg_out_stat                          false
% 0.90/1.06  ------ Parsing...
% 0.90/1.06  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.90/1.06  
% 0.90/1.06  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 0.90/1.06  
% 0.90/1.06  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.90/1.06  
% 0.90/1.06  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.90/1.06  ------ Proving...
% 0.90/1.06  ------ Problem Properties 
% 0.90/1.06  
% 0.90/1.06  
% 0.90/1.06  clauses                                 19
% 0.90/1.06  conjectures                             1
% 0.90/1.06  EPR                                     5
% 0.90/1.06  Horn                                    13
% 0.90/1.06  unary                                   3
% 0.90/1.06  binary                                  12
% 0.90/1.06  lits                                    39
% 0.90/1.06  lits eq                                 6
% 0.90/1.06  fd_pure                                 0
% 0.90/1.06  fd_pseudo                               0
% 0.90/1.06  fd_cond                                 1
% 0.90/1.06  fd_pseudo_cond                          2
% 0.90/1.06  AC symbols                              0
% 0.90/1.06  
% 0.90/1.06  ------ Schedule dynamic 5 is on 
% 0.90/1.06  
% 0.90/1.06  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.90/1.06  
% 0.90/1.06  
% 0.90/1.06  ------ 
% 0.90/1.06  Current options:
% 0.90/1.06  ------ 
% 0.90/1.06  
% 0.90/1.06  ------ Input Options
% 0.90/1.06  
% 0.90/1.06  --out_options                           all
% 0.90/1.06  --tptp_safe_out                         true
% 0.90/1.06  --problem_path                          ""
% 0.90/1.06  --include_path                          ""
% 0.90/1.06  --clausifier                            res/vclausify_rel
% 0.90/1.06  --clausifier_options                    --mode clausify
% 0.90/1.06  --stdin                                 false
% 0.90/1.06  --stats_out                             all
% 0.90/1.06  
% 0.90/1.06  ------ General Options
% 0.90/1.06  
% 0.90/1.06  --fof                                   false
% 0.90/1.06  --time_out_real                         305.
% 0.90/1.06  --time_out_virtual                      -1.
% 0.90/1.06  --symbol_type_check                     false
% 0.90/1.06  --clausify_out                          false
% 0.90/1.06  --sig_cnt_out                           false
% 0.90/1.06  --trig_cnt_out                          false
% 0.90/1.06  --trig_cnt_out_tolerance                1.
% 0.90/1.06  --trig_cnt_out_sk_spl                   false
% 0.90/1.06  --abstr_cl_out                          false
% 0.90/1.06  
% 0.90/1.06  ------ Global Options
% 0.90/1.06  
% 0.90/1.06  --schedule                              default
% 0.90/1.06  --add_important_lit                     false
% 0.90/1.06  --prop_solver_per_cl                    1000
% 0.90/1.06  --min_unsat_core                        false
% 0.90/1.06  --soft_assumptions                      false
% 0.90/1.06  --soft_lemma_size                       3
% 0.90/1.06  --prop_impl_unit_size                   0
% 0.90/1.06  --prop_impl_unit                        []
% 0.90/1.06  --share_sel_clauses                     true
% 0.90/1.06  --reset_solvers                         false
% 0.90/1.06  --bc_imp_inh                            [conj_cone]
% 0.90/1.06  --conj_cone_tolerance                   3.
% 0.90/1.06  --extra_neg_conj                        none
% 0.90/1.06  --large_theory_mode                     true
% 0.90/1.06  --prolific_symb_bound                   200
% 0.90/1.06  --lt_threshold                          2000
% 0.90/1.06  --clause_weak_htbl                      true
% 0.90/1.06  --gc_record_bc_elim                     false
% 0.90/1.06  
% 0.90/1.06  ------ Preprocessing Options
% 0.90/1.06  
% 0.90/1.06  --preprocessing_flag                    true
% 0.90/1.06  --time_out_prep_mult                    0.1
% 0.90/1.06  --splitting_mode                        input
% 0.90/1.06  --splitting_grd                         true
% 0.90/1.06  --splitting_cvd                         false
% 0.90/1.06  --splitting_cvd_svl                     false
% 0.90/1.06  --splitting_nvd                         32
% 0.90/1.06  --sub_typing                            true
% 0.90/1.06  --prep_gs_sim                           true
% 0.90/1.06  --prep_unflatten                        true
% 0.90/1.06  --prep_res_sim                          true
% 0.90/1.06  --prep_upred                            true
% 0.90/1.06  --prep_sem_filter                       exhaustive
% 0.90/1.06  --prep_sem_filter_out                   false
% 0.90/1.06  --pred_elim                             true
% 0.90/1.06  --res_sim_input                         true
% 0.90/1.06  --eq_ax_congr_red                       true
% 0.90/1.06  --pure_diseq_elim                       true
% 0.90/1.06  --brand_transform                       false
% 0.90/1.06  --non_eq_to_eq                          false
% 0.90/1.06  --prep_def_merge                        true
% 0.90/1.06  --prep_def_merge_prop_impl              false
% 0.90/1.06  --prep_def_merge_mbd                    true
% 0.90/1.06  --prep_def_merge_tr_red                 false
% 0.90/1.06  --prep_def_merge_tr_cl                  false
% 0.90/1.06  --smt_preprocessing                     true
% 0.90/1.06  --smt_ac_axioms                         fast
% 0.90/1.06  --preprocessed_out                      false
% 0.90/1.06  --preprocessed_stats                    false
% 0.90/1.06  
% 0.90/1.06  ------ Abstraction refinement Options
% 0.90/1.06  
% 0.90/1.06  --abstr_ref                             []
% 0.90/1.06  --abstr_ref_prep                        false
% 0.90/1.06  --abstr_ref_until_sat                   false
% 0.90/1.06  --abstr_ref_sig_restrict                funpre
% 0.90/1.06  --abstr_ref_af_restrict_to_split_sk     false
% 0.90/1.06  --abstr_ref_under                       []
% 0.90/1.06  
% 0.90/1.06  ------ SAT Options
% 0.90/1.06  
% 0.90/1.06  --sat_mode                              false
% 0.90/1.06  --sat_fm_restart_options                ""
% 0.90/1.06  --sat_gr_def                            false
% 0.90/1.06  --sat_epr_types                         true
% 0.90/1.06  --sat_non_cyclic_types                  false
% 0.90/1.06  --sat_finite_models                     false
% 0.90/1.06  --sat_fm_lemmas                         false
% 0.90/1.06  --sat_fm_prep                           false
% 0.90/1.06  --sat_fm_uc_incr                        true
% 0.90/1.06  --sat_out_model                         small
% 0.90/1.06  --sat_out_clauses                       false
% 0.90/1.06  
% 0.90/1.06  ------ QBF Options
% 0.90/1.06  
% 0.90/1.06  --qbf_mode                              false
% 0.90/1.06  --qbf_elim_univ                         false
% 0.90/1.06  --qbf_dom_inst                          none
% 0.90/1.06  --qbf_dom_pre_inst                      false
% 0.90/1.06  --qbf_sk_in                             false
% 0.90/1.06  --qbf_pred_elim                         true
% 0.90/1.06  --qbf_split                             512
% 0.90/1.06  
% 0.90/1.06  ------ BMC1 Options
% 0.90/1.06  
% 0.90/1.06  --bmc1_incremental                      false
% 0.90/1.06  --bmc1_axioms                           reachable_all
% 0.90/1.06  --bmc1_min_bound                        0
% 0.90/1.06  --bmc1_max_bound                        -1
% 0.90/1.06  --bmc1_max_bound_default                -1
% 0.90/1.06  --bmc1_symbol_reachability              true
% 0.90/1.06  --bmc1_property_lemmas                  false
% 0.90/1.06  --bmc1_k_induction                      false
% 0.90/1.06  --bmc1_non_equiv_states                 false
% 0.90/1.06  --bmc1_deadlock                         false
% 0.90/1.06  --bmc1_ucm                              false
% 0.90/1.06  --bmc1_add_unsat_core                   none
% 0.90/1.06  --bmc1_unsat_core_children              false
% 0.90/1.06  --bmc1_unsat_core_extrapolate_axioms    false
% 0.90/1.06  --bmc1_out_stat                         full
% 0.90/1.06  --bmc1_ground_init                      false
% 0.90/1.06  --bmc1_pre_inst_next_state              false
% 0.90/1.06  --bmc1_pre_inst_state                   false
% 0.90/1.06  --bmc1_pre_inst_reach_state             false
% 0.90/1.06  --bmc1_out_unsat_core                   false
% 0.90/1.06  --bmc1_aig_witness_out                  false
% 0.90/1.06  --bmc1_verbose                          false
% 0.90/1.06  --bmc1_dump_clauses_tptp                false
% 0.90/1.06  --bmc1_dump_unsat_core_tptp             false
% 0.90/1.06  --bmc1_dump_file                        -
% 0.90/1.06  --bmc1_ucm_expand_uc_limit              128
% 0.90/1.06  --bmc1_ucm_n_expand_iterations          6
% 0.90/1.06  --bmc1_ucm_extend_mode                  1
% 0.90/1.06  --bmc1_ucm_init_mode                    2
% 0.90/1.06  --bmc1_ucm_cone_mode                    none
% 0.90/1.06  --bmc1_ucm_reduced_relation_type        0
% 0.90/1.06  --bmc1_ucm_relax_model                  4
% 0.90/1.06  --bmc1_ucm_full_tr_after_sat            true
% 0.90/1.06  --bmc1_ucm_expand_neg_assumptions       false
% 0.90/1.06  --bmc1_ucm_layered_model                none
% 0.90/1.06  --bmc1_ucm_max_lemma_size               10
% 0.90/1.06  
% 0.90/1.06  ------ AIG Options
% 0.90/1.06  
% 0.90/1.06  --aig_mode                              false
% 0.90/1.06  
% 0.90/1.06  ------ Instantiation Options
% 0.90/1.06  
% 0.90/1.06  --instantiation_flag                    true
% 0.90/1.06  --inst_sos_flag                         false
% 0.90/1.06  --inst_sos_phase                        true
% 0.90/1.06  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.90/1.06  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.90/1.06  --inst_lit_sel_side                     none
% 0.90/1.06  --inst_solver_per_active                1400
% 0.90/1.06  --inst_solver_calls_frac                1.
% 0.90/1.06  --inst_passive_queue_type               priority_queues
% 0.90/1.06  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.90/1.06  --inst_passive_queues_freq              [25;2]
% 0.90/1.06  --inst_dismatching                      true
% 0.90/1.06  --inst_eager_unprocessed_to_passive     true
% 0.90/1.06  --inst_prop_sim_given                   true
% 0.90/1.06  --inst_prop_sim_new                     false
% 0.90/1.06  --inst_subs_new                         false
% 0.90/1.06  --inst_eq_res_simp                      false
% 0.90/1.06  --inst_subs_given                       false
% 0.90/1.06  --inst_orphan_elimination               true
% 0.90/1.06  --inst_learning_loop_flag               true
% 0.90/1.06  --inst_learning_start                   3000
% 0.90/1.06  --inst_learning_factor                  2
% 0.90/1.06  --inst_start_prop_sim_after_learn       3
% 0.90/1.06  --inst_sel_renew                        solver
% 0.90/1.06  --inst_lit_activity_flag                true
% 0.90/1.06  --inst_restr_to_given                   false
% 0.90/1.06  --inst_activity_threshold               500
% 0.90/1.06  --inst_out_proof                        true
% 0.90/1.06  
% 0.90/1.06  ------ Resolution Options
% 0.90/1.06  
% 0.90/1.06  --resolution_flag                       false
% 0.90/1.06  --res_lit_sel                           adaptive
% 0.90/1.06  --res_lit_sel_side                      none
% 0.90/1.06  --res_ordering                          kbo
% 0.90/1.06  --res_to_prop_solver                    active
% 0.90/1.06  --res_prop_simpl_new                    false
% 0.90/1.06  --res_prop_simpl_given                  true
% 0.90/1.06  --res_passive_queue_type                priority_queues
% 0.90/1.06  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.90/1.06  --res_passive_queues_freq               [15;5]
% 0.90/1.06  --res_forward_subs                      full
% 0.90/1.06  --res_backward_subs                     full
% 0.90/1.06  --res_forward_subs_resolution           true
% 0.90/1.06  --res_backward_subs_resolution          true
% 0.90/1.06  --res_orphan_elimination                true
% 0.90/1.06  --res_time_limit                        2.
% 0.90/1.06  --res_out_proof                         true
% 0.90/1.06  
% 0.90/1.06  ------ Superposition Options
% 0.90/1.06  
% 0.90/1.06  --superposition_flag                    true
% 0.90/1.06  --sup_passive_queue_type                priority_queues
% 0.90/1.06  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.90/1.06  --sup_passive_queues_freq               [8;1;4]
% 0.90/1.06  --demod_completeness_check              fast
% 0.90/1.06  --demod_use_ground                      true
% 0.90/1.06  --sup_to_prop_solver                    passive
% 0.90/1.06  --sup_prop_simpl_new                    true
% 0.90/1.06  --sup_prop_simpl_given                  true
% 0.90/1.06  --sup_fun_splitting                     false
% 0.90/1.06  --sup_smt_interval                      50000
% 0.90/1.06  
% 0.90/1.06  ------ Superposition Simplification Setup
% 0.90/1.06  
% 0.90/1.06  --sup_indices_passive                   []
% 0.90/1.06  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.06  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.06  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.06  --sup_full_triv                         [TrivRules;PropSubs]
% 0.90/1.06  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.06  --sup_full_bw                           [BwDemod]
% 0.90/1.06  --sup_immed_triv                        [TrivRules]
% 0.90/1.06  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.90/1.06  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.06  --sup_immed_bw_main                     []
% 0.90/1.06  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.90/1.06  --sup_input_triv                        [Unflattening;TrivRules]
% 0.90/1.06  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.06  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.90/1.06  
% 0.90/1.06  ------ Combination Options
% 0.90/1.06  
% 0.90/1.06  --comb_res_mult                         3
% 0.90/1.06  --comb_sup_mult                         2
% 0.90/1.06  --comb_inst_mult                        10
% 0.90/1.06  
% 0.90/1.06  ------ Debug Options
% 0.90/1.06  
% 0.90/1.06  --dbg_backtrace                         false
% 0.90/1.06  --dbg_dump_prop_clauses                 false
% 0.90/1.06  --dbg_dump_prop_clauses_file            -
% 0.90/1.06  --dbg_out_stat                          false
% 0.90/1.06  
% 0.90/1.06  
% 0.90/1.06  
% 0.90/1.06  
% 0.90/1.06  ------ Proving...
% 0.90/1.06  
% 0.90/1.06  
% 0.90/1.06  % SZS status Theorem for theBenchmark.p
% 0.90/1.06  
% 0.90/1.06  % SZS output start CNFRefutation for theBenchmark.p
% 0.90/1.06  
% 0.90/1.06  fof(f4,axiom,(
% 0.90/1.06    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 0.90/1.07    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.90/1.07  
% 0.90/1.07  fof(f15,plain,(
% 0.90/1.07    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 0.90/1.07    inference(ennf_transformation,[],[f4])).
% 0.90/1.07  
% 0.90/1.07  fof(f28,plain,(
% 0.90/1.07    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK3(X0),X0))),
% 0.90/1.07    introduced(choice_axiom,[])).
% 0.90/1.07  
% 0.90/1.07  fof(f29,plain,(
% 0.90/1.07    ! [X0] : (r2_hidden(sK3(X0),X0) | k1_xboole_0 = X0)),
% 0.90/1.07    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f15,f28])).
% 0.90/1.07  
% 0.90/1.07  fof(f44,plain,(
% 0.90/1.07    ( ! [X0] : (r2_hidden(sK3(X0),X0) | k1_xboole_0 = X0) )),
% 0.90/1.07    inference(cnf_transformation,[],[f29])).
% 0.90/1.07  
% 0.90/1.07  fof(f7,axiom,(
% 0.90/1.07    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 0.90/1.07    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.90/1.07  
% 0.90/1.07  fof(f17,plain,(
% 0.90/1.07    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 0.90/1.07    inference(ennf_transformation,[],[f7])).
% 0.90/1.07  
% 0.90/1.07  fof(f34,plain,(
% 0.90/1.07    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 0.90/1.07    inference(nnf_transformation,[],[f17])).
% 0.90/1.07  
% 0.90/1.07  fof(f50,plain,(
% 0.90/1.07    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 0.90/1.07    inference(cnf_transformation,[],[f34])).
% 0.90/1.07  
% 0.90/1.07  fof(f9,conjecture,(
% 0.90/1.07    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ~(! [X2] : (m1_subset_1(X2,X0) => ~r2_hidden(X2,X1)) & k1_xboole_0 != X1))),
% 0.90/1.07    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.90/1.07  
% 0.90/1.07  fof(f10,negated_conjecture,(
% 0.90/1.07    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ~(! [X2] : (m1_subset_1(X2,X0) => ~r2_hidden(X2,X1)) & k1_xboole_0 != X1))),
% 0.90/1.07    inference(negated_conjecture,[],[f9])).
% 0.90/1.07  
% 0.90/1.07  fof(f18,plain,(
% 0.90/1.07    ? [X0,X1] : ((! [X2] : (~r2_hidden(X2,X1) | ~m1_subset_1(X2,X0)) & k1_xboole_0 != X1) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.90/1.07    inference(ennf_transformation,[],[f10])).
% 0.90/1.07  
% 0.90/1.07  fof(f19,plain,(
% 0.90/1.07    ? [X0,X1] : (! [X2] : (~r2_hidden(X2,X1) | ~m1_subset_1(X2,X0)) & k1_xboole_0 != X1 & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.90/1.07    inference(flattening,[],[f18])).
% 0.90/1.07  
% 0.90/1.07  fof(f35,plain,(
% 0.90/1.07    ? [X0,X1] : (! [X2] : (~r2_hidden(X2,X1) | ~m1_subset_1(X2,X0)) & k1_xboole_0 != X1 & m1_subset_1(X1,k1_zfmisc_1(X0))) => (! [X2] : (~r2_hidden(X2,sK6) | ~m1_subset_1(X2,sK5)) & k1_xboole_0 != sK6 & m1_subset_1(sK6,k1_zfmisc_1(sK5)))),
% 0.90/1.07    introduced(choice_axiom,[])).
% 0.90/1.07  
% 0.90/1.07  fof(f36,plain,(
% 0.90/1.07    ! [X2] : (~r2_hidden(X2,sK6) | ~m1_subset_1(X2,sK5)) & k1_xboole_0 != sK6 & m1_subset_1(sK6,k1_zfmisc_1(sK5))),
% 0.90/1.07    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6])],[f19,f35])).
% 0.90/1.07  
% 0.90/1.07  fof(f55,plain,(
% 0.90/1.07    m1_subset_1(sK6,k1_zfmisc_1(sK5))),
% 0.90/1.07    inference(cnf_transformation,[],[f36])).
% 0.90/1.07  
% 0.90/1.07  fof(f8,axiom,(
% 0.90/1.07    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 0.90/1.07    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.90/1.07  
% 0.90/1.07  fof(f54,plain,(
% 0.90/1.07    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 0.90/1.07    inference(cnf_transformation,[],[f8])).
% 0.90/1.07  
% 0.90/1.07  fof(f6,axiom,(
% 0.90/1.07    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 0.90/1.07    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.90/1.07  
% 0.90/1.07  fof(f30,plain,(
% 0.90/1.07    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.90/1.07    inference(nnf_transformation,[],[f6])).
% 0.90/1.07  
% 0.90/1.07  fof(f31,plain,(
% 0.90/1.07    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.90/1.07    inference(rectify,[],[f30])).
% 0.90/1.07  
% 0.90/1.07  fof(f32,plain,(
% 0.90/1.07    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK4(X0,X1),X0) | ~r2_hidden(sK4(X0,X1),X1)) & (r1_tarski(sK4(X0,X1),X0) | r2_hidden(sK4(X0,X1),X1))))),
% 0.90/1.07    introduced(choice_axiom,[])).
% 0.90/1.07  
% 0.90/1.07  fof(f33,plain,(
% 0.90/1.07    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK4(X0,X1),X0) | ~r2_hidden(sK4(X0,X1),X1)) & (r1_tarski(sK4(X0,X1),X0) | r2_hidden(sK4(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.90/1.07    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f31,f32])).
% 0.90/1.07  
% 0.90/1.07  fof(f46,plain,(
% 0.90/1.07    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 0.90/1.07    inference(cnf_transformation,[],[f33])).
% 0.90/1.07  
% 0.90/1.07  fof(f59,plain,(
% 0.90/1.07    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 0.90/1.07    inference(equality_resolution,[],[f46])).
% 0.90/1.07  
% 0.90/1.07  fof(f5,axiom,(
% 0.90/1.07    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.90/1.07    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.90/1.07  
% 0.90/1.07  fof(f16,plain,(
% 0.90/1.07    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.90/1.07    inference(ennf_transformation,[],[f5])).
% 0.90/1.07  
% 0.90/1.07  fof(f45,plain,(
% 0.90/1.07    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 0.90/1.07    inference(cnf_transformation,[],[f16])).
% 0.90/1.07  
% 0.90/1.07  fof(f3,axiom,(
% 0.90/1.07    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 0.90/1.07    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.90/1.07  
% 0.90/1.07  fof(f12,plain,(
% 0.90/1.07    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 0.90/1.07    inference(rectify,[],[f3])).
% 0.90/1.07  
% 0.90/1.07  fof(f14,plain,(
% 0.90/1.07    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 0.90/1.07    inference(ennf_transformation,[],[f12])).
% 0.90/1.07  
% 0.90/1.07  fof(f26,plain,(
% 0.90/1.07    ! [X1,X0] : (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) => r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)))),
% 0.90/1.07    introduced(choice_axiom,[])).
% 0.90/1.07  
% 0.90/1.07  fof(f27,plain,(
% 0.90/1.07    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 0.90/1.07    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f14,f26])).
% 0.90/1.07  
% 0.90/1.07  fof(f43,plain,(
% 0.90/1.07    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k3_xboole_0(X0,X1))) )),
% 0.90/1.07    inference(cnf_transformation,[],[f27])).
% 0.90/1.07  
% 0.90/1.07  fof(f2,axiom,(
% 0.90/1.07    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 0.90/1.07    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.90/1.07  
% 0.90/1.07  fof(f11,plain,(
% 0.90/1.07    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 0.90/1.07    inference(rectify,[],[f2])).
% 0.90/1.07  
% 0.90/1.07  fof(f13,plain,(
% 0.90/1.07    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 0.90/1.07    inference(ennf_transformation,[],[f11])).
% 0.90/1.07  
% 0.90/1.07  fof(f24,plain,(
% 0.90/1.07    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 0.90/1.07    introduced(choice_axiom,[])).
% 0.90/1.07  
% 0.90/1.07  fof(f25,plain,(
% 0.90/1.07    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 0.90/1.07    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f13,f24])).
% 0.90/1.07  
% 0.90/1.07  fof(f40,plain,(
% 0.90/1.07    ( ! [X0,X1] : (r2_hidden(sK1(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 0.90/1.07    inference(cnf_transformation,[],[f25])).
% 0.90/1.07  
% 0.90/1.07  fof(f39,plain,(
% 0.90/1.07    ( ! [X0,X1] : (r2_hidden(sK1(X0,X1),X0) | r1_xboole_0(X0,X1)) )),
% 0.90/1.07    inference(cnf_transformation,[],[f25])).
% 0.90/1.07  
% 0.90/1.07  fof(f51,plain,(
% 0.90/1.07    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 0.90/1.07    inference(cnf_transformation,[],[f34])).
% 0.90/1.07  
% 0.90/1.07  fof(f1,axiom,(
% 0.90/1.07    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 0.90/1.07    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.90/1.07  
% 0.90/1.07  fof(f20,plain,(
% 0.90/1.07    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 0.90/1.07    inference(nnf_transformation,[],[f1])).
% 0.90/1.07  
% 0.90/1.07  fof(f21,plain,(
% 0.90/1.07    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 0.90/1.07    inference(rectify,[],[f20])).
% 0.90/1.07  
% 0.90/1.07  fof(f22,plain,(
% 0.90/1.07    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 0.90/1.07    introduced(choice_axiom,[])).
% 0.90/1.07  
% 0.90/1.07  fof(f23,plain,(
% 0.90/1.07    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 0.90/1.07    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f22])).
% 0.90/1.07  
% 0.90/1.07  fof(f37,plain,(
% 0.90/1.07    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 0.90/1.07    inference(cnf_transformation,[],[f23])).
% 0.90/1.07  
% 0.90/1.07  fof(f57,plain,(
% 0.90/1.07    ( ! [X2] : (~r2_hidden(X2,sK6) | ~m1_subset_1(X2,sK5)) )),
% 0.90/1.07    inference(cnf_transformation,[],[f36])).
% 0.90/1.07  
% 0.90/1.07  fof(f56,plain,(
% 0.90/1.07    k1_xboole_0 != sK6),
% 0.90/1.07    inference(cnf_transformation,[],[f36])).
% 0.90/1.07  
% 0.90/1.07  cnf(c_7,plain,
% 0.90/1.07      ( r2_hidden(sK3(X0),X0) | k1_xboole_0 = X0 ),
% 0.90/1.07      inference(cnf_transformation,[],[f44]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1244,plain,
% 0.90/1.07      ( k1_xboole_0 = X0 | r2_hidden(sK3(X0),X0) = iProver_top ),
% 0.90/1.07      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_16,plain,
% 0.90/1.07      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 0.90/1.07      inference(cnf_transformation,[],[f50]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_20,negated_conjecture,
% 0.90/1.07      ( m1_subset_1(sK6,k1_zfmisc_1(sK5)) ),
% 0.90/1.07      inference(cnf_transformation,[],[f55]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_465,plain,
% 0.90/1.07      ( r2_hidden(X0,X1)
% 0.90/1.07      | v1_xboole_0(X1)
% 0.90/1.07      | k1_zfmisc_1(sK5) != X1
% 0.90/1.07      | sK6 != X0 ),
% 0.90/1.07      inference(resolution_lifted,[status(thm)],[c_16,c_20]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_466,plain,
% 0.90/1.07      ( r2_hidden(sK6,k1_zfmisc_1(sK5)) | v1_xboole_0(k1_zfmisc_1(sK5)) ),
% 0.90/1.07      inference(unflattening,[status(thm)],[c_465]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_17,plain,
% 0.90/1.07      ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
% 0.90/1.07      inference(cnf_transformation,[],[f54]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_472,plain,
% 0.90/1.07      ( r2_hidden(sK6,k1_zfmisc_1(sK5)) ),
% 0.90/1.07      inference(forward_subsumption_resolution,
% 0.90/1.07                [status(thm)],
% 0.90/1.07                [c_466,c_17]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1235,plain,
% 0.90/1.07      ( r2_hidden(sK6,k1_zfmisc_1(sK5)) = iProver_top ),
% 0.90/1.07      inference(predicate_to_equality,[status(thm)],[c_472]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_12,plain,
% 0.90/1.07      ( r1_tarski(X0,X1) | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
% 0.90/1.07      inference(cnf_transformation,[],[f59]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1239,plain,
% 0.90/1.07      ( r1_tarski(X0,X1) = iProver_top
% 0.90/1.07      | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
% 0.90/1.07      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1565,plain,
% 0.90/1.07      ( r1_tarski(sK6,sK5) = iProver_top ),
% 0.90/1.07      inference(superposition,[status(thm)],[c_1235,c_1239]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_8,plain,
% 0.90/1.07      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 0.90/1.07      inference(cnf_transformation,[],[f45]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1243,plain,
% 0.90/1.07      ( k3_xboole_0(X0,X1) = X0 | r1_tarski(X0,X1) != iProver_top ),
% 0.90/1.07      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_2066,plain,
% 0.90/1.07      ( k3_xboole_0(sK6,sK5) = sK6 ),
% 0.90/1.07      inference(superposition,[status(thm)],[c_1565,c_1243]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_5,plain,
% 0.90/1.07      ( ~ r1_xboole_0(X0,X1) | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ),
% 0.90/1.07      inference(cnf_transformation,[],[f43]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1246,plain,
% 0.90/1.07      ( r1_xboole_0(X0,X1) != iProver_top
% 0.90/1.07      | r2_hidden(X2,k3_xboole_0(X0,X1)) != iProver_top ),
% 0.90/1.07      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_2719,plain,
% 0.90/1.07      ( r1_xboole_0(sK6,sK5) != iProver_top
% 0.90/1.07      | r2_hidden(X0,sK6) != iProver_top ),
% 0.90/1.07      inference(superposition,[status(thm)],[c_2066,c_1246]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_3,plain,
% 0.90/1.07      ( r1_xboole_0(X0,X1) | r2_hidden(sK1(X0,X1),X1) ),
% 0.90/1.07      inference(cnf_transformation,[],[f40]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1248,plain,
% 0.90/1.07      ( r1_xboole_0(X0,X1) = iProver_top
% 0.90/1.07      | r2_hidden(sK1(X0,X1),X1) = iProver_top ),
% 0.90/1.07      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_4,plain,
% 0.90/1.07      ( r1_xboole_0(X0,X1) | r2_hidden(sK1(X0,X1),X0) ),
% 0.90/1.07      inference(cnf_transformation,[],[f39]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1247,plain,
% 0.90/1.07      ( r1_xboole_0(X0,X1) = iProver_top
% 0.90/1.07      | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
% 0.90/1.07      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_15,plain,
% 0.90/1.07      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 0.90/1.07      inference(cnf_transformation,[],[f51]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1,plain,
% 0.90/1.07      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 0.90/1.07      inference(cnf_transformation,[],[f37]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_120,plain,
% 0.90/1.07      ( ~ r2_hidden(X0,X1) | m1_subset_1(X0,X1) ),
% 0.90/1.07      inference(global_propositional_subsumption,
% 0.90/1.07                [status(thm)],
% 0.90/1.07                [c_15,c_1]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_121,plain,
% 0.90/1.07      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 0.90/1.07      inference(renaming,[status(thm)],[c_120]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_18,negated_conjecture,
% 0.90/1.07      ( ~ m1_subset_1(X0,sK5) | ~ r2_hidden(X0,sK6) ),
% 0.90/1.07      inference(cnf_transformation,[],[f57]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_440,plain,
% 0.90/1.07      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X2,sK6) | X2 != X0 | sK5 != X1 ),
% 0.90/1.07      inference(resolution_lifted,[status(thm)],[c_121,c_18]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_441,plain,
% 0.90/1.07      ( ~ r2_hidden(X0,sK5) | ~ r2_hidden(X0,sK6) ),
% 0.90/1.07      inference(unflattening,[status(thm)],[c_440]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1237,plain,
% 0.90/1.07      ( r2_hidden(X0,sK5) != iProver_top
% 0.90/1.07      | r2_hidden(X0,sK6) != iProver_top ),
% 0.90/1.07      inference(predicate_to_equality,[status(thm)],[c_441]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1778,plain,
% 0.90/1.07      ( r1_xboole_0(sK6,X0) = iProver_top
% 0.90/1.07      | r2_hidden(sK1(sK6,X0),sK5) != iProver_top ),
% 0.90/1.07      inference(superposition,[status(thm)],[c_1247,c_1237]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_2377,plain,
% 0.90/1.07      ( r1_xboole_0(sK6,sK5) = iProver_top ),
% 0.90/1.07      inference(superposition,[status(thm)],[c_1248,c_1778]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_3162,plain,
% 0.90/1.07      ( r2_hidden(X0,sK6) != iProver_top ),
% 0.90/1.07      inference(global_propositional_subsumption,
% 0.90/1.07                [status(thm)],
% 0.90/1.07                [c_2719,c_2377]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_3172,plain,
% 0.90/1.07      ( sK6 = k1_xboole_0 ),
% 0.90/1.07      inference(superposition,[status(thm)],[c_1244,c_3162]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_806,plain,( X0 = X0 ),theory(equality) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1469,plain,
% 0.90/1.07      ( k1_xboole_0 = k1_xboole_0 ),
% 0.90/1.07      inference(instantiation,[status(thm)],[c_806]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_807,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1445,plain,
% 0.90/1.07      ( sK6 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK6 ),
% 0.90/1.07      inference(instantiation,[status(thm)],[c_807]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_1468,plain,
% 0.90/1.07      ( sK6 != k1_xboole_0
% 0.90/1.07      | k1_xboole_0 = sK6
% 0.90/1.07      | k1_xboole_0 != k1_xboole_0 ),
% 0.90/1.07      inference(instantiation,[status(thm)],[c_1445]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(c_19,negated_conjecture,
% 0.90/1.07      ( k1_xboole_0 != sK6 ),
% 0.90/1.07      inference(cnf_transformation,[],[f56]) ).
% 0.90/1.07  
% 0.90/1.07  cnf(contradiction,plain,
% 0.90/1.07      ( $false ),
% 0.90/1.07      inference(minisat,[status(thm)],[c_3172,c_1469,c_1468,c_19]) ).
% 0.90/1.07  
% 0.90/1.07  
% 0.90/1.07  % SZS output end CNFRefutation for theBenchmark.p
% 0.90/1.07  
% 0.90/1.07  ------                               Statistics
% 0.90/1.07  
% 0.90/1.07  ------ General
% 0.90/1.07  
% 0.90/1.07  abstr_ref_over_cycles:                  0
% 0.90/1.07  abstr_ref_under_cycles:                 0
% 0.90/1.07  gc_basic_clause_elim:                   0
% 0.90/1.07  forced_gc_time:                         0
% 0.90/1.07  parsing_time:                           0.022
% 0.90/1.07  unif_index_cands_time:                  0.
% 0.90/1.07  unif_index_add_time:                    0.
% 0.90/1.07  orderings_time:                         0.
% 0.90/1.07  out_proof_time:                         0.009
% 0.90/1.07  total_time:                             0.195
% 0.90/1.07  num_of_symbols:                         46
% 0.90/1.07  num_of_terms:                           2557
% 0.90/1.07  
% 0.90/1.07  ------ Preprocessing
% 0.90/1.07  
% 0.90/1.07  num_of_splits:                          0
% 0.90/1.07  num_of_split_atoms:                     0
% 0.90/1.07  num_of_reused_defs:                     0
% 0.90/1.07  num_eq_ax_congr_red:                    39
% 0.90/1.07  num_of_sem_filtered_clauses:            1
% 0.90/1.07  num_of_subtypes:                        0
% 0.90/1.07  monotx_restored_types:                  0
% 0.90/1.07  sat_num_of_epr_types:                   0
% 0.90/1.07  sat_num_of_non_cyclic_types:            0
% 0.90/1.07  sat_guarded_non_collapsed_types:        0
% 0.90/1.07  num_pure_diseq_elim:                    0
% 0.90/1.07  simp_replaced_by:                       0
% 0.90/1.07  res_preprocessed:                       91
% 0.90/1.07  prep_upred:                             0
% 0.90/1.07  prep_unflattend:                        21
% 0.90/1.07  smt_new_axioms:                         0
% 0.90/1.07  pred_elim_cands:                        4
% 0.90/1.07  pred_elim:                              1
% 0.90/1.07  pred_elim_cl:                           2
% 0.90/1.07  pred_elim_cycles:                       6
% 0.90/1.07  merged_defs:                            8
% 0.90/1.07  merged_defs_ncl:                        0
% 0.90/1.07  bin_hyper_res:                          8
% 0.90/1.07  prep_cycles:                            4
% 0.90/1.07  pred_elim_time:                         0.017
% 0.90/1.07  splitting_time:                         0.
% 0.90/1.07  sem_filter_time:                        0.
% 0.90/1.07  monotx_time:                            0.006
% 0.90/1.07  subtype_inf_time:                       0.
% 0.90/1.07  
% 0.90/1.07  ------ Problem properties
% 0.90/1.07  
% 0.90/1.07  clauses:                                19
% 0.90/1.07  conjectures:                            1
% 0.90/1.07  epr:                                    5
% 0.90/1.07  horn:                                   13
% 0.90/1.07  ground:                                 3
% 0.90/1.07  unary:                                  3
% 0.90/1.07  binary:                                 12
% 0.90/1.07  lits:                                   39
% 0.90/1.07  lits_eq:                                6
% 0.90/1.07  fd_pure:                                0
% 0.90/1.07  fd_pseudo:                              0
% 0.90/1.07  fd_cond:                                1
% 0.90/1.07  fd_pseudo_cond:                         2
% 0.90/1.07  ac_symbols:                             0
% 0.90/1.07  
% 0.90/1.07  ------ Propositional Solver
% 0.90/1.07  
% 0.90/1.07  prop_solver_calls:                      27
% 0.90/1.07  prop_fast_solver_calls:                 536
% 0.90/1.07  smt_solver_calls:                       0
% 0.90/1.07  smt_fast_solver_calls:                  0
% 0.90/1.07  prop_num_of_clauses:                    1087
% 0.90/1.07  prop_preprocess_simplified:             4249
% 0.90/1.07  prop_fo_subsumed:                       6
% 0.90/1.07  prop_solver_time:                       0.
% 0.90/1.07  smt_solver_time:                        0.
% 0.90/1.07  smt_fast_solver_time:                   0.
% 0.90/1.07  prop_fast_solver_time:                  0.
% 0.90/1.07  prop_unsat_core_time:                   0.
% 0.90/1.07  
% 0.90/1.07  ------ QBF
% 0.90/1.07  
% 0.90/1.07  qbf_q_res:                              0
% 0.90/1.07  qbf_num_tautologies:                    0
% 0.90/1.07  qbf_prep_cycles:                        0
% 0.90/1.07  
% 0.90/1.07  ------ BMC1
% 0.90/1.07  
% 0.90/1.07  bmc1_current_bound:                     -1
% 0.90/1.07  bmc1_last_solved_bound:                 -1
% 0.90/1.07  bmc1_unsat_core_size:                   -1
% 0.90/1.07  bmc1_unsat_core_parents_size:           -1
% 0.90/1.07  bmc1_merge_next_fun:                    0
% 0.90/1.07  bmc1_unsat_core_clauses_time:           0.
% 0.90/1.07  
% 0.90/1.07  ------ Instantiation
% 0.90/1.07  
% 0.90/1.07  inst_num_of_clauses:                    296
% 0.90/1.07  inst_num_in_passive:                    77
% 0.90/1.07  inst_num_in_active:                     143
% 0.90/1.07  inst_num_in_unprocessed:                76
% 0.90/1.07  inst_num_of_loops:                      170
% 0.90/1.07  inst_num_of_learning_restarts:          0
% 0.90/1.07  inst_num_moves_active_passive:          25
% 0.90/1.07  inst_lit_activity:                      0
% 0.90/1.07  inst_lit_activity_moves:                0
% 0.90/1.07  inst_num_tautologies:                   0
% 0.90/1.07  inst_num_prop_implied:                  0
% 0.90/1.07  inst_num_existing_simplified:           0
% 0.90/1.07  inst_num_eq_res_simplified:             0
% 0.90/1.07  inst_num_child_elim:                    0
% 0.90/1.07  inst_num_of_dismatching_blockings:      67
% 0.90/1.07  inst_num_of_non_proper_insts:           188
% 0.90/1.07  inst_num_of_duplicates:                 0
% 0.90/1.07  inst_inst_num_from_inst_to_res:         0
% 0.90/1.07  inst_dismatching_checking_time:         0.
% 0.90/1.07  
% 0.90/1.07  ------ Resolution
% 0.90/1.07  
% 0.90/1.07  res_num_of_clauses:                     0
% 0.90/1.07  res_num_in_passive:                     0
% 0.90/1.07  res_num_in_active:                      0
% 0.90/1.07  res_num_of_loops:                       95
% 0.90/1.07  res_forward_subset_subsumed:            13
% 0.90/1.07  res_backward_subset_subsumed:           0
% 0.90/1.07  res_forward_subsumed:                   1
% 0.90/1.07  res_backward_subsumed:                  0
% 0.90/1.07  res_forward_subsumption_resolution:     1
% 0.90/1.07  res_backward_subsumption_resolution:    0
% 0.90/1.07  res_clause_to_clause_subsumption:       98
% 0.90/1.07  res_orphan_elimination:                 0
% 0.90/1.07  res_tautology_del:                      34
% 0.90/1.07  res_num_eq_res_simplified:              0
% 0.90/1.07  res_num_sel_changes:                    0
% 0.90/1.07  res_moves_from_active_to_pass:          0
% 0.90/1.07  
% 0.90/1.07  ------ Superposition
% 0.90/1.07  
% 0.90/1.07  sup_time_total:                         0.
% 0.90/1.07  sup_time_generating:                    0.
% 0.90/1.07  sup_time_sim_full:                      0.
% 0.90/1.07  sup_time_sim_immed:                     0.
% 0.90/1.07  
% 0.90/1.07  sup_num_of_clauses:                     51
% 0.90/1.07  sup_num_in_active:                      33
% 0.90/1.07  sup_num_in_passive:                     18
% 0.90/1.07  sup_num_of_loops:                       33
% 0.90/1.07  sup_fw_superposition:                   16
% 0.90/1.07  sup_bw_superposition:                   29
% 0.90/1.07  sup_immediate_simplified:               3
% 0.90/1.07  sup_given_eliminated:                   1
% 0.90/1.07  comparisons_done:                       0
% 0.90/1.07  comparisons_avoided:                    3
% 0.90/1.07  
% 0.90/1.07  ------ Simplifications
% 0.90/1.07  
% 0.90/1.07  
% 0.90/1.07  sim_fw_subset_subsumed:                 1
% 0.90/1.07  sim_bw_subset_subsumed:                 1
% 0.90/1.07  sim_fw_subsumed:                        2
% 0.90/1.07  sim_bw_subsumed:                        0
% 0.90/1.07  sim_fw_subsumption_res:                 0
% 0.90/1.07  sim_bw_subsumption_res:                 0
% 0.90/1.07  sim_tautology_del:                      3
% 0.90/1.07  sim_eq_tautology_del:                   0
% 0.90/1.07  sim_eq_res_simp:                        0
% 0.90/1.07  sim_fw_demodulated:                     0
% 0.90/1.07  sim_bw_demodulated:                     2
% 0.90/1.07  sim_light_normalised:                   0
% 0.90/1.07  sim_joinable_taut:                      0
% 0.90/1.07  sim_joinable_simp:                      0
% 0.90/1.07  sim_ac_normalised:                      0
% 0.90/1.07  sim_smt_subsumption:                    0
% 0.90/1.07  
%------------------------------------------------------------------------------
