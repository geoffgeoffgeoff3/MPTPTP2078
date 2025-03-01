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
% DateTime   : Thu Dec  3 11:58:27 EST 2020

% Result     : Theorem 3.28s
% Output     : CNFRefutation 3.28s
% Verified   : 
% Statistics : Number of formulae       :   70 ( 577 expanded)
%              Number of clauses        :   33 ( 122 expanded)
%              Number of leaves         :   13 ( 176 expanded)
%              Depth                    :   14
%              Number of atoms          :   72 ( 579 expanded)
%              Number of equality atoms :   71 ( 578 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    5 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f6])).

fof(f30,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f21,f22])).

fof(f32,plain,(
    ! [X0] : k2_enumset1(X0,X0,X0,X0) = k1_tarski(X0) ),
    inference(definition_unfolding,[],[f20,f30])).

fof(f2,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3)) ),
    inference(cnf_transformation,[],[f2])).

fof(f33,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k2_enumset1(X1,X1,X2,X3)) ),
    inference(definition_unfolding,[],[f18,f22])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) ),
    inference(cnf_transformation,[],[f3])).

fof(f35,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_enumset1(X0,X0,X1,X2),k1_tarski(X3)) ),
    inference(definition_unfolding,[],[f19,f22])).

fof(f1,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f34,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0) ),
    inference(definition_unfolding,[],[f17,f30,f30])).

fof(f12,conjecture,(
    ! [X0,X1,X2,X3,X4] : k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) = k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2,X3,X4] : k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) = k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) ),
    inference(negated_conjecture,[],[f12])).

fof(f14,plain,(
    ? [X0,X1,X2,X3,X4] : k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) != k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) ),
    inference(ennf_transformation,[],[f13])).

fof(f15,plain,
    ( ? [X0,X1,X2,X3,X4] : k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) != k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4))
   => k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4)) != k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4)) != k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f14,f15])).

fof(f29,plain,(
    k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4)) != k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) ),
    inference(cnf_transformation,[],[f16])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k4_tarski(k4_tarski(X0,X1),X2) = k3_mcart_1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X2,X0,X1] : k4_tarski(k4_tarski(X0,X1),X2) = k3_mcart_1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X2,X0,X1] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f39,plain,(
    k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_enumset1(sK1,sK1,sK1,sK2)),k2_enumset1(sK3,sK3,sK3,sK4)) ),
    inference(definition_unfolding,[],[f29,f27,f27,f27,f27,f28,f30,f30])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( k2_tarski(k4_tarski(X0,X2),k4_tarski(X1,X2)) = k2_zfmisc_1(k2_tarski(X0,X1),k1_tarski(X2))
      & k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X2,X0,X1] : k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)) ),
    inference(cnf_transformation,[],[f9])).

fof(f38,plain,(
    ! [X2,X0,X1] : k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_enumset1(X1,X1,X1,X2)) ),
    inference(definition_unfolding,[],[f25,f30,f30])).

fof(f7,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f31,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f23,f30])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3)) = k2_zfmisc_1(k2_tarski(X0,X1),k2_tarski(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3)) = k2_zfmisc_1(k2_tarski(X0,X1),k2_tarski(X2,X3)) ),
    inference(cnf_transformation,[],[f8])).

fof(f36,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X1),k2_enumset1(X2,X2,X2,X3)) ),
    inference(definition_unfolding,[],[f24,f30,f30])).

cnf(c_1,plain,
    ( k2_enumset1(X0,X0,X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_2,plain,
    ( k2_xboole_0(k1_tarski(X0),k2_enumset1(X1,X1,X2,X3)) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_52,plain,
    ( k2_enumset1(X0,X1,X1,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
    inference(superposition,[status(thm)],[c_1,c_2])).

cnf(c_4,plain,
    ( k2_xboole_0(k2_enumset1(X0,X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_70,plain,
    ( k2_xboole_0(k2_xboole_0(k1_tarski(X0),k1_tarski(X0)),k1_tarski(X1)) = k2_enumset1(X0,X0,X0,X1) ),
    inference(superposition,[status(thm)],[c_52,c_4])).

cnf(c_60,plain,
    ( k2_xboole_0(k1_tarski(X0),k1_tarski(X0)) = k1_tarski(X0) ),
    inference(superposition,[status(thm)],[c_52,c_1])).

cnf(c_73,plain,
    ( k2_enumset1(X0,X0,X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
    inference(light_normalisation,[status(thm)],[c_70,c_60])).

cnf(c_150,plain,
    ( k2_xboole_0(k2_xboole_0(k1_tarski(X0),k1_tarski(X1)),k1_tarski(X2)) = k2_enumset1(X0,X0,X1,X2) ),
    inference(superposition,[status(thm)],[c_73,c_4])).

cnf(c_3,plain,
    ( k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_69,plain,
    ( k2_xboole_0(k2_enumset1(X0,X0,X0,X1),k1_tarski(X2)) = k2_enumset1(X1,X1,X0,X2) ),
    inference(superposition,[status(thm)],[c_3,c_4])).

cnf(c_74,plain,
    ( k2_xboole_0(k2_xboole_0(k1_tarski(X0),k1_tarski(X1)),k1_tarski(X2)) = k2_enumset1(X1,X1,X0,X2) ),
    inference(demodulation,[status(thm)],[c_69,c_4,c_73])).

cnf(c_627,plain,
    ( k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X1,X1,X0,X2) ),
    inference(superposition,[status(thm)],[c_150,c_74])).

cnf(c_796,plain,
    ( k2_xboole_0(k1_tarski(X0),k2_enumset1(X1,X1,X2,X3)) = k2_enumset1(X0,X2,X1,X3) ),
    inference(superposition,[status(thm)],[c_627,c_2])).

cnf(c_4950,plain,
    ( k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X0,X2,X1,X3) ),
    inference(superposition,[status(thm)],[c_796,c_2])).

cnf(c_8,negated_conjecture,
    ( k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_enumset1(sK1,sK1,sK1,sK2)),k2_enumset1(sK3,sK3,sK3,sK4)) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_142,plain,
    ( k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_enumset1(sK3,sK3,sK3,sK4)) ),
    inference(demodulation,[status(thm)],[c_73,c_8])).

cnf(c_143,plain,
    ( k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_xboole_0(k1_tarski(sK3),k1_tarski(sK4))) ),
    inference(demodulation,[status(thm)],[c_142,c_73])).

cnf(c_4964,plain,
    ( k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_xboole_0(k1_tarski(sK3),k1_tarski(sK4))) ),
    inference(demodulation,[status(thm)],[c_4950,c_143])).

cnf(c_140,plain,
    ( k2_enumset1(X0,X0,X0,X1) = k2_xboole_0(k1_tarski(X1),k1_tarski(X0)) ),
    inference(demodulation,[status(thm)],[c_73,c_3])).

cnf(c_7,plain,
    ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_enumset1(X1,X1,X1,X2)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_92,plain,
    ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_xboole_0(k1_tarski(X1),k1_tarski(X2))) ),
    inference(demodulation,[status(thm)],[c_7,c_73])).

cnf(c_177,plain,
    ( k2_xboole_0(k1_tarski(k4_tarski(X0,X1)),k1_tarski(k4_tarski(X0,X2))) = k2_zfmisc_1(k1_tarski(X0),k2_xboole_0(k1_tarski(X2),k1_tarski(X1))) ),
    inference(superposition,[status(thm)],[c_140,c_92])).

cnf(c_0,plain,
    ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_41,plain,
    ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k2_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_3,c_0])).

cnf(c_47,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_41,c_0])).

cnf(c_54,plain,
    ( k2_xboole_0(k2_enumset1(X0,X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X3,X0,X1,X2) ),
    inference(superposition,[status(thm)],[c_2,c_47])).

cnf(c_180,plain,
    ( k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X1,X2,X3,X0) ),
    inference(superposition,[status(thm)],[c_4,c_54])).

cnf(c_220,plain,
    ( k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X2,X3,X0,X1) ),
    inference(superposition,[status(thm)],[c_180,c_180])).

cnf(c_5,plain,
    ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X2),k4_tarski(X3,X1),k4_tarski(X3,X2)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X3),k2_enumset1(X1,X1,X1,X2)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_112,plain,
    ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X2),k4_tarski(X3,X1),k4_tarski(X3,X2)) = k2_zfmisc_1(k2_xboole_0(k1_tarski(X0),k1_tarski(X3)),k2_xboole_0(k1_tarski(X1),k1_tarski(X2))) ),
    inference(demodulation,[status(thm)],[c_5,c_73])).

cnf(c_400,plain,
    ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X2),k4_tarski(X3,X1),k4_tarski(X3,X2)) = k2_zfmisc_1(k2_xboole_0(k1_tarski(X3),k1_tarski(X0)),k2_xboole_0(k1_tarski(X1),k1_tarski(X2))) ),
    inference(superposition,[status(thm)],[c_220,c_112])).

cnf(c_4965,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_xboole_0(k1_tarski(sK3),k1_tarski(sK4))) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_xboole_0(k1_tarski(sK3),k1_tarski(sK4))) ),
    inference(demodulation,[status(thm)],[c_4964,c_177,c_400])).

cnf(c_4966,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_4965])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.10  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.11  % Command    : iproveropt_run.sh %d %s
% 0.11/0.32  % Computer   : n020.cluster.edu
% 0.11/0.32  % Model      : x86_64 x86_64
% 0.11/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.32  % Memory     : 8042.1875MB
% 0.11/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.32  % CPULimit   : 60
% 0.11/0.32  % WCLimit    : 600
% 0.11/0.32  % DateTime   : Tue Dec  1 16:13:52 EST 2020
% 0.11/0.32  % CPUTime    : 
% 0.11/0.32  % Running in FOF mode
% 3.28/0.90  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.28/0.90  
% 3.28/0.90  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.28/0.90  
% 3.28/0.90  ------  iProver source info
% 3.28/0.90  
% 3.28/0.90  git: date: 2020-06-30 10:37:57 +0100
% 3.28/0.90  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.28/0.90  git: non_committed_changes: false
% 3.28/0.90  git: last_make_outside_of_git: false
% 3.28/0.90  
% 3.28/0.90  ------ 
% 3.28/0.90  
% 3.28/0.90  ------ Input Options
% 3.28/0.90  
% 3.28/0.90  --out_options                           all
% 3.28/0.90  --tptp_safe_out                         true
% 3.28/0.90  --problem_path                          ""
% 3.28/0.90  --include_path                          ""
% 3.28/0.90  --clausifier                            res/vclausify_rel
% 3.28/0.90  --clausifier_options                    --mode clausify
% 3.28/0.90  --stdin                                 false
% 3.28/0.90  --stats_out                             all
% 3.28/0.90  
% 3.28/0.90  ------ General Options
% 3.28/0.90  
% 3.28/0.90  --fof                                   false
% 3.28/0.90  --time_out_real                         305.
% 3.28/0.90  --time_out_virtual                      -1.
% 3.28/0.90  --symbol_type_check                     false
% 3.28/0.90  --clausify_out                          false
% 3.28/0.90  --sig_cnt_out                           false
% 3.28/0.90  --trig_cnt_out                          false
% 3.28/0.90  --trig_cnt_out_tolerance                1.
% 3.28/0.90  --trig_cnt_out_sk_spl                   false
% 3.28/0.90  --abstr_cl_out                          false
% 3.28/0.90  
% 3.28/0.90  ------ Global Options
% 3.28/0.90  
% 3.28/0.90  --schedule                              default
% 3.28/0.90  --add_important_lit                     false
% 3.28/0.90  --prop_solver_per_cl                    1000
% 3.28/0.90  --min_unsat_core                        false
% 3.28/0.90  --soft_assumptions                      false
% 3.28/0.90  --soft_lemma_size                       3
% 3.28/0.90  --prop_impl_unit_size                   0
% 3.28/0.90  --prop_impl_unit                        []
% 3.28/0.90  --share_sel_clauses                     true
% 3.28/0.90  --reset_solvers                         false
% 3.28/0.90  --bc_imp_inh                            [conj_cone]
% 3.28/0.90  --conj_cone_tolerance                   3.
% 3.28/0.90  --extra_neg_conj                        none
% 3.28/0.90  --large_theory_mode                     true
% 3.28/0.90  --prolific_symb_bound                   200
% 3.28/0.90  --lt_threshold                          2000
% 3.28/0.90  --clause_weak_htbl                      true
% 3.28/0.90  --gc_record_bc_elim                     false
% 3.28/0.90  
% 3.28/0.90  ------ Preprocessing Options
% 3.28/0.90  
% 3.28/0.90  --preprocessing_flag                    true
% 3.28/0.90  --time_out_prep_mult                    0.1
% 3.28/0.90  --splitting_mode                        input
% 3.28/0.90  --splitting_grd                         true
% 3.28/0.90  --splitting_cvd                         false
% 3.28/0.90  --splitting_cvd_svl                     false
% 3.28/0.90  --splitting_nvd                         32
% 3.28/0.90  --sub_typing                            true
% 3.28/0.90  --prep_gs_sim                           true
% 3.28/0.90  --prep_unflatten                        true
% 3.28/0.90  --prep_res_sim                          true
% 3.28/0.90  --prep_upred                            true
% 3.28/0.90  --prep_sem_filter                       exhaustive
% 3.28/0.90  --prep_sem_filter_out                   false
% 3.28/0.90  --pred_elim                             true
% 3.28/0.90  --res_sim_input                         true
% 3.28/0.90  --eq_ax_congr_red                       true
% 3.28/0.90  --pure_diseq_elim                       true
% 3.28/0.90  --brand_transform                       false
% 3.28/0.90  --non_eq_to_eq                          false
% 3.28/0.90  --prep_def_merge                        true
% 3.28/0.90  --prep_def_merge_prop_impl              false
% 3.28/0.90  --prep_def_merge_mbd                    true
% 3.28/0.90  --prep_def_merge_tr_red                 false
% 3.28/0.90  --prep_def_merge_tr_cl                  false
% 3.28/0.90  --smt_preprocessing                     true
% 3.28/0.90  --smt_ac_axioms                         fast
% 3.28/0.90  --preprocessed_out                      false
% 3.28/0.90  --preprocessed_stats                    false
% 3.28/0.90  
% 3.28/0.90  ------ Abstraction refinement Options
% 3.28/0.90  
% 3.28/0.90  --abstr_ref                             []
% 3.28/0.90  --abstr_ref_prep                        false
% 3.28/0.90  --abstr_ref_until_sat                   false
% 3.28/0.90  --abstr_ref_sig_restrict                funpre
% 3.28/0.90  --abstr_ref_af_restrict_to_split_sk     false
% 3.28/0.90  --abstr_ref_under                       []
% 3.28/0.90  
% 3.28/0.90  ------ SAT Options
% 3.28/0.90  
% 3.28/0.90  --sat_mode                              false
% 3.28/0.90  --sat_fm_restart_options                ""
% 3.28/0.90  --sat_gr_def                            false
% 3.28/0.90  --sat_epr_types                         true
% 3.28/0.90  --sat_non_cyclic_types                  false
% 3.28/0.90  --sat_finite_models                     false
% 3.28/0.90  --sat_fm_lemmas                         false
% 3.28/0.90  --sat_fm_prep                           false
% 3.28/0.90  --sat_fm_uc_incr                        true
% 3.28/0.90  --sat_out_model                         small
% 3.28/0.90  --sat_out_clauses                       false
% 3.28/0.90  
% 3.28/0.90  ------ QBF Options
% 3.28/0.90  
% 3.28/0.90  --qbf_mode                              false
% 3.28/0.90  --qbf_elim_univ                         false
% 3.28/0.90  --qbf_dom_inst                          none
% 3.28/0.90  --qbf_dom_pre_inst                      false
% 3.28/0.90  --qbf_sk_in                             false
% 3.28/0.90  --qbf_pred_elim                         true
% 3.28/0.90  --qbf_split                             512
% 3.28/0.90  
% 3.28/0.90  ------ BMC1 Options
% 3.28/0.90  
% 3.28/0.90  --bmc1_incremental                      false
% 3.28/0.90  --bmc1_axioms                           reachable_all
% 3.28/0.90  --bmc1_min_bound                        0
% 3.28/0.90  --bmc1_max_bound                        -1
% 3.28/0.90  --bmc1_max_bound_default                -1
% 3.28/0.90  --bmc1_symbol_reachability              true
% 3.28/0.90  --bmc1_property_lemmas                  false
% 3.28/0.90  --bmc1_k_induction                      false
% 3.28/0.90  --bmc1_non_equiv_states                 false
% 3.28/0.90  --bmc1_deadlock                         false
% 3.28/0.90  --bmc1_ucm                              false
% 3.28/0.90  --bmc1_add_unsat_core                   none
% 3.28/0.90  --bmc1_unsat_core_children              false
% 3.28/0.90  --bmc1_unsat_core_extrapolate_axioms    false
% 3.28/0.90  --bmc1_out_stat                         full
% 3.28/0.90  --bmc1_ground_init                      false
% 3.28/0.90  --bmc1_pre_inst_next_state              false
% 3.28/0.90  --bmc1_pre_inst_state                   false
% 3.28/0.90  --bmc1_pre_inst_reach_state             false
% 3.28/0.90  --bmc1_out_unsat_core                   false
% 3.28/0.90  --bmc1_aig_witness_out                  false
% 3.28/0.90  --bmc1_verbose                          false
% 3.28/0.90  --bmc1_dump_clauses_tptp                false
% 3.28/0.90  --bmc1_dump_unsat_core_tptp             false
% 3.28/0.90  --bmc1_dump_file                        -
% 3.28/0.90  --bmc1_ucm_expand_uc_limit              128
% 3.28/0.90  --bmc1_ucm_n_expand_iterations          6
% 3.28/0.90  --bmc1_ucm_extend_mode                  1
% 3.28/0.90  --bmc1_ucm_init_mode                    2
% 3.28/0.90  --bmc1_ucm_cone_mode                    none
% 3.28/0.90  --bmc1_ucm_reduced_relation_type        0
% 3.28/0.90  --bmc1_ucm_relax_model                  4
% 3.28/0.90  --bmc1_ucm_full_tr_after_sat            true
% 3.28/0.90  --bmc1_ucm_expand_neg_assumptions       false
% 3.28/0.90  --bmc1_ucm_layered_model                none
% 3.28/0.90  --bmc1_ucm_max_lemma_size               10
% 3.28/0.90  
% 3.28/0.90  ------ AIG Options
% 3.28/0.90  
% 3.28/0.90  --aig_mode                              false
% 3.28/0.90  
% 3.28/0.90  ------ Instantiation Options
% 3.28/0.90  
% 3.28/0.90  --instantiation_flag                    true
% 3.28/0.90  --inst_sos_flag                         false
% 3.28/0.90  --inst_sos_phase                        true
% 3.28/0.90  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.28/0.90  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.28/0.90  --inst_lit_sel_side                     num_symb
% 3.28/0.90  --inst_solver_per_active                1400
% 3.28/0.90  --inst_solver_calls_frac                1.
% 3.28/0.90  --inst_passive_queue_type               priority_queues
% 3.28/0.90  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.28/0.90  --inst_passive_queues_freq              [25;2]
% 3.28/0.90  --inst_dismatching                      true
% 3.28/0.90  --inst_eager_unprocessed_to_passive     true
% 3.28/0.90  --inst_prop_sim_given                   true
% 3.28/0.90  --inst_prop_sim_new                     false
% 3.28/0.90  --inst_subs_new                         false
% 3.28/0.90  --inst_eq_res_simp                      false
% 3.28/0.90  --inst_subs_given                       false
% 3.28/0.90  --inst_orphan_elimination               true
% 3.28/0.90  --inst_learning_loop_flag               true
% 3.28/0.90  --inst_learning_start                   3000
% 3.28/0.90  --inst_learning_factor                  2
% 3.28/0.90  --inst_start_prop_sim_after_learn       3
% 3.28/0.90  --inst_sel_renew                        solver
% 3.28/0.90  --inst_lit_activity_flag                true
% 3.28/0.90  --inst_restr_to_given                   false
% 3.28/0.90  --inst_activity_threshold               500
% 3.28/0.90  --inst_out_proof                        true
% 3.28/0.90  
% 3.28/0.90  ------ Resolution Options
% 3.28/0.90  
% 3.28/0.90  --resolution_flag                       true
% 3.28/0.90  --res_lit_sel                           adaptive
% 3.28/0.90  --res_lit_sel_side                      none
% 3.28/0.90  --res_ordering                          kbo
% 3.28/0.90  --res_to_prop_solver                    active
% 3.28/0.90  --res_prop_simpl_new                    false
% 3.28/0.90  --res_prop_simpl_given                  true
% 3.28/0.90  --res_passive_queue_type                priority_queues
% 3.28/0.90  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.28/0.90  --res_passive_queues_freq               [15;5]
% 3.28/0.90  --res_forward_subs                      full
% 3.28/0.90  --res_backward_subs                     full
% 3.28/0.90  --res_forward_subs_resolution           true
% 3.28/0.90  --res_backward_subs_resolution          true
% 3.28/0.90  --res_orphan_elimination                true
% 3.28/0.90  --res_time_limit                        2.
% 3.28/0.90  --res_out_proof                         true
% 3.28/0.90  
% 3.28/0.90  ------ Superposition Options
% 3.28/0.90  
% 3.28/0.90  --superposition_flag                    true
% 3.28/0.90  --sup_passive_queue_type                priority_queues
% 3.28/0.90  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.28/0.90  --sup_passive_queues_freq               [8;1;4]
% 3.28/0.90  --demod_completeness_check              fast
% 3.28/0.90  --demod_use_ground                      true
% 3.28/0.90  --sup_to_prop_solver                    passive
% 3.28/0.90  --sup_prop_simpl_new                    true
% 3.28/0.90  --sup_prop_simpl_given                  true
% 3.28/0.90  --sup_fun_splitting                     false
% 3.28/0.90  --sup_smt_interval                      50000
% 3.28/0.90  
% 3.28/0.90  ------ Superposition Simplification Setup
% 3.28/0.90  
% 3.28/0.90  --sup_indices_passive                   []
% 3.28/0.90  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.28/0.90  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.28/0.90  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.28/0.90  --sup_full_triv                         [TrivRules;PropSubs]
% 3.28/0.90  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.28/0.90  --sup_full_bw                           [BwDemod]
% 3.28/0.90  --sup_immed_triv                        [TrivRules]
% 3.28/0.90  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.28/0.90  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.28/0.90  --sup_immed_bw_main                     []
% 3.28/0.90  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.28/0.90  --sup_input_triv                        [Unflattening;TrivRules]
% 3.28/0.90  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.28/0.90  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.28/0.90  
% 3.28/0.90  ------ Combination Options
% 3.28/0.90  
% 3.28/0.90  --comb_res_mult                         3
% 3.28/0.90  --comb_sup_mult                         2
% 3.28/0.90  --comb_inst_mult                        10
% 3.28/0.90  
% 3.28/0.90  ------ Debug Options
% 3.28/0.90  
% 3.28/0.90  --dbg_backtrace                         false
% 3.28/0.90  --dbg_dump_prop_clauses                 false
% 3.28/0.90  --dbg_dump_prop_clauses_file            -
% 3.28/0.90  --dbg_out_stat                          false
% 3.28/0.90  ------ Parsing...
% 3.28/0.90  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.28/0.90  
% 3.28/0.90  ------ Preprocessing... sf_s  rm: 0 0s  sf_e  pe_s  pe_e 
% 3.28/0.90  
% 3.28/0.90  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.28/0.90  
% 3.28/0.90  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.28/0.90  ------ Proving...
% 3.28/0.90  ------ Problem Properties 
% 3.28/0.90  
% 3.28/0.90  
% 3.28/0.90  clauses                                 9
% 3.28/0.90  conjectures                             1
% 3.28/0.90  EPR                                     0
% 3.28/0.90  Horn                                    9
% 3.28/0.90  unary                                   9
% 3.28/0.90  binary                                  0
% 3.28/0.90  lits                                    9
% 3.28/0.90  lits eq                                 9
% 3.28/0.90  fd_pure                                 0
% 3.28/0.90  fd_pseudo                               0
% 3.28/0.90  fd_cond                                 0
% 3.28/0.90  fd_pseudo_cond                          0
% 3.28/0.90  AC symbols                              0
% 3.28/0.90  
% 3.28/0.90  ------ Schedule UEQ
% 3.28/0.90  
% 3.28/0.90  ------ pure equality problem: resolution off 
% 3.28/0.90  
% 3.28/0.90  ------ Option_UEQ Time Limit: Unbounded
% 3.28/0.90  
% 3.28/0.90  
% 3.28/0.90  ------ 
% 3.28/0.90  Current options:
% 3.28/0.90  ------ 
% 3.28/0.90  
% 3.28/0.90  ------ Input Options
% 3.28/0.90  
% 3.28/0.90  --out_options                           all
% 3.28/0.90  --tptp_safe_out                         true
% 3.28/0.90  --problem_path                          ""
% 3.28/0.90  --include_path                          ""
% 3.28/0.90  --clausifier                            res/vclausify_rel
% 3.28/0.90  --clausifier_options                    --mode clausify
% 3.28/0.90  --stdin                                 false
% 3.28/0.90  --stats_out                             all
% 3.28/0.90  
% 3.28/0.90  ------ General Options
% 3.28/0.90  
% 3.28/0.90  --fof                                   false
% 3.28/0.90  --time_out_real                         305.
% 3.28/0.90  --time_out_virtual                      -1.
% 3.28/0.90  --symbol_type_check                     false
% 3.28/0.90  --clausify_out                          false
% 3.28/0.90  --sig_cnt_out                           false
% 3.28/0.90  --trig_cnt_out                          false
% 3.28/0.90  --trig_cnt_out_tolerance                1.
% 3.28/0.90  --trig_cnt_out_sk_spl                   false
% 3.28/0.90  --abstr_cl_out                          false
% 3.28/0.90  
% 3.28/0.90  ------ Global Options
% 3.28/0.90  
% 3.28/0.90  --schedule                              default
% 3.28/0.90  --add_important_lit                     false
% 3.28/0.90  --prop_solver_per_cl                    1000
% 3.28/0.90  --min_unsat_core                        false
% 3.28/0.90  --soft_assumptions                      false
% 3.28/0.90  --soft_lemma_size                       3
% 3.28/0.90  --prop_impl_unit_size                   0
% 3.28/0.90  --prop_impl_unit                        []
% 3.28/0.90  --share_sel_clauses                     true
% 3.28/0.90  --reset_solvers                         false
% 3.28/0.90  --bc_imp_inh                            [conj_cone]
% 3.28/0.90  --conj_cone_tolerance                   3.
% 3.28/0.90  --extra_neg_conj                        none
% 3.28/0.90  --large_theory_mode                     true
% 3.28/0.90  --prolific_symb_bound                   200
% 3.28/0.90  --lt_threshold                          2000
% 3.28/0.90  --clause_weak_htbl                      true
% 3.28/0.90  --gc_record_bc_elim                     false
% 3.28/0.90  
% 3.28/0.90  ------ Preprocessing Options
% 3.28/0.90  
% 3.28/0.90  --preprocessing_flag                    true
% 3.28/0.90  --time_out_prep_mult                    0.1
% 3.28/0.90  --splitting_mode                        input
% 3.28/0.90  --splitting_grd                         true
% 3.28/0.90  --splitting_cvd                         false
% 3.28/0.90  --splitting_cvd_svl                     false
% 3.28/0.90  --splitting_nvd                         32
% 3.28/0.90  --sub_typing                            true
% 3.28/0.90  --prep_gs_sim                           true
% 3.28/0.90  --prep_unflatten                        true
% 3.28/0.90  --prep_res_sim                          true
% 3.28/0.90  --prep_upred                            true
% 3.28/0.90  --prep_sem_filter                       exhaustive
% 3.28/0.90  --prep_sem_filter_out                   false
% 3.28/0.90  --pred_elim                             true
% 3.28/0.90  --res_sim_input                         true
% 3.28/0.90  --eq_ax_congr_red                       true
% 3.28/0.90  --pure_diseq_elim                       true
% 3.28/0.90  --brand_transform                       false
% 3.28/0.90  --non_eq_to_eq                          false
% 3.28/0.90  --prep_def_merge                        true
% 3.28/0.90  --prep_def_merge_prop_impl              false
% 3.28/0.90  --prep_def_merge_mbd                    true
% 3.28/0.90  --prep_def_merge_tr_red                 false
% 3.28/0.90  --prep_def_merge_tr_cl                  false
% 3.28/0.90  --smt_preprocessing                     true
% 3.28/0.90  --smt_ac_axioms                         fast
% 3.28/0.90  --preprocessed_out                      false
% 3.28/0.90  --preprocessed_stats                    false
% 3.28/0.90  
% 3.28/0.90  ------ Abstraction refinement Options
% 3.28/0.90  
% 3.28/0.90  --abstr_ref                             []
% 3.28/0.90  --abstr_ref_prep                        false
% 3.28/0.90  --abstr_ref_until_sat                   false
% 3.28/0.90  --abstr_ref_sig_restrict                funpre
% 3.28/0.90  --abstr_ref_af_restrict_to_split_sk     false
% 3.28/0.90  --abstr_ref_under                       []
% 3.28/0.90  
% 3.28/0.90  ------ SAT Options
% 3.28/0.90  
% 3.28/0.90  --sat_mode                              false
% 3.28/0.90  --sat_fm_restart_options                ""
% 3.28/0.90  --sat_gr_def                            false
% 3.28/0.90  --sat_epr_types                         true
% 3.28/0.90  --sat_non_cyclic_types                  false
% 3.28/0.90  --sat_finite_models                     false
% 3.28/0.90  --sat_fm_lemmas                         false
% 3.28/0.90  --sat_fm_prep                           false
% 3.28/0.90  --sat_fm_uc_incr                        true
% 3.28/0.90  --sat_out_model                         small
% 3.28/0.90  --sat_out_clauses                       false
% 3.28/0.90  
% 3.28/0.90  ------ QBF Options
% 3.28/0.90  
% 3.28/0.90  --qbf_mode                              false
% 3.28/0.90  --qbf_elim_univ                         false
% 3.28/0.90  --qbf_dom_inst                          none
% 3.28/0.90  --qbf_dom_pre_inst                      false
% 3.28/0.90  --qbf_sk_in                             false
% 3.28/0.90  --qbf_pred_elim                         true
% 3.28/0.90  --qbf_split                             512
% 3.28/0.90  
% 3.28/0.90  ------ BMC1 Options
% 3.28/0.90  
% 3.28/0.90  --bmc1_incremental                      false
% 3.28/0.90  --bmc1_axioms                           reachable_all
% 3.28/0.90  --bmc1_min_bound                        0
% 3.28/0.90  --bmc1_max_bound                        -1
% 3.28/0.90  --bmc1_max_bound_default                -1
% 3.28/0.90  --bmc1_symbol_reachability              true
% 3.28/0.90  --bmc1_property_lemmas                  false
% 3.28/0.90  --bmc1_k_induction                      false
% 3.28/0.90  --bmc1_non_equiv_states                 false
% 3.28/0.90  --bmc1_deadlock                         false
% 3.28/0.90  --bmc1_ucm                              false
% 3.28/0.90  --bmc1_add_unsat_core                   none
% 3.28/0.90  --bmc1_unsat_core_children              false
% 3.28/0.90  --bmc1_unsat_core_extrapolate_axioms    false
% 3.28/0.90  --bmc1_out_stat                         full
% 3.28/0.90  --bmc1_ground_init                      false
% 3.28/0.90  --bmc1_pre_inst_next_state              false
% 3.28/0.90  --bmc1_pre_inst_state                   false
% 3.28/0.90  --bmc1_pre_inst_reach_state             false
% 3.28/0.90  --bmc1_out_unsat_core                   false
% 3.28/0.90  --bmc1_aig_witness_out                  false
% 3.28/0.90  --bmc1_verbose                          false
% 3.28/0.90  --bmc1_dump_clauses_tptp                false
% 3.28/0.90  --bmc1_dump_unsat_core_tptp             false
% 3.28/0.90  --bmc1_dump_file                        -
% 3.28/0.90  --bmc1_ucm_expand_uc_limit              128
% 3.28/0.90  --bmc1_ucm_n_expand_iterations          6
% 3.28/0.90  --bmc1_ucm_extend_mode                  1
% 3.28/0.90  --bmc1_ucm_init_mode                    2
% 3.28/0.90  --bmc1_ucm_cone_mode                    none
% 3.28/0.90  --bmc1_ucm_reduced_relation_type        0
% 3.28/0.90  --bmc1_ucm_relax_model                  4
% 3.28/0.90  --bmc1_ucm_full_tr_after_sat            true
% 3.28/0.90  --bmc1_ucm_expand_neg_assumptions       false
% 3.28/0.90  --bmc1_ucm_layered_model                none
% 3.28/0.90  --bmc1_ucm_max_lemma_size               10
% 3.28/0.90  
% 3.28/0.90  ------ AIG Options
% 3.28/0.90  
% 3.28/0.90  --aig_mode                              false
% 3.28/0.90  
% 3.28/0.90  ------ Instantiation Options
% 3.28/0.90  
% 3.28/0.90  --instantiation_flag                    false
% 3.28/0.90  --inst_sos_flag                         false
% 3.28/0.90  --inst_sos_phase                        true
% 3.28/0.90  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.28/0.90  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.28/0.90  --inst_lit_sel_side                     num_symb
% 3.28/0.90  --inst_solver_per_active                1400
% 3.28/0.90  --inst_solver_calls_frac                1.
% 3.28/0.90  --inst_passive_queue_type               priority_queues
% 3.28/0.90  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.28/0.90  --inst_passive_queues_freq              [25;2]
% 3.28/0.90  --inst_dismatching                      true
% 3.28/0.90  --inst_eager_unprocessed_to_passive     true
% 3.28/0.90  --inst_prop_sim_given                   true
% 3.28/0.90  --inst_prop_sim_new                     false
% 3.28/0.90  --inst_subs_new                         false
% 3.28/0.90  --inst_eq_res_simp                      false
% 3.28/0.90  --inst_subs_given                       false
% 3.28/0.90  --inst_orphan_elimination               true
% 3.28/0.90  --inst_learning_loop_flag               true
% 3.28/0.90  --inst_learning_start                   3000
% 3.28/0.90  --inst_learning_factor                  2
% 3.28/0.90  --inst_start_prop_sim_after_learn       3
% 3.28/0.90  --inst_sel_renew                        solver
% 3.28/0.90  --inst_lit_activity_flag                true
% 3.28/0.90  --inst_restr_to_given                   false
% 3.28/0.90  --inst_activity_threshold               500
% 3.28/0.90  --inst_out_proof                        true
% 3.28/0.90  
% 3.28/0.90  ------ Resolution Options
% 3.28/0.90  
% 3.28/0.90  --resolution_flag                       false
% 3.28/0.90  --res_lit_sel                           adaptive
% 3.28/0.90  --res_lit_sel_side                      none
% 3.28/0.90  --res_ordering                          kbo
% 3.28/0.90  --res_to_prop_solver                    active
% 3.28/0.90  --res_prop_simpl_new                    false
% 3.28/0.90  --res_prop_simpl_given                  true
% 3.28/0.90  --res_passive_queue_type                priority_queues
% 3.28/0.90  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.28/0.90  --res_passive_queues_freq               [15;5]
% 3.28/0.90  --res_forward_subs                      full
% 3.28/0.90  --res_backward_subs                     full
% 3.28/0.90  --res_forward_subs_resolution           true
% 3.28/0.90  --res_backward_subs_resolution          true
% 3.28/0.90  --res_orphan_elimination                true
% 3.28/0.90  --res_time_limit                        2.
% 3.28/0.90  --res_out_proof                         true
% 3.28/0.90  
% 3.28/0.90  ------ Superposition Options
% 3.28/0.90  
% 3.28/0.90  --superposition_flag                    true
% 3.28/0.90  --sup_passive_queue_type                priority_queues
% 3.28/0.90  --sup_passive_queues                    [[-conj_dist;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.28/0.90  --sup_passive_queues_freq               [8;1;4]
% 3.28/0.90  --demod_completeness_check              fast
% 3.28/0.90  --demod_use_ground                      true
% 3.28/0.90  --sup_to_prop_solver                    active
% 3.28/0.90  --sup_prop_simpl_new                    false
% 3.28/0.90  --sup_prop_simpl_given                  false
% 3.28/0.90  --sup_fun_splitting                     true
% 3.28/0.90  --sup_smt_interval                      10000
% 3.28/0.90  
% 3.28/0.90  ------ Superposition Simplification Setup
% 3.28/0.90  
% 3.28/0.90  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.28/0.90  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.28/0.90  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.28/0.90  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.28/0.90  --sup_full_triv                         [TrivRules]
% 3.28/0.90  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.28/0.90  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.28/0.90  --sup_immed_triv                        [TrivRules]
% 3.28/0.90  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.28/0.90  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.28/0.90  --sup_immed_bw_main                     []
% 3.28/0.90  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.28/0.90  --sup_input_triv                        [Unflattening;TrivRules]
% 3.28/0.90  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.28/0.90  --sup_input_bw                          [BwDemod;BwSubsumption]
% 3.28/0.90  
% 3.28/0.90  ------ Combination Options
% 3.28/0.90  
% 3.28/0.90  --comb_res_mult                         1
% 3.28/0.90  --comb_sup_mult                         1
% 3.28/0.90  --comb_inst_mult                        1000000
% 3.28/0.90  
% 3.28/0.90  ------ Debug Options
% 3.28/0.90  
% 3.28/0.90  --dbg_backtrace                         false
% 3.28/0.90  --dbg_dump_prop_clauses                 false
% 3.28/0.90  --dbg_dump_prop_clauses_file            -
% 3.28/0.90  --dbg_out_stat                          false
% 3.28/0.90  
% 3.28/0.90  
% 3.28/0.90  
% 3.28/0.90  
% 3.28/0.90  ------ Proving...
% 3.28/0.90  
% 3.28/0.90  
% 3.28/0.90  % SZS status Theorem for theBenchmark.p
% 3.28/0.90  
% 3.28/0.90   Resolution empty clause
% 3.28/0.90  
% 3.28/0.90  % SZS output start CNFRefutation for theBenchmark.p
% 3.28/0.90  
% 3.28/0.90  fof(f4,axiom,(
% 3.28/0.90    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f20,plain,(
% 3.28/0.90    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.28/0.90    inference(cnf_transformation,[],[f4])).
% 3.28/0.90  
% 3.28/0.90  fof(f5,axiom,(
% 3.28/0.90    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f21,plain,(
% 3.28/0.90    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.28/0.90    inference(cnf_transformation,[],[f5])).
% 3.28/0.90  
% 3.28/0.90  fof(f6,axiom,(
% 3.28/0.90    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f22,plain,(
% 3.28/0.90    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 3.28/0.90    inference(cnf_transformation,[],[f6])).
% 3.28/0.90  
% 3.28/0.90  fof(f30,plain,(
% 3.28/0.90    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 3.28/0.90    inference(definition_unfolding,[],[f21,f22])).
% 3.28/0.90  
% 3.28/0.90  fof(f32,plain,(
% 3.28/0.90    ( ! [X0] : (k2_enumset1(X0,X0,X0,X0) = k1_tarski(X0)) )),
% 3.28/0.90    inference(definition_unfolding,[],[f20,f30])).
% 3.28/0.90  
% 3.28/0.90  fof(f2,axiom,(
% 3.28/0.90    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3))),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f18,plain,(
% 3.28/0.90    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3))) )),
% 3.28/0.90    inference(cnf_transformation,[],[f2])).
% 3.28/0.90  
% 3.28/0.90  fof(f33,plain,(
% 3.28/0.90    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k2_enumset1(X1,X1,X2,X3))) )),
% 3.28/0.90    inference(definition_unfolding,[],[f18,f22])).
% 3.28/0.90  
% 3.28/0.90  fof(f3,axiom,(
% 3.28/0.90    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3))),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f19,plain,(
% 3.28/0.90    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3))) )),
% 3.28/0.90    inference(cnf_transformation,[],[f3])).
% 3.28/0.90  
% 3.28/0.90  fof(f35,plain,(
% 3.28/0.90    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_enumset1(X0,X0,X1,X2),k1_tarski(X3))) )),
% 3.28/0.90    inference(definition_unfolding,[],[f19,f22])).
% 3.28/0.90  
% 3.28/0.90  fof(f1,axiom,(
% 3.28/0.90    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f17,plain,(
% 3.28/0.90    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 3.28/0.90    inference(cnf_transformation,[],[f1])).
% 3.28/0.90  
% 3.28/0.90  fof(f34,plain,(
% 3.28/0.90    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0)) )),
% 3.28/0.90    inference(definition_unfolding,[],[f17,f30,f30])).
% 3.28/0.90  
% 3.28/0.90  fof(f12,conjecture,(
% 3.28/0.90    ! [X0,X1,X2,X3,X4] : k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) = k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4))),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f13,negated_conjecture,(
% 3.28/0.90    ~! [X0,X1,X2,X3,X4] : k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) = k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4))),
% 3.28/0.90    inference(negated_conjecture,[],[f12])).
% 3.28/0.90  
% 3.28/0.90  fof(f14,plain,(
% 3.28/0.90    ? [X0,X1,X2,X3,X4] : k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) != k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4))),
% 3.28/0.90    inference(ennf_transformation,[],[f13])).
% 3.28/0.90  
% 3.28/0.90  fof(f15,plain,(
% 3.28/0.90    ? [X0,X1,X2,X3,X4] : k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) != k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) => k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4)) != k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4))),
% 3.28/0.90    introduced(choice_axiom,[])).
% 3.28/0.90  
% 3.28/0.90  fof(f16,plain,(
% 3.28/0.90    k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4)) != k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4))),
% 3.28/0.90    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f14,f15])).
% 3.28/0.90  
% 3.28/0.90  fof(f29,plain,(
% 3.28/0.90    k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4)) != k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4))),
% 3.28/0.90    inference(cnf_transformation,[],[f16])).
% 3.28/0.90  
% 3.28/0.90  fof(f10,axiom,(
% 3.28/0.90    ! [X0,X1,X2] : k4_tarski(k4_tarski(X0,X1),X2) = k3_mcart_1(X0,X1,X2)),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f27,plain,(
% 3.28/0.90    ( ! [X2,X0,X1] : (k4_tarski(k4_tarski(X0,X1),X2) = k3_mcart_1(X0,X1,X2)) )),
% 3.28/0.90    inference(cnf_transformation,[],[f10])).
% 3.28/0.90  
% 3.28/0.90  fof(f11,axiom,(
% 3.28/0.90    ! [X0,X1,X2] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2)),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f28,plain,(
% 3.28/0.90    ( ! [X2,X0,X1] : (k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2)) )),
% 3.28/0.90    inference(cnf_transformation,[],[f11])).
% 3.28/0.90  
% 3.28/0.90  fof(f39,plain,(
% 3.28/0.90    k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_enumset1(sK1,sK1,sK1,sK2)),k2_enumset1(sK3,sK3,sK3,sK4))),
% 3.28/0.90    inference(definition_unfolding,[],[f29,f27,f27,f27,f27,f28,f30,f30])).
% 3.28/0.90  
% 3.28/0.90  fof(f9,axiom,(
% 3.28/0.90    ! [X0,X1,X2] : (k2_tarski(k4_tarski(X0,X2),k4_tarski(X1,X2)) = k2_zfmisc_1(k2_tarski(X0,X1),k1_tarski(X2)) & k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)))),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f25,plain,(
% 3.28/0.90    ( ! [X2,X0,X1] : (k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2))) )),
% 3.28/0.90    inference(cnf_transformation,[],[f9])).
% 3.28/0.90  
% 3.28/0.90  fof(f38,plain,(
% 3.28/0.90    ( ! [X2,X0,X1] : (k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_enumset1(X1,X1,X1,X2))) )),
% 3.28/0.90    inference(definition_unfolding,[],[f25,f30,f30])).
% 3.28/0.90  
% 3.28/0.90  fof(f7,axiom,(
% 3.28/0.90    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f23,plain,(
% 3.28/0.90    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 3.28/0.90    inference(cnf_transformation,[],[f7])).
% 3.28/0.90  
% 3.28/0.90  fof(f31,plain,(
% 3.28/0.90    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1))) )),
% 3.28/0.90    inference(definition_unfolding,[],[f23,f30])).
% 3.28/0.90  
% 3.28/0.90  fof(f8,axiom,(
% 3.28/0.90    ! [X0,X1,X2,X3] : k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3)) = k2_zfmisc_1(k2_tarski(X0,X1),k2_tarski(X2,X3))),
% 3.28/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.28/0.90  
% 3.28/0.90  fof(f24,plain,(
% 3.28/0.90    ( ! [X2,X0,X3,X1] : (k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3)) = k2_zfmisc_1(k2_tarski(X0,X1),k2_tarski(X2,X3))) )),
% 3.28/0.90    inference(cnf_transformation,[],[f8])).
% 3.28/0.90  
% 3.28/0.90  fof(f36,plain,(
% 3.28/0.90    ( ! [X2,X0,X3,X1] : (k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X1),k2_enumset1(X2,X2,X2,X3))) )),
% 3.28/0.90    inference(definition_unfolding,[],[f24,f30,f30])).
% 3.28/0.90  
% 3.28/0.90  cnf(c_1,plain,
% 3.28/0.90      ( k2_enumset1(X0,X0,X0,X0) = k1_tarski(X0) ),
% 3.28/0.90      inference(cnf_transformation,[],[f32]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_2,plain,
% 3.28/0.90      ( k2_xboole_0(k1_tarski(X0),k2_enumset1(X1,X1,X2,X3)) = k2_enumset1(X0,X1,X2,X3) ),
% 3.28/0.90      inference(cnf_transformation,[],[f33]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_52,plain,
% 3.28/0.90      ( k2_enumset1(X0,X1,X1,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_1,c_2]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_4,plain,
% 3.28/0.90      ( k2_xboole_0(k2_enumset1(X0,X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3) ),
% 3.28/0.90      inference(cnf_transformation,[],[f35]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_70,plain,
% 3.28/0.90      ( k2_xboole_0(k2_xboole_0(k1_tarski(X0),k1_tarski(X0)),k1_tarski(X1)) = k2_enumset1(X0,X0,X0,X1) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_52,c_4]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_60,plain,
% 3.28/0.90      ( k2_xboole_0(k1_tarski(X0),k1_tarski(X0)) = k1_tarski(X0) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_52,c_1]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_73,plain,
% 3.28/0.90      ( k2_enumset1(X0,X0,X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
% 3.28/0.90      inference(light_normalisation,[status(thm)],[c_70,c_60]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_150,plain,
% 3.28/0.90      ( k2_xboole_0(k2_xboole_0(k1_tarski(X0),k1_tarski(X1)),k1_tarski(X2)) = k2_enumset1(X0,X0,X1,X2) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_73,c_4]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_3,plain,
% 3.28/0.90      ( k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0) ),
% 3.28/0.90      inference(cnf_transformation,[],[f34]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_69,plain,
% 3.28/0.90      ( k2_xboole_0(k2_enumset1(X0,X0,X0,X1),k1_tarski(X2)) = k2_enumset1(X1,X1,X0,X2) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_3,c_4]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_74,plain,
% 3.28/0.90      ( k2_xboole_0(k2_xboole_0(k1_tarski(X0),k1_tarski(X1)),k1_tarski(X2)) = k2_enumset1(X1,X1,X0,X2) ),
% 3.28/0.90      inference(demodulation,[status(thm)],[c_69,c_4,c_73]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_627,plain,
% 3.28/0.90      ( k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X1,X1,X0,X2) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_150,c_74]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_796,plain,
% 3.28/0.90      ( k2_xboole_0(k1_tarski(X0),k2_enumset1(X1,X1,X2,X3)) = k2_enumset1(X0,X2,X1,X3) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_627,c_2]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_4950,plain,
% 3.28/0.90      ( k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X0,X2,X1,X3) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_796,c_2]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_8,negated_conjecture,
% 3.28/0.90      ( k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_enumset1(sK1,sK1,sK1,sK2)),k2_enumset1(sK3,sK3,sK3,sK4)) ),
% 3.28/0.90      inference(cnf_transformation,[],[f39]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_142,plain,
% 3.28/0.90      ( k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_enumset1(sK3,sK3,sK3,sK4)) ),
% 3.28/0.90      inference(demodulation,[status(thm)],[c_73,c_8]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_143,plain,
% 3.28/0.90      ( k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_xboole_0(k1_tarski(sK3),k1_tarski(sK4))) ),
% 3.28/0.90      inference(demodulation,[status(thm)],[c_142,c_73]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_4964,plain,
% 3.28/0.90      ( k2_enumset1(k4_tarski(k4_tarski(sK0,sK1),sK3),k4_tarski(k4_tarski(sK0,sK1),sK4),k4_tarski(k4_tarski(sK0,sK2),sK3),k4_tarski(k4_tarski(sK0,sK2),sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_xboole_0(k1_tarski(sK3),k1_tarski(sK4))) ),
% 3.28/0.90      inference(demodulation,[status(thm)],[c_4950,c_143]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_140,plain,
% 3.28/0.90      ( k2_enumset1(X0,X0,X0,X1) = k2_xboole_0(k1_tarski(X1),k1_tarski(X0)) ),
% 3.28/0.90      inference(demodulation,[status(thm)],[c_73,c_3]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_7,plain,
% 3.28/0.90      ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_enumset1(X1,X1,X1,X2)) ),
% 3.28/0.90      inference(cnf_transformation,[],[f38]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_92,plain,
% 3.28/0.90      ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_xboole_0(k1_tarski(X1),k1_tarski(X2))) ),
% 3.28/0.90      inference(demodulation,[status(thm)],[c_7,c_73]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_177,plain,
% 3.28/0.90      ( k2_xboole_0(k1_tarski(k4_tarski(X0,X1)),k1_tarski(k4_tarski(X0,X2))) = k2_zfmisc_1(k1_tarski(X0),k2_xboole_0(k1_tarski(X2),k1_tarski(X1))) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_140,c_92]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_0,plain,
% 3.28/0.90      ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k2_xboole_0(X0,X1) ),
% 3.28/0.90      inference(cnf_transformation,[],[f31]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_41,plain,
% 3.28/0.90      ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k2_xboole_0(X1,X0) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_3,c_0]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_47,plain,
% 3.28/0.90      ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_41,c_0]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_54,plain,
% 3.28/0.90      ( k2_xboole_0(k2_enumset1(X0,X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X3,X0,X1,X2) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_2,c_47]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_180,plain,
% 3.28/0.90      ( k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X1,X2,X3,X0) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_4,c_54]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_220,plain,
% 3.28/0.90      ( k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X2,X3,X0,X1) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_180,c_180]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_5,plain,
% 3.28/0.90      ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X2),k4_tarski(X3,X1),k4_tarski(X3,X2)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X3),k2_enumset1(X1,X1,X1,X2)) ),
% 3.28/0.90      inference(cnf_transformation,[],[f36]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_112,plain,
% 3.28/0.90      ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X2),k4_tarski(X3,X1),k4_tarski(X3,X2)) = k2_zfmisc_1(k2_xboole_0(k1_tarski(X0),k1_tarski(X3)),k2_xboole_0(k1_tarski(X1),k1_tarski(X2))) ),
% 3.28/0.90      inference(demodulation,[status(thm)],[c_5,c_73]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_400,plain,
% 3.28/0.90      ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X2),k4_tarski(X3,X1),k4_tarski(X3,X2)) = k2_zfmisc_1(k2_xboole_0(k1_tarski(X3),k1_tarski(X0)),k2_xboole_0(k1_tarski(X1),k1_tarski(X2))) ),
% 3.28/0.90      inference(superposition,[status(thm)],[c_220,c_112]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_4965,plain,
% 3.28/0.90      ( k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_xboole_0(k1_tarski(sK3),k1_tarski(sK4))) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_xboole_0(k1_tarski(sK1),k1_tarski(sK2))),k2_xboole_0(k1_tarski(sK3),k1_tarski(sK4))) ),
% 3.28/0.90      inference(demodulation,[status(thm)],[c_4964,c_177,c_400]) ).
% 3.28/0.90  
% 3.28/0.90  cnf(c_4966,plain,
% 3.28/0.90      ( $false ),
% 3.28/0.90      inference(equality_resolution_simp,[status(thm)],[c_4965]) ).
% 3.28/0.90  
% 3.28/0.90  
% 3.28/0.90  % SZS output end CNFRefutation for theBenchmark.p
% 3.28/0.90  
% 3.28/0.90  ------                               Statistics
% 3.28/0.90  
% 3.28/0.90  ------ General
% 3.28/0.90  
% 3.28/0.90  abstr_ref_over_cycles:                  0
% 3.28/0.90  abstr_ref_under_cycles:                 0
% 3.28/0.90  gc_basic_clause_elim:                   0
% 3.28/0.90  forced_gc_time:                         0
% 3.28/0.90  parsing_time:                           0.009
% 3.28/0.90  unif_index_cands_time:                  0.
% 3.28/0.90  unif_index_add_time:                    0.
% 3.28/0.90  orderings_time:                         0.
% 3.28/0.90  out_proof_time:                         0.008
% 3.28/0.90  total_time:                             0.198
% 3.28/0.90  num_of_symbols:                         42
% 3.28/0.90  num_of_terms:                           2253
% 3.28/0.90  
% 3.28/0.90  ------ Preprocessing
% 3.28/0.90  
% 3.28/0.90  num_of_splits:                          0
% 3.28/0.90  num_of_split_atoms:                     0
% 3.28/0.90  num_of_reused_defs:                     0
% 3.28/0.90  num_eq_ax_congr_red:                    0
% 3.28/0.90  num_of_sem_filtered_clauses:            0
% 3.28/0.90  num_of_subtypes:                        1
% 3.28/0.90  monotx_restored_types:                  0
% 3.28/0.90  sat_num_of_epr_types:                   0
% 3.28/0.90  sat_num_of_non_cyclic_types:            0
% 3.28/0.90  sat_guarded_non_collapsed_types:        0
% 3.28/0.90  num_pure_diseq_elim:                    0
% 3.28/0.90  simp_replaced_by:                       0
% 3.28/0.90  res_preprocessed:                       26
% 3.28/0.90  prep_upred:                             0
% 3.28/0.90  prep_unflattend:                        0
% 3.28/0.90  smt_new_axioms:                         0
% 3.28/0.90  pred_elim_cands:                        0
% 3.28/0.90  pred_elim:                              0
% 3.28/0.90  pred_elim_cl:                           0
% 3.28/0.90  pred_elim_cycles:                       0
% 3.28/0.90  merged_defs:                            0
% 3.28/0.90  merged_defs_ncl:                        0
% 3.28/0.90  bin_hyper_res:                          0
% 3.28/0.90  prep_cycles:                            2
% 3.28/0.90  pred_elim_time:                         0.
% 3.28/0.90  splitting_time:                         0.
% 3.28/0.90  sem_filter_time:                        0.
% 3.28/0.90  monotx_time:                            0.
% 3.28/0.90  subtype_inf_time:                       0.
% 3.28/0.90  
% 3.28/0.90  ------ Problem properties
% 3.28/0.90  
% 3.28/0.90  clauses:                                9
% 3.28/0.90  conjectures:                            1
% 3.28/0.90  epr:                                    0
% 3.28/0.90  horn:                                   9
% 3.28/0.90  ground:                                 1
% 3.28/0.90  unary:                                  9
% 3.28/0.90  binary:                                 0
% 3.28/0.90  lits:                                   9
% 3.28/0.90  lits_eq:                                9
% 3.28/0.90  fd_pure:                                0
% 3.28/0.90  fd_pseudo:                              0
% 3.28/0.90  fd_cond:                                0
% 3.28/0.90  fd_pseudo_cond:                         0
% 3.28/0.90  ac_symbols:                             0
% 3.28/0.90  
% 3.28/0.90  ------ Propositional Solver
% 3.28/0.90  
% 3.28/0.90  prop_solver_calls:                      13
% 3.28/0.90  prop_fast_solver_calls:                 80
% 3.28/0.90  smt_solver_calls:                       0
% 3.28/0.90  smt_fast_solver_calls:                  0
% 3.28/0.90  prop_num_of_clauses:                    113
% 3.28/0.90  prop_preprocess_simplified:             404
% 3.28/0.90  prop_fo_subsumed:                       0
% 3.28/0.90  prop_solver_time:                       0.
% 3.28/0.90  smt_solver_time:                        0.
% 3.28/0.90  smt_fast_solver_time:                   0.
% 3.28/0.90  prop_fast_solver_time:                  0.
% 3.28/0.90  prop_unsat_core_time:                   0.
% 3.28/0.90  
% 3.28/0.90  ------ QBF
% 3.28/0.90  
% 3.28/0.90  qbf_q_res:                              0
% 3.28/0.90  qbf_num_tautologies:                    0
% 3.28/0.90  qbf_prep_cycles:                        0
% 3.28/0.90  
% 3.28/0.90  ------ BMC1
% 3.28/0.90  
% 3.28/0.90  bmc1_current_bound:                     -1
% 3.28/0.90  bmc1_last_solved_bound:                 -1
% 3.28/0.90  bmc1_unsat_core_size:                   -1
% 3.28/0.90  bmc1_unsat_core_parents_size:           -1
% 3.28/0.90  bmc1_merge_next_fun:                    0
% 3.28/0.90  bmc1_unsat_core_clauses_time:           0.
% 3.28/0.90  
% 3.28/0.90  ------ Instantiation
% 3.28/0.90  
% 3.28/0.90  inst_num_of_clauses:                    0
% 3.28/0.90  inst_num_in_passive:                    0
% 3.28/0.90  inst_num_in_active:                     0
% 3.28/0.90  inst_num_in_unprocessed:                0
% 3.28/0.90  inst_num_of_loops:                      0
% 3.28/0.90  inst_num_of_learning_restarts:          0
% 3.28/0.90  inst_num_moves_active_passive:          0
% 3.28/0.90  inst_lit_activity:                      0
% 3.28/0.90  inst_lit_activity_moves:                0
% 3.28/0.90  inst_num_tautologies:                   0
% 3.28/0.90  inst_num_prop_implied:                  0
% 3.28/0.90  inst_num_existing_simplified:           0
% 3.28/0.90  inst_num_eq_res_simplified:             0
% 3.28/0.90  inst_num_child_elim:                    0
% 3.28/0.90  inst_num_of_dismatching_blockings:      0
% 3.28/0.90  inst_num_of_non_proper_insts:           0
% 3.28/0.90  inst_num_of_duplicates:                 0
% 3.28/0.90  inst_inst_num_from_inst_to_res:         0
% 3.28/0.90  inst_dismatching_checking_time:         0.
% 3.28/0.90  
% 3.28/0.90  ------ Resolution
% 3.28/0.90  
% 3.28/0.90  res_num_of_clauses:                     0
% 3.28/0.90  res_num_in_passive:                     0
% 3.28/0.90  res_num_in_active:                      0
% 3.28/0.90  res_num_of_loops:                       28
% 3.28/0.90  res_forward_subset_subsumed:            0
% 3.28/0.90  res_backward_subset_subsumed:           0
% 3.28/0.90  res_forward_subsumed:                   0
% 3.28/0.90  res_backward_subsumed:                  0
% 3.28/0.90  res_forward_subsumption_resolution:     0
% 3.28/0.90  res_backward_subsumption_resolution:    0
% 3.28/0.90  res_clause_to_clause_subsumption:       4125
% 3.28/0.90  res_orphan_elimination:                 0
% 3.28/0.90  res_tautology_del:                      0
% 3.28/0.90  res_num_eq_res_simplified:              0
% 3.28/0.90  res_num_sel_changes:                    0
% 3.28/0.90  res_moves_from_active_to_pass:          0
% 3.28/0.90  
% 3.28/0.90  ------ Superposition
% 3.28/0.90  
% 3.28/0.90  sup_time_total:                         0.
% 3.28/0.90  sup_time_generating:                    0.
% 3.28/0.90  sup_time_sim_full:                      0.
% 3.28/0.90  sup_time_sim_immed:                     0.
% 3.28/0.90  
% 3.28/0.90  sup_num_of_clauses:                     296
% 3.28/0.90  sup_num_in_active:                      68
% 3.28/0.90  sup_num_in_passive:                     228
% 3.28/0.90  sup_num_of_loops:                       74
% 3.28/0.90  sup_fw_superposition:                   2262
% 3.28/0.90  sup_bw_superposition:                   2285
% 3.28/0.90  sup_immediate_simplified:               362
% 3.28/0.90  sup_given_eliminated:                   0
% 3.28/0.90  comparisons_done:                       0
% 3.28/0.90  comparisons_avoided:                    0
% 3.28/0.90  
% 3.28/0.90  ------ Simplifications
% 3.28/0.90  
% 3.28/0.90  
% 3.28/0.90  sim_fw_subset_subsumed:                 0
% 3.28/0.90  sim_bw_subset_subsumed:                 0
% 3.28/0.90  sim_fw_subsumed:                        44
% 3.28/0.90  sim_bw_subsumed:                        1
% 3.28/0.90  sim_fw_subsumption_res:                 0
% 3.28/0.90  sim_bw_subsumption_res:                 0
% 3.28/0.90  sim_tautology_del:                      0
% 3.28/0.90  sim_eq_tautology_del:                   62
% 3.28/0.90  sim_eq_res_simp:                        0
% 3.28/0.90  sim_fw_demodulated:                     144
% 3.28/0.90  sim_bw_demodulated:                     6
% 3.28/0.90  sim_light_normalised:                   216
% 3.28/0.90  sim_joinable_taut:                      0
% 3.28/0.90  sim_joinable_simp:                      0
% 3.28/0.90  sim_ac_normalised:                      0
% 3.28/0.90  sim_smt_subsumption:                    0
% 3.28/0.90  
%------------------------------------------------------------------------------
