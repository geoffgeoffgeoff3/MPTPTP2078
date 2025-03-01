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
% DateTime   : Thu Dec  3 11:53:45 EST 2020

% Result     : Theorem 3.89s
% Output     : CNFRefutation 3.89s
% Verified   : 
% Statistics : Number of formulae       :  171 (1704 expanded)
%              Number of clauses        :   70 ( 249 expanded)
%              Number of leaves         :   25 ( 474 expanded)
%              Depth                    :   20
%              Number of atoms          :  608 (4475 expanded)
%              Number of equality atoms :  239 (1421 expanded)
%              Maximal formula depth    :   22 (   6 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f15,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ~ ( ~ r2_hidden(X1,X0)
              & X0 != X1
              & ~ r2_hidden(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | X0 = X1
          | r2_hidden(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | X0 = X1
          | r2_hidden(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f26])).

fof(f91,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | X0 = X1
      | r2_hidden(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f16,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ( r2_hidden(X1,X0)
            | r1_ordinal1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | r1_ordinal1(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | r1_ordinal1(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f28])).

fof(f92,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | r1_ordinal1(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f19,conjecture,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ( r2_hidden(X0,X1)
          <=> r1_ordinal1(k1_ordinal1(X0),X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,negated_conjecture,(
    ~ ! [X0] :
        ( v3_ordinal1(X0)
       => ! [X1] :
            ( v3_ordinal1(X1)
           => ( r2_hidden(X0,X1)
            <=> r1_ordinal1(k1_ordinal1(X0),X1) ) ) ) ),
    inference(negated_conjecture,[],[f19])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( r2_hidden(X0,X1)
          <~> r1_ordinal1(k1_ordinal1(X0),X1) )
          & v3_ordinal1(X1) )
      & v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f51,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ r1_ordinal1(k1_ordinal1(X0),X1)
            | ~ r2_hidden(X0,X1) )
          & ( r1_ordinal1(k1_ordinal1(X0),X1)
            | r2_hidden(X0,X1) )
          & v3_ordinal1(X1) )
      & v3_ordinal1(X0) ) ),
    inference(nnf_transformation,[],[f32])).

fof(f52,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ r1_ordinal1(k1_ordinal1(X0),X1)
            | ~ r2_hidden(X0,X1) )
          & ( r1_ordinal1(k1_ordinal1(X0),X1)
            | r2_hidden(X0,X1) )
          & v3_ordinal1(X1) )
      & v3_ordinal1(X0) ) ),
    inference(flattening,[],[f51])).

fof(f54,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( ~ r1_ordinal1(k1_ordinal1(X0),X1)
            | ~ r2_hidden(X0,X1) )
          & ( r1_ordinal1(k1_ordinal1(X0),X1)
            | r2_hidden(X0,X1) )
          & v3_ordinal1(X1) )
     => ( ( ~ r1_ordinal1(k1_ordinal1(X0),sK5)
          | ~ r2_hidden(X0,sK5) )
        & ( r1_ordinal1(k1_ordinal1(X0),sK5)
          | r2_hidden(X0,sK5) )
        & v3_ordinal1(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f53,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( ~ r1_ordinal1(k1_ordinal1(X0),X1)
              | ~ r2_hidden(X0,X1) )
            & ( r1_ordinal1(k1_ordinal1(X0),X1)
              | r2_hidden(X0,X1) )
            & v3_ordinal1(X1) )
        & v3_ordinal1(X0) )
   => ( ? [X1] :
          ( ( ~ r1_ordinal1(k1_ordinal1(sK4),X1)
            | ~ r2_hidden(sK4,X1) )
          & ( r1_ordinal1(k1_ordinal1(sK4),X1)
            | r2_hidden(sK4,X1) )
          & v3_ordinal1(X1) )
      & v3_ordinal1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f55,plain,
    ( ( ~ r1_ordinal1(k1_ordinal1(sK4),sK5)
      | ~ r2_hidden(sK4,sK5) )
    & ( r1_ordinal1(k1_ordinal1(sK4),sK5)
      | r2_hidden(sK4,sK5) )
    & v3_ordinal1(sK5)
    & v3_ordinal1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f52,f54,f53])).

fof(f98,plain,
    ( ~ r1_ordinal1(k1_ordinal1(sK4),sK5)
    | ~ r2_hidden(sK4,sK5) ),
    inference(cnf_transformation,[],[f55])).

fof(f13,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f88,plain,(
    ! [X0] : k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0) ),
    inference(cnf_transformation,[],[f13])).

fof(f10,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f71,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f104,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f71,f103])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f65,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f68,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f8])).

fof(f99,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f67,f68])).

fof(f100,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f66,f99])).

fof(f101,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f65,f100])).

fof(f102,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f64,f101])).

fof(f103,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f63,f102])).

fof(f105,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f62,f103])).

fof(f106,plain,(
    ! [X0] : k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))) = k1_ordinal1(X0) ),
    inference(definition_unfolding,[],[f88,f104,f105])).

fof(f116,plain,
    ( ~ r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5)
    | ~ r2_hidden(sK4,sK5) ),
    inference(definition_unfolding,[],[f98,f106])).

fof(f95,plain,(
    v3_ordinal1(sK4) ),
    inference(cnf_transformation,[],[f55])).

fof(f96,plain,(
    v3_ordinal1(sK5) ),
    inference(cnf_transformation,[],[f55])).

fof(f17,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => v3_ordinal1(k1_ordinal1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( v3_ordinal1(k1_ordinal1(X0))
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f93,plain,(
    ! [X0] :
      ( v3_ordinal1(k1_ordinal1(X0))
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f115,plain,(
    ! [X0] :
      ( v3_ordinal1(k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))))
      | ~ v3_ordinal1(X0) ) ),
    inference(definition_unfolding,[],[f93,f106])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
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
    inference(nnf_transformation,[],[f1])).

fof(f37,plain,(
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
    inference(flattening,[],[f36])).

fof(f38,plain,(
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
    inference(rectify,[],[f37])).

fof(f39,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( ~ r2_hidden(X3,X1)
              & ~ r2_hidden(X3,X0) )
            | ~ r2_hidden(X3,X2) )
          & ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0)
            | r2_hidden(X3,X2) ) )
     => ( ( ( ~ r2_hidden(sK2(X0,X1,X2),X1)
            & ~ r2_hidden(sK2(X0,X1,X2),X0) )
          | ~ r2_hidden(sK2(X0,X1,X2),X2) )
        & ( r2_hidden(sK2(X0,X1,X2),X1)
          | r2_hidden(sK2(X0,X1,X2),X0)
          | r2_hidden(sK2(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ( ( ( ~ r2_hidden(sK2(X0,X1,X2),X1)
              & ~ r2_hidden(sK2(X0,X1,X2),X0) )
            | ~ r2_hidden(sK2(X0,X1,X2),X2) )
          & ( r2_hidden(sK2(X0,X1,X2),X1)
            | r2_hidden(sK2(X0,X1,X2),X0)
            | r2_hidden(sK2(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f38,f39])).

fof(f56,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f40])).

fof(f112,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f56,f104])).

fof(f120,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X1)
      | r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ) ),
    inference(equality_resolution,[],[f112])).

fof(f57,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X0)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f40])).

fof(f111,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X0)
      | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f57,f104])).

fof(f119,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))
      | ~ r2_hidden(X4,X0) ) ),
    inference(equality_resolution,[],[f111])).

fof(f97,plain,
    ( r1_ordinal1(k1_ordinal1(sK4),sK5)
    | r2_hidden(sK4,sK5) ),
    inference(cnf_transformation,[],[f55])).

fof(f117,plain,
    ( r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5)
    | r2_hidden(sK4,sK5) ),
    inference(definition_unfolding,[],[f97,f106])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( ( v3_ordinal1(X1)
        & v3_ordinal1(X0) )
     => ( r1_ordinal1(X0,X1)
      <=> r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( r1_ordinal1(X0,X1)
      <=> r1_tarski(X0,X1) )
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( r1_ordinal1(X0,X1)
      <=> r1_tarski(X0,X1) )
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f24])).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( ( r1_ordinal1(X0,X1)
          | ~ r1_tarski(X0,X1) )
        & ( r1_tarski(X0,X1)
          | ~ r1_ordinal1(X0,X1) ) )
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f89,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r1_ordinal1(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f18,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f94,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ( v3_ordinal1(X1)
        & v3_ordinal1(X0) )
     => ( r1_ordinal1(X1,X0)
        | r1_ordinal1(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( r1_ordinal1(X1,X0)
      | r1_ordinal1(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f23,plain,(
    ! [X0,X1] :
      ( r1_ordinal1(X1,X0)
      | r1_ordinal1(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f22])).

fof(f87,plain,(
    ! [X0,X1] :
      ( r1_ordinal1(X1,X0)
      | r1_ordinal1(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f58,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f40])).

fof(f110,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f58,f104])).

fof(f118,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))
      | ~ r2_hidden(X4,X1) ) ),
    inference(equality_resolution,[],[f110])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f70,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f113,plain,(
    ! [X0,X1] :
      ( r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f70,f105])).

fof(f34,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] :
      ( sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)
    <=> ! [X9] :
          ( r2_hidden(X9,X8)
        <=> sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).

fof(f42,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] :
      ( ( sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)
        | ? [X9] :
            ( ( ~ sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
              | ~ r2_hidden(X9,X8) )
            & ( sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
              | r2_hidden(X9,X8) ) ) )
      & ( ! [X9] :
            ( ( r2_hidden(X9,X8)
              | ~ sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) )
            & ( sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
              | ~ r2_hidden(X9,X8) ) )
        | ~ sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ) ) ),
    inference(nnf_transformation,[],[f34])).

fof(f43,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] :
      ( ( sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)
        | ? [X9] :
            ( ( ~ sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
              | ~ r2_hidden(X9,X8) )
            & ( sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
              | r2_hidden(X9,X8) ) ) )
      & ( ! [X10] :
            ( ( r2_hidden(X10,X8)
              | ~ sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0) )
            & ( sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0)
              | ~ r2_hidden(X10,X8) ) )
        | ~ sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ) ) ),
    inference(rectify,[],[f42])).

fof(f44,plain,(
    ! [X8,X7,X6,X5,X4,X3,X2,X1,X0] :
      ( ? [X9] :
          ( ( ~ sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
            | ~ r2_hidden(X9,X8) )
          & ( sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
            | r2_hidden(X9,X8) ) )
     => ( ( ~ sP0(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X7,X6,X5,X4,X3,X2,X1,X0)
          | ~ r2_hidden(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X8) )
        & ( sP0(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X7,X6,X5,X4,X3,X2,X1,X0)
          | r2_hidden(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X8) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] :
      ( ( sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)
        | ( ( ~ sP0(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X7,X6,X5,X4,X3,X2,X1,X0)
            | ~ r2_hidden(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X8) )
          & ( sP0(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X7,X6,X5,X4,X3,X2,X1,X0)
            | r2_hidden(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X8) ) ) )
      & ( ! [X10] :
            ( ( r2_hidden(X10,X8)
              | ~ sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0) )
            & ( sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0)
              | ~ r2_hidden(X10,X8) ) )
        | ~ sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f43,f44])).

fof(f73,plain,(
    ! [X6,X4,X2,X0,X10,X8,X7,X5,X3,X1] :
      ( r2_hidden(X10,X8)
      | ~ sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0)
      | ~ sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] :
      ( k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = X8
    <=> ! [X9] :
          ( r2_hidden(X9,X8)
        <=> ~ ( X7 != X9
              & X6 != X9
              & X5 != X9
              & X4 != X9
              & X3 != X9
              & X2 != X9
              & X1 != X9
              & X0 != X9 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] :
      ( k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = X8
    <=> ! [X9] :
          ( r2_hidden(X9,X8)
        <=> ( X7 = X9
            | X6 = X9
            | X5 = X9
            | X4 = X9
            | X3 = X9
            | X2 = X9
            | X1 = X9
            | X0 = X9 ) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f33,plain,(
    ! [X9,X7,X6,X5,X4,X3,X2,X1,X0] :
      ( sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
    <=> ( X7 = X9
        | X6 = X9
        | X5 = X9
        | X4 = X9
        | X3 = X9
        | X2 = X9
        | X1 = X9
        | X0 = X9 ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f35,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] :
      ( k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = X8
    <=> sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ) ),
    inference(definition_folding,[],[f21,f34,f33])).

fof(f49,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] :
      ( ( k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = X8
        | ~ sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) )
      & ( sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)
        | k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) != X8 ) ) ),
    inference(nnf_transformation,[],[f35])).

fof(f85,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] :
      ( sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)
      | k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) != X8 ) ),
    inference(cnf_transformation,[],[f49])).

fof(f129,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : sP1(X0,X1,X2,X3,X4,X5,X6,X7,k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) ),
    inference(equality_resolution,[],[f85])).

fof(f46,plain,(
    ! [X9,X7,X6,X5,X4,X3,X2,X1,X0] :
      ( ( sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
        | ( X7 != X9
          & X6 != X9
          & X5 != X9
          & X4 != X9
          & X3 != X9
          & X2 != X9
          & X1 != X9
          & X0 != X9 ) )
      & ( X7 = X9
        | X6 = X9
        | X5 = X9
        | X4 = X9
        | X3 = X9
        | X2 = X9
        | X1 = X9
        | X0 = X9
        | ~ sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) ) ) ),
    inference(nnf_transformation,[],[f33])).

fof(f47,plain,(
    ! [X9,X7,X6,X5,X4,X3,X2,X1,X0] :
      ( ( sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)
        | ( X7 != X9
          & X6 != X9
          & X5 != X9
          & X4 != X9
          & X3 != X9
          & X2 != X9
          & X1 != X9
          & X0 != X9 ) )
      & ( X7 = X9
        | X6 = X9
        | X5 = X9
        | X4 = X9
        | X3 = X9
        | X2 = X9
        | X1 = X9
        | X0 = X9
        | ~ sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) ) ) ),
    inference(flattening,[],[f46])).

fof(f48,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] :
      ( ( sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8)
        | ( X0 != X1
          & X0 != X2
          & X0 != X3
          & X0 != X4
          & X0 != X5
          & X0 != X6
          & X0 != X7
          & X0 != X8 ) )
      & ( X0 = X1
        | X0 = X2
        | X0 = X3
        | X0 = X4
        | X0 = X5
        | X0 = X6
        | X0 = X7
        | X0 = X8
        | ~ sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8) ) ) ),
    inference(rectify,[],[f47])).

fof(f77,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] :
      ( sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8)
      | X0 != X8 ) ),
    inference(cnf_transformation,[],[f48])).

fof(f128,plain,(
    ! [X6,X4,X2,X8,X7,X5,X3,X1] : sP0(X8,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(equality_resolution,[],[f77])).

cnf(c_26,plain,
    ( r2_hidden(X0,X1)
    | r2_hidden(X1,X0)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1815,plain,
    ( X0 = X1
    | r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X1,X0) = iProver_top
    | v3_ordinal1(X1) != iProver_top
    | v3_ordinal1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_27,plain,
    ( r1_ordinal1(X0,X1)
    | r2_hidden(X1,X0)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X0) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_1814,plain,
    ( r1_ordinal1(X0,X1) = iProver_top
    | r2_hidden(X1,X0) = iProver_top
    | v3_ordinal1(X0) != iProver_top
    | v3_ordinal1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_30,negated_conjecture,
    ( ~ r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5)
    | ~ r2_hidden(sK4,sK5) ),
    inference(cnf_transformation,[],[f116])).

cnf(c_1811,plain,
    ( r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) != iProver_top
    | r2_hidden(sK4,sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_2882,plain,
    ( r2_hidden(sK5,k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) = iProver_top
    | r2_hidden(sK4,sK5) != iProver_top
    | v3_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) != iProver_top
    | v3_ordinal1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1814,c_1811])).

cnf(c_33,negated_conjecture,
    ( v3_ordinal1(sK4) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_34,plain,
    ( v3_ordinal1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_32,negated_conjecture,
    ( v3_ordinal1(sK5) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_35,plain,
    ( v3_ordinal1(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_28,plain,
    ( ~ v3_ordinal1(X0)
    | v3_ordinal1(k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) ),
    inference(cnf_transformation,[],[f115])).

cnf(c_41,plain,
    ( v3_ordinal1(X0) != iProver_top
    | v3_ordinal1(k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_43,plain,
    ( v3_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) = iProver_top
    | v3_ordinal1(sK4) != iProver_top ),
    inference(instantiation,[status(thm)],[c_41])).

cnf(c_3340,plain,
    ( r2_hidden(sK5,k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) = iProver_top
    | r2_hidden(sK4,sK5) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2882,c_34,c_35,c_43])).

cnf(c_5,plain,
    ( r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) ),
    inference(cnf_transformation,[],[f120])).

cnf(c_1836,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_4779,plain,
    ( r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) = iProver_top
    | r2_hidden(sK5,sK4) = iProver_top
    | r2_hidden(sK4,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_3340,c_1836])).

cnf(c_4,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) ),
    inference(cnf_transformation,[],[f119])).

cnf(c_1837,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_31,negated_conjecture,
    ( r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5)
    | r2_hidden(sK4,sK5) ),
    inference(cnf_transformation,[],[f117])).

cnf(c_1810,plain,
    ( r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) = iProver_top
    | r2_hidden(sK4,sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_25,plain,
    ( ~ r1_ordinal1(X0,X1)
    | r1_tarski(X0,X1)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X0) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_1816,plain,
    ( r1_ordinal1(X0,X1) != iProver_top
    | r1_tarski(X0,X1) = iProver_top
    | v3_ordinal1(X0) != iProver_top
    | v3_ordinal1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_2836,plain,
    ( r1_tarski(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) = iProver_top
    | r2_hidden(sK4,sK5) = iProver_top
    | v3_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) != iProver_top
    | v3_ordinal1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1810,c_1816])).

cnf(c_3485,plain,
    ( r1_tarski(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) = iProver_top
    | r2_hidden(sK4,sK5) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2836,c_34,c_35,c_43])).

cnf(c_29,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_hidden(X1,X0) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_1812,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r2_hidden(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_3490,plain,
    ( r2_hidden(sK5,k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) != iProver_top
    | r2_hidden(sK4,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_3485,c_1812])).

cnf(c_3680,plain,
    ( r2_hidden(sK5,sK4) != iProver_top
    | r2_hidden(sK4,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_1837,c_3490])).

cnf(c_1990,plain,
    ( ~ r1_tarski(sK5,sK4)
    | ~ r2_hidden(sK4,sK5) ),
    inference(instantiation,[status(thm)],[c_29])).

cnf(c_1991,plain,
    ( r1_tarski(sK5,sK4) != iProver_top
    | r2_hidden(sK4,sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1990])).

cnf(c_2111,plain,
    ( ~ r1_ordinal1(sK5,sK4)
    | r1_tarski(sK5,sK4)
    | ~ v3_ordinal1(sK5)
    | ~ v3_ordinal1(sK4) ),
    inference(instantiation,[status(thm)],[c_25])).

cnf(c_2112,plain,
    ( r1_ordinal1(sK5,sK4) != iProver_top
    | r1_tarski(sK5,sK4) = iProver_top
    | v3_ordinal1(sK5) != iProver_top
    | v3_ordinal1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2111])).

cnf(c_2122,plain,
    ( ~ r1_ordinal1(X0,sK5)
    | r1_tarski(X0,sK5)
    | ~ v3_ordinal1(X0)
    | ~ v3_ordinal1(sK5) ),
    inference(instantiation,[status(thm)],[c_25])).

cnf(c_2123,plain,
    ( r1_ordinal1(X0,sK5) != iProver_top
    | r1_tarski(X0,sK5) = iProver_top
    | v3_ordinal1(X0) != iProver_top
    | v3_ordinal1(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2122])).

cnf(c_2125,plain,
    ( r1_ordinal1(sK4,sK5) != iProver_top
    | r1_tarski(sK4,sK5) = iProver_top
    | v3_ordinal1(sK5) != iProver_top
    | v3_ordinal1(sK4) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2123])).

cnf(c_2140,plain,
    ( ~ r1_tarski(X0,sK5)
    | ~ r2_hidden(sK5,X0) ),
    inference(instantiation,[status(thm)],[c_29])).

cnf(c_2141,plain,
    ( r1_tarski(X0,sK5) != iProver_top
    | r2_hidden(sK5,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2140])).

cnf(c_2143,plain,
    ( r1_tarski(sK4,sK5) != iProver_top
    | r2_hidden(sK5,sK4) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2141])).

cnf(c_23,plain,
    ( r1_ordinal1(X0,X1)
    | r1_ordinal1(X1,X0)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X0) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_2240,plain,
    ( r1_ordinal1(sK5,sK4)
    | r1_ordinal1(sK4,sK5)
    | ~ v3_ordinal1(sK5)
    | ~ v3_ordinal1(sK4) ),
    inference(instantiation,[status(thm)],[c_23])).

cnf(c_2244,plain,
    ( r1_ordinal1(sK5,sK4) = iProver_top
    | r1_ordinal1(sK4,sK5) = iProver_top
    | v3_ordinal1(sK5) != iProver_top
    | v3_ordinal1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2240])).

cnf(c_3981,plain,
    ( r2_hidden(sK5,sK4) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3680,c_34,c_35,c_1991,c_2112,c_2125,c_2143,c_2244])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) ),
    inference(cnf_transformation,[],[f118])).

cnf(c_1838,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_3679,plain,
    ( r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top
    | r2_hidden(sK4,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_1838,c_3490])).

cnf(c_6,plain,
    ( r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f113])).

cnf(c_1898,plain,
    ( r1_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK5)
    | ~ r2_hidden(sK4,sK5) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1899,plain,
    ( r1_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK5) = iProver_top
    | r2_hidden(sK4,sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1898])).

cnf(c_1987,plain,
    ( ~ r1_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK5)
    | ~ r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) ),
    inference(instantiation,[status(thm)],[c_29])).

cnf(c_1988,plain,
    ( r1_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK5) != iProver_top
    | r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1987])).

cnf(c_3986,plain,
    ( r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3679,c_1899,c_1988])).

cnf(c_5145,plain,
    ( r2_hidden(sK4,sK5) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4779,c_34,c_35,c_1899,c_1988,c_1991,c_2112,c_2125,c_2143,c_2244,c_3679,c_3680])).

cnf(c_5149,plain,
    ( sK5 = sK4
    | r2_hidden(sK5,sK4) = iProver_top
    | v3_ordinal1(sK5) != iProver_top
    | v3_ordinal1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1815,c_5145])).

cnf(c_1916,plain,
    ( r2_hidden(X0,sK5)
    | r2_hidden(sK5,X0)
    | ~ v3_ordinal1(X0)
    | ~ v3_ordinal1(sK5)
    | sK5 = X0 ),
    inference(instantiation,[status(thm)],[c_26])).

cnf(c_1917,plain,
    ( sK5 = X0
    | r2_hidden(X0,sK5) = iProver_top
    | r2_hidden(sK5,X0) = iProver_top
    | v3_ordinal1(X0) != iProver_top
    | v3_ordinal1(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1916])).

cnf(c_1919,plain,
    ( sK5 = sK4
    | r2_hidden(sK5,sK4) = iProver_top
    | r2_hidden(sK4,sK5) = iProver_top
    | v3_ordinal1(sK5) != iProver_top
    | v3_ordinal1(sK4) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1917])).

cnf(c_5153,plain,
    ( sK5 = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5149,c_34,c_35,c_1899,c_1919,c_1988,c_1991,c_2112,c_2125,c_2143,c_2244,c_3679,c_3680,c_4779])).

cnf(c_5156,plain,
    ( r2_hidden(sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5153,c_3986])).

cnf(c_10,plain,
    ( ~ sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8)
    | ~ sP1(X8,X7,X6,X5,X4,X3,X2,X1,X9)
    | r2_hidden(X0,X9) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_22,plain,
    ( sP1(X0,X1,X2,X3,X4,X5,X6,X7,k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) ),
    inference(cnf_transformation,[],[f129])).

cnf(c_627,plain,
    ( ~ sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8)
    | r2_hidden(X0,X9)
    | X10 != X1
    | X11 != X2
    | X12 != X3
    | X13 != X4
    | X14 != X5
    | X15 != X6
    | X16 != X7
    | X17 != X8
    | k6_enumset1(X17,X16,X15,X14,X13,X12,X11,X10) != X9 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_22])).

cnf(c_628,plain,
    ( ~ sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8)
    | r2_hidden(X0,k6_enumset1(X8,X7,X6,X5,X4,X3,X2,X1)) ),
    inference(unflattening,[status(thm)],[c_627])).

cnf(c_629,plain,
    ( sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8) != iProver_top
    | r2_hidden(X0,k6_enumset1(X8,X7,X6,X5,X4,X3,X2,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_628])).

cnf(c_631,plain,
    ( sP0(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) != iProver_top
    | r2_hidden(sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_629])).

cnf(c_19,plain,
    ( sP0(X0,X1,X2,X3,X4,X5,X6,X7,X0) ),
    inference(cnf_transformation,[],[f128])).

cnf(c_68,plain,
    ( sP0(X0,X1,X2,X3,X4,X5,X6,X7,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_70,plain,
    ( sP0(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) = iProver_top ),
    inference(instantiation,[status(thm)],[c_68])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5156,c_631,c_70])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n019.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 17:03:07 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 3.89/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.89/0.99  
% 3.89/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.89/0.99  
% 3.89/0.99  ------  iProver source info
% 3.89/0.99  
% 3.89/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.89/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.89/0.99  git: non_committed_changes: false
% 3.89/0.99  git: last_make_outside_of_git: false
% 3.89/0.99  
% 3.89/0.99  ------ 
% 3.89/0.99  
% 3.89/0.99  ------ Input Options
% 3.89/0.99  
% 3.89/0.99  --out_options                           all
% 3.89/0.99  --tptp_safe_out                         true
% 3.89/0.99  --problem_path                          ""
% 3.89/0.99  --include_path                          ""
% 3.89/0.99  --clausifier                            res/vclausify_rel
% 3.89/0.99  --clausifier_options                    ""
% 3.89/0.99  --stdin                                 false
% 3.89/0.99  --stats_out                             all
% 3.89/0.99  
% 3.89/0.99  ------ General Options
% 3.89/0.99  
% 3.89/0.99  --fof                                   false
% 3.89/0.99  --time_out_real                         305.
% 3.89/0.99  --time_out_virtual                      -1.
% 3.89/0.99  --symbol_type_check                     false
% 3.89/0.99  --clausify_out                          false
% 3.89/0.99  --sig_cnt_out                           false
% 3.89/0.99  --trig_cnt_out                          false
% 3.89/0.99  --trig_cnt_out_tolerance                1.
% 3.89/0.99  --trig_cnt_out_sk_spl                   false
% 3.89/0.99  --abstr_cl_out                          false
% 3.89/0.99  
% 3.89/0.99  ------ Global Options
% 3.89/0.99  
% 3.89/0.99  --schedule                              default
% 3.89/0.99  --add_important_lit                     false
% 3.89/0.99  --prop_solver_per_cl                    1000
% 3.89/0.99  --min_unsat_core                        false
% 3.89/0.99  --soft_assumptions                      false
% 3.89/0.99  --soft_lemma_size                       3
% 3.89/0.99  --prop_impl_unit_size                   0
% 3.89/0.99  --prop_impl_unit                        []
% 3.89/0.99  --share_sel_clauses                     true
% 3.89/0.99  --reset_solvers                         false
% 3.89/0.99  --bc_imp_inh                            [conj_cone]
% 3.89/0.99  --conj_cone_tolerance                   3.
% 3.89/0.99  --extra_neg_conj                        none
% 3.89/0.99  --large_theory_mode                     true
% 3.89/0.99  --prolific_symb_bound                   200
% 3.89/0.99  --lt_threshold                          2000
% 3.89/0.99  --clause_weak_htbl                      true
% 3.89/0.99  --gc_record_bc_elim                     false
% 3.89/0.99  
% 3.89/0.99  ------ Preprocessing Options
% 3.89/0.99  
% 3.89/0.99  --preprocessing_flag                    true
% 3.89/0.99  --time_out_prep_mult                    0.1
% 3.89/0.99  --splitting_mode                        input
% 3.89/0.99  --splitting_grd                         true
% 3.89/0.99  --splitting_cvd                         false
% 3.89/0.99  --splitting_cvd_svl                     false
% 3.89/0.99  --splitting_nvd                         32
% 3.89/0.99  --sub_typing                            true
% 3.89/0.99  --prep_gs_sim                           true
% 3.89/0.99  --prep_unflatten                        true
% 3.89/0.99  --prep_res_sim                          true
% 3.89/0.99  --prep_upred                            true
% 3.89/0.99  --prep_sem_filter                       exhaustive
% 3.89/0.99  --prep_sem_filter_out                   false
% 3.89/0.99  --pred_elim                             true
% 3.89/0.99  --res_sim_input                         true
% 3.89/0.99  --eq_ax_congr_red                       true
% 3.89/0.99  --pure_diseq_elim                       true
% 3.89/0.99  --brand_transform                       false
% 3.89/0.99  --non_eq_to_eq                          false
% 3.89/0.99  --prep_def_merge                        true
% 3.89/0.99  --prep_def_merge_prop_impl              false
% 3.89/0.99  --prep_def_merge_mbd                    true
% 3.89/0.99  --prep_def_merge_tr_red                 false
% 3.89/0.99  --prep_def_merge_tr_cl                  false
% 3.89/0.99  --smt_preprocessing                     true
% 3.89/0.99  --smt_ac_axioms                         fast
% 3.89/0.99  --preprocessed_out                      false
% 3.89/0.99  --preprocessed_stats                    false
% 3.89/0.99  
% 3.89/0.99  ------ Abstraction refinement Options
% 3.89/0.99  
% 3.89/0.99  --abstr_ref                             []
% 3.89/0.99  --abstr_ref_prep                        false
% 3.89/0.99  --abstr_ref_until_sat                   false
% 3.89/0.99  --abstr_ref_sig_restrict                funpre
% 3.89/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.89/0.99  --abstr_ref_under                       []
% 3.89/0.99  
% 3.89/0.99  ------ SAT Options
% 3.89/0.99  
% 3.89/0.99  --sat_mode                              false
% 3.89/0.99  --sat_fm_restart_options                ""
% 3.89/0.99  --sat_gr_def                            false
% 3.89/0.99  --sat_epr_types                         true
% 3.89/0.99  --sat_non_cyclic_types                  false
% 3.89/0.99  --sat_finite_models                     false
% 3.89/0.99  --sat_fm_lemmas                         false
% 3.89/0.99  --sat_fm_prep                           false
% 3.89/0.99  --sat_fm_uc_incr                        true
% 3.89/0.99  --sat_out_model                         small
% 3.89/0.99  --sat_out_clauses                       false
% 3.89/0.99  
% 3.89/0.99  ------ QBF Options
% 3.89/0.99  
% 3.89/0.99  --qbf_mode                              false
% 3.89/0.99  --qbf_elim_univ                         false
% 3.89/0.99  --qbf_dom_inst                          none
% 3.89/0.99  --qbf_dom_pre_inst                      false
% 3.89/0.99  --qbf_sk_in                             false
% 3.89/0.99  --qbf_pred_elim                         true
% 3.89/0.99  --qbf_split                             512
% 3.89/0.99  
% 3.89/0.99  ------ BMC1 Options
% 3.89/0.99  
% 3.89/0.99  --bmc1_incremental                      false
% 3.89/0.99  --bmc1_axioms                           reachable_all
% 3.89/0.99  --bmc1_min_bound                        0
% 3.89/0.99  --bmc1_max_bound                        -1
% 3.89/0.99  --bmc1_max_bound_default                -1
% 3.89/0.99  --bmc1_symbol_reachability              true
% 3.89/0.99  --bmc1_property_lemmas                  false
% 3.89/0.99  --bmc1_k_induction                      false
% 3.89/0.99  --bmc1_non_equiv_states                 false
% 3.89/0.99  --bmc1_deadlock                         false
% 3.89/0.99  --bmc1_ucm                              false
% 3.89/0.99  --bmc1_add_unsat_core                   none
% 3.89/0.99  --bmc1_unsat_core_children              false
% 3.89/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.89/0.99  --bmc1_out_stat                         full
% 3.89/0.99  --bmc1_ground_init                      false
% 3.89/0.99  --bmc1_pre_inst_next_state              false
% 3.89/0.99  --bmc1_pre_inst_state                   false
% 3.89/0.99  --bmc1_pre_inst_reach_state             false
% 3.89/0.99  --bmc1_out_unsat_core                   false
% 3.89/0.99  --bmc1_aig_witness_out                  false
% 3.89/0.99  --bmc1_verbose                          false
% 3.89/0.99  --bmc1_dump_clauses_tptp                false
% 3.89/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.89/0.99  --bmc1_dump_file                        -
% 3.89/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.89/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.89/0.99  --bmc1_ucm_extend_mode                  1
% 3.89/0.99  --bmc1_ucm_init_mode                    2
% 3.89/0.99  --bmc1_ucm_cone_mode                    none
% 3.89/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.89/0.99  --bmc1_ucm_relax_model                  4
% 3.89/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.89/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.89/0.99  --bmc1_ucm_layered_model                none
% 3.89/0.99  --bmc1_ucm_max_lemma_size               10
% 3.89/0.99  
% 3.89/0.99  ------ AIG Options
% 3.89/0.99  
% 3.89/0.99  --aig_mode                              false
% 3.89/0.99  
% 3.89/0.99  ------ Instantiation Options
% 3.89/0.99  
% 3.89/0.99  --instantiation_flag                    true
% 3.89/0.99  --inst_sos_flag                         true
% 3.89/0.99  --inst_sos_phase                        true
% 3.89/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.89/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.89/0.99  --inst_lit_sel_side                     num_symb
% 3.89/0.99  --inst_solver_per_active                1400
% 3.89/0.99  --inst_solver_calls_frac                1.
% 3.89/0.99  --inst_passive_queue_type               priority_queues
% 3.89/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.89/0.99  --inst_passive_queues_freq              [25;2]
% 3.89/0.99  --inst_dismatching                      true
% 3.89/0.99  --inst_eager_unprocessed_to_passive     true
% 3.89/0.99  --inst_prop_sim_given                   true
% 3.89/0.99  --inst_prop_sim_new                     false
% 3.89/0.99  --inst_subs_new                         false
% 3.89/0.99  --inst_eq_res_simp                      false
% 3.89/0.99  --inst_subs_given                       false
% 3.89/0.99  --inst_orphan_elimination               true
% 3.89/0.99  --inst_learning_loop_flag               true
% 3.89/0.99  --inst_learning_start                   3000
% 3.89/0.99  --inst_learning_factor                  2
% 3.89/0.99  --inst_start_prop_sim_after_learn       3
% 3.89/0.99  --inst_sel_renew                        solver
% 3.89/0.99  --inst_lit_activity_flag                true
% 3.89/0.99  --inst_restr_to_given                   false
% 3.89/0.99  --inst_activity_threshold               500
% 3.89/0.99  --inst_out_proof                        true
% 3.89/0.99  
% 3.89/0.99  ------ Resolution Options
% 3.89/0.99  
% 3.89/0.99  --resolution_flag                       true
% 3.89/0.99  --res_lit_sel                           adaptive
% 3.89/0.99  --res_lit_sel_side                      none
% 3.89/0.99  --res_ordering                          kbo
% 3.89/0.99  --res_to_prop_solver                    active
% 3.89/0.99  --res_prop_simpl_new                    false
% 3.89/0.99  --res_prop_simpl_given                  true
% 3.89/0.99  --res_passive_queue_type                priority_queues
% 3.89/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.89/0.99  --res_passive_queues_freq               [15;5]
% 3.89/0.99  --res_forward_subs                      full
% 3.89/0.99  --res_backward_subs                     full
% 3.89/0.99  --res_forward_subs_resolution           true
% 3.89/0.99  --res_backward_subs_resolution          true
% 3.89/0.99  --res_orphan_elimination                true
% 3.89/0.99  --res_time_limit                        2.
% 3.89/0.99  --res_out_proof                         true
% 3.89/0.99  
% 3.89/0.99  ------ Superposition Options
% 3.89/0.99  
% 3.89/0.99  --superposition_flag                    true
% 3.89/0.99  --sup_passive_queue_type                priority_queues
% 3.89/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.89/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.89/0.99  --demod_completeness_check              fast
% 3.89/0.99  --demod_use_ground                      true
% 3.89/0.99  --sup_to_prop_solver                    passive
% 3.89/0.99  --sup_prop_simpl_new                    true
% 3.89/0.99  --sup_prop_simpl_given                  true
% 3.89/0.99  --sup_fun_splitting                     true
% 3.89/0.99  --sup_smt_interval                      50000
% 3.89/0.99  
% 3.89/0.99  ------ Superposition Simplification Setup
% 3.89/0.99  
% 3.89/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.89/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.89/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.89/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.89/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.89/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.89/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.89/0.99  --sup_immed_triv                        [TrivRules]
% 3.89/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.89/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.89/0.99  --sup_immed_bw_main                     []
% 3.89/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.89/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.89/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.89/0.99  --sup_input_bw                          []
% 3.89/0.99  
% 3.89/0.99  ------ Combination Options
% 3.89/0.99  
% 3.89/0.99  --comb_res_mult                         3
% 3.89/0.99  --comb_sup_mult                         2
% 3.89/0.99  --comb_inst_mult                        10
% 3.89/0.99  
% 3.89/0.99  ------ Debug Options
% 3.89/0.99  
% 3.89/0.99  --dbg_backtrace                         false
% 3.89/0.99  --dbg_dump_prop_clauses                 false
% 3.89/0.99  --dbg_dump_prop_clauses_file            -
% 3.89/0.99  --dbg_out_stat                          false
% 3.89/0.99  ------ Parsing...
% 3.89/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.89/0.99  
% 3.89/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.89/0.99  
% 3.89/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.89/0.99  
% 3.89/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.89/0.99  ------ Proving...
% 3.89/0.99  ------ Problem Properties 
% 3.89/0.99  
% 3.89/0.99  
% 3.89/0.99  clauses                                 34
% 3.89/0.99  conjectures                             4
% 3.89/0.99  EPR                                     19
% 3.89/0.99  Horn                                    26
% 3.89/0.99  unary                                   11
% 3.89/0.99  binary                                  9
% 3.89/0.99  lits                                    84
% 3.89/0.99  lits eq                                 13
% 3.89/0.99  fd_pure                                 0
% 3.89/0.99  fd_pseudo                               0
% 3.89/0.99  fd_cond                                 0
% 3.89/0.99  fd_pseudo_cond                          6
% 3.89/0.99  AC symbols                              0
% 3.89/0.99  
% 3.89/0.99  ------ Schedule dynamic 5 is on 
% 3.89/0.99  
% 3.89/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.89/0.99  
% 3.89/0.99  
% 3.89/0.99  ------ 
% 3.89/0.99  Current options:
% 3.89/0.99  ------ 
% 3.89/0.99  
% 3.89/0.99  ------ Input Options
% 3.89/0.99  
% 3.89/0.99  --out_options                           all
% 3.89/0.99  --tptp_safe_out                         true
% 3.89/0.99  --problem_path                          ""
% 3.89/0.99  --include_path                          ""
% 3.89/0.99  --clausifier                            res/vclausify_rel
% 3.89/0.99  --clausifier_options                    ""
% 3.89/0.99  --stdin                                 false
% 3.89/0.99  --stats_out                             all
% 3.89/0.99  
% 3.89/0.99  ------ General Options
% 3.89/0.99  
% 3.89/0.99  --fof                                   false
% 3.89/0.99  --time_out_real                         305.
% 3.89/0.99  --time_out_virtual                      -1.
% 3.89/0.99  --symbol_type_check                     false
% 3.89/0.99  --clausify_out                          false
% 3.89/0.99  --sig_cnt_out                           false
% 3.89/0.99  --trig_cnt_out                          false
% 3.89/0.99  --trig_cnt_out_tolerance                1.
% 3.89/0.99  --trig_cnt_out_sk_spl                   false
% 3.89/0.99  --abstr_cl_out                          false
% 3.89/0.99  
% 3.89/0.99  ------ Global Options
% 3.89/0.99  
% 3.89/0.99  --schedule                              default
% 3.89/0.99  --add_important_lit                     false
% 3.89/0.99  --prop_solver_per_cl                    1000
% 3.89/0.99  --min_unsat_core                        false
% 3.89/0.99  --soft_assumptions                      false
% 3.89/0.99  --soft_lemma_size                       3
% 3.89/0.99  --prop_impl_unit_size                   0
% 3.89/0.99  --prop_impl_unit                        []
% 3.89/0.99  --share_sel_clauses                     true
% 3.89/0.99  --reset_solvers                         false
% 3.89/0.99  --bc_imp_inh                            [conj_cone]
% 3.89/0.99  --conj_cone_tolerance                   3.
% 3.89/0.99  --extra_neg_conj                        none
% 3.89/0.99  --large_theory_mode                     true
% 3.89/0.99  --prolific_symb_bound                   200
% 3.89/0.99  --lt_threshold                          2000
% 3.89/0.99  --clause_weak_htbl                      true
% 3.89/0.99  --gc_record_bc_elim                     false
% 3.89/0.99  
% 3.89/0.99  ------ Preprocessing Options
% 3.89/0.99  
% 3.89/0.99  --preprocessing_flag                    true
% 3.89/0.99  --time_out_prep_mult                    0.1
% 3.89/0.99  --splitting_mode                        input
% 3.89/0.99  --splitting_grd                         true
% 3.89/0.99  --splitting_cvd                         false
% 3.89/0.99  --splitting_cvd_svl                     false
% 3.89/0.99  --splitting_nvd                         32
% 3.89/0.99  --sub_typing                            true
% 3.89/0.99  --prep_gs_sim                           true
% 3.89/0.99  --prep_unflatten                        true
% 3.89/0.99  --prep_res_sim                          true
% 3.89/0.99  --prep_upred                            true
% 3.89/0.99  --prep_sem_filter                       exhaustive
% 3.89/0.99  --prep_sem_filter_out                   false
% 3.89/0.99  --pred_elim                             true
% 3.89/0.99  --res_sim_input                         true
% 3.89/0.99  --eq_ax_congr_red                       true
% 3.89/0.99  --pure_diseq_elim                       true
% 3.89/0.99  --brand_transform                       false
% 3.89/0.99  --non_eq_to_eq                          false
% 3.89/0.99  --prep_def_merge                        true
% 3.89/0.99  --prep_def_merge_prop_impl              false
% 3.89/0.99  --prep_def_merge_mbd                    true
% 3.89/0.99  --prep_def_merge_tr_red                 false
% 3.89/0.99  --prep_def_merge_tr_cl                  false
% 3.89/0.99  --smt_preprocessing                     true
% 3.89/0.99  --smt_ac_axioms                         fast
% 3.89/0.99  --preprocessed_out                      false
% 3.89/0.99  --preprocessed_stats                    false
% 3.89/0.99  
% 3.89/0.99  ------ Abstraction refinement Options
% 3.89/0.99  
% 3.89/0.99  --abstr_ref                             []
% 3.89/0.99  --abstr_ref_prep                        false
% 3.89/0.99  --abstr_ref_until_sat                   false
% 3.89/0.99  --abstr_ref_sig_restrict                funpre
% 3.89/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.89/0.99  --abstr_ref_under                       []
% 3.89/0.99  
% 3.89/0.99  ------ SAT Options
% 3.89/0.99  
% 3.89/0.99  --sat_mode                              false
% 3.89/0.99  --sat_fm_restart_options                ""
% 3.89/0.99  --sat_gr_def                            false
% 3.89/0.99  --sat_epr_types                         true
% 3.89/0.99  --sat_non_cyclic_types                  false
% 3.89/0.99  --sat_finite_models                     false
% 3.89/0.99  --sat_fm_lemmas                         false
% 3.89/0.99  --sat_fm_prep                           false
% 3.89/0.99  --sat_fm_uc_incr                        true
% 3.89/0.99  --sat_out_model                         small
% 3.89/0.99  --sat_out_clauses                       false
% 3.89/0.99  
% 3.89/0.99  ------ QBF Options
% 3.89/0.99  
% 3.89/0.99  --qbf_mode                              false
% 3.89/0.99  --qbf_elim_univ                         false
% 3.89/0.99  --qbf_dom_inst                          none
% 3.89/0.99  --qbf_dom_pre_inst                      false
% 3.89/0.99  --qbf_sk_in                             false
% 3.89/0.99  --qbf_pred_elim                         true
% 3.89/0.99  --qbf_split                             512
% 3.89/0.99  
% 3.89/0.99  ------ BMC1 Options
% 3.89/0.99  
% 3.89/0.99  --bmc1_incremental                      false
% 3.89/0.99  --bmc1_axioms                           reachable_all
% 3.89/0.99  --bmc1_min_bound                        0
% 3.89/0.99  --bmc1_max_bound                        -1
% 3.89/0.99  --bmc1_max_bound_default                -1
% 3.89/0.99  --bmc1_symbol_reachability              true
% 3.89/0.99  --bmc1_property_lemmas                  false
% 3.89/0.99  --bmc1_k_induction                      false
% 3.89/0.99  --bmc1_non_equiv_states                 false
% 3.89/0.99  --bmc1_deadlock                         false
% 3.89/0.99  --bmc1_ucm                              false
% 3.89/0.99  --bmc1_add_unsat_core                   none
% 3.89/0.99  --bmc1_unsat_core_children              false
% 3.89/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.89/0.99  --bmc1_out_stat                         full
% 3.89/0.99  --bmc1_ground_init                      false
% 3.89/0.99  --bmc1_pre_inst_next_state              false
% 3.89/0.99  --bmc1_pre_inst_state                   false
% 3.89/0.99  --bmc1_pre_inst_reach_state             false
% 3.89/0.99  --bmc1_out_unsat_core                   false
% 3.89/0.99  --bmc1_aig_witness_out                  false
% 3.89/0.99  --bmc1_verbose                          false
% 3.89/0.99  --bmc1_dump_clauses_tptp                false
% 3.89/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.89/0.99  --bmc1_dump_file                        -
% 3.89/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.89/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.89/0.99  --bmc1_ucm_extend_mode                  1
% 3.89/0.99  --bmc1_ucm_init_mode                    2
% 3.89/0.99  --bmc1_ucm_cone_mode                    none
% 3.89/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.89/0.99  --bmc1_ucm_relax_model                  4
% 3.89/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.89/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.89/0.99  --bmc1_ucm_layered_model                none
% 3.89/0.99  --bmc1_ucm_max_lemma_size               10
% 3.89/0.99  
% 3.89/0.99  ------ AIG Options
% 3.89/0.99  
% 3.89/0.99  --aig_mode                              false
% 3.89/0.99  
% 3.89/0.99  ------ Instantiation Options
% 3.89/0.99  
% 3.89/0.99  --instantiation_flag                    true
% 3.89/0.99  --inst_sos_flag                         true
% 3.89/0.99  --inst_sos_phase                        true
% 3.89/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.89/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.89/0.99  --inst_lit_sel_side                     none
% 3.89/0.99  --inst_solver_per_active                1400
% 3.89/0.99  --inst_solver_calls_frac                1.
% 3.89/0.99  --inst_passive_queue_type               priority_queues
% 3.89/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.89/0.99  --inst_passive_queues_freq              [25;2]
% 3.89/0.99  --inst_dismatching                      true
% 3.89/0.99  --inst_eager_unprocessed_to_passive     true
% 3.89/0.99  --inst_prop_sim_given                   true
% 3.89/0.99  --inst_prop_sim_new                     false
% 3.89/0.99  --inst_subs_new                         false
% 3.89/0.99  --inst_eq_res_simp                      false
% 3.89/0.99  --inst_subs_given                       false
% 3.89/0.99  --inst_orphan_elimination               true
% 3.89/0.99  --inst_learning_loop_flag               true
% 3.89/0.99  --inst_learning_start                   3000
% 3.89/0.99  --inst_learning_factor                  2
% 3.89/0.99  --inst_start_prop_sim_after_learn       3
% 3.89/0.99  --inst_sel_renew                        solver
% 3.89/0.99  --inst_lit_activity_flag                true
% 3.89/0.99  --inst_restr_to_given                   false
% 3.89/0.99  --inst_activity_threshold               500
% 3.89/0.99  --inst_out_proof                        true
% 3.89/0.99  
% 3.89/0.99  ------ Resolution Options
% 3.89/0.99  
% 3.89/0.99  --resolution_flag                       false
% 3.89/0.99  --res_lit_sel                           adaptive
% 3.89/0.99  --res_lit_sel_side                      none
% 3.89/0.99  --res_ordering                          kbo
% 3.89/0.99  --res_to_prop_solver                    active
% 3.89/0.99  --res_prop_simpl_new                    false
% 3.89/0.99  --res_prop_simpl_given                  true
% 3.89/0.99  --res_passive_queue_type                priority_queues
% 3.89/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.89/0.99  --res_passive_queues_freq               [15;5]
% 3.89/0.99  --res_forward_subs                      full
% 3.89/0.99  --res_backward_subs                     full
% 3.89/0.99  --res_forward_subs_resolution           true
% 3.89/0.99  --res_backward_subs_resolution          true
% 3.89/0.99  --res_orphan_elimination                true
% 3.89/0.99  --res_time_limit                        2.
% 3.89/0.99  --res_out_proof                         true
% 3.89/0.99  
% 3.89/0.99  ------ Superposition Options
% 3.89/0.99  
% 3.89/0.99  --superposition_flag                    true
% 3.89/0.99  --sup_passive_queue_type                priority_queues
% 3.89/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.89/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.89/0.99  --demod_completeness_check              fast
% 3.89/0.99  --demod_use_ground                      true
% 3.89/0.99  --sup_to_prop_solver                    passive
% 3.89/0.99  --sup_prop_simpl_new                    true
% 3.89/0.99  --sup_prop_simpl_given                  true
% 3.89/0.99  --sup_fun_splitting                     true
% 3.89/0.99  --sup_smt_interval                      50000
% 3.89/0.99  
% 3.89/0.99  ------ Superposition Simplification Setup
% 3.89/0.99  
% 3.89/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.89/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.89/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.89/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.89/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.89/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.89/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.89/0.99  --sup_immed_triv                        [TrivRules]
% 3.89/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.89/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.89/0.99  --sup_immed_bw_main                     []
% 3.89/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.89/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.89/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.89/0.99  --sup_input_bw                          []
% 3.89/0.99  
% 3.89/0.99  ------ Combination Options
% 3.89/0.99  
% 3.89/0.99  --comb_res_mult                         3
% 3.89/0.99  --comb_sup_mult                         2
% 3.89/0.99  --comb_inst_mult                        10
% 3.89/0.99  
% 3.89/0.99  ------ Debug Options
% 3.89/0.99  
% 3.89/0.99  --dbg_backtrace                         false
% 3.89/0.99  --dbg_dump_prop_clauses                 false
% 3.89/0.99  --dbg_dump_prop_clauses_file            -
% 3.89/0.99  --dbg_out_stat                          false
% 3.89/0.99  
% 3.89/0.99  
% 3.89/0.99  
% 3.89/0.99  
% 3.89/0.99  ------ Proving...
% 3.89/0.99  
% 3.89/0.99  
% 3.89/0.99  % SZS status Theorem for theBenchmark.p
% 3.89/0.99  
% 3.89/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.89/0.99  
% 3.89/0.99  fof(f15,axiom,(
% 3.89/0.99    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => ~(~r2_hidden(X1,X0) & X0 != X1 & ~r2_hidden(X0,X1))))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f26,plain,(
% 3.89/0.99    ! [X0] : (! [X1] : ((r2_hidden(X1,X0) | X0 = X1 | r2_hidden(X0,X1)) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 3.89/0.99    inference(ennf_transformation,[],[f15])).
% 3.89/0.99  
% 3.89/0.99  fof(f27,plain,(
% 3.89/0.99    ! [X0] : (! [X1] : (r2_hidden(X1,X0) | X0 = X1 | r2_hidden(X0,X1) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 3.89/0.99    inference(flattening,[],[f26])).
% 3.89/0.99  
% 3.89/0.99  fof(f91,plain,(
% 3.89/0.99    ( ! [X0,X1] : (r2_hidden(X1,X0) | X0 = X1 | r2_hidden(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f27])).
% 3.89/0.99  
% 3.89/0.99  fof(f16,axiom,(
% 3.89/0.99    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r2_hidden(X1,X0) | r1_ordinal1(X0,X1))))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f28,plain,(
% 3.89/0.99    ! [X0] : (! [X1] : ((r2_hidden(X1,X0) | r1_ordinal1(X0,X1)) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 3.89/0.99    inference(ennf_transformation,[],[f16])).
% 3.89/0.99  
% 3.89/0.99  fof(f29,plain,(
% 3.89/0.99    ! [X0] : (! [X1] : (r2_hidden(X1,X0) | r1_ordinal1(X0,X1) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 3.89/0.99    inference(flattening,[],[f28])).
% 3.89/0.99  
% 3.89/0.99  fof(f92,plain,(
% 3.89/0.99    ( ! [X0,X1] : (r2_hidden(X1,X0) | r1_ordinal1(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f29])).
% 3.89/0.99  
% 3.89/0.99  fof(f19,conjecture,(
% 3.89/0.99    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r2_hidden(X0,X1) <=> r1_ordinal1(k1_ordinal1(X0),X1))))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f20,negated_conjecture,(
% 3.89/0.99    ~! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r2_hidden(X0,X1) <=> r1_ordinal1(k1_ordinal1(X0),X1))))),
% 3.89/0.99    inference(negated_conjecture,[],[f19])).
% 3.89/0.99  
% 3.89/0.99  fof(f32,plain,(
% 3.89/0.99    ? [X0] : (? [X1] : ((r2_hidden(X0,X1) <~> r1_ordinal1(k1_ordinal1(X0),X1)) & v3_ordinal1(X1)) & v3_ordinal1(X0))),
% 3.89/0.99    inference(ennf_transformation,[],[f20])).
% 3.89/0.99  
% 3.89/0.99  fof(f51,plain,(
% 3.89/0.99    ? [X0] : (? [X1] : (((~r1_ordinal1(k1_ordinal1(X0),X1) | ~r2_hidden(X0,X1)) & (r1_ordinal1(k1_ordinal1(X0),X1) | r2_hidden(X0,X1))) & v3_ordinal1(X1)) & v3_ordinal1(X0))),
% 3.89/0.99    inference(nnf_transformation,[],[f32])).
% 3.89/0.99  
% 3.89/0.99  fof(f52,plain,(
% 3.89/0.99    ? [X0] : (? [X1] : ((~r1_ordinal1(k1_ordinal1(X0),X1) | ~r2_hidden(X0,X1)) & (r1_ordinal1(k1_ordinal1(X0),X1) | r2_hidden(X0,X1)) & v3_ordinal1(X1)) & v3_ordinal1(X0))),
% 3.89/0.99    inference(flattening,[],[f51])).
% 3.89/0.99  
% 3.89/0.99  fof(f54,plain,(
% 3.89/0.99    ( ! [X0] : (? [X1] : ((~r1_ordinal1(k1_ordinal1(X0),X1) | ~r2_hidden(X0,X1)) & (r1_ordinal1(k1_ordinal1(X0),X1) | r2_hidden(X0,X1)) & v3_ordinal1(X1)) => ((~r1_ordinal1(k1_ordinal1(X0),sK5) | ~r2_hidden(X0,sK5)) & (r1_ordinal1(k1_ordinal1(X0),sK5) | r2_hidden(X0,sK5)) & v3_ordinal1(sK5))) )),
% 3.89/0.99    introduced(choice_axiom,[])).
% 3.89/0.99  
% 3.89/0.99  fof(f53,plain,(
% 3.89/0.99    ? [X0] : (? [X1] : ((~r1_ordinal1(k1_ordinal1(X0),X1) | ~r2_hidden(X0,X1)) & (r1_ordinal1(k1_ordinal1(X0),X1) | r2_hidden(X0,X1)) & v3_ordinal1(X1)) & v3_ordinal1(X0)) => (? [X1] : ((~r1_ordinal1(k1_ordinal1(sK4),X1) | ~r2_hidden(sK4,X1)) & (r1_ordinal1(k1_ordinal1(sK4),X1) | r2_hidden(sK4,X1)) & v3_ordinal1(X1)) & v3_ordinal1(sK4))),
% 3.89/0.99    introduced(choice_axiom,[])).
% 3.89/0.99  
% 3.89/0.99  fof(f55,plain,(
% 3.89/0.99    ((~r1_ordinal1(k1_ordinal1(sK4),sK5) | ~r2_hidden(sK4,sK5)) & (r1_ordinal1(k1_ordinal1(sK4),sK5) | r2_hidden(sK4,sK5)) & v3_ordinal1(sK5)) & v3_ordinal1(sK4)),
% 3.89/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f52,f54,f53])).
% 3.89/0.99  
% 3.89/0.99  fof(f98,plain,(
% 3.89/0.99    ~r1_ordinal1(k1_ordinal1(sK4),sK5) | ~r2_hidden(sK4,sK5)),
% 3.89/0.99    inference(cnf_transformation,[],[f55])).
% 3.89/0.99  
% 3.89/0.99  fof(f13,axiom,(
% 3.89/0.99    ! [X0] : k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0)),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f88,plain,(
% 3.89/0.99    ( ! [X0] : (k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f13])).
% 3.89/0.99  
% 3.89/0.99  fof(f10,axiom,(
% 3.89/0.99    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f71,plain,(
% 3.89/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 3.89/0.99    inference(cnf_transformation,[],[f10])).
% 3.89/0.99  
% 3.89/0.99  fof(f104,plain,(
% 3.89/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) )),
% 3.89/0.99    inference(definition_unfolding,[],[f71,f103])).
% 3.89/0.99  
% 3.89/0.99  fof(f2,axiom,(
% 3.89/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f62,plain,(
% 3.89/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f2])).
% 3.89/0.99  
% 3.89/0.99  fof(f3,axiom,(
% 3.89/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f63,plain,(
% 3.89/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f3])).
% 3.89/0.99  
% 3.89/0.99  fof(f4,axiom,(
% 3.89/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f64,plain,(
% 3.89/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f4])).
% 3.89/0.99  
% 3.89/0.99  fof(f5,axiom,(
% 3.89/0.99    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f65,plain,(
% 3.89/0.99    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f5])).
% 3.89/0.99  
% 3.89/0.99  fof(f6,axiom,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f66,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f6])).
% 3.89/0.99  
% 3.89/0.99  fof(f7,axiom,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f67,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f7])).
% 3.89/0.99  
% 3.89/0.99  fof(f8,axiom,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f68,plain,(
% 3.89/0.99    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f8])).
% 3.89/0.99  
% 3.89/0.99  fof(f99,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 3.89/0.99    inference(definition_unfolding,[],[f67,f68])).
% 3.89/0.99  
% 3.89/0.99  fof(f100,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 3.89/0.99    inference(definition_unfolding,[],[f66,f99])).
% 3.89/0.99  
% 3.89/0.99  fof(f101,plain,(
% 3.89/0.99    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 3.89/0.99    inference(definition_unfolding,[],[f65,f100])).
% 3.89/0.99  
% 3.89/0.99  fof(f102,plain,(
% 3.89/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 3.89/0.99    inference(definition_unfolding,[],[f64,f101])).
% 3.89/0.99  
% 3.89/0.99  fof(f103,plain,(
% 3.89/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 3.89/0.99    inference(definition_unfolding,[],[f63,f102])).
% 3.89/0.99  
% 3.89/0.99  fof(f105,plain,(
% 3.89/0.99    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 3.89/0.99    inference(definition_unfolding,[],[f62,f103])).
% 3.89/0.99  
% 3.89/0.99  fof(f106,plain,(
% 3.89/0.99    ( ! [X0] : (k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))) = k1_ordinal1(X0)) )),
% 3.89/0.99    inference(definition_unfolding,[],[f88,f104,f105])).
% 3.89/0.99  
% 3.89/0.99  fof(f116,plain,(
% 3.89/0.99    ~r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) | ~r2_hidden(sK4,sK5)),
% 3.89/0.99    inference(definition_unfolding,[],[f98,f106])).
% 3.89/0.99  
% 3.89/0.99  fof(f95,plain,(
% 3.89/0.99    v3_ordinal1(sK4)),
% 3.89/0.99    inference(cnf_transformation,[],[f55])).
% 3.89/0.99  
% 3.89/0.99  fof(f96,plain,(
% 3.89/0.99    v3_ordinal1(sK5)),
% 3.89/0.99    inference(cnf_transformation,[],[f55])).
% 3.89/0.99  
% 3.89/0.99  fof(f17,axiom,(
% 3.89/0.99    ! [X0] : (v3_ordinal1(X0) => v3_ordinal1(k1_ordinal1(X0)))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f30,plain,(
% 3.89/0.99    ! [X0] : (v3_ordinal1(k1_ordinal1(X0)) | ~v3_ordinal1(X0))),
% 3.89/0.99    inference(ennf_transformation,[],[f17])).
% 3.89/0.99  
% 3.89/0.99  fof(f93,plain,(
% 3.89/0.99    ( ! [X0] : (v3_ordinal1(k1_ordinal1(X0)) | ~v3_ordinal1(X0)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f30])).
% 3.89/0.99  
% 3.89/0.99  fof(f115,plain,(
% 3.89/0.99    ( ! [X0] : (v3_ordinal1(k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) | ~v3_ordinal1(X0)) )),
% 3.89/0.99    inference(definition_unfolding,[],[f93,f106])).
% 3.89/0.99  
% 3.89/0.99  fof(f1,axiom,(
% 3.89/0.99    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f36,plain,(
% 3.89/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.89/0.99    inference(nnf_transformation,[],[f1])).
% 3.89/0.99  
% 3.89/0.99  fof(f37,plain,(
% 3.89/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.89/0.99    inference(flattening,[],[f36])).
% 3.89/0.99  
% 3.89/0.99  fof(f38,plain,(
% 3.89/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.89/0.99    inference(rectify,[],[f37])).
% 3.89/0.99  
% 3.89/0.99  fof(f39,plain,(
% 3.89/0.99    ! [X2,X1,X0] : (? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2))) => (((~r2_hidden(sK2(X0,X1,X2),X1) & ~r2_hidden(sK2(X0,X1,X2),X0)) | ~r2_hidden(sK2(X0,X1,X2),X2)) & (r2_hidden(sK2(X0,X1,X2),X1) | r2_hidden(sK2(X0,X1,X2),X0) | r2_hidden(sK2(X0,X1,X2),X2))))),
% 3.89/0.99    introduced(choice_axiom,[])).
% 3.89/0.99  
% 3.89/0.99  fof(f40,plain,(
% 3.89/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | (((~r2_hidden(sK2(X0,X1,X2),X1) & ~r2_hidden(sK2(X0,X1,X2),X0)) | ~r2_hidden(sK2(X0,X1,X2),X2)) & (r2_hidden(sK2(X0,X1,X2),X1) | r2_hidden(sK2(X0,X1,X2),X0) | r2_hidden(sK2(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.89/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f38,f39])).
% 3.89/0.99  
% 3.89/0.99  fof(f56,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k2_xboole_0(X0,X1) != X2) )),
% 3.89/0.99    inference(cnf_transformation,[],[f40])).
% 3.89/0.99  
% 3.89/0.99  fof(f112,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) != X2) )),
% 3.89/0.99    inference(definition_unfolding,[],[f56,f104])).
% 3.89/0.99  
% 3.89/0.99  fof(f120,plain,(
% 3.89/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) )),
% 3.89/0.99    inference(equality_resolution,[],[f112])).
% 3.89/0.99  
% 3.89/0.99  fof(f57,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X0) | k2_xboole_0(X0,X1) != X2) )),
% 3.89/0.99    inference(cnf_transformation,[],[f40])).
% 3.89/0.99  
% 3.89/0.99  fof(f111,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X0) | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) != X2) )),
% 3.89/0.99    inference(definition_unfolding,[],[f57,f104])).
% 3.89/0.99  
% 3.89/0.99  fof(f119,plain,(
% 3.89/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) | ~r2_hidden(X4,X0)) )),
% 3.89/0.99    inference(equality_resolution,[],[f111])).
% 3.89/0.99  
% 3.89/0.99  fof(f97,plain,(
% 3.89/0.99    r1_ordinal1(k1_ordinal1(sK4),sK5) | r2_hidden(sK4,sK5)),
% 3.89/0.99    inference(cnf_transformation,[],[f55])).
% 3.89/0.99  
% 3.89/0.99  fof(f117,plain,(
% 3.89/0.99    r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) | r2_hidden(sK4,sK5)),
% 3.89/0.99    inference(definition_unfolding,[],[f97,f106])).
% 3.89/0.99  
% 3.89/0.99  fof(f14,axiom,(
% 3.89/0.99    ! [X0,X1] : ((v3_ordinal1(X1) & v3_ordinal1(X0)) => (r1_ordinal1(X0,X1) <=> r1_tarski(X0,X1)))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f24,plain,(
% 3.89/0.99    ! [X0,X1] : ((r1_ordinal1(X0,X1) <=> r1_tarski(X0,X1)) | (~v3_ordinal1(X1) | ~v3_ordinal1(X0)))),
% 3.89/0.99    inference(ennf_transformation,[],[f14])).
% 3.89/0.99  
% 3.89/0.99  fof(f25,plain,(
% 3.89/0.99    ! [X0,X1] : ((r1_ordinal1(X0,X1) <=> r1_tarski(X0,X1)) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0))),
% 3.89/0.99    inference(flattening,[],[f24])).
% 3.89/0.99  
% 3.89/0.99  fof(f50,plain,(
% 3.89/0.99    ! [X0,X1] : (((r1_ordinal1(X0,X1) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~r1_ordinal1(X0,X1))) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0))),
% 3.89/0.99    inference(nnf_transformation,[],[f25])).
% 3.89/0.99  
% 3.89/0.99  fof(f89,plain,(
% 3.89/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r1_ordinal1(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f50])).
% 3.89/0.99  
% 3.89/0.99  fof(f18,axiom,(
% 3.89/0.99    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f31,plain,(
% 3.89/0.99    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 3.89/0.99    inference(ennf_transformation,[],[f18])).
% 3.89/0.99  
% 3.89/0.99  fof(f94,plain,(
% 3.89/0.99    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f31])).
% 3.89/0.99  
% 3.89/0.99  fof(f12,axiom,(
% 3.89/0.99    ! [X0,X1] : ((v3_ordinal1(X1) & v3_ordinal1(X0)) => (r1_ordinal1(X1,X0) | r1_ordinal1(X0,X1)))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f22,plain,(
% 3.89/0.99    ! [X0,X1] : ((r1_ordinal1(X1,X0) | r1_ordinal1(X0,X1)) | (~v3_ordinal1(X1) | ~v3_ordinal1(X0)))),
% 3.89/0.99    inference(ennf_transformation,[],[f12])).
% 3.89/0.99  
% 3.89/0.99  fof(f23,plain,(
% 3.89/0.99    ! [X0,X1] : (r1_ordinal1(X1,X0) | r1_ordinal1(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0))),
% 3.89/0.99    inference(flattening,[],[f22])).
% 3.89/0.99  
% 3.89/0.99  fof(f87,plain,(
% 3.89/0.99    ( ! [X0,X1] : (r1_ordinal1(X1,X0) | r1_ordinal1(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f23])).
% 3.89/0.99  
% 3.89/0.99  fof(f58,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k2_xboole_0(X0,X1) != X2) )),
% 3.89/0.99    inference(cnf_transformation,[],[f40])).
% 3.89/0.99  
% 3.89/0.99  fof(f110,plain,(
% 3.89/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) != X2) )),
% 3.89/0.99    inference(definition_unfolding,[],[f58,f104])).
% 3.89/0.99  
% 3.89/0.99  fof(f118,plain,(
% 3.89/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) | ~r2_hidden(X4,X1)) )),
% 3.89/0.99    inference(equality_resolution,[],[f110])).
% 3.89/0.99  
% 3.89/0.99  fof(f9,axiom,(
% 3.89/0.99    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f41,plain,(
% 3.89/0.99    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 3.89/0.99    inference(nnf_transformation,[],[f9])).
% 3.89/0.99  
% 3.89/0.99  fof(f70,plain,(
% 3.89/0.99    ( ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f41])).
% 3.89/0.99  
% 3.89/0.99  fof(f113,plain,(
% 3.89/0.99    ( ! [X0,X1] : (r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) | ~r2_hidden(X0,X1)) )),
% 3.89/0.99    inference(definition_unfolding,[],[f70,f105])).
% 3.89/0.99  
% 3.89/0.99  fof(f34,plain,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : (sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) <=> ! [X9] : (r2_hidden(X9,X8) <=> sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)))),
% 3.89/0.99    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).
% 3.89/0.99  
% 3.89/0.99  fof(f42,plain,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : ((sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) | ? [X9] : ((~sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) | ~r2_hidden(X9,X8)) & (sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) | r2_hidden(X9,X8)))) & (! [X9] : ((r2_hidden(X9,X8) | ~sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)) & (sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) | ~r2_hidden(X9,X8))) | ~sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)))),
% 3.89/0.99    inference(nnf_transformation,[],[f34])).
% 3.89/0.99  
% 3.89/0.99  fof(f43,plain,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : ((sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) | ? [X9] : ((~sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) | ~r2_hidden(X9,X8)) & (sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) | r2_hidden(X9,X8)))) & (! [X10] : ((r2_hidden(X10,X8) | ~sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0)) & (sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0) | ~r2_hidden(X10,X8))) | ~sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)))),
% 3.89/0.99    inference(rectify,[],[f42])).
% 3.89/0.99  
% 3.89/0.99  fof(f44,plain,(
% 3.89/0.99    ! [X8,X7,X6,X5,X4,X3,X2,X1,X0] : (? [X9] : ((~sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) | ~r2_hidden(X9,X8)) & (sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) | r2_hidden(X9,X8))) => ((~sP0(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X7,X6,X5,X4,X3,X2,X1,X0) | ~r2_hidden(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X8)) & (sP0(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X7,X6,X5,X4,X3,X2,X1,X0) | r2_hidden(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X8))))),
% 3.89/0.99    introduced(choice_axiom,[])).
% 3.89/0.99  
% 3.89/0.99  fof(f45,plain,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : ((sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) | ((~sP0(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X7,X6,X5,X4,X3,X2,X1,X0) | ~r2_hidden(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X8)) & (sP0(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X7,X6,X5,X4,X3,X2,X1,X0) | r2_hidden(sK3(X0,X1,X2,X3,X4,X5,X6,X7,X8),X8)))) & (! [X10] : ((r2_hidden(X10,X8) | ~sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0)) & (sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0) | ~r2_hidden(X10,X8))) | ~sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)))),
% 3.89/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f43,f44])).
% 3.89/0.99  
% 3.89/0.99  fof(f73,plain,(
% 3.89/0.99    ( ! [X6,X4,X2,X0,X10,X8,X7,X5,X3,X1] : (r2_hidden(X10,X8) | ~sP0(X10,X7,X6,X5,X4,X3,X2,X1,X0) | ~sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 3.89/0.99    inference(cnf_transformation,[],[f45])).
% 3.89/0.99  
% 3.89/0.99  fof(f11,axiom,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : (k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = X8 <=> ! [X9] : (r2_hidden(X9,X8) <=> ~(X7 != X9 & X6 != X9 & X5 != X9 & X4 != X9 & X3 != X9 & X2 != X9 & X1 != X9 & X0 != X9)))),
% 3.89/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.89/0.99  
% 3.89/0.99  fof(f21,plain,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : (k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = X8 <=> ! [X9] : (r2_hidden(X9,X8) <=> (X7 = X9 | X6 = X9 | X5 = X9 | X4 = X9 | X3 = X9 | X2 = X9 | X1 = X9 | X0 = X9)))),
% 3.89/0.99    inference(ennf_transformation,[],[f11])).
% 3.89/0.99  
% 3.89/0.99  fof(f33,plain,(
% 3.89/0.99    ! [X9,X7,X6,X5,X4,X3,X2,X1,X0] : (sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) <=> (X7 = X9 | X6 = X9 | X5 = X9 | X4 = X9 | X3 = X9 | X2 = X9 | X1 = X9 | X0 = X9))),
% 3.89/0.99    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 3.89/0.99  
% 3.89/0.99  fof(f35,plain,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : (k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = X8 <=> sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8))),
% 3.89/0.99    inference(definition_folding,[],[f21,f34,f33])).
% 3.89/0.99  
% 3.89/0.99  fof(f49,plain,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : ((k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = X8 | ~sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) & (sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) | k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) != X8))),
% 3.89/0.99    inference(nnf_transformation,[],[f35])).
% 3.89/0.99  
% 3.89/0.99  fof(f85,plain,(
% 3.89/0.99    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (sP1(X0,X1,X2,X3,X4,X5,X6,X7,X8) | k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) != X8) )),
% 3.89/0.99    inference(cnf_transformation,[],[f49])).
% 3.89/0.99  
% 3.89/0.99  fof(f129,plain,(
% 3.89/0.99    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (sP1(X0,X1,X2,X3,X4,X5,X6,X7,k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7))) )),
% 3.89/0.99    inference(equality_resolution,[],[f85])).
% 3.89/0.99  
% 3.89/0.99  fof(f46,plain,(
% 3.89/0.99    ! [X9,X7,X6,X5,X4,X3,X2,X1,X0] : ((sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) | (X7 != X9 & X6 != X9 & X5 != X9 & X4 != X9 & X3 != X9 & X2 != X9 & X1 != X9 & X0 != X9)) & ((X7 = X9 | X6 = X9 | X5 = X9 | X4 = X9 | X3 = X9 | X2 = X9 | X1 = X9 | X0 = X9) | ~sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)))),
% 3.89/0.99    inference(nnf_transformation,[],[f33])).
% 3.89/0.99  
% 3.89/0.99  fof(f47,plain,(
% 3.89/0.99    ! [X9,X7,X6,X5,X4,X3,X2,X1,X0] : ((sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0) | (X7 != X9 & X6 != X9 & X5 != X9 & X4 != X9 & X3 != X9 & X2 != X9 & X1 != X9 & X0 != X9)) & (X7 = X9 | X6 = X9 | X5 = X9 | X4 = X9 | X3 = X9 | X2 = X9 | X1 = X9 | X0 = X9 | ~sP0(X9,X7,X6,X5,X4,X3,X2,X1,X0)))),
% 3.89/0.99    inference(flattening,[],[f46])).
% 3.89/0.99  
% 3.89/0.99  fof(f48,plain,(
% 3.89/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : ((sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8) | (X0 != X1 & X0 != X2 & X0 != X3 & X0 != X4 & X0 != X5 & X0 != X6 & X0 != X7 & X0 != X8)) & (X0 = X1 | X0 = X2 | X0 = X3 | X0 = X4 | X0 = X5 | X0 = X6 | X0 = X7 | X0 = X8 | ~sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8)))),
% 3.89/0.99    inference(rectify,[],[f47])).
% 3.89/0.99  
% 3.89/0.99  fof(f77,plain,(
% 3.89/0.99    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8) | X0 != X8) )),
% 3.89/0.99    inference(cnf_transformation,[],[f48])).
% 3.89/0.99  
% 3.89/0.99  fof(f128,plain,(
% 3.89/0.99    ( ! [X6,X4,X2,X8,X7,X5,X3,X1] : (sP0(X8,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 3.89/0.99    inference(equality_resolution,[],[f77])).
% 3.89/0.99  
% 3.89/0.99  cnf(c_26,plain,
% 3.89/0.99      ( r2_hidden(X0,X1)
% 3.89/0.99      | r2_hidden(X1,X0)
% 3.89/0.99      | ~ v3_ordinal1(X1)
% 3.89/0.99      | ~ v3_ordinal1(X0)
% 3.89/0.99      | X1 = X0 ),
% 3.89/0.99      inference(cnf_transformation,[],[f91]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1815,plain,
% 3.89/0.99      ( X0 = X1
% 3.89/0.99      | r2_hidden(X0,X1) = iProver_top
% 3.89/0.99      | r2_hidden(X1,X0) = iProver_top
% 3.89/0.99      | v3_ordinal1(X1) != iProver_top
% 3.89/0.99      | v3_ordinal1(X0) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_27,plain,
% 3.89/0.99      ( r1_ordinal1(X0,X1)
% 3.89/0.99      | r2_hidden(X1,X0)
% 3.89/0.99      | ~ v3_ordinal1(X1)
% 3.89/0.99      | ~ v3_ordinal1(X0) ),
% 3.89/0.99      inference(cnf_transformation,[],[f92]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1814,plain,
% 3.89/0.99      ( r1_ordinal1(X0,X1) = iProver_top
% 3.89/0.99      | r2_hidden(X1,X0) = iProver_top
% 3.89/0.99      | v3_ordinal1(X0) != iProver_top
% 3.89/0.99      | v3_ordinal1(X1) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_30,negated_conjecture,
% 3.89/0.99      ( ~ r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5)
% 3.89/0.99      | ~ r2_hidden(sK4,sK5) ),
% 3.89/0.99      inference(cnf_transformation,[],[f116]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1811,plain,
% 3.89/0.99      ( r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) != iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2882,plain,
% 3.89/0.99      ( r2_hidden(sK5,k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) = iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) != iProver_top
% 3.89/0.99      | v3_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) != iProver_top
% 3.89/0.99      | v3_ordinal1(sK5) != iProver_top ),
% 3.89/0.99      inference(superposition,[status(thm)],[c_1814,c_1811]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_33,negated_conjecture,
% 3.89/0.99      ( v3_ordinal1(sK4) ),
% 3.89/0.99      inference(cnf_transformation,[],[f95]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_34,plain,
% 3.89/0.99      ( v3_ordinal1(sK4) = iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_32,negated_conjecture,
% 3.89/0.99      ( v3_ordinal1(sK5) ),
% 3.89/0.99      inference(cnf_transformation,[],[f96]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_35,plain,
% 3.89/0.99      ( v3_ordinal1(sK5) = iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_28,plain,
% 3.89/0.99      ( ~ v3_ordinal1(X0)
% 3.89/0.99      | v3_ordinal1(k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) ),
% 3.89/0.99      inference(cnf_transformation,[],[f115]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_41,plain,
% 3.89/0.99      ( v3_ordinal1(X0) != iProver_top
% 3.89/0.99      | v3_ordinal1(k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) = iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_43,plain,
% 3.89/0.99      ( v3_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) = iProver_top
% 3.89/0.99      | v3_ordinal1(sK4) != iProver_top ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_41]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_3340,plain,
% 3.89/0.99      ( r2_hidden(sK5,k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) = iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) != iProver_top ),
% 3.89/0.99      inference(global_propositional_subsumption,
% 3.89/0.99                [status(thm)],
% 3.89/0.99                [c_2882,c_34,c_35,c_43]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_5,plain,
% 3.89/0.99      ( r2_hidden(X0,X1)
% 3.89/0.99      | r2_hidden(X0,X2)
% 3.89/0.99      | ~ r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) ),
% 3.89/0.99      inference(cnf_transformation,[],[f120]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1836,plain,
% 3.89/0.99      ( r2_hidden(X0,X1) = iProver_top
% 3.89/0.99      | r2_hidden(X0,X2) = iProver_top
% 3.89/0.99      | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_4779,plain,
% 3.89/0.99      ( r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) = iProver_top
% 3.89/0.99      | r2_hidden(sK5,sK4) = iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) != iProver_top ),
% 3.89/0.99      inference(superposition,[status(thm)],[c_3340,c_1836]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_4,plain,
% 3.89/0.99      ( ~ r2_hidden(X0,X1)
% 3.89/0.99      | r2_hidden(X0,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) ),
% 3.89/0.99      inference(cnf_transformation,[],[f119]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1837,plain,
% 3.89/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.89/0.99      | r2_hidden(X0,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) = iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_31,negated_conjecture,
% 3.89/0.99      ( r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5)
% 3.89/0.99      | r2_hidden(sK4,sK5) ),
% 3.89/0.99      inference(cnf_transformation,[],[f117]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1810,plain,
% 3.89/0.99      ( r1_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) = iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) = iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_25,plain,
% 3.89/0.99      ( ~ r1_ordinal1(X0,X1)
% 3.89/0.99      | r1_tarski(X0,X1)
% 3.89/0.99      | ~ v3_ordinal1(X1)
% 3.89/0.99      | ~ v3_ordinal1(X0) ),
% 3.89/0.99      inference(cnf_transformation,[],[f89]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1816,plain,
% 3.89/0.99      ( r1_ordinal1(X0,X1) != iProver_top
% 3.89/0.99      | r1_tarski(X0,X1) = iProver_top
% 3.89/0.99      | v3_ordinal1(X0) != iProver_top
% 3.89/0.99      | v3_ordinal1(X1) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2836,plain,
% 3.89/0.99      ( r1_tarski(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) = iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) = iProver_top
% 3.89/0.99      | v3_ordinal1(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) != iProver_top
% 3.89/0.99      | v3_ordinal1(sK5) != iProver_top ),
% 3.89/0.99      inference(superposition,[status(thm)],[c_1810,c_1816]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_3485,plain,
% 3.89/0.99      ( r1_tarski(k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),sK5) = iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) = iProver_top ),
% 3.89/0.99      inference(global_propositional_subsumption,
% 3.89/0.99                [status(thm)],
% 3.89/0.99                [c_2836,c_34,c_35,c_43]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_29,plain,
% 3.89/0.99      ( ~ r1_tarski(X0,X1) | ~ r2_hidden(X1,X0) ),
% 3.89/0.99      inference(cnf_transformation,[],[f94]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1812,plain,
% 3.89/0.99      ( r1_tarski(X0,X1) != iProver_top
% 3.89/0.99      | r2_hidden(X1,X0) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_3490,plain,
% 3.89/0.99      ( r2_hidden(sK5,k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)))) != iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) = iProver_top ),
% 3.89/0.99      inference(superposition,[status(thm)],[c_3485,c_1812]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_3680,plain,
% 3.89/0.99      ( r2_hidden(sK5,sK4) != iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) = iProver_top ),
% 3.89/0.99      inference(superposition,[status(thm)],[c_1837,c_3490]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1990,plain,
% 3.89/0.99      ( ~ r1_tarski(sK5,sK4) | ~ r2_hidden(sK4,sK5) ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_29]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1991,plain,
% 3.89/0.99      ( r1_tarski(sK5,sK4) != iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_1990]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2111,plain,
% 3.89/0.99      ( ~ r1_ordinal1(sK5,sK4)
% 3.89/0.99      | r1_tarski(sK5,sK4)
% 3.89/0.99      | ~ v3_ordinal1(sK5)
% 3.89/0.99      | ~ v3_ordinal1(sK4) ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_25]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2112,plain,
% 3.89/0.99      ( r1_ordinal1(sK5,sK4) != iProver_top
% 3.89/0.99      | r1_tarski(sK5,sK4) = iProver_top
% 3.89/0.99      | v3_ordinal1(sK5) != iProver_top
% 3.89/0.99      | v3_ordinal1(sK4) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_2111]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2122,plain,
% 3.89/0.99      ( ~ r1_ordinal1(X0,sK5)
% 3.89/0.99      | r1_tarski(X0,sK5)
% 3.89/0.99      | ~ v3_ordinal1(X0)
% 3.89/0.99      | ~ v3_ordinal1(sK5) ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_25]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2123,plain,
% 3.89/0.99      ( r1_ordinal1(X0,sK5) != iProver_top
% 3.89/0.99      | r1_tarski(X0,sK5) = iProver_top
% 3.89/0.99      | v3_ordinal1(X0) != iProver_top
% 3.89/0.99      | v3_ordinal1(sK5) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_2122]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2125,plain,
% 3.89/0.99      ( r1_ordinal1(sK4,sK5) != iProver_top
% 3.89/0.99      | r1_tarski(sK4,sK5) = iProver_top
% 3.89/0.99      | v3_ordinal1(sK5) != iProver_top
% 3.89/0.99      | v3_ordinal1(sK4) != iProver_top ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_2123]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2140,plain,
% 3.89/0.99      ( ~ r1_tarski(X0,sK5) | ~ r2_hidden(sK5,X0) ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_29]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2141,plain,
% 3.89/0.99      ( r1_tarski(X0,sK5) != iProver_top
% 3.89/0.99      | r2_hidden(sK5,X0) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_2140]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2143,plain,
% 3.89/0.99      ( r1_tarski(sK4,sK5) != iProver_top
% 3.89/0.99      | r2_hidden(sK5,sK4) != iProver_top ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_2141]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_23,plain,
% 3.89/0.99      ( r1_ordinal1(X0,X1)
% 3.89/0.99      | r1_ordinal1(X1,X0)
% 3.89/0.99      | ~ v3_ordinal1(X1)
% 3.89/0.99      | ~ v3_ordinal1(X0) ),
% 3.89/0.99      inference(cnf_transformation,[],[f87]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2240,plain,
% 3.89/0.99      ( r1_ordinal1(sK5,sK4)
% 3.89/0.99      | r1_ordinal1(sK4,sK5)
% 3.89/0.99      | ~ v3_ordinal1(sK5)
% 3.89/0.99      | ~ v3_ordinal1(sK4) ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_23]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_2244,plain,
% 3.89/0.99      ( r1_ordinal1(sK5,sK4) = iProver_top
% 3.89/0.99      | r1_ordinal1(sK4,sK5) = iProver_top
% 3.89/0.99      | v3_ordinal1(sK5) != iProver_top
% 3.89/0.99      | v3_ordinal1(sK4) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_2240]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_3981,plain,
% 3.89/0.99      ( r2_hidden(sK5,sK4) != iProver_top ),
% 3.89/0.99      inference(global_propositional_subsumption,
% 3.89/0.99                [status(thm)],
% 3.89/0.99                [c_3680,c_34,c_35,c_1991,c_2112,c_2125,c_2143,c_2244]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_3,plain,
% 3.89/0.99      ( ~ r2_hidden(X0,X1)
% 3.89/0.99      | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) ),
% 3.89/0.99      inference(cnf_transformation,[],[f118]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1838,plain,
% 3.89/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.89/0.99      | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) = iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_3679,plain,
% 3.89/0.99      ( r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) = iProver_top ),
% 3.89/0.99      inference(superposition,[status(thm)],[c_1838,c_3490]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_6,plain,
% 3.89/0.99      ( r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)
% 3.89/0.99      | ~ r2_hidden(X0,X1) ),
% 3.89/0.99      inference(cnf_transformation,[],[f113]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1898,plain,
% 3.89/0.99      ( r1_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK5)
% 3.89/0.99      | ~ r2_hidden(sK4,sK5) ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1899,plain,
% 3.89/0.99      ( r1_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK5) = iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_1898]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1987,plain,
% 3.89/0.99      ( ~ r1_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK5)
% 3.89/0.99      | ~ r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_29]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1988,plain,
% 3.89/0.99      ( r1_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK5) != iProver_top
% 3.89/0.99      | r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_1987]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_3986,plain,
% 3.89/0.99      ( r2_hidden(sK5,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top ),
% 3.89/0.99      inference(global_propositional_subsumption,
% 3.89/0.99                [status(thm)],
% 3.89/0.99                [c_3679,c_1899,c_1988]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_5145,plain,
% 3.89/0.99      ( r2_hidden(sK4,sK5) != iProver_top ),
% 3.89/0.99      inference(global_propositional_subsumption,
% 3.89/0.99                [status(thm)],
% 3.89/0.99                [c_4779,c_34,c_35,c_1899,c_1988,c_1991,c_2112,c_2125,
% 3.89/0.99                 c_2143,c_2244,c_3679,c_3680]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_5149,plain,
% 3.89/0.99      ( sK5 = sK4
% 3.89/0.99      | r2_hidden(sK5,sK4) = iProver_top
% 3.89/0.99      | v3_ordinal1(sK5) != iProver_top
% 3.89/0.99      | v3_ordinal1(sK4) != iProver_top ),
% 3.89/0.99      inference(superposition,[status(thm)],[c_1815,c_5145]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1916,plain,
% 3.89/0.99      ( r2_hidden(X0,sK5)
% 3.89/0.99      | r2_hidden(sK5,X0)
% 3.89/0.99      | ~ v3_ordinal1(X0)
% 3.89/0.99      | ~ v3_ordinal1(sK5)
% 3.89/0.99      | sK5 = X0 ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_26]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1917,plain,
% 3.89/0.99      ( sK5 = X0
% 3.89/0.99      | r2_hidden(X0,sK5) = iProver_top
% 3.89/0.99      | r2_hidden(sK5,X0) = iProver_top
% 3.89/0.99      | v3_ordinal1(X0) != iProver_top
% 3.89/0.99      | v3_ordinal1(sK5) != iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_1916]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_1919,plain,
% 3.89/0.99      ( sK5 = sK4
% 3.89/0.99      | r2_hidden(sK5,sK4) = iProver_top
% 3.89/0.99      | r2_hidden(sK4,sK5) = iProver_top
% 3.89/0.99      | v3_ordinal1(sK5) != iProver_top
% 3.89/0.99      | v3_ordinal1(sK4) != iProver_top ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_1917]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_5153,plain,
% 3.89/0.99      ( sK5 = sK4 ),
% 3.89/0.99      inference(global_propositional_subsumption,
% 3.89/0.99                [status(thm)],
% 3.89/0.99                [c_5149,c_34,c_35,c_1899,c_1919,c_1988,c_1991,c_2112,
% 3.89/0.99                 c_2125,c_2143,c_2244,c_3679,c_3680,c_4779]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_5156,plain,
% 3.89/0.99      ( r2_hidden(sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top ),
% 3.89/0.99      inference(demodulation,[status(thm)],[c_5153,c_3986]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_10,plain,
% 3.89/0.99      ( ~ sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8)
% 3.89/0.99      | ~ sP1(X8,X7,X6,X5,X4,X3,X2,X1,X9)
% 3.89/0.99      | r2_hidden(X0,X9) ),
% 3.89/0.99      inference(cnf_transformation,[],[f73]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_22,plain,
% 3.89/0.99      ( sP1(X0,X1,X2,X3,X4,X5,X6,X7,k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) ),
% 3.89/0.99      inference(cnf_transformation,[],[f129]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_627,plain,
% 3.89/0.99      ( ~ sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8)
% 3.89/0.99      | r2_hidden(X0,X9)
% 3.89/0.99      | X10 != X1
% 3.89/0.99      | X11 != X2
% 3.89/0.99      | X12 != X3
% 3.89/0.99      | X13 != X4
% 3.89/0.99      | X14 != X5
% 3.89/0.99      | X15 != X6
% 3.89/0.99      | X16 != X7
% 3.89/0.99      | X17 != X8
% 3.89/0.99      | k6_enumset1(X17,X16,X15,X14,X13,X12,X11,X10) != X9 ),
% 3.89/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_22]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_628,plain,
% 3.89/0.99      ( ~ sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8)
% 3.89/0.99      | r2_hidden(X0,k6_enumset1(X8,X7,X6,X5,X4,X3,X2,X1)) ),
% 3.89/0.99      inference(unflattening,[status(thm)],[c_627]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_629,plain,
% 3.89/0.99      ( sP0(X0,X1,X2,X3,X4,X5,X6,X7,X8) != iProver_top
% 3.89/0.99      | r2_hidden(X0,k6_enumset1(X8,X7,X6,X5,X4,X3,X2,X1)) = iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_628]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_631,plain,
% 3.89/0.99      ( sP0(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) != iProver_top
% 3.89/0.99      | r2_hidden(sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) = iProver_top ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_629]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_19,plain,
% 3.89/0.99      ( sP0(X0,X1,X2,X3,X4,X5,X6,X7,X0) ),
% 3.89/0.99      inference(cnf_transformation,[],[f128]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_68,plain,
% 3.89/0.99      ( sP0(X0,X1,X2,X3,X4,X5,X6,X7,X0) = iProver_top ),
% 3.89/0.99      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(c_70,plain,
% 3.89/0.99      ( sP0(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) = iProver_top ),
% 3.89/0.99      inference(instantiation,[status(thm)],[c_68]) ).
% 3.89/0.99  
% 3.89/0.99  cnf(contradiction,plain,
% 3.89/0.99      ( $false ),
% 3.89/0.99      inference(minisat,[status(thm)],[c_5156,c_631,c_70]) ).
% 3.89/0.99  
% 3.89/0.99  
% 3.89/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.89/0.99  
% 3.89/0.99  ------                               Statistics
% 3.89/0.99  
% 3.89/0.99  ------ General
% 3.89/0.99  
% 3.89/0.99  abstr_ref_over_cycles:                  0
% 3.89/0.99  abstr_ref_under_cycles:                 0
% 3.89/0.99  gc_basic_clause_elim:                   0
% 3.89/0.99  forced_gc_time:                         0
% 3.89/0.99  parsing_time:                           0.007
% 3.89/0.99  unif_index_cands_time:                  0.
% 3.89/0.99  unif_index_add_time:                    0.
% 3.89/0.99  orderings_time:                         0.
% 3.89/0.99  out_proof_time:                         0.012
% 3.89/0.99  total_time:                             0.226
% 3.89/0.99  num_of_symbols:                         40
% 3.89/0.99  num_of_terms:                           5837
% 3.89/0.99  
% 3.89/0.99  ------ Preprocessing
% 3.89/0.99  
% 3.89/0.99  num_of_splits:                          0
% 3.89/0.99  num_of_split_atoms:                     0
% 3.89/0.99  num_of_reused_defs:                     0
% 3.89/0.99  num_eq_ax_congr_red:                    58
% 3.89/0.99  num_of_sem_filtered_clauses:            1
% 3.89/0.99  num_of_subtypes:                        0
% 3.89/0.99  monotx_restored_types:                  0
% 3.89/0.99  sat_num_of_epr_types:                   0
% 3.89/0.99  sat_num_of_non_cyclic_types:            0
% 3.89/0.99  sat_guarded_non_collapsed_types:        0
% 3.89/0.99  num_pure_diseq_elim:                    0
% 3.89/0.99  simp_replaced_by:                       0
% 3.89/0.99  res_preprocessed:                       123
% 3.89/0.99  prep_upred:                             0
% 3.89/0.99  prep_unflattend:                        304
% 3.89/0.99  smt_new_axioms:                         0
% 3.89/0.99  pred_elim_cands:                        6
% 3.89/0.99  pred_elim:                              0
% 3.89/0.99  pred_elim_cl:                           0
% 3.89/0.99  pred_elim_cycles:                       3
% 3.89/0.99  merged_defs:                            12
% 3.89/0.99  merged_defs_ncl:                        0
% 3.89/0.99  bin_hyper_res:                          12
% 3.89/0.99  prep_cycles:                            3
% 3.89/0.99  pred_elim_time:                         0.011
% 3.89/0.99  splitting_time:                         0.
% 3.89/0.99  sem_filter_time:                        0.
% 3.89/0.99  monotx_time:                            0.001
% 3.89/0.99  subtype_inf_time:                       0.
% 3.89/0.99  
% 3.89/0.99  ------ Problem properties
% 3.89/0.99  
% 3.89/0.99  clauses:                                34
% 3.89/0.99  conjectures:                            4
% 3.89/0.99  epr:                                    19
% 3.89/0.99  horn:                                   26
% 3.89/0.99  ground:                                 4
% 3.89/0.99  unary:                                  11
% 3.89/0.99  binary:                                 9
% 3.89/0.99  lits:                                   84
% 3.89/0.99  lits_eq:                                13
% 3.89/0.99  fd_pure:                                0
% 3.89/0.99  fd_pseudo:                              0
% 3.89/0.99  fd_cond:                                0
% 3.89/0.99  fd_pseudo_cond:                         6
% 3.89/0.99  ac_symbols:                             0
% 3.89/0.99  
% 3.89/0.99  ------ Propositional Solver
% 3.89/0.99  
% 3.89/0.99  prop_solver_calls:                      26
% 3.89/0.99  prop_fast_solver_calls:                 865
% 3.89/0.99  smt_solver_calls:                       0
% 3.89/0.99  smt_fast_solver_calls:                  0
% 3.89/0.99  prop_num_of_clauses:                    1647
% 3.89/0.99  prop_preprocess_simplified:             7436
% 3.89/0.99  prop_fo_subsumed:                       15
% 3.89/0.99  prop_solver_time:                       0.
% 3.89/0.99  smt_solver_time:                        0.
% 3.89/0.99  smt_fast_solver_time:                   0.
% 3.89/0.99  prop_fast_solver_time:                  0.
% 3.89/0.99  prop_unsat_core_time:                   0.
% 3.89/0.99  
% 3.89/0.99  ------ QBF
% 3.89/0.99  
% 3.89/0.99  qbf_q_res:                              0
% 3.89/0.99  qbf_num_tautologies:                    0
% 3.89/0.99  qbf_prep_cycles:                        0
% 3.89/0.99  
% 3.89/0.99  ------ BMC1
% 3.89/0.99  
% 3.89/0.99  bmc1_current_bound:                     -1
% 3.89/0.99  bmc1_last_solved_bound:                 -1
% 3.89/0.99  bmc1_unsat_core_size:                   -1
% 3.89/0.99  bmc1_unsat_core_parents_size:           -1
% 3.89/0.99  bmc1_merge_next_fun:                    0
% 3.89/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.89/0.99  
% 3.89/0.99  ------ Instantiation
% 3.89/0.99  
% 3.89/0.99  inst_num_of_clauses:                    488
% 3.89/0.99  inst_num_in_passive:                    301
% 3.89/0.99  inst_num_in_active:                     136
% 3.89/0.99  inst_num_in_unprocessed:                51
% 3.89/0.99  inst_num_of_loops:                      200
% 3.89/0.99  inst_num_of_learning_restarts:          0
% 3.89/0.99  inst_num_moves_active_passive:          62
% 3.89/0.99  inst_lit_activity:                      0
% 3.89/0.99  inst_lit_activity_moves:                0
% 3.89/0.99  inst_num_tautologies:                   0
% 3.89/0.99  inst_num_prop_implied:                  0
% 3.89/0.99  inst_num_existing_simplified:           0
% 3.89/0.99  inst_num_eq_res_simplified:             0
% 3.89/0.99  inst_num_child_elim:                    0
% 3.89/0.99  inst_num_of_dismatching_blockings:      118
% 3.89/0.99  inst_num_of_non_proper_insts:           595
% 3.89/0.99  inst_num_of_duplicates:                 0
% 3.89/0.99  inst_inst_num_from_inst_to_res:         0
% 3.89/0.99  inst_dismatching_checking_time:         0.
% 3.89/0.99  
% 3.89/0.99  ------ Resolution
% 3.89/0.99  
% 3.89/0.99  res_num_of_clauses:                     0
% 3.89/0.99  res_num_in_passive:                     0
% 3.89/0.99  res_num_in_active:                      0
% 3.89/0.99  res_num_of_loops:                       126
% 3.89/0.99  res_forward_subset_subsumed:            161
% 3.89/0.99  res_backward_subset_subsumed:           0
% 3.89/0.99  res_forward_subsumed:                   0
% 3.89/0.99  res_backward_subsumed:                  0
% 3.89/0.99  res_forward_subsumption_resolution:     0
% 3.89/0.99  res_backward_subsumption_resolution:    0
% 3.89/0.99  res_clause_to_clause_subsumption:       479
% 3.89/0.99  res_orphan_elimination:                 0
% 3.89/0.99  res_tautology_del:                      59
% 3.89/0.99  res_num_eq_res_simplified:              0
% 3.89/0.99  res_num_sel_changes:                    0
% 3.89/0.99  res_moves_from_active_to_pass:          0
% 3.89/0.99  
% 3.89/0.99  ------ Superposition
% 3.89/0.99  
% 3.89/0.99  sup_time_total:                         0.
% 3.89/0.99  sup_time_generating:                    0.
% 3.89/0.99  sup_time_sim_full:                      0.
% 3.89/0.99  sup_time_sim_immed:                     0.
% 3.89/0.99  
% 3.89/0.99  sup_num_of_clauses:                     51
% 3.89/0.99  sup_num_in_active:                      27
% 3.89/0.99  sup_num_in_passive:                     24
% 3.89/0.99  sup_num_of_loops:                       39
% 3.89/0.99  sup_fw_superposition:                   22
% 3.89/0.99  sup_bw_superposition:                   24
% 3.89/0.99  sup_immediate_simplified:               3
% 3.89/0.99  sup_given_eliminated:                   0
% 3.89/0.99  comparisons_done:                       0
% 3.89/0.99  comparisons_avoided:                    0
% 3.89/0.99  
% 3.89/0.99  ------ Simplifications
% 3.89/0.99  
% 3.89/0.99  
% 3.89/0.99  sim_fw_subset_subsumed:                 2
% 3.89/0.99  sim_bw_subset_subsumed:                 2
% 3.89/0.99  sim_fw_subsumed:                        1
% 3.89/0.99  sim_bw_subsumed:                        5
% 3.89/0.99  sim_fw_subsumption_res:                 0
% 3.89/0.99  sim_bw_subsumption_res:                 0
% 3.89/0.99  sim_tautology_del:                      3
% 3.89/0.99  sim_eq_tautology_del:                   1
% 3.89/0.99  sim_eq_res_simp:                        1
% 3.89/0.99  sim_fw_demodulated:                     0
% 3.89/0.99  sim_bw_demodulated:                     7
% 3.89/0.99  sim_light_normalised:                   0
% 3.89/0.99  sim_joinable_taut:                      0
% 3.89/0.99  sim_joinable_simp:                      0
% 3.89/0.99  sim_ac_normalised:                      0
% 3.89/0.99  sim_smt_subsumption:                    0
% 3.89/0.99  
%------------------------------------------------------------------------------
