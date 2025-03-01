%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:25:03 EST 2020

% Result     : Theorem 11.50s
% Output     : CNFRefutation 11.50s
% Verified   : 
% Statistics : Number of formulae       :   81 ( 291 expanded)
%              Number of clauses        :   47 ( 113 expanded)
%              Number of leaves         :   14 (  80 expanded)
%              Depth                    :   15
%              Number of atoms          :   88 ( 304 expanded)
%              Number of equality atoms :   87 ( 303 expanded)
%              Maximal formula depth    :    5 (   2 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f12,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f12])).

fof(f33,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f21,f31,f31])).

fof(f7,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f11,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f11])).

fof(f9,axiom,(
    ! [X0,X1,X2] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X2,X0,X1] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f9])).

fof(f13,conjecture,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    inference(negated_conjecture,[],[f13])).

fof(f17,plain,(
    ? [X0,X1] : k3_xboole_0(X0,X1) != k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    inference(ennf_transformation,[],[f14])).

fof(f18,plain,
    ( ? [X0,X1] : k3_xboole_0(X0,X1) != k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))
   => k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1)) ),
    introduced(choice_axiom,[])).

fof(f19,plain,(
    k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f17,f18])).

fof(f32,plain,(
    k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1)) ),
    inference(cnf_transformation,[],[f19])).

fof(f3,axiom,(
    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k5_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k5_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f34,plain,(
    k2_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1)),k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(definition_unfolding,[],[f32,f31,f22,f22])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k2_xboole_0(k4_xboole_0(X0,X2),k4_xboole_0(X1,X2)) = k4_xboole_0(k2_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X2,X0,X1] : k2_xboole_0(k4_xboole_0(X0,X2),k4_xboole_0(X1,X2)) = k4_xboole_0(k2_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f5,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k4_xboole_0(X1,X0)
     => X0 = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f25,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f4,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f4])).

fof(f23,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f15])).

cnf(c_6,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_1,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_368,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,k2_xboole_0(X0,X1))) ),
    inference(superposition,[status(thm)],[c_6,c_1])).

cnf(c_5,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f26])).

cnf(c_0,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_9,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_258,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,X0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_0,c_9])).

cnf(c_369,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = X1 ),
    inference(demodulation,[status(thm)],[c_368,c_5,c_258])).

cnf(c_7,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_702,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X2)) = k4_xboole_0(X1,X2) ),
    inference(superposition,[status(thm)],[c_369,c_7])).

cnf(c_10,negated_conjecture,
    ( k2_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1)),k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_212,plain,
    ( k2_xboole_0(k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))),k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(demodulation,[status(thm)],[c_0,c_10])).

cnf(c_33625,plain,
    ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)),k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(demodulation,[status(thm)],[c_702,c_212])).

cnf(c_377,plain,
    ( k4_xboole_0(X0,k2_xboole_0(k4_xboole_0(X0,X1),X2)) = k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X2) ),
    inference(superposition,[status(thm)],[c_1,c_7])).

cnf(c_957,plain,
    ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X1) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_377,c_258])).

cnf(c_1406,plain,
    ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1,c_957])).

cnf(c_1512,plain,
    ( k4_xboole_0(k4_xboole_0(k2_xboole_0(X0,X1),X1),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_369,c_1406])).

cnf(c_1558,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1512,c_6])).

cnf(c_8,plain,
    ( k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X2,X1)) = k4_xboole_0(k2_xboole_0(X0,X2),X1) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_1865,plain,
    ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X2),k2_xboole_0(X0,X1)) = k2_xboole_0(k1_xboole_0,k4_xboole_0(X2,k2_xboole_0(X0,X1))) ),
    inference(superposition,[status(thm)],[c_1558,c_8])).

cnf(c_3,plain,
    ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f24])).

cnf(c_213,plain,
    ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_3,c_0])).

cnf(c_1885,plain,
    ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X2),k2_xboole_0(X0,X1)) = k4_xboole_0(X2,k2_xboole_0(X0,X1)) ),
    inference(demodulation,[status(thm)],[c_1865,c_213])).

cnf(c_33626,plain,
    ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)),k4_xboole_0(k4_xboole_0(sK1,sK0),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(demodulation,[status(thm)],[c_33625,c_1885])).

cnf(c_309,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),X0) = k4_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_0,c_6])).

cnf(c_605,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k4_xboole_0(X0,k4_xboole_0(X0,k2_xboole_0(X0,X1))) ),
    inference(superposition,[status(thm)],[c_309,c_1])).

cnf(c_608,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = X0 ),
    inference(light_normalisation,[status(thm)],[c_605,c_5,c_9])).

cnf(c_1125,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(k2_xboole_0(X0,X2),X1)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_8,c_9])).

cnf(c_4155,plain,
    ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X1,X0)),X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_608,c_1125])).

cnf(c_4,plain,
    ( X0 = X1
    | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_4558,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0
    | k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,X0))) != k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4155,c_4])).

cnf(c_2,plain,
    ( k2_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f23])).

cnf(c_388,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(k4_xboole_0(X0,X1),X2))) = k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X0,X1))) ),
    inference(superposition,[status(thm)],[c_7,c_1])).

cnf(c_393,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,k2_xboole_0(X1,X2)))) = k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X0,X1))) ),
    inference(demodulation,[status(thm)],[c_388,c_7])).

cnf(c_3600,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,X0))) = k4_xboole_0(X1,k2_xboole_0(X0,k4_xboole_0(X1,X0))) ),
    inference(superposition,[status(thm)],[c_2,c_393])).

cnf(c_260,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2,c_9])).

cnf(c_496,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,X1))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_260,c_7])).

cnf(c_3781,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,X0))) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3600,c_496])).

cnf(c_4579,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_4558,c_3781])).

cnf(c_4580,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0 ),
    inference(equality_resolution_simp,[status(thm)],[c_4579])).

cnf(c_4792,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
    inference(superposition,[status(thm)],[c_4580,c_4580])).

cnf(c_5072,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    inference(superposition,[status(thm)],[c_4792,c_7])).

cnf(c_5099,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X1,X2)) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    inference(light_normalisation,[status(thm)],[c_5072,c_7])).

cnf(c_33627,plain,
    ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)),k4_xboole_0(sK1,k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(demodulation,[status(thm)],[c_33626,c_5099])).

cnf(c_33628,plain,
    ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(demodulation,[status(thm)],[c_33627,c_3,c_258])).

cnf(c_299,plain,
    ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)) = k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_33628,c_299])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:11:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 11.50/1.94  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 11.50/1.94  
% 11.50/1.94  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 11.50/1.94  
% 11.50/1.94  ------  iProver source info
% 11.50/1.94  
% 11.50/1.94  git: date: 2020-06-30 10:37:57 +0100
% 11.50/1.94  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 11.50/1.94  git: non_committed_changes: false
% 11.50/1.94  git: last_make_outside_of_git: false
% 11.50/1.94  
% 11.50/1.94  ------ 
% 11.50/1.94  
% 11.50/1.94  ------ Input Options
% 11.50/1.94  
% 11.50/1.94  --out_options                           all
% 11.50/1.94  --tptp_safe_out                         true
% 11.50/1.94  --problem_path                          ""
% 11.50/1.94  --include_path                          ""
% 11.50/1.94  --clausifier                            res/vclausify_rel
% 11.50/1.94  --clausifier_options                    ""
% 11.50/1.94  --stdin                                 false
% 11.50/1.94  --stats_out                             all
% 11.50/1.94  
% 11.50/1.94  ------ General Options
% 11.50/1.94  
% 11.50/1.94  --fof                                   false
% 11.50/1.94  --time_out_real                         305.
% 11.50/1.94  --time_out_virtual                      -1.
% 11.50/1.94  --symbol_type_check                     false
% 11.50/1.94  --clausify_out                          false
% 11.50/1.94  --sig_cnt_out                           false
% 11.50/1.94  --trig_cnt_out                          false
% 11.50/1.94  --trig_cnt_out_tolerance                1.
% 11.50/1.94  --trig_cnt_out_sk_spl                   false
% 11.50/1.94  --abstr_cl_out                          false
% 11.50/1.94  
% 11.50/1.94  ------ Global Options
% 11.50/1.94  
% 11.50/1.94  --schedule                              default
% 11.50/1.94  --add_important_lit                     false
% 11.50/1.94  --prop_solver_per_cl                    1000
% 11.50/1.94  --min_unsat_core                        false
% 11.50/1.94  --soft_assumptions                      false
% 11.50/1.94  --soft_lemma_size                       3
% 11.50/1.94  --prop_impl_unit_size                   0
% 11.50/1.94  --prop_impl_unit                        []
% 11.50/1.94  --share_sel_clauses                     true
% 11.50/1.94  --reset_solvers                         false
% 11.50/1.94  --bc_imp_inh                            [conj_cone]
% 11.50/1.94  --conj_cone_tolerance                   3.
% 11.50/1.94  --extra_neg_conj                        none
% 11.50/1.94  --large_theory_mode                     true
% 11.50/1.94  --prolific_symb_bound                   200
% 11.50/1.94  --lt_threshold                          2000
% 11.50/1.94  --clause_weak_htbl                      true
% 11.50/1.94  --gc_record_bc_elim                     false
% 11.50/1.94  
% 11.50/1.94  ------ Preprocessing Options
% 11.50/1.94  
% 11.50/1.94  --preprocessing_flag                    true
% 11.50/1.94  --time_out_prep_mult                    0.1
% 11.50/1.94  --splitting_mode                        input
% 11.50/1.94  --splitting_grd                         true
% 11.50/1.94  --splitting_cvd                         false
% 11.50/1.94  --splitting_cvd_svl                     false
% 11.50/1.94  --splitting_nvd                         32
% 11.50/1.94  --sub_typing                            true
% 11.50/1.94  --prep_gs_sim                           true
% 11.50/1.94  --prep_unflatten                        true
% 11.50/1.94  --prep_res_sim                          true
% 11.50/1.94  --prep_upred                            true
% 11.50/1.94  --prep_sem_filter                       exhaustive
% 11.50/1.94  --prep_sem_filter_out                   false
% 11.50/1.94  --pred_elim                             true
% 11.50/1.94  --res_sim_input                         true
% 11.50/1.94  --eq_ax_congr_red                       true
% 11.50/1.94  --pure_diseq_elim                       true
% 11.50/1.94  --brand_transform                       false
% 11.50/1.94  --non_eq_to_eq                          false
% 11.50/1.94  --prep_def_merge                        true
% 11.50/1.94  --prep_def_merge_prop_impl              false
% 11.50/1.94  --prep_def_merge_mbd                    true
% 11.50/1.94  --prep_def_merge_tr_red                 false
% 11.50/1.94  --prep_def_merge_tr_cl                  false
% 11.50/1.94  --smt_preprocessing                     true
% 11.50/1.94  --smt_ac_axioms                         fast
% 11.50/1.94  --preprocessed_out                      false
% 11.50/1.94  --preprocessed_stats                    false
% 11.50/1.94  
% 11.50/1.94  ------ Abstraction refinement Options
% 11.50/1.94  
% 11.50/1.94  --abstr_ref                             []
% 11.50/1.94  --abstr_ref_prep                        false
% 11.50/1.94  --abstr_ref_until_sat                   false
% 11.50/1.94  --abstr_ref_sig_restrict                funpre
% 11.50/1.94  --abstr_ref_af_restrict_to_split_sk     false
% 11.50/1.94  --abstr_ref_under                       []
% 11.50/1.94  
% 11.50/1.94  ------ SAT Options
% 11.50/1.94  
% 11.50/1.94  --sat_mode                              false
% 11.50/1.94  --sat_fm_restart_options                ""
% 11.50/1.94  --sat_gr_def                            false
% 11.50/1.94  --sat_epr_types                         true
% 11.50/1.94  --sat_non_cyclic_types                  false
% 11.50/1.94  --sat_finite_models                     false
% 11.50/1.94  --sat_fm_lemmas                         false
% 11.50/1.94  --sat_fm_prep                           false
% 11.50/1.94  --sat_fm_uc_incr                        true
% 11.50/1.94  --sat_out_model                         small
% 11.50/1.94  --sat_out_clauses                       false
% 11.50/1.94  
% 11.50/1.94  ------ QBF Options
% 11.50/1.94  
% 11.50/1.94  --qbf_mode                              false
% 11.50/1.94  --qbf_elim_univ                         false
% 11.50/1.94  --qbf_dom_inst                          none
% 11.50/1.94  --qbf_dom_pre_inst                      false
% 11.50/1.94  --qbf_sk_in                             false
% 11.50/1.94  --qbf_pred_elim                         true
% 11.50/1.94  --qbf_split                             512
% 11.50/1.94  
% 11.50/1.94  ------ BMC1 Options
% 11.50/1.94  
% 11.50/1.94  --bmc1_incremental                      false
% 11.50/1.94  --bmc1_axioms                           reachable_all
% 11.50/1.94  --bmc1_min_bound                        0
% 11.50/1.94  --bmc1_max_bound                        -1
% 11.50/1.94  --bmc1_max_bound_default                -1
% 11.50/1.94  --bmc1_symbol_reachability              true
% 11.50/1.94  --bmc1_property_lemmas                  false
% 11.50/1.94  --bmc1_k_induction                      false
% 11.50/1.94  --bmc1_non_equiv_states                 false
% 11.50/1.94  --bmc1_deadlock                         false
% 11.50/1.94  --bmc1_ucm                              false
% 11.50/1.94  --bmc1_add_unsat_core                   none
% 11.50/1.94  --bmc1_unsat_core_children              false
% 11.50/1.94  --bmc1_unsat_core_extrapolate_axioms    false
% 11.50/1.94  --bmc1_out_stat                         full
% 11.50/1.94  --bmc1_ground_init                      false
% 11.50/1.94  --bmc1_pre_inst_next_state              false
% 11.50/1.94  --bmc1_pre_inst_state                   false
% 11.50/1.94  --bmc1_pre_inst_reach_state             false
% 11.50/1.94  --bmc1_out_unsat_core                   false
% 11.50/1.94  --bmc1_aig_witness_out                  false
% 11.50/1.94  --bmc1_verbose                          false
% 11.50/1.94  --bmc1_dump_clauses_tptp                false
% 11.50/1.94  --bmc1_dump_unsat_core_tptp             false
% 11.50/1.94  --bmc1_dump_file                        -
% 11.50/1.94  --bmc1_ucm_expand_uc_limit              128
% 11.50/1.94  --bmc1_ucm_n_expand_iterations          6
% 11.50/1.94  --bmc1_ucm_extend_mode                  1
% 11.50/1.94  --bmc1_ucm_init_mode                    2
% 11.50/1.94  --bmc1_ucm_cone_mode                    none
% 11.50/1.94  --bmc1_ucm_reduced_relation_type        0
% 11.50/1.94  --bmc1_ucm_relax_model                  4
% 11.50/1.94  --bmc1_ucm_full_tr_after_sat            true
% 11.50/1.94  --bmc1_ucm_expand_neg_assumptions       false
% 11.50/1.94  --bmc1_ucm_layered_model                none
% 11.50/1.94  --bmc1_ucm_max_lemma_size               10
% 11.50/1.94  
% 11.50/1.94  ------ AIG Options
% 11.50/1.94  
% 11.50/1.94  --aig_mode                              false
% 11.50/1.94  
% 11.50/1.94  ------ Instantiation Options
% 11.50/1.94  
% 11.50/1.94  --instantiation_flag                    true
% 11.50/1.94  --inst_sos_flag                         true
% 11.50/1.94  --inst_sos_phase                        true
% 11.50/1.94  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.50/1.94  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.50/1.94  --inst_lit_sel_side                     num_symb
% 11.50/1.94  --inst_solver_per_active                1400
% 11.50/1.94  --inst_solver_calls_frac                1.
% 11.50/1.94  --inst_passive_queue_type               priority_queues
% 11.50/1.94  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.50/1.94  --inst_passive_queues_freq              [25;2]
% 11.50/1.94  --inst_dismatching                      true
% 11.50/1.94  --inst_eager_unprocessed_to_passive     true
% 11.50/1.94  --inst_prop_sim_given                   true
% 11.50/1.94  --inst_prop_sim_new                     false
% 11.50/1.94  --inst_subs_new                         false
% 11.50/1.94  --inst_eq_res_simp                      false
% 11.50/1.94  --inst_subs_given                       false
% 11.50/1.94  --inst_orphan_elimination               true
% 11.50/1.94  --inst_learning_loop_flag               true
% 11.50/1.94  --inst_learning_start                   3000
% 11.50/1.94  --inst_learning_factor                  2
% 11.50/1.94  --inst_start_prop_sim_after_learn       3
% 11.50/1.94  --inst_sel_renew                        solver
% 11.50/1.94  --inst_lit_activity_flag                true
% 11.50/1.94  --inst_restr_to_given                   false
% 11.50/1.94  --inst_activity_threshold               500
% 11.50/1.94  --inst_out_proof                        true
% 11.50/1.94  
% 11.50/1.94  ------ Resolution Options
% 11.50/1.94  
% 11.50/1.94  --resolution_flag                       true
% 11.50/1.94  --res_lit_sel                           adaptive
% 11.50/1.94  --res_lit_sel_side                      none
% 11.50/1.94  --res_ordering                          kbo
% 11.50/1.94  --res_to_prop_solver                    active
% 11.50/1.94  --res_prop_simpl_new                    false
% 11.50/1.94  --res_prop_simpl_given                  true
% 11.50/1.94  --res_passive_queue_type                priority_queues
% 11.50/1.94  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.50/1.94  --res_passive_queues_freq               [15;5]
% 11.50/1.94  --res_forward_subs                      full
% 11.50/1.94  --res_backward_subs                     full
% 11.50/1.94  --res_forward_subs_resolution           true
% 11.50/1.94  --res_backward_subs_resolution          true
% 11.50/1.94  --res_orphan_elimination                true
% 11.50/1.94  --res_time_limit                        2.
% 11.50/1.94  --res_out_proof                         true
% 11.50/1.94  
% 11.50/1.94  ------ Superposition Options
% 11.50/1.94  
% 11.50/1.94  --superposition_flag                    true
% 11.50/1.94  --sup_passive_queue_type                priority_queues
% 11.50/1.94  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.50/1.94  --sup_passive_queues_freq               [8;1;4]
% 11.50/1.94  --demod_completeness_check              fast
% 11.50/1.94  --demod_use_ground                      true
% 11.50/1.94  --sup_to_prop_solver                    passive
% 11.50/1.94  --sup_prop_simpl_new                    true
% 11.50/1.94  --sup_prop_simpl_given                  true
% 11.50/1.94  --sup_fun_splitting                     true
% 11.50/1.94  --sup_smt_interval                      50000
% 11.50/1.94  
% 11.50/1.94  ------ Superposition Simplification Setup
% 11.50/1.94  
% 11.50/1.94  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 11.50/1.94  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 11.50/1.94  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 11.50/1.94  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 11.50/1.94  --sup_full_triv                         [TrivRules;PropSubs]
% 11.50/1.94  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 11.50/1.94  --sup_full_bw                           [BwDemod;BwSubsumption]
% 11.50/1.94  --sup_immed_triv                        [TrivRules]
% 11.50/1.94  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.50/1.94  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.50/1.94  --sup_immed_bw_main                     []
% 11.50/1.94  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 11.50/1.94  --sup_input_triv                        [Unflattening;TrivRules]
% 11.50/1.94  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.50/1.94  --sup_input_bw                          []
% 11.50/1.94  
% 11.50/1.94  ------ Combination Options
% 11.50/1.94  
% 11.50/1.94  --comb_res_mult                         3
% 11.50/1.94  --comb_sup_mult                         2
% 11.50/1.94  --comb_inst_mult                        10
% 11.50/1.94  
% 11.50/1.94  ------ Debug Options
% 11.50/1.94  
% 11.50/1.94  --dbg_backtrace                         false
% 11.50/1.94  --dbg_dump_prop_clauses                 false
% 11.50/1.94  --dbg_dump_prop_clauses_file            -
% 11.50/1.94  --dbg_out_stat                          false
% 11.50/1.94  ------ Parsing...
% 11.50/1.94  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 11.50/1.94  
% 11.50/1.94  ------ Preprocessing... sf_s  rm: 0 0s  sf_e  pe_s  pe_e 
% 11.50/1.94  
% 11.50/1.94  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 11.50/1.94  
% 11.50/1.94  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 11.50/1.94  ------ Proving...
% 11.50/1.94  ------ Problem Properties 
% 11.50/1.94  
% 11.50/1.94  
% 11.50/1.94  clauses                                 11
% 11.50/1.94  conjectures                             1
% 11.50/1.94  EPR                                     0
% 11.50/1.94  Horn                                    11
% 11.50/1.94  unary                                   10
% 11.50/1.94  binary                                  1
% 11.50/1.94  lits                                    12
% 11.50/1.94  lits eq                                 12
% 11.50/1.94  fd_pure                                 0
% 11.50/1.94  fd_pseudo                               0
% 11.50/1.94  fd_cond                                 0
% 11.50/1.94  fd_pseudo_cond                          1
% 11.50/1.94  AC symbols                              0
% 11.50/1.94  
% 11.50/1.94  ------ Schedule dynamic 5 is on 
% 11.50/1.94  
% 11.50/1.94  ------ pure equality problem: resolution off 
% 11.50/1.94  
% 11.50/1.94  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 11.50/1.94  
% 11.50/1.94  
% 11.50/1.94  ------ 
% 11.50/1.94  Current options:
% 11.50/1.94  ------ 
% 11.50/1.94  
% 11.50/1.94  ------ Input Options
% 11.50/1.94  
% 11.50/1.94  --out_options                           all
% 11.50/1.94  --tptp_safe_out                         true
% 11.50/1.94  --problem_path                          ""
% 11.50/1.94  --include_path                          ""
% 11.50/1.94  --clausifier                            res/vclausify_rel
% 11.50/1.94  --clausifier_options                    ""
% 11.50/1.94  --stdin                                 false
% 11.50/1.94  --stats_out                             all
% 11.50/1.94  
% 11.50/1.94  ------ General Options
% 11.50/1.94  
% 11.50/1.94  --fof                                   false
% 11.50/1.94  --time_out_real                         305.
% 11.50/1.94  --time_out_virtual                      -1.
% 11.50/1.94  --symbol_type_check                     false
% 11.50/1.94  --clausify_out                          false
% 11.50/1.94  --sig_cnt_out                           false
% 11.50/1.94  --trig_cnt_out                          false
% 11.50/1.94  --trig_cnt_out_tolerance                1.
% 11.50/1.94  --trig_cnt_out_sk_spl                   false
% 11.50/1.94  --abstr_cl_out                          false
% 11.50/1.94  
% 11.50/1.94  ------ Global Options
% 11.50/1.94  
% 11.50/1.94  --schedule                              default
% 11.50/1.94  --add_important_lit                     false
% 11.50/1.94  --prop_solver_per_cl                    1000
% 11.50/1.94  --min_unsat_core                        false
% 11.50/1.94  --soft_assumptions                      false
% 11.50/1.94  --soft_lemma_size                       3
% 11.50/1.94  --prop_impl_unit_size                   0
% 11.50/1.94  --prop_impl_unit                        []
% 11.50/1.94  --share_sel_clauses                     true
% 11.50/1.94  --reset_solvers                         false
% 11.50/1.94  --bc_imp_inh                            [conj_cone]
% 11.50/1.94  --conj_cone_tolerance                   3.
% 11.50/1.94  --extra_neg_conj                        none
% 11.50/1.94  --large_theory_mode                     true
% 11.50/1.94  --prolific_symb_bound                   200
% 11.50/1.94  --lt_threshold                          2000
% 11.50/1.94  --clause_weak_htbl                      true
% 11.50/1.94  --gc_record_bc_elim                     false
% 11.50/1.94  
% 11.50/1.94  ------ Preprocessing Options
% 11.50/1.94  
% 11.50/1.94  --preprocessing_flag                    true
% 11.50/1.94  --time_out_prep_mult                    0.1
% 11.50/1.94  --splitting_mode                        input
% 11.50/1.94  --splitting_grd                         true
% 11.50/1.94  --splitting_cvd                         false
% 11.50/1.94  --splitting_cvd_svl                     false
% 11.50/1.94  --splitting_nvd                         32
% 11.50/1.94  --sub_typing                            true
% 11.50/1.94  --prep_gs_sim                           true
% 11.50/1.94  --prep_unflatten                        true
% 11.50/1.94  --prep_res_sim                          true
% 11.50/1.94  --prep_upred                            true
% 11.50/1.94  --prep_sem_filter                       exhaustive
% 11.50/1.94  --prep_sem_filter_out                   false
% 11.50/1.94  --pred_elim                             true
% 11.50/1.94  --res_sim_input                         true
% 11.50/1.94  --eq_ax_congr_red                       true
% 11.50/1.94  --pure_diseq_elim                       true
% 11.50/1.94  --brand_transform                       false
% 11.50/1.94  --non_eq_to_eq                          false
% 11.50/1.94  --prep_def_merge                        true
% 11.50/1.94  --prep_def_merge_prop_impl              false
% 11.50/1.94  --prep_def_merge_mbd                    true
% 11.50/1.94  --prep_def_merge_tr_red                 false
% 11.50/1.94  --prep_def_merge_tr_cl                  false
% 11.50/1.94  --smt_preprocessing                     true
% 11.50/1.94  --smt_ac_axioms                         fast
% 11.50/1.94  --preprocessed_out                      false
% 11.50/1.94  --preprocessed_stats                    false
% 11.50/1.94  
% 11.50/1.94  ------ Abstraction refinement Options
% 11.50/1.94  
% 11.50/1.94  --abstr_ref                             []
% 11.50/1.94  --abstr_ref_prep                        false
% 11.50/1.94  --abstr_ref_until_sat                   false
% 11.50/1.94  --abstr_ref_sig_restrict                funpre
% 11.50/1.94  --abstr_ref_af_restrict_to_split_sk     false
% 11.50/1.94  --abstr_ref_under                       []
% 11.50/1.94  
% 11.50/1.94  ------ SAT Options
% 11.50/1.94  
% 11.50/1.94  --sat_mode                              false
% 11.50/1.94  --sat_fm_restart_options                ""
% 11.50/1.94  --sat_gr_def                            false
% 11.50/1.94  --sat_epr_types                         true
% 11.50/1.94  --sat_non_cyclic_types                  false
% 11.50/1.94  --sat_finite_models                     false
% 11.50/1.94  --sat_fm_lemmas                         false
% 11.50/1.94  --sat_fm_prep                           false
% 11.50/1.94  --sat_fm_uc_incr                        true
% 11.50/1.94  --sat_out_model                         small
% 11.50/1.94  --sat_out_clauses                       false
% 11.50/1.94  
% 11.50/1.94  ------ QBF Options
% 11.50/1.94  
% 11.50/1.94  --qbf_mode                              false
% 11.50/1.94  --qbf_elim_univ                         false
% 11.50/1.94  --qbf_dom_inst                          none
% 11.50/1.94  --qbf_dom_pre_inst                      false
% 11.50/1.94  --qbf_sk_in                             false
% 11.50/1.94  --qbf_pred_elim                         true
% 11.50/1.94  --qbf_split                             512
% 11.50/1.94  
% 11.50/1.94  ------ BMC1 Options
% 11.50/1.94  
% 11.50/1.94  --bmc1_incremental                      false
% 11.50/1.94  --bmc1_axioms                           reachable_all
% 11.50/1.94  --bmc1_min_bound                        0
% 11.50/1.94  --bmc1_max_bound                        -1
% 11.50/1.94  --bmc1_max_bound_default                -1
% 11.50/1.94  --bmc1_symbol_reachability              true
% 11.50/1.94  --bmc1_property_lemmas                  false
% 11.50/1.94  --bmc1_k_induction                      false
% 11.50/1.94  --bmc1_non_equiv_states                 false
% 11.50/1.94  --bmc1_deadlock                         false
% 11.50/1.94  --bmc1_ucm                              false
% 11.50/1.94  --bmc1_add_unsat_core                   none
% 11.50/1.94  --bmc1_unsat_core_children              false
% 11.50/1.94  --bmc1_unsat_core_extrapolate_axioms    false
% 11.50/1.94  --bmc1_out_stat                         full
% 11.50/1.94  --bmc1_ground_init                      false
% 11.50/1.94  --bmc1_pre_inst_next_state              false
% 11.50/1.94  --bmc1_pre_inst_state                   false
% 11.50/1.94  --bmc1_pre_inst_reach_state             false
% 11.50/1.94  --bmc1_out_unsat_core                   false
% 11.50/1.94  --bmc1_aig_witness_out                  false
% 11.50/1.94  --bmc1_verbose                          false
% 11.50/1.94  --bmc1_dump_clauses_tptp                false
% 11.50/1.94  --bmc1_dump_unsat_core_tptp             false
% 11.50/1.94  --bmc1_dump_file                        -
% 11.50/1.94  --bmc1_ucm_expand_uc_limit              128
% 11.50/1.94  --bmc1_ucm_n_expand_iterations          6
% 11.50/1.94  --bmc1_ucm_extend_mode                  1
% 11.50/1.94  --bmc1_ucm_init_mode                    2
% 11.50/1.94  --bmc1_ucm_cone_mode                    none
% 11.50/1.94  --bmc1_ucm_reduced_relation_type        0
% 11.50/1.94  --bmc1_ucm_relax_model                  4
% 11.50/1.94  --bmc1_ucm_full_tr_after_sat            true
% 11.50/1.94  --bmc1_ucm_expand_neg_assumptions       false
% 11.50/1.94  --bmc1_ucm_layered_model                none
% 11.50/1.94  --bmc1_ucm_max_lemma_size               10
% 11.50/1.94  
% 11.50/1.94  ------ AIG Options
% 11.50/1.94  
% 11.50/1.94  --aig_mode                              false
% 11.50/1.94  
% 11.50/1.94  ------ Instantiation Options
% 11.50/1.94  
% 11.50/1.94  --instantiation_flag                    true
% 11.50/1.94  --inst_sos_flag                         true
% 11.50/1.94  --inst_sos_phase                        true
% 11.50/1.94  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.50/1.94  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.50/1.94  --inst_lit_sel_side                     none
% 11.50/1.94  --inst_solver_per_active                1400
% 11.50/1.94  --inst_solver_calls_frac                1.
% 11.50/1.94  --inst_passive_queue_type               priority_queues
% 11.50/1.94  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.50/1.94  --inst_passive_queues_freq              [25;2]
% 11.50/1.94  --inst_dismatching                      true
% 11.50/1.94  --inst_eager_unprocessed_to_passive     true
% 11.50/1.94  --inst_prop_sim_given                   true
% 11.50/1.94  --inst_prop_sim_new                     false
% 11.50/1.94  --inst_subs_new                         false
% 11.50/1.94  --inst_eq_res_simp                      false
% 11.50/1.94  --inst_subs_given                       false
% 11.50/1.94  --inst_orphan_elimination               true
% 11.50/1.94  --inst_learning_loop_flag               true
% 11.50/1.94  --inst_learning_start                   3000
% 11.50/1.94  --inst_learning_factor                  2
% 11.50/1.94  --inst_start_prop_sim_after_learn       3
% 11.50/1.94  --inst_sel_renew                        solver
% 11.50/1.94  --inst_lit_activity_flag                true
% 11.50/1.94  --inst_restr_to_given                   false
% 11.50/1.94  --inst_activity_threshold               500
% 11.50/1.94  --inst_out_proof                        true
% 11.50/1.94  
% 11.50/1.94  ------ Resolution Options
% 11.50/1.94  
% 11.50/1.94  --resolution_flag                       false
% 11.50/1.94  --res_lit_sel                           adaptive
% 11.50/1.94  --res_lit_sel_side                      none
% 11.50/1.94  --res_ordering                          kbo
% 11.50/1.94  --res_to_prop_solver                    active
% 11.50/1.94  --res_prop_simpl_new                    false
% 11.50/1.94  --res_prop_simpl_given                  true
% 11.50/1.94  --res_passive_queue_type                priority_queues
% 11.50/1.94  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.50/1.94  --res_passive_queues_freq               [15;5]
% 11.50/1.94  --res_forward_subs                      full
% 11.50/1.94  --res_backward_subs                     full
% 11.50/1.94  --res_forward_subs_resolution           true
% 11.50/1.94  --res_backward_subs_resolution          true
% 11.50/1.94  --res_orphan_elimination                true
% 11.50/1.94  --res_time_limit                        2.
% 11.50/1.94  --res_out_proof                         true
% 11.50/1.94  
% 11.50/1.94  ------ Superposition Options
% 11.50/1.94  
% 11.50/1.94  --superposition_flag                    true
% 11.50/1.94  --sup_passive_queue_type                priority_queues
% 11.50/1.94  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.50/1.94  --sup_passive_queues_freq               [8;1;4]
% 11.50/1.94  --demod_completeness_check              fast
% 11.50/1.94  --demod_use_ground                      true
% 11.50/1.94  --sup_to_prop_solver                    passive
% 11.50/1.94  --sup_prop_simpl_new                    true
% 11.50/1.94  --sup_prop_simpl_given                  true
% 11.50/1.94  --sup_fun_splitting                     true
% 11.50/1.94  --sup_smt_interval                      50000
% 11.50/1.94  
% 11.50/1.94  ------ Superposition Simplification Setup
% 11.50/1.94  
% 11.50/1.94  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 11.50/1.94  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 11.50/1.94  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 11.50/1.94  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 11.50/1.94  --sup_full_triv                         [TrivRules;PropSubs]
% 11.50/1.94  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 11.50/1.94  --sup_full_bw                           [BwDemod;BwSubsumption]
% 11.50/1.94  --sup_immed_triv                        [TrivRules]
% 11.50/1.94  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.50/1.94  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.50/1.94  --sup_immed_bw_main                     []
% 11.50/1.94  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 11.50/1.94  --sup_input_triv                        [Unflattening;TrivRules]
% 11.50/1.94  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.50/1.94  --sup_input_bw                          []
% 11.50/1.94  
% 11.50/1.94  ------ Combination Options
% 11.50/1.94  
% 11.50/1.94  --comb_res_mult                         3
% 11.50/1.94  --comb_sup_mult                         2
% 11.50/1.94  --comb_inst_mult                        10
% 11.50/1.94  
% 11.50/1.94  ------ Debug Options
% 11.50/1.94  
% 11.50/1.94  --dbg_backtrace                         false
% 11.50/1.94  --dbg_dump_prop_clauses                 false
% 11.50/1.94  --dbg_dump_prop_clauses_file            -
% 11.50/1.94  --dbg_out_stat                          false
% 11.50/1.94  
% 11.50/1.94  
% 11.50/1.94  
% 11.50/1.94  
% 11.50/1.94  ------ Proving...
% 11.50/1.94  
% 11.50/1.94  
% 11.50/1.94  % SZS status Theorem for theBenchmark.p
% 11.50/1.94  
% 11.50/1.94  % SZS output start CNFRefutation for theBenchmark.p
% 11.50/1.94  
% 11.50/1.94  fof(f8,axiom,(
% 11.50/1.94    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1)),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f27,plain,(
% 11.50/1.94    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1)) )),
% 11.50/1.94    inference(cnf_transformation,[],[f8])).
% 11.50/1.94  
% 11.50/1.94  fof(f2,axiom,(
% 11.50/1.94    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f21,plain,(
% 11.50/1.94    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 11.50/1.94    inference(cnf_transformation,[],[f2])).
% 11.50/1.94  
% 11.50/1.94  fof(f12,axiom,(
% 11.50/1.94    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f31,plain,(
% 11.50/1.94    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 11.50/1.94    inference(cnf_transformation,[],[f12])).
% 11.50/1.94  
% 11.50/1.94  fof(f33,plain,(
% 11.50/1.94    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 11.50/1.94    inference(definition_unfolding,[],[f21,f31,f31])).
% 11.50/1.94  
% 11.50/1.94  fof(f7,axiom,(
% 11.50/1.94    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f26,plain,(
% 11.50/1.94    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 11.50/1.94    inference(cnf_transformation,[],[f7])).
% 11.50/1.94  
% 11.50/1.94  fof(f1,axiom,(
% 11.50/1.94    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f20,plain,(
% 11.50/1.94    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 11.50/1.94    inference(cnf_transformation,[],[f1])).
% 11.50/1.94  
% 11.50/1.94  fof(f11,axiom,(
% 11.50/1.94    ! [X0,X1] : k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f30,plain,(
% 11.50/1.94    ( ! [X0,X1] : (k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0) )),
% 11.50/1.94    inference(cnf_transformation,[],[f11])).
% 11.50/1.94  
% 11.50/1.94  fof(f9,axiom,(
% 11.50/1.94    ! [X0,X1,X2] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2)),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f28,plain,(
% 11.50/1.94    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2)) )),
% 11.50/1.94    inference(cnf_transformation,[],[f9])).
% 11.50/1.94  
% 11.50/1.94  fof(f13,conjecture,(
% 11.50/1.94    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f14,negated_conjecture,(
% 11.50/1.94    ~! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))),
% 11.50/1.94    inference(negated_conjecture,[],[f13])).
% 11.50/1.94  
% 11.50/1.94  fof(f17,plain,(
% 11.50/1.94    ? [X0,X1] : k3_xboole_0(X0,X1) != k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))),
% 11.50/1.94    inference(ennf_transformation,[],[f14])).
% 11.50/1.94  
% 11.50/1.94  fof(f18,plain,(
% 11.50/1.94    ? [X0,X1] : k3_xboole_0(X0,X1) != k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) => k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1))),
% 11.50/1.94    introduced(choice_axiom,[])).
% 11.50/1.94  
% 11.50/1.94  fof(f19,plain,(
% 11.50/1.94    k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1))),
% 11.50/1.94    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f17,f18])).
% 11.50/1.94  
% 11.50/1.94  fof(f32,plain,(
% 11.50/1.94    k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1))),
% 11.50/1.94    inference(cnf_transformation,[],[f19])).
% 11.50/1.94  
% 11.50/1.94  fof(f3,axiom,(
% 11.50/1.94    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k5_xboole_0(X0,X1)),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f22,plain,(
% 11.50/1.94    ( ! [X0,X1] : (k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k5_xboole_0(X0,X1)) )),
% 11.50/1.94    inference(cnf_transformation,[],[f3])).
% 11.50/1.94  
% 11.50/1.94  fof(f34,plain,(
% 11.50/1.94    k2_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1)),k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))),
% 11.50/1.94    inference(definition_unfolding,[],[f32,f31,f22,f22])).
% 11.50/1.94  
% 11.50/1.94  fof(f10,axiom,(
% 11.50/1.94    ! [X0,X1,X2] : k2_xboole_0(k4_xboole_0(X0,X2),k4_xboole_0(X1,X2)) = k4_xboole_0(k2_xboole_0(X0,X1),X2)),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f29,plain,(
% 11.50/1.94    ( ! [X2,X0,X1] : (k2_xboole_0(k4_xboole_0(X0,X2),k4_xboole_0(X1,X2)) = k4_xboole_0(k2_xboole_0(X0,X1),X2)) )),
% 11.50/1.94    inference(cnf_transformation,[],[f10])).
% 11.50/1.94  
% 11.50/1.94  fof(f5,axiom,(
% 11.50/1.94    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f24,plain,(
% 11.50/1.94    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 11.50/1.94    inference(cnf_transformation,[],[f5])).
% 11.50/1.94  
% 11.50/1.94  fof(f6,axiom,(
% 11.50/1.94    ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X1,X0) => X0 = X1)),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f16,plain,(
% 11.50/1.94    ! [X0,X1] : (X0 = X1 | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0))),
% 11.50/1.94    inference(ennf_transformation,[],[f6])).
% 11.50/1.94  
% 11.50/1.94  fof(f25,plain,(
% 11.50/1.94    ( ! [X0,X1] : (X0 = X1 | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0)) )),
% 11.50/1.94    inference(cnf_transformation,[],[f16])).
% 11.50/1.94  
% 11.50/1.94  fof(f4,axiom,(
% 11.50/1.94    ! [X0,X1] : k2_xboole_0(X0,X0) = X0),
% 11.50/1.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.50/1.94  
% 11.50/1.94  fof(f15,plain,(
% 11.50/1.94    ! [X0] : k2_xboole_0(X0,X0) = X0),
% 11.50/1.94    inference(rectify,[],[f4])).
% 11.50/1.94  
% 11.50/1.94  fof(f23,plain,(
% 11.50/1.94    ( ! [X0] : (k2_xboole_0(X0,X0) = X0) )),
% 11.50/1.94    inference(cnf_transformation,[],[f15])).
% 11.50/1.94  
% 11.50/1.94  cnf(c_6,plain,
% 11.50/1.94      ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
% 11.50/1.94      inference(cnf_transformation,[],[f27]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_1,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 11.50/1.94      inference(cnf_transformation,[],[f33]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_368,plain,
% 11.50/1.94      ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,k2_xboole_0(X0,X1))) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_6,c_1]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_5,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 11.50/1.94      inference(cnf_transformation,[],[f26]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_0,plain,
% 11.50/1.94      ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
% 11.50/1.94      inference(cnf_transformation,[],[f20]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_9,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
% 11.50/1.94      inference(cnf_transformation,[],[f30]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_258,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k2_xboole_0(X1,X0)) = k1_xboole_0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_0,c_9]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_369,plain,
% 11.50/1.94      ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = X1 ),
% 11.50/1.94      inference(demodulation,[status(thm)],[c_368,c_5,c_258]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_7,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
% 11.50/1.94      inference(cnf_transformation,[],[f28]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_702,plain,
% 11.50/1.94      ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X2)) = k4_xboole_0(X1,X2) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_369,c_7]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_10,negated_conjecture,
% 11.50/1.94      ( k2_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1)),k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.50/1.94      inference(cnf_transformation,[],[f34]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_212,plain,
% 11.50/1.94      ( k2_xboole_0(k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))),k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.50/1.94      inference(demodulation,[status(thm)],[c_0,c_10]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_33625,plain,
% 11.50/1.94      ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)),k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.50/1.94      inference(demodulation,[status(thm)],[c_702,c_212]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_377,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k2_xboole_0(k4_xboole_0(X0,X1),X2)) = k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X2) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_1,c_7]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_957,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X1) = k1_xboole_0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_377,c_258]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_1406,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) = k1_xboole_0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_1,c_957]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_1512,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(k2_xboole_0(X0,X1),X1),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_369,c_1406]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_1558,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
% 11.50/1.94      inference(light_normalisation,[status(thm)],[c_1512,c_6]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_8,plain,
% 11.50/1.94      ( k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X2,X1)) = k4_xboole_0(k2_xboole_0(X0,X2),X1) ),
% 11.50/1.94      inference(cnf_transformation,[],[f29]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_1865,plain,
% 11.50/1.94      ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X2),k2_xboole_0(X0,X1)) = k2_xboole_0(k1_xboole_0,k4_xboole_0(X2,k2_xboole_0(X0,X1))) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_1558,c_8]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_3,plain,
% 11.50/1.94      ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
% 11.50/1.94      inference(cnf_transformation,[],[f24]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_213,plain,
% 11.50/1.94      ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_3,c_0]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_1885,plain,
% 11.50/1.94      ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X2),k2_xboole_0(X0,X1)) = k4_xboole_0(X2,k2_xboole_0(X0,X1)) ),
% 11.50/1.94      inference(demodulation,[status(thm)],[c_1865,c_213]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_33626,plain,
% 11.50/1.94      ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)),k4_xboole_0(k4_xboole_0(sK1,sK0),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.50/1.94      inference(demodulation,[status(thm)],[c_33625,c_1885]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_309,plain,
% 11.50/1.94      ( k4_xboole_0(k2_xboole_0(X0,X1),X0) = k4_xboole_0(X1,X0) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_0,c_6]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_605,plain,
% 11.50/1.94      ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k4_xboole_0(X0,k4_xboole_0(X0,k2_xboole_0(X0,X1))) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_309,c_1]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_608,plain,
% 11.50/1.94      ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = X0 ),
% 11.50/1.94      inference(light_normalisation,[status(thm)],[c_605,c_5,c_9]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_1125,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(k2_xboole_0(X0,X2),X1)) = k1_xboole_0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_8,c_9]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_4155,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X1,X0)),X0) = k1_xboole_0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_608,c_1125]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_4,plain,
% 11.50/1.94      ( X0 = X1 | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0) ),
% 11.50/1.94      inference(cnf_transformation,[],[f25]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_4558,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0
% 11.50/1.94      | k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,X0))) != k1_xboole_0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_4155,c_4]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_2,plain,
% 11.50/1.94      ( k2_xboole_0(X0,X0) = X0 ),
% 11.50/1.94      inference(cnf_transformation,[],[f23]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_388,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(k4_xboole_0(X0,X1),X2))) = k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X0,X1))) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_7,c_1]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_393,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,k2_xboole_0(X1,X2)))) = k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X0,X1))) ),
% 11.50/1.94      inference(demodulation,[status(thm)],[c_388,c_7]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_3600,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,X0))) = k4_xboole_0(X1,k2_xboole_0(X0,k4_xboole_0(X1,X0))) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_2,c_393]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_260,plain,
% 11.50/1.94      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_2,c_9]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_496,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,X1))) = k1_xboole_0 ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_260,c_7]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_3781,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,X0))) = k1_xboole_0 ),
% 11.50/1.94      inference(demodulation,[status(thm)],[c_3600,c_496]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_4579,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0
% 11.50/1.94      | k1_xboole_0 != k1_xboole_0 ),
% 11.50/1.94      inference(light_normalisation,[status(thm)],[c_4558,c_3781]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_4580,plain,
% 11.50/1.94      ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0 ),
% 11.50/1.94      inference(equality_resolution_simp,[status(thm)],[c_4579]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_4792,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_4580,c_4580]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_5072,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
% 11.50/1.94      inference(superposition,[status(thm)],[c_4792,c_7]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_5099,plain,
% 11.50/1.94      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X1,X2)) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
% 11.50/1.94      inference(light_normalisation,[status(thm)],[c_5072,c_7]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_33627,plain,
% 11.50/1.94      ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)),k4_xboole_0(sK1,k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.50/1.94      inference(demodulation,[status(thm)],[c_33626,c_5099]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_33628,plain,
% 11.50/1.94      ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.50/1.94      inference(demodulation,[status(thm)],[c_33627,c_3,c_258]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(c_299,plain,
% 11.50/1.94      ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)) = k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.50/1.94      inference(instantiation,[status(thm)],[c_1]) ).
% 11.50/1.94  
% 11.50/1.94  cnf(contradiction,plain,
% 11.50/1.94      ( $false ),
% 11.50/1.94      inference(minisat,[status(thm)],[c_33628,c_299]) ).
% 11.50/1.94  
% 11.50/1.94  
% 11.50/1.94  % SZS output end CNFRefutation for theBenchmark.p
% 11.50/1.94  
% 11.50/1.94  ------                               Statistics
% 11.50/1.94  
% 11.50/1.94  ------ General
% 11.50/1.94  
% 11.50/1.94  abstr_ref_over_cycles:                  0
% 11.50/1.94  abstr_ref_under_cycles:                 0
% 11.50/1.94  gc_basic_clause_elim:                   0
% 11.50/1.94  forced_gc_time:                         0
% 11.50/1.94  parsing_time:                           0.007
% 11.50/1.94  unif_index_cands_time:                  0.
% 11.50/1.94  unif_index_add_time:                    0.
% 11.50/1.94  orderings_time:                         0.
% 11.50/1.94  out_proof_time:                         0.007
% 11.50/1.94  total_time:                             1.051
% 11.50/1.94  num_of_symbols:                         37
% 11.50/1.94  num_of_terms:                           56831
% 11.50/1.94  
% 11.50/1.94  ------ Preprocessing
% 11.50/1.94  
% 11.50/1.94  num_of_splits:                          0
% 11.50/1.94  num_of_split_atoms:                     1
% 11.50/1.94  num_of_reused_defs:                     3
% 11.50/1.94  num_eq_ax_congr_red:                    0
% 11.50/1.94  num_of_sem_filtered_clauses:            0
% 11.50/1.94  num_of_subtypes:                        0
% 11.50/1.94  monotx_restored_types:                  0
% 11.50/1.94  sat_num_of_epr_types:                   0
% 11.50/1.94  sat_num_of_non_cyclic_types:            0
% 11.50/1.94  sat_guarded_non_collapsed_types:        0
% 11.50/1.94  num_pure_diseq_elim:                    0
% 11.50/1.94  simp_replaced_by:                       0
% 11.50/1.94  res_preprocessed:                       26
% 11.50/1.94  prep_upred:                             0
% 11.50/1.94  prep_unflattend:                        0
% 11.50/1.94  smt_new_axioms:                         0
% 11.50/1.94  pred_elim_cands:                        0
% 11.50/1.94  pred_elim:                              0
% 11.50/1.94  pred_elim_cl:                           0
% 11.50/1.94  pred_elim_cycles:                       0
% 11.50/1.94  merged_defs:                            0
% 11.50/1.94  merged_defs_ncl:                        0
% 11.50/1.94  bin_hyper_res:                          0
% 11.50/1.94  prep_cycles:                            2
% 11.50/1.94  pred_elim_time:                         0.
% 11.50/1.94  splitting_time:                         0.
% 11.50/1.94  sem_filter_time:                        0.
% 11.50/1.94  monotx_time:                            0.
% 11.50/1.94  subtype_inf_time:                       0.
% 11.50/1.94  
% 11.50/1.94  ------ Problem properties
% 11.50/1.94  
% 11.50/1.94  clauses:                                11
% 11.50/1.94  conjectures:                            1
% 11.50/1.94  epr:                                    0
% 11.50/1.94  horn:                                   11
% 11.50/1.94  ground:                                 1
% 11.50/1.94  unary:                                  10
% 11.50/1.94  binary:                                 1
% 11.50/1.94  lits:                                   12
% 11.50/1.94  lits_eq:                                12
% 11.50/1.94  fd_pure:                                0
% 11.50/1.94  fd_pseudo:                              0
% 11.50/1.94  fd_cond:                                0
% 11.50/1.94  fd_pseudo_cond:                         1
% 11.50/1.94  ac_symbols:                             0
% 11.50/1.94  
% 11.50/1.94  ------ Propositional Solver
% 11.50/1.94  
% 11.50/1.94  prop_solver_calls:                      22
% 11.50/1.94  prop_fast_solver_calls:                 250
% 11.50/1.94  smt_solver_calls:                       0
% 11.50/1.94  smt_fast_solver_calls:                  0
% 11.50/1.94  prop_num_of_clauses:                    6879
% 11.50/1.94  prop_preprocess_simplified:             7108
% 11.50/1.94  prop_fo_subsumed:                       0
% 11.50/1.94  prop_solver_time:                       0.
% 11.50/1.94  smt_solver_time:                        0.
% 11.50/1.94  smt_fast_solver_time:                   0.
% 11.50/1.94  prop_fast_solver_time:                  0.
% 11.50/1.94  prop_unsat_core_time:                   0.
% 11.50/1.94  
% 11.50/1.94  ------ QBF
% 11.50/1.94  
% 11.50/1.94  qbf_q_res:                              0
% 11.50/1.94  qbf_num_tautologies:                    0
% 11.50/1.94  qbf_prep_cycles:                        0
% 11.50/1.94  
% 11.50/1.94  ------ BMC1
% 11.50/1.94  
% 11.50/1.94  bmc1_current_bound:                     -1
% 11.50/1.94  bmc1_last_solved_bound:                 -1
% 11.50/1.94  bmc1_unsat_core_size:                   -1
% 11.50/1.94  bmc1_unsat_core_parents_size:           -1
% 11.50/1.94  bmc1_merge_next_fun:                    0
% 11.50/1.94  bmc1_unsat_core_clauses_time:           0.
% 11.50/1.94  
% 11.50/1.94  ------ Instantiation
% 11.50/1.94  
% 11.50/1.94  inst_num_of_clauses:                    1606
% 11.50/1.94  inst_num_in_passive:                    809
% 11.50/1.94  inst_num_in_active:                     714
% 11.50/1.94  inst_num_in_unprocessed:                91
% 11.50/1.94  inst_num_of_loops:                      760
% 11.50/1.94  inst_num_of_learning_restarts:          0
% 11.50/1.94  inst_num_moves_active_passive:          45
% 11.50/1.94  inst_lit_activity:                      0
% 11.50/1.94  inst_lit_activity_moves:                0
% 11.50/1.94  inst_num_tautologies:                   0
% 11.50/1.94  inst_num_prop_implied:                  0
% 11.50/1.94  inst_num_existing_simplified:           0
% 11.50/1.94  inst_num_eq_res_simplified:             0
% 11.50/1.94  inst_num_child_elim:                    0
% 11.50/1.94  inst_num_of_dismatching_blockings:      1115
% 11.50/1.94  inst_num_of_non_proper_insts:           2975
% 11.50/1.94  inst_num_of_duplicates:                 0
% 11.50/1.94  inst_inst_num_from_inst_to_res:         0
% 11.50/1.94  inst_dismatching_checking_time:         0.
% 11.50/1.94  
% 11.50/1.94  ------ Resolution
% 11.50/1.94  
% 11.50/1.94  res_num_of_clauses:                     0
% 11.50/1.94  res_num_in_passive:                     0
% 11.50/1.94  res_num_in_active:                      0
% 11.50/1.94  res_num_of_loops:                       28
% 11.50/1.94  res_forward_subset_subsumed:            686
% 11.50/1.94  res_backward_subset_subsumed:           20
% 11.50/1.94  res_forward_subsumed:                   0
% 11.50/1.94  res_backward_subsumed:                  0
% 11.50/1.94  res_forward_subsumption_resolution:     0
% 11.50/1.94  res_backward_subsumption_resolution:    0
% 11.50/1.94  res_clause_to_clause_subsumption:       60460
% 11.50/1.94  res_orphan_elimination:                 0
% 11.50/1.94  res_tautology_del:                      315
% 11.50/1.94  res_num_eq_res_simplified:              0
% 11.50/1.94  res_num_sel_changes:                    0
% 11.50/1.94  res_moves_from_active_to_pass:          0
% 11.50/1.94  
% 11.50/1.94  ------ Superposition
% 11.50/1.94  
% 11.50/1.94  sup_time_total:                         0.
% 11.50/1.94  sup_time_generating:                    0.
% 11.50/1.94  sup_time_sim_full:                      0.
% 11.50/1.94  sup_time_sim_immed:                     0.
% 11.50/1.94  
% 11.50/1.94  sup_num_of_clauses:                     2778
% 11.50/1.94  sup_num_in_active:                      131
% 11.50/1.94  sup_num_in_passive:                     2647
% 11.50/1.94  sup_num_of_loops:                       150
% 11.50/1.94  sup_fw_superposition:                   10258
% 11.50/1.94  sup_bw_superposition:                   7857
% 11.50/1.94  sup_immediate_simplified:               8181
% 11.50/1.94  sup_given_eliminated:                   6
% 11.50/1.94  comparisons_done:                       0
% 11.50/1.94  comparisons_avoided:                    0
% 11.50/1.94  
% 11.50/1.94  ------ Simplifications
% 11.50/1.94  
% 11.50/1.94  
% 11.50/1.94  sim_fw_subset_subsumed:                 2
% 11.50/1.94  sim_bw_subset_subsumed:                 0
% 11.50/1.94  sim_fw_subsumed:                        1624
% 11.50/1.94  sim_bw_subsumed:                        31
% 11.50/1.94  sim_fw_subsumption_res:                 0
% 11.50/1.94  sim_bw_subsumption_res:                 0
% 11.50/1.94  sim_tautology_del:                      94
% 11.50/1.94  sim_eq_tautology_del:                   2551
% 11.50/1.94  sim_eq_res_simp:                        2
% 11.50/1.94  sim_fw_demodulated:                     4869
% 11.50/1.94  sim_bw_demodulated:                     83
% 11.50/1.94  sim_light_normalised:                   3028
% 11.50/1.94  sim_joinable_taut:                      0
% 11.50/1.94  sim_joinable_simp:                      0
% 11.50/1.94  sim_ac_normalised:                      0
% 11.50/1.94  sim_smt_subsumption:                    0
% 11.50/1.94  
%------------------------------------------------------------------------------
