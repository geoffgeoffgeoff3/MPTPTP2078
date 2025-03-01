%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:53:40 EST 2020

% Result     : Theorem 2.44s
% Output     : CNFRefutation 2.44s
% Verified   : 
% Statistics : Number of formulae       :  126 ( 598 expanded)
%              Number of clauses        :   69 ( 180 expanded)
%              Number of leaves         :   16 ( 133 expanded)
%              Depth                    :   22
%              Number of atoms          :  409 (2565 expanded)
%              Number of equality atoms :   74 ( 198 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ~ ( ~ r2_hidden(X1,X0)
              & X0 != X1
              & ~ r2_hidden(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | X0 = X1
          | r2_hidden(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | X0 = X1
          | r2_hidden(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f48,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | X0 = X1
      | r2_hidden(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f11,conjecture,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ( r2_hidden(X0,X1)
          <=> r1_ordinal1(k1_ordinal1(X0),X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( v3_ordinal1(X0)
       => ! [X1] :
            ( v3_ordinal1(X1)
           => ( r2_hidden(X0,X1)
            <=> r1_ordinal1(k1_ordinal1(X0),X1) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f22,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( r2_hidden(X0,X1)
          <~> r1_ordinal1(k1_ordinal1(X0),X1) )
          & v3_ordinal1(X1) )
      & v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f30,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ r1_ordinal1(k1_ordinal1(X0),X1)
            | ~ r2_hidden(X0,X1) )
          & ( r1_ordinal1(k1_ordinal1(X0),X1)
            | r2_hidden(X0,X1) )
          & v3_ordinal1(X1) )
      & v3_ordinal1(X0) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f31,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ r1_ordinal1(k1_ordinal1(X0),X1)
            | ~ r2_hidden(X0,X1) )
          & ( r1_ordinal1(k1_ordinal1(X0),X1)
            | r2_hidden(X0,X1) )
          & v3_ordinal1(X1) )
      & v3_ordinal1(X0) ) ),
    inference(flattening,[],[f30])).

fof(f33,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( ~ r1_ordinal1(k1_ordinal1(X0),X1)
            | ~ r2_hidden(X0,X1) )
          & ( r1_ordinal1(k1_ordinal1(X0),X1)
            | r2_hidden(X0,X1) )
          & v3_ordinal1(X1) )
     => ( ( ~ r1_ordinal1(k1_ordinal1(X0),sK2)
          | ~ r2_hidden(X0,sK2) )
        & ( r1_ordinal1(k1_ordinal1(X0),sK2)
          | r2_hidden(X0,sK2) )
        & v3_ordinal1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( ~ r1_ordinal1(k1_ordinal1(X0),X1)
              | ~ r2_hidden(X0,X1) )
            & ( r1_ordinal1(k1_ordinal1(X0),X1)
              | r2_hidden(X0,X1) )
            & v3_ordinal1(X1) )
        & v3_ordinal1(X0) )
   => ( ? [X1] :
          ( ( ~ r1_ordinal1(k1_ordinal1(sK1),X1)
            | ~ r2_hidden(sK1,X1) )
          & ( r1_ordinal1(k1_ordinal1(sK1),X1)
            | r2_hidden(sK1,X1) )
          & v3_ordinal1(X1) )
      & v3_ordinal1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,
    ( ( ~ r1_ordinal1(k1_ordinal1(sK1),sK2)
      | ~ r2_hidden(sK1,sK2) )
    & ( r1_ordinal1(k1_ordinal1(sK1),sK2)
      | r2_hidden(sK1,sK2) )
    & v3_ordinal1(sK2)
    & v3_ordinal1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f31,f33,f32])).

fof(f52,plain,(
    v3_ordinal1(sK1) ),
    inference(cnf_transformation,[],[f34])).

fof(f53,plain,(
    v3_ordinal1(sK2) ),
    inference(cnf_transformation,[],[f34])).

fof(f9,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => v3_ordinal1(k1_ordinal1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( v3_ordinal1(k1_ordinal1(X0))
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f50,plain,(
    ! [X0] :
      ( v3_ordinal1(k1_ordinal1(X0))
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f4,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0] : k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f57,plain,(
    ! [X0] :
      ( v3_ordinal1(k2_xboole_0(X0,k1_tarski(X0)))
      | ~ v3_ordinal1(X0) ) ),
    inference(definition_unfolding,[],[f50,f44])).

fof(f8,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ( r2_hidden(X1,X0)
            | r1_ordinal1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | r1_ordinal1(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | r1_ordinal1(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f18])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | r1_ordinal1(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f55,plain,
    ( ~ r1_ordinal1(k1_ordinal1(sK1),sK2)
    | ~ r2_hidden(sK1,sK2) ),
    inference(cnf_transformation,[],[f34])).

fof(f58,plain,
    ( ~ r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
    | ~ r2_hidden(sK1,sK2) ),
    inference(definition_unfolding,[],[f55,f44])).

fof(f10,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ( v3_ordinal1(X1)
        & v3_ordinal1(X0) )
     => ( r1_ordinal1(X0,X1)
      <=> r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( r1_ordinal1(X0,X1)
      <=> r1_tarski(X0,X1) )
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( r1_ordinal1(X0,X1)
      <=> r1_tarski(X0,X1) )
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f14])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( ( r1_ordinal1(X0,X1)
          | ~ r1_tarski(X0,X1) )
        & ( r1_tarski(X0,X1)
          | ~ r1_ordinal1(X0,X1) ) )
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f45,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r1_ordinal1(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f54,plain,
    ( r1_ordinal1(k1_ordinal1(sK1),sK2)
    | r2_hidden(sK1,sK2) ),
    inference(cnf_transformation,[],[f34])).

fof(f59,plain,
    ( r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
    | r2_hidden(sK1,sK2) ),
    inference(definition_unfolding,[],[f54,f44])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
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

fof(f24,plain,(
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
    inference(flattening,[],[f23])).

fof(f25,plain,(
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
    inference(rectify,[],[f24])).

fof(f26,plain,(
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

fof(f27,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f25,f26])).

fof(f36,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f62,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X1)
      | r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k2_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f36])).

fof(f38,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f60,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k2_xboole_0(X0,X1))
      | ~ r2_hidden(X4,X1) ) ),
    inference(equality_resolution,[],[f38])).

fof(f37,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X0)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f61,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k2_xboole_0(X0,X1))
      | ~ r2_hidden(X4,X0) ) ),
    inference(equality_resolution,[],[f37])).

fof(f6,axiom,(
    ! [X0] : r2_hidden(X0,k1_ordinal1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0] : r2_hidden(X0,k1_ordinal1(X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f56,plain,(
    ! [X0] : r2_hidden(X0,k2_xboole_0(X0,k1_tarski(X0))) ),
    inference(definition_unfolding,[],[f47,f44])).

cnf(c_675,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1333,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X2,k1_tarski(X2))
    | X0 != X2
    | X1 != k1_tarski(X2) ),
    inference(instantiation,[status(thm)],[c_675])).

cnf(c_1626,plain,
    ( ~ r2_hidden(X0,k1_tarski(X0))
    | r2_hidden(X1,k1_tarski(X0))
    | X1 != X0
    | k1_tarski(X0) != k1_tarski(X0) ),
    inference(instantiation,[status(thm)],[c_1333])).

cnf(c_8004,plain,
    ( r2_hidden(sK2,k1_tarski(sK1))
    | ~ r2_hidden(sK1,k1_tarski(sK1))
    | k1_tarski(sK1) != k1_tarski(sK1)
    | sK2 != sK1 ),
    inference(instantiation,[status(thm)],[c_1626])).

cnf(c_12,plain,
    ( r2_hidden(X0,X1)
    | r2_hidden(X1,X0)
    | ~ v3_ordinal1(X0)
    | ~ v3_ordinal1(X1)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1087,plain,
    ( X0 = X1
    | r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X1,X0) = iProver_top
    | v3_ordinal1(X1) != iProver_top
    | v3_ordinal1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_19,negated_conjecture,
    ( v3_ordinal1(sK1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_18,negated_conjecture,
    ( v3_ordinal1(sK2) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_14,plain,
    ( ~ v3_ordinal1(X0)
    | v3_ordinal1(k2_xboole_0(X0,k1_tarski(X0))) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_28,plain,
    ( v3_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)))
    | ~ v3_ordinal1(sK1) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_13,plain,
    ( r1_ordinal1(X0,X1)
    | r2_hidden(X1,X0)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_16,negated_conjecture,
    ( ~ r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
    | ~ r2_hidden(sK1,sK2) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_161,plain,
    ( ~ r2_hidden(sK1,sK2)
    | ~ r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2) ),
    inference(prop_impl,[status(thm)],[c_16])).

cnf(c_162,plain,
    ( ~ r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
    | ~ r2_hidden(sK1,sK2) ),
    inference(renaming,[status(thm)],[c_161])).

cnf(c_364,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(sK1,sK2)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X0)
    | k2_xboole_0(sK1,k1_tarski(sK1)) != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_162])).

cnf(c_365,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
    | ~ r2_hidden(sK1,sK2)
    | ~ v3_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)))
    | ~ v3_ordinal1(sK2) ),
    inference(unflattening,[status(thm)],[c_364])).

cnf(c_575,plain,
    ( ~ r2_hidden(sK1,sK2)
    | r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) ),
    inference(prop_impl,[status(thm)],[c_19,c_18,c_28,c_365])).

cnf(c_576,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
    | ~ r2_hidden(sK1,sK2) ),
    inference(renaming,[status(thm)],[c_575])).

cnf(c_1082,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) = iProver_top
    | r2_hidden(sK1,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_576])).

cnf(c_367,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
    | ~ r2_hidden(sK1,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_365,c_19,c_18,c_28])).

cnf(c_369,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) = iProver_top
    | r2_hidden(sK1,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_367])).

cnf(c_15,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_hidden(X1,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_10,plain,
    ( ~ r1_ordinal1(X0,X1)
    | r1_tarski(X0,X1)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_17,negated_conjecture,
    ( r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
    | r2_hidden(sK1,sK2) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_163,plain,
    ( r2_hidden(sK1,sK2)
    | r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2) ),
    inference(prop_impl,[status(thm)],[c_17])).

cnf(c_164,plain,
    ( r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
    | r2_hidden(sK1,sK2) ),
    inference(renaming,[status(thm)],[c_163])).

cnf(c_392,plain,
    ( r1_tarski(X0,X1)
    | r2_hidden(sK1,sK2)
    | ~ v3_ordinal1(X0)
    | ~ v3_ordinal1(X1)
    | k2_xboole_0(sK1,k1_tarski(sK1)) != X0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_164])).

cnf(c_393,plain,
    ( r1_tarski(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
    | r2_hidden(sK1,sK2)
    | ~ v3_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)))
    | ~ v3_ordinal1(sK2) ),
    inference(unflattening,[status(thm)],[c_392])).

cnf(c_395,plain,
    ( r1_tarski(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
    | r2_hidden(sK1,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_393,c_19,c_18,c_28])).

cnf(c_483,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(sK1,sK2)
    | k2_xboole_0(sK1,k1_tarski(sK1)) != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_395])).

cnf(c_484,plain,
    ( ~ r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
    | r2_hidden(sK1,sK2) ),
    inference(unflattening,[status(thm)],[c_483])).

cnf(c_573,plain,
    ( r2_hidden(sK1,sK2)
    | ~ r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) ),
    inference(prop_impl,[status(thm)],[c_484])).

cnf(c_574,plain,
    ( ~ r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
    | r2_hidden(sK1,sK2) ),
    inference(renaming,[status(thm)],[c_573])).

cnf(c_1078,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) != iProver_top
    | r2_hidden(sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_574])).

cnf(c_485,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) != iProver_top
    | r2_hidden(sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_484])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X1,X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_1229,plain,
    ( ~ r2_hidden(sK2,sK1)
    | ~ r2_hidden(sK1,sK2) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_1230,plain,
    ( r2_hidden(sK2,sK1) != iProver_top
    | r2_hidden(sK1,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1229])).

cnf(c_7,plain,
    ( r1_tarski(k1_tarski(X0),X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_159,plain,
    ( ~ r2_hidden(X0,X1)
    | r1_tarski(k1_tarski(X0),X1) ),
    inference(prop_impl,[status(thm)],[c_7])).

cnf(c_160,plain,
    ( r1_tarski(k1_tarski(X0),X1)
    | ~ r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_159])).

cnf(c_423,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X2,X3)
    | X2 != X1
    | k1_tarski(X0) != X3 ),
    inference(resolution_lifted,[status(thm)],[c_160,c_15])).

cnf(c_424,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X1,k1_tarski(X0)) ),
    inference(unflattening,[status(thm)],[c_423])).

cnf(c_1240,plain,
    ( ~ r2_hidden(sK2,k1_tarski(sK1))
    | ~ r2_hidden(sK1,sK2) ),
    inference(instantiation,[status(thm)],[c_424])).

cnf(c_1241,plain,
    ( r2_hidden(sK2,k1_tarski(sK1)) != iProver_top
    | r2_hidden(sK1,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1240])).

cnf(c_6,plain,
    ( r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r2_hidden(X0,k2_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1290,plain,
    ( ~ r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
    | r2_hidden(sK2,k1_tarski(sK1))
    | r2_hidden(sK2,sK1) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1291,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) != iProver_top
    | r2_hidden(sK2,k1_tarski(sK1)) = iProver_top
    | r2_hidden(sK2,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1290])).

cnf(c_1484,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1078,c_485,c_1230,c_1241,c_1291])).

cnf(c_2232,plain,
    ( r2_hidden(sK1,sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1082,c_369,c_485,c_1230,c_1241,c_1291])).

cnf(c_3054,plain,
    ( sK2 = sK1
    | r2_hidden(sK2,sK1) = iProver_top
    | v3_ordinal1(sK2) != iProver_top
    | v3_ordinal1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1087,c_2232])).

cnf(c_4,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k2_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1091,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k2_xboole_0(X2,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1495,plain,
    ( r2_hidden(sK2,k1_tarski(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1091,c_1484])).

cnf(c_1506,plain,
    ( ~ r2_hidden(sK2,k1_tarski(sK1)) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1495])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k2_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1090,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k2_xboole_0(X1,X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1489,plain,
    ( r2_hidden(sK2,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1090,c_1484])).

cnf(c_1285,plain,
    ( r2_hidden(X0,X0)
    | ~ r2_hidden(X0,k2_xboole_0(X0,k1_tarski(X0)))
    | r2_hidden(X0,k1_tarski(X0)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1287,plain,
    ( ~ r2_hidden(sK1,k2_xboole_0(sK1,k1_tarski(sK1)))
    | r2_hidden(sK1,k1_tarski(sK1))
    | r2_hidden(sK1,sK1) ),
    inference(instantiation,[status(thm)],[c_1285])).

cnf(c_677,plain,
    ( X0 != X1
    | k1_tarski(X0) = k1_tarski(X1) ),
    theory(equality)).

cnf(c_681,plain,
    ( k1_tarski(sK1) = k1_tarski(sK1)
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_677])).

cnf(c_66,plain,
    ( ~ r2_hidden(sK1,sK1) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_11,plain,
    ( r2_hidden(X0,k2_xboole_0(X0,k1_tarski(X0))) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_37,plain,
    ( r2_hidden(sK1,k2_xboole_0(sK1,k1_tarski(sK1))) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_34,plain,
    ( r2_hidden(sK1,sK1)
    | ~ v3_ordinal1(sK1)
    | sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_21,plain,
    ( v3_ordinal1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_20,plain,
    ( v3_ordinal1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8004,c_3054,c_1506,c_1489,c_1287,c_681,c_66,c_37,c_34,c_21,c_20,c_19])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n005.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 13:11:47 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.44/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.44/0.98  
% 2.44/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.44/0.98  
% 2.44/0.98  ------  iProver source info
% 2.44/0.98  
% 2.44/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.44/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.44/0.98  git: non_committed_changes: false
% 2.44/0.98  git: last_make_outside_of_git: false
% 2.44/0.98  
% 2.44/0.98  ------ 
% 2.44/0.98  
% 2.44/0.98  ------ Input Options
% 2.44/0.98  
% 2.44/0.98  --out_options                           all
% 2.44/0.98  --tptp_safe_out                         true
% 2.44/0.98  --problem_path                          ""
% 2.44/0.98  --include_path                          ""
% 2.44/0.98  --clausifier                            res/vclausify_rel
% 2.44/0.98  --clausifier_options                    --mode clausify
% 2.44/0.98  --stdin                                 false
% 2.44/0.98  --stats_out                             all
% 2.44/0.98  
% 2.44/0.98  ------ General Options
% 2.44/0.98  
% 2.44/0.98  --fof                                   false
% 2.44/0.98  --time_out_real                         305.
% 2.44/0.98  --time_out_virtual                      -1.
% 2.44/0.98  --symbol_type_check                     false
% 2.44/0.98  --clausify_out                          false
% 2.44/0.98  --sig_cnt_out                           false
% 2.44/0.98  --trig_cnt_out                          false
% 2.44/0.98  --trig_cnt_out_tolerance                1.
% 2.44/0.98  --trig_cnt_out_sk_spl                   false
% 2.44/0.98  --abstr_cl_out                          false
% 2.44/0.98  
% 2.44/0.98  ------ Global Options
% 2.44/0.98  
% 2.44/0.98  --schedule                              default
% 2.44/0.98  --add_important_lit                     false
% 2.44/0.98  --prop_solver_per_cl                    1000
% 2.44/0.98  --min_unsat_core                        false
% 2.44/0.98  --soft_assumptions                      false
% 2.44/0.98  --soft_lemma_size                       3
% 2.44/0.98  --prop_impl_unit_size                   0
% 2.44/0.98  --prop_impl_unit                        []
% 2.44/0.98  --share_sel_clauses                     true
% 2.44/0.98  --reset_solvers                         false
% 2.44/0.98  --bc_imp_inh                            [conj_cone]
% 2.44/0.98  --conj_cone_tolerance                   3.
% 2.44/0.98  --extra_neg_conj                        none
% 2.44/0.98  --large_theory_mode                     true
% 2.44/0.98  --prolific_symb_bound                   200
% 2.44/0.98  --lt_threshold                          2000
% 2.44/0.98  --clause_weak_htbl                      true
% 2.44/0.98  --gc_record_bc_elim                     false
% 2.44/0.98  
% 2.44/0.98  ------ Preprocessing Options
% 2.44/0.98  
% 2.44/0.98  --preprocessing_flag                    true
% 2.44/0.98  --time_out_prep_mult                    0.1
% 2.44/0.98  --splitting_mode                        input
% 2.44/0.98  --splitting_grd                         true
% 2.44/0.98  --splitting_cvd                         false
% 2.44/0.98  --splitting_cvd_svl                     false
% 2.44/0.98  --splitting_nvd                         32
% 2.44/0.98  --sub_typing                            true
% 2.44/0.98  --prep_gs_sim                           true
% 2.44/0.98  --prep_unflatten                        true
% 2.44/0.98  --prep_res_sim                          true
% 2.44/0.98  --prep_upred                            true
% 2.44/0.98  --prep_sem_filter                       exhaustive
% 2.44/0.98  --prep_sem_filter_out                   false
% 2.44/0.98  --pred_elim                             true
% 2.44/0.98  --res_sim_input                         true
% 2.44/0.98  --eq_ax_congr_red                       true
% 2.44/0.98  --pure_diseq_elim                       true
% 2.44/0.98  --brand_transform                       false
% 2.44/0.98  --non_eq_to_eq                          false
% 2.44/0.98  --prep_def_merge                        true
% 2.44/0.98  --prep_def_merge_prop_impl              false
% 2.44/0.98  --prep_def_merge_mbd                    true
% 2.44/0.98  --prep_def_merge_tr_red                 false
% 2.44/0.98  --prep_def_merge_tr_cl                  false
% 2.44/0.98  --smt_preprocessing                     true
% 2.44/0.98  --smt_ac_axioms                         fast
% 2.44/0.98  --preprocessed_out                      false
% 2.44/0.98  --preprocessed_stats                    false
% 2.44/0.98  
% 2.44/0.98  ------ Abstraction refinement Options
% 2.44/0.98  
% 2.44/0.98  --abstr_ref                             []
% 2.44/0.98  --abstr_ref_prep                        false
% 2.44/0.98  --abstr_ref_until_sat                   false
% 2.44/0.98  --abstr_ref_sig_restrict                funpre
% 2.44/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.44/0.98  --abstr_ref_under                       []
% 2.44/0.98  
% 2.44/0.98  ------ SAT Options
% 2.44/0.98  
% 2.44/0.98  --sat_mode                              false
% 2.44/0.98  --sat_fm_restart_options                ""
% 2.44/0.98  --sat_gr_def                            false
% 2.44/0.98  --sat_epr_types                         true
% 2.44/0.98  --sat_non_cyclic_types                  false
% 2.44/0.98  --sat_finite_models                     false
% 2.44/0.98  --sat_fm_lemmas                         false
% 2.44/0.98  --sat_fm_prep                           false
% 2.44/0.98  --sat_fm_uc_incr                        true
% 2.44/0.98  --sat_out_model                         small
% 2.44/0.98  --sat_out_clauses                       false
% 2.44/0.98  
% 2.44/0.98  ------ QBF Options
% 2.44/0.98  
% 2.44/0.98  --qbf_mode                              false
% 2.44/0.98  --qbf_elim_univ                         false
% 2.44/0.98  --qbf_dom_inst                          none
% 2.44/0.98  --qbf_dom_pre_inst                      false
% 2.44/0.98  --qbf_sk_in                             false
% 2.44/0.98  --qbf_pred_elim                         true
% 2.44/0.98  --qbf_split                             512
% 2.44/0.98  
% 2.44/0.98  ------ BMC1 Options
% 2.44/0.98  
% 2.44/0.98  --bmc1_incremental                      false
% 2.44/0.98  --bmc1_axioms                           reachable_all
% 2.44/0.98  --bmc1_min_bound                        0
% 2.44/0.98  --bmc1_max_bound                        -1
% 2.44/0.98  --bmc1_max_bound_default                -1
% 2.44/0.98  --bmc1_symbol_reachability              true
% 2.44/0.98  --bmc1_property_lemmas                  false
% 2.44/0.98  --bmc1_k_induction                      false
% 2.44/0.98  --bmc1_non_equiv_states                 false
% 2.44/0.98  --bmc1_deadlock                         false
% 2.44/0.98  --bmc1_ucm                              false
% 2.44/0.98  --bmc1_add_unsat_core                   none
% 2.44/0.99  --bmc1_unsat_core_children              false
% 2.44/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.44/0.99  --bmc1_out_stat                         full
% 2.44/0.99  --bmc1_ground_init                      false
% 2.44/0.99  --bmc1_pre_inst_next_state              false
% 2.44/0.99  --bmc1_pre_inst_state                   false
% 2.44/0.99  --bmc1_pre_inst_reach_state             false
% 2.44/0.99  --bmc1_out_unsat_core                   false
% 2.44/0.99  --bmc1_aig_witness_out                  false
% 2.44/0.99  --bmc1_verbose                          false
% 2.44/0.99  --bmc1_dump_clauses_tptp                false
% 2.44/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.44/0.99  --bmc1_dump_file                        -
% 2.44/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.44/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.44/0.99  --bmc1_ucm_extend_mode                  1
% 2.44/0.99  --bmc1_ucm_init_mode                    2
% 2.44/0.99  --bmc1_ucm_cone_mode                    none
% 2.44/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.44/0.99  --bmc1_ucm_relax_model                  4
% 2.44/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.44/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.44/0.99  --bmc1_ucm_layered_model                none
% 2.44/0.99  --bmc1_ucm_max_lemma_size               10
% 2.44/0.99  
% 2.44/0.99  ------ AIG Options
% 2.44/0.99  
% 2.44/0.99  --aig_mode                              false
% 2.44/0.99  
% 2.44/0.99  ------ Instantiation Options
% 2.44/0.99  
% 2.44/0.99  --instantiation_flag                    true
% 2.44/0.99  --inst_sos_flag                         false
% 2.44/0.99  --inst_sos_phase                        true
% 2.44/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.44/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.44/0.99  --inst_lit_sel_side                     num_symb
% 2.44/0.99  --inst_solver_per_active                1400
% 2.44/0.99  --inst_solver_calls_frac                1.
% 2.44/0.99  --inst_passive_queue_type               priority_queues
% 2.44/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.44/0.99  --inst_passive_queues_freq              [25;2]
% 2.44/0.99  --inst_dismatching                      true
% 2.44/0.99  --inst_eager_unprocessed_to_passive     true
% 2.44/0.99  --inst_prop_sim_given                   true
% 2.44/0.99  --inst_prop_sim_new                     false
% 2.44/0.99  --inst_subs_new                         false
% 2.44/0.99  --inst_eq_res_simp                      false
% 2.44/0.99  --inst_subs_given                       false
% 2.44/0.99  --inst_orphan_elimination               true
% 2.44/0.99  --inst_learning_loop_flag               true
% 2.44/0.99  --inst_learning_start                   3000
% 2.44/0.99  --inst_learning_factor                  2
% 2.44/0.99  --inst_start_prop_sim_after_learn       3
% 2.44/0.99  --inst_sel_renew                        solver
% 2.44/0.99  --inst_lit_activity_flag                true
% 2.44/0.99  --inst_restr_to_given                   false
% 2.44/0.99  --inst_activity_threshold               500
% 2.44/0.99  --inst_out_proof                        true
% 2.44/0.99  
% 2.44/0.99  ------ Resolution Options
% 2.44/0.99  
% 2.44/0.99  --resolution_flag                       true
% 2.44/0.99  --res_lit_sel                           adaptive
% 2.44/0.99  --res_lit_sel_side                      none
% 2.44/0.99  --res_ordering                          kbo
% 2.44/0.99  --res_to_prop_solver                    active
% 2.44/0.99  --res_prop_simpl_new                    false
% 2.44/0.99  --res_prop_simpl_given                  true
% 2.44/0.99  --res_passive_queue_type                priority_queues
% 2.44/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.44/0.99  --res_passive_queues_freq               [15;5]
% 2.44/0.99  --res_forward_subs                      full
% 2.44/0.99  --res_backward_subs                     full
% 2.44/0.99  --res_forward_subs_resolution           true
% 2.44/0.99  --res_backward_subs_resolution          true
% 2.44/0.99  --res_orphan_elimination                true
% 2.44/0.99  --res_time_limit                        2.
% 2.44/0.99  --res_out_proof                         true
% 2.44/0.99  
% 2.44/0.99  ------ Superposition Options
% 2.44/0.99  
% 2.44/0.99  --superposition_flag                    true
% 2.44/0.99  --sup_passive_queue_type                priority_queues
% 2.44/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.44/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.44/0.99  --demod_completeness_check              fast
% 2.44/0.99  --demod_use_ground                      true
% 2.44/0.99  --sup_to_prop_solver                    passive
% 2.44/0.99  --sup_prop_simpl_new                    true
% 2.44/0.99  --sup_prop_simpl_given                  true
% 2.44/0.99  --sup_fun_splitting                     false
% 2.44/0.99  --sup_smt_interval                      50000
% 2.44/0.99  
% 2.44/0.99  ------ Superposition Simplification Setup
% 2.44/0.99  
% 2.44/0.99  --sup_indices_passive                   []
% 2.44/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.44/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.44/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.44/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.44/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.44/0.99  --sup_full_bw                           [BwDemod]
% 2.44/0.99  --sup_immed_triv                        [TrivRules]
% 2.44/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.44/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.44/0.99  --sup_immed_bw_main                     []
% 2.44/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.44/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.44/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.44/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.44/0.99  
% 2.44/0.99  ------ Combination Options
% 2.44/0.99  
% 2.44/0.99  --comb_res_mult                         3
% 2.44/0.99  --comb_sup_mult                         2
% 2.44/0.99  --comb_inst_mult                        10
% 2.44/0.99  
% 2.44/0.99  ------ Debug Options
% 2.44/0.99  
% 2.44/0.99  --dbg_backtrace                         false
% 2.44/0.99  --dbg_dump_prop_clauses                 false
% 2.44/0.99  --dbg_dump_prop_clauses_file            -
% 2.44/0.99  --dbg_out_stat                          false
% 2.44/0.99  ------ Parsing...
% 2.44/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.44/0.99  
% 2.44/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 2.44/0.99  
% 2.44/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.44/0.99  
% 2.44/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.44/0.99  ------ Proving...
% 2.44/0.99  ------ Problem Properties 
% 2.44/0.99  
% 2.44/0.99  
% 2.44/0.99  clauses                                 18
% 2.44/0.99  conjectures                             2
% 2.44/0.99  EPR                                     4
% 2.44/0.99  Horn                                    13
% 2.44/0.99  unary                                   3
% 2.44/0.99  binary                                  7
% 2.44/0.99  lits                                    45
% 2.44/0.99  lits eq                                 6
% 2.44/0.99  fd_pure                                 0
% 2.44/0.99  fd_pseudo                               0
% 2.44/0.99  fd_cond                                 0
% 2.44/0.99  fd_pseudo_cond                          4
% 2.44/0.99  AC symbols                              0
% 2.44/0.99  
% 2.44/0.99  ------ Schedule dynamic 5 is on 
% 2.44/0.99  
% 2.44/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.44/0.99  
% 2.44/0.99  
% 2.44/0.99  ------ 
% 2.44/0.99  Current options:
% 2.44/0.99  ------ 
% 2.44/0.99  
% 2.44/0.99  ------ Input Options
% 2.44/0.99  
% 2.44/0.99  --out_options                           all
% 2.44/0.99  --tptp_safe_out                         true
% 2.44/0.99  --problem_path                          ""
% 2.44/0.99  --include_path                          ""
% 2.44/0.99  --clausifier                            res/vclausify_rel
% 2.44/0.99  --clausifier_options                    --mode clausify
% 2.44/0.99  --stdin                                 false
% 2.44/0.99  --stats_out                             all
% 2.44/0.99  
% 2.44/0.99  ------ General Options
% 2.44/0.99  
% 2.44/0.99  --fof                                   false
% 2.44/0.99  --time_out_real                         305.
% 2.44/0.99  --time_out_virtual                      -1.
% 2.44/0.99  --symbol_type_check                     false
% 2.44/0.99  --clausify_out                          false
% 2.44/0.99  --sig_cnt_out                           false
% 2.44/0.99  --trig_cnt_out                          false
% 2.44/0.99  --trig_cnt_out_tolerance                1.
% 2.44/0.99  --trig_cnt_out_sk_spl                   false
% 2.44/0.99  --abstr_cl_out                          false
% 2.44/0.99  
% 2.44/0.99  ------ Global Options
% 2.44/0.99  
% 2.44/0.99  --schedule                              default
% 2.44/0.99  --add_important_lit                     false
% 2.44/0.99  --prop_solver_per_cl                    1000
% 2.44/0.99  --min_unsat_core                        false
% 2.44/0.99  --soft_assumptions                      false
% 2.44/0.99  --soft_lemma_size                       3
% 2.44/0.99  --prop_impl_unit_size                   0
% 2.44/0.99  --prop_impl_unit                        []
% 2.44/0.99  --share_sel_clauses                     true
% 2.44/0.99  --reset_solvers                         false
% 2.44/0.99  --bc_imp_inh                            [conj_cone]
% 2.44/0.99  --conj_cone_tolerance                   3.
% 2.44/0.99  --extra_neg_conj                        none
% 2.44/0.99  --large_theory_mode                     true
% 2.44/0.99  --prolific_symb_bound                   200
% 2.44/0.99  --lt_threshold                          2000
% 2.44/0.99  --clause_weak_htbl                      true
% 2.44/0.99  --gc_record_bc_elim                     false
% 2.44/0.99  
% 2.44/0.99  ------ Preprocessing Options
% 2.44/0.99  
% 2.44/0.99  --preprocessing_flag                    true
% 2.44/0.99  --time_out_prep_mult                    0.1
% 2.44/0.99  --splitting_mode                        input
% 2.44/0.99  --splitting_grd                         true
% 2.44/0.99  --splitting_cvd                         false
% 2.44/0.99  --splitting_cvd_svl                     false
% 2.44/0.99  --splitting_nvd                         32
% 2.44/0.99  --sub_typing                            true
% 2.44/0.99  --prep_gs_sim                           true
% 2.44/0.99  --prep_unflatten                        true
% 2.44/0.99  --prep_res_sim                          true
% 2.44/0.99  --prep_upred                            true
% 2.44/0.99  --prep_sem_filter                       exhaustive
% 2.44/0.99  --prep_sem_filter_out                   false
% 2.44/0.99  --pred_elim                             true
% 2.44/0.99  --res_sim_input                         true
% 2.44/0.99  --eq_ax_congr_red                       true
% 2.44/0.99  --pure_diseq_elim                       true
% 2.44/0.99  --brand_transform                       false
% 2.44/0.99  --non_eq_to_eq                          false
% 2.44/0.99  --prep_def_merge                        true
% 2.44/0.99  --prep_def_merge_prop_impl              false
% 2.44/0.99  --prep_def_merge_mbd                    true
% 2.44/0.99  --prep_def_merge_tr_red                 false
% 2.44/0.99  --prep_def_merge_tr_cl                  false
% 2.44/0.99  --smt_preprocessing                     true
% 2.44/0.99  --smt_ac_axioms                         fast
% 2.44/0.99  --preprocessed_out                      false
% 2.44/0.99  --preprocessed_stats                    false
% 2.44/0.99  
% 2.44/0.99  ------ Abstraction refinement Options
% 2.44/0.99  
% 2.44/0.99  --abstr_ref                             []
% 2.44/0.99  --abstr_ref_prep                        false
% 2.44/0.99  --abstr_ref_until_sat                   false
% 2.44/0.99  --abstr_ref_sig_restrict                funpre
% 2.44/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.44/0.99  --abstr_ref_under                       []
% 2.44/0.99  
% 2.44/0.99  ------ SAT Options
% 2.44/0.99  
% 2.44/0.99  --sat_mode                              false
% 2.44/0.99  --sat_fm_restart_options                ""
% 2.44/0.99  --sat_gr_def                            false
% 2.44/0.99  --sat_epr_types                         true
% 2.44/0.99  --sat_non_cyclic_types                  false
% 2.44/0.99  --sat_finite_models                     false
% 2.44/0.99  --sat_fm_lemmas                         false
% 2.44/0.99  --sat_fm_prep                           false
% 2.44/0.99  --sat_fm_uc_incr                        true
% 2.44/0.99  --sat_out_model                         small
% 2.44/0.99  --sat_out_clauses                       false
% 2.44/0.99  
% 2.44/0.99  ------ QBF Options
% 2.44/0.99  
% 2.44/0.99  --qbf_mode                              false
% 2.44/0.99  --qbf_elim_univ                         false
% 2.44/0.99  --qbf_dom_inst                          none
% 2.44/0.99  --qbf_dom_pre_inst                      false
% 2.44/0.99  --qbf_sk_in                             false
% 2.44/0.99  --qbf_pred_elim                         true
% 2.44/0.99  --qbf_split                             512
% 2.44/0.99  
% 2.44/0.99  ------ BMC1 Options
% 2.44/0.99  
% 2.44/0.99  --bmc1_incremental                      false
% 2.44/0.99  --bmc1_axioms                           reachable_all
% 2.44/0.99  --bmc1_min_bound                        0
% 2.44/0.99  --bmc1_max_bound                        -1
% 2.44/0.99  --bmc1_max_bound_default                -1
% 2.44/0.99  --bmc1_symbol_reachability              true
% 2.44/0.99  --bmc1_property_lemmas                  false
% 2.44/0.99  --bmc1_k_induction                      false
% 2.44/0.99  --bmc1_non_equiv_states                 false
% 2.44/0.99  --bmc1_deadlock                         false
% 2.44/0.99  --bmc1_ucm                              false
% 2.44/0.99  --bmc1_add_unsat_core                   none
% 2.44/0.99  --bmc1_unsat_core_children              false
% 2.44/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.44/0.99  --bmc1_out_stat                         full
% 2.44/0.99  --bmc1_ground_init                      false
% 2.44/0.99  --bmc1_pre_inst_next_state              false
% 2.44/0.99  --bmc1_pre_inst_state                   false
% 2.44/0.99  --bmc1_pre_inst_reach_state             false
% 2.44/0.99  --bmc1_out_unsat_core                   false
% 2.44/0.99  --bmc1_aig_witness_out                  false
% 2.44/0.99  --bmc1_verbose                          false
% 2.44/0.99  --bmc1_dump_clauses_tptp                false
% 2.44/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.44/0.99  --bmc1_dump_file                        -
% 2.44/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.44/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.44/0.99  --bmc1_ucm_extend_mode                  1
% 2.44/0.99  --bmc1_ucm_init_mode                    2
% 2.44/0.99  --bmc1_ucm_cone_mode                    none
% 2.44/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.44/0.99  --bmc1_ucm_relax_model                  4
% 2.44/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.44/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.44/0.99  --bmc1_ucm_layered_model                none
% 2.44/0.99  --bmc1_ucm_max_lemma_size               10
% 2.44/0.99  
% 2.44/0.99  ------ AIG Options
% 2.44/0.99  
% 2.44/0.99  --aig_mode                              false
% 2.44/0.99  
% 2.44/0.99  ------ Instantiation Options
% 2.44/0.99  
% 2.44/0.99  --instantiation_flag                    true
% 2.44/0.99  --inst_sos_flag                         false
% 2.44/0.99  --inst_sos_phase                        true
% 2.44/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.44/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.44/0.99  --inst_lit_sel_side                     none
% 2.44/0.99  --inst_solver_per_active                1400
% 2.44/0.99  --inst_solver_calls_frac                1.
% 2.44/0.99  --inst_passive_queue_type               priority_queues
% 2.44/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.44/0.99  --inst_passive_queues_freq              [25;2]
% 2.44/0.99  --inst_dismatching                      true
% 2.44/0.99  --inst_eager_unprocessed_to_passive     true
% 2.44/0.99  --inst_prop_sim_given                   true
% 2.44/0.99  --inst_prop_sim_new                     false
% 2.44/0.99  --inst_subs_new                         false
% 2.44/0.99  --inst_eq_res_simp                      false
% 2.44/0.99  --inst_subs_given                       false
% 2.44/0.99  --inst_orphan_elimination               true
% 2.44/0.99  --inst_learning_loop_flag               true
% 2.44/0.99  --inst_learning_start                   3000
% 2.44/0.99  --inst_learning_factor                  2
% 2.44/0.99  --inst_start_prop_sim_after_learn       3
% 2.44/0.99  --inst_sel_renew                        solver
% 2.44/0.99  --inst_lit_activity_flag                true
% 2.44/0.99  --inst_restr_to_given                   false
% 2.44/0.99  --inst_activity_threshold               500
% 2.44/0.99  --inst_out_proof                        true
% 2.44/0.99  
% 2.44/0.99  ------ Resolution Options
% 2.44/0.99  
% 2.44/0.99  --resolution_flag                       false
% 2.44/0.99  --res_lit_sel                           adaptive
% 2.44/0.99  --res_lit_sel_side                      none
% 2.44/0.99  --res_ordering                          kbo
% 2.44/0.99  --res_to_prop_solver                    active
% 2.44/0.99  --res_prop_simpl_new                    false
% 2.44/0.99  --res_prop_simpl_given                  true
% 2.44/0.99  --res_passive_queue_type                priority_queues
% 2.44/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.44/0.99  --res_passive_queues_freq               [15;5]
% 2.44/0.99  --res_forward_subs                      full
% 2.44/0.99  --res_backward_subs                     full
% 2.44/0.99  --res_forward_subs_resolution           true
% 2.44/0.99  --res_backward_subs_resolution          true
% 2.44/0.99  --res_orphan_elimination                true
% 2.44/0.99  --res_time_limit                        2.
% 2.44/0.99  --res_out_proof                         true
% 2.44/0.99  
% 2.44/0.99  ------ Superposition Options
% 2.44/0.99  
% 2.44/0.99  --superposition_flag                    true
% 2.44/0.99  --sup_passive_queue_type                priority_queues
% 2.44/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.44/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.44/0.99  --demod_completeness_check              fast
% 2.44/0.99  --demod_use_ground                      true
% 2.44/0.99  --sup_to_prop_solver                    passive
% 2.44/0.99  --sup_prop_simpl_new                    true
% 2.44/0.99  --sup_prop_simpl_given                  true
% 2.44/0.99  --sup_fun_splitting                     false
% 2.44/0.99  --sup_smt_interval                      50000
% 2.44/0.99  
% 2.44/0.99  ------ Superposition Simplification Setup
% 2.44/0.99  
% 2.44/0.99  --sup_indices_passive                   []
% 2.44/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.44/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.44/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.44/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.44/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.44/0.99  --sup_full_bw                           [BwDemod]
% 2.44/0.99  --sup_immed_triv                        [TrivRules]
% 2.44/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.44/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.44/0.99  --sup_immed_bw_main                     []
% 2.44/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.44/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.44/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.44/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.44/0.99  
% 2.44/0.99  ------ Combination Options
% 2.44/0.99  
% 2.44/0.99  --comb_res_mult                         3
% 2.44/0.99  --comb_sup_mult                         2
% 2.44/0.99  --comb_inst_mult                        10
% 2.44/0.99  
% 2.44/0.99  ------ Debug Options
% 2.44/0.99  
% 2.44/0.99  --dbg_backtrace                         false
% 2.44/0.99  --dbg_dump_prop_clauses                 false
% 2.44/0.99  --dbg_dump_prop_clauses_file            -
% 2.44/0.99  --dbg_out_stat                          false
% 2.44/0.99  
% 2.44/0.99  
% 2.44/0.99  
% 2.44/0.99  
% 2.44/0.99  ------ Proving...
% 2.44/0.99  
% 2.44/0.99  
% 2.44/0.99  % SZS status Theorem for theBenchmark.p
% 2.44/0.99  
% 2.44/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.44/0.99  
% 2.44/0.99  fof(f7,axiom,(
% 2.44/0.99    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => ~(~r2_hidden(X1,X0) & X0 != X1 & ~r2_hidden(X0,X1))))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f16,plain,(
% 2.44/0.99    ! [X0] : (! [X1] : ((r2_hidden(X1,X0) | X0 = X1 | r2_hidden(X0,X1)) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 2.44/0.99    inference(ennf_transformation,[],[f7])).
% 2.44/0.99  
% 2.44/0.99  fof(f17,plain,(
% 2.44/0.99    ! [X0] : (! [X1] : (r2_hidden(X1,X0) | X0 = X1 | r2_hidden(X0,X1) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 2.44/0.99    inference(flattening,[],[f16])).
% 2.44/0.99  
% 2.44/0.99  fof(f48,plain,(
% 2.44/0.99    ( ! [X0,X1] : (r2_hidden(X1,X0) | X0 = X1 | r2_hidden(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 2.44/0.99    inference(cnf_transformation,[],[f17])).
% 2.44/0.99  
% 2.44/0.99  fof(f11,conjecture,(
% 2.44/0.99    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r2_hidden(X0,X1) <=> r1_ordinal1(k1_ordinal1(X0),X1))))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f12,negated_conjecture,(
% 2.44/0.99    ~! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r2_hidden(X0,X1) <=> r1_ordinal1(k1_ordinal1(X0),X1))))),
% 2.44/0.99    inference(negated_conjecture,[],[f11])).
% 2.44/0.99  
% 2.44/0.99  fof(f22,plain,(
% 2.44/0.99    ? [X0] : (? [X1] : ((r2_hidden(X0,X1) <~> r1_ordinal1(k1_ordinal1(X0),X1)) & v3_ordinal1(X1)) & v3_ordinal1(X0))),
% 2.44/0.99    inference(ennf_transformation,[],[f12])).
% 2.44/0.99  
% 2.44/0.99  fof(f30,plain,(
% 2.44/0.99    ? [X0] : (? [X1] : (((~r1_ordinal1(k1_ordinal1(X0),X1) | ~r2_hidden(X0,X1)) & (r1_ordinal1(k1_ordinal1(X0),X1) | r2_hidden(X0,X1))) & v3_ordinal1(X1)) & v3_ordinal1(X0))),
% 2.44/0.99    inference(nnf_transformation,[],[f22])).
% 2.44/0.99  
% 2.44/0.99  fof(f31,plain,(
% 2.44/0.99    ? [X0] : (? [X1] : ((~r1_ordinal1(k1_ordinal1(X0),X1) | ~r2_hidden(X0,X1)) & (r1_ordinal1(k1_ordinal1(X0),X1) | r2_hidden(X0,X1)) & v3_ordinal1(X1)) & v3_ordinal1(X0))),
% 2.44/0.99    inference(flattening,[],[f30])).
% 2.44/0.99  
% 2.44/0.99  fof(f33,plain,(
% 2.44/0.99    ( ! [X0] : (? [X1] : ((~r1_ordinal1(k1_ordinal1(X0),X1) | ~r2_hidden(X0,X1)) & (r1_ordinal1(k1_ordinal1(X0),X1) | r2_hidden(X0,X1)) & v3_ordinal1(X1)) => ((~r1_ordinal1(k1_ordinal1(X0),sK2) | ~r2_hidden(X0,sK2)) & (r1_ordinal1(k1_ordinal1(X0),sK2) | r2_hidden(X0,sK2)) & v3_ordinal1(sK2))) )),
% 2.44/0.99    introduced(choice_axiom,[])).
% 2.44/0.99  
% 2.44/0.99  fof(f32,plain,(
% 2.44/0.99    ? [X0] : (? [X1] : ((~r1_ordinal1(k1_ordinal1(X0),X1) | ~r2_hidden(X0,X1)) & (r1_ordinal1(k1_ordinal1(X0),X1) | r2_hidden(X0,X1)) & v3_ordinal1(X1)) & v3_ordinal1(X0)) => (? [X1] : ((~r1_ordinal1(k1_ordinal1(sK1),X1) | ~r2_hidden(sK1,X1)) & (r1_ordinal1(k1_ordinal1(sK1),X1) | r2_hidden(sK1,X1)) & v3_ordinal1(X1)) & v3_ordinal1(sK1))),
% 2.44/0.99    introduced(choice_axiom,[])).
% 2.44/0.99  
% 2.44/0.99  fof(f34,plain,(
% 2.44/0.99    ((~r1_ordinal1(k1_ordinal1(sK1),sK2) | ~r2_hidden(sK1,sK2)) & (r1_ordinal1(k1_ordinal1(sK1),sK2) | r2_hidden(sK1,sK2)) & v3_ordinal1(sK2)) & v3_ordinal1(sK1)),
% 2.44/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f31,f33,f32])).
% 2.44/0.99  
% 2.44/0.99  fof(f52,plain,(
% 2.44/0.99    v3_ordinal1(sK1)),
% 2.44/0.99    inference(cnf_transformation,[],[f34])).
% 2.44/0.99  
% 2.44/0.99  fof(f53,plain,(
% 2.44/0.99    v3_ordinal1(sK2)),
% 2.44/0.99    inference(cnf_transformation,[],[f34])).
% 2.44/0.99  
% 2.44/0.99  fof(f9,axiom,(
% 2.44/0.99    ! [X0] : (v3_ordinal1(X0) => v3_ordinal1(k1_ordinal1(X0)))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f20,plain,(
% 2.44/0.99    ! [X0] : (v3_ordinal1(k1_ordinal1(X0)) | ~v3_ordinal1(X0))),
% 2.44/0.99    inference(ennf_transformation,[],[f9])).
% 2.44/0.99  
% 2.44/0.99  fof(f50,plain,(
% 2.44/0.99    ( ! [X0] : (v3_ordinal1(k1_ordinal1(X0)) | ~v3_ordinal1(X0)) )),
% 2.44/0.99    inference(cnf_transformation,[],[f20])).
% 2.44/0.99  
% 2.44/0.99  fof(f4,axiom,(
% 2.44/0.99    ! [X0] : k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0)),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f44,plain,(
% 2.44/0.99    ( ! [X0] : (k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0)) )),
% 2.44/0.99    inference(cnf_transformation,[],[f4])).
% 2.44/0.99  
% 2.44/0.99  fof(f57,plain,(
% 2.44/0.99    ( ! [X0] : (v3_ordinal1(k2_xboole_0(X0,k1_tarski(X0))) | ~v3_ordinal1(X0)) )),
% 2.44/0.99    inference(definition_unfolding,[],[f50,f44])).
% 2.44/0.99  
% 2.44/0.99  fof(f8,axiom,(
% 2.44/0.99    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r2_hidden(X1,X0) | r1_ordinal1(X0,X1))))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f18,plain,(
% 2.44/0.99    ! [X0] : (! [X1] : ((r2_hidden(X1,X0) | r1_ordinal1(X0,X1)) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 2.44/0.99    inference(ennf_transformation,[],[f8])).
% 2.44/0.99  
% 2.44/0.99  fof(f19,plain,(
% 2.44/0.99    ! [X0] : (! [X1] : (r2_hidden(X1,X0) | r1_ordinal1(X0,X1) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 2.44/0.99    inference(flattening,[],[f18])).
% 2.44/0.99  
% 2.44/0.99  fof(f49,plain,(
% 2.44/0.99    ( ! [X0,X1] : (r2_hidden(X1,X0) | r1_ordinal1(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 2.44/0.99    inference(cnf_transformation,[],[f19])).
% 2.44/0.99  
% 2.44/0.99  fof(f55,plain,(
% 2.44/0.99    ~r1_ordinal1(k1_ordinal1(sK1),sK2) | ~r2_hidden(sK1,sK2)),
% 2.44/0.99    inference(cnf_transformation,[],[f34])).
% 2.44/0.99  
% 2.44/0.99  fof(f58,plain,(
% 2.44/0.99    ~r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2) | ~r2_hidden(sK1,sK2)),
% 2.44/0.99    inference(definition_unfolding,[],[f55,f44])).
% 2.44/0.99  
% 2.44/0.99  fof(f10,axiom,(
% 2.44/0.99    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f21,plain,(
% 2.44/0.99    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 2.44/0.99    inference(ennf_transformation,[],[f10])).
% 2.44/0.99  
% 2.44/0.99  fof(f51,plain,(
% 2.44/0.99    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 2.44/0.99    inference(cnf_transformation,[],[f21])).
% 2.44/0.99  
% 2.44/0.99  fof(f5,axiom,(
% 2.44/0.99    ! [X0,X1] : ((v3_ordinal1(X1) & v3_ordinal1(X0)) => (r1_ordinal1(X0,X1) <=> r1_tarski(X0,X1)))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f14,plain,(
% 2.44/0.99    ! [X0,X1] : ((r1_ordinal1(X0,X1) <=> r1_tarski(X0,X1)) | (~v3_ordinal1(X1) | ~v3_ordinal1(X0)))),
% 2.44/0.99    inference(ennf_transformation,[],[f5])).
% 2.44/0.99  
% 2.44/0.99  fof(f15,plain,(
% 2.44/0.99    ! [X0,X1] : ((r1_ordinal1(X0,X1) <=> r1_tarski(X0,X1)) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0))),
% 2.44/0.99    inference(flattening,[],[f14])).
% 2.44/0.99  
% 2.44/0.99  fof(f29,plain,(
% 2.44/0.99    ! [X0,X1] : (((r1_ordinal1(X0,X1) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~r1_ordinal1(X0,X1))) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0))),
% 2.44/0.99    inference(nnf_transformation,[],[f15])).
% 2.44/0.99  
% 2.44/0.99  fof(f45,plain,(
% 2.44/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r1_ordinal1(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 2.44/0.99    inference(cnf_transformation,[],[f29])).
% 2.44/0.99  
% 2.44/0.99  fof(f54,plain,(
% 2.44/0.99    r1_ordinal1(k1_ordinal1(sK1),sK2) | r2_hidden(sK1,sK2)),
% 2.44/0.99    inference(cnf_transformation,[],[f34])).
% 2.44/0.99  
% 2.44/0.99  fof(f59,plain,(
% 2.44/0.99    r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2) | r2_hidden(sK1,sK2)),
% 2.44/0.99    inference(definition_unfolding,[],[f54,f44])).
% 2.44/0.99  
% 2.44/0.99  fof(f1,axiom,(
% 2.44/0.99    ! [X0,X1] : (r2_hidden(X0,X1) => ~r2_hidden(X1,X0))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f13,plain,(
% 2.44/0.99    ! [X0,X1] : (~r2_hidden(X1,X0) | ~r2_hidden(X0,X1))),
% 2.44/0.99    inference(ennf_transformation,[],[f1])).
% 2.44/0.99  
% 2.44/0.99  fof(f35,plain,(
% 2.44/0.99    ( ! [X0,X1] : (~r2_hidden(X1,X0) | ~r2_hidden(X0,X1)) )),
% 2.44/0.99    inference(cnf_transformation,[],[f13])).
% 2.44/0.99  
% 2.44/0.99  fof(f3,axiom,(
% 2.44/0.99    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f28,plain,(
% 2.44/0.99    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 2.44/0.99    inference(nnf_transformation,[],[f3])).
% 2.44/0.99  
% 2.44/0.99  fof(f43,plain,(
% 2.44/0.99    ( ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 2.44/0.99    inference(cnf_transformation,[],[f28])).
% 2.44/0.99  
% 2.44/0.99  fof(f2,axiom,(
% 2.44/0.99    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f23,plain,(
% 2.44/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 2.44/0.99    inference(nnf_transformation,[],[f2])).
% 2.44/0.99  
% 2.44/0.99  fof(f24,plain,(
% 2.44/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 2.44/0.99    inference(flattening,[],[f23])).
% 2.44/0.99  
% 2.44/0.99  fof(f25,plain,(
% 2.44/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 2.44/0.99    inference(rectify,[],[f24])).
% 2.44/0.99  
% 2.44/0.99  fof(f26,plain,(
% 2.44/0.99    ! [X2,X1,X0] : (? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2))) => (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 2.44/0.99    introduced(choice_axiom,[])).
% 2.44/0.99  
% 2.44/0.99  fof(f27,plain,(
% 2.44/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 2.44/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f25,f26])).
% 2.44/0.99  
% 2.44/0.99  fof(f36,plain,(
% 2.44/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k2_xboole_0(X0,X1) != X2) )),
% 2.44/0.99    inference(cnf_transformation,[],[f27])).
% 2.44/0.99  
% 2.44/0.99  fof(f62,plain,(
% 2.44/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,k2_xboole_0(X0,X1))) )),
% 2.44/0.99    inference(equality_resolution,[],[f36])).
% 2.44/0.99  
% 2.44/0.99  fof(f38,plain,(
% 2.44/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k2_xboole_0(X0,X1) != X2) )),
% 2.44/0.99    inference(cnf_transformation,[],[f27])).
% 2.44/0.99  
% 2.44/0.99  fof(f60,plain,(
% 2.44/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,k2_xboole_0(X0,X1)) | ~r2_hidden(X4,X1)) )),
% 2.44/0.99    inference(equality_resolution,[],[f38])).
% 2.44/0.99  
% 2.44/0.99  fof(f37,plain,(
% 2.44/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X0) | k2_xboole_0(X0,X1) != X2) )),
% 2.44/0.99    inference(cnf_transformation,[],[f27])).
% 2.44/0.99  
% 2.44/0.99  fof(f61,plain,(
% 2.44/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,k2_xboole_0(X0,X1)) | ~r2_hidden(X4,X0)) )),
% 2.44/0.99    inference(equality_resolution,[],[f37])).
% 2.44/0.99  
% 2.44/0.99  fof(f6,axiom,(
% 2.44/0.99    ! [X0] : r2_hidden(X0,k1_ordinal1(X0))),
% 2.44/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.44/0.99  
% 2.44/0.99  fof(f47,plain,(
% 2.44/0.99    ( ! [X0] : (r2_hidden(X0,k1_ordinal1(X0))) )),
% 2.44/0.99    inference(cnf_transformation,[],[f6])).
% 2.44/0.99  
% 2.44/0.99  fof(f56,plain,(
% 2.44/0.99    ( ! [X0] : (r2_hidden(X0,k2_xboole_0(X0,k1_tarski(X0)))) )),
% 2.44/0.99    inference(definition_unfolding,[],[f47,f44])).
% 2.44/0.99  
% 2.44/0.99  cnf(c_675,plain,
% 2.44/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.44/0.99      theory(equality) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1333,plain,
% 2.44/0.99      ( r2_hidden(X0,X1)
% 2.44/0.99      | ~ r2_hidden(X2,k1_tarski(X2))
% 2.44/0.99      | X0 != X2
% 2.44/0.99      | X1 != k1_tarski(X2) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_675]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1626,plain,
% 2.44/0.99      ( ~ r2_hidden(X0,k1_tarski(X0))
% 2.44/0.99      | r2_hidden(X1,k1_tarski(X0))
% 2.44/0.99      | X1 != X0
% 2.44/0.99      | k1_tarski(X0) != k1_tarski(X0) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_1333]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_8004,plain,
% 2.44/0.99      ( r2_hidden(sK2,k1_tarski(sK1))
% 2.44/0.99      | ~ r2_hidden(sK1,k1_tarski(sK1))
% 2.44/0.99      | k1_tarski(sK1) != k1_tarski(sK1)
% 2.44/0.99      | sK2 != sK1 ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_1626]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_12,plain,
% 2.44/0.99      ( r2_hidden(X0,X1)
% 2.44/0.99      | r2_hidden(X1,X0)
% 2.44/0.99      | ~ v3_ordinal1(X0)
% 2.44/0.99      | ~ v3_ordinal1(X1)
% 2.44/0.99      | X1 = X0 ),
% 2.44/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1087,plain,
% 2.44/0.99      ( X0 = X1
% 2.44/0.99      | r2_hidden(X0,X1) = iProver_top
% 2.44/0.99      | r2_hidden(X1,X0) = iProver_top
% 2.44/0.99      | v3_ordinal1(X1) != iProver_top
% 2.44/0.99      | v3_ordinal1(X0) != iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_19,negated_conjecture,
% 2.44/0.99      ( v3_ordinal1(sK1) ),
% 2.44/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_18,negated_conjecture,
% 2.44/0.99      ( v3_ordinal1(sK2) ),
% 2.44/0.99      inference(cnf_transformation,[],[f53]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_14,plain,
% 2.44/0.99      ( ~ v3_ordinal1(X0) | v3_ordinal1(k2_xboole_0(X0,k1_tarski(X0))) ),
% 2.44/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_28,plain,
% 2.44/0.99      ( v3_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | ~ v3_ordinal1(sK1) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_14]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_13,plain,
% 2.44/0.99      ( r1_ordinal1(X0,X1)
% 2.44/0.99      | r2_hidden(X1,X0)
% 2.44/0.99      | ~ v3_ordinal1(X1)
% 2.44/0.99      | ~ v3_ordinal1(X0) ),
% 2.44/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_16,negated_conjecture,
% 2.44/0.99      ( ~ r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
% 2.44/0.99      | ~ r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(cnf_transformation,[],[f58]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_161,plain,
% 2.44/0.99      ( ~ r2_hidden(sK1,sK2)
% 2.44/0.99      | ~ r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2) ),
% 2.44/0.99      inference(prop_impl,[status(thm)],[c_16]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_162,plain,
% 2.44/0.99      ( ~ r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
% 2.44/0.99      | ~ r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(renaming,[status(thm)],[c_161]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_364,plain,
% 2.44/0.99      ( r2_hidden(X0,X1)
% 2.44/0.99      | ~ r2_hidden(sK1,sK2)
% 2.44/0.99      | ~ v3_ordinal1(X1)
% 2.44/0.99      | ~ v3_ordinal1(X0)
% 2.44/0.99      | k2_xboole_0(sK1,k1_tarski(sK1)) != X1
% 2.44/0.99      | sK2 != X0 ),
% 2.44/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_162]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_365,plain,
% 2.44/0.99      ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | ~ r2_hidden(sK1,sK2)
% 2.44/0.99      | ~ v3_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | ~ v3_ordinal1(sK2) ),
% 2.44/0.99      inference(unflattening,[status(thm)],[c_364]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_575,plain,
% 2.44/0.99      ( ~ r2_hidden(sK1,sK2)
% 2.44/0.99      | r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) ),
% 2.44/0.99      inference(prop_impl,[status(thm)],[c_19,c_18,c_28,c_365]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_576,plain,
% 2.44/0.99      ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | ~ r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(renaming,[status(thm)],[c_575]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1082,plain,
% 2.44/0.99      ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) = iProver_top
% 2.44/0.99      | r2_hidden(sK1,sK2) != iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_576]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_367,plain,
% 2.44/0.99      ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | ~ r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(global_propositional_subsumption,
% 2.44/0.99                [status(thm)],
% 2.44/0.99                [c_365,c_19,c_18,c_28]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_369,plain,
% 2.44/0.99      ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) = iProver_top
% 2.44/0.99      | r2_hidden(sK1,sK2) != iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_367]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_15,plain,
% 2.44/0.99      ( ~ r1_tarski(X0,X1) | ~ r2_hidden(X1,X0) ),
% 2.44/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_10,plain,
% 2.44/0.99      ( ~ r1_ordinal1(X0,X1)
% 2.44/0.99      | r1_tarski(X0,X1)
% 2.44/0.99      | ~ v3_ordinal1(X1)
% 2.44/0.99      | ~ v3_ordinal1(X0) ),
% 2.44/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_17,negated_conjecture,
% 2.44/0.99      ( r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
% 2.44/0.99      | r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(cnf_transformation,[],[f59]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_163,plain,
% 2.44/0.99      ( r2_hidden(sK1,sK2)
% 2.44/0.99      | r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2) ),
% 2.44/0.99      inference(prop_impl,[status(thm)],[c_17]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_164,plain,
% 2.44/0.99      ( r1_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
% 2.44/0.99      | r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(renaming,[status(thm)],[c_163]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_392,plain,
% 2.44/0.99      ( r1_tarski(X0,X1)
% 2.44/0.99      | r2_hidden(sK1,sK2)
% 2.44/0.99      | ~ v3_ordinal1(X0)
% 2.44/0.99      | ~ v3_ordinal1(X1)
% 2.44/0.99      | k2_xboole_0(sK1,k1_tarski(sK1)) != X0
% 2.44/0.99      | sK2 != X1 ),
% 2.44/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_164]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_393,plain,
% 2.44/0.99      ( r1_tarski(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
% 2.44/0.99      | r2_hidden(sK1,sK2)
% 2.44/0.99      | ~ v3_ordinal1(k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | ~ v3_ordinal1(sK2) ),
% 2.44/0.99      inference(unflattening,[status(thm)],[c_392]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_395,plain,
% 2.44/0.99      ( r1_tarski(k2_xboole_0(sK1,k1_tarski(sK1)),sK2)
% 2.44/0.99      | r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(global_propositional_subsumption,
% 2.44/0.99                [status(thm)],
% 2.44/0.99                [c_393,c_19,c_18,c_28]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_483,plain,
% 2.44/0.99      ( ~ r2_hidden(X0,X1)
% 2.44/0.99      | r2_hidden(sK1,sK2)
% 2.44/0.99      | k2_xboole_0(sK1,k1_tarski(sK1)) != X1
% 2.44/0.99      | sK2 != X0 ),
% 2.44/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_395]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_484,plain,
% 2.44/0.99      ( ~ r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(unflattening,[status(thm)],[c_483]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_573,plain,
% 2.44/0.99      ( r2_hidden(sK1,sK2)
% 2.44/0.99      | ~ r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) ),
% 2.44/0.99      inference(prop_impl,[status(thm)],[c_484]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_574,plain,
% 2.44/0.99      ( ~ r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(renaming,[status(thm)],[c_573]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1078,plain,
% 2.44/0.99      ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) != iProver_top
% 2.44/0.99      | r2_hidden(sK1,sK2) = iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_574]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_485,plain,
% 2.44/0.99      ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) != iProver_top
% 2.44/0.99      | r2_hidden(sK1,sK2) = iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_484]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_0,plain,
% 2.44/0.99      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X1,X0) ),
% 2.44/0.99      inference(cnf_transformation,[],[f35]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1229,plain,
% 2.44/0.99      ( ~ r2_hidden(sK2,sK1) | ~ r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_0]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1230,plain,
% 2.44/0.99      ( r2_hidden(sK2,sK1) != iProver_top
% 2.44/0.99      | r2_hidden(sK1,sK2) != iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_1229]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_7,plain,
% 2.44/0.99      ( r1_tarski(k1_tarski(X0),X1) | ~ r2_hidden(X0,X1) ),
% 2.44/0.99      inference(cnf_transformation,[],[f43]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_159,plain,
% 2.44/0.99      ( ~ r2_hidden(X0,X1) | r1_tarski(k1_tarski(X0),X1) ),
% 2.44/0.99      inference(prop_impl,[status(thm)],[c_7]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_160,plain,
% 2.44/0.99      ( r1_tarski(k1_tarski(X0),X1) | ~ r2_hidden(X0,X1) ),
% 2.44/0.99      inference(renaming,[status(thm)],[c_159]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_423,plain,
% 2.44/0.99      ( ~ r2_hidden(X0,X1)
% 2.44/0.99      | ~ r2_hidden(X2,X3)
% 2.44/0.99      | X2 != X1
% 2.44/0.99      | k1_tarski(X0) != X3 ),
% 2.44/0.99      inference(resolution_lifted,[status(thm)],[c_160,c_15]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_424,plain,
% 2.44/0.99      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X1,k1_tarski(X0)) ),
% 2.44/0.99      inference(unflattening,[status(thm)],[c_423]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1240,plain,
% 2.44/0.99      ( ~ r2_hidden(sK2,k1_tarski(sK1)) | ~ r2_hidden(sK1,sK2) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_424]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1241,plain,
% 2.44/0.99      ( r2_hidden(sK2,k1_tarski(sK1)) != iProver_top
% 2.44/0.99      | r2_hidden(sK1,sK2) != iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_1240]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_6,plain,
% 2.44/0.99      ( r2_hidden(X0,X1)
% 2.44/0.99      | r2_hidden(X0,X2)
% 2.44/0.99      | ~ r2_hidden(X0,k2_xboole_0(X2,X1)) ),
% 2.44/0.99      inference(cnf_transformation,[],[f62]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1290,plain,
% 2.44/0.99      ( ~ r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | r2_hidden(sK2,k1_tarski(sK1))
% 2.44/0.99      | r2_hidden(sK2,sK1) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1291,plain,
% 2.44/0.99      ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) != iProver_top
% 2.44/0.99      | r2_hidden(sK2,k1_tarski(sK1)) = iProver_top
% 2.44/0.99      | r2_hidden(sK2,sK1) = iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_1290]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1484,plain,
% 2.44/0.99      ( r2_hidden(sK2,k2_xboole_0(sK1,k1_tarski(sK1))) != iProver_top ),
% 2.44/0.99      inference(global_propositional_subsumption,
% 2.44/0.99                [status(thm)],
% 2.44/0.99                [c_1078,c_485,c_1230,c_1241,c_1291]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_2232,plain,
% 2.44/0.99      ( r2_hidden(sK1,sK2) != iProver_top ),
% 2.44/0.99      inference(global_propositional_subsumption,
% 2.44/0.99                [status(thm)],
% 2.44/0.99                [c_1082,c_369,c_485,c_1230,c_1241,c_1291]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_3054,plain,
% 2.44/0.99      ( sK2 = sK1
% 2.44/0.99      | r2_hidden(sK2,sK1) = iProver_top
% 2.44/0.99      | v3_ordinal1(sK2) != iProver_top
% 2.44/0.99      | v3_ordinal1(sK1) != iProver_top ),
% 2.44/0.99      inference(superposition,[status(thm)],[c_1087,c_2232]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_4,plain,
% 2.44/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,k2_xboole_0(X2,X1)) ),
% 2.44/0.99      inference(cnf_transformation,[],[f60]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1091,plain,
% 2.44/0.99      ( r2_hidden(X0,X1) != iProver_top
% 2.44/0.99      | r2_hidden(X0,k2_xboole_0(X2,X1)) = iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1495,plain,
% 2.44/0.99      ( r2_hidden(sK2,k1_tarski(sK1)) != iProver_top ),
% 2.44/0.99      inference(superposition,[status(thm)],[c_1091,c_1484]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1506,plain,
% 2.44/0.99      ( ~ r2_hidden(sK2,k1_tarski(sK1)) ),
% 2.44/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_1495]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_5,plain,
% 2.44/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,k2_xboole_0(X1,X2)) ),
% 2.44/0.99      inference(cnf_transformation,[],[f61]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1090,plain,
% 2.44/0.99      ( r2_hidden(X0,X1) != iProver_top
% 2.44/0.99      | r2_hidden(X0,k2_xboole_0(X1,X2)) = iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1489,plain,
% 2.44/0.99      ( r2_hidden(sK2,sK1) != iProver_top ),
% 2.44/0.99      inference(superposition,[status(thm)],[c_1090,c_1484]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1285,plain,
% 2.44/0.99      ( r2_hidden(X0,X0)
% 2.44/0.99      | ~ r2_hidden(X0,k2_xboole_0(X0,k1_tarski(X0)))
% 2.44/0.99      | r2_hidden(X0,k1_tarski(X0)) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_1287,plain,
% 2.44/0.99      ( ~ r2_hidden(sK1,k2_xboole_0(sK1,k1_tarski(sK1)))
% 2.44/0.99      | r2_hidden(sK1,k1_tarski(sK1))
% 2.44/0.99      | r2_hidden(sK1,sK1) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_1285]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_677,plain,
% 2.44/0.99      ( X0 != X1 | k1_tarski(X0) = k1_tarski(X1) ),
% 2.44/0.99      theory(equality) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_681,plain,
% 2.44/0.99      ( k1_tarski(sK1) = k1_tarski(sK1) | sK1 != sK1 ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_677]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_66,plain,
% 2.44/0.99      ( ~ r2_hidden(sK1,sK1) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_0]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_11,plain,
% 2.44/0.99      ( r2_hidden(X0,k2_xboole_0(X0,k1_tarski(X0))) ),
% 2.44/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_37,plain,
% 2.44/0.99      ( r2_hidden(sK1,k2_xboole_0(sK1,k1_tarski(sK1))) ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_11]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_34,plain,
% 2.44/0.99      ( r2_hidden(sK1,sK1) | ~ v3_ordinal1(sK1) | sK1 = sK1 ),
% 2.44/0.99      inference(instantiation,[status(thm)],[c_12]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_21,plain,
% 2.44/0.99      ( v3_ordinal1(sK2) = iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(c_20,plain,
% 2.44/0.99      ( v3_ordinal1(sK1) = iProver_top ),
% 2.44/0.99      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.44/0.99  
% 2.44/0.99  cnf(contradiction,plain,
% 2.44/0.99      ( $false ),
% 2.44/0.99      inference(minisat,
% 2.44/0.99                [status(thm)],
% 2.44/0.99                [c_8004,c_3054,c_1506,c_1489,c_1287,c_681,c_66,c_37,c_34,
% 2.44/0.99                 c_21,c_20,c_19]) ).
% 2.44/0.99  
% 2.44/0.99  
% 2.44/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.44/0.99  
% 2.44/0.99  ------                               Statistics
% 2.44/0.99  
% 2.44/0.99  ------ General
% 2.44/0.99  
% 2.44/0.99  abstr_ref_over_cycles:                  0
% 2.44/0.99  abstr_ref_under_cycles:                 0
% 2.44/0.99  gc_basic_clause_elim:                   0
% 2.44/0.99  forced_gc_time:                         0
% 2.44/0.99  parsing_time:                           0.008
% 2.44/0.99  unif_index_cands_time:                  0.
% 2.44/0.99  unif_index_add_time:                    0.
% 2.44/0.99  orderings_time:                         0.
% 2.44/0.99  out_proof_time:                         0.009
% 2.44/0.99  total_time:                             0.275
% 2.44/0.99  num_of_symbols:                         40
% 2.44/0.99  num_of_terms:                           11122
% 2.44/0.99  
% 2.44/0.99  ------ Preprocessing
% 2.44/0.99  
% 2.44/0.99  num_of_splits:                          0
% 2.44/0.99  num_of_split_atoms:                     0
% 2.44/0.99  num_of_reused_defs:                     0
% 2.44/0.99  num_eq_ax_congr_red:                    10
% 2.44/0.99  num_of_sem_filtered_clauses:            1
% 2.44/0.99  num_of_subtypes:                        0
% 2.44/0.99  monotx_restored_types:                  0
% 2.44/0.99  sat_num_of_epr_types:                   0
% 2.44/0.99  sat_num_of_non_cyclic_types:            0
% 2.44/0.99  sat_guarded_non_collapsed_types:        0
% 2.44/0.99  num_pure_diseq_elim:                    0
% 2.44/0.99  simp_replaced_by:                       0
% 2.44/0.99  res_preprocessed:                       87
% 2.44/0.99  prep_upred:                             0
% 2.44/0.99  prep_unflattend:                        22
% 2.44/0.99  smt_new_axioms:                         0
% 2.44/0.99  pred_elim_cands:                        2
% 2.44/0.99  pred_elim:                              2
% 2.44/0.99  pred_elim_cl:                           2
% 2.44/0.99  pred_elim_cycles:                       5
% 2.44/0.99  merged_defs:                            10
% 2.44/0.99  merged_defs_ncl:                        0
% 2.44/0.99  bin_hyper_res:                          10
% 2.44/0.99  prep_cycles:                            4
% 2.44/0.99  pred_elim_time:                         0.004
% 2.44/0.99  splitting_time:                         0.
% 2.44/0.99  sem_filter_time:                        0.
% 2.44/0.99  monotx_time:                            0.
% 2.44/0.99  subtype_inf_time:                       0.
% 2.44/0.99  
% 2.44/0.99  ------ Problem properties
% 2.44/0.99  
% 2.44/0.99  clauses:                                18
% 2.44/0.99  conjectures:                            2
% 2.44/0.99  epr:                                    4
% 2.44/0.99  horn:                                   13
% 2.44/0.99  ground:                                 4
% 2.44/0.99  unary:                                  3
% 2.44/0.99  binary:                                 7
% 2.44/0.99  lits:                                   45
% 2.44/0.99  lits_eq:                                6
% 2.44/0.99  fd_pure:                                0
% 2.44/0.99  fd_pseudo:                              0
% 2.44/0.99  fd_cond:                                0
% 2.44/0.99  fd_pseudo_cond:                         4
% 2.44/0.99  ac_symbols:                             0
% 2.44/0.99  
% 2.44/0.99  ------ Propositional Solver
% 2.44/0.99  
% 2.44/0.99  prop_solver_calls:                      27
% 2.44/0.99  prop_fast_solver_calls:                 587
% 2.44/0.99  smt_solver_calls:                       0
% 2.44/0.99  smt_fast_solver_calls:                  0
% 2.44/0.99  prop_num_of_clauses:                    3646
% 2.44/0.99  prop_preprocess_simplified:             8177
% 2.44/0.99  prop_fo_subsumed:                       11
% 2.44/0.99  prop_solver_time:                       0.
% 2.44/0.99  smt_solver_time:                        0.
% 2.44/0.99  smt_fast_solver_time:                   0.
% 2.44/0.99  prop_fast_solver_time:                  0.
% 2.44/0.99  prop_unsat_core_time:                   0.
% 2.44/0.99  
% 2.44/0.99  ------ QBF
% 2.44/0.99  
% 2.44/0.99  qbf_q_res:                              0
% 2.44/0.99  qbf_num_tautologies:                    0
% 2.44/0.99  qbf_prep_cycles:                        0
% 2.44/0.99  
% 2.44/0.99  ------ BMC1
% 2.44/0.99  
% 2.44/0.99  bmc1_current_bound:                     -1
% 2.44/0.99  bmc1_last_solved_bound:                 -1
% 2.44/0.99  bmc1_unsat_core_size:                   -1
% 2.44/0.99  bmc1_unsat_core_parents_size:           -1
% 2.44/0.99  bmc1_merge_next_fun:                    0
% 2.44/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.44/0.99  
% 2.44/0.99  ------ Instantiation
% 2.44/0.99  
% 2.44/0.99  inst_num_of_clauses:                    926
% 2.44/0.99  inst_num_in_passive:                    198
% 2.44/0.99  inst_num_in_active:                     263
% 2.44/0.99  inst_num_in_unprocessed:                464
% 2.44/0.99  inst_num_of_loops:                      271
% 2.44/0.99  inst_num_of_learning_restarts:          0
% 2.44/0.99  inst_num_moves_active_passive:          6
% 2.44/0.99  inst_lit_activity:                      0
% 2.44/0.99  inst_lit_activity_moves:                0
% 2.44/0.99  inst_num_tautologies:                   0
% 2.44/0.99  inst_num_prop_implied:                  0
% 2.44/0.99  inst_num_existing_simplified:           0
% 2.44/0.99  inst_num_eq_res_simplified:             0
% 2.44/0.99  inst_num_child_elim:                    0
% 2.44/0.99  inst_num_of_dismatching_blockings:      283
% 2.44/0.99  inst_num_of_non_proper_insts:           535
% 2.44/0.99  inst_num_of_duplicates:                 0
% 2.44/0.99  inst_inst_num_from_inst_to_res:         0
% 2.44/0.99  inst_dismatching_checking_time:         0.
% 2.44/0.99  
% 2.44/0.99  ------ Resolution
% 2.44/0.99  
% 2.44/0.99  res_num_of_clauses:                     0
% 2.44/0.99  res_num_in_passive:                     0
% 2.44/0.99  res_num_in_active:                      0
% 2.44/0.99  res_num_of_loops:                       91
% 2.44/0.99  res_forward_subset_subsumed:            36
% 2.44/0.99  res_backward_subset_subsumed:           0
% 2.44/0.99  res_forward_subsumed:                   0
% 2.44/0.99  res_backward_subsumed:                  0
% 2.44/0.99  res_forward_subsumption_resolution:     0
% 2.44/0.99  res_backward_subsumption_resolution:    0
% 2.44/0.99  res_clause_to_clause_subsumption:       1445
% 2.44/0.99  res_orphan_elimination:                 0
% 2.44/0.99  res_tautology_del:                      42
% 2.44/0.99  res_num_eq_res_simplified:              0
% 2.44/0.99  res_num_sel_changes:                    0
% 2.44/0.99  res_moves_from_active_to_pass:          0
% 2.44/0.99  
% 2.44/0.99  ------ Superposition
% 2.44/0.99  
% 2.44/0.99  sup_time_total:                         0.
% 2.44/0.99  sup_time_generating:                    0.
% 2.44/0.99  sup_time_sim_full:                      0.
% 2.44/0.99  sup_time_sim_immed:                     0.
% 2.44/0.99  
% 2.44/0.99  sup_num_of_clauses:                     190
% 2.44/0.99  sup_num_in_active:                      53
% 2.44/0.99  sup_num_in_passive:                     137
% 2.44/0.99  sup_num_of_loops:                       54
% 2.44/0.99  sup_fw_superposition:                   147
% 2.44/0.99  sup_bw_superposition:                   93
% 2.44/0.99  sup_immediate_simplified:               14
% 2.44/0.99  sup_given_eliminated:                   1
% 2.44/0.99  comparisons_done:                       0
% 2.44/0.99  comparisons_avoided:                    0
% 2.44/0.99  
% 2.44/0.99  ------ Simplifications
% 2.44/0.99  
% 2.44/0.99  
% 2.44/0.99  sim_fw_subset_subsumed:                 10
% 2.44/0.99  sim_bw_subset_subsumed:                 0
% 2.44/0.99  sim_fw_subsumed:                        8
% 2.44/0.99  sim_bw_subsumed:                        8
% 2.44/0.99  sim_fw_subsumption_res:                 2
% 2.44/0.99  sim_bw_subsumption_res:                 0
% 2.44/0.99  sim_tautology_del:                      11
% 2.44/0.99  sim_eq_tautology_del:                   1
% 2.44/0.99  sim_eq_res_simp:                        6
% 2.44/0.99  sim_fw_demodulated:                     0
% 2.44/0.99  sim_bw_demodulated:                     0
% 2.44/0.99  sim_light_normalised:                   0
% 2.44/0.99  sim_joinable_taut:                      0
% 2.44/0.99  sim_joinable_simp:                      0
% 2.44/0.99  sim_ac_normalised:                      0
% 2.44/0.99  sim_smt_subsumption:                    0
% 2.44/0.99  
%------------------------------------------------------------------------------
