%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:45:03 EST 2020

% Result     : Theorem 1.62s
% Output     : CNFRefutation 1.62s
% Verified   : 
% Statistics : Number of formulae       :   82 ( 177 expanded)
%              Number of clauses        :   34 (  44 expanded)
%              Number of leaves         :   17 (  47 expanded)
%              Depth                    :   18
%              Number of atoms          :  140 ( 302 expanded)
%              Number of equality atoms :   95 ( 198 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f11])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k7_relat_1(X1,X0) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f18])).

fof(f37,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f14,conjecture,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(X0,X1)
       => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( v1_relat_1(X2)
       => ( r1_tarski(X0,X1)
         => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f20,plain,(
    ? [X0,X1,X2] :
      ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0)
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f21,plain,(
    ? [X0,X1,X2] :
      ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0)
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(flattening,[],[f20])).

fof(f22,plain,
    ( ? [X0,X1,X2] :
        ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0)
        & r1_tarski(X0,X1)
        & v1_relat_1(X2) )
   => ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)
      & r1_tarski(sK0,sK1)
      & v1_relat_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)
    & r1_tarski(sK0,sK1)
    & v1_relat_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f21,f22])).

fof(f39,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f23])).

fof(f9,axiom,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f38,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f23])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => k7_relat_1(X2,k3_xboole_0(X0,X1)) = k7_relat_1(k7_relat_1(X2,X0),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( k7_relat_1(X2,k3_xboole_0(X0,X1)) = k7_relat_1(k7_relat_1(X2,X0),X1)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( k7_relat_1(X2,k3_xboole_0(X0,X1)) = k7_relat_1(k7_relat_1(X2,X0),X1)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f8,axiom,(
    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f2,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f7])).

fof(f41,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f29,f30])).

fof(f42,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f28,f41])).

fof(f43,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f27,f42])).

fof(f44,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f26,f43])).

fof(f45,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f25,f44])).

fof(f46,plain,(
    ! [X0,X1] : k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f31,f45])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))
      | ~ v1_relat_1(X2) ) ),
    inference(definition_unfolding,[],[f33,f46])).

fof(f1,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f47,plain,(
    ! [X0,X1] : k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X0) ),
    inference(definition_unfolding,[],[f24,f45,f45])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f49,plain,(
    ! [X0,X1] :
      ( k1_setfam_1(k6_enumset1(k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),X0)) = k1_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f36,f46])).

fof(f40,plain,(
    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_4,plain,
    ( k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f34])).

cnf(c_6,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_8,negated_conjecture,
    ( r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_81,plain,
    ( ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0
    | k1_relat_1(X0) != sK0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_8])).

cnf(c_82,plain,
    ( ~ v1_relat_1(X0)
    | k7_relat_1(X0,sK1) = X0
    | k1_relat_1(X0) != sK0 ),
    inference(unflattening,[status(thm)],[c_81])).

cnf(c_337,plain,
    ( k7_relat_1(X0,sK1) = X0
    | k1_relat_1(X0) != sK0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_82])).

cnf(c_499,plain,
    ( k7_relat_1(k6_relat_1(X0),sK1) = k6_relat_1(X0)
    | sK0 != X0
    | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4,c_337])).

cnf(c_1,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_500,plain,
    ( ~ v1_relat_1(k6_relat_1(X0))
    | k7_relat_1(k6_relat_1(X0),sK1) = k6_relat_1(X0)
    | sK0 != X0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_499])).

cnf(c_504,plain,
    ( sK0 != X0
    | k7_relat_1(k6_relat_1(X0),sK1) = k6_relat_1(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_499,c_1,c_500])).

cnf(c_505,plain,
    ( k7_relat_1(k6_relat_1(X0),sK1) = k6_relat_1(X0)
    | sK0 != X0 ),
    inference(renaming,[status(thm)],[c_504])).

cnf(c_509,plain,
    ( k7_relat_1(k6_relat_1(sK0),sK1) = k6_relat_1(sK0) ),
    inference(equality_resolution,[status(thm)],[c_505])).

cnf(c_9,negated_conjecture,
    ( v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_338,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | k7_relat_1(X0,k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) = k7_relat_1(k7_relat_1(X0,X1),X2) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_340,plain,
    ( k7_relat_1(X0,k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) = k7_relat_1(k7_relat_1(X0,X1),X2)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_0,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_341,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_5,plain,
    ( ~ v1_relat_1(X0)
    | k1_setfam_1(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_339,plain,
    ( k1_setfam_1(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_578,plain,
    ( k1_setfam_1(k6_enumset1(k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
    inference(superposition,[status(thm)],[c_341,c_339])).

cnf(c_583,plain,
    ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
    inference(light_normalisation,[status(thm)],[c_578,c_4])).

cnf(c_652,plain,
    ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X1),X0)) ),
    inference(superposition,[status(thm)],[c_0,c_583])).

cnf(c_743,plain,
    ( k7_relat_1(X0,k1_relat_1(k7_relat_1(k6_relat_1(X1),X2))) = k7_relat_1(k7_relat_1(X0,X2),X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_340,c_652])).

cnf(c_750,plain,
    ( k7_relat_1(sK2,k1_relat_1(k7_relat_1(k6_relat_1(X0),X1))) = k7_relat_1(k7_relat_1(sK2,X1),X0) ),
    inference(superposition,[status(thm)],[c_338,c_743])).

cnf(c_758,plain,
    ( k7_relat_1(sK2,k1_relat_1(k6_relat_1(sK0))) = k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
    inference(superposition,[status(thm)],[c_509,c_750])).

cnf(c_759,plain,
    ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) = k7_relat_1(sK2,sK0) ),
    inference(demodulation,[status(thm)],[c_758,c_4])).

cnf(c_235,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_435,plain,
    ( k7_relat_1(sK2,sK0) = k7_relat_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_235])).

cnf(c_236,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_400,plain,
    ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != X0
    | k7_relat_1(sK2,sK0) != X0
    | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
    inference(instantiation,[status(thm)],[c_236])).

cnf(c_434,plain,
    ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != k7_relat_1(sK2,sK0)
    | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0)
    | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_400])).

cnf(c_7,negated_conjecture,
    ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
    inference(cnf_transformation,[],[f40])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_759,c_435,c_434,c_7])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n011.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 12:13:27 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.62/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.62/0.99  
% 1.62/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.62/0.99  
% 1.62/0.99  ------  iProver source info
% 1.62/0.99  
% 1.62/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.62/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.62/0.99  git: non_committed_changes: false
% 1.62/0.99  git: last_make_outside_of_git: false
% 1.62/0.99  
% 1.62/0.99  ------ 
% 1.62/0.99  
% 1.62/0.99  ------ Input Options
% 1.62/0.99  
% 1.62/0.99  --out_options                           all
% 1.62/0.99  --tptp_safe_out                         true
% 1.62/0.99  --problem_path                          ""
% 1.62/0.99  --include_path                          ""
% 1.62/0.99  --clausifier                            res/vclausify_rel
% 1.62/0.99  --clausifier_options                    --mode clausify
% 1.62/0.99  --stdin                                 false
% 1.62/0.99  --stats_out                             all
% 1.62/0.99  
% 1.62/0.99  ------ General Options
% 1.62/0.99  
% 1.62/0.99  --fof                                   false
% 1.62/0.99  --time_out_real                         305.
% 1.62/0.99  --time_out_virtual                      -1.
% 1.62/0.99  --symbol_type_check                     false
% 1.62/0.99  --clausify_out                          false
% 1.62/0.99  --sig_cnt_out                           false
% 1.62/0.99  --trig_cnt_out                          false
% 1.62/0.99  --trig_cnt_out_tolerance                1.
% 1.62/0.99  --trig_cnt_out_sk_spl                   false
% 1.62/0.99  --abstr_cl_out                          false
% 1.62/0.99  
% 1.62/0.99  ------ Global Options
% 1.62/0.99  
% 1.62/0.99  --schedule                              default
% 1.62/0.99  --add_important_lit                     false
% 1.62/0.99  --prop_solver_per_cl                    1000
% 1.62/0.99  --min_unsat_core                        false
% 1.62/0.99  --soft_assumptions                      false
% 1.62/0.99  --soft_lemma_size                       3
% 1.62/0.99  --prop_impl_unit_size                   0
% 1.62/0.99  --prop_impl_unit                        []
% 1.62/0.99  --share_sel_clauses                     true
% 1.62/0.99  --reset_solvers                         false
% 1.62/0.99  --bc_imp_inh                            [conj_cone]
% 1.62/0.99  --conj_cone_tolerance                   3.
% 1.62/0.99  --extra_neg_conj                        none
% 1.62/0.99  --large_theory_mode                     true
% 1.62/0.99  --prolific_symb_bound                   200
% 1.62/0.99  --lt_threshold                          2000
% 1.62/0.99  --clause_weak_htbl                      true
% 1.62/0.99  --gc_record_bc_elim                     false
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing Options
% 1.62/0.99  
% 1.62/0.99  --preprocessing_flag                    true
% 1.62/0.99  --time_out_prep_mult                    0.1
% 1.62/0.99  --splitting_mode                        input
% 1.62/0.99  --splitting_grd                         true
% 1.62/0.99  --splitting_cvd                         false
% 1.62/0.99  --splitting_cvd_svl                     false
% 1.62/0.99  --splitting_nvd                         32
% 1.62/0.99  --sub_typing                            true
% 1.62/0.99  --prep_gs_sim                           true
% 1.62/0.99  --prep_unflatten                        true
% 1.62/0.99  --prep_res_sim                          true
% 1.62/0.99  --prep_upred                            true
% 1.62/0.99  --prep_sem_filter                       exhaustive
% 1.62/0.99  --prep_sem_filter_out                   false
% 1.62/0.99  --pred_elim                             true
% 1.62/0.99  --res_sim_input                         true
% 1.62/0.99  --eq_ax_congr_red                       true
% 1.62/0.99  --pure_diseq_elim                       true
% 1.62/0.99  --brand_transform                       false
% 1.62/0.99  --non_eq_to_eq                          false
% 1.62/0.99  --prep_def_merge                        true
% 1.62/0.99  --prep_def_merge_prop_impl              false
% 1.62/0.99  --prep_def_merge_mbd                    true
% 1.62/0.99  --prep_def_merge_tr_red                 false
% 1.62/0.99  --prep_def_merge_tr_cl                  false
% 1.62/0.99  --smt_preprocessing                     true
% 1.62/0.99  --smt_ac_axioms                         fast
% 1.62/0.99  --preprocessed_out                      false
% 1.62/0.99  --preprocessed_stats                    false
% 1.62/0.99  
% 1.62/0.99  ------ Abstraction refinement Options
% 1.62/0.99  
% 1.62/0.99  --abstr_ref                             []
% 1.62/0.99  --abstr_ref_prep                        false
% 1.62/0.99  --abstr_ref_until_sat                   false
% 1.62/0.99  --abstr_ref_sig_restrict                funpre
% 1.62/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.62/0.99  --abstr_ref_under                       []
% 1.62/0.99  
% 1.62/0.99  ------ SAT Options
% 1.62/0.99  
% 1.62/0.99  --sat_mode                              false
% 1.62/0.99  --sat_fm_restart_options                ""
% 1.62/0.99  --sat_gr_def                            false
% 1.62/0.99  --sat_epr_types                         true
% 1.62/0.99  --sat_non_cyclic_types                  false
% 1.62/0.99  --sat_finite_models                     false
% 1.62/0.99  --sat_fm_lemmas                         false
% 1.62/0.99  --sat_fm_prep                           false
% 1.62/0.99  --sat_fm_uc_incr                        true
% 1.62/0.99  --sat_out_model                         small
% 1.62/0.99  --sat_out_clauses                       false
% 1.62/0.99  
% 1.62/0.99  ------ QBF Options
% 1.62/0.99  
% 1.62/0.99  --qbf_mode                              false
% 1.62/0.99  --qbf_elim_univ                         false
% 1.62/0.99  --qbf_dom_inst                          none
% 1.62/0.99  --qbf_dom_pre_inst                      false
% 1.62/0.99  --qbf_sk_in                             false
% 1.62/0.99  --qbf_pred_elim                         true
% 1.62/0.99  --qbf_split                             512
% 1.62/0.99  
% 1.62/0.99  ------ BMC1 Options
% 1.62/0.99  
% 1.62/0.99  --bmc1_incremental                      false
% 1.62/0.99  --bmc1_axioms                           reachable_all
% 1.62/0.99  --bmc1_min_bound                        0
% 1.62/0.99  --bmc1_max_bound                        -1
% 1.62/0.99  --bmc1_max_bound_default                -1
% 1.62/0.99  --bmc1_symbol_reachability              true
% 1.62/0.99  --bmc1_property_lemmas                  false
% 1.62/0.99  --bmc1_k_induction                      false
% 1.62/0.99  --bmc1_non_equiv_states                 false
% 1.62/0.99  --bmc1_deadlock                         false
% 1.62/0.99  --bmc1_ucm                              false
% 1.62/0.99  --bmc1_add_unsat_core                   none
% 1.62/0.99  --bmc1_unsat_core_children              false
% 1.62/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.62/0.99  --bmc1_out_stat                         full
% 1.62/0.99  --bmc1_ground_init                      false
% 1.62/0.99  --bmc1_pre_inst_next_state              false
% 1.62/0.99  --bmc1_pre_inst_state                   false
% 1.62/0.99  --bmc1_pre_inst_reach_state             false
% 1.62/0.99  --bmc1_out_unsat_core                   false
% 1.62/0.99  --bmc1_aig_witness_out                  false
% 1.62/0.99  --bmc1_verbose                          false
% 1.62/0.99  --bmc1_dump_clauses_tptp                false
% 1.62/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.62/0.99  --bmc1_dump_file                        -
% 1.62/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.62/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.62/0.99  --bmc1_ucm_extend_mode                  1
% 1.62/0.99  --bmc1_ucm_init_mode                    2
% 1.62/0.99  --bmc1_ucm_cone_mode                    none
% 1.62/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.62/0.99  --bmc1_ucm_relax_model                  4
% 1.62/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.62/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.62/0.99  --bmc1_ucm_layered_model                none
% 1.62/0.99  --bmc1_ucm_max_lemma_size               10
% 1.62/0.99  
% 1.62/0.99  ------ AIG Options
% 1.62/0.99  
% 1.62/0.99  --aig_mode                              false
% 1.62/0.99  
% 1.62/0.99  ------ Instantiation Options
% 1.62/0.99  
% 1.62/0.99  --instantiation_flag                    true
% 1.62/0.99  --inst_sos_flag                         false
% 1.62/0.99  --inst_sos_phase                        true
% 1.62/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.62/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.62/0.99  --inst_lit_sel_side                     num_symb
% 1.62/0.99  --inst_solver_per_active                1400
% 1.62/0.99  --inst_solver_calls_frac                1.
% 1.62/0.99  --inst_passive_queue_type               priority_queues
% 1.62/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.62/0.99  --inst_passive_queues_freq              [25;2]
% 1.62/0.99  --inst_dismatching                      true
% 1.62/0.99  --inst_eager_unprocessed_to_passive     true
% 1.62/0.99  --inst_prop_sim_given                   true
% 1.62/0.99  --inst_prop_sim_new                     false
% 1.62/0.99  --inst_subs_new                         false
% 1.62/0.99  --inst_eq_res_simp                      false
% 1.62/0.99  --inst_subs_given                       false
% 1.62/0.99  --inst_orphan_elimination               true
% 1.62/0.99  --inst_learning_loop_flag               true
% 1.62/0.99  --inst_learning_start                   3000
% 1.62/0.99  --inst_learning_factor                  2
% 1.62/0.99  --inst_start_prop_sim_after_learn       3
% 1.62/0.99  --inst_sel_renew                        solver
% 1.62/0.99  --inst_lit_activity_flag                true
% 1.62/0.99  --inst_restr_to_given                   false
% 1.62/0.99  --inst_activity_threshold               500
% 1.62/0.99  --inst_out_proof                        true
% 1.62/0.99  
% 1.62/0.99  ------ Resolution Options
% 1.62/0.99  
% 1.62/0.99  --resolution_flag                       true
% 1.62/0.99  --res_lit_sel                           adaptive
% 1.62/0.99  --res_lit_sel_side                      none
% 1.62/0.99  --res_ordering                          kbo
% 1.62/0.99  --res_to_prop_solver                    active
% 1.62/0.99  --res_prop_simpl_new                    false
% 1.62/0.99  --res_prop_simpl_given                  true
% 1.62/0.99  --res_passive_queue_type                priority_queues
% 1.62/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.62/0.99  --res_passive_queues_freq               [15;5]
% 1.62/0.99  --res_forward_subs                      full
% 1.62/0.99  --res_backward_subs                     full
% 1.62/0.99  --res_forward_subs_resolution           true
% 1.62/0.99  --res_backward_subs_resolution          true
% 1.62/0.99  --res_orphan_elimination                true
% 1.62/0.99  --res_time_limit                        2.
% 1.62/0.99  --res_out_proof                         true
% 1.62/0.99  
% 1.62/0.99  ------ Superposition Options
% 1.62/0.99  
% 1.62/0.99  --superposition_flag                    true
% 1.62/0.99  --sup_passive_queue_type                priority_queues
% 1.62/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.62/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.62/0.99  --demod_completeness_check              fast
% 1.62/0.99  --demod_use_ground                      true
% 1.62/0.99  --sup_to_prop_solver                    passive
% 1.62/0.99  --sup_prop_simpl_new                    true
% 1.62/0.99  --sup_prop_simpl_given                  true
% 1.62/0.99  --sup_fun_splitting                     false
% 1.62/0.99  --sup_smt_interval                      50000
% 1.62/0.99  
% 1.62/0.99  ------ Superposition Simplification Setup
% 1.62/0.99  
% 1.62/0.99  --sup_indices_passive                   []
% 1.62/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.62/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_full_bw                           [BwDemod]
% 1.62/0.99  --sup_immed_triv                        [TrivRules]
% 1.62/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.62/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_immed_bw_main                     []
% 1.62/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.62/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.62/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.62/0.99  
% 1.62/0.99  ------ Combination Options
% 1.62/0.99  
% 1.62/0.99  --comb_res_mult                         3
% 1.62/0.99  --comb_sup_mult                         2
% 1.62/0.99  --comb_inst_mult                        10
% 1.62/0.99  
% 1.62/0.99  ------ Debug Options
% 1.62/0.99  
% 1.62/0.99  --dbg_backtrace                         false
% 1.62/0.99  --dbg_dump_prop_clauses                 false
% 1.62/0.99  --dbg_dump_prop_clauses_file            -
% 1.62/0.99  --dbg_out_stat                          false
% 1.62/0.99  ------ Parsing...
% 1.62/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.62/0.99  ------ Proving...
% 1.62/0.99  ------ Problem Properties 
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  clauses                                 9
% 1.62/0.99  conjectures                             2
% 1.62/0.99  EPR                                     1
% 1.62/0.99  Horn                                    9
% 1.62/0.99  unary                                   6
% 1.62/0.99  binary                                  2
% 1.62/0.99  lits                                    13
% 1.62/0.99  lits eq                                 8
% 1.62/0.99  fd_pure                                 0
% 1.62/0.99  fd_pseudo                               0
% 1.62/0.99  fd_cond                                 0
% 1.62/0.99  fd_pseudo_cond                          0
% 1.62/0.99  AC symbols                              0
% 1.62/0.99  
% 1.62/0.99  ------ Schedule dynamic 5 is on 
% 1.62/0.99  
% 1.62/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  ------ 
% 1.62/0.99  Current options:
% 1.62/0.99  ------ 
% 1.62/0.99  
% 1.62/0.99  ------ Input Options
% 1.62/0.99  
% 1.62/0.99  --out_options                           all
% 1.62/0.99  --tptp_safe_out                         true
% 1.62/0.99  --problem_path                          ""
% 1.62/0.99  --include_path                          ""
% 1.62/0.99  --clausifier                            res/vclausify_rel
% 1.62/0.99  --clausifier_options                    --mode clausify
% 1.62/0.99  --stdin                                 false
% 1.62/0.99  --stats_out                             all
% 1.62/0.99  
% 1.62/0.99  ------ General Options
% 1.62/0.99  
% 1.62/0.99  --fof                                   false
% 1.62/0.99  --time_out_real                         305.
% 1.62/0.99  --time_out_virtual                      -1.
% 1.62/0.99  --symbol_type_check                     false
% 1.62/0.99  --clausify_out                          false
% 1.62/0.99  --sig_cnt_out                           false
% 1.62/0.99  --trig_cnt_out                          false
% 1.62/0.99  --trig_cnt_out_tolerance                1.
% 1.62/0.99  --trig_cnt_out_sk_spl                   false
% 1.62/0.99  --abstr_cl_out                          false
% 1.62/0.99  
% 1.62/0.99  ------ Global Options
% 1.62/0.99  
% 1.62/0.99  --schedule                              default
% 1.62/0.99  --add_important_lit                     false
% 1.62/0.99  --prop_solver_per_cl                    1000
% 1.62/0.99  --min_unsat_core                        false
% 1.62/0.99  --soft_assumptions                      false
% 1.62/0.99  --soft_lemma_size                       3
% 1.62/0.99  --prop_impl_unit_size                   0
% 1.62/0.99  --prop_impl_unit                        []
% 1.62/0.99  --share_sel_clauses                     true
% 1.62/0.99  --reset_solvers                         false
% 1.62/0.99  --bc_imp_inh                            [conj_cone]
% 1.62/0.99  --conj_cone_tolerance                   3.
% 1.62/0.99  --extra_neg_conj                        none
% 1.62/0.99  --large_theory_mode                     true
% 1.62/0.99  --prolific_symb_bound                   200
% 1.62/0.99  --lt_threshold                          2000
% 1.62/0.99  --clause_weak_htbl                      true
% 1.62/0.99  --gc_record_bc_elim                     false
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing Options
% 1.62/0.99  
% 1.62/0.99  --preprocessing_flag                    true
% 1.62/0.99  --time_out_prep_mult                    0.1
% 1.62/0.99  --splitting_mode                        input
% 1.62/0.99  --splitting_grd                         true
% 1.62/0.99  --splitting_cvd                         false
% 1.62/0.99  --splitting_cvd_svl                     false
% 1.62/0.99  --splitting_nvd                         32
% 1.62/0.99  --sub_typing                            true
% 1.62/0.99  --prep_gs_sim                           true
% 1.62/0.99  --prep_unflatten                        true
% 1.62/0.99  --prep_res_sim                          true
% 1.62/0.99  --prep_upred                            true
% 1.62/0.99  --prep_sem_filter                       exhaustive
% 1.62/0.99  --prep_sem_filter_out                   false
% 1.62/0.99  --pred_elim                             true
% 1.62/0.99  --res_sim_input                         true
% 1.62/0.99  --eq_ax_congr_red                       true
% 1.62/0.99  --pure_diseq_elim                       true
% 1.62/0.99  --brand_transform                       false
% 1.62/0.99  --non_eq_to_eq                          false
% 1.62/0.99  --prep_def_merge                        true
% 1.62/0.99  --prep_def_merge_prop_impl              false
% 1.62/0.99  --prep_def_merge_mbd                    true
% 1.62/0.99  --prep_def_merge_tr_red                 false
% 1.62/0.99  --prep_def_merge_tr_cl                  false
% 1.62/0.99  --smt_preprocessing                     true
% 1.62/0.99  --smt_ac_axioms                         fast
% 1.62/0.99  --preprocessed_out                      false
% 1.62/0.99  --preprocessed_stats                    false
% 1.62/0.99  
% 1.62/0.99  ------ Abstraction refinement Options
% 1.62/0.99  
% 1.62/0.99  --abstr_ref                             []
% 1.62/0.99  --abstr_ref_prep                        false
% 1.62/0.99  --abstr_ref_until_sat                   false
% 1.62/0.99  --abstr_ref_sig_restrict                funpre
% 1.62/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.62/0.99  --abstr_ref_under                       []
% 1.62/0.99  
% 1.62/0.99  ------ SAT Options
% 1.62/0.99  
% 1.62/0.99  --sat_mode                              false
% 1.62/0.99  --sat_fm_restart_options                ""
% 1.62/0.99  --sat_gr_def                            false
% 1.62/0.99  --sat_epr_types                         true
% 1.62/0.99  --sat_non_cyclic_types                  false
% 1.62/0.99  --sat_finite_models                     false
% 1.62/0.99  --sat_fm_lemmas                         false
% 1.62/0.99  --sat_fm_prep                           false
% 1.62/0.99  --sat_fm_uc_incr                        true
% 1.62/0.99  --sat_out_model                         small
% 1.62/0.99  --sat_out_clauses                       false
% 1.62/0.99  
% 1.62/0.99  ------ QBF Options
% 1.62/0.99  
% 1.62/0.99  --qbf_mode                              false
% 1.62/0.99  --qbf_elim_univ                         false
% 1.62/0.99  --qbf_dom_inst                          none
% 1.62/0.99  --qbf_dom_pre_inst                      false
% 1.62/0.99  --qbf_sk_in                             false
% 1.62/0.99  --qbf_pred_elim                         true
% 1.62/0.99  --qbf_split                             512
% 1.62/0.99  
% 1.62/0.99  ------ BMC1 Options
% 1.62/0.99  
% 1.62/0.99  --bmc1_incremental                      false
% 1.62/0.99  --bmc1_axioms                           reachable_all
% 1.62/0.99  --bmc1_min_bound                        0
% 1.62/0.99  --bmc1_max_bound                        -1
% 1.62/0.99  --bmc1_max_bound_default                -1
% 1.62/0.99  --bmc1_symbol_reachability              true
% 1.62/0.99  --bmc1_property_lemmas                  false
% 1.62/0.99  --bmc1_k_induction                      false
% 1.62/0.99  --bmc1_non_equiv_states                 false
% 1.62/0.99  --bmc1_deadlock                         false
% 1.62/0.99  --bmc1_ucm                              false
% 1.62/0.99  --bmc1_add_unsat_core                   none
% 1.62/0.99  --bmc1_unsat_core_children              false
% 1.62/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.62/0.99  --bmc1_out_stat                         full
% 1.62/0.99  --bmc1_ground_init                      false
% 1.62/0.99  --bmc1_pre_inst_next_state              false
% 1.62/0.99  --bmc1_pre_inst_state                   false
% 1.62/0.99  --bmc1_pre_inst_reach_state             false
% 1.62/0.99  --bmc1_out_unsat_core                   false
% 1.62/0.99  --bmc1_aig_witness_out                  false
% 1.62/0.99  --bmc1_verbose                          false
% 1.62/0.99  --bmc1_dump_clauses_tptp                false
% 1.62/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.62/0.99  --bmc1_dump_file                        -
% 1.62/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.62/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.62/0.99  --bmc1_ucm_extend_mode                  1
% 1.62/0.99  --bmc1_ucm_init_mode                    2
% 1.62/0.99  --bmc1_ucm_cone_mode                    none
% 1.62/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.62/0.99  --bmc1_ucm_relax_model                  4
% 1.62/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.62/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.62/0.99  --bmc1_ucm_layered_model                none
% 1.62/0.99  --bmc1_ucm_max_lemma_size               10
% 1.62/0.99  
% 1.62/0.99  ------ AIG Options
% 1.62/0.99  
% 1.62/0.99  --aig_mode                              false
% 1.62/0.99  
% 1.62/0.99  ------ Instantiation Options
% 1.62/0.99  
% 1.62/0.99  --instantiation_flag                    true
% 1.62/0.99  --inst_sos_flag                         false
% 1.62/0.99  --inst_sos_phase                        true
% 1.62/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.62/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.62/0.99  --inst_lit_sel_side                     none
% 1.62/0.99  --inst_solver_per_active                1400
% 1.62/0.99  --inst_solver_calls_frac                1.
% 1.62/0.99  --inst_passive_queue_type               priority_queues
% 1.62/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.62/0.99  --inst_passive_queues_freq              [25;2]
% 1.62/0.99  --inst_dismatching                      true
% 1.62/0.99  --inst_eager_unprocessed_to_passive     true
% 1.62/0.99  --inst_prop_sim_given                   true
% 1.62/0.99  --inst_prop_sim_new                     false
% 1.62/0.99  --inst_subs_new                         false
% 1.62/0.99  --inst_eq_res_simp                      false
% 1.62/0.99  --inst_subs_given                       false
% 1.62/0.99  --inst_orphan_elimination               true
% 1.62/0.99  --inst_learning_loop_flag               true
% 1.62/0.99  --inst_learning_start                   3000
% 1.62/0.99  --inst_learning_factor                  2
% 1.62/0.99  --inst_start_prop_sim_after_learn       3
% 1.62/0.99  --inst_sel_renew                        solver
% 1.62/0.99  --inst_lit_activity_flag                true
% 1.62/0.99  --inst_restr_to_given                   false
% 1.62/0.99  --inst_activity_threshold               500
% 1.62/0.99  --inst_out_proof                        true
% 1.62/0.99  
% 1.62/0.99  ------ Resolution Options
% 1.62/0.99  
% 1.62/0.99  --resolution_flag                       false
% 1.62/0.99  --res_lit_sel                           adaptive
% 1.62/0.99  --res_lit_sel_side                      none
% 1.62/0.99  --res_ordering                          kbo
% 1.62/0.99  --res_to_prop_solver                    active
% 1.62/0.99  --res_prop_simpl_new                    false
% 1.62/0.99  --res_prop_simpl_given                  true
% 1.62/0.99  --res_passive_queue_type                priority_queues
% 1.62/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.62/0.99  --res_passive_queues_freq               [15;5]
% 1.62/0.99  --res_forward_subs                      full
% 1.62/0.99  --res_backward_subs                     full
% 1.62/0.99  --res_forward_subs_resolution           true
% 1.62/0.99  --res_backward_subs_resolution          true
% 1.62/0.99  --res_orphan_elimination                true
% 1.62/0.99  --res_time_limit                        2.
% 1.62/0.99  --res_out_proof                         true
% 1.62/0.99  
% 1.62/0.99  ------ Superposition Options
% 1.62/0.99  
% 1.62/0.99  --superposition_flag                    true
% 1.62/0.99  --sup_passive_queue_type                priority_queues
% 1.62/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.62/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.62/0.99  --demod_completeness_check              fast
% 1.62/0.99  --demod_use_ground                      true
% 1.62/0.99  --sup_to_prop_solver                    passive
% 1.62/0.99  --sup_prop_simpl_new                    true
% 1.62/0.99  --sup_prop_simpl_given                  true
% 1.62/0.99  --sup_fun_splitting                     false
% 1.62/0.99  --sup_smt_interval                      50000
% 1.62/0.99  
% 1.62/0.99  ------ Superposition Simplification Setup
% 1.62/0.99  
% 1.62/0.99  --sup_indices_passive                   []
% 1.62/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.62/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_full_bw                           [BwDemod]
% 1.62/0.99  --sup_immed_triv                        [TrivRules]
% 1.62/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.62/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_immed_bw_main                     []
% 1.62/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.62/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.62/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.62/0.99  
% 1.62/0.99  ------ Combination Options
% 1.62/0.99  
% 1.62/0.99  --comb_res_mult                         3
% 1.62/0.99  --comb_sup_mult                         2
% 1.62/0.99  --comb_inst_mult                        10
% 1.62/0.99  
% 1.62/0.99  ------ Debug Options
% 1.62/0.99  
% 1.62/0.99  --dbg_backtrace                         false
% 1.62/0.99  --dbg_dump_prop_clauses                 false
% 1.62/0.99  --dbg_dump_prop_clauses_file            -
% 1.62/0.99  --dbg_out_stat                          false
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  ------ Proving...
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  % SZS status Theorem for theBenchmark.p
% 1.62/0.99  
% 1.62/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.62/0.99  
% 1.62/0.99  fof(f11,axiom,(
% 1.62/0.99    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 1.62/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f34,plain,(
% 1.62/0.99    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 1.62/0.99    inference(cnf_transformation,[],[f11])).
% 1.62/0.99  
% 1.62/0.99  fof(f13,axiom,(
% 1.62/0.99    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k7_relat_1(X1,X0) = X1))),
% 1.62/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f18,plain,(
% 1.62/0.99    ! [X0,X1] : ((k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.62/0.99    inference(ennf_transformation,[],[f13])).
% 1.62/0.99  
% 1.62/0.99  fof(f19,plain,(
% 1.62/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 1.62/0.99    inference(flattening,[],[f18])).
% 1.62/0.99  
% 1.62/0.99  fof(f37,plain,(
% 1.62/0.99    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 1.62/0.99    inference(cnf_transformation,[],[f19])).
% 1.62/0.99  
% 1.62/0.99  fof(f14,conjecture,(
% 1.62/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0)))),
% 1.62/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f15,negated_conjecture,(
% 1.62/1.00    ~! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0)))),
% 1.62/1.00    inference(negated_conjecture,[],[f14])).
% 1.62/1.00  
% 1.62/1.00  fof(f20,plain,(
% 1.62/1.00    ? [X0,X1,X2] : ((k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0) & r1_tarski(X0,X1)) & v1_relat_1(X2))),
% 1.62/1.00    inference(ennf_transformation,[],[f15])).
% 1.62/1.00  
% 1.62/1.00  fof(f21,plain,(
% 1.62/1.00    ? [X0,X1,X2] : (k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0) & r1_tarski(X0,X1) & v1_relat_1(X2))),
% 1.62/1.00    inference(flattening,[],[f20])).
% 1.62/1.00  
% 1.62/1.00  fof(f22,plain,(
% 1.62/1.00    ? [X0,X1,X2] : (k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0) & r1_tarski(X0,X1) & v1_relat_1(X2)) => (k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0) & r1_tarski(sK0,sK1) & v1_relat_1(sK2))),
% 1.62/1.00    introduced(choice_axiom,[])).
% 1.62/1.00  
% 1.62/1.00  fof(f23,plain,(
% 1.62/1.00    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0) & r1_tarski(sK0,sK1) & v1_relat_1(sK2)),
% 1.62/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f21,f22])).
% 1.62/1.00  
% 1.62/1.00  fof(f39,plain,(
% 1.62/1.00    r1_tarski(sK0,sK1)),
% 1.62/1.00    inference(cnf_transformation,[],[f23])).
% 1.62/1.00  
% 1.62/1.00  fof(f9,axiom,(
% 1.62/1.00    ! [X0] : v1_relat_1(k6_relat_1(X0))),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f32,plain,(
% 1.62/1.00    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 1.62/1.00    inference(cnf_transformation,[],[f9])).
% 1.62/1.00  
% 1.62/1.00  fof(f38,plain,(
% 1.62/1.00    v1_relat_1(sK2)),
% 1.62/1.00    inference(cnf_transformation,[],[f23])).
% 1.62/1.00  
% 1.62/1.00  fof(f10,axiom,(
% 1.62/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) => k7_relat_1(X2,k3_xboole_0(X0,X1)) = k7_relat_1(k7_relat_1(X2,X0),X1))),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f16,plain,(
% 1.62/1.00    ! [X0,X1,X2] : (k7_relat_1(X2,k3_xboole_0(X0,X1)) = k7_relat_1(k7_relat_1(X2,X0),X1) | ~v1_relat_1(X2))),
% 1.62/1.00    inference(ennf_transformation,[],[f10])).
% 1.62/1.00  
% 1.62/1.00  fof(f33,plain,(
% 1.62/1.00    ( ! [X2,X0,X1] : (k7_relat_1(X2,k3_xboole_0(X0,X1)) = k7_relat_1(k7_relat_1(X2,X0),X1) | ~v1_relat_1(X2)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f16])).
% 1.62/1.00  
% 1.62/1.00  fof(f8,axiom,(
% 1.62/1.00    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1)),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f31,plain,(
% 1.62/1.00    ( ! [X0,X1] : (k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f8])).
% 1.62/1.00  
% 1.62/1.00  fof(f2,axiom,(
% 1.62/1.00    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f25,plain,(
% 1.62/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f2])).
% 1.62/1.00  
% 1.62/1.00  fof(f3,axiom,(
% 1.62/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f26,plain,(
% 1.62/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f3])).
% 1.62/1.00  
% 1.62/1.00  fof(f4,axiom,(
% 1.62/1.00    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f27,plain,(
% 1.62/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f4])).
% 1.62/1.00  
% 1.62/1.00  fof(f5,axiom,(
% 1.62/1.00    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f28,plain,(
% 1.62/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f5])).
% 1.62/1.00  
% 1.62/1.00  fof(f6,axiom,(
% 1.62/1.00    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f29,plain,(
% 1.62/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f6])).
% 1.62/1.00  
% 1.62/1.00  fof(f7,axiom,(
% 1.62/1.00    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f30,plain,(
% 1.62/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f7])).
% 1.62/1.00  
% 1.62/1.00  fof(f41,plain,(
% 1.62/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 1.62/1.00    inference(definition_unfolding,[],[f29,f30])).
% 1.62/1.00  
% 1.62/1.00  fof(f42,plain,(
% 1.62/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 1.62/1.00    inference(definition_unfolding,[],[f28,f41])).
% 1.62/1.00  
% 1.62/1.00  fof(f43,plain,(
% 1.62/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 1.62/1.00    inference(definition_unfolding,[],[f27,f42])).
% 1.62/1.00  
% 1.62/1.00  fof(f44,plain,(
% 1.62/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 1.62/1.00    inference(definition_unfolding,[],[f26,f43])).
% 1.62/1.00  
% 1.62/1.00  fof(f45,plain,(
% 1.62/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 1.62/1.00    inference(definition_unfolding,[],[f25,f44])).
% 1.62/1.00  
% 1.62/1.00  fof(f46,plain,(
% 1.62/1.00    ( ! [X0,X1] : (k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k3_xboole_0(X0,X1)) )),
% 1.62/1.00    inference(definition_unfolding,[],[f31,f45])).
% 1.62/1.00  
% 1.62/1.00  fof(f48,plain,(
% 1.62/1.00    ( ! [X2,X0,X1] : (k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) | ~v1_relat_1(X2)) )),
% 1.62/1.00    inference(definition_unfolding,[],[f33,f46])).
% 1.62/1.00  
% 1.62/1.00  fof(f1,axiom,(
% 1.62/1.00    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f24,plain,(
% 1.62/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f1])).
% 1.62/1.00  
% 1.62/1.00  fof(f47,plain,(
% 1.62/1.00    ( ! [X0,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X0)) )),
% 1.62/1.00    inference(definition_unfolding,[],[f24,f45,f45])).
% 1.62/1.00  
% 1.62/1.00  fof(f12,axiom,(
% 1.62/1.00    ! [X0,X1] : (v1_relat_1(X1) => k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)))),
% 1.62/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.62/1.00  
% 1.62/1.00  fof(f17,plain,(
% 1.62/1.00    ! [X0,X1] : (k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1))),
% 1.62/1.00    inference(ennf_transformation,[],[f12])).
% 1.62/1.00  
% 1.62/1.00  fof(f36,plain,(
% 1.62/1.00    ( ! [X0,X1] : (k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1)) )),
% 1.62/1.00    inference(cnf_transformation,[],[f17])).
% 1.62/1.00  
% 1.62/1.00  fof(f49,plain,(
% 1.62/1.00    ( ! [X0,X1] : (k1_setfam_1(k6_enumset1(k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),X0)) = k1_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1)) )),
% 1.62/1.00    inference(definition_unfolding,[],[f36,f46])).
% 1.62/1.00  
% 1.62/1.00  fof(f40,plain,(
% 1.62/1.00    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)),
% 1.62/1.00    inference(cnf_transformation,[],[f23])).
% 1.62/1.00  
% 1.62/1.00  cnf(c_4,plain,
% 1.62/1.00      ( k1_relat_1(k6_relat_1(X0)) = X0 ),
% 1.62/1.00      inference(cnf_transformation,[],[f34]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_6,plain,
% 1.62/1.00      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 1.62/1.00      | ~ v1_relat_1(X0)
% 1.62/1.00      | k7_relat_1(X0,X1) = X0 ),
% 1.62/1.00      inference(cnf_transformation,[],[f37]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_8,negated_conjecture,
% 1.62/1.00      ( r1_tarski(sK0,sK1) ),
% 1.62/1.00      inference(cnf_transformation,[],[f39]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_81,plain,
% 1.62/1.00      ( ~ v1_relat_1(X0)
% 1.62/1.00      | k7_relat_1(X0,X1) = X0
% 1.62/1.00      | k1_relat_1(X0) != sK0
% 1.62/1.00      | sK1 != X1 ),
% 1.62/1.00      inference(resolution_lifted,[status(thm)],[c_6,c_8]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_82,plain,
% 1.62/1.00      ( ~ v1_relat_1(X0)
% 1.62/1.00      | k7_relat_1(X0,sK1) = X0
% 1.62/1.00      | k1_relat_1(X0) != sK0 ),
% 1.62/1.00      inference(unflattening,[status(thm)],[c_81]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_337,plain,
% 1.62/1.00      ( k7_relat_1(X0,sK1) = X0
% 1.62/1.00      | k1_relat_1(X0) != sK0
% 1.62/1.00      | v1_relat_1(X0) != iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_82]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_499,plain,
% 1.62/1.00      ( k7_relat_1(k6_relat_1(X0),sK1) = k6_relat_1(X0)
% 1.62/1.00      | sK0 != X0
% 1.62/1.00      | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_4,c_337]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1,plain,
% 1.62/1.00      ( v1_relat_1(k6_relat_1(X0)) ),
% 1.62/1.00      inference(cnf_transformation,[],[f32]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_500,plain,
% 1.62/1.00      ( ~ v1_relat_1(k6_relat_1(X0))
% 1.62/1.00      | k7_relat_1(k6_relat_1(X0),sK1) = k6_relat_1(X0)
% 1.62/1.00      | sK0 != X0 ),
% 1.62/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_499]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_504,plain,
% 1.62/1.00      ( sK0 != X0 | k7_relat_1(k6_relat_1(X0),sK1) = k6_relat_1(X0) ),
% 1.62/1.00      inference(global_propositional_subsumption,
% 1.62/1.00                [status(thm)],
% 1.62/1.00                [c_499,c_1,c_500]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_505,plain,
% 1.62/1.00      ( k7_relat_1(k6_relat_1(X0),sK1) = k6_relat_1(X0) | sK0 != X0 ),
% 1.62/1.00      inference(renaming,[status(thm)],[c_504]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_509,plain,
% 1.62/1.00      ( k7_relat_1(k6_relat_1(sK0),sK1) = k6_relat_1(sK0) ),
% 1.62/1.00      inference(equality_resolution,[status(thm)],[c_505]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_9,negated_conjecture,
% 1.62/1.00      ( v1_relat_1(sK2) ),
% 1.62/1.00      inference(cnf_transformation,[],[f38]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_338,plain,
% 1.62/1.00      ( v1_relat_1(sK2) = iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_2,plain,
% 1.62/1.00      ( ~ v1_relat_1(X0)
% 1.62/1.00      | k7_relat_1(X0,k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) = k7_relat_1(k7_relat_1(X0,X1),X2) ),
% 1.62/1.00      inference(cnf_transformation,[],[f48]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_340,plain,
% 1.62/1.00      ( k7_relat_1(X0,k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) = k7_relat_1(k7_relat_1(X0,X1),X2)
% 1.62/1.00      | v1_relat_1(X0) != iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_0,plain,
% 1.62/1.00      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X0) ),
% 1.62/1.00      inference(cnf_transformation,[],[f47]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_341,plain,
% 1.62/1.00      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_5,plain,
% 1.62/1.00      ( ~ v1_relat_1(X0)
% 1.62/1.00      | k1_setfam_1(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1)) ),
% 1.62/1.00      inference(cnf_transformation,[],[f49]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_339,plain,
% 1.62/1.00      ( k1_setfam_1(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1))
% 1.62/1.00      | v1_relat_1(X0) != iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_578,plain,
% 1.62/1.00      ( k1_setfam_1(k6_enumset1(k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_341,c_339]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_583,plain,
% 1.62/1.00      ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
% 1.62/1.00      inference(light_normalisation,[status(thm)],[c_578,c_4]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_652,plain,
% 1.62/1.00      ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X1),X0)) ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_0,c_583]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_743,plain,
% 1.62/1.00      ( k7_relat_1(X0,k1_relat_1(k7_relat_1(k6_relat_1(X1),X2))) = k7_relat_1(k7_relat_1(X0,X2),X1)
% 1.62/1.00      | v1_relat_1(X0) != iProver_top ),
% 1.62/1.00      inference(demodulation,[status(thm)],[c_340,c_652]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_750,plain,
% 1.62/1.00      ( k7_relat_1(sK2,k1_relat_1(k7_relat_1(k6_relat_1(X0),X1))) = k7_relat_1(k7_relat_1(sK2,X1),X0) ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_338,c_743]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_758,plain,
% 1.62/1.00      ( k7_relat_1(sK2,k1_relat_1(k6_relat_1(sK0))) = k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_509,c_750]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_759,plain,
% 1.62/1.00      ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) = k7_relat_1(sK2,sK0) ),
% 1.62/1.00      inference(demodulation,[status(thm)],[c_758,c_4]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_235,plain,( X0 = X0 ),theory(equality) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_435,plain,
% 1.62/1.00      ( k7_relat_1(sK2,sK0) = k7_relat_1(sK2,sK0) ),
% 1.62/1.00      inference(instantiation,[status(thm)],[c_235]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_236,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_400,plain,
% 1.62/1.00      ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != X0
% 1.62/1.00      | k7_relat_1(sK2,sK0) != X0
% 1.62/1.00      | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
% 1.62/1.00      inference(instantiation,[status(thm)],[c_236]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_434,plain,
% 1.62/1.00      ( k7_relat_1(k7_relat_1(sK2,sK1),sK0) != k7_relat_1(sK2,sK0)
% 1.62/1.00      | k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK1),sK0)
% 1.62/1.00      | k7_relat_1(sK2,sK0) != k7_relat_1(sK2,sK0) ),
% 1.62/1.00      inference(instantiation,[status(thm)],[c_400]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_7,negated_conjecture,
% 1.62/1.00      ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
% 1.62/1.00      inference(cnf_transformation,[],[f40]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(contradiction,plain,
% 1.62/1.00      ( $false ),
% 1.62/1.00      inference(minisat,[status(thm)],[c_759,c_435,c_434,c_7]) ).
% 1.62/1.00  
% 1.62/1.00  
% 1.62/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.62/1.00  
% 1.62/1.00  ------                               Statistics
% 1.62/1.00  
% 1.62/1.00  ------ General
% 1.62/1.00  
% 1.62/1.00  abstr_ref_over_cycles:                  0
% 1.62/1.00  abstr_ref_under_cycles:                 0
% 1.62/1.00  gc_basic_clause_elim:                   0
% 1.62/1.00  forced_gc_time:                         0
% 1.62/1.00  parsing_time:                           0.008
% 1.62/1.00  unif_index_cands_time:                  0.
% 1.62/1.00  unif_index_add_time:                    0.
% 1.62/1.00  orderings_time:                         0.
% 1.62/1.00  out_proof_time:                         0.009
% 1.62/1.00  total_time:                             0.057
% 1.62/1.00  num_of_symbols:                         42
% 1.62/1.00  num_of_terms:                           823
% 1.62/1.00  
% 1.62/1.00  ------ Preprocessing
% 1.62/1.00  
% 1.62/1.00  num_of_splits:                          0
% 1.62/1.00  num_of_split_atoms:                     0
% 1.62/1.00  num_of_reused_defs:                     0
% 1.62/1.00  num_eq_ax_congr_red:                    6
% 1.62/1.00  num_of_sem_filtered_clauses:            1
% 1.62/1.00  num_of_subtypes:                        0
% 1.62/1.00  monotx_restored_types:                  0
% 1.62/1.00  sat_num_of_epr_types:                   0
% 1.62/1.00  sat_num_of_non_cyclic_types:            0
% 1.62/1.00  sat_guarded_non_collapsed_types:        0
% 1.62/1.00  num_pure_diseq_elim:                    0
% 1.62/1.00  simp_replaced_by:                       0
% 1.62/1.00  res_preprocessed:                       54
% 1.62/1.00  prep_upred:                             0
% 1.62/1.00  prep_unflattend:                        13
% 1.62/1.00  smt_new_axioms:                         0
% 1.62/1.00  pred_elim_cands:                        1
% 1.62/1.00  pred_elim:                              1
% 1.62/1.00  pred_elim_cl:                           1
% 1.62/1.00  pred_elim_cycles:                       3
% 1.62/1.00  merged_defs:                            0
% 1.62/1.00  merged_defs_ncl:                        0
% 1.62/1.00  bin_hyper_res:                          0
% 1.62/1.00  prep_cycles:                            4
% 1.62/1.00  pred_elim_time:                         0.002
% 1.62/1.00  splitting_time:                         0.
% 1.62/1.00  sem_filter_time:                        0.
% 1.62/1.00  monotx_time:                            0.
% 1.62/1.00  subtype_inf_time:                       0.
% 1.62/1.00  
% 1.62/1.00  ------ Problem properties
% 1.62/1.00  
% 1.62/1.00  clauses:                                9
% 1.62/1.00  conjectures:                            2
% 1.62/1.00  epr:                                    1
% 1.62/1.00  horn:                                   9
% 1.62/1.00  ground:                                 2
% 1.62/1.00  unary:                                  6
% 1.62/1.00  binary:                                 2
% 1.62/1.00  lits:                                   13
% 1.62/1.00  lits_eq:                                8
% 1.62/1.00  fd_pure:                                0
% 1.62/1.00  fd_pseudo:                              0
% 1.62/1.00  fd_cond:                                0
% 1.62/1.00  fd_pseudo_cond:                         0
% 1.62/1.00  ac_symbols:                             0
% 1.62/1.00  
% 1.62/1.00  ------ Propositional Solver
% 1.62/1.00  
% 1.62/1.00  prop_solver_calls:                      26
% 1.62/1.00  prop_fast_solver_calls:                 247
% 1.62/1.00  smt_solver_calls:                       0
% 1.62/1.00  smt_fast_solver_calls:                  0
% 1.62/1.00  prop_num_of_clauses:                    276
% 1.62/1.00  prop_preprocess_simplified:             1443
% 1.62/1.00  prop_fo_subsumed:                       1
% 1.62/1.00  prop_solver_time:                       0.
% 1.62/1.00  smt_solver_time:                        0.
% 1.62/1.00  smt_fast_solver_time:                   0.
% 1.62/1.00  prop_fast_solver_time:                  0.
% 1.62/1.00  prop_unsat_core_time:                   0.
% 1.62/1.00  
% 1.62/1.00  ------ QBF
% 1.62/1.00  
% 1.62/1.00  qbf_q_res:                              0
% 1.62/1.00  qbf_num_tautologies:                    0
% 1.62/1.00  qbf_prep_cycles:                        0
% 1.62/1.00  
% 1.62/1.00  ------ BMC1
% 1.62/1.00  
% 1.62/1.00  bmc1_current_bound:                     -1
% 1.62/1.00  bmc1_last_solved_bound:                 -1
% 1.62/1.00  bmc1_unsat_core_size:                   -1
% 1.62/1.00  bmc1_unsat_core_parents_size:           -1
% 1.62/1.00  bmc1_merge_next_fun:                    0
% 1.62/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.62/1.00  
% 1.62/1.00  ------ Instantiation
% 1.62/1.00  
% 1.62/1.00  inst_num_of_clauses:                    112
% 1.62/1.00  inst_num_in_passive:                    15
% 1.62/1.00  inst_num_in_active:                     66
% 1.62/1.00  inst_num_in_unprocessed:                31
% 1.62/1.00  inst_num_of_loops:                      70
% 1.62/1.00  inst_num_of_learning_restarts:          0
% 1.62/1.00  inst_num_moves_active_passive:          2
% 1.62/1.00  inst_lit_activity:                      0
% 1.62/1.00  inst_lit_activity_moves:                0
% 1.62/1.00  inst_num_tautologies:                   0
% 1.62/1.00  inst_num_prop_implied:                  0
% 1.62/1.00  inst_num_existing_simplified:           0
% 1.62/1.00  inst_num_eq_res_simplified:             0
% 1.62/1.00  inst_num_child_elim:                    0
% 1.62/1.00  inst_num_of_dismatching_blockings:      4
% 1.62/1.00  inst_num_of_non_proper_insts:           60
% 1.62/1.00  inst_num_of_duplicates:                 0
% 1.62/1.00  inst_inst_num_from_inst_to_res:         0
% 1.62/1.00  inst_dismatching_checking_time:         0.
% 1.62/1.00  
% 1.62/1.00  ------ Resolution
% 1.62/1.00  
% 1.62/1.00  res_num_of_clauses:                     0
% 1.62/1.00  res_num_in_passive:                     0
% 1.62/1.00  res_num_in_active:                      0
% 1.62/1.00  res_num_of_loops:                       58
% 1.62/1.00  res_forward_subset_subsumed:            8
% 1.62/1.00  res_backward_subset_subsumed:           0
% 1.62/1.00  res_forward_subsumed:                   0
% 1.62/1.00  res_backward_subsumed:                  0
% 1.62/1.00  res_forward_subsumption_resolution:     0
% 1.62/1.00  res_backward_subsumption_resolution:    0
% 1.62/1.00  res_clause_to_clause_subsumption:       21
% 1.62/1.00  res_orphan_elimination:                 0
% 1.62/1.00  res_tautology_del:                      6
% 1.62/1.00  res_num_eq_res_simplified:              0
% 1.62/1.00  res_num_sel_changes:                    0
% 1.62/1.00  res_moves_from_active_to_pass:          0
% 1.62/1.00  
% 1.62/1.00  ------ Superposition
% 1.62/1.00  
% 1.62/1.00  sup_time_total:                         0.
% 1.62/1.00  sup_time_generating:                    0.
% 1.62/1.00  sup_time_sim_full:                      0.
% 1.62/1.00  sup_time_sim_immed:                     0.
% 1.62/1.00  
% 1.62/1.00  sup_num_of_clauses:                     18
% 1.62/1.00  sup_num_in_active:                      13
% 1.62/1.00  sup_num_in_passive:                     5
% 1.62/1.00  sup_num_of_loops:                       13
% 1.62/1.00  sup_fw_superposition:                   10
% 1.62/1.00  sup_bw_superposition:                   2
% 1.62/1.00  sup_immediate_simplified:               2
% 1.62/1.00  sup_given_eliminated:                   1
% 1.62/1.00  comparisons_done:                       0
% 1.62/1.00  comparisons_avoided:                    0
% 1.62/1.00  
% 1.62/1.00  ------ Simplifications
% 1.62/1.00  
% 1.62/1.00  
% 1.62/1.00  sim_fw_subset_subsumed:                 0
% 1.62/1.00  sim_bw_subset_subsumed:                 0
% 1.62/1.00  sim_fw_subsumed:                        0
% 1.62/1.00  sim_bw_subsumed:                        0
% 1.62/1.00  sim_fw_subsumption_res:                 0
% 1.62/1.00  sim_bw_subsumption_res:                 0
% 1.62/1.00  sim_tautology_del:                      0
% 1.62/1.00  sim_eq_tautology_del:                   0
% 1.62/1.00  sim_eq_res_simp:                        0
% 1.62/1.00  sim_fw_demodulated:                     2
% 1.62/1.00  sim_bw_demodulated:                     1
% 1.62/1.00  sim_light_normalised:                   2
% 1.62/1.00  sim_joinable_taut:                      0
% 1.62/1.00  sim_joinable_simp:                      0
% 1.62/1.00  sim_ac_normalised:                      0
% 1.62/1.00  sim_smt_subsumption:                    0
% 1.62/1.00  
%------------------------------------------------------------------------------
