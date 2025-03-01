%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:23:53 EST 2020

% Result     : Theorem 15.49s
% Output     : CNFRefutation 15.49s
% Verified   : 
% Statistics : Number of formulae       :  119 ( 911 expanded)
%              Number of clauses        :   84 ( 416 expanded)
%              Number of leaves         :   13 ( 223 expanded)
%              Depth                    :   21
%              Number of atoms          :  147 (1118 expanded)
%              Number of equality atoms :  103 ( 858 expanded)
%              Maximal formula depth    :    7 (   2 average)
%              Maximal clause size      :    6 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f7,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f7])).

fof(f14,conjecture,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,k2_xboole_0(X1,X2)) )
     => r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( r1_xboole_0(X0,X2)
          & r1_tarski(X0,k2_xboole_0(X1,X2)) )
       => r1_tarski(X0,X1) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f20,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(X0,X1)
      & r1_xboole_0(X0,X2)
      & r1_tarski(X0,k2_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f21,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(X0,X1)
      & r1_xboole_0(X0,X2)
      & r1_tarski(X0,k2_xboole_0(X1,X2)) ) ),
    inference(flattening,[],[f20])).

fof(f29,plain,
    ( ? [X0,X1,X2] :
        ( ~ r1_tarski(X0,X1)
        & r1_xboole_0(X0,X2)
        & r1_tarski(X0,k2_xboole_0(X1,X2)) )
   => ( ~ r1_tarski(sK2,sK3)
      & r1_xboole_0(sK2,sK4)
      & r1_tarski(sK2,k2_xboole_0(sK3,sK4)) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ~ r1_tarski(sK2,sK3)
    & r1_xboole_0(sK2,sK4)
    & r1_tarski(sK2,k2_xboole_0(sK3,sK4)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f21,f29])).

fof(f48,plain,(
    r1_tarski(sK2,k2_xboole_0(sK3,sK4)) ),
    inference(cnf_transformation,[],[f30])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f40,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f49,plain,(
    r1_xboole_0(sK2,sK4) ),
    inference(cnf_transformation,[],[f30])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k3_xboole_0(X0,X1) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k3_xboole_0(X0,X1) != k1_xboole_0 )
      & ( k3_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f11,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f11])).

fof(f53,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k4_xboole_0(X0,k4_xboole_0(X0,X1))
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(definition_unfolding,[],[f36,f45])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X2,X0,X1] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f12,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f12])).

fof(f8,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f8])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f51,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f32,f45,f45])).

fof(f13,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f50,plain,(
    ~ r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_12,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_10,plain,
    ( k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1092,plain,
    ( k2_xboole_0(X0,k2_xboole_0(X1,X0)) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(superposition,[status(thm)],[c_12,c_10])).

cnf(c_1095,plain,
    ( k2_xboole_0(X0,k2_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(light_normalisation,[status(thm)],[c_1092,c_10])).

cnf(c_18,negated_conjecture,
    ( r1_tarski(sK2,k2_xboole_0(sK3,sK4)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_716,plain,
    ( r1_tarski(sK2,k2_xboole_0(sK3,sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_9,plain,
    ( ~ r1_tarski(X0,X1)
    | k2_xboole_0(X0,X1) = X1 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_721,plain,
    ( k2_xboole_0(X0,X1) = X1
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1699,plain,
    ( k2_xboole_0(sK2,k2_xboole_0(sK3,sK4)) = k2_xboole_0(sK3,sK4) ),
    inference(superposition,[status(thm)],[c_716,c_721])).

cnf(c_0,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_17,negated_conjecture,
    ( r1_xboole_0(sK2,sK4) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_717,plain,
    ( r1_xboole_0(sK2,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_6,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_724,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_xboole_0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_4386,plain,
    ( k4_xboole_0(sK2,k4_xboole_0(sK2,sK4)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_717,c_724])).

cnf(c_13,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_4934,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(k4_xboole_0(sK2,sK4),X0)) = k4_xboole_0(k1_xboole_0,X0) ),
    inference(superposition,[status(thm)],[c_4386,c_13])).

cnf(c_14,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_720,plain,
    ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_4385,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_720,c_724])).

cnf(c_11,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_4387,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_4385,c_11])).

cnf(c_1093,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = k2_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_12,c_11])).

cnf(c_1094,plain,
    ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_1093,c_11])).

cnf(c_1257,plain,
    ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_1094,c_0])).

cnf(c_1360,plain,
    ( k4_xboole_0(X0,X0) = k4_xboole_0(k1_xboole_0,X0) ),
    inference(superposition,[status(thm)],[c_1257,c_12])).

cnf(c_4484,plain,
    ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4387,c_1360])).

cnf(c_4939,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(k4_xboole_0(sK2,sK4),X0)) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_4934,c_4484])).

cnf(c_5284,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(k2_xboole_0(k4_xboole_0(sK2,sK4),X0),X1)) = k4_xboole_0(k1_xboole_0,X1) ),
    inference(superposition,[status(thm)],[c_4939,c_13])).

cnf(c_1149,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X2,X3)) = k4_xboole_0(k4_xboole_0(X0,k2_xboole_0(X1,X2)),X3) ),
    inference(superposition,[status(thm)],[c_13,c_13])).

cnf(c_1159,plain,
    ( k4_xboole_0(X0,k2_xboole_0(k2_xboole_0(X1,X2),X3)) = k4_xboole_0(X0,k2_xboole_0(X1,k2_xboole_0(X2,X3))) ),
    inference(demodulation,[status(thm)],[c_1149,c_13])).

cnf(c_5287,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(k2_xboole_0(k4_xboole_0(sK2,sK4),X0),X1)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_5284,c_1159,c_4484])).

cnf(c_7426,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(X0,k2_xboole_0(k4_xboole_0(sK2,sK4),X1))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_0,c_5287])).

cnf(c_4937,plain,
    ( k2_xboole_0(k4_xboole_0(sK2,sK4),k1_xboole_0) = k2_xboole_0(k4_xboole_0(sK2,sK4),sK2) ),
    inference(superposition,[status(thm)],[c_4386,c_10])).

cnf(c_4938,plain,
    ( k2_xboole_0(k4_xboole_0(sK2,sK4),sK2) = k4_xboole_0(sK2,sK4) ),
    inference(demodulation,[status(thm)],[c_4937,c_1094])).

cnf(c_5124,plain,
    ( k2_xboole_0(sK2,k4_xboole_0(sK2,sK4)) = k4_xboole_0(sK2,sK4) ),
    inference(superposition,[status(thm)],[c_4938,c_0])).

cnf(c_1091,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k4_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(superposition,[status(thm)],[c_10,c_12])).

cnf(c_9568,plain,
    ( k4_xboole_0(k4_xboole_0(sK2,sK4),k4_xboole_0(k4_xboole_0(sK2,sK4),sK2)) = k4_xboole_0(sK2,k4_xboole_0(k4_xboole_0(sK2,sK4),sK2)) ),
    inference(superposition,[status(thm)],[c_5124,c_1091])).

cnf(c_9695,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(sK4,k4_xboole_0(sK2,k2_xboole_0(sK4,sK2)))) = k4_xboole_0(sK2,k4_xboole_0(sK2,k2_xboole_0(sK4,sK2))) ),
    inference(demodulation,[status(thm)],[c_9568,c_13])).

cnf(c_4495,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,X1))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4387,c_13])).

cnf(c_4500,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,X0)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4495,c_10])).

cnf(c_9696,plain,
    ( k4_xboole_0(sK2,sK4) = sK2 ),
    inference(demodulation,[status(thm)],[c_9695,c_11,c_1094,c_4500])).

cnf(c_12620,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(X0,k2_xboole_0(sK2,X1))) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_7426,c_7426,c_9696])).

cnf(c_12633,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(X0,k2_xboole_0(sK3,sK4))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1699,c_12620])).

cnf(c_12838,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(sK4,sK3)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1095,c_12633])).

cnf(c_9988,plain,
    ( k4_xboole_0(sK2,k2_xboole_0(sK4,X0)) = k4_xboole_0(sK2,X0) ),
    inference(superposition,[status(thm)],[c_9696,c_13])).

cnf(c_13050,plain,
    ( k4_xboole_0(sK2,sK3) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_12838,c_9988])).

cnf(c_1,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_15,plain,
    ( r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_719,plain,
    ( r1_tarski(X0,k2_xboole_0(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_997,plain,
    ( r1_tarski(X0,k2_xboole_0(X1,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_719])).

cnf(c_1084,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),k2_xboole_0(X1,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_10,c_997])).

cnf(c_1762,plain,
    ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k2_xboole_0(k4_xboole_0(X1,X0),X1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1,c_1084])).

cnf(c_1137,plain,
    ( k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k2_xboole_0(k4_xboole_0(X0,X1),X0) ),
    inference(superposition,[status(thm)],[c_1,c_10])).

cnf(c_1525,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k4_xboole_0(k4_xboole_0(k1_xboole_0,X0),X1) ),
    inference(superposition,[status(thm)],[c_1360,c_13])).

cnf(c_12110,plain,
    ( k4_xboole_0(k4_xboole_0(k1_xboole_0,k4_xboole_0(X0,X1)),k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X0)) ),
    inference(superposition,[status(thm)],[c_1137,c_1525])).

cnf(c_1527,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,X1))) = k4_xboole_0(k1_xboole_0,k4_xboole_0(X0,X1)) ),
    inference(superposition,[status(thm)],[c_1360,c_13])).

cnf(c_1534,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,X0)) = k4_xboole_0(k1_xboole_0,k4_xboole_0(X0,X1)) ),
    inference(demodulation,[status(thm)],[c_1527,c_10])).

cnf(c_7310,plain,
    ( k4_xboole_0(k1_xboole_0,k4_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1534,c_4500])).

cnf(c_12133,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X0)) = k4_xboole_0(k1_xboole_0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) ),
    inference(light_normalisation,[status(thm)],[c_12110,c_7310])).

cnf(c_12134,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X0)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_12133,c_13,c_7310])).

cnf(c_19353,plain,
    ( k2_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X0),k4_xboole_0(X0,X1)) = k2_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X0),k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_12134,c_10])).

cnf(c_3477,plain,
    ( k2_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(k1_xboole_0,X0),X1)) = k2_xboole_0(k2_xboole_0(X0,X1),X0) ),
    inference(superposition,[status(thm)],[c_1525,c_10])).

cnf(c_1531,plain,
    ( k2_xboole_0(X0,k4_xboole_0(X0,X0)) = k2_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_1360,c_10])).

cnf(c_1532,plain,
    ( k2_xboole_0(X0,k4_xboole_0(X0,X0)) = X0 ),
    inference(light_normalisation,[status(thm)],[c_1531,c_1094])).

cnf(c_1542,plain,
    ( k2_xboole_0(X0,k4_xboole_0(k1_xboole_0,X0)) = X0 ),
    inference(superposition,[status(thm)],[c_1360,c_1532])).

cnf(c_3515,plain,
    ( k2_xboole_0(k2_xboole_0(X0,X1),X0) = k2_xboole_0(X0,X1) ),
    inference(demodulation,[status(thm)],[c_3477,c_13,c_1542])).

cnf(c_4537,plain,
    ( k2_xboole_0(k2_xboole_0(X0,X1),X1) = k2_xboole_0(k2_xboole_0(X0,X1),k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_4500,c_10])).

cnf(c_3554,plain,
    ( k2_xboole_0(k2_xboole_0(X0,X1),X1) = k2_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_0,c_3515])).

cnf(c_4548,plain,
    ( k2_xboole_0(k2_xboole_0(X0,X1),k1_xboole_0) = k2_xboole_0(X1,X0) ),
    inference(light_normalisation,[status(thm)],[c_4537,c_3554])).

cnf(c_4517,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X1,X0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_10,c_4500])).

cnf(c_1154,plain,
    ( k2_xboole_0(X0,k4_xboole_0(X1,k2_xboole_0(X2,X0))) = k2_xboole_0(X0,k4_xboole_0(X1,X2)) ),
    inference(superposition,[status(thm)],[c_13,c_10])).

cnf(c_18677,plain,
    ( k2_xboole_0(X0,k4_xboole_0(k4_xboole_0(X0,X1),X1)) = k2_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_4517,c_1154])).

cnf(c_1089,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),X0) = k4_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_0,c_12])).

cnf(c_1800,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),X1) = k4_xboole_0(k2_xboole_0(X1,X0),X1) ),
    inference(superposition,[status(thm)],[c_10,c_1089])).

cnf(c_1814,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
    inference(demodulation,[status(thm)],[c_1800,c_1089])).

cnf(c_18821,plain,
    ( k2_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
    inference(light_normalisation,[status(thm)],[c_18677,c_1094,c_1814])).

cnf(c_19368,plain,
    ( k2_xboole_0(k4_xboole_0(X0,X1),X0) = X0 ),
    inference(demodulation,[status(thm)],[c_19353,c_3515,c_4548,c_18821])).

cnf(c_51512,plain,
    ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X1) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1762,c_19368])).

cnf(c_51571,plain,
    ( r1_tarski(k4_xboole_0(sK2,k1_xboole_0),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_13050,c_51512])).

cnf(c_51792,plain,
    ( r1_tarski(sK2,sK3) = iProver_top ),
    inference(demodulation,[status(thm)],[c_51571,c_11])).

cnf(c_16,negated_conjecture,
    ( ~ r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_21,plain,
    ( r1_tarski(sK2,sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_51792,c_21])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.02/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.02/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 16:24:37 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 15.49/2.48  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 15.49/2.48  
% 15.49/2.48  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 15.49/2.48  
% 15.49/2.48  ------  iProver source info
% 15.49/2.48  
% 15.49/2.48  git: date: 2020-06-30 10:37:57 +0100
% 15.49/2.48  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 15.49/2.48  git: non_committed_changes: false
% 15.49/2.48  git: last_make_outside_of_git: false
% 15.49/2.48  
% 15.49/2.48  ------ 
% 15.49/2.48  
% 15.49/2.48  ------ Input Options
% 15.49/2.48  
% 15.49/2.48  --out_options                           all
% 15.49/2.48  --tptp_safe_out                         true
% 15.49/2.48  --problem_path                          ""
% 15.49/2.48  --include_path                          ""
% 15.49/2.48  --clausifier                            res/vclausify_rel
% 15.49/2.48  --clausifier_options                    ""
% 15.49/2.48  --stdin                                 false
% 15.49/2.48  --stats_out                             all
% 15.49/2.48  
% 15.49/2.48  ------ General Options
% 15.49/2.48  
% 15.49/2.48  --fof                                   false
% 15.49/2.48  --time_out_real                         305.
% 15.49/2.48  --time_out_virtual                      -1.
% 15.49/2.48  --symbol_type_check                     false
% 15.49/2.48  --clausify_out                          false
% 15.49/2.48  --sig_cnt_out                           false
% 15.49/2.48  --trig_cnt_out                          false
% 15.49/2.48  --trig_cnt_out_tolerance                1.
% 15.49/2.48  --trig_cnt_out_sk_spl                   false
% 15.49/2.48  --abstr_cl_out                          false
% 15.49/2.48  
% 15.49/2.48  ------ Global Options
% 15.49/2.48  
% 15.49/2.48  --schedule                              default
% 15.49/2.48  --add_important_lit                     false
% 15.49/2.48  --prop_solver_per_cl                    1000
% 15.49/2.48  --min_unsat_core                        false
% 15.49/2.48  --soft_assumptions                      false
% 15.49/2.48  --soft_lemma_size                       3
% 15.49/2.48  --prop_impl_unit_size                   0
% 15.49/2.48  --prop_impl_unit                        []
% 15.49/2.48  --share_sel_clauses                     true
% 15.49/2.48  --reset_solvers                         false
% 15.49/2.48  --bc_imp_inh                            [conj_cone]
% 15.49/2.48  --conj_cone_tolerance                   3.
% 15.49/2.48  --extra_neg_conj                        none
% 15.49/2.48  --large_theory_mode                     true
% 15.49/2.48  --prolific_symb_bound                   200
% 15.49/2.48  --lt_threshold                          2000
% 15.49/2.48  --clause_weak_htbl                      true
% 15.49/2.48  --gc_record_bc_elim                     false
% 15.49/2.48  
% 15.49/2.48  ------ Preprocessing Options
% 15.49/2.48  
% 15.49/2.48  --preprocessing_flag                    true
% 15.49/2.48  --time_out_prep_mult                    0.1
% 15.49/2.48  --splitting_mode                        input
% 15.49/2.48  --splitting_grd                         true
% 15.49/2.48  --splitting_cvd                         false
% 15.49/2.48  --splitting_cvd_svl                     false
% 15.49/2.48  --splitting_nvd                         32
% 15.49/2.48  --sub_typing                            true
% 15.49/2.48  --prep_gs_sim                           true
% 15.49/2.48  --prep_unflatten                        true
% 15.49/2.48  --prep_res_sim                          true
% 15.49/2.48  --prep_upred                            true
% 15.49/2.48  --prep_sem_filter                       exhaustive
% 15.49/2.48  --prep_sem_filter_out                   false
% 15.49/2.48  --pred_elim                             true
% 15.49/2.48  --res_sim_input                         true
% 15.49/2.48  --eq_ax_congr_red                       true
% 15.49/2.48  --pure_diseq_elim                       true
% 15.49/2.48  --brand_transform                       false
% 15.49/2.48  --non_eq_to_eq                          false
% 15.49/2.48  --prep_def_merge                        true
% 15.49/2.48  --prep_def_merge_prop_impl              false
% 15.49/2.48  --prep_def_merge_mbd                    true
% 15.49/2.48  --prep_def_merge_tr_red                 false
% 15.49/2.48  --prep_def_merge_tr_cl                  false
% 15.49/2.48  --smt_preprocessing                     true
% 15.49/2.48  --smt_ac_axioms                         fast
% 15.49/2.48  --preprocessed_out                      false
% 15.49/2.48  --preprocessed_stats                    false
% 15.49/2.48  
% 15.49/2.48  ------ Abstraction refinement Options
% 15.49/2.48  
% 15.49/2.48  --abstr_ref                             []
% 15.49/2.48  --abstr_ref_prep                        false
% 15.49/2.48  --abstr_ref_until_sat                   false
% 15.49/2.48  --abstr_ref_sig_restrict                funpre
% 15.49/2.48  --abstr_ref_af_restrict_to_split_sk     false
% 15.49/2.48  --abstr_ref_under                       []
% 15.49/2.48  
% 15.49/2.48  ------ SAT Options
% 15.49/2.48  
% 15.49/2.48  --sat_mode                              false
% 15.49/2.48  --sat_fm_restart_options                ""
% 15.49/2.48  --sat_gr_def                            false
% 15.49/2.48  --sat_epr_types                         true
% 15.49/2.48  --sat_non_cyclic_types                  false
% 15.49/2.48  --sat_finite_models                     false
% 15.49/2.48  --sat_fm_lemmas                         false
% 15.49/2.48  --sat_fm_prep                           false
% 15.49/2.48  --sat_fm_uc_incr                        true
% 15.49/2.48  --sat_out_model                         small
% 15.49/2.48  --sat_out_clauses                       false
% 15.49/2.48  
% 15.49/2.48  ------ QBF Options
% 15.49/2.48  
% 15.49/2.48  --qbf_mode                              false
% 15.49/2.48  --qbf_elim_univ                         false
% 15.49/2.48  --qbf_dom_inst                          none
% 15.49/2.48  --qbf_dom_pre_inst                      false
% 15.49/2.48  --qbf_sk_in                             false
% 15.49/2.48  --qbf_pred_elim                         true
% 15.49/2.48  --qbf_split                             512
% 15.49/2.48  
% 15.49/2.48  ------ BMC1 Options
% 15.49/2.48  
% 15.49/2.48  --bmc1_incremental                      false
% 15.49/2.48  --bmc1_axioms                           reachable_all
% 15.49/2.48  --bmc1_min_bound                        0
% 15.49/2.48  --bmc1_max_bound                        -1
% 15.49/2.48  --bmc1_max_bound_default                -1
% 15.49/2.48  --bmc1_symbol_reachability              true
% 15.49/2.48  --bmc1_property_lemmas                  false
% 15.49/2.48  --bmc1_k_induction                      false
% 15.49/2.48  --bmc1_non_equiv_states                 false
% 15.49/2.48  --bmc1_deadlock                         false
% 15.49/2.48  --bmc1_ucm                              false
% 15.49/2.48  --bmc1_add_unsat_core                   none
% 15.49/2.48  --bmc1_unsat_core_children              false
% 15.49/2.48  --bmc1_unsat_core_extrapolate_axioms    false
% 15.49/2.48  --bmc1_out_stat                         full
% 15.49/2.48  --bmc1_ground_init                      false
% 15.49/2.48  --bmc1_pre_inst_next_state              false
% 15.49/2.48  --bmc1_pre_inst_state                   false
% 15.49/2.48  --bmc1_pre_inst_reach_state             false
% 15.49/2.48  --bmc1_out_unsat_core                   false
% 15.49/2.48  --bmc1_aig_witness_out                  false
% 15.49/2.48  --bmc1_verbose                          false
% 15.49/2.48  --bmc1_dump_clauses_tptp                false
% 15.49/2.48  --bmc1_dump_unsat_core_tptp             false
% 15.49/2.48  --bmc1_dump_file                        -
% 15.49/2.48  --bmc1_ucm_expand_uc_limit              128
% 15.49/2.48  --bmc1_ucm_n_expand_iterations          6
% 15.49/2.48  --bmc1_ucm_extend_mode                  1
% 15.49/2.48  --bmc1_ucm_init_mode                    2
% 15.49/2.48  --bmc1_ucm_cone_mode                    none
% 15.49/2.48  --bmc1_ucm_reduced_relation_type        0
% 15.49/2.48  --bmc1_ucm_relax_model                  4
% 15.49/2.48  --bmc1_ucm_full_tr_after_sat            true
% 15.49/2.48  --bmc1_ucm_expand_neg_assumptions       false
% 15.49/2.48  --bmc1_ucm_layered_model                none
% 15.49/2.48  --bmc1_ucm_max_lemma_size               10
% 15.49/2.48  
% 15.49/2.48  ------ AIG Options
% 15.49/2.48  
% 15.49/2.48  --aig_mode                              false
% 15.49/2.48  
% 15.49/2.48  ------ Instantiation Options
% 15.49/2.48  
% 15.49/2.48  --instantiation_flag                    true
% 15.49/2.48  --inst_sos_flag                         true
% 15.49/2.48  --inst_sos_phase                        true
% 15.49/2.48  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 15.49/2.48  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 15.49/2.48  --inst_lit_sel_side                     num_symb
% 15.49/2.48  --inst_solver_per_active                1400
% 15.49/2.48  --inst_solver_calls_frac                1.
% 15.49/2.48  --inst_passive_queue_type               priority_queues
% 15.49/2.48  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 15.49/2.48  --inst_passive_queues_freq              [25;2]
% 15.49/2.48  --inst_dismatching                      true
% 15.49/2.48  --inst_eager_unprocessed_to_passive     true
% 15.49/2.48  --inst_prop_sim_given                   true
% 15.49/2.48  --inst_prop_sim_new                     false
% 15.49/2.48  --inst_subs_new                         false
% 15.49/2.48  --inst_eq_res_simp                      false
% 15.49/2.48  --inst_subs_given                       false
% 15.49/2.48  --inst_orphan_elimination               true
% 15.49/2.48  --inst_learning_loop_flag               true
% 15.49/2.48  --inst_learning_start                   3000
% 15.49/2.48  --inst_learning_factor                  2
% 15.49/2.48  --inst_start_prop_sim_after_learn       3
% 15.49/2.48  --inst_sel_renew                        solver
% 15.49/2.48  --inst_lit_activity_flag                true
% 15.49/2.48  --inst_restr_to_given                   false
% 15.49/2.48  --inst_activity_threshold               500
% 15.49/2.48  --inst_out_proof                        true
% 15.49/2.48  
% 15.49/2.48  ------ Resolution Options
% 15.49/2.48  
% 15.49/2.48  --resolution_flag                       true
% 15.49/2.48  --res_lit_sel                           adaptive
% 15.49/2.48  --res_lit_sel_side                      none
% 15.49/2.48  --res_ordering                          kbo
% 15.49/2.48  --res_to_prop_solver                    active
% 15.49/2.48  --res_prop_simpl_new                    false
% 15.49/2.48  --res_prop_simpl_given                  true
% 15.49/2.48  --res_passive_queue_type                priority_queues
% 15.49/2.48  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 15.49/2.48  --res_passive_queues_freq               [15;5]
% 15.49/2.48  --res_forward_subs                      full
% 15.49/2.48  --res_backward_subs                     full
% 15.49/2.48  --res_forward_subs_resolution           true
% 15.49/2.48  --res_backward_subs_resolution          true
% 15.49/2.48  --res_orphan_elimination                true
% 15.49/2.48  --res_time_limit                        2.
% 15.49/2.48  --res_out_proof                         true
% 15.49/2.48  
% 15.49/2.48  ------ Superposition Options
% 15.49/2.48  
% 15.49/2.48  --superposition_flag                    true
% 15.49/2.48  --sup_passive_queue_type                priority_queues
% 15.49/2.48  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 15.49/2.48  --sup_passive_queues_freq               [8;1;4]
% 15.49/2.48  --demod_completeness_check              fast
% 15.49/2.48  --demod_use_ground                      true
% 15.49/2.48  --sup_to_prop_solver                    passive
% 15.49/2.48  --sup_prop_simpl_new                    true
% 15.49/2.48  --sup_prop_simpl_given                  true
% 15.49/2.48  --sup_fun_splitting                     true
% 15.49/2.48  --sup_smt_interval                      50000
% 15.49/2.48  
% 15.49/2.48  ------ Superposition Simplification Setup
% 15.49/2.48  
% 15.49/2.48  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 15.49/2.48  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 15.49/2.48  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 15.49/2.48  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 15.49/2.48  --sup_full_triv                         [TrivRules;PropSubs]
% 15.49/2.48  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 15.49/2.48  --sup_full_bw                           [BwDemod;BwSubsumption]
% 15.49/2.48  --sup_immed_triv                        [TrivRules]
% 15.49/2.48  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 15.49/2.48  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 15.49/2.48  --sup_immed_bw_main                     []
% 15.49/2.48  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 15.49/2.48  --sup_input_triv                        [Unflattening;TrivRules]
% 15.49/2.48  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 15.49/2.48  --sup_input_bw                          []
% 15.49/2.48  
% 15.49/2.48  ------ Combination Options
% 15.49/2.48  
% 15.49/2.48  --comb_res_mult                         3
% 15.49/2.48  --comb_sup_mult                         2
% 15.49/2.48  --comb_inst_mult                        10
% 15.49/2.48  
% 15.49/2.48  ------ Debug Options
% 15.49/2.48  
% 15.49/2.48  --dbg_backtrace                         false
% 15.49/2.48  --dbg_dump_prop_clauses                 false
% 15.49/2.48  --dbg_dump_prop_clauses_file            -
% 15.49/2.48  --dbg_out_stat                          false
% 15.49/2.48  ------ Parsing...
% 15.49/2.48  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 15.49/2.48  
% 15.49/2.48  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 15.49/2.48  
% 15.49/2.48  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 15.49/2.48  
% 15.49/2.48  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 15.49/2.48  ------ Proving...
% 15.49/2.48  ------ Problem Properties 
% 15.49/2.48  
% 15.49/2.48  
% 15.49/2.48  clauses                                 19
% 15.49/2.48  conjectures                             3
% 15.49/2.48  EPR                                     4
% 15.49/2.48  Horn                                    17
% 15.49/2.48  unary                                   11
% 15.49/2.48  binary                                  7
% 15.49/2.48  lits                                    28
% 15.49/2.48  lits eq                                 9
% 15.49/2.48  fd_pure                                 0
% 15.49/2.48  fd_pseudo                               0
% 15.49/2.48  fd_cond                                 0
% 15.49/2.48  fd_pseudo_cond                          0
% 15.49/2.48  AC symbols                              0
% 15.49/2.48  
% 15.49/2.48  ------ Schedule dynamic 5 is on 
% 15.49/2.48  
% 15.49/2.48  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 15.49/2.48  
% 15.49/2.48  
% 15.49/2.48  ------ 
% 15.49/2.48  Current options:
% 15.49/2.48  ------ 
% 15.49/2.48  
% 15.49/2.48  ------ Input Options
% 15.49/2.48  
% 15.49/2.48  --out_options                           all
% 15.49/2.48  --tptp_safe_out                         true
% 15.49/2.48  --problem_path                          ""
% 15.49/2.48  --include_path                          ""
% 15.49/2.48  --clausifier                            res/vclausify_rel
% 15.49/2.48  --clausifier_options                    ""
% 15.49/2.48  --stdin                                 false
% 15.49/2.48  --stats_out                             all
% 15.49/2.48  
% 15.49/2.48  ------ General Options
% 15.49/2.48  
% 15.49/2.48  --fof                                   false
% 15.49/2.48  --time_out_real                         305.
% 15.49/2.48  --time_out_virtual                      -1.
% 15.49/2.48  --symbol_type_check                     false
% 15.49/2.48  --clausify_out                          false
% 15.49/2.48  --sig_cnt_out                           false
% 15.49/2.48  --trig_cnt_out                          false
% 15.49/2.48  --trig_cnt_out_tolerance                1.
% 15.49/2.48  --trig_cnt_out_sk_spl                   false
% 15.49/2.48  --abstr_cl_out                          false
% 15.49/2.48  
% 15.49/2.48  ------ Global Options
% 15.49/2.48  
% 15.49/2.48  --schedule                              default
% 15.49/2.48  --add_important_lit                     false
% 15.49/2.48  --prop_solver_per_cl                    1000
% 15.49/2.48  --min_unsat_core                        false
% 15.49/2.48  --soft_assumptions                      false
% 15.49/2.48  --soft_lemma_size                       3
% 15.49/2.48  --prop_impl_unit_size                   0
% 15.49/2.48  --prop_impl_unit                        []
% 15.49/2.48  --share_sel_clauses                     true
% 15.49/2.48  --reset_solvers                         false
% 15.49/2.48  --bc_imp_inh                            [conj_cone]
% 15.49/2.48  --conj_cone_tolerance                   3.
% 15.49/2.48  --extra_neg_conj                        none
% 15.49/2.48  --large_theory_mode                     true
% 15.49/2.48  --prolific_symb_bound                   200
% 15.49/2.48  --lt_threshold                          2000
% 15.49/2.48  --clause_weak_htbl                      true
% 15.49/2.48  --gc_record_bc_elim                     false
% 15.49/2.48  
% 15.49/2.48  ------ Preprocessing Options
% 15.49/2.48  
% 15.49/2.48  --preprocessing_flag                    true
% 15.49/2.48  --time_out_prep_mult                    0.1
% 15.49/2.48  --splitting_mode                        input
% 15.49/2.48  --splitting_grd                         true
% 15.49/2.48  --splitting_cvd                         false
% 15.49/2.48  --splitting_cvd_svl                     false
% 15.49/2.48  --splitting_nvd                         32
% 15.49/2.48  --sub_typing                            true
% 15.49/2.48  --prep_gs_sim                           true
% 15.49/2.48  --prep_unflatten                        true
% 15.49/2.48  --prep_res_sim                          true
% 15.49/2.48  --prep_upred                            true
% 15.49/2.48  --prep_sem_filter                       exhaustive
% 15.49/2.48  --prep_sem_filter_out                   false
% 15.49/2.48  --pred_elim                             true
% 15.49/2.48  --res_sim_input                         true
% 15.49/2.48  --eq_ax_congr_red                       true
% 15.49/2.48  --pure_diseq_elim                       true
% 15.49/2.48  --brand_transform                       false
% 15.49/2.48  --non_eq_to_eq                          false
% 15.49/2.48  --prep_def_merge                        true
% 15.49/2.48  --prep_def_merge_prop_impl              false
% 15.49/2.48  --prep_def_merge_mbd                    true
% 15.49/2.48  --prep_def_merge_tr_red                 false
% 15.49/2.48  --prep_def_merge_tr_cl                  false
% 15.49/2.48  --smt_preprocessing                     true
% 15.49/2.48  --smt_ac_axioms                         fast
% 15.49/2.48  --preprocessed_out                      false
% 15.49/2.48  --preprocessed_stats                    false
% 15.49/2.48  
% 15.49/2.48  ------ Abstraction refinement Options
% 15.49/2.48  
% 15.49/2.48  --abstr_ref                             []
% 15.49/2.48  --abstr_ref_prep                        false
% 15.49/2.48  --abstr_ref_until_sat                   false
% 15.49/2.48  --abstr_ref_sig_restrict                funpre
% 15.49/2.48  --abstr_ref_af_restrict_to_split_sk     false
% 15.49/2.48  --abstr_ref_under                       []
% 15.49/2.48  
% 15.49/2.48  ------ SAT Options
% 15.49/2.48  
% 15.49/2.48  --sat_mode                              false
% 15.49/2.48  --sat_fm_restart_options                ""
% 15.49/2.48  --sat_gr_def                            false
% 15.49/2.48  --sat_epr_types                         true
% 15.49/2.48  --sat_non_cyclic_types                  false
% 15.49/2.48  --sat_finite_models                     false
% 15.49/2.48  --sat_fm_lemmas                         false
% 15.49/2.48  --sat_fm_prep                           false
% 15.49/2.48  --sat_fm_uc_incr                        true
% 15.49/2.48  --sat_out_model                         small
% 15.49/2.48  --sat_out_clauses                       false
% 15.49/2.48  
% 15.49/2.48  ------ QBF Options
% 15.49/2.48  
% 15.49/2.48  --qbf_mode                              false
% 15.49/2.48  --qbf_elim_univ                         false
% 15.49/2.48  --qbf_dom_inst                          none
% 15.49/2.48  --qbf_dom_pre_inst                      false
% 15.49/2.48  --qbf_sk_in                             false
% 15.49/2.48  --qbf_pred_elim                         true
% 15.49/2.48  --qbf_split                             512
% 15.49/2.48  
% 15.49/2.48  ------ BMC1 Options
% 15.49/2.48  
% 15.49/2.48  --bmc1_incremental                      false
% 15.49/2.48  --bmc1_axioms                           reachable_all
% 15.49/2.48  --bmc1_min_bound                        0
% 15.49/2.48  --bmc1_max_bound                        -1
% 15.49/2.48  --bmc1_max_bound_default                -1
% 15.49/2.48  --bmc1_symbol_reachability              true
% 15.49/2.48  --bmc1_property_lemmas                  false
% 15.49/2.48  --bmc1_k_induction                      false
% 15.49/2.48  --bmc1_non_equiv_states                 false
% 15.49/2.48  --bmc1_deadlock                         false
% 15.49/2.48  --bmc1_ucm                              false
% 15.49/2.48  --bmc1_add_unsat_core                   none
% 15.49/2.48  --bmc1_unsat_core_children              false
% 15.49/2.48  --bmc1_unsat_core_extrapolate_axioms    false
% 15.49/2.48  --bmc1_out_stat                         full
% 15.49/2.48  --bmc1_ground_init                      false
% 15.49/2.48  --bmc1_pre_inst_next_state              false
% 15.49/2.48  --bmc1_pre_inst_state                   false
% 15.49/2.48  --bmc1_pre_inst_reach_state             false
% 15.49/2.48  --bmc1_out_unsat_core                   false
% 15.49/2.48  --bmc1_aig_witness_out                  false
% 15.49/2.48  --bmc1_verbose                          false
% 15.49/2.48  --bmc1_dump_clauses_tptp                false
% 15.49/2.48  --bmc1_dump_unsat_core_tptp             false
% 15.49/2.48  --bmc1_dump_file                        -
% 15.49/2.48  --bmc1_ucm_expand_uc_limit              128
% 15.49/2.48  --bmc1_ucm_n_expand_iterations          6
% 15.49/2.48  --bmc1_ucm_extend_mode                  1
% 15.49/2.48  --bmc1_ucm_init_mode                    2
% 15.49/2.48  --bmc1_ucm_cone_mode                    none
% 15.49/2.48  --bmc1_ucm_reduced_relation_type        0
% 15.49/2.48  --bmc1_ucm_relax_model                  4
% 15.49/2.48  --bmc1_ucm_full_tr_after_sat            true
% 15.49/2.48  --bmc1_ucm_expand_neg_assumptions       false
% 15.49/2.48  --bmc1_ucm_layered_model                none
% 15.49/2.48  --bmc1_ucm_max_lemma_size               10
% 15.49/2.48  
% 15.49/2.48  ------ AIG Options
% 15.49/2.48  
% 15.49/2.48  --aig_mode                              false
% 15.49/2.48  
% 15.49/2.48  ------ Instantiation Options
% 15.49/2.48  
% 15.49/2.48  --instantiation_flag                    true
% 15.49/2.48  --inst_sos_flag                         true
% 15.49/2.48  --inst_sos_phase                        true
% 15.49/2.48  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 15.49/2.48  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 15.49/2.48  --inst_lit_sel_side                     none
% 15.49/2.48  --inst_solver_per_active                1400
% 15.49/2.48  --inst_solver_calls_frac                1.
% 15.49/2.48  --inst_passive_queue_type               priority_queues
% 15.49/2.48  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 15.49/2.48  --inst_passive_queues_freq              [25;2]
% 15.49/2.48  --inst_dismatching                      true
% 15.49/2.48  --inst_eager_unprocessed_to_passive     true
% 15.49/2.48  --inst_prop_sim_given                   true
% 15.49/2.48  --inst_prop_sim_new                     false
% 15.49/2.48  --inst_subs_new                         false
% 15.49/2.48  --inst_eq_res_simp                      false
% 15.49/2.48  --inst_subs_given                       false
% 15.49/2.48  --inst_orphan_elimination               true
% 15.49/2.48  --inst_learning_loop_flag               true
% 15.49/2.48  --inst_learning_start                   3000
% 15.49/2.48  --inst_learning_factor                  2
% 15.49/2.48  --inst_start_prop_sim_after_learn       3
% 15.49/2.48  --inst_sel_renew                        solver
% 15.49/2.48  --inst_lit_activity_flag                true
% 15.49/2.48  --inst_restr_to_given                   false
% 15.49/2.48  --inst_activity_threshold               500
% 15.49/2.48  --inst_out_proof                        true
% 15.49/2.48  
% 15.49/2.48  ------ Resolution Options
% 15.49/2.48  
% 15.49/2.48  --resolution_flag                       false
% 15.49/2.48  --res_lit_sel                           adaptive
% 15.49/2.48  --res_lit_sel_side                      none
% 15.49/2.48  --res_ordering                          kbo
% 15.49/2.48  --res_to_prop_solver                    active
% 15.49/2.48  --res_prop_simpl_new                    false
% 15.49/2.48  --res_prop_simpl_given                  true
% 15.49/2.48  --res_passive_queue_type                priority_queues
% 15.49/2.48  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 15.49/2.48  --res_passive_queues_freq               [15;5]
% 15.49/2.48  --res_forward_subs                      full
% 15.49/2.48  --res_backward_subs                     full
% 15.49/2.48  --res_forward_subs_resolution           true
% 15.49/2.48  --res_backward_subs_resolution          true
% 15.49/2.48  --res_orphan_elimination                true
% 15.49/2.48  --res_time_limit                        2.
% 15.49/2.48  --res_out_proof                         true
% 15.49/2.48  
% 15.49/2.48  ------ Superposition Options
% 15.49/2.48  
% 15.49/2.48  --superposition_flag                    true
% 15.49/2.48  --sup_passive_queue_type                priority_queues
% 15.49/2.48  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 15.49/2.48  --sup_passive_queues_freq               [8;1;4]
% 15.49/2.48  --demod_completeness_check              fast
% 15.49/2.48  --demod_use_ground                      true
% 15.49/2.48  --sup_to_prop_solver                    passive
% 15.49/2.48  --sup_prop_simpl_new                    true
% 15.49/2.48  --sup_prop_simpl_given                  true
% 15.49/2.48  --sup_fun_splitting                     true
% 15.49/2.48  --sup_smt_interval                      50000
% 15.49/2.48  
% 15.49/2.48  ------ Superposition Simplification Setup
% 15.49/2.48  
% 15.49/2.48  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 15.49/2.48  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 15.49/2.48  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 15.49/2.48  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 15.49/2.48  --sup_full_triv                         [TrivRules;PropSubs]
% 15.49/2.48  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 15.49/2.48  --sup_full_bw                           [BwDemod;BwSubsumption]
% 15.49/2.48  --sup_immed_triv                        [TrivRules]
% 15.49/2.48  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 15.49/2.48  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 15.49/2.48  --sup_immed_bw_main                     []
% 15.49/2.48  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 15.49/2.48  --sup_input_triv                        [Unflattening;TrivRules]
% 15.49/2.48  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 15.49/2.48  --sup_input_bw                          []
% 15.49/2.48  
% 15.49/2.48  ------ Combination Options
% 15.49/2.48  
% 15.49/2.48  --comb_res_mult                         3
% 15.49/2.48  --comb_sup_mult                         2
% 15.49/2.48  --comb_inst_mult                        10
% 15.49/2.48  
% 15.49/2.48  ------ Debug Options
% 15.49/2.48  
% 15.49/2.48  --dbg_backtrace                         false
% 15.49/2.48  --dbg_dump_prop_clauses                 false
% 15.49/2.48  --dbg_dump_prop_clauses_file            -
% 15.49/2.48  --dbg_out_stat                          false
% 15.49/2.48  
% 15.49/2.48  
% 15.49/2.48  
% 15.49/2.48  
% 15.49/2.48  ------ Proving...
% 15.49/2.48  
% 15.49/2.48  
% 15.49/2.48  % SZS status Theorem for theBenchmark.p
% 15.49/2.48  
% 15.49/2.48  % SZS output start CNFRefutation for theBenchmark.p
% 15.49/2.48  
% 15.49/2.48  fof(f9,axiom,(
% 15.49/2.48    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1)),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f43,plain,(
% 15.49/2.48    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1)) )),
% 15.49/2.48    inference(cnf_transformation,[],[f9])).
% 15.49/2.48  
% 15.49/2.48  fof(f7,axiom,(
% 15.49/2.48    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f41,plain,(
% 15.49/2.48    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 15.49/2.48    inference(cnf_transformation,[],[f7])).
% 15.49/2.48  
% 15.49/2.48  fof(f14,conjecture,(
% 15.49/2.48    ! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,k2_xboole_0(X1,X2))) => r1_tarski(X0,X1))),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f15,negated_conjecture,(
% 15.49/2.48    ~! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,k2_xboole_0(X1,X2))) => r1_tarski(X0,X1))),
% 15.49/2.48    inference(negated_conjecture,[],[f14])).
% 15.49/2.48  
% 15.49/2.48  fof(f20,plain,(
% 15.49/2.48    ? [X0,X1,X2] : (~r1_tarski(X0,X1) & (r1_xboole_0(X0,X2) & r1_tarski(X0,k2_xboole_0(X1,X2))))),
% 15.49/2.48    inference(ennf_transformation,[],[f15])).
% 15.49/2.48  
% 15.49/2.48  fof(f21,plain,(
% 15.49/2.48    ? [X0,X1,X2] : (~r1_tarski(X0,X1) & r1_xboole_0(X0,X2) & r1_tarski(X0,k2_xboole_0(X1,X2)))),
% 15.49/2.48    inference(flattening,[],[f20])).
% 15.49/2.48  
% 15.49/2.48  fof(f29,plain,(
% 15.49/2.48    ? [X0,X1,X2] : (~r1_tarski(X0,X1) & r1_xboole_0(X0,X2) & r1_tarski(X0,k2_xboole_0(X1,X2))) => (~r1_tarski(sK2,sK3) & r1_xboole_0(sK2,sK4) & r1_tarski(sK2,k2_xboole_0(sK3,sK4)))),
% 15.49/2.48    introduced(choice_axiom,[])).
% 15.49/2.48  
% 15.49/2.48  fof(f30,plain,(
% 15.49/2.48    ~r1_tarski(sK2,sK3) & r1_xboole_0(sK2,sK4) & r1_tarski(sK2,k2_xboole_0(sK3,sK4))),
% 15.49/2.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f21,f29])).
% 15.49/2.48  
% 15.49/2.48  fof(f48,plain,(
% 15.49/2.48    r1_tarski(sK2,k2_xboole_0(sK3,sK4))),
% 15.49/2.48    inference(cnf_transformation,[],[f30])).
% 15.49/2.48  
% 15.49/2.48  fof(f6,axiom,(
% 15.49/2.48    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f19,plain,(
% 15.49/2.48    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 15.49/2.48    inference(ennf_transformation,[],[f6])).
% 15.49/2.48  
% 15.49/2.48  fof(f40,plain,(
% 15.49/2.48    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 15.49/2.48    inference(cnf_transformation,[],[f19])).
% 15.49/2.48  
% 15.49/2.48  fof(f1,axiom,(
% 15.49/2.48    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f31,plain,(
% 15.49/2.48    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 15.49/2.48    inference(cnf_transformation,[],[f1])).
% 15.49/2.48  
% 15.49/2.48  fof(f49,plain,(
% 15.49/2.48    r1_xboole_0(sK2,sK4)),
% 15.49/2.48    inference(cnf_transformation,[],[f30])).
% 15.49/2.48  
% 15.49/2.48  fof(f4,axiom,(
% 15.49/2.48    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k3_xboole_0(X0,X1) = k1_xboole_0)),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f26,plain,(
% 15.49/2.48    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) != k1_xboole_0) & (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)))),
% 15.49/2.48    inference(nnf_transformation,[],[f4])).
% 15.49/2.48  
% 15.49/2.48  fof(f36,plain,(
% 15.49/2.48    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)) )),
% 15.49/2.48    inference(cnf_transformation,[],[f26])).
% 15.49/2.48  
% 15.49/2.48  fof(f11,axiom,(
% 15.49/2.48    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f45,plain,(
% 15.49/2.48    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 15.49/2.48    inference(cnf_transformation,[],[f11])).
% 15.49/2.48  
% 15.49/2.48  fof(f53,plain,(
% 15.49/2.48    ( ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(X0,k4_xboole_0(X0,X1)) | ~r1_xboole_0(X0,X1)) )),
% 15.49/2.48    inference(definition_unfolding,[],[f36,f45])).
% 15.49/2.48  
% 15.49/2.48  fof(f10,axiom,(
% 15.49/2.48    ! [X0,X1,X2] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2)),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f44,plain,(
% 15.49/2.48    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2)) )),
% 15.49/2.48    inference(cnf_transformation,[],[f10])).
% 15.49/2.48  
% 15.49/2.48  fof(f12,axiom,(
% 15.49/2.48    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f46,plain,(
% 15.49/2.48    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 15.49/2.48    inference(cnf_transformation,[],[f12])).
% 15.49/2.48  
% 15.49/2.48  fof(f8,axiom,(
% 15.49/2.48    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f42,plain,(
% 15.49/2.48    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 15.49/2.48    inference(cnf_transformation,[],[f8])).
% 15.49/2.48  
% 15.49/2.48  fof(f2,axiom,(
% 15.49/2.48    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f32,plain,(
% 15.49/2.48    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 15.49/2.48    inference(cnf_transformation,[],[f2])).
% 15.49/2.48  
% 15.49/2.48  fof(f51,plain,(
% 15.49/2.48    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 15.49/2.48    inference(definition_unfolding,[],[f32,f45,f45])).
% 15.49/2.48  
% 15.49/2.48  fof(f13,axiom,(
% 15.49/2.48    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 15.49/2.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.49/2.48  
% 15.49/2.48  fof(f47,plain,(
% 15.49/2.48    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 15.49/2.48    inference(cnf_transformation,[],[f13])).
% 15.49/2.48  
% 15.49/2.48  fof(f50,plain,(
% 15.49/2.48    ~r1_tarski(sK2,sK3)),
% 15.49/2.48    inference(cnf_transformation,[],[f30])).
% 15.49/2.48  
% 15.49/2.48  cnf(c_12,plain,
% 15.49/2.48      ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
% 15.49/2.48      inference(cnf_transformation,[],[f43]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_10,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
% 15.49/2.48      inference(cnf_transformation,[],[f41]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1092,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k2_xboole_0(X1,X0)) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_12,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1095,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k2_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
% 15.49/2.48      inference(light_normalisation,[status(thm)],[c_1092,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_18,negated_conjecture,
% 15.49/2.48      ( r1_tarski(sK2,k2_xboole_0(sK3,sK4)) ),
% 15.49/2.48      inference(cnf_transformation,[],[f48]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_716,plain,
% 15.49/2.48      ( r1_tarski(sK2,k2_xboole_0(sK3,sK4)) = iProver_top ),
% 15.49/2.48      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_9,plain,
% 15.49/2.48      ( ~ r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1 ),
% 15.49/2.48      inference(cnf_transformation,[],[f40]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_721,plain,
% 15.49/2.48      ( k2_xboole_0(X0,X1) = X1 | r1_tarski(X0,X1) != iProver_top ),
% 15.49/2.48      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1699,plain,
% 15.49/2.48      ( k2_xboole_0(sK2,k2_xboole_0(sK3,sK4)) = k2_xboole_0(sK3,sK4) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_716,c_721]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_0,plain,
% 15.49/2.48      ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
% 15.49/2.48      inference(cnf_transformation,[],[f31]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_17,negated_conjecture,
% 15.49/2.48      ( r1_xboole_0(sK2,sK4) ),
% 15.49/2.48      inference(cnf_transformation,[],[f49]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_717,plain,
% 15.49/2.48      ( r1_xboole_0(sK2,sK4) = iProver_top ),
% 15.49/2.48      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_6,plain,
% 15.49/2.48      ( ~ r1_xboole_0(X0,X1)
% 15.49/2.48      | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_xboole_0 ),
% 15.49/2.48      inference(cnf_transformation,[],[f53]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_724,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_xboole_0
% 15.49/2.48      | r1_xboole_0(X0,X1) != iProver_top ),
% 15.49/2.48      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4386,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k4_xboole_0(sK2,sK4)) = k1_xboole_0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_717,c_724]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_13,plain,
% 15.49/2.48      ( k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
% 15.49/2.48      inference(cnf_transformation,[],[f44]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4934,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(k4_xboole_0(sK2,sK4),X0)) = k4_xboole_0(k1_xboole_0,X0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_4386,c_13]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_14,plain,
% 15.49/2.48      ( r1_xboole_0(X0,k1_xboole_0) ),
% 15.49/2.48      inference(cnf_transformation,[],[f46]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_720,plain,
% 15.49/2.48      ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
% 15.49/2.48      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4385,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_720,c_724]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_11,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 15.49/2.48      inference(cnf_transformation,[],[f42]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4387,plain,
% 15.49/2.48      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 15.49/2.48      inference(light_normalisation,[status(thm)],[c_4385,c_11]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1093,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k1_xboole_0) = k2_xboole_0(X0,k1_xboole_0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_12,c_11]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1094,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
% 15.49/2.48      inference(light_normalisation,[status(thm)],[c_1093,c_11]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1257,plain,
% 15.49/2.48      ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1094,c_0]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1360,plain,
% 15.49/2.48      ( k4_xboole_0(X0,X0) = k4_xboole_0(k1_xboole_0,X0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1257,c_12]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4484,plain,
% 15.49/2.48      ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_4387,c_1360]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4939,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(k4_xboole_0(sK2,sK4),X0)) = k1_xboole_0 ),
% 15.49/2.48      inference(light_normalisation,[status(thm)],[c_4934,c_4484]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_5284,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(k2_xboole_0(k4_xboole_0(sK2,sK4),X0),X1)) = k4_xboole_0(k1_xboole_0,X1) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_4939,c_13]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1149,plain,
% 15.49/2.48      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X2,X3)) = k4_xboole_0(k4_xboole_0(X0,k2_xboole_0(X1,X2)),X3) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_13,c_13]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1159,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k2_xboole_0(k2_xboole_0(X1,X2),X3)) = k4_xboole_0(X0,k2_xboole_0(X1,k2_xboole_0(X2,X3))) ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_1149,c_13]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_5287,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(k2_xboole_0(k4_xboole_0(sK2,sK4),X0),X1)) = k1_xboole_0 ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_5284,c_1159,c_4484]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_7426,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(X0,k2_xboole_0(k4_xboole_0(sK2,sK4),X1))) = k1_xboole_0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_0,c_5287]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4937,plain,
% 15.49/2.48      ( k2_xboole_0(k4_xboole_0(sK2,sK4),k1_xboole_0) = k2_xboole_0(k4_xboole_0(sK2,sK4),sK2) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_4386,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4938,plain,
% 15.49/2.48      ( k2_xboole_0(k4_xboole_0(sK2,sK4),sK2) = k4_xboole_0(sK2,sK4) ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_4937,c_1094]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_5124,plain,
% 15.49/2.48      ( k2_xboole_0(sK2,k4_xboole_0(sK2,sK4)) = k4_xboole_0(sK2,sK4) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_4938,c_0]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1091,plain,
% 15.49/2.48      ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k4_xboole_0(X0,k4_xboole_0(X1,X0)) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_10,c_12]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_9568,plain,
% 15.49/2.48      ( k4_xboole_0(k4_xboole_0(sK2,sK4),k4_xboole_0(k4_xboole_0(sK2,sK4),sK2)) = k4_xboole_0(sK2,k4_xboole_0(k4_xboole_0(sK2,sK4),sK2)) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_5124,c_1091]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_9695,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(sK4,k4_xboole_0(sK2,k2_xboole_0(sK4,sK2)))) = k4_xboole_0(sK2,k4_xboole_0(sK2,k2_xboole_0(sK4,sK2))) ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_9568,c_13]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4495,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,X1))) = k1_xboole_0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_4387,c_13]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4500,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k2_xboole_0(X1,X0)) = k1_xboole_0 ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_4495,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_9696,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,sK4) = sK2 ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_9695,c_11,c_1094,c_4500]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_12620,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(X0,k2_xboole_0(sK2,X1))) = k1_xboole_0 ),
% 15.49/2.48      inference(light_normalisation,[status(thm)],[c_7426,c_7426,c_9696]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_12633,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(X0,k2_xboole_0(sK3,sK4))) = k1_xboole_0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1699,c_12620]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_12838,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(sK4,sK3)) = k1_xboole_0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1095,c_12633]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_9988,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,k2_xboole_0(sK4,X0)) = k4_xboole_0(sK2,X0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_9696,c_13]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_13050,plain,
% 15.49/2.48      ( k4_xboole_0(sK2,sK3) = k1_xboole_0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_12838,c_9988]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 15.49/2.48      inference(cnf_transformation,[],[f51]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_15,plain,
% 15.49/2.48      ( r1_tarski(X0,k2_xboole_0(X0,X1)) ),
% 15.49/2.48      inference(cnf_transformation,[],[f47]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_719,plain,
% 15.49/2.48      ( r1_tarski(X0,k2_xboole_0(X0,X1)) = iProver_top ),
% 15.49/2.48      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_997,plain,
% 15.49/2.48      ( r1_tarski(X0,k2_xboole_0(X1,X0)) = iProver_top ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_0,c_719]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1084,plain,
% 15.49/2.48      ( r1_tarski(k4_xboole_0(X0,X1),k2_xboole_0(X1,X0)) = iProver_top ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_10,c_997]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1762,plain,
% 15.49/2.48      ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k2_xboole_0(k4_xboole_0(X1,X0),X1)) = iProver_top ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1,c_1084]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1137,plain,
% 15.49/2.48      ( k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k2_xboole_0(k4_xboole_0(X0,X1),X0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1525,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k4_xboole_0(k4_xboole_0(k1_xboole_0,X0),X1) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1360,c_13]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_12110,plain,
% 15.49/2.48      ( k4_xboole_0(k4_xboole_0(k1_xboole_0,k4_xboole_0(X0,X1)),k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X0)) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1137,c_1525]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1527,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,X1))) = k4_xboole_0(k1_xboole_0,k4_xboole_0(X0,X1)) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1360,c_13]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1534,plain,
% 15.49/2.48      ( k4_xboole_0(X0,k2_xboole_0(X1,X0)) = k4_xboole_0(k1_xboole_0,k4_xboole_0(X0,X1)) ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_1527,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_7310,plain,
% 15.49/2.48      ( k4_xboole_0(k1_xboole_0,k4_xboole_0(X0,X1)) = k1_xboole_0 ),
% 15.49/2.48      inference(light_normalisation,[status(thm)],[c_1534,c_4500]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_12133,plain,
% 15.49/2.48      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X0)) = k4_xboole_0(k1_xboole_0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) ),
% 15.49/2.48      inference(light_normalisation,[status(thm)],[c_12110,c_7310]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_12134,plain,
% 15.49/2.48      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X0)) = k1_xboole_0 ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_12133,c_13,c_7310]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_19353,plain,
% 15.49/2.48      ( k2_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X0),k4_xboole_0(X0,X1)) = k2_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X0),k1_xboole_0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_12134,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_3477,plain,
% 15.49/2.48      ( k2_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(k1_xboole_0,X0),X1)) = k2_xboole_0(k2_xboole_0(X0,X1),X0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1525,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1531,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k4_xboole_0(X0,X0)) = k2_xboole_0(X0,k1_xboole_0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1360,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1532,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k4_xboole_0(X0,X0)) = X0 ),
% 15.49/2.48      inference(light_normalisation,[status(thm)],[c_1531,c_1094]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1542,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k4_xboole_0(k1_xboole_0,X0)) = X0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_1360,c_1532]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_3515,plain,
% 15.49/2.48      ( k2_xboole_0(k2_xboole_0(X0,X1),X0) = k2_xboole_0(X0,X1) ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_3477,c_13,c_1542]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4537,plain,
% 15.49/2.48      ( k2_xboole_0(k2_xboole_0(X0,X1),X1) = k2_xboole_0(k2_xboole_0(X0,X1),k1_xboole_0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_4500,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_3554,plain,
% 15.49/2.48      ( k2_xboole_0(k2_xboole_0(X0,X1),X1) = k2_xboole_0(X1,X0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_0,c_3515]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4548,plain,
% 15.49/2.48      ( k2_xboole_0(k2_xboole_0(X0,X1),k1_xboole_0) = k2_xboole_0(X1,X0) ),
% 15.49/2.48      inference(light_normalisation,[status(thm)],[c_4537,c_3554]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_4517,plain,
% 15.49/2.48      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X1,X0)) = k1_xboole_0 ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_10,c_4500]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1154,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k4_xboole_0(X1,k2_xboole_0(X2,X0))) = k2_xboole_0(X0,k4_xboole_0(X1,X2)) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_13,c_10]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_18677,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k4_xboole_0(k4_xboole_0(X0,X1),X1)) = k2_xboole_0(X0,k1_xboole_0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_4517,c_1154]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1089,plain,
% 15.49/2.48      ( k4_xboole_0(k2_xboole_0(X0,X1),X0) = k4_xboole_0(X1,X0) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_0,c_12]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1800,plain,
% 15.49/2.48      ( k4_xboole_0(k4_xboole_0(X0,X1),X1) = k4_xboole_0(k2_xboole_0(X1,X0),X1) ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_10,c_1089]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_1814,plain,
% 15.49/2.48      ( k4_xboole_0(k4_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_1800,c_1089]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_18821,plain,
% 15.49/2.48      ( k2_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
% 15.49/2.48      inference(light_normalisation,
% 15.49/2.48                [status(thm)],
% 15.49/2.48                [c_18677,c_1094,c_1814]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_19368,plain,
% 15.49/2.48      ( k2_xboole_0(k4_xboole_0(X0,X1),X0) = X0 ),
% 15.49/2.48      inference(demodulation,
% 15.49/2.48                [status(thm)],
% 15.49/2.48                [c_19353,c_3515,c_4548,c_18821]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_51512,plain,
% 15.49/2.48      ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X1) = iProver_top ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_1762,c_19368]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_51571,plain,
% 15.49/2.48      ( r1_tarski(k4_xboole_0(sK2,k1_xboole_0),sK3) = iProver_top ),
% 15.49/2.48      inference(superposition,[status(thm)],[c_13050,c_51512]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_51792,plain,
% 15.49/2.48      ( r1_tarski(sK2,sK3) = iProver_top ),
% 15.49/2.48      inference(demodulation,[status(thm)],[c_51571,c_11]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_16,negated_conjecture,
% 15.49/2.48      ( ~ r1_tarski(sK2,sK3) ),
% 15.49/2.48      inference(cnf_transformation,[],[f50]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(c_21,plain,
% 15.49/2.48      ( r1_tarski(sK2,sK3) != iProver_top ),
% 15.49/2.48      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 15.49/2.48  
% 15.49/2.48  cnf(contradiction,plain,
% 15.49/2.48      ( $false ),
% 15.49/2.48      inference(minisat,[status(thm)],[c_51792,c_21]) ).
% 15.49/2.48  
% 15.49/2.48  
% 15.49/2.48  % SZS output end CNFRefutation for theBenchmark.p
% 15.49/2.48  
% 15.49/2.48  ------                               Statistics
% 15.49/2.48  
% 15.49/2.48  ------ General
% 15.49/2.48  
% 15.49/2.48  abstr_ref_over_cycles:                  0
% 15.49/2.48  abstr_ref_under_cycles:                 0
% 15.49/2.48  gc_basic_clause_elim:                   0
% 15.49/2.48  forced_gc_time:                         0
% 15.49/2.48  parsing_time:                           0.007
% 15.49/2.48  unif_index_cands_time:                  0.
% 15.49/2.48  unif_index_add_time:                    0.
% 15.49/2.48  orderings_time:                         0.
% 15.49/2.48  out_proof_time:                         0.011
% 15.49/2.48  total_time:                             1.659
% 15.49/2.48  num_of_symbols:                         42
% 15.49/2.48  num_of_terms:                           91833
% 15.49/2.48  
% 15.49/2.48  ------ Preprocessing
% 15.49/2.48  
% 15.49/2.48  num_of_splits:                          0
% 15.49/2.48  num_of_split_atoms:                     0
% 15.49/2.48  num_of_reused_defs:                     0
% 15.49/2.48  num_eq_ax_congr_red:                    8
% 15.49/2.48  num_of_sem_filtered_clauses:            1
% 15.49/2.48  num_of_subtypes:                        0
% 15.49/2.48  monotx_restored_types:                  0
% 15.49/2.48  sat_num_of_epr_types:                   0
% 15.49/2.48  sat_num_of_non_cyclic_types:            0
% 15.49/2.48  sat_guarded_non_collapsed_types:        0
% 15.49/2.48  num_pure_diseq_elim:                    0
% 15.49/2.48  simp_replaced_by:                       0
% 15.49/2.48  res_preprocessed:                       72
% 15.49/2.48  prep_upred:                             0
% 15.49/2.48  prep_unflattend:                        25
% 15.49/2.48  smt_new_axioms:                         0
% 15.49/2.48  pred_elim_cands:                        3
% 15.49/2.48  pred_elim:                              0
% 15.49/2.48  pred_elim_cl:                           0
% 15.49/2.48  pred_elim_cycles:                       2
% 15.49/2.48  merged_defs:                            6
% 15.49/2.48  merged_defs_ncl:                        0
% 15.49/2.48  bin_hyper_res:                          6
% 15.49/2.48  prep_cycles:                            3
% 15.49/2.48  pred_elim_time:                         0.003
% 15.49/2.48  splitting_time:                         0.
% 15.49/2.48  sem_filter_time:                        0.
% 15.49/2.48  monotx_time:                            0.
% 15.49/2.48  subtype_inf_time:                       0.
% 15.49/2.48  
% 15.49/2.48  ------ Problem properties
% 15.49/2.48  
% 15.49/2.48  clauses:                                19
% 15.49/2.48  conjectures:                            3
% 15.49/2.48  epr:                                    4
% 15.49/2.48  horn:                                   17
% 15.49/2.48  ground:                                 3
% 15.49/2.48  unary:                                  11
% 15.49/2.48  binary:                                 7
% 15.49/2.48  lits:                                   28
% 15.49/2.48  lits_eq:                                9
% 15.49/2.48  fd_pure:                                0
% 15.49/2.48  fd_pseudo:                              0
% 15.49/2.48  fd_cond:                                0
% 15.49/2.48  fd_pseudo_cond:                         0
% 15.49/2.48  ac_symbols:                             0
% 15.49/2.48  
% 15.49/2.48  ------ Propositional Solver
% 15.49/2.48  
% 15.49/2.48  prop_solver_calls:                      30
% 15.49/2.48  prop_fast_solver_calls:                 647
% 15.49/2.48  smt_solver_calls:                       0
% 15.49/2.48  smt_fast_solver_calls:                  0
% 15.49/2.48  prop_num_of_clauses:                    17932
% 15.49/2.48  prop_preprocess_simplified:             20348
% 15.49/2.48  prop_fo_subsumed:                       8
% 15.49/2.48  prop_solver_time:                       0.
% 15.49/2.48  smt_solver_time:                        0.
% 15.49/2.48  smt_fast_solver_time:                   0.
% 15.49/2.48  prop_fast_solver_time:                  0.
% 15.49/2.48  prop_unsat_core_time:                   0.002
% 15.49/2.48  
% 15.49/2.48  ------ QBF
% 15.49/2.48  
% 15.49/2.48  qbf_q_res:                              0
% 15.49/2.48  qbf_num_tautologies:                    0
% 15.49/2.48  qbf_prep_cycles:                        0
% 15.49/2.48  
% 15.49/2.48  ------ BMC1
% 15.49/2.48  
% 15.49/2.48  bmc1_current_bound:                     -1
% 15.49/2.48  bmc1_last_solved_bound:                 -1
% 15.49/2.48  bmc1_unsat_core_size:                   -1
% 15.49/2.48  bmc1_unsat_core_parents_size:           -1
% 15.49/2.48  bmc1_merge_next_fun:                    0
% 15.49/2.48  bmc1_unsat_core_clauses_time:           0.
% 15.49/2.48  
% 15.49/2.48  ------ Instantiation
% 15.49/2.48  
% 15.49/2.48  inst_num_of_clauses:                    2988
% 15.49/2.48  inst_num_in_passive:                    1696
% 15.49/2.48  inst_num_in_active:                     1230
% 15.49/2.48  inst_num_in_unprocessed:                63
% 15.49/2.48  inst_num_of_loops:                      1400
% 15.49/2.48  inst_num_of_learning_restarts:          0
% 15.49/2.48  inst_num_moves_active_passive:          165
% 15.49/2.48  inst_lit_activity:                      0
% 15.49/2.48  inst_lit_activity_moves:                0
% 15.49/2.48  inst_num_tautologies:                   0
% 15.49/2.48  inst_num_prop_implied:                  0
% 15.49/2.48  inst_num_existing_simplified:           0
% 15.49/2.48  inst_num_eq_res_simplified:             0
% 15.49/2.48  inst_num_child_elim:                    0
% 15.49/2.48  inst_num_of_dismatching_blockings:      1120
% 15.49/2.48  inst_num_of_non_proper_insts:           2987
% 15.49/2.48  inst_num_of_duplicates:                 0
% 15.49/2.48  inst_inst_num_from_inst_to_res:         0
% 15.49/2.48  inst_dismatching_checking_time:         0.
% 15.49/2.48  
% 15.49/2.48  ------ Resolution
% 15.49/2.48  
% 15.49/2.48  res_num_of_clauses:                     0
% 15.49/2.48  res_num_in_passive:                     0
% 15.49/2.48  res_num_in_active:                      0
% 15.49/2.48  res_num_of_loops:                       75
% 15.49/2.48  res_forward_subset_subsumed:            368
% 15.49/2.48  res_backward_subset_subsumed:           2
% 15.49/2.48  res_forward_subsumed:                   0
% 15.49/2.48  res_backward_subsumed:                  0
% 15.49/2.48  res_forward_subsumption_resolution:     0
% 15.49/2.48  res_backward_subsumption_resolution:    0
% 15.49/2.48  res_clause_to_clause_subsumption:       51385
% 15.49/2.48  res_orphan_elimination:                 0
% 15.49/2.48  res_tautology_del:                      270
% 15.49/2.48  res_num_eq_res_simplified:              0
% 15.49/2.48  res_num_sel_changes:                    0
% 15.49/2.48  res_moves_from_active_to_pass:          0
% 15.49/2.48  
% 15.49/2.48  ------ Superposition
% 15.49/2.48  
% 15.49/2.48  sup_time_total:                         0.
% 15.49/2.48  sup_time_generating:                    0.
% 15.49/2.48  sup_time_sim_full:                      0.
% 15.49/2.48  sup_time_sim_immed:                     0.
% 15.49/2.48  
% 15.49/2.48  sup_num_of_clauses:                     4134
% 15.49/2.48  sup_num_in_active:                      207
% 15.49/2.48  sup_num_in_passive:                     3927
% 15.49/2.48  sup_num_of_loops:                       278
% 15.49/2.48  sup_fw_superposition:                   8255
% 15.49/2.48  sup_bw_superposition:                   6996
% 15.49/2.48  sup_immediate_simplified:               9362
% 15.49/2.48  sup_given_eliminated:                   9
% 15.49/2.48  comparisons_done:                       0
% 15.49/2.48  comparisons_avoided:                    0
% 15.49/2.48  
% 15.49/2.48  ------ Simplifications
% 15.49/2.48  
% 15.49/2.48  
% 15.49/2.48  sim_fw_subset_subsumed:                 7
% 15.49/2.48  sim_bw_subset_subsumed:                 26
% 15.49/2.48  sim_fw_subsumed:                        1455
% 15.49/2.48  sim_bw_subsumed:                        114
% 15.49/2.48  sim_fw_subsumption_res:                 0
% 15.49/2.48  sim_bw_subsumption_res:                 0
% 15.49/2.48  sim_tautology_del:                      2
% 15.49/2.48  sim_eq_tautology_del:                   2870
% 15.49/2.48  sim_eq_res_simp:                        25
% 15.49/2.48  sim_fw_demodulated:                     7398
% 15.49/2.48  sim_bw_demodulated:                     126
% 15.49/2.48  sim_light_normalised:                   3367
% 15.49/2.48  sim_joinable_taut:                      0
% 15.49/2.48  sim_joinable_simp:                      0
% 15.49/2.48  sim_ac_normalised:                      0
% 15.49/2.48  sim_smt_subsumption:                    0
% 15.49/2.48  
%------------------------------------------------------------------------------
