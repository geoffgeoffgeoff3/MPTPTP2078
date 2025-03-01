%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:36:37 EST 2020

% Result     : Theorem 0.98s
% Output     : CNFRefutation 0.98s
% Verified   : 
% Statistics : Number of formulae       :   82 ( 123 expanded)
%              Number of clauses        :   42 (  46 expanded)
%              Number of leaves         :   12 (  24 expanded)
%              Depth                    :   13
%              Number of atoms          :  276 ( 442 expanded)
%              Number of equality atoms :   73 ( 111 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(X0,X1),X2)
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(k2_xboole_0(X0,X1),X2) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(k2_xboole_0(X0,X1),X2) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
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

fof(f21,plain,(
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
    inference(rectify,[],[f20])).

fof(f22,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK1(X0,X1),X0)
          | ~ r2_hidden(sK1(X0,X1),X1) )
        & ( r1_tarski(sK1(X0,X1),X0)
          | r2_hidden(sK1(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK1(X0,X1),X0)
            | ~ r2_hidden(sK1(X0,X1),X1) )
          & ( r1_tarski(sK1(X0,X1),X0)
            | r2_hidden(sK1(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f21,f22])).

fof(f39,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f51,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f39])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f18])).

fof(f33,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f19])).

fof(f49,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f33])).

fof(f40,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r1_tarski(X3,X0)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f50,plain,(
    ! [X0,X3] :
      ( r2_hidden(X3,k1_zfmisc_1(X0))
      | ~ r1_tarski(X3,X0) ) ),
    inference(equality_resolution,[],[f40])).

fof(f7,conjecture,(
    ! [X0,X1] :
      ( k2_xboole_0(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) = k1_zfmisc_1(k2_xboole_0(X0,X1))
     => r3_xboole_0(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k2_xboole_0(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) = k1_zfmisc_1(k2_xboole_0(X0,X1))
       => r3_xboole_0(X0,X1) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f12,plain,(
    ? [X0,X1] :
      ( ~ r3_xboole_0(X0,X1)
      & k2_xboole_0(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) = k1_zfmisc_1(k2_xboole_0(X0,X1)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f24,plain,
    ( ? [X0,X1] :
        ( ~ r3_xboole_0(X0,X1)
        & k2_xboole_0(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) = k1_zfmisc_1(k2_xboole_0(X0,X1)) )
   => ( ~ r3_xboole_0(sK2,sK3)
      & k2_xboole_0(k1_zfmisc_1(sK2),k1_zfmisc_1(sK3)) = k1_zfmisc_1(k2_xboole_0(sK2,sK3)) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,
    ( ~ r3_xboole_0(sK2,sK3)
    & k2_xboole_0(k1_zfmisc_1(sK2),k1_zfmisc_1(sK3)) = k1_zfmisc_1(k2_xboole_0(sK2,sK3)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f12,f24])).

fof(f43,plain,(
    k2_xboole_0(k1_zfmisc_1(sK2),k1_zfmisc_1(sK3)) = k1_zfmisc_1(k2_xboole_0(sK2,sK3)) ),
    inference(cnf_transformation,[],[f25])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) ) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) ) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f13])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f14])).

fof(f16,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( ~ r2_hidden(X3,X1)
              & ~ r2_hidden(X3,X0) )
            | ~ r2_hidden(X3,X2) )
          & ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0)
            | r2_hidden(X3,X2) ) )
     => ( ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
            & ~ r2_hidden(sK0(X0,X1,X2),X0) )
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( r2_hidden(sK0(X0,X1,X2),X1)
          | r2_hidden(sK0(X0,X1,X2),X0)
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ( ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
              & ~ r2_hidden(sK0(X0,X1,X2),X0) )
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( r2_hidden(sK0(X0,X1,X2),X1)
            | r2_hidden(sK0(X0,X1,X2),X0)
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f15,f16])).

fof(f27,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f17])).

fof(f47,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X1)
      | r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k2_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f27])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r3_xboole_0(X0,X1)
    <=> ( r1_tarski(X1,X0)
        | r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X1,X0)
        | r1_tarski(X0,X1) )
     => r3_xboole_0(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f4])).

fof(f10,plain,(
    ! [X0,X1] :
      ( r3_xboole_0(X0,X1)
      | ( ~ r1_tarski(X1,X0)
        & ~ r1_tarski(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f37,plain,(
    ! [X0,X1] :
      ( r3_xboole_0(X0,X1)
      | ~ r1_tarski(X1,X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f44,plain,(
    ~ r3_xboole_0(sK2,sK3) ),
    inference(cnf_transformation,[],[f25])).

fof(f36,plain,(
    ! [X0,X1] :
      ( r3_xboole_0(X0,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f35,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

cnf(c_12,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k2_xboole_0(X0,X2),X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_753,plain,
    ( ~ r1_tarski(k2_xboole_0(sK2,X0),sK3)
    | r1_tarski(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_4023,plain,
    ( ~ r1_tarski(k2_xboole_0(sK2,sK3),sK3)
    | r1_tarski(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_753])).

cnf(c_16,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1537,plain,
    ( r1_tarski(k2_xboole_0(X0,sK3),X1)
    | ~ r2_hidden(k2_xboole_0(X0,sK3),k1_zfmisc_1(X1)) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_4021,plain,
    ( r1_tarski(k2_xboole_0(sK2,sK3),sK3)
    | ~ r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK3)) ),
    inference(instantiation,[status(thm)],[c_1537])).

cnf(c_0,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_3722,plain,
    ( k2_xboole_0(sK3,X0) = k2_xboole_0(X0,sK3) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_3723,plain,
    ( k2_xboole_0(sK3,sK2) = k2_xboole_0(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_3722])).

cnf(c_9,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_728,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_15,plain,
    ( ~ r1_tarski(X0,X1)
    | r2_hidden(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_724,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r2_hidden(X0,k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_18,negated_conjecture,
    ( k2_xboole_0(k1_zfmisc_1(sK2),k1_zfmisc_1(sK3)) = k1_zfmisc_1(k2_xboole_0(sK2,sK3)) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_6,plain,
    ( r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r2_hidden(X0,k2_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_730,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r2_hidden(X0,k2_xboole_0(X2,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2273,plain,
    ( r2_hidden(X0,k1_zfmisc_1(k2_xboole_0(sK2,sK3))) != iProver_top
    | r2_hidden(X0,k1_zfmisc_1(sK3)) = iProver_top
    | r2_hidden(X0,k1_zfmisc_1(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_18,c_730])).

cnf(c_2282,plain,
    ( r1_tarski(X0,k2_xboole_0(sK2,sK3)) != iProver_top
    | r2_hidden(X0,k1_zfmisc_1(sK3)) = iProver_top
    | r2_hidden(X0,k1_zfmisc_1(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_724,c_2273])).

cnf(c_2900,plain,
    ( r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK3)) = iProver_top
    | r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_728,c_2282])).

cnf(c_2904,plain,
    ( r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK3))
    | r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK2)) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2900])).

cnf(c_387,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_925,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(k2_xboole_0(sK3,X2),k1_zfmisc_1(sK2))
    | k2_xboole_0(sK3,X2) != X0
    | k1_zfmisc_1(sK2) != X1 ),
    inference(instantiation,[status(thm)],[c_387])).

cnf(c_1519,plain,
    ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
    | r2_hidden(k2_xboole_0(sK3,X2),k1_zfmisc_1(sK2))
    | k2_xboole_0(sK3,X2) != X0
    | k1_zfmisc_1(sK2) != k1_zfmisc_1(X1) ),
    inference(instantiation,[status(thm)],[c_925])).

cnf(c_2514,plain,
    ( ~ r2_hidden(k2_xboole_0(X0,sK3),k1_zfmisc_1(X1))
    | r2_hidden(k2_xboole_0(sK3,X0),k1_zfmisc_1(sK2))
    | k2_xboole_0(sK3,X0) != k2_xboole_0(X0,sK3)
    | k1_zfmisc_1(sK2) != k1_zfmisc_1(X1) ),
    inference(instantiation,[status(thm)],[c_1519])).

cnf(c_2516,plain,
    ( r2_hidden(k2_xboole_0(sK3,sK2),k1_zfmisc_1(sK2))
    | ~ r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK2))
    | k2_xboole_0(sK3,sK2) != k2_xboole_0(sK2,sK3)
    | k1_zfmisc_1(sK2) != k1_zfmisc_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2514])).

cnf(c_823,plain,
    ( r1_tarski(k2_xboole_0(sK3,X0),sK2)
    | ~ r2_hidden(k2_xboole_0(sK3,X0),k1_zfmisc_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_825,plain,
    ( r1_tarski(k2_xboole_0(sK3,sK2),sK2)
    | ~ r2_hidden(k2_xboole_0(sK3,sK2),k1_zfmisc_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_823])).

cnf(c_766,plain,
    ( ~ r1_tarski(k2_xboole_0(sK3,X0),sK2)
    | r1_tarski(sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_771,plain,
    ( ~ r1_tarski(k2_xboole_0(sK3,sK2),sK2)
    | r1_tarski(sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_766])).

cnf(c_389,plain,
    ( X0 != X1
    | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
    theory(equality)).

cnf(c_392,plain,
    ( k1_zfmisc_1(sK2) = k1_zfmisc_1(sK2)
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_389])).

cnf(c_10,plain,
    ( r3_xboole_0(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_17,negated_conjecture,
    ( ~ r3_xboole_0(sK2,sK3) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_234,plain,
    ( ~ r1_tarski(X0,X1)
    | sK3 != X0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_17])).

cnf(c_235,plain,
    ( ~ r1_tarski(sK3,sK2) ),
    inference(unflattening,[status(thm)],[c_234])).

cnf(c_11,plain,
    ( r3_xboole_0(X0,X1)
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_227,plain,
    ( ~ r1_tarski(X0,X1)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_17])).

cnf(c_228,plain,
    ( ~ r1_tarski(sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_227])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_44,plain,
    ( ~ r1_tarski(sK2,sK2)
    | sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_40,plain,
    ( r1_tarski(sK2,sK2) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4023,c_4021,c_3723,c_2904,c_2516,c_825,c_771,c_392,c_235,c_228,c_44,c_40])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:44:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 0.98/1.05  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.98/1.05  
% 0.98/1.05  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.98/1.05  
% 0.98/1.05  ------  iProver source info
% 0.98/1.05  
% 0.98/1.05  git: date: 2020-06-30 10:37:57 +0100
% 0.98/1.05  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.98/1.05  git: non_committed_changes: false
% 0.98/1.05  git: last_make_outside_of_git: false
% 0.98/1.05  
% 0.98/1.05  ------ 
% 0.98/1.05  
% 0.98/1.05  ------ Input Options
% 0.98/1.05  
% 0.98/1.05  --out_options                           all
% 0.98/1.05  --tptp_safe_out                         true
% 0.98/1.05  --problem_path                          ""
% 0.98/1.05  --include_path                          ""
% 0.98/1.05  --clausifier                            res/vclausify_rel
% 0.98/1.05  --clausifier_options                    ""
% 0.98/1.05  --stdin                                 false
% 0.98/1.05  --stats_out                             all
% 0.98/1.05  
% 0.98/1.05  ------ General Options
% 0.98/1.05  
% 0.98/1.05  --fof                                   false
% 0.98/1.05  --time_out_real                         305.
% 0.98/1.05  --time_out_virtual                      -1.
% 0.98/1.05  --symbol_type_check                     false
% 0.98/1.05  --clausify_out                          false
% 0.98/1.05  --sig_cnt_out                           false
% 0.98/1.05  --trig_cnt_out                          false
% 0.98/1.05  --trig_cnt_out_tolerance                1.
% 0.98/1.05  --trig_cnt_out_sk_spl                   false
% 0.98/1.05  --abstr_cl_out                          false
% 0.98/1.05  
% 0.98/1.05  ------ Global Options
% 0.98/1.05  
% 0.98/1.05  --schedule                              default
% 0.98/1.05  --add_important_lit                     false
% 0.98/1.05  --prop_solver_per_cl                    1000
% 0.98/1.05  --min_unsat_core                        false
% 0.98/1.05  --soft_assumptions                      false
% 0.98/1.05  --soft_lemma_size                       3
% 0.98/1.05  --prop_impl_unit_size                   0
% 0.98/1.05  --prop_impl_unit                        []
% 0.98/1.05  --share_sel_clauses                     true
% 0.98/1.05  --reset_solvers                         false
% 0.98/1.05  --bc_imp_inh                            [conj_cone]
% 0.98/1.05  --conj_cone_tolerance                   3.
% 0.98/1.05  --extra_neg_conj                        none
% 0.98/1.05  --large_theory_mode                     true
% 0.98/1.05  --prolific_symb_bound                   200
% 0.98/1.05  --lt_threshold                          2000
% 0.98/1.05  --clause_weak_htbl                      true
% 0.98/1.05  --gc_record_bc_elim                     false
% 0.98/1.05  
% 0.98/1.05  ------ Preprocessing Options
% 0.98/1.05  
% 0.98/1.05  --preprocessing_flag                    true
% 0.98/1.05  --time_out_prep_mult                    0.1
% 0.98/1.05  --splitting_mode                        input
% 0.98/1.05  --splitting_grd                         true
% 0.98/1.05  --splitting_cvd                         false
% 0.98/1.05  --splitting_cvd_svl                     false
% 0.98/1.05  --splitting_nvd                         32
% 0.98/1.05  --sub_typing                            true
% 0.98/1.05  --prep_gs_sim                           true
% 0.98/1.05  --prep_unflatten                        true
% 0.98/1.05  --prep_res_sim                          true
% 0.98/1.05  --prep_upred                            true
% 0.98/1.05  --prep_sem_filter                       exhaustive
% 0.98/1.05  --prep_sem_filter_out                   false
% 0.98/1.05  --pred_elim                             true
% 0.98/1.05  --res_sim_input                         true
% 0.98/1.05  --eq_ax_congr_red                       true
% 0.98/1.05  --pure_diseq_elim                       true
% 0.98/1.05  --brand_transform                       false
% 0.98/1.05  --non_eq_to_eq                          false
% 0.98/1.05  --prep_def_merge                        true
% 0.98/1.05  --prep_def_merge_prop_impl              false
% 0.98/1.05  --prep_def_merge_mbd                    true
% 0.98/1.05  --prep_def_merge_tr_red                 false
% 0.98/1.05  --prep_def_merge_tr_cl                  false
% 0.98/1.05  --smt_preprocessing                     true
% 0.98/1.05  --smt_ac_axioms                         fast
% 0.98/1.05  --preprocessed_out                      false
% 0.98/1.05  --preprocessed_stats                    false
% 0.98/1.05  
% 0.98/1.05  ------ Abstraction refinement Options
% 0.98/1.05  
% 0.98/1.05  --abstr_ref                             []
% 0.98/1.05  --abstr_ref_prep                        false
% 0.98/1.05  --abstr_ref_until_sat                   false
% 0.98/1.05  --abstr_ref_sig_restrict                funpre
% 0.98/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 0.98/1.05  --abstr_ref_under                       []
% 0.98/1.05  
% 0.98/1.05  ------ SAT Options
% 0.98/1.05  
% 0.98/1.05  --sat_mode                              false
% 0.98/1.05  --sat_fm_restart_options                ""
% 0.98/1.05  --sat_gr_def                            false
% 0.98/1.05  --sat_epr_types                         true
% 0.98/1.05  --sat_non_cyclic_types                  false
% 0.98/1.05  --sat_finite_models                     false
% 0.98/1.05  --sat_fm_lemmas                         false
% 0.98/1.05  --sat_fm_prep                           false
% 0.98/1.05  --sat_fm_uc_incr                        true
% 0.98/1.05  --sat_out_model                         small
% 0.98/1.05  --sat_out_clauses                       false
% 0.98/1.05  
% 0.98/1.05  ------ QBF Options
% 0.98/1.05  
% 0.98/1.05  --qbf_mode                              false
% 0.98/1.05  --qbf_elim_univ                         false
% 0.98/1.05  --qbf_dom_inst                          none
% 0.98/1.05  --qbf_dom_pre_inst                      false
% 0.98/1.05  --qbf_sk_in                             false
% 0.98/1.05  --qbf_pred_elim                         true
% 0.98/1.05  --qbf_split                             512
% 0.98/1.05  
% 0.98/1.05  ------ BMC1 Options
% 0.98/1.05  
% 0.98/1.05  --bmc1_incremental                      false
% 0.98/1.05  --bmc1_axioms                           reachable_all
% 0.98/1.05  --bmc1_min_bound                        0
% 0.98/1.05  --bmc1_max_bound                        -1
% 0.98/1.05  --bmc1_max_bound_default                -1
% 0.98/1.05  --bmc1_symbol_reachability              true
% 0.98/1.05  --bmc1_property_lemmas                  false
% 0.98/1.05  --bmc1_k_induction                      false
% 0.98/1.05  --bmc1_non_equiv_states                 false
% 0.98/1.05  --bmc1_deadlock                         false
% 0.98/1.05  --bmc1_ucm                              false
% 0.98/1.05  --bmc1_add_unsat_core                   none
% 0.98/1.05  --bmc1_unsat_core_children              false
% 0.98/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 0.98/1.05  --bmc1_out_stat                         full
% 0.98/1.05  --bmc1_ground_init                      false
% 0.98/1.05  --bmc1_pre_inst_next_state              false
% 0.98/1.05  --bmc1_pre_inst_state                   false
% 0.98/1.05  --bmc1_pre_inst_reach_state             false
% 0.98/1.05  --bmc1_out_unsat_core                   false
% 0.98/1.05  --bmc1_aig_witness_out                  false
% 0.98/1.05  --bmc1_verbose                          false
% 0.98/1.05  --bmc1_dump_clauses_tptp                false
% 0.98/1.05  --bmc1_dump_unsat_core_tptp             false
% 0.98/1.05  --bmc1_dump_file                        -
% 0.98/1.05  --bmc1_ucm_expand_uc_limit              128
% 0.98/1.05  --bmc1_ucm_n_expand_iterations          6
% 0.98/1.05  --bmc1_ucm_extend_mode                  1
% 0.98/1.05  --bmc1_ucm_init_mode                    2
% 0.98/1.05  --bmc1_ucm_cone_mode                    none
% 0.98/1.05  --bmc1_ucm_reduced_relation_type        0
% 0.98/1.05  --bmc1_ucm_relax_model                  4
% 0.98/1.05  --bmc1_ucm_full_tr_after_sat            true
% 0.98/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 0.98/1.05  --bmc1_ucm_layered_model                none
% 0.98/1.05  --bmc1_ucm_max_lemma_size               10
% 0.98/1.05  
% 0.98/1.05  ------ AIG Options
% 0.98/1.05  
% 0.98/1.05  --aig_mode                              false
% 0.98/1.05  
% 0.98/1.05  ------ Instantiation Options
% 0.98/1.05  
% 0.98/1.05  --instantiation_flag                    true
% 0.98/1.05  --inst_sos_flag                         true
% 0.98/1.05  --inst_sos_phase                        true
% 0.98/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.98/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.98/1.05  --inst_lit_sel_side                     num_symb
% 0.98/1.05  --inst_solver_per_active                1400
% 0.98/1.05  --inst_solver_calls_frac                1.
% 0.98/1.05  --inst_passive_queue_type               priority_queues
% 0.98/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.98/1.05  --inst_passive_queues_freq              [25;2]
% 0.98/1.05  --inst_dismatching                      true
% 0.98/1.05  --inst_eager_unprocessed_to_passive     true
% 0.98/1.05  --inst_prop_sim_given                   true
% 0.98/1.05  --inst_prop_sim_new                     false
% 0.98/1.05  --inst_subs_new                         false
% 0.98/1.05  --inst_eq_res_simp                      false
% 0.98/1.05  --inst_subs_given                       false
% 0.98/1.05  --inst_orphan_elimination               true
% 0.98/1.05  --inst_learning_loop_flag               true
% 0.98/1.05  --inst_learning_start                   3000
% 0.98/1.05  --inst_learning_factor                  2
% 0.98/1.05  --inst_start_prop_sim_after_learn       3
% 0.98/1.05  --inst_sel_renew                        solver
% 0.98/1.05  --inst_lit_activity_flag                true
% 0.98/1.05  --inst_restr_to_given                   false
% 0.98/1.05  --inst_activity_threshold               500
% 0.98/1.05  --inst_out_proof                        true
% 0.98/1.05  
% 0.98/1.05  ------ Resolution Options
% 0.98/1.05  
% 0.98/1.05  --resolution_flag                       true
% 0.98/1.05  --res_lit_sel                           adaptive
% 0.98/1.05  --res_lit_sel_side                      none
% 0.98/1.05  --res_ordering                          kbo
% 0.98/1.05  --res_to_prop_solver                    active
% 0.98/1.05  --res_prop_simpl_new                    false
% 0.98/1.05  --res_prop_simpl_given                  true
% 0.98/1.05  --res_passive_queue_type                priority_queues
% 0.98/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.98/1.05  --res_passive_queues_freq               [15;5]
% 0.98/1.05  --res_forward_subs                      full
% 0.98/1.05  --res_backward_subs                     full
% 0.98/1.05  --res_forward_subs_resolution           true
% 0.98/1.05  --res_backward_subs_resolution          true
% 0.98/1.05  --res_orphan_elimination                true
% 0.98/1.05  --res_time_limit                        2.
% 0.98/1.05  --res_out_proof                         true
% 0.98/1.05  
% 0.98/1.05  ------ Superposition Options
% 0.98/1.05  
% 0.98/1.05  --superposition_flag                    true
% 0.98/1.05  --sup_passive_queue_type                priority_queues
% 0.98/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.98/1.05  --sup_passive_queues_freq               [8;1;4]
% 0.98/1.05  --demod_completeness_check              fast
% 0.98/1.05  --demod_use_ground                      true
% 0.98/1.05  --sup_to_prop_solver                    passive
% 0.98/1.05  --sup_prop_simpl_new                    true
% 0.98/1.05  --sup_prop_simpl_given                  true
% 0.98/1.05  --sup_fun_splitting                     true
% 0.98/1.05  --sup_smt_interval                      50000
% 0.98/1.05  
% 0.98/1.05  ------ Superposition Simplification Setup
% 0.98/1.05  
% 0.98/1.05  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 0.98/1.05  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 0.98/1.05  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 0.98/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 0.98/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 0.98/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 0.98/1.05  --sup_full_bw                           [BwDemod;BwSubsumption]
% 0.98/1.05  --sup_immed_triv                        [TrivRules]
% 0.98/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.98/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 0.98/1.05  --sup_immed_bw_main                     []
% 0.98/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 0.98/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 0.98/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 0.98/1.05  --sup_input_bw                          []
% 0.98/1.05  
% 0.98/1.05  ------ Combination Options
% 0.98/1.05  
% 0.98/1.05  --comb_res_mult                         3
% 0.98/1.05  --comb_sup_mult                         2
% 0.98/1.05  --comb_inst_mult                        10
% 0.98/1.05  
% 0.98/1.05  ------ Debug Options
% 0.98/1.05  
% 0.98/1.05  --dbg_backtrace                         false
% 0.98/1.05  --dbg_dump_prop_clauses                 false
% 0.98/1.05  --dbg_dump_prop_clauses_file            -
% 0.98/1.05  --dbg_out_stat                          false
% 0.98/1.05  ------ Parsing...
% 0.98/1.05  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.98/1.05  
% 0.98/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 0.98/1.05  
% 0.98/1.05  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.98/1.05  
% 0.98/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.98/1.05  ------ Proving...
% 0.98/1.05  ------ Problem Properties 
% 0.98/1.05  
% 0.98/1.05  
% 0.98/1.05  clauses                                 17
% 0.98/1.05  conjectures                             1
% 0.98/1.05  EPR                                     4
% 0.98/1.05  Horn                                    14
% 0.98/1.05  unary                                   5
% 0.98/1.05  binary                                  5
% 0.98/1.05  lits                                    37
% 0.98/1.05  lits eq                                 8
% 0.98/1.05  fd_pure                                 0
% 0.98/1.05  fd_pseudo                               0
% 0.98/1.05  fd_cond                                 0
% 0.98/1.05  fd_pseudo_cond                          6
% 0.98/1.05  AC symbols                              0
% 0.98/1.05  
% 0.98/1.05  ------ Schedule dynamic 5 is on 
% 0.98/1.05  
% 0.98/1.05  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.98/1.05  
% 0.98/1.05  
% 0.98/1.05  ------ 
% 0.98/1.05  Current options:
% 0.98/1.05  ------ 
% 0.98/1.05  
% 0.98/1.05  ------ Input Options
% 0.98/1.05  
% 0.98/1.05  --out_options                           all
% 0.98/1.05  --tptp_safe_out                         true
% 0.98/1.05  --problem_path                          ""
% 0.98/1.05  --include_path                          ""
% 0.98/1.05  --clausifier                            res/vclausify_rel
% 0.98/1.05  --clausifier_options                    ""
% 0.98/1.05  --stdin                                 false
% 0.98/1.05  --stats_out                             all
% 0.98/1.05  
% 0.98/1.05  ------ General Options
% 0.98/1.05  
% 0.98/1.05  --fof                                   false
% 0.98/1.05  --time_out_real                         305.
% 0.98/1.05  --time_out_virtual                      -1.
% 0.98/1.05  --symbol_type_check                     false
% 0.98/1.05  --clausify_out                          false
% 0.98/1.05  --sig_cnt_out                           false
% 0.98/1.05  --trig_cnt_out                          false
% 0.98/1.05  --trig_cnt_out_tolerance                1.
% 0.98/1.05  --trig_cnt_out_sk_spl                   false
% 0.98/1.05  --abstr_cl_out                          false
% 0.98/1.05  
% 0.98/1.05  ------ Global Options
% 0.98/1.05  
% 0.98/1.05  --schedule                              default
% 0.98/1.05  --add_important_lit                     false
% 0.98/1.05  --prop_solver_per_cl                    1000
% 0.98/1.05  --min_unsat_core                        false
% 0.98/1.05  --soft_assumptions                      false
% 0.98/1.05  --soft_lemma_size                       3
% 0.98/1.05  --prop_impl_unit_size                   0
% 0.98/1.05  --prop_impl_unit                        []
% 0.98/1.05  --share_sel_clauses                     true
% 0.98/1.05  --reset_solvers                         false
% 0.98/1.05  --bc_imp_inh                            [conj_cone]
% 0.98/1.05  --conj_cone_tolerance                   3.
% 0.98/1.05  --extra_neg_conj                        none
% 0.98/1.05  --large_theory_mode                     true
% 0.98/1.05  --prolific_symb_bound                   200
% 0.98/1.05  --lt_threshold                          2000
% 0.98/1.05  --clause_weak_htbl                      true
% 0.98/1.05  --gc_record_bc_elim                     false
% 0.98/1.05  
% 0.98/1.05  ------ Preprocessing Options
% 0.98/1.05  
% 0.98/1.05  --preprocessing_flag                    true
% 0.98/1.05  --time_out_prep_mult                    0.1
% 0.98/1.05  --splitting_mode                        input
% 0.98/1.05  --splitting_grd                         true
% 0.98/1.05  --splitting_cvd                         false
% 0.98/1.05  --splitting_cvd_svl                     false
% 0.98/1.05  --splitting_nvd                         32
% 0.98/1.05  --sub_typing                            true
% 0.98/1.05  --prep_gs_sim                           true
% 0.98/1.05  --prep_unflatten                        true
% 0.98/1.05  --prep_res_sim                          true
% 0.98/1.05  --prep_upred                            true
% 0.98/1.05  --prep_sem_filter                       exhaustive
% 0.98/1.05  --prep_sem_filter_out                   false
% 0.98/1.05  --pred_elim                             true
% 0.98/1.05  --res_sim_input                         true
% 0.98/1.05  --eq_ax_congr_red                       true
% 0.98/1.05  --pure_diseq_elim                       true
% 0.98/1.05  --brand_transform                       false
% 0.98/1.05  --non_eq_to_eq                          false
% 0.98/1.05  --prep_def_merge                        true
% 0.98/1.05  --prep_def_merge_prop_impl              false
% 0.98/1.05  --prep_def_merge_mbd                    true
% 0.98/1.05  --prep_def_merge_tr_red                 false
% 0.98/1.05  --prep_def_merge_tr_cl                  false
% 0.98/1.05  --smt_preprocessing                     true
% 0.98/1.05  --smt_ac_axioms                         fast
% 0.98/1.05  --preprocessed_out                      false
% 0.98/1.05  --preprocessed_stats                    false
% 0.98/1.05  
% 0.98/1.05  ------ Abstraction refinement Options
% 0.98/1.05  
% 0.98/1.05  --abstr_ref                             []
% 0.98/1.05  --abstr_ref_prep                        false
% 0.98/1.05  --abstr_ref_until_sat                   false
% 0.98/1.05  --abstr_ref_sig_restrict                funpre
% 0.98/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 0.98/1.05  --abstr_ref_under                       []
% 0.98/1.05  
% 0.98/1.05  ------ SAT Options
% 0.98/1.05  
% 0.98/1.05  --sat_mode                              false
% 0.98/1.05  --sat_fm_restart_options                ""
% 0.98/1.05  --sat_gr_def                            false
% 0.98/1.05  --sat_epr_types                         true
% 0.98/1.05  --sat_non_cyclic_types                  false
% 0.98/1.05  --sat_finite_models                     false
% 0.98/1.05  --sat_fm_lemmas                         false
% 0.98/1.05  --sat_fm_prep                           false
% 0.98/1.05  --sat_fm_uc_incr                        true
% 0.98/1.05  --sat_out_model                         small
% 0.98/1.05  --sat_out_clauses                       false
% 0.98/1.05  
% 0.98/1.05  ------ QBF Options
% 0.98/1.05  
% 0.98/1.05  --qbf_mode                              false
% 0.98/1.05  --qbf_elim_univ                         false
% 0.98/1.05  --qbf_dom_inst                          none
% 0.98/1.05  --qbf_dom_pre_inst                      false
% 0.98/1.05  --qbf_sk_in                             false
% 0.98/1.05  --qbf_pred_elim                         true
% 0.98/1.05  --qbf_split                             512
% 0.98/1.05  
% 0.98/1.05  ------ BMC1 Options
% 0.98/1.05  
% 0.98/1.05  --bmc1_incremental                      false
% 0.98/1.05  --bmc1_axioms                           reachable_all
% 0.98/1.05  --bmc1_min_bound                        0
% 0.98/1.05  --bmc1_max_bound                        -1
% 0.98/1.05  --bmc1_max_bound_default                -1
% 0.98/1.05  --bmc1_symbol_reachability              true
% 0.98/1.05  --bmc1_property_lemmas                  false
% 0.98/1.05  --bmc1_k_induction                      false
% 0.98/1.05  --bmc1_non_equiv_states                 false
% 0.98/1.05  --bmc1_deadlock                         false
% 0.98/1.05  --bmc1_ucm                              false
% 0.98/1.05  --bmc1_add_unsat_core                   none
% 0.98/1.05  --bmc1_unsat_core_children              false
% 0.98/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 0.98/1.05  --bmc1_out_stat                         full
% 0.98/1.05  --bmc1_ground_init                      false
% 0.98/1.05  --bmc1_pre_inst_next_state              false
% 0.98/1.05  --bmc1_pre_inst_state                   false
% 0.98/1.05  --bmc1_pre_inst_reach_state             false
% 0.98/1.05  --bmc1_out_unsat_core                   false
% 0.98/1.05  --bmc1_aig_witness_out                  false
% 0.98/1.05  --bmc1_verbose                          false
% 0.98/1.05  --bmc1_dump_clauses_tptp                false
% 0.98/1.05  --bmc1_dump_unsat_core_tptp             false
% 0.98/1.05  --bmc1_dump_file                        -
% 0.98/1.05  --bmc1_ucm_expand_uc_limit              128
% 0.98/1.05  --bmc1_ucm_n_expand_iterations          6
% 0.98/1.05  --bmc1_ucm_extend_mode                  1
% 0.98/1.05  --bmc1_ucm_init_mode                    2
% 0.98/1.05  --bmc1_ucm_cone_mode                    none
% 0.98/1.05  --bmc1_ucm_reduced_relation_type        0
% 0.98/1.05  --bmc1_ucm_relax_model                  4
% 0.98/1.05  --bmc1_ucm_full_tr_after_sat            true
% 0.98/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 0.98/1.05  --bmc1_ucm_layered_model                none
% 0.98/1.05  --bmc1_ucm_max_lemma_size               10
% 0.98/1.05  
% 0.98/1.05  ------ AIG Options
% 0.98/1.05  
% 0.98/1.05  --aig_mode                              false
% 0.98/1.05  
% 0.98/1.05  ------ Instantiation Options
% 0.98/1.05  
% 0.98/1.05  --instantiation_flag                    true
% 0.98/1.05  --inst_sos_flag                         true
% 0.98/1.05  --inst_sos_phase                        true
% 0.98/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.98/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.98/1.05  --inst_lit_sel_side                     none
% 0.98/1.05  --inst_solver_per_active                1400
% 0.98/1.05  --inst_solver_calls_frac                1.
% 0.98/1.05  --inst_passive_queue_type               priority_queues
% 0.98/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.98/1.05  --inst_passive_queues_freq              [25;2]
% 0.98/1.05  --inst_dismatching                      true
% 0.98/1.05  --inst_eager_unprocessed_to_passive     true
% 0.98/1.05  --inst_prop_sim_given                   true
% 0.98/1.05  --inst_prop_sim_new                     false
% 0.98/1.05  --inst_subs_new                         false
% 0.98/1.05  --inst_eq_res_simp                      false
% 0.98/1.05  --inst_subs_given                       false
% 0.98/1.05  --inst_orphan_elimination               true
% 0.98/1.05  --inst_learning_loop_flag               true
% 0.98/1.05  --inst_learning_start                   3000
% 0.98/1.05  --inst_learning_factor                  2
% 0.98/1.05  --inst_start_prop_sim_after_learn       3
% 0.98/1.05  --inst_sel_renew                        solver
% 0.98/1.05  --inst_lit_activity_flag                true
% 0.98/1.05  --inst_restr_to_given                   false
% 0.98/1.05  --inst_activity_threshold               500
% 0.98/1.05  --inst_out_proof                        true
% 0.98/1.05  
% 0.98/1.05  ------ Resolution Options
% 0.98/1.05  
% 0.98/1.05  --resolution_flag                       false
% 0.98/1.05  --res_lit_sel                           adaptive
% 0.98/1.05  --res_lit_sel_side                      none
% 0.98/1.05  --res_ordering                          kbo
% 0.98/1.05  --res_to_prop_solver                    active
% 0.98/1.05  --res_prop_simpl_new                    false
% 0.98/1.05  --res_prop_simpl_given                  true
% 0.98/1.05  --res_passive_queue_type                priority_queues
% 0.98/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.98/1.05  --res_passive_queues_freq               [15;5]
% 0.98/1.05  --res_forward_subs                      full
% 0.98/1.05  --res_backward_subs                     full
% 0.98/1.05  --res_forward_subs_resolution           true
% 0.98/1.05  --res_backward_subs_resolution          true
% 0.98/1.05  --res_orphan_elimination                true
% 0.98/1.05  --res_time_limit                        2.
% 0.98/1.05  --res_out_proof                         true
% 0.98/1.05  
% 0.98/1.05  ------ Superposition Options
% 0.98/1.05  
% 0.98/1.05  --superposition_flag                    true
% 0.98/1.05  --sup_passive_queue_type                priority_queues
% 0.98/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.98/1.05  --sup_passive_queues_freq               [8;1;4]
% 0.98/1.05  --demod_completeness_check              fast
% 0.98/1.05  --demod_use_ground                      true
% 0.98/1.05  --sup_to_prop_solver                    passive
% 0.98/1.05  --sup_prop_simpl_new                    true
% 0.98/1.05  --sup_prop_simpl_given                  true
% 0.98/1.05  --sup_fun_splitting                     true
% 0.98/1.05  --sup_smt_interval                      50000
% 0.98/1.05  
% 0.98/1.05  ------ Superposition Simplification Setup
% 0.98/1.05  
% 0.98/1.05  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 0.98/1.05  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 0.98/1.05  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 0.98/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 0.98/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 0.98/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 0.98/1.05  --sup_full_bw                           [BwDemod;BwSubsumption]
% 0.98/1.05  --sup_immed_triv                        [TrivRules]
% 0.98/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.98/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 0.98/1.05  --sup_immed_bw_main                     []
% 0.98/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 0.98/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 0.98/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 0.98/1.05  --sup_input_bw                          []
% 0.98/1.05  
% 0.98/1.05  ------ Combination Options
% 0.98/1.05  
% 0.98/1.05  --comb_res_mult                         3
% 0.98/1.05  --comb_sup_mult                         2
% 0.98/1.05  --comb_inst_mult                        10
% 0.98/1.05  
% 0.98/1.05  ------ Debug Options
% 0.98/1.05  
% 0.98/1.05  --dbg_backtrace                         false
% 0.98/1.05  --dbg_dump_prop_clauses                 false
% 0.98/1.05  --dbg_dump_prop_clauses_file            -
% 0.98/1.05  --dbg_out_stat                          false
% 0.98/1.05  
% 0.98/1.05  
% 0.98/1.05  
% 0.98/1.05  
% 0.98/1.05  ------ Proving...
% 0.98/1.05  
% 0.98/1.05  
% 0.98/1.05  % SZS status Theorem for theBenchmark.p
% 0.98/1.05  
% 0.98/1.05  % SZS output start CNFRefutation for theBenchmark.p
% 0.98/1.05  
% 0.98/1.05  fof(f5,axiom,(
% 0.98/1.05    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(X0,X1),X2) => r1_tarski(X0,X2))),
% 0.98/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/1.05  
% 0.98/1.05  fof(f11,plain,(
% 0.98/1.05    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(k2_xboole_0(X0,X1),X2))),
% 0.98/1.05    inference(ennf_transformation,[],[f5])).
% 0.98/1.05  
% 0.98/1.05  fof(f38,plain,(
% 0.98/1.05    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(k2_xboole_0(X0,X1),X2)) )),
% 0.98/1.05    inference(cnf_transformation,[],[f11])).
% 0.98/1.05  
% 0.98/1.05  fof(f6,axiom,(
% 0.98/1.05    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 0.98/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/1.05  
% 0.98/1.05  fof(f20,plain,(
% 0.98/1.05    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.98/1.05    inference(nnf_transformation,[],[f6])).
% 0.98/1.05  
% 0.98/1.05  fof(f21,plain,(
% 0.98/1.05    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.98/1.05    inference(rectify,[],[f20])).
% 0.98/1.05  
% 0.98/1.05  fof(f22,plain,(
% 0.98/1.05    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK1(X0,X1),X0) | ~r2_hidden(sK1(X0,X1),X1)) & (r1_tarski(sK1(X0,X1),X0) | r2_hidden(sK1(X0,X1),X1))))),
% 0.98/1.05    introduced(choice_axiom,[])).
% 0.98/1.05  
% 0.98/1.05  fof(f23,plain,(
% 0.98/1.05    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK1(X0,X1),X0) | ~r2_hidden(sK1(X0,X1),X1)) & (r1_tarski(sK1(X0,X1),X0) | r2_hidden(sK1(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.98/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f21,f22])).
% 0.98/1.05  
% 0.98/1.05  fof(f39,plain,(
% 0.98/1.05    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 0.98/1.05    inference(cnf_transformation,[],[f23])).
% 0.98/1.05  
% 0.98/1.05  fof(f51,plain,(
% 0.98/1.05    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 0.98/1.05    inference(equality_resolution,[],[f39])).
% 0.98/1.05  
% 0.98/1.05  fof(f1,axiom,(
% 0.98/1.05    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 0.98/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/1.05  
% 0.98/1.05  fof(f26,plain,(
% 0.98/1.05    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 0.98/1.05    inference(cnf_transformation,[],[f1])).
% 0.98/1.05  
% 0.98/1.05  fof(f3,axiom,(
% 0.98/1.05    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.98/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/1.05  
% 0.98/1.05  fof(f18,plain,(
% 0.98/1.05    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.98/1.05    inference(nnf_transformation,[],[f3])).
% 0.98/1.05  
% 0.98/1.05  fof(f19,plain,(
% 0.98/1.05    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.98/1.05    inference(flattening,[],[f18])).
% 0.98/1.05  
% 0.98/1.05  fof(f33,plain,(
% 0.98/1.05    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 0.98/1.05    inference(cnf_transformation,[],[f19])).
% 0.98/1.05  
% 0.98/1.05  fof(f49,plain,(
% 0.98/1.05    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 0.98/1.05    inference(equality_resolution,[],[f33])).
% 0.98/1.05  
% 0.98/1.05  fof(f40,plain,(
% 0.98/1.05    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r1_tarski(X3,X0) | k1_zfmisc_1(X0) != X1) )),
% 0.98/1.05    inference(cnf_transformation,[],[f23])).
% 0.98/1.05  
% 0.98/1.05  fof(f50,plain,(
% 0.98/1.05    ( ! [X0,X3] : (r2_hidden(X3,k1_zfmisc_1(X0)) | ~r1_tarski(X3,X0)) )),
% 0.98/1.05    inference(equality_resolution,[],[f40])).
% 0.98/1.05  
% 0.98/1.05  fof(f7,conjecture,(
% 0.98/1.05    ! [X0,X1] : (k2_xboole_0(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) = k1_zfmisc_1(k2_xboole_0(X0,X1)) => r3_xboole_0(X0,X1))),
% 0.98/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/1.05  
% 0.98/1.05  fof(f8,negated_conjecture,(
% 0.98/1.05    ~! [X0,X1] : (k2_xboole_0(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) = k1_zfmisc_1(k2_xboole_0(X0,X1)) => r3_xboole_0(X0,X1))),
% 0.98/1.05    inference(negated_conjecture,[],[f7])).
% 0.98/1.05  
% 0.98/1.05  fof(f12,plain,(
% 0.98/1.05    ? [X0,X1] : (~r3_xboole_0(X0,X1) & k2_xboole_0(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) = k1_zfmisc_1(k2_xboole_0(X0,X1)))),
% 0.98/1.05    inference(ennf_transformation,[],[f8])).
% 0.98/1.05  
% 0.98/1.05  fof(f24,plain,(
% 0.98/1.05    ? [X0,X1] : (~r3_xboole_0(X0,X1) & k2_xboole_0(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) = k1_zfmisc_1(k2_xboole_0(X0,X1))) => (~r3_xboole_0(sK2,sK3) & k2_xboole_0(k1_zfmisc_1(sK2),k1_zfmisc_1(sK3)) = k1_zfmisc_1(k2_xboole_0(sK2,sK3)))),
% 0.98/1.05    introduced(choice_axiom,[])).
% 0.98/1.05  
% 0.98/1.05  fof(f25,plain,(
% 0.98/1.05    ~r3_xboole_0(sK2,sK3) & k2_xboole_0(k1_zfmisc_1(sK2),k1_zfmisc_1(sK3)) = k1_zfmisc_1(k2_xboole_0(sK2,sK3))),
% 0.98/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f12,f24])).
% 0.98/1.05  
% 0.98/1.05  fof(f43,plain,(
% 0.98/1.05    k2_xboole_0(k1_zfmisc_1(sK2),k1_zfmisc_1(sK3)) = k1_zfmisc_1(k2_xboole_0(sK2,sK3))),
% 0.98/1.05    inference(cnf_transformation,[],[f25])).
% 0.98/1.05  
% 0.98/1.05  fof(f2,axiom,(
% 0.98/1.05    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 0.98/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/1.05  
% 0.98/1.05  fof(f13,plain,(
% 0.98/1.05    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.98/1.05    inference(nnf_transformation,[],[f2])).
% 0.98/1.05  
% 0.98/1.05  fof(f14,plain,(
% 0.98/1.05    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.98/1.05    inference(flattening,[],[f13])).
% 0.98/1.05  
% 0.98/1.05  fof(f15,plain,(
% 0.98/1.05    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.98/1.05    inference(rectify,[],[f14])).
% 0.98/1.05  
% 0.98/1.05  fof(f16,plain,(
% 0.98/1.05    ! [X2,X1,X0] : (? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2))) => (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 0.98/1.05    introduced(choice_axiom,[])).
% 0.98/1.05  
% 0.98/1.05  fof(f17,plain,(
% 0.98/1.05    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.98/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f15,f16])).
% 0.98/1.05  
% 0.98/1.05  fof(f27,plain,(
% 0.98/1.05    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k2_xboole_0(X0,X1) != X2) )),
% 0.98/1.05    inference(cnf_transformation,[],[f17])).
% 0.98/1.05  
% 0.98/1.05  fof(f47,plain,(
% 0.98/1.05    ( ! [X4,X0,X1] : (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,k2_xboole_0(X0,X1))) )),
% 0.98/1.05    inference(equality_resolution,[],[f27])).
% 0.98/1.05  
% 0.98/1.05  fof(f4,axiom,(
% 0.98/1.05    ! [X0,X1] : (r3_xboole_0(X0,X1) <=> (r1_tarski(X1,X0) | r1_tarski(X0,X1)))),
% 0.98/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.98/1.05  
% 0.98/1.05  fof(f9,plain,(
% 0.98/1.05    ! [X0,X1] : ((r1_tarski(X1,X0) | r1_tarski(X0,X1)) => r3_xboole_0(X0,X1))),
% 0.98/1.05    inference(unused_predicate_definition_removal,[],[f4])).
% 0.98/1.05  
% 0.98/1.05  fof(f10,plain,(
% 0.98/1.05    ! [X0,X1] : (r3_xboole_0(X0,X1) | (~r1_tarski(X1,X0) & ~r1_tarski(X0,X1)))),
% 0.98/1.05    inference(ennf_transformation,[],[f9])).
% 0.98/1.05  
% 0.98/1.05  fof(f37,plain,(
% 0.98/1.05    ( ! [X0,X1] : (r3_xboole_0(X0,X1) | ~r1_tarski(X1,X0)) )),
% 0.98/1.05    inference(cnf_transformation,[],[f10])).
% 0.98/1.05  
% 0.98/1.05  fof(f44,plain,(
% 0.98/1.05    ~r3_xboole_0(sK2,sK3)),
% 0.98/1.05    inference(cnf_transformation,[],[f25])).
% 0.98/1.05  
% 0.98/1.05  fof(f36,plain,(
% 0.98/1.05    ( ! [X0,X1] : (r3_xboole_0(X0,X1) | ~r1_tarski(X0,X1)) )),
% 0.98/1.05    inference(cnf_transformation,[],[f10])).
% 0.98/1.05  
% 0.98/1.05  fof(f35,plain,(
% 0.98/1.05    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 0.98/1.05    inference(cnf_transformation,[],[f19])).
% 0.98/1.05  
% 0.98/1.05  cnf(c_12,plain,
% 0.98/1.05      ( r1_tarski(X0,X1) | ~ r1_tarski(k2_xboole_0(X0,X2),X1) ),
% 0.98/1.05      inference(cnf_transformation,[],[f38]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_753,plain,
% 0.98/1.05      ( ~ r1_tarski(k2_xboole_0(sK2,X0),sK3) | r1_tarski(sK2,sK3) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_12]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_4023,plain,
% 0.98/1.05      ( ~ r1_tarski(k2_xboole_0(sK2,sK3),sK3) | r1_tarski(sK2,sK3) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_753]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_16,plain,
% 0.98/1.05      ( r1_tarski(X0,X1) | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
% 0.98/1.05      inference(cnf_transformation,[],[f51]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_1537,plain,
% 0.98/1.05      ( r1_tarski(k2_xboole_0(X0,sK3),X1)
% 0.98/1.05      | ~ r2_hidden(k2_xboole_0(X0,sK3),k1_zfmisc_1(X1)) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_16]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_4021,plain,
% 0.98/1.05      ( r1_tarski(k2_xboole_0(sK2,sK3),sK3)
% 0.98/1.05      | ~ r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK3)) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_1537]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_0,plain,
% 0.98/1.05      ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
% 0.98/1.05      inference(cnf_transformation,[],[f26]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_3722,plain,
% 0.98/1.05      ( k2_xboole_0(sK3,X0) = k2_xboole_0(X0,sK3) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_0]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_3723,plain,
% 0.98/1.05      ( k2_xboole_0(sK3,sK2) = k2_xboole_0(sK2,sK3) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_3722]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_9,plain,
% 0.98/1.05      ( r1_tarski(X0,X0) ),
% 0.98/1.05      inference(cnf_transformation,[],[f49]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_728,plain,
% 0.98/1.05      ( r1_tarski(X0,X0) = iProver_top ),
% 0.98/1.05      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_15,plain,
% 0.98/1.05      ( ~ r1_tarski(X0,X1) | r2_hidden(X0,k1_zfmisc_1(X1)) ),
% 0.98/1.05      inference(cnf_transformation,[],[f50]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_724,plain,
% 0.98/1.05      ( r1_tarski(X0,X1) != iProver_top
% 0.98/1.05      | r2_hidden(X0,k1_zfmisc_1(X1)) = iProver_top ),
% 0.98/1.05      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_18,negated_conjecture,
% 0.98/1.05      ( k2_xboole_0(k1_zfmisc_1(sK2),k1_zfmisc_1(sK3)) = k1_zfmisc_1(k2_xboole_0(sK2,sK3)) ),
% 0.98/1.05      inference(cnf_transformation,[],[f43]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_6,plain,
% 0.98/1.05      ( r2_hidden(X0,X1)
% 0.98/1.05      | r2_hidden(X0,X2)
% 0.98/1.05      | ~ r2_hidden(X0,k2_xboole_0(X2,X1)) ),
% 0.98/1.05      inference(cnf_transformation,[],[f47]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_730,plain,
% 0.98/1.05      ( r2_hidden(X0,X1) = iProver_top
% 0.98/1.05      | r2_hidden(X0,X2) = iProver_top
% 0.98/1.05      | r2_hidden(X0,k2_xboole_0(X2,X1)) != iProver_top ),
% 0.98/1.05      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_2273,plain,
% 0.98/1.05      ( r2_hidden(X0,k1_zfmisc_1(k2_xboole_0(sK2,sK3))) != iProver_top
% 0.98/1.05      | r2_hidden(X0,k1_zfmisc_1(sK3)) = iProver_top
% 0.98/1.05      | r2_hidden(X0,k1_zfmisc_1(sK2)) = iProver_top ),
% 0.98/1.05      inference(superposition,[status(thm)],[c_18,c_730]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_2282,plain,
% 0.98/1.05      ( r1_tarski(X0,k2_xboole_0(sK2,sK3)) != iProver_top
% 0.98/1.05      | r2_hidden(X0,k1_zfmisc_1(sK3)) = iProver_top
% 0.98/1.05      | r2_hidden(X0,k1_zfmisc_1(sK2)) = iProver_top ),
% 0.98/1.05      inference(superposition,[status(thm)],[c_724,c_2273]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_2900,plain,
% 0.98/1.05      ( r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK3)) = iProver_top
% 0.98/1.05      | r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK2)) = iProver_top ),
% 0.98/1.05      inference(superposition,[status(thm)],[c_728,c_2282]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_2904,plain,
% 0.98/1.05      ( r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK3))
% 0.98/1.05      | r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK2)) ),
% 0.98/1.05      inference(predicate_to_equality_rev,[status(thm)],[c_2900]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_387,plain,
% 0.98/1.05      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 0.98/1.05      theory(equality) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_925,plain,
% 0.98/1.05      ( ~ r2_hidden(X0,X1)
% 0.98/1.05      | r2_hidden(k2_xboole_0(sK3,X2),k1_zfmisc_1(sK2))
% 0.98/1.05      | k2_xboole_0(sK3,X2) != X0
% 0.98/1.05      | k1_zfmisc_1(sK2) != X1 ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_387]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_1519,plain,
% 0.98/1.05      ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
% 0.98/1.05      | r2_hidden(k2_xboole_0(sK3,X2),k1_zfmisc_1(sK2))
% 0.98/1.05      | k2_xboole_0(sK3,X2) != X0
% 0.98/1.05      | k1_zfmisc_1(sK2) != k1_zfmisc_1(X1) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_925]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_2514,plain,
% 0.98/1.05      ( ~ r2_hidden(k2_xboole_0(X0,sK3),k1_zfmisc_1(X1))
% 0.98/1.05      | r2_hidden(k2_xboole_0(sK3,X0),k1_zfmisc_1(sK2))
% 0.98/1.05      | k2_xboole_0(sK3,X0) != k2_xboole_0(X0,sK3)
% 0.98/1.05      | k1_zfmisc_1(sK2) != k1_zfmisc_1(X1) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_1519]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_2516,plain,
% 0.98/1.05      ( r2_hidden(k2_xboole_0(sK3,sK2),k1_zfmisc_1(sK2))
% 0.98/1.05      | ~ r2_hidden(k2_xboole_0(sK2,sK3),k1_zfmisc_1(sK2))
% 0.98/1.05      | k2_xboole_0(sK3,sK2) != k2_xboole_0(sK2,sK3)
% 0.98/1.05      | k1_zfmisc_1(sK2) != k1_zfmisc_1(sK2) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_2514]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_823,plain,
% 0.98/1.05      ( r1_tarski(k2_xboole_0(sK3,X0),sK2)
% 0.98/1.05      | ~ r2_hidden(k2_xboole_0(sK3,X0),k1_zfmisc_1(sK2)) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_16]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_825,plain,
% 0.98/1.05      ( r1_tarski(k2_xboole_0(sK3,sK2),sK2)
% 0.98/1.05      | ~ r2_hidden(k2_xboole_0(sK3,sK2),k1_zfmisc_1(sK2)) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_823]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_766,plain,
% 0.98/1.05      ( ~ r1_tarski(k2_xboole_0(sK3,X0),sK2) | r1_tarski(sK3,sK2) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_12]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_771,plain,
% 0.98/1.05      ( ~ r1_tarski(k2_xboole_0(sK3,sK2),sK2) | r1_tarski(sK3,sK2) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_766]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_389,plain,
% 0.98/1.05      ( X0 != X1 | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
% 0.98/1.05      theory(equality) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_392,plain,
% 0.98/1.05      ( k1_zfmisc_1(sK2) = k1_zfmisc_1(sK2) | sK2 != sK2 ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_389]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_10,plain,
% 0.98/1.05      ( r3_xboole_0(X0,X1) | ~ r1_tarski(X1,X0) ),
% 0.98/1.05      inference(cnf_transformation,[],[f37]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_17,negated_conjecture,
% 0.98/1.05      ( ~ r3_xboole_0(sK2,sK3) ),
% 0.98/1.05      inference(cnf_transformation,[],[f44]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_234,plain,
% 0.98/1.05      ( ~ r1_tarski(X0,X1) | sK3 != X0 | sK2 != X1 ),
% 0.98/1.05      inference(resolution_lifted,[status(thm)],[c_10,c_17]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_235,plain,
% 0.98/1.05      ( ~ r1_tarski(sK3,sK2) ),
% 0.98/1.05      inference(unflattening,[status(thm)],[c_234]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_11,plain,
% 0.98/1.05      ( r3_xboole_0(X0,X1) | ~ r1_tarski(X0,X1) ),
% 0.98/1.05      inference(cnf_transformation,[],[f36]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_227,plain,
% 0.98/1.05      ( ~ r1_tarski(X0,X1) | sK3 != X1 | sK2 != X0 ),
% 0.98/1.05      inference(resolution_lifted,[status(thm)],[c_11,c_17]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_228,plain,
% 0.98/1.05      ( ~ r1_tarski(sK2,sK3) ),
% 0.98/1.05      inference(unflattening,[status(thm)],[c_227]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_7,plain,
% 0.98/1.05      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 0.98/1.05      inference(cnf_transformation,[],[f35]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_44,plain,
% 0.98/1.05      ( ~ r1_tarski(sK2,sK2) | sK2 = sK2 ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_7]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(c_40,plain,
% 0.98/1.05      ( r1_tarski(sK2,sK2) ),
% 0.98/1.05      inference(instantiation,[status(thm)],[c_9]) ).
% 0.98/1.05  
% 0.98/1.05  cnf(contradiction,plain,
% 0.98/1.05      ( $false ),
% 0.98/1.05      inference(minisat,
% 0.98/1.05                [status(thm)],
% 0.98/1.05                [c_4023,c_4021,c_3723,c_2904,c_2516,c_825,c_771,c_392,
% 0.98/1.05                 c_235,c_228,c_44,c_40]) ).
% 0.98/1.05  
% 0.98/1.05  
% 0.98/1.05  % SZS output end CNFRefutation for theBenchmark.p
% 0.98/1.05  
% 0.98/1.05  ------                               Statistics
% 0.98/1.05  
% 0.98/1.05  ------ General
% 0.98/1.05  
% 0.98/1.05  abstr_ref_over_cycles:                  0
% 0.98/1.05  abstr_ref_under_cycles:                 0
% 0.98/1.05  gc_basic_clause_elim:                   0
% 0.98/1.05  forced_gc_time:                         0
% 0.98/1.05  parsing_time:                           0.012
% 0.98/1.05  unif_index_cands_time:                  0.
% 0.98/1.05  unif_index_add_time:                    0.
% 0.98/1.05  orderings_time:                         0.
% 0.98/1.05  out_proof_time:                         0.035
% 0.98/1.05  total_time:                             0.199
% 0.98/1.05  num_of_symbols:                         40
% 0.98/1.05  num_of_terms:                           4592
% 0.98/1.05  
% 0.98/1.05  ------ Preprocessing
% 0.98/1.05  
% 0.98/1.05  num_of_splits:                          0
% 0.98/1.05  num_of_split_atoms:                     0
% 0.98/1.05  num_of_reused_defs:                     0
% 0.98/1.05  num_eq_ax_congr_red:                    16
% 0.98/1.05  num_of_sem_filtered_clauses:            1
% 0.98/1.05  num_of_subtypes:                        0
% 0.98/1.05  monotx_restored_types:                  0
% 0.98/1.05  sat_num_of_epr_types:                   0
% 0.98/1.05  sat_num_of_non_cyclic_types:            0
% 0.98/1.05  sat_guarded_non_collapsed_types:        0
% 0.98/1.05  num_pure_diseq_elim:                    0
% 0.98/1.05  simp_replaced_by:                       0
% 0.98/1.05  res_preprocessed:                       82
% 0.98/1.05  prep_upred:                             0
% 0.98/1.05  prep_unflattend:                        4
% 0.98/1.05  smt_new_axioms:                         0
% 0.98/1.05  pred_elim_cands:                        2
% 0.98/1.05  pred_elim:                              1
% 0.98/1.05  pred_elim_cl:                           1
% 0.98/1.05  pred_elim_cycles:                       3
% 0.98/1.05  merged_defs:                            8
% 0.98/1.05  merged_defs_ncl:                        0
% 0.98/1.05  bin_hyper_res:                          8
% 0.98/1.05  prep_cycles:                            4
% 0.98/1.05  pred_elim_time:                         0.001
% 0.98/1.05  splitting_time:                         0.
% 0.98/1.05  sem_filter_time:                        0.
% 0.98/1.05  monotx_time:                            0.001
% 0.98/1.05  subtype_inf_time:                       0.
% 0.98/1.05  
% 0.98/1.05  ------ Problem properties
% 0.98/1.05  
% 0.98/1.05  clauses:                                17
% 0.98/1.05  conjectures:                            1
% 0.98/1.05  epr:                                    4
% 0.98/1.05  horn:                                   14
% 0.98/1.05  ground:                                 3
% 0.98/1.05  unary:                                  5
% 0.98/1.05  binary:                                 5
% 0.98/1.05  lits:                                   37
% 0.98/1.05  lits_eq:                                8
% 0.98/1.05  fd_pure:                                0
% 0.98/1.05  fd_pseudo:                              0
% 0.98/1.05  fd_cond:                                0
% 0.98/1.05  fd_pseudo_cond:                         6
% 0.98/1.05  ac_symbols:                             0
% 0.98/1.05  
% 0.98/1.05  ------ Propositional Solver
% 0.98/1.05  
% 0.98/1.05  prop_solver_calls:                      28
% 0.98/1.05  prop_fast_solver_calls:                 459
% 0.98/1.05  smt_solver_calls:                       0
% 0.98/1.05  smt_fast_solver_calls:                  0
% 0.98/1.05  prop_num_of_clauses:                    1871
% 0.98/1.05  prop_preprocess_simplified:             5546
% 0.98/1.05  prop_fo_subsumed:                       0
% 0.98/1.05  prop_solver_time:                       0.
% 0.98/1.05  smt_solver_time:                        0.
% 0.98/1.05  smt_fast_solver_time:                   0.
% 0.98/1.05  prop_fast_solver_time:                  0.
% 0.98/1.05  prop_unsat_core_time:                   0.
% 0.98/1.05  
% 0.98/1.05  ------ QBF
% 0.98/1.05  
% 0.98/1.05  qbf_q_res:                              0
% 0.98/1.05  qbf_num_tautologies:                    0
% 0.98/1.05  qbf_prep_cycles:                        0
% 0.98/1.05  
% 0.98/1.05  ------ BMC1
% 0.98/1.05  
% 0.98/1.05  bmc1_current_bound:                     -1
% 0.98/1.05  bmc1_last_solved_bound:                 -1
% 0.98/1.05  bmc1_unsat_core_size:                   -1
% 0.98/1.05  bmc1_unsat_core_parents_size:           -1
% 0.98/1.05  bmc1_merge_next_fun:                    0
% 0.98/1.05  bmc1_unsat_core_clauses_time:           0.
% 0.98/1.05  
% 0.98/1.05  ------ Instantiation
% 0.98/1.05  
% 0.98/1.05  inst_num_of_clauses:                    473
% 0.98/1.05  inst_num_in_passive:                    222
% 0.98/1.05  inst_num_in_active:                     175
% 0.98/1.05  inst_num_in_unprocessed:                75
% 0.98/1.05  inst_num_of_loops:                      218
% 0.98/1.05  inst_num_of_learning_restarts:          0
% 0.98/1.05  inst_num_moves_active_passive:          42
% 0.98/1.05  inst_lit_activity:                      0
% 0.98/1.05  inst_lit_activity_moves:                0
% 0.98/1.05  inst_num_tautologies:                   0
% 0.98/1.05  inst_num_prop_implied:                  0
% 0.98/1.05  inst_num_existing_simplified:           0
% 0.98/1.05  inst_num_eq_res_simplified:             0
% 0.98/1.05  inst_num_child_elim:                    0
% 0.98/1.05  inst_num_of_dismatching_blockings:      162
% 0.98/1.05  inst_num_of_non_proper_insts:           499
% 0.98/1.05  inst_num_of_duplicates:                 0
% 0.98/1.05  inst_inst_num_from_inst_to_res:         0
% 0.98/1.05  inst_dismatching_checking_time:         0.
% 0.98/1.05  
% 0.98/1.05  ------ Resolution
% 0.98/1.05  
% 0.98/1.05  res_num_of_clauses:                     0
% 0.98/1.05  res_num_in_passive:                     0
% 0.98/1.05  res_num_in_active:                      0
% 0.98/1.05  res_num_of_loops:                       86
% 0.98/1.05  res_forward_subset_subsumed:            47
% 0.98/1.05  res_backward_subset_subsumed:           0
% 0.98/1.05  res_forward_subsumed:                   0
% 0.98/1.05  res_backward_subsumed:                  0
% 0.98/1.05  res_forward_subsumption_resolution:     0
% 0.98/1.05  res_backward_subsumption_resolution:    0
% 0.98/1.05  res_clause_to_clause_subsumption:       433
% 0.98/1.05  res_orphan_elimination:                 0
% 0.98/1.05  res_tautology_del:                      26
% 0.98/1.05  res_num_eq_res_simplified:              0
% 0.98/1.05  res_num_sel_changes:                    0
% 0.98/1.05  res_moves_from_active_to_pass:          0
% 0.98/1.05  
% 0.98/1.05  ------ Superposition
% 0.98/1.05  
% 0.98/1.05  sup_time_total:                         0.
% 0.98/1.05  sup_time_generating:                    0.
% 0.98/1.05  sup_time_sim_full:                      0.
% 0.98/1.05  sup_time_sim_immed:                     0.
% 0.98/1.05  
% 0.98/1.05  sup_num_of_clauses:                     102
% 0.98/1.05  sup_num_in_active:                      42
% 0.98/1.05  sup_num_in_passive:                     60
% 0.98/1.05  sup_num_of_loops:                       42
% 0.98/1.05  sup_fw_superposition:                   77
% 0.98/1.05  sup_bw_superposition:                   53
% 0.98/1.05  sup_immediate_simplified:               4
% 0.98/1.05  sup_given_eliminated:                   0
% 0.98/1.05  comparisons_done:                       0
% 0.98/1.05  comparisons_avoided:                    0
% 0.98/1.05  
% 0.98/1.05  ------ Simplifications
% 0.98/1.05  
% 0.98/1.05  
% 0.98/1.05  sim_fw_subset_subsumed:                 3
% 0.98/1.05  sim_bw_subset_subsumed:                 0
% 0.98/1.05  sim_fw_subsumed:                        4
% 0.98/1.05  sim_bw_subsumed:                        0
% 0.98/1.05  sim_fw_subsumption_res:                 0
% 0.98/1.05  sim_bw_subsumption_res:                 0
% 0.98/1.05  sim_tautology_del:                      15
% 0.98/1.05  sim_eq_tautology_del:                   2
% 0.98/1.05  sim_eq_res_simp:                        6
% 0.98/1.05  sim_fw_demodulated:                     0
% 0.98/1.05  sim_bw_demodulated:                     0
% 0.98/1.05  sim_light_normalised:                   0
% 0.98/1.05  sim_joinable_taut:                      0
% 0.98/1.05  sim_joinable_simp:                      0
% 0.98/1.05  sim_ac_normalised:                      0
% 0.98/1.05  sim_smt_subsumption:                    0
% 0.98/1.05  
%------------------------------------------------------------------------------
