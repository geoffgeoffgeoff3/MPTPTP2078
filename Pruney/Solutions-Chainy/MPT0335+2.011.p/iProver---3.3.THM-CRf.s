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
% DateTime   : Thu Dec  3 11:38:26 EST 2020

% Result     : Theorem 3.63s
% Output     : CNFRefutation 3.63s
% Verified   : 
% Statistics : Number of formulae       :   84 ( 244 expanded)
%              Number of clauses        :   38 (  55 expanded)
%              Number of leaves         :   14 (  69 expanded)
%              Depth                    :   19
%              Number of atoms          :  141 ( 425 expanded)
%              Number of equality atoms :   99 ( 301 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    8 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f8,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f45,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f24,f34,f34])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => k2_xboole_0(k1_tarski(X0),X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(k1_tarski(X0),X1) = X1
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f38,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(k1_tarski(X0),X1) = X1
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f9,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f43,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f36,f37])).

fof(f44,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f35,f43])).

fof(f50,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = X1
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f38,f44])).

fof(f13,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(X3,X0)
        & k3_xboole_0(X1,X2) = k1_tarski(X3)
        & r1_tarski(X0,X1) )
     => k3_xboole_0(X0,X2) = k1_tarski(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( r2_hidden(X3,X0)
          & k3_xboole_0(X1,X2) = k1_tarski(X3)
          & r1_tarski(X0,X1) )
       => k3_xboole_0(X0,X2) = k1_tarski(X3) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f17,plain,(
    ? [X0,X1,X2,X3] :
      ( k3_xboole_0(X0,X2) != k1_tarski(X3)
      & r2_hidden(X3,X0)
      & k3_xboole_0(X1,X2) = k1_tarski(X3)
      & r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f18,plain,(
    ? [X0,X1,X2,X3] :
      ( k3_xboole_0(X0,X2) != k1_tarski(X3)
      & r2_hidden(X3,X0)
      & k3_xboole_0(X1,X2) = k1_tarski(X3)
      & r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f17])).

fof(f22,plain,
    ( ? [X0,X1,X2,X3] :
        ( k3_xboole_0(X0,X2) != k1_tarski(X3)
        & r2_hidden(X3,X0)
        & k3_xboole_0(X1,X2) = k1_tarski(X3)
        & r1_tarski(X0,X1) )
   => ( k3_xboole_0(sK0,sK2) != k1_tarski(sK3)
      & r2_hidden(sK3,sK0)
      & k3_xboole_0(sK1,sK2) = k1_tarski(sK3)
      & r1_tarski(sK0,sK1) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( k3_xboole_0(sK0,sK2) != k1_tarski(sK3)
    & r2_hidden(sK3,sK0)
    & k3_xboole_0(sK1,sK2) = k1_tarski(sK3)
    & r1_tarski(sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f18,f22])).

fof(f41,plain,(
    r2_hidden(sK3,sK0) ),
    inference(cnf_transformation,[],[f23])).

fof(f40,plain,(
    k3_xboole_0(sK1,sK2) = k1_tarski(sK3) ),
    inference(cnf_transformation,[],[f23])).

fof(f52,plain,(
    k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) = k2_enumset1(sK3,sK3,sK3,sK3) ),
    inference(definition_unfolding,[],[f40,f34,f44])).

fof(f6,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,k2_xboole_0(X0,X1)) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k3_xboole_0(X0,k2_xboole_0(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f48,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,k2_xboole_0(X0,X1))) = X0 ),
    inference(definition_unfolding,[],[f32,f34])).

fof(f5,axiom,(
    ! [X0,X1,X2] : k3_xboole_0(X0,k3_xboole_0(X1,X2)) = k3_xboole_0(k3_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X2,X0,X1] : k3_xboole_0(X0,k3_xboole_0(X1,X2)) = k3_xboole_0(k3_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f5])).

fof(f47,plain,(
    ! [X2,X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2)))) = k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2)) ),
    inference(definition_unfolding,[],[f31,f34,f34,f34,f34])).

fof(f7,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f49,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f33,f34])).

fof(f39,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f23])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f30,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f19])).

fof(f26,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f20])).

fof(f54,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f26])).

fof(f42,plain,(
    k3_xboole_0(sK0,sK2) != k1_tarski(sK3) ),
    inference(cnf_transformation,[],[f23])).

fof(f51,plain,(
    k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != k2_enumset1(sK3,sK3,sK3,sK3) ),
    inference(definition_unfolding,[],[f42,f34,f44])).

cnf(c_0,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_10,plain,
    ( ~ r2_hidden(X0,X1)
    | k2_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = X1 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_12,negated_conjecture,
    ( r2_hidden(sK3,sK0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_125,plain,
    ( k2_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = X1
    | sK3 != X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_12])).

cnf(c_126,plain,
    ( k2_xboole_0(k2_enumset1(sK3,sK3,sK3,sK3),sK0) = sK0 ),
    inference(unflattening,[status(thm)],[c_125])).

cnf(c_13,negated_conjecture,
    ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) = k2_enumset1(sK3,sK3,sK3,sK3) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_494,plain,
    ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0) = sK0 ),
    inference(light_normalisation,[status(thm)],[c_126,c_13,c_126])).

cnf(c_8,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k2_xboole_0(X0,X1))) = X0 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_675,plain,
    ( k4_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),k4_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0)) = k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) ),
    inference(superposition,[status(thm)],[c_494,c_8])).

cnf(c_750,plain,
    ( k4_xboole_0(k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)),k4_xboole_0(k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)),sK0)) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)) ),
    inference(demodulation,[status(thm)],[c_0,c_675])).

cnf(c_7,plain,
    ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2)) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2)))) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1125,plain,
    ( k4_xboole_0(sK2,k4_xboole_0(sK2,k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)))) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)) ),
    inference(superposition,[status(thm)],[c_750,c_7])).

cnf(c_9,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1300,plain,
    ( k4_xboole_0(sK2,k4_xboole_0(sK2,k4_xboole_0(sK2,sK1))) = k4_xboole_0(sK2,k4_xboole_0(sK1,k4_xboole_0(sK1,sK0))) ),
    inference(superposition,[status(thm)],[c_1125,c_9])).

cnf(c_1301,plain,
    ( k4_xboole_0(sK2,k4_xboole_0(sK1,k4_xboole_0(sK1,sK0))) = k4_xboole_0(sK2,sK1) ),
    inference(demodulation,[status(thm)],[c_1300,c_9])).

cnf(c_1692,plain,
    ( k4_xboole_0(sK2,k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) = k4_xboole_0(sK2,sK1) ),
    inference(superposition,[status(thm)],[c_0,c_1301])).

cnf(c_14,negated_conjecture,
    ( r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_358,plain,
    ( r1_tarski(sK0,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_5,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_360,plain,
    ( k4_xboole_0(X0,X1) = k1_xboole_0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1386,plain,
    ( k4_xboole_0(sK0,sK1) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_358,c_360])).

cnf(c_1699,plain,
    ( k4_xboole_0(sK2,k4_xboole_0(sK0,k1_xboole_0)) = k4_xboole_0(sK2,sK1) ),
    inference(light_normalisation,[status(thm)],[c_1692,c_1386])).

cnf(c_818,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k4_xboole_0(X0,X0) ),
    inference(superposition,[status(thm)],[c_8,c_9])).

cnf(c_4,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_361,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1385,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_361,c_360])).

cnf(c_1561,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_818,c_818,c_1385])).

cnf(c_1563,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(demodulation,[status(thm)],[c_1561,c_8])).

cnf(c_1700,plain,
    ( k4_xboole_0(sK2,sK1) = k4_xboole_0(sK2,sK0) ),
    inference(demodulation,[status(thm)],[c_1699,c_1563])).

cnf(c_753,plain,
    ( k2_enumset1(sK3,sK3,sK3,sK3) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)) ),
    inference(demodulation,[status(thm)],[c_0,c_13])).

cnf(c_2040,plain,
    ( k2_enumset1(sK3,sK3,sK3,sK3) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK0)) ),
    inference(demodulation,[status(thm)],[c_1700,c_753])).

cnf(c_720,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK0)) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_194,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_434,plain,
    ( k2_enumset1(X0,X1,X2,X3) != X4
    | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != X4
    | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k2_enumset1(X0,X1,X2,X3) ),
    inference(instantiation,[status(thm)],[c_194])).

cnf(c_538,plain,
    ( k2_enumset1(X0,X1,X2,X3) != k4_xboole_0(sK2,k4_xboole_0(sK2,sK0))
    | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k2_enumset1(X0,X1,X2,X3)
    | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != k4_xboole_0(sK2,k4_xboole_0(sK2,sK0)) ),
    inference(instantiation,[status(thm)],[c_434])).

cnf(c_539,plain,
    ( k2_enumset1(sK3,sK3,sK3,sK3) != k4_xboole_0(sK2,k4_xboole_0(sK2,sK0))
    | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k2_enumset1(sK3,sK3,sK3,sK3)
    | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != k4_xboole_0(sK2,k4_xboole_0(sK2,sK0)) ),
    inference(instantiation,[status(thm)],[c_538])).

cnf(c_11,negated_conjecture,
    ( k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != k2_enumset1(sK3,sK3,sK3,sK3) ),
    inference(cnf_transformation,[],[f51])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2040,c_720,c_539,c_11])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:18:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.63/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.63/0.99  
% 3.63/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.63/0.99  
% 3.63/0.99  ------  iProver source info
% 3.63/0.99  
% 3.63/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.63/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.63/0.99  git: non_committed_changes: false
% 3.63/0.99  git: last_make_outside_of_git: false
% 3.63/0.99  
% 3.63/0.99  ------ 
% 3.63/0.99  
% 3.63/0.99  ------ Input Options
% 3.63/0.99  
% 3.63/0.99  --out_options                           all
% 3.63/0.99  --tptp_safe_out                         true
% 3.63/0.99  --problem_path                          ""
% 3.63/0.99  --include_path                          ""
% 3.63/0.99  --clausifier                            res/vclausify_rel
% 3.63/0.99  --clausifier_options                    ""
% 3.63/0.99  --stdin                                 false
% 3.63/0.99  --stats_out                             all
% 3.63/0.99  
% 3.63/0.99  ------ General Options
% 3.63/0.99  
% 3.63/0.99  --fof                                   false
% 3.63/0.99  --time_out_real                         305.
% 3.63/0.99  --time_out_virtual                      -1.
% 3.63/0.99  --symbol_type_check                     false
% 3.63/0.99  --clausify_out                          false
% 3.63/0.99  --sig_cnt_out                           false
% 3.63/0.99  --trig_cnt_out                          false
% 3.63/0.99  --trig_cnt_out_tolerance                1.
% 3.63/0.99  --trig_cnt_out_sk_spl                   false
% 3.63/0.99  --abstr_cl_out                          false
% 3.63/0.99  
% 3.63/0.99  ------ Global Options
% 3.63/0.99  
% 3.63/0.99  --schedule                              default
% 3.63/0.99  --add_important_lit                     false
% 3.63/0.99  --prop_solver_per_cl                    1000
% 3.63/0.99  --min_unsat_core                        false
% 3.63/0.99  --soft_assumptions                      false
% 3.63/0.99  --soft_lemma_size                       3
% 3.63/0.99  --prop_impl_unit_size                   0
% 3.63/0.99  --prop_impl_unit                        []
% 3.63/0.99  --share_sel_clauses                     true
% 3.63/0.99  --reset_solvers                         false
% 3.63/0.99  --bc_imp_inh                            [conj_cone]
% 3.63/0.99  --conj_cone_tolerance                   3.
% 3.63/0.99  --extra_neg_conj                        none
% 3.63/0.99  --large_theory_mode                     true
% 3.63/0.99  --prolific_symb_bound                   200
% 3.63/0.99  --lt_threshold                          2000
% 3.63/0.99  --clause_weak_htbl                      true
% 3.63/0.99  --gc_record_bc_elim                     false
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing Options
% 3.63/0.99  
% 3.63/0.99  --preprocessing_flag                    true
% 3.63/0.99  --time_out_prep_mult                    0.1
% 3.63/0.99  --splitting_mode                        input
% 3.63/0.99  --splitting_grd                         true
% 3.63/0.99  --splitting_cvd                         false
% 3.63/0.99  --splitting_cvd_svl                     false
% 3.63/0.99  --splitting_nvd                         32
% 3.63/0.99  --sub_typing                            true
% 3.63/0.99  --prep_gs_sim                           true
% 3.63/0.99  --prep_unflatten                        true
% 3.63/0.99  --prep_res_sim                          true
% 3.63/0.99  --prep_upred                            true
% 3.63/0.99  --prep_sem_filter                       exhaustive
% 3.63/0.99  --prep_sem_filter_out                   false
% 3.63/0.99  --pred_elim                             true
% 3.63/0.99  --res_sim_input                         true
% 3.63/0.99  --eq_ax_congr_red                       true
% 3.63/0.99  --pure_diseq_elim                       true
% 3.63/0.99  --brand_transform                       false
% 3.63/0.99  --non_eq_to_eq                          false
% 3.63/0.99  --prep_def_merge                        true
% 3.63/0.99  --prep_def_merge_prop_impl              false
% 3.63/0.99  --prep_def_merge_mbd                    true
% 3.63/0.99  --prep_def_merge_tr_red                 false
% 3.63/0.99  --prep_def_merge_tr_cl                  false
% 3.63/0.99  --smt_preprocessing                     true
% 3.63/0.99  --smt_ac_axioms                         fast
% 3.63/0.99  --preprocessed_out                      false
% 3.63/0.99  --preprocessed_stats                    false
% 3.63/0.99  
% 3.63/0.99  ------ Abstraction refinement Options
% 3.63/0.99  
% 3.63/0.99  --abstr_ref                             []
% 3.63/0.99  --abstr_ref_prep                        false
% 3.63/0.99  --abstr_ref_until_sat                   false
% 3.63/0.99  --abstr_ref_sig_restrict                funpre
% 3.63/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.63/0.99  --abstr_ref_under                       []
% 3.63/0.99  
% 3.63/0.99  ------ SAT Options
% 3.63/0.99  
% 3.63/0.99  --sat_mode                              false
% 3.63/0.99  --sat_fm_restart_options                ""
% 3.63/0.99  --sat_gr_def                            false
% 3.63/0.99  --sat_epr_types                         true
% 3.63/0.99  --sat_non_cyclic_types                  false
% 3.63/0.99  --sat_finite_models                     false
% 3.63/0.99  --sat_fm_lemmas                         false
% 3.63/0.99  --sat_fm_prep                           false
% 3.63/0.99  --sat_fm_uc_incr                        true
% 3.63/0.99  --sat_out_model                         small
% 3.63/0.99  --sat_out_clauses                       false
% 3.63/0.99  
% 3.63/0.99  ------ QBF Options
% 3.63/0.99  
% 3.63/0.99  --qbf_mode                              false
% 3.63/0.99  --qbf_elim_univ                         false
% 3.63/0.99  --qbf_dom_inst                          none
% 3.63/0.99  --qbf_dom_pre_inst                      false
% 3.63/0.99  --qbf_sk_in                             false
% 3.63/0.99  --qbf_pred_elim                         true
% 3.63/0.99  --qbf_split                             512
% 3.63/0.99  
% 3.63/0.99  ------ BMC1 Options
% 3.63/0.99  
% 3.63/0.99  --bmc1_incremental                      false
% 3.63/0.99  --bmc1_axioms                           reachable_all
% 3.63/0.99  --bmc1_min_bound                        0
% 3.63/0.99  --bmc1_max_bound                        -1
% 3.63/0.99  --bmc1_max_bound_default                -1
% 3.63/0.99  --bmc1_symbol_reachability              true
% 3.63/0.99  --bmc1_property_lemmas                  false
% 3.63/0.99  --bmc1_k_induction                      false
% 3.63/0.99  --bmc1_non_equiv_states                 false
% 3.63/0.99  --bmc1_deadlock                         false
% 3.63/0.99  --bmc1_ucm                              false
% 3.63/0.99  --bmc1_add_unsat_core                   none
% 3.63/0.99  --bmc1_unsat_core_children              false
% 3.63/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.63/0.99  --bmc1_out_stat                         full
% 3.63/0.99  --bmc1_ground_init                      false
% 3.63/0.99  --bmc1_pre_inst_next_state              false
% 3.63/0.99  --bmc1_pre_inst_state                   false
% 3.63/0.99  --bmc1_pre_inst_reach_state             false
% 3.63/0.99  --bmc1_out_unsat_core                   false
% 3.63/0.99  --bmc1_aig_witness_out                  false
% 3.63/0.99  --bmc1_verbose                          false
% 3.63/0.99  --bmc1_dump_clauses_tptp                false
% 3.63/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.63/0.99  --bmc1_dump_file                        -
% 3.63/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.63/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.63/0.99  --bmc1_ucm_extend_mode                  1
% 3.63/0.99  --bmc1_ucm_init_mode                    2
% 3.63/0.99  --bmc1_ucm_cone_mode                    none
% 3.63/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.63/0.99  --bmc1_ucm_relax_model                  4
% 3.63/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.63/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.63/0.99  --bmc1_ucm_layered_model                none
% 3.63/0.99  --bmc1_ucm_max_lemma_size               10
% 3.63/0.99  
% 3.63/0.99  ------ AIG Options
% 3.63/0.99  
% 3.63/0.99  --aig_mode                              false
% 3.63/0.99  
% 3.63/0.99  ------ Instantiation Options
% 3.63/0.99  
% 3.63/0.99  --instantiation_flag                    true
% 3.63/0.99  --inst_sos_flag                         true
% 3.63/0.99  --inst_sos_phase                        true
% 3.63/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.63/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.63/0.99  --inst_lit_sel_side                     num_symb
% 3.63/0.99  --inst_solver_per_active                1400
% 3.63/0.99  --inst_solver_calls_frac                1.
% 3.63/0.99  --inst_passive_queue_type               priority_queues
% 3.63/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.63/0.99  --inst_passive_queues_freq              [25;2]
% 3.63/0.99  --inst_dismatching                      true
% 3.63/0.99  --inst_eager_unprocessed_to_passive     true
% 3.63/0.99  --inst_prop_sim_given                   true
% 3.63/0.99  --inst_prop_sim_new                     false
% 3.63/0.99  --inst_subs_new                         false
% 3.63/0.99  --inst_eq_res_simp                      false
% 3.63/0.99  --inst_subs_given                       false
% 3.63/0.99  --inst_orphan_elimination               true
% 3.63/0.99  --inst_learning_loop_flag               true
% 3.63/0.99  --inst_learning_start                   3000
% 3.63/0.99  --inst_learning_factor                  2
% 3.63/0.99  --inst_start_prop_sim_after_learn       3
% 3.63/0.99  --inst_sel_renew                        solver
% 3.63/0.99  --inst_lit_activity_flag                true
% 3.63/0.99  --inst_restr_to_given                   false
% 3.63/0.99  --inst_activity_threshold               500
% 3.63/0.99  --inst_out_proof                        true
% 3.63/0.99  
% 3.63/0.99  ------ Resolution Options
% 3.63/0.99  
% 3.63/0.99  --resolution_flag                       true
% 3.63/0.99  --res_lit_sel                           adaptive
% 3.63/0.99  --res_lit_sel_side                      none
% 3.63/0.99  --res_ordering                          kbo
% 3.63/0.99  --res_to_prop_solver                    active
% 3.63/0.99  --res_prop_simpl_new                    false
% 3.63/0.99  --res_prop_simpl_given                  true
% 3.63/0.99  --res_passive_queue_type                priority_queues
% 3.63/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.63/0.99  --res_passive_queues_freq               [15;5]
% 3.63/0.99  --res_forward_subs                      full
% 3.63/0.99  --res_backward_subs                     full
% 3.63/0.99  --res_forward_subs_resolution           true
% 3.63/0.99  --res_backward_subs_resolution          true
% 3.63/0.99  --res_orphan_elimination                true
% 3.63/0.99  --res_time_limit                        2.
% 3.63/0.99  --res_out_proof                         true
% 3.63/0.99  
% 3.63/0.99  ------ Superposition Options
% 3.63/0.99  
% 3.63/0.99  --superposition_flag                    true
% 3.63/0.99  --sup_passive_queue_type                priority_queues
% 3.63/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.63/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.63/0.99  --demod_completeness_check              fast
% 3.63/0.99  --demod_use_ground                      true
% 3.63/0.99  --sup_to_prop_solver                    passive
% 3.63/0.99  --sup_prop_simpl_new                    true
% 3.63/0.99  --sup_prop_simpl_given                  true
% 3.63/0.99  --sup_fun_splitting                     true
% 3.63/0.99  --sup_smt_interval                      50000
% 3.63/0.99  
% 3.63/0.99  ------ Superposition Simplification Setup
% 3.63/0.99  
% 3.63/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.63/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.63/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.63/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.63/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.63/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.63/0.99  --sup_immed_triv                        [TrivRules]
% 3.63/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_immed_bw_main                     []
% 3.63/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.63/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.63/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_input_bw                          []
% 3.63/0.99  
% 3.63/0.99  ------ Combination Options
% 3.63/0.99  
% 3.63/0.99  --comb_res_mult                         3
% 3.63/0.99  --comb_sup_mult                         2
% 3.63/0.99  --comb_inst_mult                        10
% 3.63/0.99  
% 3.63/0.99  ------ Debug Options
% 3.63/0.99  
% 3.63/0.99  --dbg_backtrace                         false
% 3.63/0.99  --dbg_dump_prop_clauses                 false
% 3.63/0.99  --dbg_dump_prop_clauses_file            -
% 3.63/0.99  --dbg_out_stat                          false
% 3.63/0.99  ------ Parsing...
% 3.63/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.63/0.99  ------ Proving...
% 3.63/0.99  ------ Problem Properties 
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  clauses                                 13
% 3.63/0.99  conjectures                             3
% 3.63/0.99  EPR                                     3
% 3.63/0.99  Horn                                    13
% 3.63/0.99  unary                                   10
% 3.63/0.99  binary                                  2
% 3.63/0.99  lits                                    17
% 3.63/0.99  lits eq                                 11
% 3.63/0.99  fd_pure                                 0
% 3.63/0.99  fd_pseudo                               0
% 3.63/0.99  fd_cond                                 0
% 3.63/0.99  fd_pseudo_cond                          1
% 3.63/0.99  AC symbols                              0
% 3.63/0.99  
% 3.63/0.99  ------ Schedule dynamic 5 is on 
% 3.63/0.99  
% 3.63/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  ------ 
% 3.63/0.99  Current options:
% 3.63/0.99  ------ 
% 3.63/0.99  
% 3.63/0.99  ------ Input Options
% 3.63/0.99  
% 3.63/0.99  --out_options                           all
% 3.63/0.99  --tptp_safe_out                         true
% 3.63/0.99  --problem_path                          ""
% 3.63/0.99  --include_path                          ""
% 3.63/0.99  --clausifier                            res/vclausify_rel
% 3.63/0.99  --clausifier_options                    ""
% 3.63/0.99  --stdin                                 false
% 3.63/0.99  --stats_out                             all
% 3.63/0.99  
% 3.63/0.99  ------ General Options
% 3.63/0.99  
% 3.63/0.99  --fof                                   false
% 3.63/0.99  --time_out_real                         305.
% 3.63/0.99  --time_out_virtual                      -1.
% 3.63/0.99  --symbol_type_check                     false
% 3.63/0.99  --clausify_out                          false
% 3.63/0.99  --sig_cnt_out                           false
% 3.63/0.99  --trig_cnt_out                          false
% 3.63/0.99  --trig_cnt_out_tolerance                1.
% 3.63/0.99  --trig_cnt_out_sk_spl                   false
% 3.63/0.99  --abstr_cl_out                          false
% 3.63/0.99  
% 3.63/0.99  ------ Global Options
% 3.63/0.99  
% 3.63/0.99  --schedule                              default
% 3.63/0.99  --add_important_lit                     false
% 3.63/0.99  --prop_solver_per_cl                    1000
% 3.63/0.99  --min_unsat_core                        false
% 3.63/0.99  --soft_assumptions                      false
% 3.63/0.99  --soft_lemma_size                       3
% 3.63/0.99  --prop_impl_unit_size                   0
% 3.63/0.99  --prop_impl_unit                        []
% 3.63/0.99  --share_sel_clauses                     true
% 3.63/0.99  --reset_solvers                         false
% 3.63/0.99  --bc_imp_inh                            [conj_cone]
% 3.63/0.99  --conj_cone_tolerance                   3.
% 3.63/0.99  --extra_neg_conj                        none
% 3.63/0.99  --large_theory_mode                     true
% 3.63/0.99  --prolific_symb_bound                   200
% 3.63/0.99  --lt_threshold                          2000
% 3.63/0.99  --clause_weak_htbl                      true
% 3.63/0.99  --gc_record_bc_elim                     false
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing Options
% 3.63/0.99  
% 3.63/0.99  --preprocessing_flag                    true
% 3.63/0.99  --time_out_prep_mult                    0.1
% 3.63/0.99  --splitting_mode                        input
% 3.63/0.99  --splitting_grd                         true
% 3.63/0.99  --splitting_cvd                         false
% 3.63/0.99  --splitting_cvd_svl                     false
% 3.63/0.99  --splitting_nvd                         32
% 3.63/0.99  --sub_typing                            true
% 3.63/0.99  --prep_gs_sim                           true
% 3.63/0.99  --prep_unflatten                        true
% 3.63/0.99  --prep_res_sim                          true
% 3.63/0.99  --prep_upred                            true
% 3.63/0.99  --prep_sem_filter                       exhaustive
% 3.63/0.99  --prep_sem_filter_out                   false
% 3.63/0.99  --pred_elim                             true
% 3.63/0.99  --res_sim_input                         true
% 3.63/0.99  --eq_ax_congr_red                       true
% 3.63/0.99  --pure_diseq_elim                       true
% 3.63/0.99  --brand_transform                       false
% 3.63/0.99  --non_eq_to_eq                          false
% 3.63/0.99  --prep_def_merge                        true
% 3.63/0.99  --prep_def_merge_prop_impl              false
% 3.63/0.99  --prep_def_merge_mbd                    true
% 3.63/0.99  --prep_def_merge_tr_red                 false
% 3.63/0.99  --prep_def_merge_tr_cl                  false
% 3.63/0.99  --smt_preprocessing                     true
% 3.63/0.99  --smt_ac_axioms                         fast
% 3.63/0.99  --preprocessed_out                      false
% 3.63/0.99  --preprocessed_stats                    false
% 3.63/0.99  
% 3.63/0.99  ------ Abstraction refinement Options
% 3.63/0.99  
% 3.63/0.99  --abstr_ref                             []
% 3.63/0.99  --abstr_ref_prep                        false
% 3.63/0.99  --abstr_ref_until_sat                   false
% 3.63/0.99  --abstr_ref_sig_restrict                funpre
% 3.63/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.63/0.99  --abstr_ref_under                       []
% 3.63/0.99  
% 3.63/0.99  ------ SAT Options
% 3.63/0.99  
% 3.63/0.99  --sat_mode                              false
% 3.63/0.99  --sat_fm_restart_options                ""
% 3.63/0.99  --sat_gr_def                            false
% 3.63/0.99  --sat_epr_types                         true
% 3.63/0.99  --sat_non_cyclic_types                  false
% 3.63/0.99  --sat_finite_models                     false
% 3.63/0.99  --sat_fm_lemmas                         false
% 3.63/0.99  --sat_fm_prep                           false
% 3.63/0.99  --sat_fm_uc_incr                        true
% 3.63/0.99  --sat_out_model                         small
% 3.63/0.99  --sat_out_clauses                       false
% 3.63/0.99  
% 3.63/0.99  ------ QBF Options
% 3.63/0.99  
% 3.63/0.99  --qbf_mode                              false
% 3.63/0.99  --qbf_elim_univ                         false
% 3.63/0.99  --qbf_dom_inst                          none
% 3.63/0.99  --qbf_dom_pre_inst                      false
% 3.63/0.99  --qbf_sk_in                             false
% 3.63/0.99  --qbf_pred_elim                         true
% 3.63/0.99  --qbf_split                             512
% 3.63/0.99  
% 3.63/0.99  ------ BMC1 Options
% 3.63/0.99  
% 3.63/0.99  --bmc1_incremental                      false
% 3.63/0.99  --bmc1_axioms                           reachable_all
% 3.63/0.99  --bmc1_min_bound                        0
% 3.63/0.99  --bmc1_max_bound                        -1
% 3.63/0.99  --bmc1_max_bound_default                -1
% 3.63/0.99  --bmc1_symbol_reachability              true
% 3.63/0.99  --bmc1_property_lemmas                  false
% 3.63/0.99  --bmc1_k_induction                      false
% 3.63/0.99  --bmc1_non_equiv_states                 false
% 3.63/0.99  --bmc1_deadlock                         false
% 3.63/0.99  --bmc1_ucm                              false
% 3.63/0.99  --bmc1_add_unsat_core                   none
% 3.63/0.99  --bmc1_unsat_core_children              false
% 3.63/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.63/0.99  --bmc1_out_stat                         full
% 3.63/0.99  --bmc1_ground_init                      false
% 3.63/0.99  --bmc1_pre_inst_next_state              false
% 3.63/0.99  --bmc1_pre_inst_state                   false
% 3.63/0.99  --bmc1_pre_inst_reach_state             false
% 3.63/0.99  --bmc1_out_unsat_core                   false
% 3.63/0.99  --bmc1_aig_witness_out                  false
% 3.63/0.99  --bmc1_verbose                          false
% 3.63/0.99  --bmc1_dump_clauses_tptp                false
% 3.63/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.63/0.99  --bmc1_dump_file                        -
% 3.63/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.63/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.63/0.99  --bmc1_ucm_extend_mode                  1
% 3.63/0.99  --bmc1_ucm_init_mode                    2
% 3.63/0.99  --bmc1_ucm_cone_mode                    none
% 3.63/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.63/0.99  --bmc1_ucm_relax_model                  4
% 3.63/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.63/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.63/0.99  --bmc1_ucm_layered_model                none
% 3.63/0.99  --bmc1_ucm_max_lemma_size               10
% 3.63/0.99  
% 3.63/0.99  ------ AIG Options
% 3.63/0.99  
% 3.63/0.99  --aig_mode                              false
% 3.63/0.99  
% 3.63/0.99  ------ Instantiation Options
% 3.63/0.99  
% 3.63/0.99  --instantiation_flag                    true
% 3.63/0.99  --inst_sos_flag                         true
% 3.63/0.99  --inst_sos_phase                        true
% 3.63/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.63/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.63/0.99  --inst_lit_sel_side                     none
% 3.63/0.99  --inst_solver_per_active                1400
% 3.63/0.99  --inst_solver_calls_frac                1.
% 3.63/0.99  --inst_passive_queue_type               priority_queues
% 3.63/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.63/0.99  --inst_passive_queues_freq              [25;2]
% 3.63/0.99  --inst_dismatching                      true
% 3.63/0.99  --inst_eager_unprocessed_to_passive     true
% 3.63/0.99  --inst_prop_sim_given                   true
% 3.63/0.99  --inst_prop_sim_new                     false
% 3.63/0.99  --inst_subs_new                         false
% 3.63/0.99  --inst_eq_res_simp                      false
% 3.63/0.99  --inst_subs_given                       false
% 3.63/0.99  --inst_orphan_elimination               true
% 3.63/0.99  --inst_learning_loop_flag               true
% 3.63/0.99  --inst_learning_start                   3000
% 3.63/0.99  --inst_learning_factor                  2
% 3.63/0.99  --inst_start_prop_sim_after_learn       3
% 3.63/0.99  --inst_sel_renew                        solver
% 3.63/0.99  --inst_lit_activity_flag                true
% 3.63/0.99  --inst_restr_to_given                   false
% 3.63/0.99  --inst_activity_threshold               500
% 3.63/0.99  --inst_out_proof                        true
% 3.63/0.99  
% 3.63/0.99  ------ Resolution Options
% 3.63/0.99  
% 3.63/0.99  --resolution_flag                       false
% 3.63/0.99  --res_lit_sel                           adaptive
% 3.63/0.99  --res_lit_sel_side                      none
% 3.63/0.99  --res_ordering                          kbo
% 3.63/0.99  --res_to_prop_solver                    active
% 3.63/0.99  --res_prop_simpl_new                    false
% 3.63/0.99  --res_prop_simpl_given                  true
% 3.63/0.99  --res_passive_queue_type                priority_queues
% 3.63/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.63/0.99  --res_passive_queues_freq               [15;5]
% 3.63/0.99  --res_forward_subs                      full
% 3.63/0.99  --res_backward_subs                     full
% 3.63/0.99  --res_forward_subs_resolution           true
% 3.63/0.99  --res_backward_subs_resolution          true
% 3.63/0.99  --res_orphan_elimination                true
% 3.63/0.99  --res_time_limit                        2.
% 3.63/0.99  --res_out_proof                         true
% 3.63/0.99  
% 3.63/0.99  ------ Superposition Options
% 3.63/0.99  
% 3.63/0.99  --superposition_flag                    true
% 3.63/0.99  --sup_passive_queue_type                priority_queues
% 3.63/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.63/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.63/0.99  --demod_completeness_check              fast
% 3.63/0.99  --demod_use_ground                      true
% 3.63/0.99  --sup_to_prop_solver                    passive
% 3.63/0.99  --sup_prop_simpl_new                    true
% 3.63/0.99  --sup_prop_simpl_given                  true
% 3.63/0.99  --sup_fun_splitting                     true
% 3.63/0.99  --sup_smt_interval                      50000
% 3.63/0.99  
% 3.63/0.99  ------ Superposition Simplification Setup
% 3.63/0.99  
% 3.63/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.63/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.63/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.63/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.63/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.63/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.63/0.99  --sup_immed_triv                        [TrivRules]
% 3.63/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_immed_bw_main                     []
% 3.63/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.63/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.63/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_input_bw                          []
% 3.63/0.99  
% 3.63/0.99  ------ Combination Options
% 3.63/0.99  
% 3.63/0.99  --comb_res_mult                         3
% 3.63/0.99  --comb_sup_mult                         2
% 3.63/0.99  --comb_inst_mult                        10
% 3.63/0.99  
% 3.63/0.99  ------ Debug Options
% 3.63/0.99  
% 3.63/0.99  --dbg_backtrace                         false
% 3.63/0.99  --dbg_dump_prop_clauses                 false
% 3.63/0.99  --dbg_dump_prop_clauses_file            -
% 3.63/0.99  --dbg_out_stat                          false
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  ------ Proving...
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  % SZS status Theorem for theBenchmark.p
% 3.63/0.99  
% 3.63/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.63/0.99  
% 3.63/0.99  fof(f1,axiom,(
% 3.63/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f24,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f1])).
% 3.63/0.99  
% 3.63/0.99  fof(f8,axiom,(
% 3.63/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f34,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 3.63/0.99    inference(cnf_transformation,[],[f8])).
% 3.63/0.99  
% 3.63/0.99  fof(f45,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 3.63/0.99    inference(definition_unfolding,[],[f24,f34,f34])).
% 3.63/0.99  
% 3.63/0.99  fof(f12,axiom,(
% 3.63/0.99    ! [X0,X1] : (r2_hidden(X0,X1) => k2_xboole_0(k1_tarski(X0),X1) = X1)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f16,plain,(
% 3.63/0.99    ! [X0,X1] : (k2_xboole_0(k1_tarski(X0),X1) = X1 | ~r2_hidden(X0,X1))),
% 3.63/0.99    inference(ennf_transformation,[],[f12])).
% 3.63/0.99  
% 3.63/0.99  fof(f38,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k2_xboole_0(k1_tarski(X0),X1) = X1 | ~r2_hidden(X0,X1)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f16])).
% 3.63/0.99  
% 3.63/0.99  fof(f9,axiom,(
% 3.63/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f35,plain,(
% 3.63/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f9])).
% 3.63/0.99  
% 3.63/0.99  fof(f10,axiom,(
% 3.63/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f36,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f10])).
% 3.63/0.99  
% 3.63/0.99  fof(f11,axiom,(
% 3.63/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f37,plain,(
% 3.63/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f11])).
% 3.63/0.99  
% 3.63/0.99  fof(f43,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 3.63/0.99    inference(definition_unfolding,[],[f36,f37])).
% 3.63/0.99  
% 3.63/0.99  fof(f44,plain,(
% 3.63/0.99    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 3.63/0.99    inference(definition_unfolding,[],[f35,f43])).
% 3.63/0.99  
% 3.63/0.99  fof(f50,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k2_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = X1 | ~r2_hidden(X0,X1)) )),
% 3.63/0.99    inference(definition_unfolding,[],[f38,f44])).
% 3.63/0.99  
% 3.63/0.99  fof(f13,conjecture,(
% 3.63/0.99    ! [X0,X1,X2,X3] : ((r2_hidden(X3,X0) & k3_xboole_0(X1,X2) = k1_tarski(X3) & r1_tarski(X0,X1)) => k3_xboole_0(X0,X2) = k1_tarski(X3))),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f14,negated_conjecture,(
% 3.63/0.99    ~! [X0,X1,X2,X3] : ((r2_hidden(X3,X0) & k3_xboole_0(X1,X2) = k1_tarski(X3) & r1_tarski(X0,X1)) => k3_xboole_0(X0,X2) = k1_tarski(X3))),
% 3.63/0.99    inference(negated_conjecture,[],[f13])).
% 3.63/0.99  
% 3.63/0.99  fof(f17,plain,(
% 3.63/0.99    ? [X0,X1,X2,X3] : (k3_xboole_0(X0,X2) != k1_tarski(X3) & (r2_hidden(X3,X0) & k3_xboole_0(X1,X2) = k1_tarski(X3) & r1_tarski(X0,X1)))),
% 3.63/0.99    inference(ennf_transformation,[],[f14])).
% 3.63/0.99  
% 3.63/0.99  fof(f18,plain,(
% 3.63/0.99    ? [X0,X1,X2,X3] : (k3_xboole_0(X0,X2) != k1_tarski(X3) & r2_hidden(X3,X0) & k3_xboole_0(X1,X2) = k1_tarski(X3) & r1_tarski(X0,X1))),
% 3.63/0.99    inference(flattening,[],[f17])).
% 3.63/0.99  
% 3.63/0.99  fof(f22,plain,(
% 3.63/0.99    ? [X0,X1,X2,X3] : (k3_xboole_0(X0,X2) != k1_tarski(X3) & r2_hidden(X3,X0) & k3_xboole_0(X1,X2) = k1_tarski(X3) & r1_tarski(X0,X1)) => (k3_xboole_0(sK0,sK2) != k1_tarski(sK3) & r2_hidden(sK3,sK0) & k3_xboole_0(sK1,sK2) = k1_tarski(sK3) & r1_tarski(sK0,sK1))),
% 3.63/0.99    introduced(choice_axiom,[])).
% 3.63/0.99  
% 3.63/0.99  fof(f23,plain,(
% 3.63/0.99    k3_xboole_0(sK0,sK2) != k1_tarski(sK3) & r2_hidden(sK3,sK0) & k3_xboole_0(sK1,sK2) = k1_tarski(sK3) & r1_tarski(sK0,sK1)),
% 3.63/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f18,f22])).
% 3.63/0.99  
% 3.63/0.99  fof(f41,plain,(
% 3.63/0.99    r2_hidden(sK3,sK0)),
% 3.63/0.99    inference(cnf_transformation,[],[f23])).
% 3.63/0.99  
% 3.63/0.99  fof(f40,plain,(
% 3.63/0.99    k3_xboole_0(sK1,sK2) = k1_tarski(sK3)),
% 3.63/0.99    inference(cnf_transformation,[],[f23])).
% 3.63/0.99  
% 3.63/0.99  fof(f52,plain,(
% 3.63/0.99    k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) = k2_enumset1(sK3,sK3,sK3,sK3)),
% 3.63/0.99    inference(definition_unfolding,[],[f40,f34,f44])).
% 3.63/0.99  
% 3.63/0.99  fof(f6,axiom,(
% 3.63/0.99    ! [X0,X1] : k3_xboole_0(X0,k2_xboole_0(X0,X1)) = X0),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f32,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,k2_xboole_0(X0,X1)) = X0) )),
% 3.63/0.99    inference(cnf_transformation,[],[f6])).
% 3.63/0.99  
% 3.63/0.99  fof(f48,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,k2_xboole_0(X0,X1))) = X0) )),
% 3.63/0.99    inference(definition_unfolding,[],[f32,f34])).
% 3.63/0.99  
% 3.63/0.99  fof(f5,axiom,(
% 3.63/0.99    ! [X0,X1,X2] : k3_xboole_0(X0,k3_xboole_0(X1,X2)) = k3_xboole_0(k3_xboole_0(X0,X1),X2)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f31,plain,(
% 3.63/0.99    ( ! [X2,X0,X1] : (k3_xboole_0(X0,k3_xboole_0(X1,X2)) = k3_xboole_0(k3_xboole_0(X0,X1),X2)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f5])).
% 3.63/0.99  
% 3.63/0.99  fof(f47,plain,(
% 3.63/0.99    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2)))) = k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2))) )),
% 3.63/0.99    inference(definition_unfolding,[],[f31,f34,f34,f34,f34])).
% 3.63/0.99  
% 3.63/0.99  fof(f7,axiom,(
% 3.63/0.99    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f33,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.63/0.99    inference(cnf_transformation,[],[f7])).
% 3.63/0.99  
% 3.63/0.99  fof(f49,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 3.63/0.99    inference(definition_unfolding,[],[f33,f34])).
% 3.63/0.99  
% 3.63/0.99  fof(f39,plain,(
% 3.63/0.99    r1_tarski(sK0,sK1)),
% 3.63/0.99    inference(cnf_transformation,[],[f23])).
% 3.63/0.99  
% 3.63/0.99  fof(f4,axiom,(
% 3.63/0.99    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f21,plain,(
% 3.63/0.99    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 3.63/0.99    inference(nnf_transformation,[],[f4])).
% 3.63/0.99  
% 3.63/0.99  fof(f30,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f21])).
% 3.63/0.99  
% 3.63/0.99  fof(f3,axiom,(
% 3.63/0.99    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f19,plain,(
% 3.63/0.99    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.63/0.99    inference(nnf_transformation,[],[f3])).
% 3.63/0.99  
% 3.63/0.99  fof(f20,plain,(
% 3.63/0.99    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.63/0.99    inference(flattening,[],[f19])).
% 3.63/0.99  
% 3.63/0.99  fof(f26,plain,(
% 3.63/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.63/0.99    inference(cnf_transformation,[],[f20])).
% 3.63/0.99  
% 3.63/0.99  fof(f54,plain,(
% 3.63/0.99    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.63/0.99    inference(equality_resolution,[],[f26])).
% 3.63/0.99  
% 3.63/0.99  fof(f42,plain,(
% 3.63/0.99    k3_xboole_0(sK0,sK2) != k1_tarski(sK3)),
% 3.63/0.99    inference(cnf_transformation,[],[f23])).
% 3.63/0.99  
% 3.63/0.99  fof(f51,plain,(
% 3.63/0.99    k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != k2_enumset1(sK3,sK3,sK3,sK3)),
% 3.63/0.99    inference(definition_unfolding,[],[f42,f34,f44])).
% 3.63/0.99  
% 3.63/0.99  cnf(c_0,plain,
% 3.63/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 3.63/0.99      inference(cnf_transformation,[],[f45]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_10,plain,
% 3.63/0.99      ( ~ r2_hidden(X0,X1)
% 3.63/0.99      | k2_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = X1 ),
% 3.63/0.99      inference(cnf_transformation,[],[f50]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_12,negated_conjecture,
% 3.63/0.99      ( r2_hidden(sK3,sK0) ),
% 3.63/0.99      inference(cnf_transformation,[],[f41]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_125,plain,
% 3.63/0.99      ( k2_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = X1
% 3.63/0.99      | sK3 != X0
% 3.63/0.99      | sK0 != X1 ),
% 3.63/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_12]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_126,plain,
% 3.63/0.99      ( k2_xboole_0(k2_enumset1(sK3,sK3,sK3,sK3),sK0) = sK0 ),
% 3.63/0.99      inference(unflattening,[status(thm)],[c_125]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_13,negated_conjecture,
% 3.63/0.99      ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) = k2_enumset1(sK3,sK3,sK3,sK3) ),
% 3.63/0.99      inference(cnf_transformation,[],[f52]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_494,plain,
% 3.63/0.99      ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0) = sK0 ),
% 3.63/0.99      inference(light_normalisation,[status(thm)],[c_126,c_13,c_126]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_8,plain,
% 3.63/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,k2_xboole_0(X0,X1))) = X0 ),
% 3.63/0.99      inference(cnf_transformation,[],[f48]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_675,plain,
% 3.63/0.99      ( k4_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),k4_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)),sK0)) = k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) ),
% 3.63/0.99      inference(superposition,[status(thm)],[c_494,c_8]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_750,plain,
% 3.63/0.99      ( k4_xboole_0(k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)),k4_xboole_0(k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)),sK0)) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)) ),
% 3.63/1.00      inference(demodulation,[status(thm)],[c_0,c_675]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_7,plain,
% 3.63/1.00      ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2)) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2)))) ),
% 3.63/1.00      inference(cnf_transformation,[],[f47]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1125,plain,
% 3.63/1.00      ( k4_xboole_0(sK2,k4_xboole_0(sK2,k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)))) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)) ),
% 3.63/1.00      inference(superposition,[status(thm)],[c_750,c_7]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_9,plain,
% 3.63/1.00      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
% 3.63/1.00      inference(cnf_transformation,[],[f49]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1300,plain,
% 3.63/1.00      ( k4_xboole_0(sK2,k4_xboole_0(sK2,k4_xboole_0(sK2,sK1))) = k4_xboole_0(sK2,k4_xboole_0(sK1,k4_xboole_0(sK1,sK0))) ),
% 3.63/1.00      inference(superposition,[status(thm)],[c_1125,c_9]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1301,plain,
% 3.63/1.00      ( k4_xboole_0(sK2,k4_xboole_0(sK1,k4_xboole_0(sK1,sK0))) = k4_xboole_0(sK2,sK1) ),
% 3.63/1.00      inference(demodulation,[status(thm)],[c_1300,c_9]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1692,plain,
% 3.63/1.00      ( k4_xboole_0(sK2,k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) = k4_xboole_0(sK2,sK1) ),
% 3.63/1.00      inference(superposition,[status(thm)],[c_0,c_1301]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_14,negated_conjecture,
% 3.63/1.00      ( r1_tarski(sK0,sK1) ),
% 3.63/1.00      inference(cnf_transformation,[],[f39]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_358,plain,
% 3.63/1.00      ( r1_tarski(sK0,sK1) = iProver_top ),
% 3.63/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_5,plain,
% 3.63/1.00      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 3.63/1.00      inference(cnf_transformation,[],[f30]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_360,plain,
% 3.63/1.00      ( k4_xboole_0(X0,X1) = k1_xboole_0
% 3.63/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 3.63/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1386,plain,
% 3.63/1.00      ( k4_xboole_0(sK0,sK1) = k1_xboole_0 ),
% 3.63/1.00      inference(superposition,[status(thm)],[c_358,c_360]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1699,plain,
% 3.63/1.00      ( k4_xboole_0(sK2,k4_xboole_0(sK0,k1_xboole_0)) = k4_xboole_0(sK2,sK1) ),
% 3.63/1.00      inference(light_normalisation,[status(thm)],[c_1692,c_1386]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_818,plain,
% 3.63/1.00      ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k4_xboole_0(X0,X0) ),
% 3.63/1.00      inference(superposition,[status(thm)],[c_8,c_9]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_4,plain,
% 3.63/1.00      ( r1_tarski(X0,X0) ),
% 3.63/1.00      inference(cnf_transformation,[],[f54]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_361,plain,
% 3.63/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 3.63/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1385,plain,
% 3.63/1.00      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 3.63/1.00      inference(superposition,[status(thm)],[c_361,c_360]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1561,plain,
% 3.63/1.00      ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
% 3.63/1.00      inference(light_normalisation,[status(thm)],[c_818,c_818,c_1385]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1563,plain,
% 3.63/1.00      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.63/1.00      inference(demodulation,[status(thm)],[c_1561,c_8]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_1700,plain,
% 3.63/1.00      ( k4_xboole_0(sK2,sK1) = k4_xboole_0(sK2,sK0) ),
% 3.63/1.00      inference(demodulation,[status(thm)],[c_1699,c_1563]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_753,plain,
% 3.63/1.00      ( k2_enumset1(sK3,sK3,sK3,sK3) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK1)) ),
% 3.63/1.00      inference(demodulation,[status(thm)],[c_0,c_13]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_2040,plain,
% 3.63/1.00      ( k2_enumset1(sK3,sK3,sK3,sK3) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK0)) ),
% 3.63/1.00      inference(demodulation,[status(thm)],[c_1700,c_753]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_720,plain,
% 3.63/1.00      ( k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k4_xboole_0(sK2,k4_xboole_0(sK2,sK0)) ),
% 3.63/1.00      inference(instantiation,[status(thm)],[c_0]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_194,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_434,plain,
% 3.63/1.00      ( k2_enumset1(X0,X1,X2,X3) != X4
% 3.63/1.00      | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != X4
% 3.63/1.00      | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k2_enumset1(X0,X1,X2,X3) ),
% 3.63/1.00      inference(instantiation,[status(thm)],[c_194]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_538,plain,
% 3.63/1.00      ( k2_enumset1(X0,X1,X2,X3) != k4_xboole_0(sK2,k4_xboole_0(sK2,sK0))
% 3.63/1.00      | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k2_enumset1(X0,X1,X2,X3)
% 3.63/1.00      | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != k4_xboole_0(sK2,k4_xboole_0(sK2,sK0)) ),
% 3.63/1.00      inference(instantiation,[status(thm)],[c_434]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_539,plain,
% 3.63/1.00      ( k2_enumset1(sK3,sK3,sK3,sK3) != k4_xboole_0(sK2,k4_xboole_0(sK2,sK0))
% 3.63/1.00      | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k2_enumset1(sK3,sK3,sK3,sK3)
% 3.63/1.00      | k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != k4_xboole_0(sK2,k4_xboole_0(sK2,sK0)) ),
% 3.63/1.00      inference(instantiation,[status(thm)],[c_538]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(c_11,negated_conjecture,
% 3.63/1.00      ( k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) != k2_enumset1(sK3,sK3,sK3,sK3) ),
% 3.63/1.00      inference(cnf_transformation,[],[f51]) ).
% 3.63/1.00  
% 3.63/1.00  cnf(contradiction,plain,
% 3.63/1.00      ( $false ),
% 3.63/1.00      inference(minisat,[status(thm)],[c_2040,c_720,c_539,c_11]) ).
% 3.63/1.00  
% 3.63/1.00  
% 3.63/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.63/1.00  
% 3.63/1.00  ------                               Statistics
% 3.63/1.00  
% 3.63/1.00  ------ General
% 3.63/1.00  
% 3.63/1.00  abstr_ref_over_cycles:                  0
% 3.63/1.00  abstr_ref_under_cycles:                 0
% 3.63/1.00  gc_basic_clause_elim:                   0
% 3.63/1.00  forced_gc_time:                         0
% 3.63/1.00  parsing_time:                           0.007
% 3.63/1.00  unif_index_cands_time:                  0.
% 3.63/1.00  unif_index_add_time:                    0.
% 3.63/1.00  orderings_time:                         0.
% 3.63/1.00  out_proof_time:                         0.007
% 3.63/1.00  total_time:                             0.082
% 3.63/1.00  num_of_symbols:                         41
% 3.63/1.00  num_of_terms:                           2765
% 3.63/1.00  
% 3.63/1.00  ------ Preprocessing
% 3.63/1.00  
% 3.63/1.00  num_of_splits:                          0
% 3.63/1.00  num_of_split_atoms:                     0
% 3.63/1.00  num_of_reused_defs:                     0
% 3.63/1.00  num_eq_ax_congr_red:                    1
% 3.63/1.00  num_of_sem_filtered_clauses:            1
% 3.63/1.00  num_of_subtypes:                        0
% 3.63/1.00  monotx_restored_types:                  0
% 3.63/1.00  sat_num_of_epr_types:                   0
% 3.63/1.00  sat_num_of_non_cyclic_types:            0
% 3.63/1.00  sat_guarded_non_collapsed_types:        0
% 3.63/1.00  num_pure_diseq_elim:                    0
% 3.63/1.00  simp_replaced_by:                       0
% 3.63/1.00  res_preprocessed:                       66
% 3.63/1.00  prep_upred:                             0
% 3.63/1.00  prep_unflattend:                        2
% 3.63/1.00  smt_new_axioms:                         0
% 3.63/1.00  pred_elim_cands:                        1
% 3.63/1.00  pred_elim:                              1
% 3.63/1.00  pred_elim_cl:                           1
% 3.63/1.00  pred_elim_cycles:                       3
% 3.63/1.00  merged_defs:                            8
% 3.63/1.00  merged_defs_ncl:                        0
% 3.63/1.00  bin_hyper_res:                          8
% 3.63/1.00  prep_cycles:                            4
% 3.63/1.00  pred_elim_time:                         0.
% 3.63/1.00  splitting_time:                         0.
% 3.63/1.00  sem_filter_time:                        0.
% 3.63/1.00  monotx_time:                            0.
% 3.63/1.00  subtype_inf_time:                       0.
% 3.63/1.00  
% 3.63/1.00  ------ Problem properties
% 3.63/1.00  
% 3.63/1.00  clauses:                                13
% 3.63/1.00  conjectures:                            3
% 3.63/1.00  epr:                                    3
% 3.63/1.00  horn:                                   13
% 3.63/1.00  ground:                                 4
% 3.63/1.00  unary:                                  10
% 3.63/1.00  binary:                                 2
% 3.63/1.00  lits:                                   17
% 3.63/1.00  lits_eq:                                11
% 3.63/1.00  fd_pure:                                0
% 3.63/1.00  fd_pseudo:                              0
% 3.63/1.00  fd_cond:                                0
% 3.63/1.00  fd_pseudo_cond:                         1
% 3.63/1.00  ac_symbols:                             0
% 3.63/1.00  
% 3.63/1.00  ------ Propositional Solver
% 3.63/1.00  
% 3.63/1.00  prop_solver_calls:                      30
% 3.63/1.00  prop_fast_solver_calls:                 257
% 3.63/1.00  smt_solver_calls:                       0
% 3.63/1.00  smt_fast_solver_calls:                  0
% 3.63/1.00  prop_num_of_clauses:                    912
% 3.63/1.00  prop_preprocess_simplified:             2641
% 3.63/1.00  prop_fo_subsumed:                       0
% 3.63/1.00  prop_solver_time:                       0.
% 3.63/1.00  smt_solver_time:                        0.
% 3.63/1.00  smt_fast_solver_time:                   0.
% 3.63/1.00  prop_fast_solver_time:                  0.
% 3.63/1.00  prop_unsat_core_time:                   0.
% 3.63/1.00  
% 3.63/1.00  ------ QBF
% 3.63/1.00  
% 3.63/1.00  qbf_q_res:                              0
% 3.63/1.00  qbf_num_tautologies:                    0
% 3.63/1.00  qbf_prep_cycles:                        0
% 3.63/1.00  
% 3.63/1.00  ------ BMC1
% 3.63/1.00  
% 3.63/1.00  bmc1_current_bound:                     -1
% 3.63/1.00  bmc1_last_solved_bound:                 -1
% 3.63/1.00  bmc1_unsat_core_size:                   -1
% 3.63/1.00  bmc1_unsat_core_parents_size:           -1
% 3.63/1.00  bmc1_merge_next_fun:                    0
% 3.63/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.63/1.00  
% 3.63/1.00  ------ Instantiation
% 3.63/1.00  
% 3.63/1.00  inst_num_of_clauses:                    321
% 3.63/1.00  inst_num_in_passive:                    90
% 3.63/1.00  inst_num_in_active:                     137
% 3.63/1.00  inst_num_in_unprocessed:                94
% 3.63/1.00  inst_num_of_loops:                      150
% 3.63/1.00  inst_num_of_learning_restarts:          0
% 3.63/1.00  inst_num_moves_active_passive:          10
% 3.63/1.00  inst_lit_activity:                      0
% 3.63/1.00  inst_lit_activity_moves:                0
% 3.63/1.00  inst_num_tautologies:                   0
% 3.63/1.00  inst_num_prop_implied:                  0
% 3.63/1.00  inst_num_existing_simplified:           0
% 3.63/1.00  inst_num_eq_res_simplified:             0
% 3.63/1.00  inst_num_child_elim:                    0
% 3.63/1.00  inst_num_of_dismatching_blockings:      60
% 3.63/1.00  inst_num_of_non_proper_insts:           389
% 3.63/1.00  inst_num_of_duplicates:                 0
% 3.63/1.00  inst_inst_num_from_inst_to_res:         0
% 3.63/1.00  inst_dismatching_checking_time:         0.
% 3.63/1.00  
% 3.63/1.00  ------ Resolution
% 3.63/1.00  
% 3.63/1.00  res_num_of_clauses:                     0
% 3.63/1.00  res_num_in_passive:                     0
% 3.63/1.00  res_num_in_active:                      0
% 3.63/1.00  res_num_of_loops:                       70
% 3.63/1.00  res_forward_subset_subsumed:            51
% 3.63/1.00  res_backward_subset_subsumed:           0
% 3.63/1.00  res_forward_subsumed:                   0
% 3.63/1.00  res_backward_subsumed:                  0
% 3.63/1.00  res_forward_subsumption_resolution:     0
% 3.63/1.00  res_backward_subsumption_resolution:    0
% 3.63/1.00  res_clause_to_clause_subsumption:       407
% 3.63/1.00  res_orphan_elimination:                 0
% 3.63/1.00  res_tautology_del:                      50
% 3.63/1.00  res_num_eq_res_simplified:              0
% 3.63/1.00  res_num_sel_changes:                    0
% 3.63/1.00  res_moves_from_active_to_pass:          0
% 3.63/1.00  
% 3.63/1.00  ------ Superposition
% 3.63/1.00  
% 3.63/1.00  sup_time_total:                         0.
% 3.63/1.00  sup_time_generating:                    0.
% 3.63/1.00  sup_time_sim_full:                      0.
% 3.63/1.00  sup_time_sim_immed:                     0.
% 3.63/1.00  
% 3.63/1.00  sup_num_of_clauses:                     64
% 3.63/1.00  sup_num_in_active:                      14
% 3.63/1.00  sup_num_in_passive:                     50
% 3.63/1.00  sup_num_of_loops:                       28
% 3.63/1.00  sup_fw_superposition:                   76
% 3.63/1.00  sup_bw_superposition:                   81
% 3.63/1.00  sup_immediate_simplified:               74
% 3.63/1.00  sup_given_eliminated:                   2
% 3.63/1.00  comparisons_done:                       0
% 3.63/1.00  comparisons_avoided:                    0
% 3.63/1.00  
% 3.63/1.00  ------ Simplifications
% 3.63/1.00  
% 3.63/1.00  
% 3.63/1.00  sim_fw_subset_subsumed:                 0
% 3.63/1.00  sim_bw_subset_subsumed:                 0
% 3.63/1.00  sim_fw_subsumed:                        7
% 3.63/1.00  sim_bw_subsumed:                        4
% 3.63/1.00  sim_fw_subsumption_res:                 0
% 3.63/1.00  sim_bw_subsumption_res:                 0
% 3.63/1.00  sim_tautology_del:                      0
% 3.63/1.00  sim_eq_tautology_del:                   22
% 3.63/1.00  sim_eq_res_simp:                        0
% 3.63/1.00  sim_fw_demodulated:                     50
% 3.63/1.00  sim_bw_demodulated:                     18
% 3.63/1.00  sim_light_normalised:                   30
% 3.63/1.00  sim_joinable_taut:                      0
% 3.63/1.00  sim_joinable_simp:                      0
% 3.63/1.00  sim_ac_normalised:                      0
% 3.63/1.00  sim_smt_subsumption:                    0
% 3.63/1.00  
%------------------------------------------------------------------------------
