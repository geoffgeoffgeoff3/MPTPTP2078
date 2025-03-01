%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:33:30 EST 2020

% Result     : Theorem 3.56s
% Output     : CNFRefutation 3.56s
% Verified   : 
% Statistics : Number of formulae       :   88 ( 841 expanded)
%              Number of clauses        :   34 (  63 expanded)
%              Number of leaves         :   16 ( 271 expanded)
%              Depth                    :   22
%              Number of atoms          :  138 ( 973 expanded)
%              Number of equality atoms :   78 ( 816 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    6 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k5_enumset1(X0,X1,X2,X3,X4,X5,X6),k1_tarski(X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k2_xboole_0(k5_enumset1(X0,X1,X2,X3,X4,X5,X6),k1_tarski(X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(cnf_transformation,[],[f12])).

fof(f20,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f20])).

fof(f65,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f54,f64])).

fof(f13,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f13])).

fof(f14,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f14])).

fof(f15,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f15])).

fof(f16,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f16])).

fof(f17,axiom,(
    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X4,X2,X0,X3,X1] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f17])).

fof(f18,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f18])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f19])).

fof(f60,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f52,f53])).

fof(f61,plain,(
    ! [X4,X2,X0,X3,X1] : k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f51,f60])).

fof(f62,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f50,f61])).

fof(f63,plain,(
    ! [X2,X0,X1] : k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(definition_unfolding,[],[f49,f62])).

fof(f64,plain,(
    ! [X0,X1] : k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(definition_unfolding,[],[f48,f63])).

fof(f67,plain,(
    ! [X0] : k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_tarski(X0) ),
    inference(definition_unfolding,[],[f47,f64])).

fof(f74,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = k3_tarski(k6_enumset1(k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X7,X7,X7,X7,X7,X7,X7,X7))) ),
    inference(definition_unfolding,[],[f46,f65,f53,f67])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k2_tarski(X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k2_tarski(X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(cnf_transformation,[],[f11])).

fof(f68,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = k3_tarski(k6_enumset1(k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X6,X6,X6,X6,X6,X6,X6,X7))) ),
    inference(definition_unfolding,[],[f45,f65,f60,f64])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X3,X2,X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X3,X2,X1,X0) ),
    inference(cnf_transformation,[],[f10])).

fof(f73,plain,(
    ! [X2,X0,X3,X1] : k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) = k6_enumset1(X3,X3,X3,X3,X3,X2,X1,X0) ),
    inference(definition_unfolding,[],[f44,f62,f62])).

fof(f22,conjecture,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2)
     => r2_hidden(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2)
       => r2_hidden(X0,X2) ) ),
    inference(negated_conjecture,[],[f22])).

fof(f26,plain,(
    ? [X0,X1,X2] :
      ( ~ r2_hidden(X0,X2)
      & r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f31,plain,
    ( ? [X0,X1,X2] :
        ( ~ r2_hidden(X0,X2)
        & r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2) )
   => ( ~ r2_hidden(sK0,sK2)
      & r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( ~ r2_hidden(sK0,sK2)
    & r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f31])).

fof(f58,plain,(
    r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2) ),
    inference(cnf_transformation,[],[f32])).

fof(f78,plain,(
    r1_tarski(k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) ),
    inference(definition_unfolding,[],[f58,f65,f64])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f27])).

fof(f38,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f6,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f72,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f40,f65])).

fof(f36,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f80,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f36])).

fof(f21,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_tarski(X0,X1),X2)
    <=> ( r2_hidden(X1,X2)
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(k2_tarski(X0,X1),X2)
        | ~ r2_hidden(X1,X2)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X2)
          & r2_hidden(X0,X2) )
        | ~ r1_tarski(k2_tarski(X0,X1),X2) ) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(k2_tarski(X0,X1),X2)
        | ~ r2_hidden(X1,X2)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X2)
          & r2_hidden(X0,X2) )
        | ~ r1_tarski(k2_tarski(X0,X1),X2) ) ) ),
    inference(flattening,[],[f29])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,X2)
      | ~ r1_tarski(k2_tarski(X0,X1),X2) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f77,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,X2)
      | ~ r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1),X2) ) ),
    inference(definition_unfolding,[],[f55,f64])).

fof(f59,plain,(
    ~ r2_hidden(sK0,sK2) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_12,plain,
    ( k3_tarski(k6_enumset1(k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X7,X7,X7,X7,X7,X7,X7,X7))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_0,plain,
    ( k3_tarski(k6_enumset1(k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X6,X6,X6,X6,X6,X6,X6,X7))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_4437,plain,
    ( k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(superposition,[status(thm)],[c_12,c_0])).

cnf(c_11,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) = k6_enumset1(X3,X3,X3,X3,X3,X2,X1,X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_17,negated_conjecture,
    ( r1_tarski(k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_4275,plain,
    ( r1_tarski(k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_4374,plain,
    ( r1_tarski(k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_11,c_4275])).

cnf(c_4635,plain,
    ( r1_tarski(k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_4437,c_4374])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_4282,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_4649,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
    | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4635,c_4282])).

cnf(c_4686,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
    | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4437,c_4649])).

cnf(c_4648,plain,
    ( r1_tarski(k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_4437,c_4635])).

cnf(c_4676,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
    | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4648,c_4282])).

cnf(c_8,plain,
    ( r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_4280,plain,
    ( r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_4699,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4676,c_4280])).

cnf(c_4703,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
    | r1_tarski(sK2,sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4686,c_4699])).

cnf(c_6,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_4281,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_4706,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4703,c_4281])).

cnf(c_4358,plain,
    ( k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2)) = sK2
    | r1_tarski(sK2,k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4275,c_4282])).

cnf(c_4373,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
    | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_11,c_4358])).

cnf(c_4665,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
    | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4437,c_4373])).

cnf(c_4707,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
    | r1_tarski(sK2,sK2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4706,c_4665])).

cnf(c_5106,plain,
    ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4707,c_4281])).

cnf(c_4383,plain,
    ( r1_tarski(X0,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X0,X0,X0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_11,c_4280])).

cnf(c_5109,plain,
    ( r1_tarski(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_5106,c_4383])).

cnf(c_15,plain,
    ( r2_hidden(X0,X1)
    | ~ r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X2),X1) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_4277,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X2),X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_5123,plain,
    ( r2_hidden(sK0,sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_5109,c_4277])).

cnf(c_16,negated_conjecture,
    ( ~ r2_hidden(sK0,sK2) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_19,plain,
    ( r2_hidden(sK0,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5123,c_19])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n014.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:37:37 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 3.56/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.56/0.98  
% 3.56/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.56/0.98  
% 3.56/0.98  ------  iProver source info
% 3.56/0.98  
% 3.56/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.56/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.56/0.98  git: non_committed_changes: false
% 3.56/0.98  git: last_make_outside_of_git: false
% 3.56/0.98  
% 3.56/0.98  ------ 
% 3.56/0.98  ------ Parsing...
% 3.56/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  ------ Proving...
% 3.56/0.98  ------ Problem Properties 
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  clauses                                 17
% 3.56/0.98  conjectures                             2
% 3.56/0.98  EPR                                     3
% 3.56/0.98  Horn                                    17
% 3.56/0.98  unary                                   13
% 3.56/0.98  binary                                  2
% 3.56/0.98  lits                                    23
% 3.56/0.98  lits eq                                 9
% 3.56/0.98  fd_pure                                 0
% 3.56/0.98  fd_pseudo                               0
% 3.56/0.98  fd_cond                                 0
% 3.56/0.98  fd_pseudo_cond                          1
% 3.56/0.98  AC symbols                              1
% 3.56/0.98  
% 3.56/0.98  ------ Input Options Time Limit: Unbounded
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing...
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e ------ 
% 3.56/0.98  Current options:
% 3.56/0.98  ------ 
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 5 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 5 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 4 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 4 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 4 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 4 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.56/0.98  
% 3.56/0.98  ------ Proving...
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  % SZS status Theorem for theBenchmark.p
% 3.56/0.98  
% 3.56/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.56/0.98  
% 3.56/0.98  fof(f12,axiom,(
% 3.56/0.98    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k5_enumset1(X0,X1,X2,X3,X4,X5,X6),k1_tarski(X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f46,plain,(
% 3.56/0.98    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k2_xboole_0(k5_enumset1(X0,X1,X2,X3,X4,X5,X6),k1_tarski(X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f12])).
% 3.56/0.98  
% 3.56/0.98  fof(f20,axiom,(
% 3.56/0.98    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f54,plain,(
% 3.56/0.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 3.56/0.98    inference(cnf_transformation,[],[f20])).
% 3.56/0.98  
% 3.56/0.98  fof(f65,plain,(
% 3.56/0.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) )),
% 3.56/0.98    inference(definition_unfolding,[],[f54,f64])).
% 3.56/0.98  
% 3.56/0.98  fof(f13,axiom,(
% 3.56/0.98    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f47,plain,(
% 3.56/0.98    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f13])).
% 3.56/0.98  
% 3.56/0.98  fof(f14,axiom,(
% 3.56/0.98    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f48,plain,(
% 3.56/0.98    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f14])).
% 3.56/0.98  
% 3.56/0.98  fof(f15,axiom,(
% 3.56/0.98    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f49,plain,(
% 3.56/0.98    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f15])).
% 3.56/0.98  
% 3.56/0.98  fof(f16,axiom,(
% 3.56/0.98    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f50,plain,(
% 3.56/0.98    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f16])).
% 3.56/0.98  
% 3.56/0.98  fof(f17,axiom,(
% 3.56/0.98    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f51,plain,(
% 3.56/0.98    ( ! [X4,X2,X0,X3,X1] : (k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f17])).
% 3.56/0.98  
% 3.56/0.98  fof(f18,axiom,(
% 3.56/0.98    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f52,plain,(
% 3.56/0.98    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f18])).
% 3.56/0.98  
% 3.56/0.98  fof(f19,axiom,(
% 3.56/0.98    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f53,plain,(
% 3.56/0.98    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f19])).
% 3.56/0.98  
% 3.56/0.98  fof(f60,plain,(
% 3.56/0.98    ( ! [X4,X2,X0,X5,X3,X1] : (k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 3.56/0.98    inference(definition_unfolding,[],[f52,f53])).
% 3.56/0.98  
% 3.56/0.98  fof(f61,plain,(
% 3.56/0.98    ( ! [X4,X2,X0,X3,X1] : (k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 3.56/0.98    inference(definition_unfolding,[],[f51,f60])).
% 3.56/0.98  
% 3.56/0.98  fof(f62,plain,(
% 3.56/0.98    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 3.56/0.98    inference(definition_unfolding,[],[f50,f61])).
% 3.56/0.98  
% 3.56/0.98  fof(f63,plain,(
% 3.56/0.98    ( ! [X2,X0,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 3.56/0.98    inference(definition_unfolding,[],[f49,f62])).
% 3.56/0.98  
% 3.56/0.98  fof(f64,plain,(
% 3.56/0.98    ( ! [X0,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.56/0.98    inference(definition_unfolding,[],[f48,f63])).
% 3.56/0.98  
% 3.56/0.98  fof(f67,plain,(
% 3.56/0.98    ( ! [X0] : (k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_tarski(X0)) )),
% 3.56/0.98    inference(definition_unfolding,[],[f47,f64])).
% 3.56/0.98  
% 3.56/0.98  fof(f74,plain,(
% 3.56/0.98    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = k3_tarski(k6_enumset1(k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X7,X7,X7,X7,X7,X7,X7,X7)))) )),
% 3.56/0.98    inference(definition_unfolding,[],[f46,f65,f53,f67])).
% 3.56/0.98  
% 3.56/0.98  fof(f11,axiom,(
% 3.56/0.98    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k2_tarski(X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f45,plain,(
% 3.56/0.98    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k2_tarski(X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f11])).
% 3.56/0.98  
% 3.56/0.98  fof(f68,plain,(
% 3.56/0.98    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) = k3_tarski(k6_enumset1(k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X6,X6,X6,X6,X6,X6,X6,X7)))) )),
% 3.56/0.98    inference(definition_unfolding,[],[f45,f65,f60,f64])).
% 3.56/0.98  
% 3.56/0.98  fof(f10,axiom,(
% 3.56/0.98    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X3,X2,X1,X0)),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f44,plain,(
% 3.56/0.98    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X3,X2,X1,X0)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f10])).
% 3.56/0.98  
% 3.56/0.98  fof(f73,plain,(
% 3.56/0.98    ( ! [X2,X0,X3,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) = k6_enumset1(X3,X3,X3,X3,X3,X2,X1,X0)) )),
% 3.56/0.98    inference(definition_unfolding,[],[f44,f62,f62])).
% 3.56/0.98  
% 3.56/0.98  fof(f22,conjecture,(
% 3.56/0.98    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2) => r2_hidden(X0,X2))),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f23,negated_conjecture,(
% 3.56/0.98    ~! [X0,X1,X2] : (r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2) => r2_hidden(X0,X2))),
% 3.56/0.98    inference(negated_conjecture,[],[f22])).
% 3.56/0.98  
% 3.56/0.98  fof(f26,plain,(
% 3.56/0.98    ? [X0,X1,X2] : (~r2_hidden(X0,X2) & r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2))),
% 3.56/0.98    inference(ennf_transformation,[],[f23])).
% 3.56/0.98  
% 3.56/0.98  fof(f31,plain,(
% 3.56/0.98    ? [X0,X1,X2] : (~r2_hidden(X0,X2) & r1_tarski(k2_xboole_0(k2_tarski(X0,X1),X2),X2)) => (~r2_hidden(sK0,sK2) & r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2))),
% 3.56/0.98    introduced(choice_axiom,[])).
% 3.56/0.98  
% 3.56/0.98  fof(f32,plain,(
% 3.56/0.98    ~r2_hidden(sK0,sK2) & r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2)),
% 3.56/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f31])).
% 3.56/0.98  
% 3.56/0.98  fof(f58,plain,(
% 3.56/0.98    r1_tarski(k2_xboole_0(k2_tarski(sK0,sK1),sK2),sK2)),
% 3.56/0.98    inference(cnf_transformation,[],[f32])).
% 3.56/0.98  
% 3.56/0.98  fof(f78,plain,(
% 3.56/0.98    r1_tarski(k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2)),
% 3.56/0.98    inference(definition_unfolding,[],[f58,f65,f64])).
% 3.56/0.98  
% 3.56/0.98  fof(f4,axiom,(
% 3.56/0.98    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f27,plain,(
% 3.56/0.98    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.56/0.98    inference(nnf_transformation,[],[f4])).
% 3.56/0.98  
% 3.56/0.98  fof(f28,plain,(
% 3.56/0.98    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.56/0.98    inference(flattening,[],[f27])).
% 3.56/0.98  
% 3.56/0.98  fof(f38,plain,(
% 3.56/0.98    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f28])).
% 3.56/0.98  
% 3.56/0.98  fof(f6,axiom,(
% 3.56/0.98    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f40,plain,(
% 3.56/0.98    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 3.56/0.98    inference(cnf_transformation,[],[f6])).
% 3.56/0.98  
% 3.56/0.98  fof(f72,plain,(
% 3.56/0.98    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) )),
% 3.56/0.98    inference(definition_unfolding,[],[f40,f65])).
% 3.56/0.98  
% 3.56/0.98  fof(f36,plain,(
% 3.56/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.56/0.98    inference(cnf_transformation,[],[f28])).
% 3.56/0.98  
% 3.56/0.98  fof(f80,plain,(
% 3.56/0.98    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.56/0.98    inference(equality_resolution,[],[f36])).
% 3.56/0.98  
% 3.56/0.98  fof(f21,axiom,(
% 3.56/0.98    ! [X0,X1,X2] : (r1_tarski(k2_tarski(X0,X1),X2) <=> (r2_hidden(X1,X2) & r2_hidden(X0,X2)))),
% 3.56/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.56/0.98  
% 3.56/0.98  fof(f29,plain,(
% 3.56/0.98    ! [X0,X1,X2] : ((r1_tarski(k2_tarski(X0,X1),X2) | (~r2_hidden(X1,X2) | ~r2_hidden(X0,X2))) & ((r2_hidden(X1,X2) & r2_hidden(X0,X2)) | ~r1_tarski(k2_tarski(X0,X1),X2)))),
% 3.56/0.98    inference(nnf_transformation,[],[f21])).
% 3.56/0.98  
% 3.56/0.98  fof(f30,plain,(
% 3.56/0.98    ! [X0,X1,X2] : ((r1_tarski(k2_tarski(X0,X1),X2) | ~r2_hidden(X1,X2) | ~r2_hidden(X0,X2)) & ((r2_hidden(X1,X2) & r2_hidden(X0,X2)) | ~r1_tarski(k2_tarski(X0,X1),X2)))),
% 3.56/0.98    inference(flattening,[],[f29])).
% 3.56/0.98  
% 3.56/0.98  fof(f55,plain,(
% 3.56/0.98    ( ! [X2,X0,X1] : (r2_hidden(X0,X2) | ~r1_tarski(k2_tarski(X0,X1),X2)) )),
% 3.56/0.98    inference(cnf_transformation,[],[f30])).
% 3.56/0.98  
% 3.56/0.98  fof(f77,plain,(
% 3.56/0.98    ( ! [X2,X0,X1] : (r2_hidden(X0,X2) | ~r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1),X2)) )),
% 3.56/0.98    inference(definition_unfolding,[],[f55,f64])).
% 3.56/0.98  
% 3.56/0.98  fof(f59,plain,(
% 3.56/0.98    ~r2_hidden(sK0,sK2)),
% 3.56/0.98    inference(cnf_transformation,[],[f32])).
% 3.56/0.98  
% 3.56/0.98  cnf(c_12,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6),k6_enumset1(X7,X7,X7,X7,X7,X7,X7,X7))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
% 3.56/0.98      inference(cnf_transformation,[],[f74]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_0,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5),k6_enumset1(X6,X6,X6,X6,X6,X6,X6,X7))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
% 3.56/0.98      inference(cnf_transformation,[],[f68]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4437,plain,
% 3.56/0.98      ( k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_12,c_0]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_11,plain,
% 3.56/0.98      ( k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) = k6_enumset1(X3,X3,X3,X3,X3,X2,X1,X0) ),
% 3.56/0.98      inference(cnf_transformation,[],[f73]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_17,negated_conjecture,
% 3.56/0.98      ( r1_tarski(k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) ),
% 3.56/0.98      inference(cnf_transformation,[],[f78]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4275,plain,
% 3.56/0.98      ( r1_tarski(k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2)),sK2) = iProver_top ),
% 3.56/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4374,plain,
% 3.56/0.98      ( r1_tarski(k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
% 3.56/0.98      inference(demodulation,[status(thm)],[c_11,c_4275]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4635,plain,
% 3.56/0.98      ( r1_tarski(k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_4437,c_4374]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4,plain,
% 3.56/0.98      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 3.56/0.98      inference(cnf_transformation,[],[f38]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4282,plain,
% 3.56/0.98      ( X0 = X1
% 3.56/0.98      | r1_tarski(X0,X1) != iProver_top
% 3.56/0.98      | r1_tarski(X1,X0) != iProver_top ),
% 3.56/0.98      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4649,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
% 3.56/0.98      | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_4635,c_4282]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4686,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
% 3.56/0.98      | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_4437,c_4649]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4648,plain,
% 3.56/0.98      ( r1_tarski(k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))),sK2) = iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_4437,c_4635]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4676,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
% 3.56/0.98      | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_4648,c_4282]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_8,plain,
% 3.56/0.98      ( r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
% 3.56/0.98      inference(cnf_transformation,[],[f72]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4280,plain,
% 3.56/0.98      ( r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = iProver_top ),
% 3.56/0.98      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4699,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2 ),
% 3.56/0.98      inference(forward_subsumption_resolution,
% 3.56/0.98                [status(thm)],
% 3.56/0.98                [c_4676,c_4280]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4703,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
% 3.56/0.98      | r1_tarski(sK2,sK2) != iProver_top ),
% 3.56/0.98      inference(light_normalisation,[status(thm)],[c_4686,c_4699]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_6,plain,
% 3.56/0.98      ( r1_tarski(X0,X0) ),
% 3.56/0.98      inference(cnf_transformation,[],[f80]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4281,plain,
% 3.56/0.98      ( r1_tarski(X0,X0) = iProver_top ),
% 3.56/0.98      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4706,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2 ),
% 3.56/0.98      inference(forward_subsumption_resolution,
% 3.56/0.98                [status(thm)],
% 3.56/0.98                [c_4703,c_4281]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4358,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2)) = sK2
% 3.56/0.98      | r1_tarski(sK2,k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2))) != iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_4275,c_4282]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4373,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
% 3.56/0.98      | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
% 3.56/0.98      inference(demodulation,[status(thm)],[c_11,c_4358]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4665,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
% 3.56/0.98      | r1_tarski(sK2,k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))) != iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_4437,c_4373]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4707,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2
% 3.56/0.98      | r1_tarski(sK2,sK2) != iProver_top ),
% 3.56/0.98      inference(demodulation,[status(thm)],[c_4706,c_4665]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_5106,plain,
% 3.56/0.98      ( k3_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) = sK2 ),
% 3.56/0.98      inference(forward_subsumption_resolution,
% 3.56/0.98                [status(thm)],
% 3.56/0.98                [c_4707,c_4281]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4383,plain,
% 3.56/0.98      ( r1_tarski(X0,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X0,X0,X0))) = iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_11,c_4280]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_5109,plain,
% 3.56/0.98      ( r1_tarski(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1),sK2) = iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_5106,c_4383]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_15,plain,
% 3.56/0.98      ( r2_hidden(X0,X1)
% 3.56/0.98      | ~ r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X2),X1) ),
% 3.56/0.98      inference(cnf_transformation,[],[f77]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_4277,plain,
% 3.56/0.98      ( r2_hidden(X0,X1) = iProver_top
% 3.56/0.98      | r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X2),X1) != iProver_top ),
% 3.56/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_5123,plain,
% 3.56/0.98      ( r2_hidden(sK0,sK2) = iProver_top ),
% 3.56/0.98      inference(superposition,[status(thm)],[c_5109,c_4277]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_16,negated_conjecture,
% 3.56/0.98      ( ~ r2_hidden(sK0,sK2) ),
% 3.56/0.98      inference(cnf_transformation,[],[f59]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(c_19,plain,
% 3.56/0.98      ( r2_hidden(sK0,sK2) != iProver_top ),
% 3.56/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.56/0.98  
% 3.56/0.98  cnf(contradiction,plain,
% 3.56/0.98      ( $false ),
% 3.56/0.98      inference(minisat,[status(thm)],[c_5123,c_19]) ).
% 3.56/0.98  
% 3.56/0.98  
% 3.56/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.56/0.98  
% 3.56/0.98  ------                               Statistics
% 3.56/0.98  
% 3.56/0.98  ------ Selected
% 3.56/0.98  
% 3.56/0.98  total_time:                             0.176
% 3.56/0.98  
%------------------------------------------------------------------------------
