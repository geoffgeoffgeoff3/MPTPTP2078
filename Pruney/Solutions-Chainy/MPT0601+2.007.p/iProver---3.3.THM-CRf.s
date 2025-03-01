%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:48:19 EST 2020

% Result     : Theorem 2.21s
% Output     : CNFRefutation 2.21s
% Verified   : 
% Statistics : Number of formulae       :  136 ( 348 expanded)
%              Number of clauses        :   68 ( 107 expanded)
%              Number of leaves         :   18 (  66 expanded)
%              Depth                    :   24
%              Number of atoms          :  418 (1276 expanded)
%              Number of equality atoms :  225 ( 647 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f28,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X3)
              | ( X2 != X4
                & X1 != X4
                & X0 != X4 ) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f29,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X3)
              | ( X2 != X4
                & X1 != X4
                & X0 != X4 ) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(flattening,[],[f28])).

fof(f30,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X3)
              | ( X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(rectify,[],[f29])).

fof(f31,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X4] :
          ( ( ( X2 != X4
              & X1 != X4
              & X0 != X4 )
            | ~ r2_hidden(X4,X3) )
          & ( X2 = X4
            | X1 = X4
            | X0 = X4
            | r2_hidden(X4,X3) ) )
     => ( ( ( sK1(X0,X1,X2,X3) != X2
            & sK1(X0,X1,X2,X3) != X1
            & sK1(X0,X1,X2,X3) != X0 )
          | ~ r2_hidden(sK1(X0,X1,X2,X3),X3) )
        & ( sK1(X0,X1,X2,X3) = X2
          | sK1(X0,X1,X2,X3) = X1
          | sK1(X0,X1,X2,X3) = X0
          | r2_hidden(sK1(X0,X1,X2,X3),X3) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ( ( ( sK1(X0,X1,X2,X3) != X2
              & sK1(X0,X1,X2,X3) != X1
              & sK1(X0,X1,X2,X3) != X0 )
            | ~ r2_hidden(sK1(X0,X1,X2,X3),X3) )
          & ( sK1(X0,X1,X2,X3) = X2
            | sK1(X0,X1,X2,X3) = X1
            | sK1(X0,X1,X2,X3) = X0
            | r2_hidden(sK1(X0,X1,X2,X3),X3) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X3)
              | ( X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f30,f31])).

fof(f48,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X2 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f73,plain,(
    ! [X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k1_enumset1(X0,X1,X5) != X3 ) ),
    inference(equality_resolution,[],[f48])).

fof(f74,plain,(
    ! [X0,X5,X1] : r2_hidden(X5,k1_enumset1(X0,X1,X5)) ),
    inference(equality_resolution,[],[f73])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
     => r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f55,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f5,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f70,plain,(
    ! [X0] : k1_enumset1(X0,X0,X0) = k1_tarski(X0) ),
    inference(definition_unfolding,[],[f53,f54])).

fof(f71,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_enumset1(X0,X0,X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f55,f70])).

fof(f10,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( r1_xboole_0(X1,k1_relat_1(X0))
         => k1_xboole_0 = k7_relat_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_xboole_0 = k7_relat_1(X0,X1)
          | ~ r1_xboole_0(X1,k1_relat_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f59,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k7_relat_1(X0,X1)
      | ~ r1_xboole_0(X1,k1_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f14,conjecture,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r2_hidden(X0,k1_relat_1(X1))
      <=> k1_xboole_0 != k11_relat_1(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1] :
        ( v1_relat_1(X1)
       => ( r2_hidden(X0,k1_relat_1(X1))
        <=> k1_xboole_0 != k11_relat_1(X1,X0) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f25,plain,(
    ? [X0,X1] :
      ( ( r2_hidden(X0,k1_relat_1(X1))
      <~> k1_xboole_0 != k11_relat_1(X1,X0) )
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f37,plain,(
    ? [X0,X1] :
      ( ( k1_xboole_0 = k11_relat_1(X1,X0)
        | ~ r2_hidden(X0,k1_relat_1(X1)) )
      & ( k1_xboole_0 != k11_relat_1(X1,X0)
        | r2_hidden(X0,k1_relat_1(X1)) )
      & v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f38,plain,(
    ? [X0,X1] :
      ( ( k1_xboole_0 = k11_relat_1(X1,X0)
        | ~ r2_hidden(X0,k1_relat_1(X1)) )
      & ( k1_xboole_0 != k11_relat_1(X1,X0)
        | r2_hidden(X0,k1_relat_1(X1)) )
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f37])).

fof(f39,plain,
    ( ? [X0,X1] :
        ( ( k1_xboole_0 = k11_relat_1(X1,X0)
          | ~ r2_hidden(X0,k1_relat_1(X1)) )
        & ( k1_xboole_0 != k11_relat_1(X1,X0)
          | r2_hidden(X0,k1_relat_1(X1)) )
        & v1_relat_1(X1) )
   => ( ( k1_xboole_0 = k11_relat_1(sK3,sK2)
        | ~ r2_hidden(sK2,k1_relat_1(sK3)) )
      & ( k1_xboole_0 != k11_relat_1(sK3,sK2)
        | r2_hidden(sK2,k1_relat_1(sK3)) )
      & v1_relat_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,
    ( ( k1_xboole_0 = k11_relat_1(sK3,sK2)
      | ~ r2_hidden(sK2,k1_relat_1(sK3)) )
    & ( k1_xboole_0 != k11_relat_1(sK3,sK2)
      | r2_hidden(sK2,k1_relat_1(sK3)) )
    & v1_relat_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f38,f39])).

fof(f67,plain,(
    v1_relat_1(sK3) ),
    inference(cnf_transformation,[],[f40])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( k1_xboole_0 = k7_relat_1(X1,X0)
      <=> r1_xboole_0(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k7_relat_1(X1,X0)
      <=> r1_xboole_0(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( ( k1_xboole_0 = k7_relat_1(X1,X0)
          | ~ r1_xboole_0(k1_relat_1(X1),X0) )
        & ( r1_xboole_0(k1_relat_1(X1),X0)
          | k1_xboole_0 != k7_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f65,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_relat_1(X1),X0)
      | k1_xboole_0 != k7_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( k1_xboole_0 = k9_relat_1(X1,X0)
      <=> r1_xboole_0(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k9_relat_1(X1,X0)
      <=> r1_xboole_0(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( ( k1_xboole_0 = k9_relat_1(X1,X0)
          | ~ r1_xboole_0(k1_relat_1(X1),X0) )
        & ( r1_xboole_0(k1_relat_1(X1),X0)
          | k1_xboole_0 != k9_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f58,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k9_relat_1(X1,X0)
      | ~ r1_xboole_0(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] : k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] : k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f56,plain,(
    ! [X0,X1] :
      ( k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f72,plain,(
    ! [X0,X1] :
      ( k11_relat_1(X0,X1) = k9_relat_1(X0,k1_enumset1(X1,X1,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f56,f70])).

fof(f69,plain,
    ( k1_xboole_0 = k11_relat_1(sK3,sK2)
    | ~ r2_hidden(sK2,k1_relat_1(sK3)) ),
    inference(cnf_transformation,[],[f40])).

fof(f57,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_relat_1(X1),X0)
      | k1_xboole_0 != k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f66,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k7_relat_1(X1,X0)
      | ~ r1_xboole_0(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
      <=> ( r2_hidden(X0,k1_relat_1(X2))
          & r2_hidden(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
      <=> ( r2_hidden(X0,k1_relat_1(X2))
          & r2_hidden(X0,X1) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
          | ~ r2_hidden(X0,k1_relat_1(X2))
          | ~ r2_hidden(X0,X1) )
        & ( ( r2_hidden(X0,k1_relat_1(X2))
            & r2_hidden(X0,X1) )
          | ~ r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
          | ~ r2_hidden(X0,k1_relat_1(X2))
          | ~ r2_hidden(X0,X1) )
        & ( ( r2_hidden(X0,k1_relat_1(X2))
            & r2_hidden(X0,X1) )
          | ~ r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f34])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
      | ~ r2_hidden(X0,k1_relat_1(X2))
      | ~ r2_hidden(X0,X1)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f11,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f11])).

fof(f2,axiom,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f2])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f1])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f26,plain,(
    ! [X1,X0] :
      ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
     => r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f17,f26])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f3,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

fof(f46,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f77,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k1_enumset1(X5,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f46])).

fof(f78,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k1_enumset1(X5,X1,X2)) ),
    inference(equality_resolution,[],[f77])).

fof(f45,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f79,plain,(
    ! [X2,X0,X5,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,k1_enumset1(X0,X1,X2)) ) ),
    inference(equality_resolution,[],[f45])).

fof(f68,plain,
    ( k1_xboole_0 != k11_relat_1(sK3,sK2)
    | r2_hidden(sK2,k1_relat_1(sK3)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_8,plain,
    ( r2_hidden(X0,k1_enumset1(X1,X2,X0)) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1424,plain,
    ( r2_hidden(X0,k1_enumset1(X1,X2,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_12,plain,
    ( r2_hidden(X0,X1)
    | r1_xboole_0(k1_enumset1(X0,X0,X0),X1) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1420,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r1_xboole_0(k1_enumset1(X0,X0,X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_16,plain,
    ( ~ r1_xboole_0(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | k7_relat_1(X1,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_26,negated_conjecture,
    ( v1_relat_1(sK3) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_390,plain,
    ( ~ r1_xboole_0(X0,k1_relat_1(X1))
    | k7_relat_1(X1,X0) = k1_xboole_0
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_26])).

cnf(c_391,plain,
    ( ~ r1_xboole_0(X0,k1_relat_1(sK3))
    | k7_relat_1(sK3,X0) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_390])).

cnf(c_23,plain,
    ( r1_xboole_0(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_324,plain,
    ( r1_xboole_0(k1_relat_1(X0),X1)
    | k7_relat_1(X0,X1) != k1_xboole_0
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_26])).

cnf(c_325,plain,
    ( r1_xboole_0(k1_relat_1(sK3),X0)
    | k7_relat_1(sK3,X0) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_324])).

cnf(c_739,plain,
    ( r1_xboole_0(k1_relat_1(sK3),X0)
    | k7_relat_1(sK3,X0) != k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_325])).

cnf(c_796,plain,
    ( ~ r1_xboole_0(X0,k1_relat_1(sK3))
    | r1_xboole_0(k1_relat_1(sK3),X0) ),
    inference(bin_hyper_res,[status(thm)],[c_391,c_739])).

cnf(c_1410,plain,
    ( r1_xboole_0(X0,k1_relat_1(sK3)) != iProver_top
    | r1_xboole_0(k1_relat_1(sK3),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_796])).

cnf(c_2675,plain,
    ( r2_hidden(X0,k1_relat_1(sK3)) = iProver_top
    | r1_xboole_0(k1_relat_1(sK3),k1_enumset1(X0,X0,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1420,c_1410])).

cnf(c_14,plain,
    ( ~ r1_xboole_0(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k9_relat_1(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_360,plain,
    ( ~ r1_xboole_0(k1_relat_1(X0),X1)
    | k9_relat_1(X0,X1) = k1_xboole_0
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_26])).

cnf(c_361,plain,
    ( ~ r1_xboole_0(k1_relat_1(sK3),X0)
    | k9_relat_1(sK3,X0) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_360])).

cnf(c_745,plain,
    ( ~ r1_xboole_0(k1_relat_1(sK3),X0)
    | k9_relat_1(sK3,X0) = k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_361])).

cnf(c_1414,plain,
    ( k9_relat_1(sK3,X0) = k1_xboole_0
    | r1_xboole_0(k1_relat_1(sK3),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_745])).

cnf(c_3091,plain,
    ( k9_relat_1(sK3,k1_enumset1(X0,X0,X0)) = k1_xboole_0
    | r2_hidden(X0,k1_relat_1(sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2675,c_1414])).

cnf(c_13,plain,
    ( ~ v1_relat_1(X0)
    | k9_relat_1(X0,k1_enumset1(X1,X1,X1)) = k11_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_372,plain,
    ( k9_relat_1(X0,k1_enumset1(X1,X1,X1)) = k11_relat_1(X0,X1)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_26])).

cnf(c_373,plain,
    ( k9_relat_1(sK3,k1_enumset1(X0,X0,X0)) = k11_relat_1(sK3,X0) ),
    inference(unflattening,[status(thm)],[c_372])).

cnf(c_3094,plain,
    ( k11_relat_1(sK3,X0) = k1_xboole_0
    | r2_hidden(X0,k1_relat_1(sK3)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3091,c_373])).

cnf(c_24,negated_conjecture,
    ( ~ r2_hidden(sK2,k1_relat_1(sK3))
    | k1_xboole_0 = k11_relat_1(sK3,sK2) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_1419,plain,
    ( k1_xboole_0 = k11_relat_1(sK3,sK2)
    | r2_hidden(sK2,k1_relat_1(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_3108,plain,
    ( k11_relat_1(sK3,sK2) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3094,c_1419])).

cnf(c_15,plain,
    ( r1_xboole_0(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k9_relat_1(X0,X1) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_348,plain,
    ( r1_xboole_0(k1_relat_1(X0),X1)
    | k9_relat_1(X0,X1) != k1_xboole_0
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_26])).

cnf(c_349,plain,
    ( r1_xboole_0(k1_relat_1(sK3),X0)
    | k9_relat_1(sK3,X0) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_348])).

cnf(c_743,plain,
    ( r1_xboole_0(k1_relat_1(sK3),X0)
    | k9_relat_1(sK3,X0) != k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_349])).

cnf(c_1415,plain,
    ( k9_relat_1(sK3,X0) != k1_xboole_0
    | r1_xboole_0(k1_relat_1(sK3),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_743])).

cnf(c_2157,plain,
    ( k11_relat_1(sK3,X0) != k1_xboole_0
    | r1_xboole_0(k1_relat_1(sK3),k1_enumset1(X0,X0,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_373,c_1415])).

cnf(c_3226,plain,
    ( r1_xboole_0(k1_relat_1(sK3),k1_enumset1(sK2,sK2,sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3108,c_2157])).

cnf(c_22,plain,
    ( ~ r1_xboole_0(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_336,plain,
    ( ~ r1_xboole_0(k1_relat_1(X0),X1)
    | k7_relat_1(X0,X1) = k1_xboole_0
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_26])).

cnf(c_337,plain,
    ( ~ r1_xboole_0(k1_relat_1(sK3),X0)
    | k7_relat_1(sK3,X0) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_336])).

cnf(c_741,plain,
    ( ~ r1_xboole_0(k1_relat_1(sK3),X0)
    | k7_relat_1(sK3,X0) = k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_337])).

cnf(c_1416,plain,
    ( k7_relat_1(sK3,X0) = k1_xboole_0
    | r1_xboole_0(k1_relat_1(sK3),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_741])).

cnf(c_3451,plain,
    ( k7_relat_1(sK3,k1_enumset1(sK2,sK2,sK2)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3226,c_1416])).

cnf(c_19,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k1_relat_1(X2))
    | r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
    | ~ v1_relat_1(X2) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_414,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k1_relat_1(X2))
    | r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_26])).

cnf(c_415,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k1_relat_1(k7_relat_1(sK3,X1)))
    | ~ r2_hidden(X0,k1_relat_1(sK3)) ),
    inference(unflattening,[status(thm)],[c_414])).

cnf(c_1411,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k1_relat_1(k7_relat_1(sK3,X1))) = iProver_top
    | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_415])).

cnf(c_3458,plain,
    ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top
    | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
    | r2_hidden(X0,k1_relat_1(k1_xboole_0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3451,c_1411])).

cnf(c_18,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_3468,plain,
    ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top
    | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
    | r2_hidden(X0,k1_xboole_0) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3458,c_18])).

cnf(c_2,plain,
    ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,k3_xboole_0(X1,X2))
    | ~ r1_xboole_0(X1,X2) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1431,plain,
    ( r2_hidden(X0,k3_xboole_0(X1,X2)) != iProver_top
    | r1_xboole_0(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2830,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top
    | r1_xboole_0(X1,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2,c_1431])).

cnf(c_3,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1429,plain,
    ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2841,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2830,c_1429])).

cnf(c_3916,plain,
    ( r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
    | r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3468,c_2841])).

cnf(c_3917,plain,
    ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top
    | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
    inference(renaming,[status(thm)],[c_3916])).

cnf(c_3924,plain,
    ( r2_hidden(sK2,k1_relat_1(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1424,c_3917])).

cnf(c_878,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1615,plain,
    ( k11_relat_1(sK3,sK2) != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = k11_relat_1(sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_878])).

cnf(c_1616,plain,
    ( k11_relat_1(sK3,sK2) != k1_xboole_0
    | k1_xboole_0 = k11_relat_1(sK3,sK2)
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1615])).

cnf(c_10,plain,
    ( r2_hidden(X0,k1_enumset1(X0,X1,X2)) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_64,plain,
    ( r2_hidden(k1_xboole_0,k1_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0)) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,k1_enumset1(X1,X2,X3))
    | X0 = X1
    | X0 = X2
    | X0 = X3 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_61,plain,
    ( ~ r2_hidden(k1_xboole_0,k1_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0))
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_25,negated_conjecture,
    ( r2_hidden(sK2,k1_relat_1(sK3))
    | k1_xboole_0 != k11_relat_1(sK3,sK2) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_28,plain,
    ( k1_xboole_0 != k11_relat_1(sK3,sK2)
    | r2_hidden(sK2,k1_relat_1(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3924,c_3108,c_1616,c_64,c_61,c_28])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 19:07:53 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.21/1.04  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.21/1.04  
% 2.21/1.04  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.21/1.04  
% 2.21/1.04  ------  iProver source info
% 2.21/1.04  
% 2.21/1.04  git: date: 2020-06-30 10:37:57 +0100
% 2.21/1.04  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.21/1.04  git: non_committed_changes: false
% 2.21/1.04  git: last_make_outside_of_git: false
% 2.21/1.04  
% 2.21/1.04  ------ 
% 2.21/1.04  
% 2.21/1.04  ------ Input Options
% 2.21/1.04  
% 2.21/1.04  --out_options                           all
% 2.21/1.04  --tptp_safe_out                         true
% 2.21/1.04  --problem_path                          ""
% 2.21/1.04  --include_path                          ""
% 2.21/1.04  --clausifier                            res/vclausify_rel
% 2.21/1.04  --clausifier_options                    --mode clausify
% 2.21/1.04  --stdin                                 false
% 2.21/1.04  --stats_out                             all
% 2.21/1.04  
% 2.21/1.04  ------ General Options
% 2.21/1.04  
% 2.21/1.04  --fof                                   false
% 2.21/1.04  --time_out_real                         305.
% 2.21/1.04  --time_out_virtual                      -1.
% 2.21/1.04  --symbol_type_check                     false
% 2.21/1.04  --clausify_out                          false
% 2.21/1.04  --sig_cnt_out                           false
% 2.21/1.04  --trig_cnt_out                          false
% 2.21/1.04  --trig_cnt_out_tolerance                1.
% 2.21/1.04  --trig_cnt_out_sk_spl                   false
% 2.21/1.04  --abstr_cl_out                          false
% 2.21/1.04  
% 2.21/1.04  ------ Global Options
% 2.21/1.04  
% 2.21/1.04  --schedule                              default
% 2.21/1.04  --add_important_lit                     false
% 2.21/1.04  --prop_solver_per_cl                    1000
% 2.21/1.04  --min_unsat_core                        false
% 2.21/1.04  --soft_assumptions                      false
% 2.21/1.04  --soft_lemma_size                       3
% 2.21/1.04  --prop_impl_unit_size                   0
% 2.21/1.04  --prop_impl_unit                        []
% 2.21/1.04  --share_sel_clauses                     true
% 2.21/1.04  --reset_solvers                         false
% 2.21/1.04  --bc_imp_inh                            [conj_cone]
% 2.21/1.04  --conj_cone_tolerance                   3.
% 2.21/1.04  --extra_neg_conj                        none
% 2.21/1.04  --large_theory_mode                     true
% 2.21/1.04  --prolific_symb_bound                   200
% 2.21/1.04  --lt_threshold                          2000
% 2.21/1.04  --clause_weak_htbl                      true
% 2.21/1.04  --gc_record_bc_elim                     false
% 2.21/1.04  
% 2.21/1.04  ------ Preprocessing Options
% 2.21/1.04  
% 2.21/1.04  --preprocessing_flag                    true
% 2.21/1.04  --time_out_prep_mult                    0.1
% 2.21/1.04  --splitting_mode                        input
% 2.21/1.04  --splitting_grd                         true
% 2.21/1.04  --splitting_cvd                         false
% 2.21/1.04  --splitting_cvd_svl                     false
% 2.21/1.04  --splitting_nvd                         32
% 2.21/1.04  --sub_typing                            true
% 2.21/1.04  --prep_gs_sim                           true
% 2.21/1.04  --prep_unflatten                        true
% 2.21/1.04  --prep_res_sim                          true
% 2.21/1.04  --prep_upred                            true
% 2.21/1.04  --prep_sem_filter                       exhaustive
% 2.21/1.04  --prep_sem_filter_out                   false
% 2.21/1.04  --pred_elim                             true
% 2.21/1.04  --res_sim_input                         true
% 2.21/1.04  --eq_ax_congr_red                       true
% 2.21/1.04  --pure_diseq_elim                       true
% 2.21/1.04  --brand_transform                       false
% 2.21/1.04  --non_eq_to_eq                          false
% 2.21/1.04  --prep_def_merge                        true
% 2.21/1.04  --prep_def_merge_prop_impl              false
% 2.21/1.04  --prep_def_merge_mbd                    true
% 2.21/1.04  --prep_def_merge_tr_red                 false
% 2.21/1.04  --prep_def_merge_tr_cl                  false
% 2.21/1.04  --smt_preprocessing                     true
% 2.21/1.04  --smt_ac_axioms                         fast
% 2.21/1.04  --preprocessed_out                      false
% 2.21/1.04  --preprocessed_stats                    false
% 2.21/1.04  
% 2.21/1.04  ------ Abstraction refinement Options
% 2.21/1.04  
% 2.21/1.04  --abstr_ref                             []
% 2.21/1.04  --abstr_ref_prep                        false
% 2.21/1.04  --abstr_ref_until_sat                   false
% 2.21/1.04  --abstr_ref_sig_restrict                funpre
% 2.21/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 2.21/1.04  --abstr_ref_under                       []
% 2.21/1.04  
% 2.21/1.04  ------ SAT Options
% 2.21/1.04  
% 2.21/1.04  --sat_mode                              false
% 2.21/1.04  --sat_fm_restart_options                ""
% 2.21/1.04  --sat_gr_def                            false
% 2.21/1.04  --sat_epr_types                         true
% 2.21/1.04  --sat_non_cyclic_types                  false
% 2.21/1.04  --sat_finite_models                     false
% 2.21/1.04  --sat_fm_lemmas                         false
% 2.21/1.04  --sat_fm_prep                           false
% 2.21/1.04  --sat_fm_uc_incr                        true
% 2.21/1.04  --sat_out_model                         small
% 2.21/1.04  --sat_out_clauses                       false
% 2.21/1.04  
% 2.21/1.04  ------ QBF Options
% 2.21/1.04  
% 2.21/1.04  --qbf_mode                              false
% 2.21/1.04  --qbf_elim_univ                         false
% 2.21/1.04  --qbf_dom_inst                          none
% 2.21/1.04  --qbf_dom_pre_inst                      false
% 2.21/1.04  --qbf_sk_in                             false
% 2.21/1.04  --qbf_pred_elim                         true
% 2.21/1.04  --qbf_split                             512
% 2.21/1.04  
% 2.21/1.04  ------ BMC1 Options
% 2.21/1.04  
% 2.21/1.04  --bmc1_incremental                      false
% 2.21/1.04  --bmc1_axioms                           reachable_all
% 2.21/1.04  --bmc1_min_bound                        0
% 2.21/1.04  --bmc1_max_bound                        -1
% 2.21/1.04  --bmc1_max_bound_default                -1
% 2.21/1.04  --bmc1_symbol_reachability              true
% 2.21/1.04  --bmc1_property_lemmas                  false
% 2.21/1.04  --bmc1_k_induction                      false
% 2.21/1.04  --bmc1_non_equiv_states                 false
% 2.21/1.04  --bmc1_deadlock                         false
% 2.21/1.04  --bmc1_ucm                              false
% 2.21/1.04  --bmc1_add_unsat_core                   none
% 2.21/1.04  --bmc1_unsat_core_children              false
% 2.21/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 2.21/1.04  --bmc1_out_stat                         full
% 2.21/1.04  --bmc1_ground_init                      false
% 2.21/1.04  --bmc1_pre_inst_next_state              false
% 2.21/1.04  --bmc1_pre_inst_state                   false
% 2.21/1.04  --bmc1_pre_inst_reach_state             false
% 2.21/1.04  --bmc1_out_unsat_core                   false
% 2.21/1.04  --bmc1_aig_witness_out                  false
% 2.21/1.04  --bmc1_verbose                          false
% 2.21/1.04  --bmc1_dump_clauses_tptp                false
% 2.21/1.04  --bmc1_dump_unsat_core_tptp             false
% 2.21/1.04  --bmc1_dump_file                        -
% 2.21/1.04  --bmc1_ucm_expand_uc_limit              128
% 2.21/1.04  --bmc1_ucm_n_expand_iterations          6
% 2.21/1.04  --bmc1_ucm_extend_mode                  1
% 2.21/1.04  --bmc1_ucm_init_mode                    2
% 2.21/1.04  --bmc1_ucm_cone_mode                    none
% 2.21/1.04  --bmc1_ucm_reduced_relation_type        0
% 2.21/1.04  --bmc1_ucm_relax_model                  4
% 2.21/1.04  --bmc1_ucm_full_tr_after_sat            true
% 2.21/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 2.21/1.04  --bmc1_ucm_layered_model                none
% 2.21/1.04  --bmc1_ucm_max_lemma_size               10
% 2.21/1.04  
% 2.21/1.04  ------ AIG Options
% 2.21/1.04  
% 2.21/1.04  --aig_mode                              false
% 2.21/1.04  
% 2.21/1.04  ------ Instantiation Options
% 2.21/1.04  
% 2.21/1.04  --instantiation_flag                    true
% 2.21/1.04  --inst_sos_flag                         false
% 2.21/1.04  --inst_sos_phase                        true
% 2.21/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.21/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.21/1.04  --inst_lit_sel_side                     num_symb
% 2.21/1.04  --inst_solver_per_active                1400
% 2.21/1.04  --inst_solver_calls_frac                1.
% 2.21/1.04  --inst_passive_queue_type               priority_queues
% 2.21/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.21/1.04  --inst_passive_queues_freq              [25;2]
% 2.21/1.04  --inst_dismatching                      true
% 2.21/1.04  --inst_eager_unprocessed_to_passive     true
% 2.21/1.04  --inst_prop_sim_given                   true
% 2.21/1.04  --inst_prop_sim_new                     false
% 2.21/1.04  --inst_subs_new                         false
% 2.21/1.04  --inst_eq_res_simp                      false
% 2.21/1.04  --inst_subs_given                       false
% 2.21/1.04  --inst_orphan_elimination               true
% 2.21/1.04  --inst_learning_loop_flag               true
% 2.21/1.04  --inst_learning_start                   3000
% 2.21/1.04  --inst_learning_factor                  2
% 2.21/1.04  --inst_start_prop_sim_after_learn       3
% 2.21/1.04  --inst_sel_renew                        solver
% 2.21/1.04  --inst_lit_activity_flag                true
% 2.21/1.04  --inst_restr_to_given                   false
% 2.21/1.04  --inst_activity_threshold               500
% 2.21/1.04  --inst_out_proof                        true
% 2.21/1.04  
% 2.21/1.04  ------ Resolution Options
% 2.21/1.04  
% 2.21/1.04  --resolution_flag                       true
% 2.21/1.04  --res_lit_sel                           adaptive
% 2.21/1.04  --res_lit_sel_side                      none
% 2.21/1.04  --res_ordering                          kbo
% 2.21/1.04  --res_to_prop_solver                    active
% 2.21/1.04  --res_prop_simpl_new                    false
% 2.21/1.04  --res_prop_simpl_given                  true
% 2.21/1.04  --res_passive_queue_type                priority_queues
% 2.21/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.21/1.04  --res_passive_queues_freq               [15;5]
% 2.21/1.04  --res_forward_subs                      full
% 2.21/1.04  --res_backward_subs                     full
% 2.21/1.04  --res_forward_subs_resolution           true
% 2.21/1.04  --res_backward_subs_resolution          true
% 2.21/1.04  --res_orphan_elimination                true
% 2.21/1.04  --res_time_limit                        2.
% 2.21/1.04  --res_out_proof                         true
% 2.21/1.04  
% 2.21/1.04  ------ Superposition Options
% 2.21/1.04  
% 2.21/1.04  --superposition_flag                    true
% 2.21/1.04  --sup_passive_queue_type                priority_queues
% 2.21/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.21/1.04  --sup_passive_queues_freq               [8;1;4]
% 2.21/1.04  --demod_completeness_check              fast
% 2.21/1.04  --demod_use_ground                      true
% 2.21/1.04  --sup_to_prop_solver                    passive
% 2.21/1.04  --sup_prop_simpl_new                    true
% 2.21/1.04  --sup_prop_simpl_given                  true
% 2.21/1.04  --sup_fun_splitting                     false
% 2.21/1.04  --sup_smt_interval                      50000
% 2.21/1.04  
% 2.21/1.04  ------ Superposition Simplification Setup
% 2.21/1.04  
% 2.21/1.04  --sup_indices_passive                   []
% 2.21/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.21/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.21/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.21/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 2.21/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.21/1.04  --sup_full_bw                           [BwDemod]
% 2.21/1.04  --sup_immed_triv                        [TrivRules]
% 2.21/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.21/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.21/1.04  --sup_immed_bw_main                     []
% 2.21/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.21/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 2.21/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.21/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.21/1.04  
% 2.21/1.04  ------ Combination Options
% 2.21/1.04  
% 2.21/1.04  --comb_res_mult                         3
% 2.21/1.04  --comb_sup_mult                         2
% 2.21/1.04  --comb_inst_mult                        10
% 2.21/1.04  
% 2.21/1.04  ------ Debug Options
% 2.21/1.04  
% 2.21/1.04  --dbg_backtrace                         false
% 2.21/1.04  --dbg_dump_prop_clauses                 false
% 2.21/1.04  --dbg_dump_prop_clauses_file            -
% 2.21/1.04  --dbg_out_stat                          false
% 2.21/1.04  ------ Parsing...
% 2.21/1.04  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.21/1.04  
% 2.21/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.21/1.04  
% 2.21/1.04  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.21/1.04  
% 2.21/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.21/1.04  ------ Proving...
% 2.21/1.04  ------ Problem Properties 
% 2.21/1.04  
% 2.21/1.04  
% 2.21/1.04  clauses                                 26
% 2.21/1.04  conjectures                             2
% 2.21/1.04  EPR                                     1
% 2.21/1.04  Horn                                    22
% 2.21/1.04  unary                                   8
% 2.21/1.04  binary                                  12
% 2.21/1.04  lits                                    53
% 2.21/1.04  lits eq                                 23
% 2.21/1.04  fd_pure                                 0
% 2.21/1.04  fd_pseudo                               0
% 2.21/1.04  fd_cond                                 0
% 2.21/1.04  fd_pseudo_cond                          4
% 2.21/1.04  AC symbols                              0
% 2.21/1.04  
% 2.21/1.04  ------ Schedule dynamic 5 is on 
% 2.21/1.04  
% 2.21/1.04  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.21/1.04  
% 2.21/1.04  
% 2.21/1.04  ------ 
% 2.21/1.04  Current options:
% 2.21/1.04  ------ 
% 2.21/1.04  
% 2.21/1.04  ------ Input Options
% 2.21/1.04  
% 2.21/1.04  --out_options                           all
% 2.21/1.04  --tptp_safe_out                         true
% 2.21/1.04  --problem_path                          ""
% 2.21/1.04  --include_path                          ""
% 2.21/1.04  --clausifier                            res/vclausify_rel
% 2.21/1.04  --clausifier_options                    --mode clausify
% 2.21/1.04  --stdin                                 false
% 2.21/1.04  --stats_out                             all
% 2.21/1.04  
% 2.21/1.04  ------ General Options
% 2.21/1.04  
% 2.21/1.04  --fof                                   false
% 2.21/1.04  --time_out_real                         305.
% 2.21/1.04  --time_out_virtual                      -1.
% 2.21/1.04  --symbol_type_check                     false
% 2.21/1.04  --clausify_out                          false
% 2.21/1.04  --sig_cnt_out                           false
% 2.21/1.04  --trig_cnt_out                          false
% 2.21/1.04  --trig_cnt_out_tolerance                1.
% 2.21/1.04  --trig_cnt_out_sk_spl                   false
% 2.21/1.04  --abstr_cl_out                          false
% 2.21/1.04  
% 2.21/1.04  ------ Global Options
% 2.21/1.04  
% 2.21/1.04  --schedule                              default
% 2.21/1.04  --add_important_lit                     false
% 2.21/1.04  --prop_solver_per_cl                    1000
% 2.21/1.04  --min_unsat_core                        false
% 2.21/1.04  --soft_assumptions                      false
% 2.21/1.04  --soft_lemma_size                       3
% 2.21/1.04  --prop_impl_unit_size                   0
% 2.21/1.04  --prop_impl_unit                        []
% 2.21/1.04  --share_sel_clauses                     true
% 2.21/1.04  --reset_solvers                         false
% 2.21/1.04  --bc_imp_inh                            [conj_cone]
% 2.21/1.04  --conj_cone_tolerance                   3.
% 2.21/1.04  --extra_neg_conj                        none
% 2.21/1.04  --large_theory_mode                     true
% 2.21/1.04  --prolific_symb_bound                   200
% 2.21/1.04  --lt_threshold                          2000
% 2.21/1.04  --clause_weak_htbl                      true
% 2.21/1.04  --gc_record_bc_elim                     false
% 2.21/1.04  
% 2.21/1.04  ------ Preprocessing Options
% 2.21/1.04  
% 2.21/1.04  --preprocessing_flag                    true
% 2.21/1.04  --time_out_prep_mult                    0.1
% 2.21/1.04  --splitting_mode                        input
% 2.21/1.04  --splitting_grd                         true
% 2.21/1.04  --splitting_cvd                         false
% 2.21/1.04  --splitting_cvd_svl                     false
% 2.21/1.04  --splitting_nvd                         32
% 2.21/1.04  --sub_typing                            true
% 2.21/1.04  --prep_gs_sim                           true
% 2.21/1.04  --prep_unflatten                        true
% 2.21/1.04  --prep_res_sim                          true
% 2.21/1.04  --prep_upred                            true
% 2.21/1.04  --prep_sem_filter                       exhaustive
% 2.21/1.04  --prep_sem_filter_out                   false
% 2.21/1.04  --pred_elim                             true
% 2.21/1.04  --res_sim_input                         true
% 2.21/1.04  --eq_ax_congr_red                       true
% 2.21/1.04  --pure_diseq_elim                       true
% 2.21/1.04  --brand_transform                       false
% 2.21/1.04  --non_eq_to_eq                          false
% 2.21/1.04  --prep_def_merge                        true
% 2.21/1.04  --prep_def_merge_prop_impl              false
% 2.21/1.04  --prep_def_merge_mbd                    true
% 2.21/1.04  --prep_def_merge_tr_red                 false
% 2.21/1.04  --prep_def_merge_tr_cl                  false
% 2.21/1.04  --smt_preprocessing                     true
% 2.21/1.04  --smt_ac_axioms                         fast
% 2.21/1.04  --preprocessed_out                      false
% 2.21/1.04  --preprocessed_stats                    false
% 2.21/1.04  
% 2.21/1.04  ------ Abstraction refinement Options
% 2.21/1.04  
% 2.21/1.04  --abstr_ref                             []
% 2.21/1.04  --abstr_ref_prep                        false
% 2.21/1.04  --abstr_ref_until_sat                   false
% 2.21/1.04  --abstr_ref_sig_restrict                funpre
% 2.21/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 2.21/1.04  --abstr_ref_under                       []
% 2.21/1.04  
% 2.21/1.04  ------ SAT Options
% 2.21/1.04  
% 2.21/1.04  --sat_mode                              false
% 2.21/1.04  --sat_fm_restart_options                ""
% 2.21/1.04  --sat_gr_def                            false
% 2.21/1.04  --sat_epr_types                         true
% 2.21/1.04  --sat_non_cyclic_types                  false
% 2.21/1.04  --sat_finite_models                     false
% 2.21/1.04  --sat_fm_lemmas                         false
% 2.21/1.04  --sat_fm_prep                           false
% 2.21/1.04  --sat_fm_uc_incr                        true
% 2.21/1.04  --sat_out_model                         small
% 2.21/1.04  --sat_out_clauses                       false
% 2.21/1.04  
% 2.21/1.04  ------ QBF Options
% 2.21/1.04  
% 2.21/1.04  --qbf_mode                              false
% 2.21/1.04  --qbf_elim_univ                         false
% 2.21/1.04  --qbf_dom_inst                          none
% 2.21/1.04  --qbf_dom_pre_inst                      false
% 2.21/1.04  --qbf_sk_in                             false
% 2.21/1.04  --qbf_pred_elim                         true
% 2.21/1.04  --qbf_split                             512
% 2.21/1.04  
% 2.21/1.04  ------ BMC1 Options
% 2.21/1.04  
% 2.21/1.04  --bmc1_incremental                      false
% 2.21/1.04  --bmc1_axioms                           reachable_all
% 2.21/1.04  --bmc1_min_bound                        0
% 2.21/1.04  --bmc1_max_bound                        -1
% 2.21/1.04  --bmc1_max_bound_default                -1
% 2.21/1.04  --bmc1_symbol_reachability              true
% 2.21/1.04  --bmc1_property_lemmas                  false
% 2.21/1.04  --bmc1_k_induction                      false
% 2.21/1.04  --bmc1_non_equiv_states                 false
% 2.21/1.04  --bmc1_deadlock                         false
% 2.21/1.04  --bmc1_ucm                              false
% 2.21/1.04  --bmc1_add_unsat_core                   none
% 2.21/1.04  --bmc1_unsat_core_children              false
% 2.21/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 2.21/1.04  --bmc1_out_stat                         full
% 2.21/1.04  --bmc1_ground_init                      false
% 2.21/1.04  --bmc1_pre_inst_next_state              false
% 2.21/1.04  --bmc1_pre_inst_state                   false
% 2.21/1.04  --bmc1_pre_inst_reach_state             false
% 2.21/1.04  --bmc1_out_unsat_core                   false
% 2.21/1.04  --bmc1_aig_witness_out                  false
% 2.21/1.04  --bmc1_verbose                          false
% 2.21/1.04  --bmc1_dump_clauses_tptp                false
% 2.21/1.04  --bmc1_dump_unsat_core_tptp             false
% 2.21/1.04  --bmc1_dump_file                        -
% 2.21/1.04  --bmc1_ucm_expand_uc_limit              128
% 2.21/1.04  --bmc1_ucm_n_expand_iterations          6
% 2.21/1.04  --bmc1_ucm_extend_mode                  1
% 2.21/1.04  --bmc1_ucm_init_mode                    2
% 2.21/1.04  --bmc1_ucm_cone_mode                    none
% 2.21/1.04  --bmc1_ucm_reduced_relation_type        0
% 2.21/1.04  --bmc1_ucm_relax_model                  4
% 2.21/1.04  --bmc1_ucm_full_tr_after_sat            true
% 2.21/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 2.21/1.04  --bmc1_ucm_layered_model                none
% 2.21/1.04  --bmc1_ucm_max_lemma_size               10
% 2.21/1.04  
% 2.21/1.04  ------ AIG Options
% 2.21/1.04  
% 2.21/1.04  --aig_mode                              false
% 2.21/1.04  
% 2.21/1.04  ------ Instantiation Options
% 2.21/1.04  
% 2.21/1.04  --instantiation_flag                    true
% 2.21/1.04  --inst_sos_flag                         false
% 2.21/1.04  --inst_sos_phase                        true
% 2.21/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.21/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.21/1.04  --inst_lit_sel_side                     none
% 2.21/1.04  --inst_solver_per_active                1400
% 2.21/1.04  --inst_solver_calls_frac                1.
% 2.21/1.04  --inst_passive_queue_type               priority_queues
% 2.21/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.21/1.04  --inst_passive_queues_freq              [25;2]
% 2.21/1.04  --inst_dismatching                      true
% 2.21/1.04  --inst_eager_unprocessed_to_passive     true
% 2.21/1.04  --inst_prop_sim_given                   true
% 2.21/1.04  --inst_prop_sim_new                     false
% 2.21/1.04  --inst_subs_new                         false
% 2.21/1.04  --inst_eq_res_simp                      false
% 2.21/1.04  --inst_subs_given                       false
% 2.21/1.04  --inst_orphan_elimination               true
% 2.21/1.04  --inst_learning_loop_flag               true
% 2.21/1.04  --inst_learning_start                   3000
% 2.21/1.04  --inst_learning_factor                  2
% 2.21/1.04  --inst_start_prop_sim_after_learn       3
% 2.21/1.04  --inst_sel_renew                        solver
% 2.21/1.04  --inst_lit_activity_flag                true
% 2.21/1.04  --inst_restr_to_given                   false
% 2.21/1.04  --inst_activity_threshold               500
% 2.21/1.04  --inst_out_proof                        true
% 2.21/1.04  
% 2.21/1.04  ------ Resolution Options
% 2.21/1.04  
% 2.21/1.04  --resolution_flag                       false
% 2.21/1.04  --res_lit_sel                           adaptive
% 2.21/1.04  --res_lit_sel_side                      none
% 2.21/1.04  --res_ordering                          kbo
% 2.21/1.04  --res_to_prop_solver                    active
% 2.21/1.04  --res_prop_simpl_new                    false
% 2.21/1.04  --res_prop_simpl_given                  true
% 2.21/1.04  --res_passive_queue_type                priority_queues
% 2.21/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.21/1.04  --res_passive_queues_freq               [15;5]
% 2.21/1.04  --res_forward_subs                      full
% 2.21/1.04  --res_backward_subs                     full
% 2.21/1.04  --res_forward_subs_resolution           true
% 2.21/1.04  --res_backward_subs_resolution          true
% 2.21/1.04  --res_orphan_elimination                true
% 2.21/1.04  --res_time_limit                        2.
% 2.21/1.04  --res_out_proof                         true
% 2.21/1.04  
% 2.21/1.04  ------ Superposition Options
% 2.21/1.04  
% 2.21/1.04  --superposition_flag                    true
% 2.21/1.04  --sup_passive_queue_type                priority_queues
% 2.21/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.21/1.04  --sup_passive_queues_freq               [8;1;4]
% 2.21/1.04  --demod_completeness_check              fast
% 2.21/1.04  --demod_use_ground                      true
% 2.21/1.04  --sup_to_prop_solver                    passive
% 2.21/1.04  --sup_prop_simpl_new                    true
% 2.21/1.04  --sup_prop_simpl_given                  true
% 2.21/1.04  --sup_fun_splitting                     false
% 2.21/1.04  --sup_smt_interval                      50000
% 2.21/1.04  
% 2.21/1.04  ------ Superposition Simplification Setup
% 2.21/1.04  
% 2.21/1.04  --sup_indices_passive                   []
% 2.21/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.21/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.21/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.21/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 2.21/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.21/1.04  --sup_full_bw                           [BwDemod]
% 2.21/1.04  --sup_immed_triv                        [TrivRules]
% 2.21/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.21/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.21/1.04  --sup_immed_bw_main                     []
% 2.21/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.21/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 2.21/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.21/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.21/1.04  
% 2.21/1.04  ------ Combination Options
% 2.21/1.04  
% 2.21/1.04  --comb_res_mult                         3
% 2.21/1.04  --comb_sup_mult                         2
% 2.21/1.04  --comb_inst_mult                        10
% 2.21/1.04  
% 2.21/1.04  ------ Debug Options
% 2.21/1.04  
% 2.21/1.04  --dbg_backtrace                         false
% 2.21/1.04  --dbg_dump_prop_clauses                 false
% 2.21/1.04  --dbg_dump_prop_clauses_file            -
% 2.21/1.04  --dbg_out_stat                          false
% 2.21/1.04  
% 2.21/1.04  
% 2.21/1.04  
% 2.21/1.04  
% 2.21/1.04  ------ Proving...
% 2.21/1.04  
% 2.21/1.04  
% 2.21/1.04  % SZS status Theorem for theBenchmark.p
% 2.21/1.04  
% 2.21/1.04  % SZS output start CNFRefutation for theBenchmark.p
% 2.21/1.04  
% 2.21/1.04  fof(f4,axiom,(
% 2.21/1.04    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f18,plain,(
% 2.21/1.04    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 2.21/1.04    inference(ennf_transformation,[],[f4])).
% 2.21/1.04  
% 2.21/1.04  fof(f28,plain,(
% 2.21/1.04    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.21/1.04    inference(nnf_transformation,[],[f18])).
% 2.21/1.04  
% 2.21/1.04  fof(f29,plain,(
% 2.21/1.04    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.21/1.04    inference(flattening,[],[f28])).
% 2.21/1.04  
% 2.21/1.04  fof(f30,plain,(
% 2.21/1.04    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.21/1.04    inference(rectify,[],[f29])).
% 2.21/1.04  
% 2.21/1.04  fof(f31,plain,(
% 2.21/1.04    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3))))),
% 2.21/1.04    introduced(choice_axiom,[])).
% 2.21/1.04  
% 2.21/1.04  fof(f32,plain,(
% 2.21/1.04    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.21/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f30,f31])).
% 2.21/1.04  
% 2.21/1.04  fof(f48,plain,(
% 2.21/1.04    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X2 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 2.21/1.04    inference(cnf_transformation,[],[f32])).
% 2.21/1.04  
% 2.21/1.04  fof(f73,plain,(
% 2.21/1.04    ( ! [X0,X5,X3,X1] : (r2_hidden(X5,X3) | k1_enumset1(X0,X1,X5) != X3) )),
% 2.21/1.04    inference(equality_resolution,[],[f48])).
% 2.21/1.04  
% 2.21/1.04  fof(f74,plain,(
% 2.21/1.04    ( ! [X0,X5,X1] : (r2_hidden(X5,k1_enumset1(X0,X1,X5))) )),
% 2.21/1.04    inference(equality_resolution,[],[f73])).
% 2.21/1.04  
% 2.21/1.04  fof(f7,axiom,(
% 2.21/1.04    ! [X0,X1] : (~r2_hidden(X0,X1) => r1_xboole_0(k1_tarski(X0),X1))),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f19,plain,(
% 2.21/1.04    ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1))),
% 2.21/1.04    inference(ennf_transformation,[],[f7])).
% 2.21/1.04  
% 2.21/1.04  fof(f55,plain,(
% 2.21/1.04    ( ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f19])).
% 2.21/1.04  
% 2.21/1.04  fof(f5,axiom,(
% 2.21/1.04    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f53,plain,(
% 2.21/1.04    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f5])).
% 2.21/1.04  
% 2.21/1.04  fof(f6,axiom,(
% 2.21/1.04    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f54,plain,(
% 2.21/1.04    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f6])).
% 2.21/1.04  
% 2.21/1.04  fof(f70,plain,(
% 2.21/1.04    ( ! [X0] : (k1_enumset1(X0,X0,X0) = k1_tarski(X0)) )),
% 2.21/1.04    inference(definition_unfolding,[],[f53,f54])).
% 2.21/1.04  
% 2.21/1.04  fof(f71,plain,(
% 2.21/1.04    ( ! [X0,X1] : (r1_xboole_0(k1_enumset1(X0,X0,X0),X1) | r2_hidden(X0,X1)) )),
% 2.21/1.04    inference(definition_unfolding,[],[f55,f70])).
% 2.21/1.04  
% 2.21/1.04  fof(f10,axiom,(
% 2.21/1.04    ! [X0] : (v1_relat_1(X0) => ! [X1] : (r1_xboole_0(X1,k1_relat_1(X0)) => k1_xboole_0 = k7_relat_1(X0,X1)))),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f22,plain,(
% 2.21/1.04    ! [X0] : (! [X1] : (k1_xboole_0 = k7_relat_1(X0,X1) | ~r1_xboole_0(X1,k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 2.21/1.04    inference(ennf_transformation,[],[f10])).
% 2.21/1.04  
% 2.21/1.04  fof(f59,plain,(
% 2.21/1.04    ( ! [X0,X1] : (k1_xboole_0 = k7_relat_1(X0,X1) | ~r1_xboole_0(X1,k1_relat_1(X0)) | ~v1_relat_1(X0)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f22])).
% 2.21/1.04  
% 2.21/1.04  fof(f14,conjecture,(
% 2.21/1.04    ! [X0,X1] : (v1_relat_1(X1) => (r2_hidden(X0,k1_relat_1(X1)) <=> k1_xboole_0 != k11_relat_1(X1,X0)))),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f15,negated_conjecture,(
% 2.21/1.04    ~! [X0,X1] : (v1_relat_1(X1) => (r2_hidden(X0,k1_relat_1(X1)) <=> k1_xboole_0 != k11_relat_1(X1,X0)))),
% 2.21/1.04    inference(negated_conjecture,[],[f14])).
% 2.21/1.04  
% 2.21/1.04  fof(f25,plain,(
% 2.21/1.04    ? [X0,X1] : ((r2_hidden(X0,k1_relat_1(X1)) <~> k1_xboole_0 != k11_relat_1(X1,X0)) & v1_relat_1(X1))),
% 2.21/1.04    inference(ennf_transformation,[],[f15])).
% 2.21/1.04  
% 2.21/1.04  fof(f37,plain,(
% 2.21/1.04    ? [X0,X1] : (((k1_xboole_0 = k11_relat_1(X1,X0) | ~r2_hidden(X0,k1_relat_1(X1))) & (k1_xboole_0 != k11_relat_1(X1,X0) | r2_hidden(X0,k1_relat_1(X1)))) & v1_relat_1(X1))),
% 2.21/1.04    inference(nnf_transformation,[],[f25])).
% 2.21/1.04  
% 2.21/1.04  fof(f38,plain,(
% 2.21/1.04    ? [X0,X1] : ((k1_xboole_0 = k11_relat_1(X1,X0) | ~r2_hidden(X0,k1_relat_1(X1))) & (k1_xboole_0 != k11_relat_1(X1,X0) | r2_hidden(X0,k1_relat_1(X1))) & v1_relat_1(X1))),
% 2.21/1.04    inference(flattening,[],[f37])).
% 2.21/1.04  
% 2.21/1.04  fof(f39,plain,(
% 2.21/1.04    ? [X0,X1] : ((k1_xboole_0 = k11_relat_1(X1,X0) | ~r2_hidden(X0,k1_relat_1(X1))) & (k1_xboole_0 != k11_relat_1(X1,X0) | r2_hidden(X0,k1_relat_1(X1))) & v1_relat_1(X1)) => ((k1_xboole_0 = k11_relat_1(sK3,sK2) | ~r2_hidden(sK2,k1_relat_1(sK3))) & (k1_xboole_0 != k11_relat_1(sK3,sK2) | r2_hidden(sK2,k1_relat_1(sK3))) & v1_relat_1(sK3))),
% 2.21/1.04    introduced(choice_axiom,[])).
% 2.21/1.04  
% 2.21/1.04  fof(f40,plain,(
% 2.21/1.04    (k1_xboole_0 = k11_relat_1(sK3,sK2) | ~r2_hidden(sK2,k1_relat_1(sK3))) & (k1_xboole_0 != k11_relat_1(sK3,sK2) | r2_hidden(sK2,k1_relat_1(sK3))) & v1_relat_1(sK3)),
% 2.21/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f38,f39])).
% 2.21/1.04  
% 2.21/1.04  fof(f67,plain,(
% 2.21/1.04    v1_relat_1(sK3)),
% 2.21/1.04    inference(cnf_transformation,[],[f40])).
% 2.21/1.04  
% 2.21/1.04  fof(f13,axiom,(
% 2.21/1.04    ! [X0,X1] : (v1_relat_1(X1) => (k1_xboole_0 = k7_relat_1(X1,X0) <=> r1_xboole_0(k1_relat_1(X1),X0)))),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f24,plain,(
% 2.21/1.04    ! [X0,X1] : ((k1_xboole_0 = k7_relat_1(X1,X0) <=> r1_xboole_0(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.21/1.04    inference(ennf_transformation,[],[f13])).
% 2.21/1.04  
% 2.21/1.04  fof(f36,plain,(
% 2.21/1.04    ! [X0,X1] : (((k1_xboole_0 = k7_relat_1(X1,X0) | ~r1_xboole_0(k1_relat_1(X1),X0)) & (r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 != k7_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.21/1.04    inference(nnf_transformation,[],[f24])).
% 2.21/1.04  
% 2.21/1.04  fof(f65,plain,(
% 2.21/1.04    ( ! [X0,X1] : (r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 != k7_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f36])).
% 2.21/1.04  
% 2.21/1.04  fof(f9,axiom,(
% 2.21/1.04    ! [X0,X1] : (v1_relat_1(X1) => (k1_xboole_0 = k9_relat_1(X1,X0) <=> r1_xboole_0(k1_relat_1(X1),X0)))),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f21,plain,(
% 2.21/1.04    ! [X0,X1] : ((k1_xboole_0 = k9_relat_1(X1,X0) <=> r1_xboole_0(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.21/1.04    inference(ennf_transformation,[],[f9])).
% 2.21/1.04  
% 2.21/1.04  fof(f33,plain,(
% 2.21/1.04    ! [X0,X1] : (((k1_xboole_0 = k9_relat_1(X1,X0) | ~r1_xboole_0(k1_relat_1(X1),X0)) & (r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 != k9_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.21/1.04    inference(nnf_transformation,[],[f21])).
% 2.21/1.04  
% 2.21/1.04  fof(f58,plain,(
% 2.21/1.04    ( ! [X0,X1] : (k1_xboole_0 = k9_relat_1(X1,X0) | ~r1_xboole_0(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f33])).
% 2.21/1.04  
% 2.21/1.04  fof(f8,axiom,(
% 2.21/1.04    ! [X0] : (v1_relat_1(X0) => ! [X1] : k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1)))),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f20,plain,(
% 2.21/1.04    ! [X0] : (! [X1] : k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1)) | ~v1_relat_1(X0))),
% 2.21/1.04    inference(ennf_transformation,[],[f8])).
% 2.21/1.04  
% 2.21/1.04  fof(f56,plain,(
% 2.21/1.04    ( ! [X0,X1] : (k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1)) | ~v1_relat_1(X0)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f20])).
% 2.21/1.04  
% 2.21/1.04  fof(f72,plain,(
% 2.21/1.04    ( ! [X0,X1] : (k11_relat_1(X0,X1) = k9_relat_1(X0,k1_enumset1(X1,X1,X1)) | ~v1_relat_1(X0)) )),
% 2.21/1.04    inference(definition_unfolding,[],[f56,f70])).
% 2.21/1.04  
% 2.21/1.04  fof(f69,plain,(
% 2.21/1.04    k1_xboole_0 = k11_relat_1(sK3,sK2) | ~r2_hidden(sK2,k1_relat_1(sK3))),
% 2.21/1.04    inference(cnf_transformation,[],[f40])).
% 2.21/1.04  
% 2.21/1.04  fof(f57,plain,(
% 2.21/1.04    ( ! [X0,X1] : (r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 != k9_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f33])).
% 2.21/1.04  
% 2.21/1.04  fof(f66,plain,(
% 2.21/1.04    ( ! [X0,X1] : (k1_xboole_0 = k7_relat_1(X1,X0) | ~r1_xboole_0(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f36])).
% 2.21/1.04  
% 2.21/1.04  fof(f12,axiom,(
% 2.21/1.04    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) <=> (r2_hidden(X0,k1_relat_1(X2)) & r2_hidden(X0,X1))))),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f23,plain,(
% 2.21/1.04    ! [X0,X1,X2] : ((r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) <=> (r2_hidden(X0,k1_relat_1(X2)) & r2_hidden(X0,X1))) | ~v1_relat_1(X2))),
% 2.21/1.04    inference(ennf_transformation,[],[f12])).
% 2.21/1.04  
% 2.21/1.04  fof(f34,plain,(
% 2.21/1.04    ! [X0,X1,X2] : (((r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) | (~r2_hidden(X0,k1_relat_1(X2)) | ~r2_hidden(X0,X1))) & ((r2_hidden(X0,k1_relat_1(X2)) & r2_hidden(X0,X1)) | ~r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))))) | ~v1_relat_1(X2))),
% 2.21/1.04    inference(nnf_transformation,[],[f23])).
% 2.21/1.04  
% 2.21/1.04  fof(f35,plain,(
% 2.21/1.04    ! [X0,X1,X2] : (((r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) | ~r2_hidden(X0,k1_relat_1(X2)) | ~r2_hidden(X0,X1)) & ((r2_hidden(X0,k1_relat_1(X2)) & r2_hidden(X0,X1)) | ~r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))))) | ~v1_relat_1(X2))),
% 2.21/1.04    inference(flattening,[],[f34])).
% 2.21/1.04  
% 2.21/1.04  fof(f64,plain,(
% 2.21/1.04    ( ! [X2,X0,X1] : (r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) | ~r2_hidden(X0,k1_relat_1(X2)) | ~r2_hidden(X0,X1) | ~v1_relat_1(X2)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f35])).
% 2.21/1.04  
% 2.21/1.04  fof(f11,axiom,(
% 2.21/1.04    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f60,plain,(
% 2.21/1.04    k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 2.21/1.04    inference(cnf_transformation,[],[f11])).
% 2.21/1.04  
% 2.21/1.04  fof(f2,axiom,(
% 2.21/1.04    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f43,plain,(
% 2.21/1.04    ( ! [X0] : (k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0) )),
% 2.21/1.04    inference(cnf_transformation,[],[f2])).
% 2.21/1.04  
% 2.21/1.04  fof(f1,axiom,(
% 2.21/1.04    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f16,plain,(
% 2.21/1.04    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 2.21/1.04    inference(rectify,[],[f1])).
% 2.21/1.04  
% 2.21/1.04  fof(f17,plain,(
% 2.21/1.04    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 2.21/1.04    inference(ennf_transformation,[],[f16])).
% 2.21/1.04  
% 2.21/1.04  fof(f26,plain,(
% 2.21/1.04    ! [X1,X0] : (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) => r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)))),
% 2.21/1.04    introduced(choice_axiom,[])).
% 2.21/1.04  
% 2.21/1.04  fof(f27,plain,(
% 2.21/1.04    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 2.21/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f17,f26])).
% 2.21/1.04  
% 2.21/1.04  fof(f42,plain,(
% 2.21/1.04    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k3_xboole_0(X0,X1))) )),
% 2.21/1.04    inference(cnf_transformation,[],[f27])).
% 2.21/1.04  
% 2.21/1.04  fof(f3,axiom,(
% 2.21/1.04    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 2.21/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.21/1.04  
% 2.21/1.04  fof(f44,plain,(
% 2.21/1.04    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 2.21/1.04    inference(cnf_transformation,[],[f3])).
% 2.21/1.04  
% 2.21/1.04  fof(f46,plain,(
% 2.21/1.04    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 2.21/1.04    inference(cnf_transformation,[],[f32])).
% 2.21/1.04  
% 2.21/1.04  fof(f77,plain,(
% 2.21/1.04    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k1_enumset1(X5,X1,X2) != X3) )),
% 2.21/1.04    inference(equality_resolution,[],[f46])).
% 2.21/1.04  
% 2.21/1.04  fof(f78,plain,(
% 2.21/1.04    ( ! [X2,X5,X1] : (r2_hidden(X5,k1_enumset1(X5,X1,X2))) )),
% 2.21/1.04    inference(equality_resolution,[],[f77])).
% 2.21/1.04  
% 2.21/1.04  fof(f45,plain,(
% 2.21/1.04    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k1_enumset1(X0,X1,X2) != X3) )),
% 2.21/1.04    inference(cnf_transformation,[],[f32])).
% 2.21/1.04  
% 2.21/1.04  fof(f79,plain,(
% 2.21/1.04    ( ! [X2,X0,X5,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,k1_enumset1(X0,X1,X2))) )),
% 2.21/1.04    inference(equality_resolution,[],[f45])).
% 2.21/1.04  
% 2.21/1.04  fof(f68,plain,(
% 2.21/1.04    k1_xboole_0 != k11_relat_1(sK3,sK2) | r2_hidden(sK2,k1_relat_1(sK3))),
% 2.21/1.04    inference(cnf_transformation,[],[f40])).
% 2.21/1.04  
% 2.21/1.04  cnf(c_8,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_enumset1(X1,X2,X0)) ),
% 2.21/1.04      inference(cnf_transformation,[],[f74]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1424,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_enumset1(X1,X2,X0)) = iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_12,plain,
% 2.21/1.04      ( r2_hidden(X0,X1) | r1_xboole_0(k1_enumset1(X0,X0,X0),X1) ),
% 2.21/1.04      inference(cnf_transformation,[],[f71]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1420,plain,
% 2.21/1.04      ( r2_hidden(X0,X1) = iProver_top
% 2.21/1.04      | r1_xboole_0(k1_enumset1(X0,X0,X0),X1) = iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_16,plain,
% 2.21/1.04      ( ~ r1_xboole_0(X0,k1_relat_1(X1))
% 2.21/1.04      | ~ v1_relat_1(X1)
% 2.21/1.04      | k7_relat_1(X1,X0) = k1_xboole_0 ),
% 2.21/1.04      inference(cnf_transformation,[],[f59]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_26,negated_conjecture,
% 2.21/1.04      ( v1_relat_1(sK3) ),
% 2.21/1.04      inference(cnf_transformation,[],[f67]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_390,plain,
% 2.21/1.04      ( ~ r1_xboole_0(X0,k1_relat_1(X1))
% 2.21/1.04      | k7_relat_1(X1,X0) = k1_xboole_0
% 2.21/1.04      | sK3 != X1 ),
% 2.21/1.04      inference(resolution_lifted,[status(thm)],[c_16,c_26]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_391,plain,
% 2.21/1.04      ( ~ r1_xboole_0(X0,k1_relat_1(sK3))
% 2.21/1.04      | k7_relat_1(sK3,X0) = k1_xboole_0 ),
% 2.21/1.04      inference(unflattening,[status(thm)],[c_390]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_23,plain,
% 2.21/1.04      ( r1_xboole_0(k1_relat_1(X0),X1)
% 2.21/1.04      | ~ v1_relat_1(X0)
% 2.21/1.04      | k7_relat_1(X0,X1) != k1_xboole_0 ),
% 2.21/1.04      inference(cnf_transformation,[],[f65]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_324,plain,
% 2.21/1.04      ( r1_xboole_0(k1_relat_1(X0),X1)
% 2.21/1.04      | k7_relat_1(X0,X1) != k1_xboole_0
% 2.21/1.04      | sK3 != X0 ),
% 2.21/1.04      inference(resolution_lifted,[status(thm)],[c_23,c_26]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_325,plain,
% 2.21/1.04      ( r1_xboole_0(k1_relat_1(sK3),X0)
% 2.21/1.04      | k7_relat_1(sK3,X0) != k1_xboole_0 ),
% 2.21/1.04      inference(unflattening,[status(thm)],[c_324]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_739,plain,
% 2.21/1.04      ( r1_xboole_0(k1_relat_1(sK3),X0)
% 2.21/1.04      | k7_relat_1(sK3,X0) != k1_xboole_0 ),
% 2.21/1.04      inference(prop_impl,[status(thm)],[c_325]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_796,plain,
% 2.21/1.04      ( ~ r1_xboole_0(X0,k1_relat_1(sK3))
% 2.21/1.04      | r1_xboole_0(k1_relat_1(sK3),X0) ),
% 2.21/1.04      inference(bin_hyper_res,[status(thm)],[c_391,c_739]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1410,plain,
% 2.21/1.04      ( r1_xboole_0(X0,k1_relat_1(sK3)) != iProver_top
% 2.21/1.04      | r1_xboole_0(k1_relat_1(sK3),X0) = iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_796]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_2675,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_relat_1(sK3)) = iProver_top
% 2.21/1.04      | r1_xboole_0(k1_relat_1(sK3),k1_enumset1(X0,X0,X0)) = iProver_top ),
% 2.21/1.04      inference(superposition,[status(thm)],[c_1420,c_1410]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_14,plain,
% 2.21/1.04      ( ~ r1_xboole_0(k1_relat_1(X0),X1)
% 2.21/1.04      | ~ v1_relat_1(X0)
% 2.21/1.04      | k9_relat_1(X0,X1) = k1_xboole_0 ),
% 2.21/1.04      inference(cnf_transformation,[],[f58]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_360,plain,
% 2.21/1.04      ( ~ r1_xboole_0(k1_relat_1(X0),X1)
% 2.21/1.04      | k9_relat_1(X0,X1) = k1_xboole_0
% 2.21/1.04      | sK3 != X0 ),
% 2.21/1.04      inference(resolution_lifted,[status(thm)],[c_14,c_26]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_361,plain,
% 2.21/1.04      ( ~ r1_xboole_0(k1_relat_1(sK3),X0)
% 2.21/1.04      | k9_relat_1(sK3,X0) = k1_xboole_0 ),
% 2.21/1.04      inference(unflattening,[status(thm)],[c_360]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_745,plain,
% 2.21/1.04      ( ~ r1_xboole_0(k1_relat_1(sK3),X0)
% 2.21/1.04      | k9_relat_1(sK3,X0) = k1_xboole_0 ),
% 2.21/1.04      inference(prop_impl,[status(thm)],[c_361]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1414,plain,
% 2.21/1.04      ( k9_relat_1(sK3,X0) = k1_xboole_0
% 2.21/1.04      | r1_xboole_0(k1_relat_1(sK3),X0) != iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_745]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3091,plain,
% 2.21/1.04      ( k9_relat_1(sK3,k1_enumset1(X0,X0,X0)) = k1_xboole_0
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(sK3)) = iProver_top ),
% 2.21/1.04      inference(superposition,[status(thm)],[c_2675,c_1414]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_13,plain,
% 2.21/1.04      ( ~ v1_relat_1(X0)
% 2.21/1.04      | k9_relat_1(X0,k1_enumset1(X1,X1,X1)) = k11_relat_1(X0,X1) ),
% 2.21/1.04      inference(cnf_transformation,[],[f72]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_372,plain,
% 2.21/1.04      ( k9_relat_1(X0,k1_enumset1(X1,X1,X1)) = k11_relat_1(X0,X1)
% 2.21/1.04      | sK3 != X0 ),
% 2.21/1.04      inference(resolution_lifted,[status(thm)],[c_13,c_26]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_373,plain,
% 2.21/1.04      ( k9_relat_1(sK3,k1_enumset1(X0,X0,X0)) = k11_relat_1(sK3,X0) ),
% 2.21/1.04      inference(unflattening,[status(thm)],[c_372]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3094,plain,
% 2.21/1.04      ( k11_relat_1(sK3,X0) = k1_xboole_0
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(sK3)) = iProver_top ),
% 2.21/1.04      inference(demodulation,[status(thm)],[c_3091,c_373]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_24,negated_conjecture,
% 2.21/1.04      ( ~ r2_hidden(sK2,k1_relat_1(sK3))
% 2.21/1.04      | k1_xboole_0 = k11_relat_1(sK3,sK2) ),
% 2.21/1.04      inference(cnf_transformation,[],[f69]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1419,plain,
% 2.21/1.04      ( k1_xboole_0 = k11_relat_1(sK3,sK2)
% 2.21/1.04      | r2_hidden(sK2,k1_relat_1(sK3)) != iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3108,plain,
% 2.21/1.04      ( k11_relat_1(sK3,sK2) = k1_xboole_0 ),
% 2.21/1.04      inference(superposition,[status(thm)],[c_3094,c_1419]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_15,plain,
% 2.21/1.04      ( r1_xboole_0(k1_relat_1(X0),X1)
% 2.21/1.04      | ~ v1_relat_1(X0)
% 2.21/1.04      | k9_relat_1(X0,X1) != k1_xboole_0 ),
% 2.21/1.04      inference(cnf_transformation,[],[f57]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_348,plain,
% 2.21/1.04      ( r1_xboole_0(k1_relat_1(X0),X1)
% 2.21/1.04      | k9_relat_1(X0,X1) != k1_xboole_0
% 2.21/1.04      | sK3 != X0 ),
% 2.21/1.04      inference(resolution_lifted,[status(thm)],[c_15,c_26]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_349,plain,
% 2.21/1.04      ( r1_xboole_0(k1_relat_1(sK3),X0)
% 2.21/1.04      | k9_relat_1(sK3,X0) != k1_xboole_0 ),
% 2.21/1.04      inference(unflattening,[status(thm)],[c_348]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_743,plain,
% 2.21/1.04      ( r1_xboole_0(k1_relat_1(sK3),X0)
% 2.21/1.04      | k9_relat_1(sK3,X0) != k1_xboole_0 ),
% 2.21/1.04      inference(prop_impl,[status(thm)],[c_349]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1415,plain,
% 2.21/1.04      ( k9_relat_1(sK3,X0) != k1_xboole_0
% 2.21/1.04      | r1_xboole_0(k1_relat_1(sK3),X0) = iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_743]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_2157,plain,
% 2.21/1.04      ( k11_relat_1(sK3,X0) != k1_xboole_0
% 2.21/1.04      | r1_xboole_0(k1_relat_1(sK3),k1_enumset1(X0,X0,X0)) = iProver_top ),
% 2.21/1.04      inference(superposition,[status(thm)],[c_373,c_1415]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3226,plain,
% 2.21/1.04      ( r1_xboole_0(k1_relat_1(sK3),k1_enumset1(sK2,sK2,sK2)) = iProver_top ),
% 2.21/1.04      inference(superposition,[status(thm)],[c_3108,c_2157]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_22,plain,
% 2.21/1.04      ( ~ r1_xboole_0(k1_relat_1(X0),X1)
% 2.21/1.04      | ~ v1_relat_1(X0)
% 2.21/1.04      | k7_relat_1(X0,X1) = k1_xboole_0 ),
% 2.21/1.04      inference(cnf_transformation,[],[f66]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_336,plain,
% 2.21/1.04      ( ~ r1_xboole_0(k1_relat_1(X0),X1)
% 2.21/1.04      | k7_relat_1(X0,X1) = k1_xboole_0
% 2.21/1.04      | sK3 != X0 ),
% 2.21/1.04      inference(resolution_lifted,[status(thm)],[c_22,c_26]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_337,plain,
% 2.21/1.04      ( ~ r1_xboole_0(k1_relat_1(sK3),X0)
% 2.21/1.04      | k7_relat_1(sK3,X0) = k1_xboole_0 ),
% 2.21/1.04      inference(unflattening,[status(thm)],[c_336]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_741,plain,
% 2.21/1.04      ( ~ r1_xboole_0(k1_relat_1(sK3),X0)
% 2.21/1.04      | k7_relat_1(sK3,X0) = k1_xboole_0 ),
% 2.21/1.04      inference(prop_impl,[status(thm)],[c_337]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1416,plain,
% 2.21/1.04      ( k7_relat_1(sK3,X0) = k1_xboole_0
% 2.21/1.04      | r1_xboole_0(k1_relat_1(sK3),X0) != iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_741]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3451,plain,
% 2.21/1.04      ( k7_relat_1(sK3,k1_enumset1(sK2,sK2,sK2)) = k1_xboole_0 ),
% 2.21/1.04      inference(superposition,[status(thm)],[c_3226,c_1416]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_19,plain,
% 2.21/1.04      ( ~ r2_hidden(X0,X1)
% 2.21/1.04      | ~ r2_hidden(X0,k1_relat_1(X2))
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
% 2.21/1.04      | ~ v1_relat_1(X2) ),
% 2.21/1.04      inference(cnf_transformation,[],[f64]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_414,plain,
% 2.21/1.04      ( ~ r2_hidden(X0,X1)
% 2.21/1.04      | ~ r2_hidden(X0,k1_relat_1(X2))
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
% 2.21/1.04      | sK3 != X2 ),
% 2.21/1.04      inference(resolution_lifted,[status(thm)],[c_19,c_26]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_415,plain,
% 2.21/1.04      ( ~ r2_hidden(X0,X1)
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(k7_relat_1(sK3,X1)))
% 2.21/1.04      | ~ r2_hidden(X0,k1_relat_1(sK3)) ),
% 2.21/1.04      inference(unflattening,[status(thm)],[c_414]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1411,plain,
% 2.21/1.04      ( r2_hidden(X0,X1) != iProver_top
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(k7_relat_1(sK3,X1))) = iProver_top
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_415]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3458,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(k1_xboole_0)) = iProver_top ),
% 2.21/1.04      inference(superposition,[status(thm)],[c_3451,c_1411]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_18,plain,
% 2.21/1.04      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 2.21/1.04      inference(cnf_transformation,[],[f60]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3468,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
% 2.21/1.04      | r2_hidden(X0,k1_xboole_0) = iProver_top ),
% 2.21/1.04      inference(light_normalisation,[status(thm)],[c_3458,c_18]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_2,plain,
% 2.21/1.04      ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
% 2.21/1.04      inference(cnf_transformation,[],[f43]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_0,plain,
% 2.21/1.04      ( ~ r2_hidden(X0,k3_xboole_0(X1,X2)) | ~ r1_xboole_0(X1,X2) ),
% 2.21/1.04      inference(cnf_transformation,[],[f42]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1431,plain,
% 2.21/1.04      ( r2_hidden(X0,k3_xboole_0(X1,X2)) != iProver_top
% 2.21/1.04      | r1_xboole_0(X1,X2) != iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_2830,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_xboole_0) != iProver_top
% 2.21/1.04      | r1_xboole_0(X1,k1_xboole_0) != iProver_top ),
% 2.21/1.04      inference(superposition,[status(thm)],[c_2,c_1431]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3,plain,
% 2.21/1.04      ( r1_xboole_0(X0,k1_xboole_0) ),
% 2.21/1.04      inference(cnf_transformation,[],[f44]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1429,plain,
% 2.21/1.04      ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_2841,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 2.21/1.04      inference(forward_subsumption_resolution,
% 2.21/1.04                [status(thm)],
% 2.21/1.04                [c_2830,c_1429]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3916,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
% 2.21/1.04      | r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top ),
% 2.21/1.04      inference(global_propositional_subsumption,
% 2.21/1.04                [status(thm)],
% 2.21/1.04                [c_3468,c_2841]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3917,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top
% 2.21/1.04      | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
% 2.21/1.04      inference(renaming,[status(thm)],[c_3916]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_3924,plain,
% 2.21/1.04      ( r2_hidden(sK2,k1_relat_1(sK3)) != iProver_top ),
% 2.21/1.04      inference(superposition,[status(thm)],[c_1424,c_3917]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_878,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1615,plain,
% 2.21/1.04      ( k11_relat_1(sK3,sK2) != X0
% 2.21/1.04      | k1_xboole_0 != X0
% 2.21/1.04      | k1_xboole_0 = k11_relat_1(sK3,sK2) ),
% 2.21/1.04      inference(instantiation,[status(thm)],[c_878]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_1616,plain,
% 2.21/1.04      ( k11_relat_1(sK3,sK2) != k1_xboole_0
% 2.21/1.04      | k1_xboole_0 = k11_relat_1(sK3,sK2)
% 2.21/1.04      | k1_xboole_0 != k1_xboole_0 ),
% 2.21/1.04      inference(instantiation,[status(thm)],[c_1615]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_10,plain,
% 2.21/1.04      ( r2_hidden(X0,k1_enumset1(X0,X1,X2)) ),
% 2.21/1.04      inference(cnf_transformation,[],[f78]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_64,plain,
% 2.21/1.04      ( r2_hidden(k1_xboole_0,k1_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0)) ),
% 2.21/1.04      inference(instantiation,[status(thm)],[c_10]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_11,plain,
% 2.21/1.04      ( ~ r2_hidden(X0,k1_enumset1(X1,X2,X3))
% 2.21/1.04      | X0 = X1
% 2.21/1.04      | X0 = X2
% 2.21/1.04      | X0 = X3 ),
% 2.21/1.04      inference(cnf_transformation,[],[f79]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_61,plain,
% 2.21/1.04      ( ~ r2_hidden(k1_xboole_0,k1_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0))
% 2.21/1.04      | k1_xboole_0 = k1_xboole_0 ),
% 2.21/1.04      inference(instantiation,[status(thm)],[c_11]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_25,negated_conjecture,
% 2.21/1.04      ( r2_hidden(sK2,k1_relat_1(sK3))
% 2.21/1.04      | k1_xboole_0 != k11_relat_1(sK3,sK2) ),
% 2.21/1.04      inference(cnf_transformation,[],[f68]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(c_28,plain,
% 2.21/1.04      ( k1_xboole_0 != k11_relat_1(sK3,sK2)
% 2.21/1.04      | r2_hidden(sK2,k1_relat_1(sK3)) = iProver_top ),
% 2.21/1.04      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.21/1.04  
% 2.21/1.04  cnf(contradiction,plain,
% 2.21/1.04      ( $false ),
% 2.21/1.04      inference(minisat,
% 2.21/1.04                [status(thm)],
% 2.21/1.04                [c_3924,c_3108,c_1616,c_64,c_61,c_28]) ).
% 2.21/1.04  
% 2.21/1.04  
% 2.21/1.04  % SZS output end CNFRefutation for theBenchmark.p
% 2.21/1.04  
% 2.21/1.04  ------                               Statistics
% 2.21/1.04  
% 2.21/1.04  ------ General
% 2.21/1.04  
% 2.21/1.04  abstr_ref_over_cycles:                  0
% 2.21/1.04  abstr_ref_under_cycles:                 0
% 2.21/1.04  gc_basic_clause_elim:                   0
% 2.21/1.04  forced_gc_time:                         0
% 2.21/1.04  parsing_time:                           0.018
% 2.21/1.04  unif_index_cands_time:                  0.
% 2.21/1.04  unif_index_add_time:                    0.
% 2.21/1.04  orderings_time:                         0.
% 2.21/1.04  out_proof_time:                         0.009
% 2.21/1.04  total_time:                             0.242
% 2.21/1.04  num_of_symbols:                         46
% 2.21/1.04  num_of_terms:                           4396
% 2.21/1.04  
% 2.21/1.04  ------ Preprocessing
% 2.21/1.04  
% 2.21/1.04  num_of_splits:                          0
% 2.21/1.04  num_of_split_atoms:                     0
% 2.21/1.04  num_of_reused_defs:                     0
% 2.21/1.04  num_eq_ax_congr_red:                    35
% 2.21/1.04  num_of_sem_filtered_clauses:            1
% 2.21/1.04  num_of_subtypes:                        0
% 2.21/1.04  monotx_restored_types:                  0
% 2.21/1.04  sat_num_of_epr_types:                   0
% 2.21/1.04  sat_num_of_non_cyclic_types:            0
% 2.21/1.04  sat_guarded_non_collapsed_types:        0
% 2.21/1.04  num_pure_diseq_elim:                    0
% 2.21/1.04  simp_replaced_by:                       0
% 2.21/1.04  res_preprocessed:                       126
% 2.21/1.04  prep_upred:                             0
% 2.21/1.04  prep_unflattend:                        38
% 2.21/1.04  smt_new_axioms:                         0
% 2.21/1.04  pred_elim_cands:                        2
% 2.21/1.04  pred_elim:                              1
% 2.21/1.04  pred_elim_cl:                           1
% 2.21/1.04  pred_elim_cycles:                       3
% 2.21/1.04  merged_defs:                            20
% 2.21/1.04  merged_defs_ncl:                        0
% 2.21/1.04  bin_hyper_res:                          21
% 2.21/1.04  prep_cycles:                            4
% 2.21/1.04  pred_elim_time:                         0.011
% 2.21/1.04  splitting_time:                         0.
% 2.21/1.04  sem_filter_time:                        0.
% 2.21/1.04  monotx_time:                            0.
% 2.21/1.04  subtype_inf_time:                       0.
% 2.21/1.04  
% 2.21/1.04  ------ Problem properties
% 2.21/1.04  
% 2.21/1.04  clauses:                                26
% 2.21/1.04  conjectures:                            2
% 2.21/1.04  epr:                                    1
% 2.21/1.04  horn:                                   22
% 2.21/1.04  ground:                                 4
% 2.21/1.04  unary:                                  8
% 2.21/1.04  binary:                                 12
% 2.21/1.04  lits:                                   53
% 2.21/1.04  lits_eq:                                23
% 2.21/1.04  fd_pure:                                0
% 2.21/1.04  fd_pseudo:                              0
% 2.21/1.04  fd_cond:                                0
% 2.21/1.04  fd_pseudo_cond:                         4
% 2.21/1.04  ac_symbols:                             0
% 2.21/1.04  
% 2.21/1.04  ------ Propositional Solver
% 2.21/1.04  
% 2.21/1.04  prop_solver_calls:                      28
% 2.21/1.04  prop_fast_solver_calls:                 665
% 2.21/1.04  smt_solver_calls:                       0
% 2.21/1.04  smt_fast_solver_calls:                  0
% 2.21/1.04  prop_num_of_clauses:                    1257
% 2.21/1.04  prop_preprocess_simplified:             5600
% 2.21/1.04  prop_fo_subsumed:                       1
% 2.21/1.04  prop_solver_time:                       0.
% 2.21/1.04  smt_solver_time:                        0.
% 2.21/1.04  smt_fast_solver_time:                   0.
% 2.21/1.04  prop_fast_solver_time:                  0.
% 2.21/1.04  prop_unsat_core_time:                   0.
% 2.21/1.04  
% 2.21/1.04  ------ QBF
% 2.21/1.04  
% 2.21/1.04  qbf_q_res:                              0
% 2.21/1.04  qbf_num_tautologies:                    0
% 2.21/1.04  qbf_prep_cycles:                        0
% 2.21/1.04  
% 2.21/1.04  ------ BMC1
% 2.21/1.04  
% 2.21/1.04  bmc1_current_bound:                     -1
% 2.21/1.04  bmc1_last_solved_bound:                 -1
% 2.21/1.04  bmc1_unsat_core_size:                   -1
% 2.21/1.04  bmc1_unsat_core_parents_size:           -1
% 2.21/1.04  bmc1_merge_next_fun:                    0
% 2.21/1.04  bmc1_unsat_core_clauses_time:           0.
% 2.21/1.04  
% 2.21/1.04  ------ Instantiation
% 2.21/1.04  
% 2.21/1.04  inst_num_of_clauses:                    388
% 2.21/1.04  inst_num_in_passive:                    152
% 2.21/1.04  inst_num_in_active:                     154
% 2.21/1.04  inst_num_in_unprocessed:                82
% 2.21/1.04  inst_num_of_loops:                      180
% 2.21/1.04  inst_num_of_learning_restarts:          0
% 2.21/1.04  inst_num_moves_active_passive:          23
% 2.21/1.04  inst_lit_activity:                      0
% 2.21/1.04  inst_lit_activity_moves:                0
% 2.21/1.04  inst_num_tautologies:                   0
% 2.21/1.04  inst_num_prop_implied:                  0
% 2.21/1.04  inst_num_existing_simplified:           0
% 2.21/1.04  inst_num_eq_res_simplified:             0
% 2.21/1.04  inst_num_child_elim:                    0
% 2.21/1.04  inst_num_of_dismatching_blockings:      56
% 2.21/1.04  inst_num_of_non_proper_insts:           490
% 2.21/1.04  inst_num_of_duplicates:                 0
% 2.21/1.04  inst_inst_num_from_inst_to_res:         0
% 2.21/1.04  inst_dismatching_checking_time:         0.
% 2.21/1.04  
% 2.21/1.04  ------ Resolution
% 2.21/1.04  
% 2.21/1.04  res_num_of_clauses:                     0
% 2.21/1.04  res_num_in_passive:                     0
% 2.21/1.04  res_num_in_active:                      0
% 2.21/1.04  res_num_of_loops:                       130
% 2.21/1.04  res_forward_subset_subsumed:            57
% 2.21/1.04  res_backward_subset_subsumed:           0
% 2.21/1.04  res_forward_subsumed:                   1
% 2.21/1.04  res_backward_subsumed:                  0
% 2.21/1.04  res_forward_subsumption_resolution:     0
% 2.21/1.04  res_backward_subsumption_resolution:    0
% 2.21/1.04  res_clause_to_clause_subsumption:       102
% 2.21/1.04  res_orphan_elimination:                 0
% 2.21/1.04  res_tautology_del:                      77
% 2.21/1.04  res_num_eq_res_simplified:              0
% 2.21/1.04  res_num_sel_changes:                    0
% 2.21/1.04  res_moves_from_active_to_pass:          0
% 2.21/1.04  
% 2.21/1.04  ------ Superposition
% 2.21/1.04  
% 2.21/1.04  sup_time_total:                         0.
% 2.21/1.04  sup_time_generating:                    0.
% 2.21/1.04  sup_time_sim_full:                      0.
% 2.21/1.04  sup_time_sim_immed:                     0.
% 2.21/1.04  
% 2.21/1.04  sup_num_of_clauses:                     40
% 2.21/1.04  sup_num_in_active:                      33
% 2.21/1.04  sup_num_in_passive:                     7
% 2.21/1.04  sup_num_of_loops:                       34
% 2.21/1.04  sup_fw_superposition:                   14
% 2.21/1.04  sup_bw_superposition:                   20
% 2.21/1.04  sup_immediate_simplified:               9
% 2.21/1.04  sup_given_eliminated:                   0
% 2.21/1.04  comparisons_done:                       0
% 2.21/1.04  comparisons_avoided:                    0
% 2.21/1.04  
% 2.21/1.04  ------ Simplifications
% 2.21/1.04  
% 2.21/1.04  
% 2.21/1.04  sim_fw_subset_subsumed:                 1
% 2.21/1.04  sim_bw_subset_subsumed:                 1
% 2.21/1.04  sim_fw_subsumed:                        3
% 2.21/1.04  sim_bw_subsumed:                        0
% 2.21/1.04  sim_fw_subsumption_res:                 2
% 2.21/1.04  sim_bw_subsumption_res:                 0
% 2.21/1.04  sim_tautology_del:                      5
% 2.21/1.04  sim_eq_tautology_del:                   1
% 2.21/1.04  sim_eq_res_simp:                        1
% 2.21/1.04  sim_fw_demodulated:                     1
% 2.21/1.04  sim_bw_demodulated:                     2
% 2.21/1.04  sim_light_normalised:                   5
% 2.21/1.04  sim_joinable_taut:                      0
% 2.21/1.04  sim_joinable_simp:                      0
% 2.21/1.04  sim_ac_normalised:                      0
% 2.21/1.04  sim_smt_subsumption:                    0
% 2.21/1.04  
%------------------------------------------------------------------------------
