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
% DateTime   : Thu Dec  3 11:33:31 EST 2020

% Result     : Theorem 4.05s
% Output     : CNFRefutation 4.05s
% Verified   : 
% Statistics : Number of formulae       :  115 ( 402 expanded)
%              Number of clauses        :   41 (  58 expanded)
%              Number of leaves         :   24 ( 124 expanded)
%              Depth                    :   18
%              Number of atoms          :  163 ( 457 expanded)
%              Number of equality atoms :   91 ( 373 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    6 (   1 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f23,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f23])).

fof(f17,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f17])).

fof(f18,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f18])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f19])).

fof(f20,axiom,(
    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X4,X2,X0,X3,X1] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f20])).

fof(f66,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k4_enumset1(X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f56,f57])).

fof(f67,plain,(
    ! [X2,X0,X1] : k4_enumset1(X0,X0,X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(definition_unfolding,[],[f55,f66])).

fof(f68,plain,(
    ! [X0,X1] : k4_enumset1(X0,X0,X0,X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(definition_unfolding,[],[f54,f67])).

fof(f69,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f60,f68])).

fof(f80,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f47,f69])).

fof(f21,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f21])).

fof(f22,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f22])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k2_tarski(X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k2_tarski(X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(cnf_transformation,[],[f15])).

fof(f72,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = k3_tarski(k4_enumset1(k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X6,X6,X6,X6,X6,X7))) ),
    inference(definition_unfolding,[],[f52,f69,f68])).

fof(f73,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X5,X5,X5,X5,X5,X6))) ),
    inference(definition_unfolding,[],[f59,f72])).

fof(f82,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X4,X4,X4,X4,X4,X5))) ),
    inference(definition_unfolding,[],[f58,f73])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k1_tarski(X5)) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k1_tarski(X5)) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f14])).

fof(f16,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f16])).

fof(f71,plain,(
    ! [X0] : k4_enumset1(X0,X0,X0,X0,X0,X0) = k1_tarski(X0) ),
    inference(definition_unfolding,[],[f53,f68])).

fof(f74,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X5,X5,X5,X5,X5,X5))) ),
    inference(definition_unfolding,[],[f51,f69,f57,f71])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X3,X2,X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X3,X2,X1,X0) ),
    inference(cnf_transformation,[],[f13])).

fof(f81,plain,(
    ! [X2,X0,X3,X1] : k4_enumset1(X0,X0,X0,X1,X2,X3) = k4_enumset1(X3,X3,X3,X2,X1,X0) ),
    inference(definition_unfolding,[],[f50,f66,f66])).

fof(f25,conjecture,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2)
     => r2_hidden(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2)
       => r2_hidden(X0,X2) ) ),
    inference(negated_conjecture,[],[f25])).

fof(f33,plain,(
    ? [X0,X1,X2] :
      ( ~ r2_hidden(X0,X2)
      & r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2) ) ),
    inference(ennf_transformation,[],[f26])).

fof(f36,plain,
    ( ? [X0,X1,X2] :
        ( ~ r2_hidden(X0,X2)
        & r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2) )
   => ( ~ r2_hidden(sK0,sK2)
      & r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,
    ( ~ r2_hidden(sK0,sK2)
    & r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f33,f36])).

fof(f64,plain,(
    r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2) ),
    inference(cnf_transformation,[],[f37])).

fof(f86,plain,(
    r1_tarski(k3_tarski(k4_enumset1(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) ),
    inference(definition_unfolding,[],[f64,f69,f68])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r2_xboole_0(X0,X1)
    <=> ( X0 != X1
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( X0 != X1
        & r1_tarski(X0,X1) )
     => r2_xboole_0(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f2])).

fof(f30,plain,(
    ! [X0,X1] :
      ( r2_xboole_0(X0,X1)
      | X0 = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f29])).

fof(f31,plain,(
    ! [X0,X1] :
      ( r2_xboole_0(X0,X1)
      | X0 = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f30])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r2_xboole_0(X0,X1)
      | X0 = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f9,axiom,(
    ! [X0,X1] :
      ~ ( r2_xboole_0(X1,X0)
        & r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ~ r2_xboole_0(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ~ r2_xboole_0(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f5,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f12,axiom,(
    ! [X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f12])).

fof(f70,plain,(
    ! [X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) = k3_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f49,f69])).

fof(f77,plain,(
    ! [X0,X1] : r1_tarski(k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))),X0) ),
    inference(definition_unfolding,[],[f42,f70])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X2,X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f1,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f7,axiom,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f7])).

fof(f79,plain,(
    ! [X0] : k5_xboole_0(k5_xboole_0(X0,k1_xboole_0),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0))) = k1_xboole_0 ),
    inference(definition_unfolding,[],[f44,f70])).

fof(f6,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f78,plain,(
    ! [X0] : k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0)) = X0 ),
    inference(definition_unfolding,[],[f43,f69])).

fof(f8,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f8])).

fof(f24,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_tarski(X0,X1),X2)
    <=> ( r2_hidden(X1,X2)
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(k2_tarski(X0,X1),X2)
        | ~ r2_hidden(X1,X2)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X2)
          & r2_hidden(X0,X2) )
        | ~ r1_tarski(k2_tarski(X0,X1),X2) ) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(k2_tarski(X0,X1),X2)
        | ~ r2_hidden(X1,X2)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X2)
          & r2_hidden(X0,X2) )
        | ~ r1_tarski(k2_tarski(X0,X1),X2) ) ) ),
    inference(flattening,[],[f34])).

fof(f61,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,X2)
      | ~ r1_tarski(k2_tarski(X0,X1),X2) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f85,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,X2)
      | ~ r1_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1),X2) ) ),
    inference(definition_unfolding,[],[f61,f68])).

fof(f65,plain,(
    ~ r2_hidden(sK0,sK2) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_10,plain,
    ( r1_tarski(X0,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_360,plain,
    ( r1_tarski(X0,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_13,plain,
    ( k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X4,X4,X4,X4,X4,X5))) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_0,plain,
    ( k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X5,X5,X5,X5,X5,X5))) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_809,plain,
    ( k4_enumset1(X0,X1,X2,X3,X4,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(superposition,[status(thm)],[c_13,c_0])).

cnf(c_12,plain,
    ( k4_enumset1(X0,X0,X0,X1,X2,X3) = k4_enumset1(X3,X3,X3,X2,X1,X0) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_18,negated_conjecture,
    ( r1_tarski(k3_tarski(k4_enumset1(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_355,plain,
    ( r1_tarski(k3_tarski(k4_enumset1(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_776,plain,
    ( r1_tarski(k3_tarski(k4_enumset1(sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_12,c_355])).

cnf(c_14441,plain,
    ( r1_tarski(k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_809,c_776])).

cnf(c_14640,plain,
    ( r1_tarski(k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_809,c_14441])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | r2_xboole_0(X0,X1)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_9,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_123,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X2,X3)
    | X3 != X0
    | X2 != X1
    | X1 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_9])).

cnf(c_124,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(unflattening,[status(thm)],[c_123])).

cnf(c_354,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_124])).

cnf(c_14821,plain,
    ( k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
    | r1_tarski(sK2,k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_14640,c_354])).

cnf(c_15038,plain,
    ( k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))) = sK2 ),
    inference(superposition,[status(thm)],[c_360,c_14821])).

cnf(c_5,plain,
    ( r1_tarski(k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))),X0) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_11,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1,plain,
    ( k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_201,plain,
    ( r1_tarski(k5_xboole_0(X0,k5_xboole_0(X1,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)))),X0) ),
    inference(theory_normalisation,[status(thm)],[c_5,c_11,c_1])).

cnf(c_361,plain,
    ( r1_tarski(k5_xboole_0(X0,k5_xboole_0(X1,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)))),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_201])).

cnf(c_15209,plain,
    ( r1_tarski(k5_xboole_0(sK2,k5_xboole_0(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_15038,c_361])).

cnf(c_7,plain,
    ( k5_xboole_0(k5_xboole_0(X0,k1_xboole_0),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0))) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_200,plain,
    ( k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0)))) = k1_xboole_0 ),
    inference(theory_normalisation,[status(thm)],[c_7,c_11,c_1])).

cnf(c_6,plain,
    ( k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0)) = X0 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_362,plain,
    ( k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,X0)) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_200,c_6])).

cnf(c_8,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_506,plain,
    ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_8,c_1])).

cnf(c_563,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_362,c_362,c_506])).

cnf(c_705,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
    inference(superposition,[status(thm)],[c_563,c_11])).

cnf(c_712,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1 ),
    inference(demodulation,[status(thm)],[c_705,c_506])).

cnf(c_910,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = X1 ),
    inference(superposition,[status(thm)],[c_1,c_712])).

cnf(c_15211,plain,
    ( r1_tarski(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_15209,c_910])).

cnf(c_16,plain,
    ( r2_hidden(X0,X1)
    | ~ r1_tarski(k4_enumset1(X0,X0,X0,X0,X0,X2),X1) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_357,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r1_tarski(k4_enumset1(X0,X0,X0,X0,X0,X2),X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_15216,plain,
    ( r2_hidden(sK0,sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_15211,c_357])).

cnf(c_17,negated_conjecture,
    ( ~ r2_hidden(sK0,sK2) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_20,plain,
    ( r2_hidden(sK0,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_15216,c_20])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:38:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 4.05/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 4.05/0.98  
% 4.05/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 4.05/0.98  
% 4.05/0.98  ------  iProver source info
% 4.05/0.98  
% 4.05/0.98  git: date: 2020-06-30 10:37:57 +0100
% 4.05/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 4.05/0.98  git: non_committed_changes: false
% 4.05/0.98  git: last_make_outside_of_git: false
% 4.05/0.98  
% 4.05/0.98  ------ 
% 4.05/0.98  
% 4.05/0.98  ------ Input Options
% 4.05/0.98  
% 4.05/0.98  --out_options                           all
% 4.05/0.98  --tptp_safe_out                         true
% 4.05/0.98  --problem_path                          ""
% 4.05/0.98  --include_path                          ""
% 4.05/0.98  --clausifier                            res/vclausify_rel
% 4.05/0.98  --clausifier_options                    ""
% 4.05/0.98  --stdin                                 false
% 4.05/0.98  --stats_out                             all
% 4.05/0.98  
% 4.05/0.98  ------ General Options
% 4.05/0.98  
% 4.05/0.98  --fof                                   false
% 4.05/0.98  --time_out_real                         305.
% 4.05/0.98  --time_out_virtual                      -1.
% 4.05/0.98  --symbol_type_check                     false
% 4.05/0.98  --clausify_out                          false
% 4.05/0.98  --sig_cnt_out                           false
% 4.05/0.98  --trig_cnt_out                          false
% 4.05/0.98  --trig_cnt_out_tolerance                1.
% 4.05/0.98  --trig_cnt_out_sk_spl                   false
% 4.05/0.98  --abstr_cl_out                          false
% 4.05/0.98  
% 4.05/0.98  ------ Global Options
% 4.05/0.98  
% 4.05/0.98  --schedule                              default
% 4.05/0.98  --add_important_lit                     false
% 4.05/0.98  --prop_solver_per_cl                    1000
% 4.05/0.98  --min_unsat_core                        false
% 4.05/0.98  --soft_assumptions                      false
% 4.05/0.98  --soft_lemma_size                       3
% 4.05/0.98  --prop_impl_unit_size                   0
% 4.05/0.98  --prop_impl_unit                        []
% 4.05/0.98  --share_sel_clauses                     true
% 4.05/0.98  --reset_solvers                         false
% 4.05/0.98  --bc_imp_inh                            [conj_cone]
% 4.05/0.98  --conj_cone_tolerance                   3.
% 4.05/0.98  --extra_neg_conj                        none
% 4.05/0.98  --large_theory_mode                     true
% 4.05/0.98  --prolific_symb_bound                   200
% 4.05/0.98  --lt_threshold                          2000
% 4.05/0.98  --clause_weak_htbl                      true
% 4.05/0.98  --gc_record_bc_elim                     false
% 4.05/0.98  
% 4.05/0.98  ------ Preprocessing Options
% 4.05/0.98  
% 4.05/0.98  --preprocessing_flag                    true
% 4.05/0.98  --time_out_prep_mult                    0.1
% 4.05/0.98  --splitting_mode                        input
% 4.05/0.98  --splitting_grd                         true
% 4.05/0.98  --splitting_cvd                         false
% 4.05/0.98  --splitting_cvd_svl                     false
% 4.05/0.98  --splitting_nvd                         32
% 4.05/0.98  --sub_typing                            true
% 4.05/0.98  --prep_gs_sim                           true
% 4.05/0.98  --prep_unflatten                        true
% 4.05/0.98  --prep_res_sim                          true
% 4.05/0.98  --prep_upred                            true
% 4.05/0.98  --prep_sem_filter                       exhaustive
% 4.05/0.98  --prep_sem_filter_out                   false
% 4.05/0.98  --pred_elim                             true
% 4.05/0.98  --res_sim_input                         true
% 4.05/0.98  --eq_ax_congr_red                       true
% 4.05/0.98  --pure_diseq_elim                       true
% 4.05/0.98  --brand_transform                       false
% 4.05/0.98  --non_eq_to_eq                          false
% 4.05/0.98  --prep_def_merge                        true
% 4.05/0.98  --prep_def_merge_prop_impl              false
% 4.05/0.98  --prep_def_merge_mbd                    true
% 4.05/0.98  --prep_def_merge_tr_red                 false
% 4.05/0.98  --prep_def_merge_tr_cl                  false
% 4.05/0.98  --smt_preprocessing                     true
% 4.05/0.98  --smt_ac_axioms                         fast
% 4.05/0.98  --preprocessed_out                      false
% 4.05/0.98  --preprocessed_stats                    false
% 4.05/0.98  
% 4.05/0.98  ------ Abstraction refinement Options
% 4.05/0.98  
% 4.05/0.98  --abstr_ref                             []
% 4.05/0.98  --abstr_ref_prep                        false
% 4.05/0.98  --abstr_ref_until_sat                   false
% 4.05/0.98  --abstr_ref_sig_restrict                funpre
% 4.05/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 4.05/0.98  --abstr_ref_under                       []
% 4.05/0.98  
% 4.05/0.98  ------ SAT Options
% 4.05/0.98  
% 4.05/0.98  --sat_mode                              false
% 4.05/0.98  --sat_fm_restart_options                ""
% 4.05/0.98  --sat_gr_def                            false
% 4.05/0.98  --sat_epr_types                         true
% 4.05/0.98  --sat_non_cyclic_types                  false
% 4.05/0.98  --sat_finite_models                     false
% 4.05/0.98  --sat_fm_lemmas                         false
% 4.05/0.98  --sat_fm_prep                           false
% 4.05/0.98  --sat_fm_uc_incr                        true
% 4.05/0.98  --sat_out_model                         small
% 4.05/0.98  --sat_out_clauses                       false
% 4.05/0.98  
% 4.05/0.98  ------ QBF Options
% 4.05/0.98  
% 4.05/0.98  --qbf_mode                              false
% 4.05/0.98  --qbf_elim_univ                         false
% 4.05/0.98  --qbf_dom_inst                          none
% 4.05/0.98  --qbf_dom_pre_inst                      false
% 4.05/0.98  --qbf_sk_in                             false
% 4.05/0.98  --qbf_pred_elim                         true
% 4.05/0.98  --qbf_split                             512
% 4.05/0.98  
% 4.05/0.98  ------ BMC1 Options
% 4.05/0.98  
% 4.05/0.98  --bmc1_incremental                      false
% 4.05/0.98  --bmc1_axioms                           reachable_all
% 4.05/0.98  --bmc1_min_bound                        0
% 4.05/0.98  --bmc1_max_bound                        -1
% 4.05/0.98  --bmc1_max_bound_default                -1
% 4.05/0.98  --bmc1_symbol_reachability              true
% 4.05/0.98  --bmc1_property_lemmas                  false
% 4.05/0.98  --bmc1_k_induction                      false
% 4.05/0.98  --bmc1_non_equiv_states                 false
% 4.05/0.98  --bmc1_deadlock                         false
% 4.05/0.98  --bmc1_ucm                              false
% 4.05/0.98  --bmc1_add_unsat_core                   none
% 4.05/0.98  --bmc1_unsat_core_children              false
% 4.05/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 4.05/0.98  --bmc1_out_stat                         full
% 4.05/0.98  --bmc1_ground_init                      false
% 4.05/0.98  --bmc1_pre_inst_next_state              false
% 4.05/0.98  --bmc1_pre_inst_state                   false
% 4.05/0.98  --bmc1_pre_inst_reach_state             false
% 4.05/0.98  --bmc1_out_unsat_core                   false
% 4.05/0.98  --bmc1_aig_witness_out                  false
% 4.05/0.98  --bmc1_verbose                          false
% 4.05/0.98  --bmc1_dump_clauses_tptp                false
% 4.05/0.98  --bmc1_dump_unsat_core_tptp             false
% 4.05/0.98  --bmc1_dump_file                        -
% 4.05/0.98  --bmc1_ucm_expand_uc_limit              128
% 4.05/0.98  --bmc1_ucm_n_expand_iterations          6
% 4.05/0.98  --bmc1_ucm_extend_mode                  1
% 4.05/0.98  --bmc1_ucm_init_mode                    2
% 4.05/0.98  --bmc1_ucm_cone_mode                    none
% 4.05/0.98  --bmc1_ucm_reduced_relation_type        0
% 4.05/0.98  --bmc1_ucm_relax_model                  4
% 4.05/0.98  --bmc1_ucm_full_tr_after_sat            true
% 4.05/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 4.05/0.98  --bmc1_ucm_layered_model                none
% 4.05/0.98  --bmc1_ucm_max_lemma_size               10
% 4.05/0.98  
% 4.05/0.98  ------ AIG Options
% 4.05/0.98  
% 4.05/0.98  --aig_mode                              false
% 4.05/0.98  
% 4.05/0.98  ------ Instantiation Options
% 4.05/0.98  
% 4.05/0.98  --instantiation_flag                    true
% 4.05/0.98  --inst_sos_flag                         true
% 4.05/0.98  --inst_sos_phase                        true
% 4.05/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 4.05/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 4.05/0.98  --inst_lit_sel_side                     num_symb
% 4.05/0.98  --inst_solver_per_active                1400
% 4.05/0.98  --inst_solver_calls_frac                1.
% 4.05/0.98  --inst_passive_queue_type               priority_queues
% 4.05/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 4.05/0.98  --inst_passive_queues_freq              [25;2]
% 4.05/0.98  --inst_dismatching                      true
% 4.05/0.98  --inst_eager_unprocessed_to_passive     true
% 4.05/0.98  --inst_prop_sim_given                   true
% 4.05/0.98  --inst_prop_sim_new                     false
% 4.05/0.98  --inst_subs_new                         false
% 4.05/0.98  --inst_eq_res_simp                      false
% 4.05/0.98  --inst_subs_given                       false
% 4.05/0.98  --inst_orphan_elimination               true
% 4.05/0.98  --inst_learning_loop_flag               true
% 4.05/0.98  --inst_learning_start                   3000
% 4.05/0.98  --inst_learning_factor                  2
% 4.05/0.98  --inst_start_prop_sim_after_learn       3
% 4.05/0.98  --inst_sel_renew                        solver
% 4.05/0.98  --inst_lit_activity_flag                true
% 4.05/0.98  --inst_restr_to_given                   false
% 4.05/0.98  --inst_activity_threshold               500
% 4.05/0.98  --inst_out_proof                        true
% 4.05/0.98  
% 4.05/0.98  ------ Resolution Options
% 4.05/0.98  
% 4.05/0.98  --resolution_flag                       true
% 4.05/0.98  --res_lit_sel                           adaptive
% 4.05/0.98  --res_lit_sel_side                      none
% 4.05/0.98  --res_ordering                          kbo
% 4.05/0.98  --res_to_prop_solver                    active
% 4.05/0.98  --res_prop_simpl_new                    false
% 4.05/0.98  --res_prop_simpl_given                  true
% 4.05/0.98  --res_passive_queue_type                priority_queues
% 4.05/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 4.05/0.98  --res_passive_queues_freq               [15;5]
% 4.05/0.98  --res_forward_subs                      full
% 4.05/0.98  --res_backward_subs                     full
% 4.05/0.98  --res_forward_subs_resolution           true
% 4.05/0.98  --res_backward_subs_resolution          true
% 4.05/0.98  --res_orphan_elimination                true
% 4.05/0.98  --res_time_limit                        2.
% 4.05/0.98  --res_out_proof                         true
% 4.05/0.98  
% 4.05/0.98  ------ Superposition Options
% 4.05/0.98  
% 4.05/0.98  --superposition_flag                    true
% 4.05/0.98  --sup_passive_queue_type                priority_queues
% 4.05/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 4.05/0.98  --sup_passive_queues_freq               [8;1;4]
% 4.05/0.98  --demod_completeness_check              fast
% 4.05/0.98  --demod_use_ground                      true
% 4.05/0.98  --sup_to_prop_solver                    passive
% 4.05/0.98  --sup_prop_simpl_new                    true
% 4.05/0.98  --sup_prop_simpl_given                  true
% 4.05/0.98  --sup_fun_splitting                     true
% 4.05/0.98  --sup_smt_interval                      50000
% 4.05/0.98  
% 4.05/0.98  ------ Superposition Simplification Setup
% 4.05/0.98  
% 4.05/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 4.05/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 4.05/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 4.05/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 4.05/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 4.05/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 4.05/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 4.05/0.98  --sup_immed_triv                        [TrivRules]
% 4.05/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 4.05/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 4.05/0.98  --sup_immed_bw_main                     []
% 4.05/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 4.05/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 4.05/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 4.05/0.98  --sup_input_bw                          []
% 4.05/0.98  
% 4.05/0.98  ------ Combination Options
% 4.05/0.98  
% 4.05/0.98  --comb_res_mult                         3
% 4.05/0.98  --comb_sup_mult                         2
% 4.05/0.98  --comb_inst_mult                        10
% 4.05/0.98  
% 4.05/0.98  ------ Debug Options
% 4.05/0.98  
% 4.05/0.98  --dbg_backtrace                         false
% 4.05/0.98  --dbg_dump_prop_clauses                 false
% 4.05/0.98  --dbg_dump_prop_clauses_file            -
% 4.05/0.98  --dbg_out_stat                          false
% 4.05/0.98  ------ Parsing...
% 4.05/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 4.05/0.98  
% 4.05/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 4.05/0.98  
% 4.05/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 4.05/0.98  
% 4.05/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 4.05/0.98  ------ Proving...
% 4.05/0.98  ------ Problem Properties 
% 4.05/0.98  
% 4.05/0.98  
% 4.05/0.98  clauses                                 18
% 4.05/0.98  conjectures                             2
% 4.05/0.98  EPR                                     2
% 4.05/0.98  Horn                                    18
% 4.05/0.98  unary                                   14
% 4.05/0.98  binary                                  2
% 4.05/0.98  lits                                    24
% 4.05/0.98  lits eq                                 11
% 4.05/0.98  fd_pure                                 0
% 4.05/0.98  fd_pseudo                               0
% 4.05/0.98  fd_cond                                 0
% 4.05/0.98  fd_pseudo_cond                          1
% 4.05/0.98  AC symbols                              1
% 4.05/0.98  
% 4.05/0.98  ------ Schedule dynamic 5 is on 
% 4.05/0.98  
% 4.05/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 4.05/0.98  
% 4.05/0.98  
% 4.05/0.98  ------ 
% 4.05/0.98  Current options:
% 4.05/0.98  ------ 
% 4.05/0.98  
% 4.05/0.98  ------ Input Options
% 4.05/0.98  
% 4.05/0.98  --out_options                           all
% 4.05/0.98  --tptp_safe_out                         true
% 4.05/0.98  --problem_path                          ""
% 4.05/0.98  --include_path                          ""
% 4.05/0.98  --clausifier                            res/vclausify_rel
% 4.05/0.98  --clausifier_options                    ""
% 4.05/0.98  --stdin                                 false
% 4.05/0.98  --stats_out                             all
% 4.05/0.98  
% 4.05/0.98  ------ General Options
% 4.05/0.98  
% 4.05/0.98  --fof                                   false
% 4.05/0.98  --time_out_real                         305.
% 4.05/0.98  --time_out_virtual                      -1.
% 4.05/0.98  --symbol_type_check                     false
% 4.05/0.98  --clausify_out                          false
% 4.05/0.98  --sig_cnt_out                           false
% 4.05/0.98  --trig_cnt_out                          false
% 4.05/0.98  --trig_cnt_out_tolerance                1.
% 4.05/0.98  --trig_cnt_out_sk_spl                   false
% 4.05/0.98  --abstr_cl_out                          false
% 4.05/0.98  
% 4.05/0.98  ------ Global Options
% 4.05/0.98  
% 4.05/0.98  --schedule                              default
% 4.05/0.98  --add_important_lit                     false
% 4.05/0.98  --prop_solver_per_cl                    1000
% 4.05/0.98  --min_unsat_core                        false
% 4.05/0.98  --soft_assumptions                      false
% 4.05/0.98  --soft_lemma_size                       3
% 4.05/0.98  --prop_impl_unit_size                   0
% 4.05/0.98  --prop_impl_unit                        []
% 4.05/0.98  --share_sel_clauses                     true
% 4.05/0.98  --reset_solvers                         false
% 4.05/0.98  --bc_imp_inh                            [conj_cone]
% 4.05/0.98  --conj_cone_tolerance                   3.
% 4.05/0.98  --extra_neg_conj                        none
% 4.05/0.98  --large_theory_mode                     true
% 4.05/0.98  --prolific_symb_bound                   200
% 4.05/0.98  --lt_threshold                          2000
% 4.05/0.98  --clause_weak_htbl                      true
% 4.05/0.98  --gc_record_bc_elim                     false
% 4.05/0.98  
% 4.05/0.98  ------ Preprocessing Options
% 4.05/0.98  
% 4.05/0.98  --preprocessing_flag                    true
% 4.05/0.98  --time_out_prep_mult                    0.1
% 4.05/0.98  --splitting_mode                        input
% 4.05/0.98  --splitting_grd                         true
% 4.05/0.98  --splitting_cvd                         false
% 4.05/0.98  --splitting_cvd_svl                     false
% 4.05/0.98  --splitting_nvd                         32
% 4.05/0.98  --sub_typing                            true
% 4.05/0.98  --prep_gs_sim                           true
% 4.05/0.98  --prep_unflatten                        true
% 4.05/0.98  --prep_res_sim                          true
% 4.05/0.98  --prep_upred                            true
% 4.05/0.98  --prep_sem_filter                       exhaustive
% 4.05/0.98  --prep_sem_filter_out                   false
% 4.05/0.98  --pred_elim                             true
% 4.05/0.98  --res_sim_input                         true
% 4.05/0.98  --eq_ax_congr_red                       true
% 4.05/0.98  --pure_diseq_elim                       true
% 4.05/0.98  --brand_transform                       false
% 4.05/0.98  --non_eq_to_eq                          false
% 4.05/0.98  --prep_def_merge                        true
% 4.05/0.98  --prep_def_merge_prop_impl              false
% 4.05/0.98  --prep_def_merge_mbd                    true
% 4.05/0.98  --prep_def_merge_tr_red                 false
% 4.05/0.98  --prep_def_merge_tr_cl                  false
% 4.05/0.98  --smt_preprocessing                     true
% 4.05/0.98  --smt_ac_axioms                         fast
% 4.05/0.98  --preprocessed_out                      false
% 4.05/0.98  --preprocessed_stats                    false
% 4.05/0.98  
% 4.05/0.98  ------ Abstraction refinement Options
% 4.05/0.98  
% 4.05/0.98  --abstr_ref                             []
% 4.05/0.98  --abstr_ref_prep                        false
% 4.05/0.98  --abstr_ref_until_sat                   false
% 4.05/0.98  --abstr_ref_sig_restrict                funpre
% 4.05/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 4.05/0.98  --abstr_ref_under                       []
% 4.05/0.98  
% 4.05/0.98  ------ SAT Options
% 4.05/0.98  
% 4.05/0.98  --sat_mode                              false
% 4.05/0.98  --sat_fm_restart_options                ""
% 4.05/0.98  --sat_gr_def                            false
% 4.05/0.98  --sat_epr_types                         true
% 4.05/0.98  --sat_non_cyclic_types                  false
% 4.05/0.98  --sat_finite_models                     false
% 4.05/0.98  --sat_fm_lemmas                         false
% 4.05/0.98  --sat_fm_prep                           false
% 4.05/0.98  --sat_fm_uc_incr                        true
% 4.05/0.98  --sat_out_model                         small
% 4.05/0.98  --sat_out_clauses                       false
% 4.05/0.98  
% 4.05/0.98  ------ QBF Options
% 4.05/0.98  
% 4.05/0.98  --qbf_mode                              false
% 4.05/0.98  --qbf_elim_univ                         false
% 4.05/0.98  --qbf_dom_inst                          none
% 4.05/0.98  --qbf_dom_pre_inst                      false
% 4.05/0.98  --qbf_sk_in                             false
% 4.05/0.98  --qbf_pred_elim                         true
% 4.05/0.98  --qbf_split                             512
% 4.05/0.98  
% 4.05/0.98  ------ BMC1 Options
% 4.05/0.98  
% 4.05/0.98  --bmc1_incremental                      false
% 4.05/0.98  --bmc1_axioms                           reachable_all
% 4.05/0.98  --bmc1_min_bound                        0
% 4.05/0.98  --bmc1_max_bound                        -1
% 4.05/0.98  --bmc1_max_bound_default                -1
% 4.05/0.98  --bmc1_symbol_reachability              true
% 4.05/0.98  --bmc1_property_lemmas                  false
% 4.05/0.98  --bmc1_k_induction                      false
% 4.05/0.98  --bmc1_non_equiv_states                 false
% 4.05/0.98  --bmc1_deadlock                         false
% 4.05/0.98  --bmc1_ucm                              false
% 4.05/0.98  --bmc1_add_unsat_core                   none
% 4.05/0.98  --bmc1_unsat_core_children              false
% 4.05/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 4.05/0.98  --bmc1_out_stat                         full
% 4.05/0.98  --bmc1_ground_init                      false
% 4.05/0.98  --bmc1_pre_inst_next_state              false
% 4.05/0.98  --bmc1_pre_inst_state                   false
% 4.05/0.98  --bmc1_pre_inst_reach_state             false
% 4.05/0.98  --bmc1_out_unsat_core                   false
% 4.05/0.98  --bmc1_aig_witness_out                  false
% 4.05/0.98  --bmc1_verbose                          false
% 4.05/0.98  --bmc1_dump_clauses_tptp                false
% 4.05/0.98  --bmc1_dump_unsat_core_tptp             false
% 4.05/0.98  --bmc1_dump_file                        -
% 4.05/0.98  --bmc1_ucm_expand_uc_limit              128
% 4.05/0.98  --bmc1_ucm_n_expand_iterations          6
% 4.05/0.98  --bmc1_ucm_extend_mode                  1
% 4.05/0.98  --bmc1_ucm_init_mode                    2
% 4.05/0.98  --bmc1_ucm_cone_mode                    none
% 4.05/0.98  --bmc1_ucm_reduced_relation_type        0
% 4.05/0.98  --bmc1_ucm_relax_model                  4
% 4.05/0.98  --bmc1_ucm_full_tr_after_sat            true
% 4.05/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 4.05/0.98  --bmc1_ucm_layered_model                none
% 4.05/0.98  --bmc1_ucm_max_lemma_size               10
% 4.05/0.98  
% 4.05/0.98  ------ AIG Options
% 4.05/0.98  
% 4.05/0.98  --aig_mode                              false
% 4.05/0.98  
% 4.05/0.98  ------ Instantiation Options
% 4.05/0.98  
% 4.05/0.98  --instantiation_flag                    true
% 4.05/0.98  --inst_sos_flag                         true
% 4.05/0.98  --inst_sos_phase                        true
% 4.05/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 4.05/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 4.05/0.98  --inst_lit_sel_side                     none
% 4.05/0.98  --inst_solver_per_active                1400
% 4.05/0.98  --inst_solver_calls_frac                1.
% 4.05/0.98  --inst_passive_queue_type               priority_queues
% 4.05/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 4.05/0.98  --inst_passive_queues_freq              [25;2]
% 4.05/0.98  --inst_dismatching                      true
% 4.05/0.98  --inst_eager_unprocessed_to_passive     true
% 4.05/0.98  --inst_prop_sim_given                   true
% 4.05/0.98  --inst_prop_sim_new                     false
% 4.05/0.98  --inst_subs_new                         false
% 4.05/0.98  --inst_eq_res_simp                      false
% 4.05/0.98  --inst_subs_given                       false
% 4.05/0.98  --inst_orphan_elimination               true
% 4.05/0.98  --inst_learning_loop_flag               true
% 4.05/0.98  --inst_learning_start                   3000
% 4.05/0.98  --inst_learning_factor                  2
% 4.05/0.98  --inst_start_prop_sim_after_learn       3
% 4.05/0.98  --inst_sel_renew                        solver
% 4.05/0.98  --inst_lit_activity_flag                true
% 4.05/0.98  --inst_restr_to_given                   false
% 4.05/0.98  --inst_activity_threshold               500
% 4.05/0.98  --inst_out_proof                        true
% 4.05/0.98  
% 4.05/0.98  ------ Resolution Options
% 4.05/0.98  
% 4.05/0.98  --resolution_flag                       false
% 4.05/0.98  --res_lit_sel                           adaptive
% 4.05/0.98  --res_lit_sel_side                      none
% 4.05/0.98  --res_ordering                          kbo
% 4.05/0.98  --res_to_prop_solver                    active
% 4.05/0.98  --res_prop_simpl_new                    false
% 4.05/0.98  --res_prop_simpl_given                  true
% 4.05/0.98  --res_passive_queue_type                priority_queues
% 4.05/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 4.05/0.98  --res_passive_queues_freq               [15;5]
% 4.05/0.98  --res_forward_subs                      full
% 4.05/0.98  --res_backward_subs                     full
% 4.05/0.98  --res_forward_subs_resolution           true
% 4.05/0.98  --res_backward_subs_resolution          true
% 4.05/0.98  --res_orphan_elimination                true
% 4.05/0.98  --res_time_limit                        2.
% 4.05/0.98  --res_out_proof                         true
% 4.05/0.98  
% 4.05/0.98  ------ Superposition Options
% 4.05/0.98  
% 4.05/0.98  --superposition_flag                    true
% 4.05/0.98  --sup_passive_queue_type                priority_queues
% 4.05/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 4.05/0.98  --sup_passive_queues_freq               [8;1;4]
% 4.05/0.98  --demod_completeness_check              fast
% 4.05/0.98  --demod_use_ground                      true
% 4.05/0.98  --sup_to_prop_solver                    passive
% 4.05/0.98  --sup_prop_simpl_new                    true
% 4.05/0.98  --sup_prop_simpl_given                  true
% 4.05/0.98  --sup_fun_splitting                     true
% 4.05/0.98  --sup_smt_interval                      50000
% 4.05/0.98  
% 4.05/0.98  ------ Superposition Simplification Setup
% 4.05/0.98  
% 4.05/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 4.05/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 4.05/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 4.05/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 4.05/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 4.05/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 4.05/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 4.05/0.98  --sup_immed_triv                        [TrivRules]
% 4.05/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 4.05/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 4.05/0.98  --sup_immed_bw_main                     []
% 4.05/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 4.05/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 4.05/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 4.05/0.98  --sup_input_bw                          []
% 4.05/0.98  
% 4.05/0.98  ------ Combination Options
% 4.05/0.98  
% 4.05/0.98  --comb_res_mult                         3
% 4.05/0.98  --comb_sup_mult                         2
% 4.05/0.98  --comb_inst_mult                        10
% 4.05/0.98  
% 4.05/0.98  ------ Debug Options
% 4.05/0.98  
% 4.05/0.98  --dbg_backtrace                         false
% 4.05/0.98  --dbg_dump_prop_clauses                 false
% 4.05/0.98  --dbg_dump_prop_clauses_file            -
% 4.05/0.98  --dbg_out_stat                          false
% 4.05/0.98  
% 4.05/0.98  
% 4.05/0.98  
% 4.05/0.98  
% 4.05/0.98  ------ Proving...
% 4.05/0.98  
% 4.05/0.98  
% 4.05/0.98  % SZS status Theorem for theBenchmark.p
% 4.05/0.98  
% 4.05/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 4.05/0.98  
% 4.05/0.98  fof(f10,axiom,(
% 4.05/0.98    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f47,plain,(
% 4.05/0.98    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 4.05/0.98    inference(cnf_transformation,[],[f10])).
% 4.05/0.98  
% 4.05/0.98  fof(f23,axiom,(
% 4.05/0.98    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f60,plain,(
% 4.05/0.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 4.05/0.98    inference(cnf_transformation,[],[f23])).
% 4.05/0.98  
% 4.05/0.98  fof(f17,axiom,(
% 4.05/0.98    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f54,plain,(
% 4.05/0.98    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f17])).
% 4.05/0.98  
% 4.05/0.98  fof(f18,axiom,(
% 4.05/0.98    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f55,plain,(
% 4.05/0.98    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f18])).
% 4.05/0.98  
% 4.05/0.98  fof(f19,axiom,(
% 4.05/0.98    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f56,plain,(
% 4.05/0.98    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f19])).
% 4.05/0.98  
% 4.05/0.98  fof(f20,axiom,(
% 4.05/0.98    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f57,plain,(
% 4.05/0.98    ( ! [X4,X2,X0,X3,X1] : (k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f20])).
% 4.05/0.98  
% 4.05/0.98  fof(f66,plain,(
% 4.05/0.98    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k4_enumset1(X0,X0,X0,X1,X2,X3)) )),
% 4.05/0.98    inference(definition_unfolding,[],[f56,f57])).
% 4.05/0.98  
% 4.05/0.98  fof(f67,plain,(
% 4.05/0.98    ( ! [X2,X0,X1] : (k4_enumset1(X0,X0,X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 4.05/0.98    inference(definition_unfolding,[],[f55,f66])).
% 4.05/0.98  
% 4.05/0.98  fof(f68,plain,(
% 4.05/0.98    ( ! [X0,X1] : (k4_enumset1(X0,X0,X0,X0,X0,X1) = k2_tarski(X0,X1)) )),
% 4.05/0.98    inference(definition_unfolding,[],[f54,f67])).
% 4.05/0.98  
% 4.05/0.98  fof(f69,plain,(
% 4.05/0.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) )),
% 4.05/0.98    inference(definition_unfolding,[],[f60,f68])).
% 4.05/0.98  
% 4.05/0.98  fof(f80,plain,(
% 4.05/0.98    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)))) )),
% 4.05/0.98    inference(definition_unfolding,[],[f47,f69])).
% 4.05/0.98  
% 4.05/0.98  fof(f21,axiom,(
% 4.05/0.98    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f58,plain,(
% 4.05/0.98    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f21])).
% 4.05/0.98  
% 4.05/0.98  fof(f22,axiom,(
% 4.05/0.98    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f59,plain,(
% 4.05/0.98    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f22])).
% 4.05/0.98  
% 4.05/0.98  fof(f15,axiom,(
% 4.05/0.98    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k2_tarski(X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f52,plain,(
% 4.05/0.98    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k2_tarski(X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f15])).
% 4.05/0.98  
% 4.05/0.98  fof(f72,plain,(
% 4.05/0.98    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = k3_tarski(k4_enumset1(k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X0,X1,X2,X3,X4,X5),k4_enumset1(X6,X6,X6,X6,X6,X7)))) )),
% 4.05/0.98    inference(definition_unfolding,[],[f52,f69,f68])).
% 4.05/0.98  
% 4.05/0.98  fof(f73,plain,(
% 4.05/0.98    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X5,X5,X5,X5,X5,X6)))) )),
% 4.05/0.98    inference(definition_unfolding,[],[f59,f72])).
% 4.05/0.98  
% 4.05/0.98  fof(f82,plain,(
% 4.05/0.98    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X4,X4,X4,X4,X4,X5)))) )),
% 4.05/0.98    inference(definition_unfolding,[],[f58,f73])).
% 4.05/0.98  
% 4.05/0.98  fof(f14,axiom,(
% 4.05/0.98    ! [X0,X1,X2,X3,X4,X5] : k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k1_tarski(X5)) = k4_enumset1(X0,X1,X2,X3,X4,X5)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f51,plain,(
% 4.05/0.98    ( ! [X4,X2,X0,X5,X3,X1] : (k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k1_tarski(X5)) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f14])).
% 4.05/0.98  
% 4.05/0.98  fof(f16,axiom,(
% 4.05/0.98    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f53,plain,(
% 4.05/0.98    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f16])).
% 4.05/0.98  
% 4.05/0.98  fof(f71,plain,(
% 4.05/0.98    ( ! [X0] : (k4_enumset1(X0,X0,X0,X0,X0,X0) = k1_tarski(X0)) )),
% 4.05/0.98    inference(definition_unfolding,[],[f53,f68])).
% 4.05/0.98  
% 4.05/0.98  fof(f74,plain,(
% 4.05/0.98    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X5,X5,X5,X5,X5,X5)))) )),
% 4.05/0.98    inference(definition_unfolding,[],[f51,f69,f57,f71])).
% 4.05/0.98  
% 4.05/0.98  fof(f13,axiom,(
% 4.05/0.98    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X3,X2,X1,X0)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f50,plain,(
% 4.05/0.98    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X3,X2,X1,X0)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f13])).
% 4.05/0.98  
% 4.05/0.98  fof(f81,plain,(
% 4.05/0.98    ( ! [X2,X0,X3,X1] : (k4_enumset1(X0,X0,X0,X1,X2,X3) = k4_enumset1(X3,X3,X3,X2,X1,X0)) )),
% 4.05/0.98    inference(definition_unfolding,[],[f50,f66,f66])).
% 4.05/0.98  
% 4.05/0.98  fof(f25,conjecture,(
% 4.05/0.98    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2) => r2_hidden(X0,X2))),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f26,negated_conjecture,(
% 4.05/0.98    ~! [X0,X1,X2] : (r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2) => r2_hidden(X0,X2))),
% 4.05/0.98    inference(negated_conjecture,[],[f25])).
% 4.05/0.98  
% 4.05/0.98  fof(f33,plain,(
% 4.05/0.98    ? [X0,X1,X2] : (~r2_hidden(X0,X2) & r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2))),
% 4.05/0.98    inference(ennf_transformation,[],[f26])).
% 4.05/0.98  
% 4.05/0.98  fof(f36,plain,(
% 4.05/0.98    ? [X0,X1,X2] : (~r2_hidden(X0,X2) & r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2)) => (~r2_hidden(sK0,sK2) & r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2))),
% 4.05/0.98    introduced(choice_axiom,[])).
% 4.05/0.98  
% 4.05/0.98  fof(f37,plain,(
% 4.05/0.98    ~r2_hidden(sK0,sK2) & r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2)),
% 4.05/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f33,f36])).
% 4.05/0.98  
% 4.05/0.98  fof(f64,plain,(
% 4.05/0.98    r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2)),
% 4.05/0.98    inference(cnf_transformation,[],[f37])).
% 4.05/0.98  
% 4.05/0.98  fof(f86,plain,(
% 4.05/0.98    r1_tarski(k3_tarski(k4_enumset1(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2)),
% 4.05/0.98    inference(definition_unfolding,[],[f64,f69,f68])).
% 4.05/0.98  
% 4.05/0.98  fof(f2,axiom,(
% 4.05/0.98    ! [X0,X1] : (r2_xboole_0(X0,X1) <=> (X0 != X1 & r1_tarski(X0,X1)))),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f29,plain,(
% 4.05/0.98    ! [X0,X1] : ((X0 != X1 & r1_tarski(X0,X1)) => r2_xboole_0(X0,X1))),
% 4.05/0.98    inference(unused_predicate_definition_removal,[],[f2])).
% 4.05/0.98  
% 4.05/0.98  fof(f30,plain,(
% 4.05/0.98    ! [X0,X1] : (r2_xboole_0(X0,X1) | (X0 = X1 | ~r1_tarski(X0,X1)))),
% 4.05/0.98    inference(ennf_transformation,[],[f29])).
% 4.05/0.98  
% 4.05/0.98  fof(f31,plain,(
% 4.05/0.98    ! [X0,X1] : (r2_xboole_0(X0,X1) | X0 = X1 | ~r1_tarski(X0,X1))),
% 4.05/0.98    inference(flattening,[],[f30])).
% 4.05/0.98  
% 4.05/0.98  fof(f39,plain,(
% 4.05/0.98    ( ! [X0,X1] : (r2_xboole_0(X0,X1) | X0 = X1 | ~r1_tarski(X0,X1)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f31])).
% 4.05/0.98  
% 4.05/0.98  fof(f9,axiom,(
% 4.05/0.98    ! [X0,X1] : ~(r2_xboole_0(X1,X0) & r1_tarski(X0,X1))),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f32,plain,(
% 4.05/0.98    ! [X0,X1] : (~r2_xboole_0(X1,X0) | ~r1_tarski(X0,X1))),
% 4.05/0.98    inference(ennf_transformation,[],[f9])).
% 4.05/0.98  
% 4.05/0.98  fof(f46,plain,(
% 4.05/0.98    ( ! [X0,X1] : (~r2_xboole_0(X1,X0) | ~r1_tarski(X0,X1)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f32])).
% 4.05/0.98  
% 4.05/0.98  fof(f5,axiom,(
% 4.05/0.98    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f42,plain,(
% 4.05/0.98    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f5])).
% 4.05/0.98  
% 4.05/0.98  fof(f12,axiom,(
% 4.05/0.98    ! [X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f49,plain,(
% 4.05/0.98    ( ! [X0,X1] : (k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f12])).
% 4.05/0.98  
% 4.05/0.98  fof(f70,plain,(
% 4.05/0.98    ( ! [X0,X1] : (k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) = k3_xboole_0(X0,X1)) )),
% 4.05/0.98    inference(definition_unfolding,[],[f49,f69])).
% 4.05/0.98  
% 4.05/0.98  fof(f77,plain,(
% 4.05/0.98    ( ! [X0,X1] : (r1_tarski(k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))),X0)) )),
% 4.05/0.98    inference(definition_unfolding,[],[f42,f70])).
% 4.05/0.98  
% 4.05/0.98  fof(f11,axiom,(
% 4.05/0.98    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f48,plain,(
% 4.05/0.98    ( ! [X2,X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f11])).
% 4.05/0.98  
% 4.05/0.98  fof(f1,axiom,(
% 4.05/0.98    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f38,plain,(
% 4.05/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f1])).
% 4.05/0.98  
% 4.05/0.98  fof(f7,axiom,(
% 4.05/0.98    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f44,plain,(
% 4.05/0.98    ( ! [X0] : (k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0) )),
% 4.05/0.98    inference(cnf_transformation,[],[f7])).
% 4.05/0.98  
% 4.05/0.98  fof(f79,plain,(
% 4.05/0.98    ( ! [X0] : (k5_xboole_0(k5_xboole_0(X0,k1_xboole_0),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0))) = k1_xboole_0) )),
% 4.05/0.98    inference(definition_unfolding,[],[f44,f70])).
% 4.05/0.98  
% 4.05/0.98  fof(f6,axiom,(
% 4.05/0.98    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f43,plain,(
% 4.05/0.98    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 4.05/0.98    inference(cnf_transformation,[],[f6])).
% 4.05/0.98  
% 4.05/0.98  fof(f78,plain,(
% 4.05/0.98    ( ! [X0] : (k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0)) = X0) )),
% 4.05/0.98    inference(definition_unfolding,[],[f43,f69])).
% 4.05/0.98  
% 4.05/0.98  fof(f8,axiom,(
% 4.05/0.98    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f45,plain,(
% 4.05/0.98    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 4.05/0.98    inference(cnf_transformation,[],[f8])).
% 4.05/0.98  
% 4.05/0.98  fof(f24,axiom,(
% 4.05/0.98    ! [X0,X1,X2] : (r1_tarski(k2_tarski(X0,X1),X2) <=> (r2_hidden(X1,X2) & r2_hidden(X0,X2)))),
% 4.05/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.05/0.98  
% 4.05/0.98  fof(f34,plain,(
% 4.05/0.98    ! [X0,X1,X2] : ((r1_tarski(k2_tarski(X0,X1),X2) | (~r2_hidden(X1,X2) | ~r2_hidden(X0,X2))) & ((r2_hidden(X1,X2) & r2_hidden(X0,X2)) | ~r1_tarski(k2_tarski(X0,X1),X2)))),
% 4.05/0.98    inference(nnf_transformation,[],[f24])).
% 4.05/0.98  
% 4.05/0.98  fof(f35,plain,(
% 4.05/0.98    ! [X0,X1,X2] : ((r1_tarski(k2_tarski(X0,X1),X2) | ~r2_hidden(X1,X2) | ~r2_hidden(X0,X2)) & ((r2_hidden(X1,X2) & r2_hidden(X0,X2)) | ~r1_tarski(k2_tarski(X0,X1),X2)))),
% 4.05/0.98    inference(flattening,[],[f34])).
% 4.05/0.98  
% 4.05/0.98  fof(f61,plain,(
% 4.05/0.98    ( ! [X2,X0,X1] : (r2_hidden(X0,X2) | ~r1_tarski(k2_tarski(X0,X1),X2)) )),
% 4.05/0.98    inference(cnf_transformation,[],[f35])).
% 4.05/0.98  
% 4.05/0.98  fof(f85,plain,(
% 4.05/0.98    ( ! [X2,X0,X1] : (r2_hidden(X0,X2) | ~r1_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1),X2)) )),
% 4.05/0.98    inference(definition_unfolding,[],[f61,f68])).
% 4.05/0.98  
% 4.05/0.98  fof(f65,plain,(
% 4.05/0.98    ~r2_hidden(sK0,sK2)),
% 4.05/0.98    inference(cnf_transformation,[],[f37])).
% 4.05/0.98  
% 4.05/0.98  cnf(c_10,plain,
% 4.05/0.98      ( r1_tarski(X0,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) ),
% 4.05/0.98      inference(cnf_transformation,[],[f80]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_360,plain,
% 4.05/0.98      ( r1_tarski(X0,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) = iProver_top ),
% 4.05/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_13,plain,
% 4.05/0.98      ( k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X0,X0,X0,X1,X2,X3),k4_enumset1(X4,X4,X4,X4,X4,X5))) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
% 4.05/0.98      inference(cnf_transformation,[],[f82]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_0,plain,
% 4.05/0.98      ( k3_tarski(k4_enumset1(k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X0,X0,X1,X2,X3,X4),k4_enumset1(X5,X5,X5,X5,X5,X5))) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
% 4.05/0.98      inference(cnf_transformation,[],[f74]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_809,plain,
% 4.05/0.98      ( k4_enumset1(X0,X1,X2,X3,X4,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
% 4.05/0.98      inference(superposition,[status(thm)],[c_13,c_0]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_12,plain,
% 4.05/0.98      ( k4_enumset1(X0,X0,X0,X1,X2,X3) = k4_enumset1(X3,X3,X3,X2,X1,X0) ),
% 4.05/0.98      inference(cnf_transformation,[],[f81]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_18,negated_conjecture,
% 4.05/0.98      ( r1_tarski(k3_tarski(k4_enumset1(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) ),
% 4.05/0.98      inference(cnf_transformation,[],[f86]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_355,plain,
% 4.05/0.98      ( r1_tarski(k3_tarski(k4_enumset1(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) = iProver_top ),
% 4.05/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_776,plain,
% 4.05/0.98      ( r1_tarski(k3_tarski(k4_enumset1(sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
% 4.05/0.98      inference(demodulation,[status(thm)],[c_12,c_355]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_14441,plain,
% 4.05/0.98      ( r1_tarski(k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
% 4.05/0.98      inference(demodulation,[status(thm)],[c_809,c_776]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_14640,plain,
% 4.05/0.98      ( r1_tarski(k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
% 4.05/0.98      inference(superposition,[status(thm)],[c_809,c_14441]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_2,plain,
% 4.05/0.98      ( ~ r1_tarski(X0,X1) | r2_xboole_0(X0,X1) | X1 = X0 ),
% 4.05/0.98      inference(cnf_transformation,[],[f39]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_9,plain,
% 4.05/0.98      ( ~ r1_tarski(X0,X1) | ~ r2_xboole_0(X1,X0) ),
% 4.05/0.98      inference(cnf_transformation,[],[f46]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_123,plain,
% 4.05/0.98      ( ~ r1_tarski(X0,X1)
% 4.05/0.98      | ~ r1_tarski(X2,X3)
% 4.05/0.98      | X3 != X0
% 4.05/0.98      | X2 != X1
% 4.05/0.98      | X1 = X0 ),
% 4.05/0.98      inference(resolution_lifted,[status(thm)],[c_2,c_9]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_124,plain,
% 4.05/0.98      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 4.05/0.98      inference(unflattening,[status(thm)],[c_123]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_354,plain,
% 4.05/0.98      ( X0 = X1
% 4.05/0.98      | r1_tarski(X1,X0) != iProver_top
% 4.05/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 4.05/0.98      inference(predicate_to_equality,[status(thm)],[c_124]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_14821,plain,
% 4.05/0.98      ( k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
% 4.05/0.98      | r1_tarski(sK2,k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
% 4.05/0.98      inference(superposition,[status(thm)],[c_14640,c_354]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_15038,plain,
% 4.05/0.98      ( k3_tarski(k4_enumset1(sK2,sK2,sK2,sK2,sK2,k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1))) = sK2 ),
% 4.05/0.98      inference(superposition,[status(thm)],[c_360,c_14821]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_5,plain,
% 4.05/0.98      ( r1_tarski(k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))),X0) ),
% 4.05/0.98      inference(cnf_transformation,[],[f77]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_11,plain,
% 4.05/0.98      ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
% 4.05/0.98      inference(cnf_transformation,[],[f48]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_1,plain,
% 4.05/0.98      ( k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
% 4.05/0.98      inference(cnf_transformation,[],[f38]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_201,plain,
% 4.05/0.98      ( r1_tarski(k5_xboole_0(X0,k5_xboole_0(X1,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)))),X0) ),
% 4.05/0.98      inference(theory_normalisation,[status(thm)],[c_5,c_11,c_1]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_361,plain,
% 4.05/0.98      ( r1_tarski(k5_xboole_0(X0,k5_xboole_0(X1,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)))),X0) = iProver_top ),
% 4.05/0.98      inference(predicate_to_equality,[status(thm)],[c_201]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_15209,plain,
% 4.05/0.98      ( r1_tarski(k5_xboole_0(sK2,k5_xboole_0(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) = iProver_top ),
% 4.05/0.98      inference(superposition,[status(thm)],[c_15038,c_361]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_7,plain,
% 4.05/0.98      ( k5_xboole_0(k5_xboole_0(X0,k1_xboole_0),k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0))) = k1_xboole_0 ),
% 4.05/0.98      inference(cnf_transformation,[],[f79]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_200,plain,
% 4.05/0.98      ( k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0)))) = k1_xboole_0 ),
% 4.05/0.98      inference(theory_normalisation,[status(thm)],[c_7,c_11,c_1]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_6,plain,
% 4.05/0.98      ( k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k1_xboole_0)) = X0 ),
% 4.05/0.98      inference(cnf_transformation,[],[f78]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_362,plain,
% 4.05/0.98      ( k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,X0)) = k1_xboole_0 ),
% 4.05/0.98      inference(light_normalisation,[status(thm)],[c_200,c_6]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_8,plain,
% 4.05/0.98      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 4.05/0.98      inference(cnf_transformation,[],[f45]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_506,plain,
% 4.05/0.98      ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
% 4.05/0.98      inference(superposition,[status(thm)],[c_8,c_1]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_563,plain,
% 4.05/0.98      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 4.05/0.98      inference(light_normalisation,[status(thm)],[c_362,c_362,c_506]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_705,plain,
% 4.05/0.98      ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
% 4.05/0.98      inference(superposition,[status(thm)],[c_563,c_11]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_712,plain,
% 4.05/0.98      ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1 ),
% 4.05/0.98      inference(demodulation,[status(thm)],[c_705,c_506]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_910,plain,
% 4.05/0.98      ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = X1 ),
% 4.05/0.98      inference(superposition,[status(thm)],[c_1,c_712]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_15211,plain,
% 4.05/0.98      ( r1_tarski(k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1),sK2) = iProver_top ),
% 4.05/0.98      inference(demodulation,[status(thm)],[c_15209,c_910]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_16,plain,
% 4.05/0.98      ( r2_hidden(X0,X1)
% 4.05/0.98      | ~ r1_tarski(k4_enumset1(X0,X0,X0,X0,X0,X2),X1) ),
% 4.05/0.98      inference(cnf_transformation,[],[f85]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_357,plain,
% 4.05/0.98      ( r2_hidden(X0,X1) = iProver_top
% 4.05/0.98      | r1_tarski(k4_enumset1(X0,X0,X0,X0,X0,X2),X1) != iProver_top ),
% 4.05/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_15216,plain,
% 4.05/0.98      ( r2_hidden(sK0,sK2) = iProver_top ),
% 4.05/0.98      inference(superposition,[status(thm)],[c_15211,c_357]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_17,negated_conjecture,
% 4.05/0.98      ( ~ r2_hidden(sK0,sK2) ),
% 4.05/0.98      inference(cnf_transformation,[],[f65]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(c_20,plain,
% 4.05/0.98      ( r2_hidden(sK0,sK2) != iProver_top ),
% 4.05/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 4.05/0.98  
% 4.05/0.98  cnf(contradiction,plain,
% 4.05/0.98      ( $false ),
% 4.05/0.98      inference(minisat,[status(thm)],[c_15216,c_20]) ).
% 4.05/0.98  
% 4.05/0.98  
% 4.05/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 4.05/0.98  
% 4.05/0.98  ------                               Statistics
% 4.05/0.98  
% 4.05/0.98  ------ General
% 4.05/0.98  
% 4.05/0.98  abstr_ref_over_cycles:                  0
% 4.05/0.98  abstr_ref_under_cycles:                 0
% 4.05/0.98  gc_basic_clause_elim:                   0
% 4.05/0.98  forced_gc_time:                         0
% 4.05/0.98  parsing_time:                           0.007
% 4.05/0.98  unif_index_cands_time:                  0.
% 4.05/0.98  unif_index_add_time:                    0.
% 4.05/0.98  orderings_time:                         0.
% 4.05/0.98  out_proof_time:                         0.008
% 4.05/0.98  total_time:                             0.422
% 4.05/0.98  num_of_symbols:                         41
% 4.05/0.98  num_of_terms:                           17680
% 4.05/0.98  
% 4.05/0.98  ------ Preprocessing
% 4.05/0.98  
% 4.05/0.98  num_of_splits:                          0
% 4.05/0.98  num_of_split_atoms:                     0
% 4.05/0.98  num_of_reused_defs:                     0
% 4.05/0.98  num_eq_ax_congr_red:                    2
% 4.05/0.98  num_of_sem_filtered_clauses:            1
% 4.05/0.98  num_of_subtypes:                        0
% 4.05/0.98  monotx_restored_types:                  0
% 4.05/0.98  sat_num_of_epr_types:                   0
% 4.05/0.98  sat_num_of_non_cyclic_types:            0
% 4.05/0.98  sat_guarded_non_collapsed_types:        0
% 4.05/0.98  num_pure_diseq_elim:                    0
% 4.05/0.98  simp_replaced_by:                       0
% 4.05/0.98  res_preprocessed:                       88
% 4.05/0.98  prep_upred:                             0
% 4.05/0.98  prep_unflattend:                        2
% 4.05/0.98  smt_new_axioms:                         0
% 4.05/0.98  pred_elim_cands:                        2
% 4.05/0.98  pred_elim:                              1
% 4.05/0.98  pred_elim_cl:                           1
% 4.05/0.98  pred_elim_cycles:                       3
% 4.05/0.98  merged_defs:                            0
% 4.05/0.98  merged_defs_ncl:                        0
% 4.05/0.98  bin_hyper_res:                          0
% 4.05/0.98  prep_cycles:                            4
% 4.05/0.98  pred_elim_time:                         0.
% 4.05/0.98  splitting_time:                         0.
% 4.05/0.98  sem_filter_time:                        0.
% 4.05/0.98  monotx_time:                            0.
% 4.05/0.98  subtype_inf_time:                       0.
% 4.05/0.98  
% 4.05/0.98  ------ Problem properties
% 4.05/0.98  
% 4.05/0.98  clauses:                                18
% 4.05/0.98  conjectures:                            2
% 4.05/0.98  epr:                                    2
% 4.05/0.98  horn:                                   18
% 4.05/0.98  ground:                                 2
% 4.05/0.98  unary:                                  14
% 4.05/0.98  binary:                                 2
% 4.05/0.98  lits:                                   24
% 4.05/0.98  lits_eq:                                11
% 4.05/0.98  fd_pure:                                0
% 4.05/0.98  fd_pseudo:                              0
% 4.05/0.98  fd_cond:                                0
% 4.05/0.98  fd_pseudo_cond:                         1
% 4.05/0.98  ac_symbols:                             1
% 4.05/0.98  
% 4.05/0.98  ------ Propositional Solver
% 4.05/0.98  
% 4.05/0.98  prop_solver_calls:                      32
% 4.05/0.98  prop_fast_solver_calls:                 410
% 4.05/0.98  smt_solver_calls:                       0
% 4.05/0.98  smt_fast_solver_calls:                  0
% 4.05/0.98  prop_num_of_clauses:                    2848
% 4.05/0.98  prop_preprocess_simplified:             5449
% 4.05/0.98  prop_fo_subsumed:                       1
% 4.05/0.98  prop_solver_time:                       0.
% 4.05/0.98  smt_solver_time:                        0.
% 4.05/0.98  smt_fast_solver_time:                   0.
% 4.05/0.98  prop_fast_solver_time:                  0.
% 4.05/0.98  prop_unsat_core_time:                   0.
% 4.05/0.98  
% 4.05/0.98  ------ QBF
% 4.05/0.98  
% 4.05/0.98  qbf_q_res:                              0
% 4.05/0.98  qbf_num_tautologies:                    0
% 4.05/0.98  qbf_prep_cycles:                        0
% 4.05/0.98  
% 4.05/0.98  ------ BMC1
% 4.05/0.98  
% 4.05/0.98  bmc1_current_bound:                     -1
% 4.05/0.98  bmc1_last_solved_bound:                 -1
% 4.05/0.98  bmc1_unsat_core_size:                   -1
% 4.05/0.98  bmc1_unsat_core_parents_size:           -1
% 4.05/0.98  bmc1_merge_next_fun:                    0
% 4.05/0.98  bmc1_unsat_core_clauses_time:           0.
% 4.05/0.98  
% 4.05/0.98  ------ Instantiation
% 4.05/0.98  
% 4.05/0.98  inst_num_of_clauses:                    816
% 4.05/0.98  inst_num_in_passive:                    141
% 4.05/0.98  inst_num_in_active:                     388
% 4.05/0.98  inst_num_in_unprocessed:                287
% 4.05/0.98  inst_num_of_loops:                      440
% 4.05/0.98  inst_num_of_learning_restarts:          0
% 4.05/0.98  inst_num_moves_active_passive:          46
% 4.05/0.98  inst_lit_activity:                      0
% 4.05/0.98  inst_lit_activity_moves:                0
% 4.05/0.98  inst_num_tautologies:                   0
% 4.05/0.98  inst_num_prop_implied:                  0
% 4.05/0.98  inst_num_existing_simplified:           0
% 4.05/0.98  inst_num_eq_res_simplified:             0
% 4.05/0.98  inst_num_child_elim:                    0
% 4.05/0.98  inst_num_of_dismatching_blockings:      269
% 4.05/0.98  inst_num_of_non_proper_insts:           990
% 4.05/0.98  inst_num_of_duplicates:                 0
% 4.05/0.98  inst_inst_num_from_inst_to_res:         0
% 4.05/0.98  inst_dismatching_checking_time:         0.
% 4.05/0.98  
% 4.05/0.98  ------ Resolution
% 4.05/0.98  
% 4.05/0.98  res_num_of_clauses:                     0
% 4.05/0.98  res_num_in_passive:                     0
% 4.05/0.98  res_num_in_active:                      0
% 4.05/0.98  res_num_of_loops:                       92
% 4.05/0.98  res_forward_subset_subsumed:            147
% 4.05/0.98  res_backward_subset_subsumed:           0
% 4.05/0.98  res_forward_subsumed:                   0
% 4.05/0.98  res_backward_subsumed:                  0
% 4.05/0.99  res_forward_subsumption_resolution:     0
% 4.05/0.99  res_backward_subsumption_resolution:    0
% 4.05/0.99  res_clause_to_clause_subsumption:       13560
% 4.05/0.99  res_orphan_elimination:                 0
% 4.05/0.99  res_tautology_del:                      40
% 4.05/0.99  res_num_eq_res_simplified:              0
% 4.05/0.99  res_num_sel_changes:                    0
% 4.05/0.99  res_moves_from_active_to_pass:          0
% 4.05/0.99  
% 4.05/0.99  ------ Superposition
% 4.05/0.99  
% 4.05/0.99  sup_time_total:                         0.
% 4.05/0.99  sup_time_generating:                    0.
% 4.05/0.99  sup_time_sim_full:                      0.
% 4.05/0.99  sup_time_sim_immed:                     0.
% 4.05/0.99  
% 4.05/0.99  sup_num_of_clauses:                     434
% 4.05/0.99  sup_num_in_active:                      81
% 4.05/0.99  sup_num_in_passive:                     353
% 4.05/0.99  sup_num_of_loops:                       87
% 4.05/0.99  sup_fw_superposition:                   4700
% 4.05/0.99  sup_bw_superposition:                   3157
% 4.05/0.99  sup_immediate_simplified:               2602
% 4.05/0.99  sup_given_eliminated:                   0
% 4.05/0.99  comparisons_done:                       0
% 4.05/0.99  comparisons_avoided:                    0
% 4.05/0.99  
% 4.05/0.99  ------ Simplifications
% 4.05/0.99  
% 4.05/0.99  
% 4.05/0.99  sim_fw_subset_subsumed:                 0
% 4.05/0.99  sim_bw_subset_subsumed:                 3
% 4.05/0.99  sim_fw_subsumed:                        81
% 4.05/0.99  sim_bw_subsumed:                        1
% 4.05/0.99  sim_fw_subsumption_res:                 0
% 4.05/0.99  sim_bw_subsumption_res:                 0
% 4.05/0.99  sim_tautology_del:                      2
% 4.05/0.99  sim_eq_tautology_del:                   657
% 4.05/0.99  sim_eq_res_simp:                        0
% 4.05/0.99  sim_fw_demodulated:                     1868
% 4.05/0.99  sim_bw_demodulated:                     9
% 4.05/0.99  sim_light_normalised:                   903
% 4.05/0.99  sim_joinable_taut:                      153
% 4.05/0.99  sim_joinable_simp:                      0
% 4.05/0.99  sim_ac_normalised:                      0
% 4.05/0.99  sim_smt_subsumption:                    0
% 4.05/0.99  
%------------------------------------------------------------------------------
