%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:31:42 EST 2020

% Result     : Theorem 3.43s
% Output     : CNFRefutation 3.43s
% Verified   : 
% Statistics : Number of formulae       :  110 ( 506 expanded)
%              Number of clauses        :   35 (  50 expanded)
%              Number of leaves         :   22 ( 156 expanded)
%              Depth                    :   17
%              Number of atoms          :  188 ( 606 expanded)
%              Number of equality atoms :  143 ( 542 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   10 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( X0 != X1
     => r1_xboole_0(k1_tarski(X0),k1_tarski(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),k1_tarski(X1))
      | X0 = X1 ) ),
    inference(ennf_transformation,[],[f18])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),k1_tarski(X1))
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f9,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f12])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f13])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f14])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f15])).

fof(f67,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f54,f55])).

fof(f68,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f53,f67])).

fof(f69,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f52,f68])).

fof(f70,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f51,f69])).

fof(f71,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f50,f70])).

fof(f72,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f49,f71])).

fof(f82,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
      | X0 = X1 ) ),
    inference(definition_unfolding,[],[f62,f72,f72])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => k4_xboole_0(X0,X1) = X0 ) ),
    inference(unused_predicate_definition_removal,[],[f7])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f47,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f5,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f75,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(definition_unfolding,[],[f47,f45])).

fof(f17,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f17])).

fof(f8,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f66,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f48,f45])).

fof(f81,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f61,f66,f71])).

fof(f21,conjecture,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1))) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,negated_conjecture,(
    ~ ! [X0,X1] : k2_tarski(X0,X1) = k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1))) ),
    inference(negated_conjecture,[],[f21])).

fof(f30,plain,(
    ? [X0,X1] : k2_tarski(X0,X1) != k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1))) ),
    inference(ennf_transformation,[],[f22])).

fof(f36,plain,
    ( ? [X0,X1] : k2_tarski(X0,X1) != k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1)))
   => k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1))) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f30,f36])).

fof(f65,plain,(
    k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1))) ),
    inference(cnf_transformation,[],[f37])).

fof(f85,plain,(
    k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1) != k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1))) ),
    inference(definition_unfolding,[],[f65,f71,f71,f72,f72])).

fof(f19,axiom,(
    ! [X0,X1] :
      ( X0 != X1
     => k5_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k2_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k2_tarski(X0,X1)
      | X0 = X1 ) ),
    inference(ennf_transformation,[],[f19])).

fof(f63,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k2_tarski(X0,X1)
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f29])).

fof(f83,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)
      | X0 = X1 ) ),
    inference(definition_unfolding,[],[f63,f72,f72,f71])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f31])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f87,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f40])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f73,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f44,f45])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f2])).

fof(f39,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f23])).

fof(f20,axiom,(
    ! [X0] : k3_tarski(k1_tarski(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0] : k3_tarski(k1_tarski(X0)) = X0 ),
    inference(cnf_transformation,[],[f20])).

fof(f84,plain,(
    ! [X0] : k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f64,f72])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ~ ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(flattening,[],[f34])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
      | k1_tarski(X1) != X0 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f78,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))
      | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) != X0 ) ),
    inference(definition_unfolding,[],[f58,f71,f72])).

fof(f90,plain,(
    ! [X2,X1] : r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) ),
    inference(equality_resolution,[],[f78])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f46,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_0,plain,
    ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_15,plain,
    ( r1_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | X1 = X0 ),
    inference(cnf_transformation,[],[f82])).

cnf(c_651,plain,
    ( X0 = X1
    | r1_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_8,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f75])).

cnf(c_657,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1205,plain,
    ( X0 = X1
    | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(superposition,[status(thm)],[c_651,c_657])).

cnf(c_2598,plain,
    ( X0 = X1
    | k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
    inference(superposition,[status(thm)],[c_0,c_1205])).

cnf(c_14,plain,
    ( k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_18,negated_conjecture,
    ( k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1) != k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1))) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_1001,plain,
    ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)))) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1) ),
    inference(demodulation,[status(thm)],[c_14,c_18])).

cnf(c_1207,plain,
    ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)))) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1) ),
    inference(superposition,[status(thm)],[c_0,c_1001])).

cnf(c_2767,plain,
    ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)
    | sK1 = sK0 ),
    inference(superposition,[status(thm)],[c_2598,c_1207])).

cnf(c_16,plain,
    ( X0 = X1
    | k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_941,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,sK1)
    | sK1 = X0 ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_947,plain,
    ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)) = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)
    | sK1 = sK0 ),
    inference(instantiation,[status(thm)],[c_941])).

cnf(c_2883,plain,
    ( sK1 = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2767,c_947])).

cnf(c_2886,plain,
    ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)))) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
    inference(demodulation,[status(thm)],[c_2883,c_1207])).

cnf(c_4,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_661,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_5,plain,
    ( ~ r1_tarski(X0,X1)
    | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f73])).

cnf(c_660,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1405,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_661,c_660])).

cnf(c_1,plain,
    ( k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1411,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1405,c_1])).

cnf(c_17,plain,
    ( k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
    inference(cnf_transformation,[],[f84])).

cnf(c_1005,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,k3_xboole_0(X0,X0))) = X0 ),
    inference(superposition,[status(thm)],[c_14,c_17])).

cnf(c_1007,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X0)) = X0 ),
    inference(light_normalisation,[status(thm)],[c_1005,c_1])).

cnf(c_1415,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(demodulation,[status(thm)],[c_1411,c_1007])).

cnf(c_11,plain,
    ( r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_654,plain,
    ( r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_658,plain,
    ( k3_xboole_0(X0,X1) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1973,plain,
    ( k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(superposition,[status(thm)],[c_654,c_658])).

cnf(c_2887,plain,
    ( k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
    inference(demodulation,[status(thm)],[c_2886,c_1411,c_1415,c_1973])).

cnf(c_2888,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_2887])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n007.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:21:06 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.43/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.43/1.00  
% 3.43/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.43/1.00  
% 3.43/1.00  ------  iProver source info
% 3.43/1.00  
% 3.43/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.43/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.43/1.00  git: non_committed_changes: false
% 3.43/1.00  git: last_make_outside_of_git: false
% 3.43/1.00  
% 3.43/1.00  ------ 
% 3.43/1.00  
% 3.43/1.00  ------ Input Options
% 3.43/1.00  
% 3.43/1.00  --out_options                           all
% 3.43/1.00  --tptp_safe_out                         true
% 3.43/1.00  --problem_path                          ""
% 3.43/1.00  --include_path                          ""
% 3.43/1.00  --clausifier                            res/vclausify_rel
% 3.43/1.00  --clausifier_options                    --mode clausify
% 3.43/1.00  --stdin                                 false
% 3.43/1.00  --stats_out                             all
% 3.43/1.00  
% 3.43/1.00  ------ General Options
% 3.43/1.00  
% 3.43/1.00  --fof                                   false
% 3.43/1.00  --time_out_real                         305.
% 3.43/1.00  --time_out_virtual                      -1.
% 3.43/1.00  --symbol_type_check                     false
% 3.43/1.00  --clausify_out                          false
% 3.43/1.00  --sig_cnt_out                           false
% 3.43/1.00  --trig_cnt_out                          false
% 3.43/1.00  --trig_cnt_out_tolerance                1.
% 3.43/1.00  --trig_cnt_out_sk_spl                   false
% 3.43/1.00  --abstr_cl_out                          false
% 3.43/1.00  
% 3.43/1.00  ------ Global Options
% 3.43/1.00  
% 3.43/1.00  --schedule                              default
% 3.43/1.00  --add_important_lit                     false
% 3.43/1.00  --prop_solver_per_cl                    1000
% 3.43/1.00  --min_unsat_core                        false
% 3.43/1.00  --soft_assumptions                      false
% 3.43/1.00  --soft_lemma_size                       3
% 3.43/1.00  --prop_impl_unit_size                   0
% 3.43/1.00  --prop_impl_unit                        []
% 3.43/1.00  --share_sel_clauses                     true
% 3.43/1.00  --reset_solvers                         false
% 3.43/1.00  --bc_imp_inh                            [conj_cone]
% 3.43/1.00  --conj_cone_tolerance                   3.
% 3.43/1.00  --extra_neg_conj                        none
% 3.43/1.00  --large_theory_mode                     true
% 3.43/1.00  --prolific_symb_bound                   200
% 3.43/1.00  --lt_threshold                          2000
% 3.43/1.00  --clause_weak_htbl                      true
% 3.43/1.00  --gc_record_bc_elim                     false
% 3.43/1.00  
% 3.43/1.00  ------ Preprocessing Options
% 3.43/1.00  
% 3.43/1.00  --preprocessing_flag                    true
% 3.43/1.00  --time_out_prep_mult                    0.1
% 3.43/1.00  --splitting_mode                        input
% 3.43/1.00  --splitting_grd                         true
% 3.43/1.00  --splitting_cvd                         false
% 3.43/1.00  --splitting_cvd_svl                     false
% 3.43/1.00  --splitting_nvd                         32
% 3.43/1.00  --sub_typing                            true
% 3.43/1.00  --prep_gs_sim                           true
% 3.43/1.00  --prep_unflatten                        true
% 3.43/1.00  --prep_res_sim                          true
% 3.43/1.00  --prep_upred                            true
% 3.43/1.00  --prep_sem_filter                       exhaustive
% 3.43/1.00  --prep_sem_filter_out                   false
% 3.43/1.00  --pred_elim                             true
% 3.43/1.00  --res_sim_input                         true
% 3.43/1.00  --eq_ax_congr_red                       true
% 3.43/1.00  --pure_diseq_elim                       true
% 3.43/1.00  --brand_transform                       false
% 3.43/1.00  --non_eq_to_eq                          false
% 3.43/1.00  --prep_def_merge                        true
% 3.43/1.00  --prep_def_merge_prop_impl              false
% 3.43/1.00  --prep_def_merge_mbd                    true
% 3.43/1.00  --prep_def_merge_tr_red                 false
% 3.43/1.00  --prep_def_merge_tr_cl                  false
% 3.43/1.00  --smt_preprocessing                     true
% 3.43/1.00  --smt_ac_axioms                         fast
% 3.43/1.00  --preprocessed_out                      false
% 3.43/1.00  --preprocessed_stats                    false
% 3.43/1.00  
% 3.43/1.00  ------ Abstraction refinement Options
% 3.43/1.00  
% 3.43/1.00  --abstr_ref                             []
% 3.43/1.00  --abstr_ref_prep                        false
% 3.43/1.00  --abstr_ref_until_sat                   false
% 3.43/1.00  --abstr_ref_sig_restrict                funpre
% 3.43/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.43/1.00  --abstr_ref_under                       []
% 3.43/1.00  
% 3.43/1.00  ------ SAT Options
% 3.43/1.00  
% 3.43/1.00  --sat_mode                              false
% 3.43/1.00  --sat_fm_restart_options                ""
% 3.43/1.00  --sat_gr_def                            false
% 3.43/1.00  --sat_epr_types                         true
% 3.43/1.00  --sat_non_cyclic_types                  false
% 3.43/1.00  --sat_finite_models                     false
% 3.43/1.00  --sat_fm_lemmas                         false
% 3.43/1.00  --sat_fm_prep                           false
% 3.43/1.00  --sat_fm_uc_incr                        true
% 3.43/1.00  --sat_out_model                         small
% 3.43/1.00  --sat_out_clauses                       false
% 3.43/1.00  
% 3.43/1.00  ------ QBF Options
% 3.43/1.00  
% 3.43/1.00  --qbf_mode                              false
% 3.43/1.00  --qbf_elim_univ                         false
% 3.43/1.00  --qbf_dom_inst                          none
% 3.43/1.00  --qbf_dom_pre_inst                      false
% 3.43/1.00  --qbf_sk_in                             false
% 3.43/1.00  --qbf_pred_elim                         true
% 3.43/1.00  --qbf_split                             512
% 3.43/1.00  
% 3.43/1.00  ------ BMC1 Options
% 3.43/1.00  
% 3.43/1.00  --bmc1_incremental                      false
% 3.43/1.00  --bmc1_axioms                           reachable_all
% 3.43/1.00  --bmc1_min_bound                        0
% 3.43/1.00  --bmc1_max_bound                        -1
% 3.43/1.00  --bmc1_max_bound_default                -1
% 3.43/1.00  --bmc1_symbol_reachability              true
% 3.43/1.00  --bmc1_property_lemmas                  false
% 3.43/1.00  --bmc1_k_induction                      false
% 3.43/1.00  --bmc1_non_equiv_states                 false
% 3.43/1.00  --bmc1_deadlock                         false
% 3.43/1.00  --bmc1_ucm                              false
% 3.43/1.00  --bmc1_add_unsat_core                   none
% 3.43/1.00  --bmc1_unsat_core_children              false
% 3.43/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.43/1.00  --bmc1_out_stat                         full
% 3.43/1.00  --bmc1_ground_init                      false
% 3.43/1.00  --bmc1_pre_inst_next_state              false
% 3.43/1.00  --bmc1_pre_inst_state                   false
% 3.43/1.00  --bmc1_pre_inst_reach_state             false
% 3.43/1.00  --bmc1_out_unsat_core                   false
% 3.43/1.00  --bmc1_aig_witness_out                  false
% 3.43/1.00  --bmc1_verbose                          false
% 3.43/1.00  --bmc1_dump_clauses_tptp                false
% 3.43/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.43/1.00  --bmc1_dump_file                        -
% 3.43/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.43/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.43/1.00  --bmc1_ucm_extend_mode                  1
% 3.43/1.00  --bmc1_ucm_init_mode                    2
% 3.43/1.00  --bmc1_ucm_cone_mode                    none
% 3.43/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.43/1.00  --bmc1_ucm_relax_model                  4
% 3.43/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.43/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.43/1.00  --bmc1_ucm_layered_model                none
% 3.43/1.00  --bmc1_ucm_max_lemma_size               10
% 3.43/1.00  
% 3.43/1.00  ------ AIG Options
% 3.43/1.00  
% 3.43/1.00  --aig_mode                              false
% 3.43/1.00  
% 3.43/1.00  ------ Instantiation Options
% 3.43/1.00  
% 3.43/1.00  --instantiation_flag                    true
% 3.43/1.00  --inst_sos_flag                         false
% 3.43/1.00  --inst_sos_phase                        true
% 3.43/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.43/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.43/1.00  --inst_lit_sel_side                     num_symb
% 3.43/1.00  --inst_solver_per_active                1400
% 3.43/1.00  --inst_solver_calls_frac                1.
% 3.43/1.00  --inst_passive_queue_type               priority_queues
% 3.43/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.43/1.00  --inst_passive_queues_freq              [25;2]
% 3.43/1.00  --inst_dismatching                      true
% 3.43/1.00  --inst_eager_unprocessed_to_passive     true
% 3.43/1.00  --inst_prop_sim_given                   true
% 3.43/1.00  --inst_prop_sim_new                     false
% 3.43/1.00  --inst_subs_new                         false
% 3.43/1.00  --inst_eq_res_simp                      false
% 3.43/1.00  --inst_subs_given                       false
% 3.43/1.00  --inst_orphan_elimination               true
% 3.43/1.00  --inst_learning_loop_flag               true
% 3.43/1.00  --inst_learning_start                   3000
% 3.43/1.00  --inst_learning_factor                  2
% 3.43/1.00  --inst_start_prop_sim_after_learn       3
% 3.43/1.00  --inst_sel_renew                        solver
% 3.43/1.00  --inst_lit_activity_flag                true
% 3.43/1.00  --inst_restr_to_given                   false
% 3.43/1.00  --inst_activity_threshold               500
% 3.43/1.00  --inst_out_proof                        true
% 3.43/1.00  
% 3.43/1.00  ------ Resolution Options
% 3.43/1.00  
% 3.43/1.00  --resolution_flag                       true
% 3.43/1.00  --res_lit_sel                           adaptive
% 3.43/1.00  --res_lit_sel_side                      none
% 3.43/1.00  --res_ordering                          kbo
% 3.43/1.00  --res_to_prop_solver                    active
% 3.43/1.00  --res_prop_simpl_new                    false
% 3.43/1.00  --res_prop_simpl_given                  true
% 3.43/1.00  --res_passive_queue_type                priority_queues
% 3.43/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.43/1.00  --res_passive_queues_freq               [15;5]
% 3.43/1.00  --res_forward_subs                      full
% 3.43/1.00  --res_backward_subs                     full
% 3.43/1.00  --res_forward_subs_resolution           true
% 3.43/1.00  --res_backward_subs_resolution          true
% 3.43/1.00  --res_orphan_elimination                true
% 3.43/1.00  --res_time_limit                        2.
% 3.43/1.00  --res_out_proof                         true
% 3.43/1.00  
% 3.43/1.00  ------ Superposition Options
% 3.43/1.00  
% 3.43/1.00  --superposition_flag                    true
% 3.43/1.00  --sup_passive_queue_type                priority_queues
% 3.43/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.43/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.43/1.00  --demod_completeness_check              fast
% 3.43/1.00  --demod_use_ground                      true
% 3.43/1.00  --sup_to_prop_solver                    passive
% 3.43/1.00  --sup_prop_simpl_new                    true
% 3.43/1.00  --sup_prop_simpl_given                  true
% 3.43/1.00  --sup_fun_splitting                     false
% 3.43/1.00  --sup_smt_interval                      50000
% 3.43/1.00  
% 3.43/1.00  ------ Superposition Simplification Setup
% 3.43/1.00  
% 3.43/1.00  --sup_indices_passive                   []
% 3.43/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.43/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/1.00  --sup_full_bw                           [BwDemod]
% 3.43/1.00  --sup_immed_triv                        [TrivRules]
% 3.43/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.43/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/1.00  --sup_immed_bw_main                     []
% 3.43/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.43/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.43/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.43/1.00  
% 3.43/1.00  ------ Combination Options
% 3.43/1.00  
% 3.43/1.00  --comb_res_mult                         3
% 3.43/1.00  --comb_sup_mult                         2
% 3.43/1.00  --comb_inst_mult                        10
% 3.43/1.00  
% 3.43/1.00  ------ Debug Options
% 3.43/1.00  
% 3.43/1.00  --dbg_backtrace                         false
% 3.43/1.00  --dbg_dump_prop_clauses                 false
% 3.43/1.00  --dbg_dump_prop_clauses_file            -
% 3.43/1.00  --dbg_out_stat                          false
% 3.43/1.00  ------ Parsing...
% 3.43/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.43/1.00  
% 3.43/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.43/1.00  
% 3.43/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.43/1.00  
% 3.43/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.43/1.00  ------ Proving...
% 3.43/1.00  ------ Problem Properties 
% 3.43/1.00  
% 3.43/1.00  
% 3.43/1.00  clauses                                 18
% 3.43/1.00  conjectures                             1
% 3.43/1.00  EPR                                     2
% 3.43/1.00  Horn                                    15
% 3.43/1.00  unary                                   10
% 3.43/1.00  binary                                  6
% 3.43/1.00  lits                                    30
% 3.43/1.00  lits eq                                 17
% 3.43/1.00  fd_pure                                 0
% 3.43/1.00  fd_pseudo                               0
% 3.43/1.00  fd_cond                                 0
% 3.43/1.00  fd_pseudo_cond                          4
% 3.43/1.00  AC symbols                              0
% 3.43/1.00  
% 3.43/1.00  ------ Schedule dynamic 5 is on 
% 3.43/1.00  
% 3.43/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.43/1.00  
% 3.43/1.00  
% 3.43/1.00  ------ 
% 3.43/1.00  Current options:
% 3.43/1.00  ------ 
% 3.43/1.00  
% 3.43/1.00  ------ Input Options
% 3.43/1.00  
% 3.43/1.00  --out_options                           all
% 3.43/1.00  --tptp_safe_out                         true
% 3.43/1.00  --problem_path                          ""
% 3.43/1.00  --include_path                          ""
% 3.43/1.00  --clausifier                            res/vclausify_rel
% 3.43/1.00  --clausifier_options                    --mode clausify
% 3.43/1.00  --stdin                                 false
% 3.43/1.00  --stats_out                             all
% 3.43/1.00  
% 3.43/1.00  ------ General Options
% 3.43/1.00  
% 3.43/1.00  --fof                                   false
% 3.43/1.00  --time_out_real                         305.
% 3.43/1.00  --time_out_virtual                      -1.
% 3.43/1.00  --symbol_type_check                     false
% 3.43/1.00  --clausify_out                          false
% 3.43/1.00  --sig_cnt_out                           false
% 3.43/1.00  --trig_cnt_out                          false
% 3.43/1.00  --trig_cnt_out_tolerance                1.
% 3.43/1.00  --trig_cnt_out_sk_spl                   false
% 3.43/1.00  --abstr_cl_out                          false
% 3.43/1.00  
% 3.43/1.00  ------ Global Options
% 3.43/1.00  
% 3.43/1.00  --schedule                              default
% 3.43/1.00  --add_important_lit                     false
% 3.43/1.00  --prop_solver_per_cl                    1000
% 3.43/1.00  --min_unsat_core                        false
% 3.43/1.00  --soft_assumptions                      false
% 3.43/1.00  --soft_lemma_size                       3
% 3.43/1.00  --prop_impl_unit_size                   0
% 3.43/1.00  --prop_impl_unit                        []
% 3.43/1.00  --share_sel_clauses                     true
% 3.43/1.00  --reset_solvers                         false
% 3.43/1.00  --bc_imp_inh                            [conj_cone]
% 3.43/1.00  --conj_cone_tolerance                   3.
% 3.43/1.00  --extra_neg_conj                        none
% 3.43/1.00  --large_theory_mode                     true
% 3.43/1.00  --prolific_symb_bound                   200
% 3.43/1.00  --lt_threshold                          2000
% 3.43/1.00  --clause_weak_htbl                      true
% 3.43/1.00  --gc_record_bc_elim                     false
% 3.43/1.00  
% 3.43/1.00  ------ Preprocessing Options
% 3.43/1.00  
% 3.43/1.00  --preprocessing_flag                    true
% 3.43/1.00  --time_out_prep_mult                    0.1
% 3.43/1.00  --splitting_mode                        input
% 3.43/1.00  --splitting_grd                         true
% 3.43/1.00  --splitting_cvd                         false
% 3.43/1.00  --splitting_cvd_svl                     false
% 3.43/1.00  --splitting_nvd                         32
% 3.43/1.00  --sub_typing                            true
% 3.43/1.00  --prep_gs_sim                           true
% 3.43/1.00  --prep_unflatten                        true
% 3.43/1.00  --prep_res_sim                          true
% 3.43/1.00  --prep_upred                            true
% 3.43/1.00  --prep_sem_filter                       exhaustive
% 3.43/1.00  --prep_sem_filter_out                   false
% 3.43/1.00  --pred_elim                             true
% 3.43/1.00  --res_sim_input                         true
% 3.43/1.00  --eq_ax_congr_red                       true
% 3.43/1.00  --pure_diseq_elim                       true
% 3.43/1.00  --brand_transform                       false
% 3.43/1.00  --non_eq_to_eq                          false
% 3.43/1.00  --prep_def_merge                        true
% 3.43/1.00  --prep_def_merge_prop_impl              false
% 3.43/1.00  --prep_def_merge_mbd                    true
% 3.43/1.00  --prep_def_merge_tr_red                 false
% 3.43/1.00  --prep_def_merge_tr_cl                  false
% 3.43/1.00  --smt_preprocessing                     true
% 3.43/1.00  --smt_ac_axioms                         fast
% 3.43/1.00  --preprocessed_out                      false
% 3.43/1.00  --preprocessed_stats                    false
% 3.43/1.00  
% 3.43/1.00  ------ Abstraction refinement Options
% 3.43/1.00  
% 3.43/1.00  --abstr_ref                             []
% 3.43/1.00  --abstr_ref_prep                        false
% 3.43/1.00  --abstr_ref_until_sat                   false
% 3.43/1.00  --abstr_ref_sig_restrict                funpre
% 3.43/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.43/1.00  --abstr_ref_under                       []
% 3.43/1.00  
% 3.43/1.00  ------ SAT Options
% 3.43/1.00  
% 3.43/1.00  --sat_mode                              false
% 3.43/1.00  --sat_fm_restart_options                ""
% 3.43/1.00  --sat_gr_def                            false
% 3.43/1.00  --sat_epr_types                         true
% 3.43/1.00  --sat_non_cyclic_types                  false
% 3.43/1.00  --sat_finite_models                     false
% 3.43/1.00  --sat_fm_lemmas                         false
% 3.43/1.00  --sat_fm_prep                           false
% 3.43/1.00  --sat_fm_uc_incr                        true
% 3.43/1.00  --sat_out_model                         small
% 3.43/1.00  --sat_out_clauses                       false
% 3.43/1.00  
% 3.43/1.00  ------ QBF Options
% 3.43/1.00  
% 3.43/1.00  --qbf_mode                              false
% 3.43/1.00  --qbf_elim_univ                         false
% 3.43/1.00  --qbf_dom_inst                          none
% 3.43/1.00  --qbf_dom_pre_inst                      false
% 3.43/1.00  --qbf_sk_in                             false
% 3.43/1.00  --qbf_pred_elim                         true
% 3.43/1.00  --qbf_split                             512
% 3.43/1.00  
% 3.43/1.00  ------ BMC1 Options
% 3.43/1.00  
% 3.43/1.00  --bmc1_incremental                      false
% 3.43/1.00  --bmc1_axioms                           reachable_all
% 3.43/1.00  --bmc1_min_bound                        0
% 3.43/1.00  --bmc1_max_bound                        -1
% 3.43/1.00  --bmc1_max_bound_default                -1
% 3.43/1.00  --bmc1_symbol_reachability              true
% 3.43/1.00  --bmc1_property_lemmas                  false
% 3.43/1.00  --bmc1_k_induction                      false
% 3.43/1.00  --bmc1_non_equiv_states                 false
% 3.43/1.00  --bmc1_deadlock                         false
% 3.43/1.00  --bmc1_ucm                              false
% 3.43/1.00  --bmc1_add_unsat_core                   none
% 3.43/1.00  --bmc1_unsat_core_children              false
% 3.43/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.43/1.00  --bmc1_out_stat                         full
% 3.43/1.00  --bmc1_ground_init                      false
% 3.43/1.00  --bmc1_pre_inst_next_state              false
% 3.43/1.00  --bmc1_pre_inst_state                   false
% 3.43/1.00  --bmc1_pre_inst_reach_state             false
% 3.43/1.00  --bmc1_out_unsat_core                   false
% 3.43/1.00  --bmc1_aig_witness_out                  false
% 3.43/1.00  --bmc1_verbose                          false
% 3.43/1.00  --bmc1_dump_clauses_tptp                false
% 3.43/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.43/1.00  --bmc1_dump_file                        -
% 3.43/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.43/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.43/1.00  --bmc1_ucm_extend_mode                  1
% 3.43/1.00  --bmc1_ucm_init_mode                    2
% 3.43/1.00  --bmc1_ucm_cone_mode                    none
% 3.43/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.43/1.00  --bmc1_ucm_relax_model                  4
% 3.43/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.43/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.43/1.00  --bmc1_ucm_layered_model                none
% 3.43/1.00  --bmc1_ucm_max_lemma_size               10
% 3.43/1.00  
% 3.43/1.00  ------ AIG Options
% 3.43/1.00  
% 3.43/1.00  --aig_mode                              false
% 3.43/1.00  
% 3.43/1.00  ------ Instantiation Options
% 3.43/1.00  
% 3.43/1.00  --instantiation_flag                    true
% 3.43/1.00  --inst_sos_flag                         false
% 3.43/1.00  --inst_sos_phase                        true
% 3.43/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.43/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.43/1.00  --inst_lit_sel_side                     none
% 3.43/1.00  --inst_solver_per_active                1400
% 3.43/1.00  --inst_solver_calls_frac                1.
% 3.43/1.00  --inst_passive_queue_type               priority_queues
% 3.43/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.43/1.00  --inst_passive_queues_freq              [25;2]
% 3.43/1.00  --inst_dismatching                      true
% 3.43/1.00  --inst_eager_unprocessed_to_passive     true
% 3.43/1.00  --inst_prop_sim_given                   true
% 3.43/1.00  --inst_prop_sim_new                     false
% 3.43/1.00  --inst_subs_new                         false
% 3.43/1.00  --inst_eq_res_simp                      false
% 3.43/1.00  --inst_subs_given                       false
% 3.43/1.00  --inst_orphan_elimination               true
% 3.43/1.00  --inst_learning_loop_flag               true
% 3.43/1.00  --inst_learning_start                   3000
% 3.43/1.00  --inst_learning_factor                  2
% 3.43/1.00  --inst_start_prop_sim_after_learn       3
% 3.43/1.00  --inst_sel_renew                        solver
% 3.43/1.00  --inst_lit_activity_flag                true
% 3.43/1.00  --inst_restr_to_given                   false
% 3.43/1.00  --inst_activity_threshold               500
% 3.43/1.00  --inst_out_proof                        true
% 3.43/1.00  
% 3.43/1.00  ------ Resolution Options
% 3.43/1.00  
% 3.43/1.00  --resolution_flag                       false
% 3.43/1.00  --res_lit_sel                           adaptive
% 3.43/1.00  --res_lit_sel_side                      none
% 3.43/1.00  --res_ordering                          kbo
% 3.43/1.00  --res_to_prop_solver                    active
% 3.43/1.00  --res_prop_simpl_new                    false
% 3.43/1.00  --res_prop_simpl_given                  true
% 3.43/1.00  --res_passive_queue_type                priority_queues
% 3.43/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.43/1.00  --res_passive_queues_freq               [15;5]
% 3.43/1.00  --res_forward_subs                      full
% 3.43/1.00  --res_backward_subs                     full
% 3.43/1.00  --res_forward_subs_resolution           true
% 3.43/1.00  --res_backward_subs_resolution          true
% 3.43/1.00  --res_orphan_elimination                true
% 3.43/1.00  --res_time_limit                        2.
% 3.43/1.00  --res_out_proof                         true
% 3.43/1.00  
% 3.43/1.00  ------ Superposition Options
% 3.43/1.00  
% 3.43/1.00  --superposition_flag                    true
% 3.43/1.00  --sup_passive_queue_type                priority_queues
% 3.43/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.43/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.43/1.00  --demod_completeness_check              fast
% 3.43/1.00  --demod_use_ground                      true
% 3.43/1.00  --sup_to_prop_solver                    passive
% 3.43/1.00  --sup_prop_simpl_new                    true
% 3.43/1.00  --sup_prop_simpl_given                  true
% 3.43/1.00  --sup_fun_splitting                     false
% 3.43/1.00  --sup_smt_interval                      50000
% 3.43/1.00  
% 3.43/1.00  ------ Superposition Simplification Setup
% 3.43/1.00  
% 3.43/1.00  --sup_indices_passive                   []
% 3.43/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.43/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/1.00  --sup_full_bw                           [BwDemod]
% 3.43/1.00  --sup_immed_triv                        [TrivRules]
% 3.43/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.43/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/1.00  --sup_immed_bw_main                     []
% 3.43/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.43/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.43/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.43/1.00  
% 3.43/1.00  ------ Combination Options
% 3.43/1.00  
% 3.43/1.00  --comb_res_mult                         3
% 3.43/1.00  --comb_sup_mult                         2
% 3.43/1.00  --comb_inst_mult                        10
% 3.43/1.00  
% 3.43/1.00  ------ Debug Options
% 3.43/1.00  
% 3.43/1.00  --dbg_backtrace                         false
% 3.43/1.00  --dbg_dump_prop_clauses                 false
% 3.43/1.00  --dbg_dump_prop_clauses_file            -
% 3.43/1.00  --dbg_out_stat                          false
% 3.43/1.00  
% 3.43/1.00  
% 3.43/1.00  
% 3.43/1.00  
% 3.43/1.00  ------ Proving...
% 3.43/1.00  
% 3.43/1.00  
% 3.43/1.00  % SZS status Theorem for theBenchmark.p
% 3.43/1.00  
% 3.43/1.00   Resolution empty clause
% 3.43/1.00  
% 3.43/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.43/1.00  
% 3.43/1.00  fof(f1,axiom,(
% 3.43/1.00    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f38,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f1])).
% 3.43/1.00  
% 3.43/1.00  fof(f18,axiom,(
% 3.43/1.00    ! [X0,X1] : (X0 != X1 => r1_xboole_0(k1_tarski(X0),k1_tarski(X1)))),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f28,plain,(
% 3.43/1.00    ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),k1_tarski(X1)) | X0 = X1)),
% 3.43/1.00    inference(ennf_transformation,[],[f18])).
% 3.43/1.00  
% 3.43/1.00  fof(f62,plain,(
% 3.43/1.00    ( ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),k1_tarski(X1)) | X0 = X1) )),
% 3.43/1.00    inference(cnf_transformation,[],[f28])).
% 3.43/1.00  
% 3.43/1.00  fof(f9,axiom,(
% 3.43/1.00    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f49,plain,(
% 3.43/1.00    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f9])).
% 3.43/1.00  
% 3.43/1.00  fof(f10,axiom,(
% 3.43/1.00    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f50,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f10])).
% 3.43/1.00  
% 3.43/1.00  fof(f11,axiom,(
% 3.43/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f51,plain,(
% 3.43/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f11])).
% 3.43/1.00  
% 3.43/1.00  fof(f12,axiom,(
% 3.43/1.00    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f52,plain,(
% 3.43/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f12])).
% 3.43/1.00  
% 3.43/1.00  fof(f13,axiom,(
% 3.43/1.00    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f53,plain,(
% 3.43/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f13])).
% 3.43/1.00  
% 3.43/1.00  fof(f14,axiom,(
% 3.43/1.00    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f54,plain,(
% 3.43/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f14])).
% 3.43/1.00  
% 3.43/1.00  fof(f15,axiom,(
% 3.43/1.00    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f55,plain,(
% 3.43/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f15])).
% 3.43/1.00  
% 3.43/1.00  fof(f67,plain,(
% 3.43/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 3.43/1.00    inference(definition_unfolding,[],[f54,f55])).
% 3.43/1.00  
% 3.43/1.00  fof(f68,plain,(
% 3.43/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 3.43/1.00    inference(definition_unfolding,[],[f53,f67])).
% 3.43/1.00  
% 3.43/1.00  fof(f69,plain,(
% 3.43/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 3.43/1.00    inference(definition_unfolding,[],[f52,f68])).
% 3.43/1.00  
% 3.43/1.00  fof(f70,plain,(
% 3.43/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 3.43/1.00    inference(definition_unfolding,[],[f51,f69])).
% 3.43/1.00  
% 3.43/1.00  fof(f71,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 3.43/1.00    inference(definition_unfolding,[],[f50,f70])).
% 3.43/1.00  
% 3.43/1.00  fof(f72,plain,(
% 3.43/1.00    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 3.43/1.00    inference(definition_unfolding,[],[f49,f71])).
% 3.43/1.00  
% 3.43/1.00  fof(f82,plain,(
% 3.43/1.00    ( ! [X0,X1] : (r1_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) | X0 = X1) )),
% 3.43/1.00    inference(definition_unfolding,[],[f62,f72,f72])).
% 3.43/1.00  
% 3.43/1.00  fof(f7,axiom,(
% 3.43/1.00    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f24,plain,(
% 3.43/1.00    ! [X0,X1] : (r1_xboole_0(X0,X1) => k4_xboole_0(X0,X1) = X0)),
% 3.43/1.00    inference(unused_predicate_definition_removal,[],[f7])).
% 3.43/1.00  
% 3.43/1.00  fof(f26,plain,(
% 3.43/1.00    ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1))),
% 3.43/1.00    inference(ennf_transformation,[],[f24])).
% 3.43/1.00  
% 3.43/1.00  fof(f47,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f26])).
% 3.43/1.00  
% 3.43/1.00  fof(f5,axiom,(
% 3.43/1.00    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f45,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.43/1.00    inference(cnf_transformation,[],[f5])).
% 3.43/1.00  
% 3.43/1.00  fof(f75,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 | ~r1_xboole_0(X0,X1)) )),
% 3.43/1.00    inference(definition_unfolding,[],[f47,f45])).
% 3.43/1.00  
% 3.43/1.00  fof(f17,axiom,(
% 3.43/1.00    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f61,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 3.43/1.00    inference(cnf_transformation,[],[f17])).
% 3.43/1.00  
% 3.43/1.00  fof(f8,axiom,(
% 3.43/1.00    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f48,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f8])).
% 3.43/1.00  
% 3.43/1.00  fof(f66,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1)) )),
% 3.43/1.00    inference(definition_unfolding,[],[f48,f45])).
% 3.43/1.00  
% 3.43/1.00  fof(f81,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) )),
% 3.43/1.00    inference(definition_unfolding,[],[f61,f66,f71])).
% 3.43/1.00  
% 3.43/1.00  fof(f21,conjecture,(
% 3.43/1.00    ! [X0,X1] : k2_tarski(X0,X1) = k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1)))),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f22,negated_conjecture,(
% 3.43/1.00    ~! [X0,X1] : k2_tarski(X0,X1) = k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1)))),
% 3.43/1.00    inference(negated_conjecture,[],[f21])).
% 3.43/1.00  
% 3.43/1.00  fof(f30,plain,(
% 3.43/1.00    ? [X0,X1] : k2_tarski(X0,X1) != k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1)))),
% 3.43/1.00    inference(ennf_transformation,[],[f22])).
% 3.43/1.00  
% 3.43/1.00  fof(f36,plain,(
% 3.43/1.00    ? [X0,X1] : k2_tarski(X0,X1) != k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1))) => k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1)))),
% 3.43/1.00    introduced(choice_axiom,[])).
% 3.43/1.00  
% 3.43/1.00  fof(f37,plain,(
% 3.43/1.00    k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1)))),
% 3.43/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f30,f36])).
% 3.43/1.00  
% 3.43/1.00  fof(f65,plain,(
% 3.43/1.00    k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1)))),
% 3.43/1.00    inference(cnf_transformation,[],[f37])).
% 3.43/1.00  
% 3.43/1.00  fof(f85,plain,(
% 3.43/1.00    k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1) != k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)))),
% 3.43/1.00    inference(definition_unfolding,[],[f65,f71,f71,f72,f72])).
% 3.43/1.00  
% 3.43/1.00  fof(f19,axiom,(
% 3.43/1.00    ! [X0,X1] : (X0 != X1 => k5_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k2_tarski(X0,X1))),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f29,plain,(
% 3.43/1.00    ! [X0,X1] : (k5_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k2_tarski(X0,X1) | X0 = X1)),
% 3.43/1.00    inference(ennf_transformation,[],[f19])).
% 3.43/1.00  
% 3.43/1.00  fof(f63,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k5_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k2_tarski(X0,X1) | X0 = X1) )),
% 3.43/1.00    inference(cnf_transformation,[],[f29])).
% 3.43/1.00  
% 3.43/1.00  fof(f83,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) | X0 = X1) )),
% 3.43/1.00    inference(definition_unfolding,[],[f63,f72,f72,f71])).
% 3.43/1.00  
% 3.43/1.00  fof(f3,axiom,(
% 3.43/1.00    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f31,plain,(
% 3.43/1.00    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.43/1.00    inference(nnf_transformation,[],[f3])).
% 3.43/1.00  
% 3.43/1.00  fof(f32,plain,(
% 3.43/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.43/1.00    inference(flattening,[],[f31])).
% 3.43/1.00  
% 3.43/1.00  fof(f40,plain,(
% 3.43/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.43/1.00    inference(cnf_transformation,[],[f32])).
% 3.43/1.00  
% 3.43/1.00  fof(f87,plain,(
% 3.43/1.00    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.43/1.00    inference(equality_resolution,[],[f40])).
% 3.43/1.00  
% 3.43/1.00  fof(f4,axiom,(
% 3.43/1.00    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f33,plain,(
% 3.43/1.00    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 3.43/1.00    inference(nnf_transformation,[],[f4])).
% 3.43/1.00  
% 3.43/1.00  fof(f44,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f33])).
% 3.43/1.00  
% 3.43/1.00  fof(f73,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X1)) | ~r1_tarski(X0,X1)) )),
% 3.43/1.00    inference(definition_unfolding,[],[f44,f45])).
% 3.43/1.00  
% 3.43/1.00  fof(f2,axiom,(
% 3.43/1.00    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f23,plain,(
% 3.43/1.00    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 3.43/1.00    inference(rectify,[],[f2])).
% 3.43/1.00  
% 3.43/1.00  fof(f39,plain,(
% 3.43/1.00    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 3.43/1.00    inference(cnf_transformation,[],[f23])).
% 3.43/1.00  
% 3.43/1.00  fof(f20,axiom,(
% 3.43/1.00    ! [X0] : k3_tarski(k1_tarski(X0)) = X0),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f64,plain,(
% 3.43/1.00    ( ! [X0] : (k3_tarski(k1_tarski(X0)) = X0) )),
% 3.43/1.00    inference(cnf_transformation,[],[f20])).
% 3.43/1.00  
% 3.43/1.00  fof(f84,plain,(
% 3.43/1.00    ( ! [X0] : (k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0) )),
% 3.43/1.00    inference(definition_unfolding,[],[f64,f72])).
% 3.43/1.00  
% 3.43/1.00  fof(f16,axiom,(
% 3.43/1.00    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> ~(k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0))),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f27,plain,(
% 3.43/1.00    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 3.43/1.00    inference(ennf_transformation,[],[f16])).
% 3.43/1.00  
% 3.43/1.00  fof(f34,plain,(
% 3.43/1.00    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 3.43/1.00    inference(nnf_transformation,[],[f27])).
% 3.43/1.00  
% 3.43/1.00  fof(f35,plain,(
% 3.43/1.00    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 3.43/1.00    inference(flattening,[],[f34])).
% 3.43/1.00  
% 3.43/1.00  fof(f58,plain,(
% 3.43/1.00    ( ! [X2,X0,X1] : (r1_tarski(X0,k2_tarski(X1,X2)) | k1_tarski(X1) != X0) )),
% 3.43/1.00    inference(cnf_transformation,[],[f35])).
% 3.43/1.00  
% 3.43/1.00  fof(f78,plain,(
% 3.43/1.00    ( ! [X2,X0,X1] : (r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) != X0) )),
% 3.43/1.00    inference(definition_unfolding,[],[f58,f71,f72])).
% 3.43/1.00  
% 3.43/1.00  fof(f90,plain,(
% 3.43/1.00    ( ! [X2,X1] : (r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) )),
% 3.43/1.00    inference(equality_resolution,[],[f78])).
% 3.43/1.00  
% 3.43/1.00  fof(f6,axiom,(
% 3.43/1.00    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 3.43/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/1.00  
% 3.43/1.00  fof(f25,plain,(
% 3.43/1.00    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 3.43/1.00    inference(ennf_transformation,[],[f6])).
% 3.43/1.00  
% 3.43/1.00  fof(f46,plain,(
% 3.43/1.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 3.43/1.00    inference(cnf_transformation,[],[f25])).
% 3.43/1.00  
% 3.43/1.00  cnf(c_0,plain,
% 3.43/1.00      ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
% 3.43/1.00      inference(cnf_transformation,[],[f38]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_15,plain,
% 3.43/1.00      ( r1_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
% 3.43/1.00      | X1 = X0 ),
% 3.43/1.00      inference(cnf_transformation,[],[f82]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_651,plain,
% 3.43/1.00      ( X0 = X1
% 3.43/1.00      | r1_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = iProver_top ),
% 3.43/1.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_8,plain,
% 3.43/1.00      ( ~ r1_xboole_0(X0,X1) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 ),
% 3.43/1.00      inference(cnf_transformation,[],[f75]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_657,plain,
% 3.43/1.00      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0
% 3.43/1.00      | r1_xboole_0(X0,X1) != iProver_top ),
% 3.43/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1205,plain,
% 3.43/1.00      ( X0 = X1
% 3.43/1.00      | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
% 3.43/1.00      inference(superposition,[status(thm)],[c_651,c_657]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_2598,plain,
% 3.43/1.00      ( X0 = X1
% 3.43/1.00      | k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
% 3.43/1.00      inference(superposition,[status(thm)],[c_0,c_1205]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_14,plain,
% 3.43/1.00      ( k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
% 3.43/1.00      inference(cnf_transformation,[],[f81]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_18,negated_conjecture,
% 3.43/1.00      ( k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1) != k3_tarski(k6_enumset1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1))) ),
% 3.43/1.00      inference(cnf_transformation,[],[f85]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1001,plain,
% 3.43/1.00      ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)))) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1) ),
% 3.43/1.00      inference(demodulation,[status(thm)],[c_14,c_18]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1207,plain,
% 3.43/1.00      ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)))) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1) ),
% 3.43/1.00      inference(superposition,[status(thm)],[c_0,c_1001]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_2767,plain,
% 3.43/1.00      ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)
% 3.43/1.00      | sK1 = sK0 ),
% 3.43/1.00      inference(superposition,[status(thm)],[c_2598,c_1207]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_16,plain,
% 3.43/1.00      ( X0 = X1
% 3.43/1.00      | k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X0) ),
% 3.43/1.00      inference(cnf_transformation,[],[f83]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_941,plain,
% 3.43/1.00      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,sK1)
% 3.43/1.00      | sK1 = X0 ),
% 3.43/1.00      inference(instantiation,[status(thm)],[c_16]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_947,plain,
% 3.43/1.00      ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)) = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)
% 3.43/1.00      | sK1 = sK0 ),
% 3.43/1.00      inference(instantiation,[status(thm)],[c_941]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_2883,plain,
% 3.43/1.00      ( sK1 = sK0 ),
% 3.43/1.00      inference(global_propositional_subsumption,[status(thm)],[c_2767,c_947]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_2886,plain,
% 3.43/1.00      ( k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k5_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)))) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
% 3.43/1.00      inference(demodulation,[status(thm)],[c_2883,c_1207]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_4,plain,( r1_tarski(X0,X0) ),inference(cnf_transformation,[],[f87]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_661,plain,
% 3.43/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 3.43/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_5,plain,
% 3.43/1.00      ( ~ r1_tarski(X0,X1) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0 ),
% 3.43/1.00      inference(cnf_transformation,[],[f73]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_660,plain,
% 3.43/1.00      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0
% 3.43/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 3.43/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1405,plain,
% 3.43/1.00      ( k5_xboole_0(X0,k3_xboole_0(X0,X0)) = k1_xboole_0 ),
% 3.43/1.00      inference(superposition,[status(thm)],[c_661,c_660]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1,plain,
% 3.43/1.00      ( k3_xboole_0(X0,X0) = X0 ),
% 3.43/1.00      inference(cnf_transformation,[],[f39]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1411,plain,
% 3.43/1.00      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 3.43/1.00      inference(light_normalisation,[status(thm)],[c_1405,c_1]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_17,plain,
% 3.43/1.00      ( k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
% 3.43/1.00      inference(cnf_transformation,[],[f84]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1005,plain,
% 3.43/1.00      ( k5_xboole_0(X0,k5_xboole_0(X0,k3_xboole_0(X0,X0))) = X0 ),
% 3.43/1.00      inference(superposition,[status(thm)],[c_14,c_17]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1007,plain,
% 3.43/1.00      ( k5_xboole_0(X0,k5_xboole_0(X0,X0)) = X0 ),
% 3.43/1.00      inference(light_normalisation,[status(thm)],[c_1005,c_1]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1415,plain,
% 3.43/1.00      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.43/1.00      inference(demodulation,[status(thm)],[c_1411,c_1007]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_11,plain,
% 3.43/1.00      ( r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
% 3.43/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_654,plain,
% 3.43/1.00      ( r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = iProver_top ),
% 3.43/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_7,plain,
% 3.43/1.00      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 3.43/1.00      inference(cnf_transformation,[],[f46]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_658,plain,
% 3.43/1.00      ( k3_xboole_0(X0,X1) = X0 | r1_tarski(X0,X1) != iProver_top ),
% 3.43/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_1973,plain,
% 3.43/1.00      ( k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
% 3.43/1.00      inference(superposition,[status(thm)],[c_654,c_658]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_2887,plain,
% 3.43/1.00      ( k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
% 3.43/1.00      inference(demodulation,[status(thm)],[c_2886,c_1411,c_1415,c_1973]) ).
% 3.43/1.00  
% 3.43/1.00  cnf(c_2888,plain,
% 3.43/1.00      ( $false ),
% 3.43/1.00      inference(equality_resolution_simp,[status(thm)],[c_2887]) ).
% 3.43/1.00  
% 3.43/1.00  
% 3.43/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.43/1.00  
% 3.43/1.00  ------                               Statistics
% 3.43/1.00  
% 3.43/1.00  ------ General
% 3.43/1.00  
% 3.43/1.00  abstr_ref_over_cycles:                  0
% 3.43/1.00  abstr_ref_under_cycles:                 0
% 3.43/1.00  gc_basic_clause_elim:                   0
% 3.43/1.00  forced_gc_time:                         0
% 3.43/1.00  parsing_time:                           0.008
% 3.43/1.00  unif_index_cands_time:                  0.
% 3.43/1.00  unif_index_add_time:                    0.
% 3.43/1.00  orderings_time:                         0.
% 3.43/1.00  out_proof_time:                         0.009
% 3.43/1.00  total_time:                             0.402
% 3.43/1.00  num_of_symbols:                         40
% 3.43/1.00  num_of_terms:                           2767
% 3.43/1.00  
% 3.43/1.00  ------ Preprocessing
% 3.43/1.00  
% 3.43/1.00  num_of_splits:                          0
% 3.43/1.00  num_of_split_atoms:                     0
% 3.43/1.00  num_of_reused_defs:                     0
% 3.43/1.00  num_eq_ax_congr_red:                    6
% 3.43/1.00  num_of_sem_filtered_clauses:            1
% 3.43/1.00  num_of_subtypes:                        0
% 3.43/1.00  monotx_restored_types:                  0
% 3.43/1.00  sat_num_of_epr_types:                   0
% 3.43/1.00  sat_num_of_non_cyclic_types:            0
% 3.43/1.00  sat_guarded_non_collapsed_types:        0
% 3.43/1.00  num_pure_diseq_elim:                    0
% 3.43/1.00  simp_replaced_by:                       0
% 3.43/1.00  res_preprocessed:                       87
% 3.43/1.00  prep_upred:                             0
% 3.43/1.00  prep_unflattend:                        4
% 3.43/1.00  smt_new_axioms:                         0
% 3.43/1.00  pred_elim_cands:                        2
% 3.43/1.00  pred_elim:                              0
% 3.43/1.00  pred_elim_cl:                           0
% 3.43/1.00  pred_elim_cycles:                       2
% 3.43/1.00  merged_defs:                            8
% 3.43/1.00  merged_defs_ncl:                        0
% 3.43/1.00  bin_hyper_res:                          8
% 3.43/1.00  prep_cycles:                            4
% 3.43/1.00  pred_elim_time:                         0.
% 3.43/1.00  splitting_time:                         0.
% 3.43/1.00  sem_filter_time:                        0.
% 3.43/1.00  monotx_time:                            0.
% 3.43/1.00  subtype_inf_time:                       0.
% 3.43/1.00  
% 3.43/1.00  ------ Problem properties
% 3.43/1.00  
% 3.43/1.00  clauses:                                18
% 3.43/1.00  conjectures:                            1
% 3.43/1.00  epr:                                    2
% 3.43/1.00  horn:                                   15
% 3.43/1.00  ground:                                 1
% 3.43/1.00  unary:                                  10
% 3.43/1.00  binary:                                 6
% 3.43/1.00  lits:                                   30
% 3.43/1.00  lits_eq:                                17
% 3.43/1.00  fd_pure:                                0
% 3.43/1.00  fd_pseudo:                              0
% 3.43/1.00  fd_cond:                                0
% 3.43/1.00  fd_pseudo_cond:                         4
% 3.43/1.00  ac_symbols:                             0
% 3.43/1.00  
% 3.43/1.00  ------ Propositional Solver
% 3.43/1.00  
% 3.43/1.00  prop_solver_calls:                      27
% 3.43/1.00  prop_fast_solver_calls:                 410
% 3.43/1.00  smt_solver_calls:                       0
% 3.43/1.00  smt_fast_solver_calls:                  0
% 3.43/1.00  prop_num_of_clauses:                    836
% 3.43/1.00  prop_preprocess_simplified:             3545
% 3.43/1.00  prop_fo_subsumed:                       1
% 3.43/1.00  prop_solver_time:                       0.
% 3.43/1.00  smt_solver_time:                        0.
% 3.43/1.00  smt_fast_solver_time:                   0.
% 3.43/1.00  prop_fast_solver_time:                  0.
% 3.43/1.00  prop_unsat_core_time:                   0.
% 3.43/1.00  
% 3.43/1.00  ------ QBF
% 3.43/1.00  
% 3.43/1.00  qbf_q_res:                              0
% 3.43/1.00  qbf_num_tautologies:                    0
% 3.43/1.00  qbf_prep_cycles:                        0
% 3.43/1.00  
% 3.43/1.00  ------ BMC1
% 3.43/1.00  
% 3.43/1.00  bmc1_current_bound:                     -1
% 3.43/1.00  bmc1_last_solved_bound:                 -1
% 3.43/1.00  bmc1_unsat_core_size:                   -1
% 3.43/1.00  bmc1_unsat_core_parents_size:           -1
% 3.43/1.00  bmc1_merge_next_fun:                    0
% 3.43/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.43/1.00  
% 3.43/1.00  ------ Instantiation
% 3.43/1.00  
% 3.43/1.00  inst_num_of_clauses:                    289
% 3.43/1.00  inst_num_in_passive:                    109
% 3.43/1.00  inst_num_in_active:                     127
% 3.43/1.00  inst_num_in_unprocessed:                53
% 3.43/1.00  inst_num_of_loops:                      190
% 3.43/1.00  inst_num_of_learning_restarts:          0
% 3.43/1.00  inst_num_moves_active_passive:          61
% 3.43/1.00  inst_lit_activity:                      0
% 3.43/1.00  inst_lit_activity_moves:                0
% 3.43/1.00  inst_num_tautologies:                   0
% 3.43/1.00  inst_num_prop_implied:                  0
% 3.43/1.00  inst_num_existing_simplified:           0
% 3.43/1.00  inst_num_eq_res_simplified:             0
% 3.43/1.00  inst_num_child_elim:                    0
% 3.43/1.00  inst_num_of_dismatching_blockings:      246
% 3.43/1.00  inst_num_of_non_proper_insts:           330
% 3.43/1.00  inst_num_of_duplicates:                 0
% 3.43/1.00  inst_inst_num_from_inst_to_res:         0
% 3.43/1.00  inst_dismatching_checking_time:         0.
% 3.43/1.00  
% 3.43/1.00  ------ Resolution
% 3.43/1.00  
% 3.43/1.00  res_num_of_clauses:                     0
% 3.43/1.00  res_num_in_passive:                     0
% 3.43/1.00  res_num_in_active:                      0
% 3.43/1.00  res_num_of_loops:                       91
% 3.43/1.00  res_forward_subset_subsumed:            63
% 3.43/1.00  res_backward_subset_subsumed:           0
% 3.43/1.00  res_forward_subsumed:                   0
% 3.43/1.00  res_backward_subsumed:                  0
% 3.43/1.00  res_forward_subsumption_resolution:     0
% 3.43/1.00  res_backward_subsumption_resolution:    0
% 3.43/1.00  res_clause_to_clause_subsumption:       164
% 3.43/1.00  res_orphan_elimination:                 0
% 3.43/1.00  res_tautology_del:                      35
% 3.43/1.00  res_num_eq_res_simplified:              0
% 3.43/1.00  res_num_sel_changes:                    0
% 3.43/1.00  res_moves_from_active_to_pass:          0
% 3.43/1.00  
% 3.43/1.00  ------ Superposition
% 3.43/1.00  
% 3.43/1.00  sup_time_total:                         0.
% 3.43/1.00  sup_time_generating:                    0.
% 3.43/1.00  sup_time_sim_full:                      0.
% 3.43/1.00  sup_time_sim_immed:                     0.
% 3.43/1.00  
% 3.43/1.00  sup_num_of_clauses:                     45
% 3.43/1.00  sup_num_in_active:                      33
% 3.43/1.00  sup_num_in_passive:                     12
% 3.43/1.00  sup_num_of_loops:                       37
% 3.43/1.00  sup_fw_superposition:                   62
% 3.43/1.00  sup_bw_superposition:                   61
% 3.43/1.00  sup_immediate_simplified:               24
% 3.43/1.00  sup_given_eliminated:                   0
% 3.43/1.00  comparisons_done:                       0
% 3.43/1.00  comparisons_avoided:                    9
% 3.43/1.00  
% 3.43/1.00  ------ Simplifications
% 3.43/1.00  
% 3.43/1.00  
% 3.43/1.00  sim_fw_subset_subsumed:                 4
% 3.43/1.00  sim_bw_subset_subsumed:                 0
% 3.43/1.00  sim_fw_subsumed:                        4
% 3.43/1.00  sim_bw_subsumed:                        1
% 3.43/1.00  sim_fw_subsumption_res:                 0
% 3.43/1.00  sim_bw_subsumption_res:                 0
% 3.43/1.00  sim_tautology_del:                      0
% 3.43/1.00  sim_eq_tautology_del:                   17
% 3.43/1.00  sim_eq_res_simp:                        0
% 3.43/1.00  sim_fw_demodulated:                     6
% 3.43/1.00  sim_bw_demodulated:                     4
% 3.43/1.00  sim_light_normalised:                   11
% 3.43/1.00  sim_joinable_taut:                      0
% 3.43/1.00  sim_joinable_simp:                      0
% 3.43/1.00  sim_ac_normalised:                      0
% 3.43/1.00  sim_smt_subsumption:                    0
% 3.43/1.00  
%------------------------------------------------------------------------------
