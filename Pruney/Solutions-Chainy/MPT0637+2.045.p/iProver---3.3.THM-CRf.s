%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:50:02 EST 2020

% Result     : Theorem 7.70s
% Output     : CNFRefutation 7.70s
% Verified   : 
% Statistics : Number of formulae       :  131 ( 574 expanded)
%              Number of clauses        :   65 ( 284 expanded)
%              Number of leaves         :   21 ( 112 expanded)
%              Depth                    :   17
%              Number of atoms          :  249 ( 962 expanded)
%              Number of equality atoms :  150 ( 520 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    5 (   2 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,axiom,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f11])).

fof(f25,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f25])).

fof(f81,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f20,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1)
        & r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1)
        & r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f75,plain,(
    ! [X0,X1] :
      ( r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f19,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f74,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f19])).

fof(f16,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r1_tarski(X0,X1)
           => ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
              & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f36])).

fof(f70,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f15,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f68,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( v1_relat_1(X1)
        & v1_relat_1(X0) )
     => v1_relat_1(k5_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f31,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f30])).

fof(f63,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f73,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f19])).

fof(f21,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k5_relat_1(k6_relat_1(X0),X1) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f42,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f41])).

fof(f77,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f17,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f71,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f22,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f78,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0)
          | ~ v1_relat_1(X2) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f24,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f80,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f9,axiom,(
    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f3,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f8])).

fof(f83,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f60,f61])).

fof(f84,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f59,f83])).

fof(f85,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f58,f84])).

fof(f86,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f57,f85])).

fof(f87,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f56,f86])).

fof(f88,plain,(
    ! [X0,X1] : k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f62,f87])).

fof(f89,plain,(
    ! [X0,X1] :
      ( k1_setfam_1(k6_enumset1(k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),X0)) = k1_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f80,f88])).

fof(f26,conjecture,(
    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,negated_conjecture,(
    ~ ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    inference(negated_conjecture,[],[f26])).

fof(f47,plain,(
    ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1)) ),
    inference(ennf_transformation,[],[f27])).

fof(f50,plain,
    ( ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1))
   => k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1)) ),
    introduced(choice_axiom,[])).

fof(f51,plain,(
    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f47,f50])).

fof(f82,plain,(
    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1)) ),
    inference(cnf_transformation,[],[f51])).

fof(f90,plain,(
    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k1_setfam_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) ),
    inference(definition_unfolding,[],[f82,f88])).

cnf(c_5,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_752,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_22,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_737,plain,
    ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_1039,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k7_relat_1(k6_relat_1(X1),X0) ),
    inference(superposition,[status(thm)],[c_752,c_737])).

cnf(c_17,plain,
    ( r1_tarski(k5_relat_1(X0,k6_relat_1(X1)),X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_742,plain,
    ( r1_tarski(k5_relat_1(X0,k6_relat_1(X1)),X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1596,plain,
    ( r1_tarski(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(X1)) = iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1039,c_742])).

cnf(c_2983,plain,
    ( r1_tarski(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(X1)) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1596,c_752])).

cnf(c_14,plain,
    ( k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_747,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_5646,plain,
    ( r1_tarski(X0,k6_relat_1(X1)) != iProver_top
    | r1_tarski(k2_relat_1(X0),X1) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_14,c_747])).

cnf(c_7627,plain,
    ( r1_tarski(X0,k6_relat_1(X1)) != iProver_top
    | r1_tarski(k2_relat_1(X0),X1) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_5646,c_752])).

cnf(c_7634,plain,
    ( r1_tarski(k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)),X1) = iProver_top
    | v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2983,c_7627])).

cnf(c_9,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_748,plain,
    ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1285,plain,
    ( k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = k9_relat_1(k6_relat_1(X0),X1) ),
    inference(superposition,[status(thm)],[c_752,c_748])).

cnf(c_7706,plain,
    ( r1_tarski(k9_relat_1(k6_relat_1(X0),X1),X1) = iProver_top
    | v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_7634,c_1285])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_753,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(k5_relat_1(X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_2756,plain,
    ( v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1039,c_753])).

cnf(c_71,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_7989,plain,
    ( v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2756,c_71])).

cnf(c_7995,plain,
    ( v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7989,c_752])).

cnf(c_29736,plain,
    ( r1_tarski(k9_relat_1(k6_relat_1(X0),X1),X1) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7706,c_7995])).

cnf(c_15,plain,
    ( k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f73])).

cnf(c_18,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k5_relat_1(k6_relat_1(X1),X0) = X0 ),
    inference(cnf_transformation,[],[f77])).

cnf(c_741,plain,
    ( k5_relat_1(k6_relat_1(X0),X1) = X1
    | r1_tarski(k1_relat_1(X1),X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_4065,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k6_relat_1(X1)
    | r1_tarski(X1,X0) != iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_15,c_741])).

cnf(c_4069,plain,
    ( k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0)
    | r1_tarski(X0,X1) != iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4065,c_1039])).

cnf(c_8677,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4069,c_71])).

cnf(c_8678,plain,
    ( k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0)
    | r1_tarski(X0,X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_8677])).

cnf(c_29760,plain,
    ( k7_relat_1(k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)),X1) = k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)) ),
    inference(superposition,[status(thm)],[c_29736,c_8678])).

cnf(c_12,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_745,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_2360,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(X0,k6_relat_1(X1))),X1) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_14,c_745])).

cnf(c_4726,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(X0,k6_relat_1(X1))),X1) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2360,c_752])).

cnf(c_4730,plain,
    ( r1_tarski(k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)),X0) = iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1039,c_4726])).

cnf(c_4751,plain,
    ( r1_tarski(k9_relat_1(k6_relat_1(X0),X1),X0) = iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4730,c_1285])).

cnf(c_4929,plain,
    ( r1_tarski(k9_relat_1(k6_relat_1(X0),X1),X0) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4751,c_752])).

cnf(c_8695,plain,
    ( k7_relat_1(k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)),X0) = k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)) ),
    inference(superposition,[status(thm)],[c_4929,c_8678])).

cnf(c_19,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_740,plain,
    ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_8009,plain,
    ( k5_relat_1(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)))) = k7_relat_1(k6_relat_1(X0),X1) ),
    inference(superposition,[status(thm)],[c_7995,c_740])).

cnf(c_8015,plain,
    ( k5_relat_1(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(k9_relat_1(k6_relat_1(X0),X1))) = k7_relat_1(k6_relat_1(X0),X1) ),
    inference(light_normalisation,[status(thm)],[c_8009,c_1285])).

cnf(c_6,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k7_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(k7_relat_1(X0,X2),X1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_751,plain,
    ( k7_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(k7_relat_1(X0,X2),X1)
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_4038,plain,
    ( k7_relat_1(k5_relat_1(k6_relat_1(X0),X1),X2) = k5_relat_1(k7_relat_1(k6_relat_1(X0),X2),X1)
    | v1_relat_1(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_752,c_751])).

cnf(c_5334,plain,
    ( k7_relat_1(k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)),X2) = k5_relat_1(k7_relat_1(k6_relat_1(X0),X2),k6_relat_1(X1)) ),
    inference(superposition,[status(thm)],[c_752,c_4038])).

cnf(c_5336,plain,
    ( k5_relat_1(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(X2)) = k7_relat_1(k7_relat_1(k6_relat_1(X2),X0),X1) ),
    inference(light_normalisation,[status(thm)],[c_5334,c_1039])).

cnf(c_8274,plain,
    ( k7_relat_1(k7_relat_1(k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)),X0),X1) = k7_relat_1(k6_relat_1(X0),X1) ),
    inference(superposition,[status(thm)],[c_8015,c_5336])).

cnf(c_9089,plain,
    ( k7_relat_1(k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)),X1) = k7_relat_1(k6_relat_1(X0),X1) ),
    inference(demodulation,[status(thm)],[c_8695,c_8274])).

cnf(c_29788,plain,
    ( k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)) = k7_relat_1(k6_relat_1(X0),X1) ),
    inference(light_normalisation,[status(thm)],[c_29760,c_9089])).

cnf(c_30563,plain,
    ( k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = k9_relat_1(k6_relat_1(X0),X1) ),
    inference(superposition,[status(thm)],[c_29788,c_15])).

cnf(c_21,plain,
    ( ~ v1_relat_1(X0)
    | k1_setfam_1(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_738,plain,
    ( k1_setfam_1(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_1121,plain,
    ( k1_setfam_1(k6_enumset1(k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
    inference(superposition,[status(thm)],[c_752,c_738])).

cnf(c_1122,plain,
    ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
    inference(light_normalisation,[status(thm)],[c_1121,c_15])).

cnf(c_23,negated_conjecture,
    ( k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k1_setfam_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_1594,plain,
    ( k6_relat_1(k1_setfam_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) != k7_relat_1(k6_relat_1(sK0),sK1) ),
    inference(demodulation,[status(thm)],[c_1039,c_23])).

cnf(c_2344,plain,
    ( k6_relat_1(k1_relat_1(k7_relat_1(k6_relat_1(sK0),sK1))) != k7_relat_1(k6_relat_1(sK0),sK1) ),
    inference(demodulation,[status(thm)],[c_1122,c_1594])).

cnf(c_31721,plain,
    ( k6_relat_1(k9_relat_1(k6_relat_1(sK0),sK1)) != k7_relat_1(k6_relat_1(sK0),sK1) ),
    inference(demodulation,[status(thm)],[c_30563,c_2344])).

cnf(c_31727,plain,
    ( k7_relat_1(k6_relat_1(sK0),sK1) != k7_relat_1(k6_relat_1(sK0),sK1) ),
    inference(demodulation,[status(thm)],[c_31721,c_29788])).

cnf(c_31728,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_31727])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n001.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 15:04:45 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 7.70/1.48  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 7.70/1.48  
% 7.70/1.48  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.70/1.48  
% 7.70/1.48  ------  iProver source info
% 7.70/1.48  
% 7.70/1.48  git: date: 2020-06-30 10:37:57 +0100
% 7.70/1.48  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.70/1.48  git: non_committed_changes: false
% 7.70/1.48  git: last_make_outside_of_git: false
% 7.70/1.48  
% 7.70/1.48  ------ 
% 7.70/1.48  
% 7.70/1.48  ------ Input Options
% 7.70/1.48  
% 7.70/1.48  --out_options                           all
% 7.70/1.48  --tptp_safe_out                         true
% 7.70/1.48  --problem_path                          ""
% 7.70/1.48  --include_path                          ""
% 7.70/1.48  --clausifier                            res/vclausify_rel
% 7.70/1.48  --clausifier_options                    --mode clausify
% 7.70/1.48  --stdin                                 false
% 7.70/1.48  --stats_out                             all
% 7.70/1.48  
% 7.70/1.48  ------ General Options
% 7.70/1.48  
% 7.70/1.48  --fof                                   false
% 7.70/1.48  --time_out_real                         305.
% 7.70/1.48  --time_out_virtual                      -1.
% 7.70/1.48  --symbol_type_check                     false
% 7.70/1.48  --clausify_out                          false
% 7.70/1.48  --sig_cnt_out                           false
% 7.70/1.48  --trig_cnt_out                          false
% 7.70/1.48  --trig_cnt_out_tolerance                1.
% 7.70/1.48  --trig_cnt_out_sk_spl                   false
% 7.70/1.48  --abstr_cl_out                          false
% 7.70/1.48  
% 7.70/1.48  ------ Global Options
% 7.70/1.48  
% 7.70/1.48  --schedule                              default
% 7.70/1.48  --add_important_lit                     false
% 7.70/1.48  --prop_solver_per_cl                    1000
% 7.70/1.48  --min_unsat_core                        false
% 7.70/1.48  --soft_assumptions                      false
% 7.70/1.48  --soft_lemma_size                       3
% 7.70/1.48  --prop_impl_unit_size                   0
% 7.70/1.48  --prop_impl_unit                        []
% 7.70/1.48  --share_sel_clauses                     true
% 7.70/1.48  --reset_solvers                         false
% 7.70/1.48  --bc_imp_inh                            [conj_cone]
% 7.70/1.48  --conj_cone_tolerance                   3.
% 7.70/1.48  --extra_neg_conj                        none
% 7.70/1.48  --large_theory_mode                     true
% 7.70/1.48  --prolific_symb_bound                   200
% 7.70/1.48  --lt_threshold                          2000
% 7.70/1.48  --clause_weak_htbl                      true
% 7.70/1.48  --gc_record_bc_elim                     false
% 7.70/1.48  
% 7.70/1.48  ------ Preprocessing Options
% 7.70/1.48  
% 7.70/1.48  --preprocessing_flag                    true
% 7.70/1.48  --time_out_prep_mult                    0.1
% 7.70/1.48  --splitting_mode                        input
% 7.70/1.48  --splitting_grd                         true
% 7.70/1.48  --splitting_cvd                         false
% 7.70/1.48  --splitting_cvd_svl                     false
% 7.70/1.48  --splitting_nvd                         32
% 7.70/1.48  --sub_typing                            true
% 7.70/1.48  --prep_gs_sim                           true
% 7.70/1.48  --prep_unflatten                        true
% 7.70/1.48  --prep_res_sim                          true
% 7.70/1.48  --prep_upred                            true
% 7.70/1.48  --prep_sem_filter                       exhaustive
% 7.70/1.48  --prep_sem_filter_out                   false
% 7.70/1.48  --pred_elim                             true
% 7.70/1.48  --res_sim_input                         true
% 7.70/1.48  --eq_ax_congr_red                       true
% 7.70/1.48  --pure_diseq_elim                       true
% 7.70/1.48  --brand_transform                       false
% 7.70/1.48  --non_eq_to_eq                          false
% 7.70/1.48  --prep_def_merge                        true
% 7.70/1.48  --prep_def_merge_prop_impl              false
% 7.70/1.48  --prep_def_merge_mbd                    true
% 7.70/1.48  --prep_def_merge_tr_red                 false
% 7.70/1.48  --prep_def_merge_tr_cl                  false
% 7.70/1.48  --smt_preprocessing                     true
% 7.70/1.48  --smt_ac_axioms                         fast
% 7.70/1.48  --preprocessed_out                      false
% 7.70/1.48  --preprocessed_stats                    false
% 7.70/1.48  
% 7.70/1.48  ------ Abstraction refinement Options
% 7.70/1.48  
% 7.70/1.48  --abstr_ref                             []
% 7.70/1.48  --abstr_ref_prep                        false
% 7.70/1.48  --abstr_ref_until_sat                   false
% 7.70/1.48  --abstr_ref_sig_restrict                funpre
% 7.70/1.48  --abstr_ref_af_restrict_to_split_sk     false
% 7.70/1.48  --abstr_ref_under                       []
% 7.70/1.48  
% 7.70/1.48  ------ SAT Options
% 7.70/1.48  
% 7.70/1.48  --sat_mode                              false
% 7.70/1.48  --sat_fm_restart_options                ""
% 7.70/1.48  --sat_gr_def                            false
% 7.70/1.48  --sat_epr_types                         true
% 7.70/1.48  --sat_non_cyclic_types                  false
% 7.70/1.48  --sat_finite_models                     false
% 7.70/1.48  --sat_fm_lemmas                         false
% 7.70/1.48  --sat_fm_prep                           false
% 7.70/1.48  --sat_fm_uc_incr                        true
% 7.70/1.48  --sat_out_model                         small
% 7.70/1.48  --sat_out_clauses                       false
% 7.70/1.48  
% 7.70/1.48  ------ QBF Options
% 7.70/1.48  
% 7.70/1.48  --qbf_mode                              false
% 7.70/1.48  --qbf_elim_univ                         false
% 7.70/1.48  --qbf_dom_inst                          none
% 7.70/1.48  --qbf_dom_pre_inst                      false
% 7.70/1.48  --qbf_sk_in                             false
% 7.70/1.48  --qbf_pred_elim                         true
% 7.70/1.48  --qbf_split                             512
% 7.70/1.48  
% 7.70/1.48  ------ BMC1 Options
% 7.70/1.48  
% 7.70/1.48  --bmc1_incremental                      false
% 7.70/1.48  --bmc1_axioms                           reachable_all
% 7.70/1.48  --bmc1_min_bound                        0
% 7.70/1.48  --bmc1_max_bound                        -1
% 7.70/1.48  --bmc1_max_bound_default                -1
% 7.70/1.48  --bmc1_symbol_reachability              true
% 7.70/1.48  --bmc1_property_lemmas                  false
% 7.70/1.48  --bmc1_k_induction                      false
% 7.70/1.48  --bmc1_non_equiv_states                 false
% 7.70/1.48  --bmc1_deadlock                         false
% 7.70/1.48  --bmc1_ucm                              false
% 7.70/1.48  --bmc1_add_unsat_core                   none
% 7.70/1.48  --bmc1_unsat_core_children              false
% 7.70/1.48  --bmc1_unsat_core_extrapolate_axioms    false
% 7.70/1.48  --bmc1_out_stat                         full
% 7.70/1.48  --bmc1_ground_init                      false
% 7.70/1.48  --bmc1_pre_inst_next_state              false
% 7.70/1.48  --bmc1_pre_inst_state                   false
% 7.70/1.48  --bmc1_pre_inst_reach_state             false
% 7.70/1.48  --bmc1_out_unsat_core                   false
% 7.70/1.48  --bmc1_aig_witness_out                  false
% 7.70/1.48  --bmc1_verbose                          false
% 7.70/1.48  --bmc1_dump_clauses_tptp                false
% 7.70/1.48  --bmc1_dump_unsat_core_tptp             false
% 7.70/1.48  --bmc1_dump_file                        -
% 7.70/1.48  --bmc1_ucm_expand_uc_limit              128
% 7.70/1.48  --bmc1_ucm_n_expand_iterations          6
% 7.70/1.48  --bmc1_ucm_extend_mode                  1
% 7.70/1.48  --bmc1_ucm_init_mode                    2
% 7.70/1.48  --bmc1_ucm_cone_mode                    none
% 7.70/1.48  --bmc1_ucm_reduced_relation_type        0
% 7.70/1.48  --bmc1_ucm_relax_model                  4
% 7.70/1.48  --bmc1_ucm_full_tr_after_sat            true
% 7.70/1.48  --bmc1_ucm_expand_neg_assumptions       false
% 7.70/1.48  --bmc1_ucm_layered_model                none
% 7.70/1.49  --bmc1_ucm_max_lemma_size               10
% 7.70/1.49  
% 7.70/1.49  ------ AIG Options
% 7.70/1.49  
% 7.70/1.49  --aig_mode                              false
% 7.70/1.49  
% 7.70/1.49  ------ Instantiation Options
% 7.70/1.49  
% 7.70/1.49  --instantiation_flag                    true
% 7.70/1.49  --inst_sos_flag                         false
% 7.70/1.49  --inst_sos_phase                        true
% 7.70/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.70/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.70/1.49  --inst_lit_sel_side                     num_symb
% 7.70/1.49  --inst_solver_per_active                1400
% 7.70/1.49  --inst_solver_calls_frac                1.
% 7.70/1.49  --inst_passive_queue_type               priority_queues
% 7.70/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.70/1.49  --inst_passive_queues_freq              [25;2]
% 7.70/1.49  --inst_dismatching                      true
% 7.70/1.49  --inst_eager_unprocessed_to_passive     true
% 7.70/1.49  --inst_prop_sim_given                   true
% 7.70/1.49  --inst_prop_sim_new                     false
% 7.70/1.49  --inst_subs_new                         false
% 7.70/1.49  --inst_eq_res_simp                      false
% 7.70/1.49  --inst_subs_given                       false
% 7.70/1.49  --inst_orphan_elimination               true
% 7.70/1.49  --inst_learning_loop_flag               true
% 7.70/1.49  --inst_learning_start                   3000
% 7.70/1.49  --inst_learning_factor                  2
% 7.70/1.49  --inst_start_prop_sim_after_learn       3
% 7.70/1.49  --inst_sel_renew                        solver
% 7.70/1.49  --inst_lit_activity_flag                true
% 7.70/1.49  --inst_restr_to_given                   false
% 7.70/1.49  --inst_activity_threshold               500
% 7.70/1.49  --inst_out_proof                        true
% 7.70/1.49  
% 7.70/1.49  ------ Resolution Options
% 7.70/1.49  
% 7.70/1.49  --resolution_flag                       true
% 7.70/1.49  --res_lit_sel                           adaptive
% 7.70/1.49  --res_lit_sel_side                      none
% 7.70/1.49  --res_ordering                          kbo
% 7.70/1.49  --res_to_prop_solver                    active
% 7.70/1.49  --res_prop_simpl_new                    false
% 7.70/1.49  --res_prop_simpl_given                  true
% 7.70/1.49  --res_passive_queue_type                priority_queues
% 7.70/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.70/1.49  --res_passive_queues_freq               [15;5]
% 7.70/1.49  --res_forward_subs                      full
% 7.70/1.49  --res_backward_subs                     full
% 7.70/1.49  --res_forward_subs_resolution           true
% 7.70/1.49  --res_backward_subs_resolution          true
% 7.70/1.49  --res_orphan_elimination                true
% 7.70/1.49  --res_time_limit                        2.
% 7.70/1.49  --res_out_proof                         true
% 7.70/1.49  
% 7.70/1.49  ------ Superposition Options
% 7.70/1.49  
% 7.70/1.49  --superposition_flag                    true
% 7.70/1.49  --sup_passive_queue_type                priority_queues
% 7.70/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.70/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.70/1.49  --demod_completeness_check              fast
% 7.70/1.49  --demod_use_ground                      true
% 7.70/1.49  --sup_to_prop_solver                    passive
% 7.70/1.49  --sup_prop_simpl_new                    true
% 7.70/1.49  --sup_prop_simpl_given                  true
% 7.70/1.49  --sup_fun_splitting                     false
% 7.70/1.49  --sup_smt_interval                      50000
% 7.70/1.49  
% 7.70/1.49  ------ Superposition Simplification Setup
% 7.70/1.49  
% 7.70/1.49  --sup_indices_passive                   []
% 7.70/1.49  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.70/1.49  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.70/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.70/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.70/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.70/1.49  --sup_full_bw                           [BwDemod]
% 7.70/1.49  --sup_immed_triv                        [TrivRules]
% 7.70/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.70/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.70/1.49  --sup_immed_bw_main                     []
% 7.70/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.70/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.70/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.70/1.49  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.70/1.49  
% 7.70/1.49  ------ Combination Options
% 7.70/1.49  
% 7.70/1.49  --comb_res_mult                         3
% 7.70/1.49  --comb_sup_mult                         2
% 7.70/1.49  --comb_inst_mult                        10
% 7.70/1.49  
% 7.70/1.49  ------ Debug Options
% 7.70/1.49  
% 7.70/1.49  --dbg_backtrace                         false
% 7.70/1.49  --dbg_dump_prop_clauses                 false
% 7.70/1.49  --dbg_dump_prop_clauses_file            -
% 7.70/1.49  --dbg_out_stat                          false
% 7.70/1.49  ------ Parsing...
% 7.70/1.49  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.70/1.49  
% 7.70/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 7.70/1.49  
% 7.70/1.49  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.70/1.49  
% 7.70/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 7.70/1.49  ------ Proving...
% 7.70/1.49  ------ Problem Properties 
% 7.70/1.49  
% 7.70/1.49  
% 7.70/1.49  clauses                                 23
% 7.70/1.49  conjectures                             1
% 7.70/1.49  EPR                                     3
% 7.70/1.49  Horn                                    23
% 7.70/1.49  unary                                   5
% 7.70/1.49  binary                                  8
% 7.70/1.49  lits                                    54
% 7.70/1.49  lits eq                                 13
% 7.70/1.49  fd_pure                                 0
% 7.70/1.49  fd_pseudo                               0
% 7.70/1.49  fd_cond                                 0
% 7.70/1.49  fd_pseudo_cond                          1
% 7.70/1.49  AC symbols                              0
% 7.70/1.49  
% 7.70/1.49  ------ Schedule dynamic 5 is on 
% 7.70/1.49  
% 7.70/1.49  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 7.70/1.49  
% 7.70/1.49  
% 7.70/1.49  ------ 
% 7.70/1.49  Current options:
% 7.70/1.49  ------ 
% 7.70/1.49  
% 7.70/1.49  ------ Input Options
% 7.70/1.49  
% 7.70/1.49  --out_options                           all
% 7.70/1.49  --tptp_safe_out                         true
% 7.70/1.49  --problem_path                          ""
% 7.70/1.49  --include_path                          ""
% 7.70/1.49  --clausifier                            res/vclausify_rel
% 7.70/1.49  --clausifier_options                    --mode clausify
% 7.70/1.49  --stdin                                 false
% 7.70/1.49  --stats_out                             all
% 7.70/1.49  
% 7.70/1.49  ------ General Options
% 7.70/1.49  
% 7.70/1.49  --fof                                   false
% 7.70/1.49  --time_out_real                         305.
% 7.70/1.49  --time_out_virtual                      -1.
% 7.70/1.49  --symbol_type_check                     false
% 7.70/1.49  --clausify_out                          false
% 7.70/1.49  --sig_cnt_out                           false
% 7.70/1.49  --trig_cnt_out                          false
% 7.70/1.49  --trig_cnt_out_tolerance                1.
% 7.70/1.49  --trig_cnt_out_sk_spl                   false
% 7.70/1.49  --abstr_cl_out                          false
% 7.70/1.49  
% 7.70/1.49  ------ Global Options
% 7.70/1.49  
% 7.70/1.49  --schedule                              default
% 7.70/1.49  --add_important_lit                     false
% 7.70/1.49  --prop_solver_per_cl                    1000
% 7.70/1.49  --min_unsat_core                        false
% 7.70/1.49  --soft_assumptions                      false
% 7.70/1.49  --soft_lemma_size                       3
% 7.70/1.49  --prop_impl_unit_size                   0
% 7.70/1.49  --prop_impl_unit                        []
% 7.70/1.49  --share_sel_clauses                     true
% 7.70/1.49  --reset_solvers                         false
% 7.70/1.49  --bc_imp_inh                            [conj_cone]
% 7.70/1.49  --conj_cone_tolerance                   3.
% 7.70/1.49  --extra_neg_conj                        none
% 7.70/1.49  --large_theory_mode                     true
% 7.70/1.49  --prolific_symb_bound                   200
% 7.70/1.49  --lt_threshold                          2000
% 7.70/1.49  --clause_weak_htbl                      true
% 7.70/1.49  --gc_record_bc_elim                     false
% 7.70/1.49  
% 7.70/1.49  ------ Preprocessing Options
% 7.70/1.49  
% 7.70/1.49  --preprocessing_flag                    true
% 7.70/1.49  --time_out_prep_mult                    0.1
% 7.70/1.49  --splitting_mode                        input
% 7.70/1.49  --splitting_grd                         true
% 7.70/1.49  --splitting_cvd                         false
% 7.70/1.49  --splitting_cvd_svl                     false
% 7.70/1.49  --splitting_nvd                         32
% 7.70/1.49  --sub_typing                            true
% 7.70/1.49  --prep_gs_sim                           true
% 7.70/1.49  --prep_unflatten                        true
% 7.70/1.49  --prep_res_sim                          true
% 7.70/1.49  --prep_upred                            true
% 7.70/1.49  --prep_sem_filter                       exhaustive
% 7.70/1.49  --prep_sem_filter_out                   false
% 7.70/1.49  --pred_elim                             true
% 7.70/1.49  --res_sim_input                         true
% 7.70/1.49  --eq_ax_congr_red                       true
% 7.70/1.49  --pure_diseq_elim                       true
% 7.70/1.49  --brand_transform                       false
% 7.70/1.49  --non_eq_to_eq                          false
% 7.70/1.49  --prep_def_merge                        true
% 7.70/1.49  --prep_def_merge_prop_impl              false
% 7.70/1.49  --prep_def_merge_mbd                    true
% 7.70/1.49  --prep_def_merge_tr_red                 false
% 7.70/1.49  --prep_def_merge_tr_cl                  false
% 7.70/1.49  --smt_preprocessing                     true
% 7.70/1.49  --smt_ac_axioms                         fast
% 7.70/1.49  --preprocessed_out                      false
% 7.70/1.49  --preprocessed_stats                    false
% 7.70/1.49  
% 7.70/1.49  ------ Abstraction refinement Options
% 7.70/1.49  
% 7.70/1.49  --abstr_ref                             []
% 7.70/1.49  --abstr_ref_prep                        false
% 7.70/1.49  --abstr_ref_until_sat                   false
% 7.70/1.49  --abstr_ref_sig_restrict                funpre
% 7.70/1.49  --abstr_ref_af_restrict_to_split_sk     false
% 7.70/1.49  --abstr_ref_under                       []
% 7.70/1.49  
% 7.70/1.49  ------ SAT Options
% 7.70/1.49  
% 7.70/1.49  --sat_mode                              false
% 7.70/1.49  --sat_fm_restart_options                ""
% 7.70/1.49  --sat_gr_def                            false
% 7.70/1.49  --sat_epr_types                         true
% 7.70/1.49  --sat_non_cyclic_types                  false
% 7.70/1.49  --sat_finite_models                     false
% 7.70/1.49  --sat_fm_lemmas                         false
% 7.70/1.49  --sat_fm_prep                           false
% 7.70/1.49  --sat_fm_uc_incr                        true
% 7.70/1.49  --sat_out_model                         small
% 7.70/1.49  --sat_out_clauses                       false
% 7.70/1.49  
% 7.70/1.49  ------ QBF Options
% 7.70/1.49  
% 7.70/1.49  --qbf_mode                              false
% 7.70/1.49  --qbf_elim_univ                         false
% 7.70/1.49  --qbf_dom_inst                          none
% 7.70/1.49  --qbf_dom_pre_inst                      false
% 7.70/1.49  --qbf_sk_in                             false
% 7.70/1.49  --qbf_pred_elim                         true
% 7.70/1.49  --qbf_split                             512
% 7.70/1.49  
% 7.70/1.49  ------ BMC1 Options
% 7.70/1.49  
% 7.70/1.49  --bmc1_incremental                      false
% 7.70/1.49  --bmc1_axioms                           reachable_all
% 7.70/1.49  --bmc1_min_bound                        0
% 7.70/1.49  --bmc1_max_bound                        -1
% 7.70/1.49  --bmc1_max_bound_default                -1
% 7.70/1.49  --bmc1_symbol_reachability              true
% 7.70/1.49  --bmc1_property_lemmas                  false
% 7.70/1.49  --bmc1_k_induction                      false
% 7.70/1.49  --bmc1_non_equiv_states                 false
% 7.70/1.49  --bmc1_deadlock                         false
% 7.70/1.49  --bmc1_ucm                              false
% 7.70/1.49  --bmc1_add_unsat_core                   none
% 7.70/1.49  --bmc1_unsat_core_children              false
% 7.70/1.49  --bmc1_unsat_core_extrapolate_axioms    false
% 7.70/1.49  --bmc1_out_stat                         full
% 7.70/1.49  --bmc1_ground_init                      false
% 7.70/1.49  --bmc1_pre_inst_next_state              false
% 7.70/1.49  --bmc1_pre_inst_state                   false
% 7.70/1.49  --bmc1_pre_inst_reach_state             false
% 7.70/1.49  --bmc1_out_unsat_core                   false
% 7.70/1.49  --bmc1_aig_witness_out                  false
% 7.70/1.49  --bmc1_verbose                          false
% 7.70/1.49  --bmc1_dump_clauses_tptp                false
% 7.70/1.49  --bmc1_dump_unsat_core_tptp             false
% 7.70/1.49  --bmc1_dump_file                        -
% 7.70/1.49  --bmc1_ucm_expand_uc_limit              128
% 7.70/1.49  --bmc1_ucm_n_expand_iterations          6
% 7.70/1.49  --bmc1_ucm_extend_mode                  1
% 7.70/1.49  --bmc1_ucm_init_mode                    2
% 7.70/1.49  --bmc1_ucm_cone_mode                    none
% 7.70/1.49  --bmc1_ucm_reduced_relation_type        0
% 7.70/1.49  --bmc1_ucm_relax_model                  4
% 7.70/1.49  --bmc1_ucm_full_tr_after_sat            true
% 7.70/1.49  --bmc1_ucm_expand_neg_assumptions       false
% 7.70/1.49  --bmc1_ucm_layered_model                none
% 7.70/1.49  --bmc1_ucm_max_lemma_size               10
% 7.70/1.49  
% 7.70/1.49  ------ AIG Options
% 7.70/1.49  
% 7.70/1.49  --aig_mode                              false
% 7.70/1.49  
% 7.70/1.49  ------ Instantiation Options
% 7.70/1.49  
% 7.70/1.49  --instantiation_flag                    true
% 7.70/1.49  --inst_sos_flag                         false
% 7.70/1.49  --inst_sos_phase                        true
% 7.70/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.70/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.70/1.49  --inst_lit_sel_side                     none
% 7.70/1.49  --inst_solver_per_active                1400
% 7.70/1.49  --inst_solver_calls_frac                1.
% 7.70/1.49  --inst_passive_queue_type               priority_queues
% 7.70/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.70/1.49  --inst_passive_queues_freq              [25;2]
% 7.70/1.49  --inst_dismatching                      true
% 7.70/1.49  --inst_eager_unprocessed_to_passive     true
% 7.70/1.49  --inst_prop_sim_given                   true
% 7.70/1.49  --inst_prop_sim_new                     false
% 7.70/1.49  --inst_subs_new                         false
% 7.70/1.49  --inst_eq_res_simp                      false
% 7.70/1.49  --inst_subs_given                       false
% 7.70/1.49  --inst_orphan_elimination               true
% 7.70/1.49  --inst_learning_loop_flag               true
% 7.70/1.49  --inst_learning_start                   3000
% 7.70/1.49  --inst_learning_factor                  2
% 7.70/1.49  --inst_start_prop_sim_after_learn       3
% 7.70/1.49  --inst_sel_renew                        solver
% 7.70/1.49  --inst_lit_activity_flag                true
% 7.70/1.49  --inst_restr_to_given                   false
% 7.70/1.49  --inst_activity_threshold               500
% 7.70/1.49  --inst_out_proof                        true
% 7.70/1.49  
% 7.70/1.49  ------ Resolution Options
% 7.70/1.49  
% 7.70/1.49  --resolution_flag                       false
% 7.70/1.49  --res_lit_sel                           adaptive
% 7.70/1.49  --res_lit_sel_side                      none
% 7.70/1.49  --res_ordering                          kbo
% 7.70/1.49  --res_to_prop_solver                    active
% 7.70/1.49  --res_prop_simpl_new                    false
% 7.70/1.49  --res_prop_simpl_given                  true
% 7.70/1.49  --res_passive_queue_type                priority_queues
% 7.70/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.70/1.49  --res_passive_queues_freq               [15;5]
% 7.70/1.49  --res_forward_subs                      full
% 7.70/1.49  --res_backward_subs                     full
% 7.70/1.49  --res_forward_subs_resolution           true
% 7.70/1.49  --res_backward_subs_resolution          true
% 7.70/1.49  --res_orphan_elimination                true
% 7.70/1.49  --res_time_limit                        2.
% 7.70/1.49  --res_out_proof                         true
% 7.70/1.49  
% 7.70/1.49  ------ Superposition Options
% 7.70/1.49  
% 7.70/1.49  --superposition_flag                    true
% 7.70/1.49  --sup_passive_queue_type                priority_queues
% 7.70/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.70/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.70/1.49  --demod_completeness_check              fast
% 7.70/1.49  --demod_use_ground                      true
% 7.70/1.49  --sup_to_prop_solver                    passive
% 7.70/1.49  --sup_prop_simpl_new                    true
% 7.70/1.49  --sup_prop_simpl_given                  true
% 7.70/1.49  --sup_fun_splitting                     false
% 7.70/1.49  --sup_smt_interval                      50000
% 7.70/1.49  
% 7.70/1.49  ------ Superposition Simplification Setup
% 7.70/1.49  
% 7.70/1.49  --sup_indices_passive                   []
% 7.70/1.49  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.70/1.49  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.70/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.70/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.70/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.70/1.49  --sup_full_bw                           [BwDemod]
% 7.70/1.49  --sup_immed_triv                        [TrivRules]
% 7.70/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.70/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.70/1.49  --sup_immed_bw_main                     []
% 7.70/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.70/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.70/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.70/1.49  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.70/1.49  
% 7.70/1.49  ------ Combination Options
% 7.70/1.49  
% 7.70/1.49  --comb_res_mult                         3
% 7.70/1.49  --comb_sup_mult                         2
% 7.70/1.49  --comb_inst_mult                        10
% 7.70/1.49  
% 7.70/1.49  ------ Debug Options
% 7.70/1.49  
% 7.70/1.49  --dbg_backtrace                         false
% 7.70/1.49  --dbg_dump_prop_clauses                 false
% 7.70/1.49  --dbg_dump_prop_clauses_file            -
% 7.70/1.49  --dbg_out_stat                          false
% 7.70/1.49  
% 7.70/1.49  
% 7.70/1.49  
% 7.70/1.49  
% 7.70/1.49  ------ Proving...
% 7.70/1.49  
% 7.70/1.49  
% 7.70/1.49  % SZS status Theorem for theBenchmark.p
% 7.70/1.49  
% 7.70/1.49   Resolution empty clause
% 7.70/1.49  
% 7.70/1.49  % SZS output start CNFRefutation for theBenchmark.p
% 7.70/1.49  
% 7.70/1.49  fof(f11,axiom,(
% 7.70/1.49    ! [X0] : v1_relat_1(k6_relat_1(X0))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f64,plain,(
% 7.70/1.49    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 7.70/1.49    inference(cnf_transformation,[],[f11])).
% 7.70/1.49  
% 7.70/1.49  fof(f25,axiom,(
% 7.70/1.49    ! [X0,X1] : (v1_relat_1(X1) => k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f46,plain,(
% 7.70/1.49    ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 7.70/1.49    inference(ennf_transformation,[],[f25])).
% 7.70/1.49  
% 7.70/1.49  fof(f81,plain,(
% 7.70/1.49    ( ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f46])).
% 7.70/1.49  
% 7.70/1.49  fof(f20,axiom,(
% 7.70/1.49    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1) & r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1)))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f40,plain,(
% 7.70/1.49    ! [X0,X1] : ((r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1) & r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1)) | ~v1_relat_1(X1))),
% 7.70/1.49    inference(ennf_transformation,[],[f20])).
% 7.70/1.49  
% 7.70/1.49  fof(f75,plain,(
% 7.70/1.49    ( ! [X0,X1] : (r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1) | ~v1_relat_1(X1)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f40])).
% 7.70/1.49  
% 7.70/1.49  fof(f19,axiom,(
% 7.70/1.49    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f74,plain,(
% 7.70/1.49    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 7.70/1.49    inference(cnf_transformation,[],[f19])).
% 7.70/1.49  
% 7.70/1.49  fof(f16,axiom,(
% 7.70/1.49    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r1_tarski(X0,X1) => (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))))))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f36,plain,(
% 7.70/1.49    ! [X0] : (! [X1] : (((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.70/1.49    inference(ennf_transformation,[],[f16])).
% 7.70/1.49  
% 7.70/1.49  fof(f37,plain,(
% 7.70/1.49    ! [X0] : (! [X1] : ((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.70/1.49    inference(flattening,[],[f36])).
% 7.70/1.49  
% 7.70/1.49  fof(f70,plain,(
% 7.70/1.49    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f37])).
% 7.70/1.49  
% 7.70/1.49  fof(f15,axiom,(
% 7.70/1.49    ! [X0,X1] : (v1_relat_1(X1) => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f35,plain,(
% 7.70/1.49    ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 7.70/1.49    inference(ennf_transformation,[],[f15])).
% 7.70/1.49  
% 7.70/1.49  fof(f68,plain,(
% 7.70/1.49    ( ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f35])).
% 7.70/1.49  
% 7.70/1.49  fof(f10,axiom,(
% 7.70/1.49    ! [X0,X1] : ((v1_relat_1(X1) & v1_relat_1(X0)) => v1_relat_1(k5_relat_1(X0,X1)))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f30,plain,(
% 7.70/1.49    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | (~v1_relat_1(X1) | ~v1_relat_1(X0)))),
% 7.70/1.49    inference(ennf_transformation,[],[f10])).
% 7.70/1.49  
% 7.70/1.49  fof(f31,plain,(
% 7.70/1.49    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0))),
% 7.70/1.49    inference(flattening,[],[f30])).
% 7.70/1.49  
% 7.70/1.49  fof(f63,plain,(
% 7.70/1.49    ( ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f31])).
% 7.70/1.49  
% 7.70/1.49  fof(f73,plain,(
% 7.70/1.49    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 7.70/1.49    inference(cnf_transformation,[],[f19])).
% 7.70/1.49  
% 7.70/1.49  fof(f21,axiom,(
% 7.70/1.49    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k5_relat_1(k6_relat_1(X0),X1) = X1))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f41,plain,(
% 7.70/1.49    ! [X0,X1] : ((k5_relat_1(k6_relat_1(X0),X1) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 7.70/1.49    inference(ennf_transformation,[],[f21])).
% 7.70/1.49  
% 7.70/1.49  fof(f42,plain,(
% 7.70/1.49    ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 7.70/1.49    inference(flattening,[],[f41])).
% 7.70/1.49  
% 7.70/1.49  fof(f77,plain,(
% 7.70/1.49    ( ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f42])).
% 7.70/1.49  
% 7.70/1.49  fof(f17,axiom,(
% 7.70/1.49    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f38,plain,(
% 7.70/1.49    ! [X0] : (! [X1] : (r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.70/1.49    inference(ennf_transformation,[],[f17])).
% 7.70/1.49  
% 7.70/1.49  fof(f71,plain,(
% 7.70/1.49    ( ! [X0,X1] : (r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f38])).
% 7.70/1.49  
% 7.70/1.49  fof(f22,axiom,(
% 7.70/1.49    ! [X0] : (v1_relat_1(X0) => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0)),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f43,plain,(
% 7.70/1.49    ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0))),
% 7.70/1.49    inference(ennf_transformation,[],[f22])).
% 7.70/1.49  
% 7.70/1.49  fof(f78,plain,(
% 7.70/1.49    ( ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f43])).
% 7.70/1.49  
% 7.70/1.49  fof(f12,axiom,(
% 7.70/1.49    ! [X0,X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0)))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f32,plain,(
% 7.70/1.49    ! [X0,X1] : (! [X2] : (k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0) | ~v1_relat_1(X2)) | ~v1_relat_1(X1))),
% 7.70/1.49    inference(ennf_transformation,[],[f12])).
% 7.70/1.49  
% 7.70/1.49  fof(f65,plain,(
% 7.70/1.49    ( ! [X2,X0,X1] : (k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0) | ~v1_relat_1(X2) | ~v1_relat_1(X1)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f32])).
% 7.70/1.49  
% 7.70/1.49  fof(f24,axiom,(
% 7.70/1.49    ! [X0,X1] : (v1_relat_1(X1) => k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f45,plain,(
% 7.70/1.49    ! [X0,X1] : (k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1))),
% 7.70/1.49    inference(ennf_transformation,[],[f24])).
% 7.70/1.49  
% 7.70/1.49  fof(f80,plain,(
% 7.70/1.49    ( ! [X0,X1] : (k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f45])).
% 7.70/1.49  
% 7.70/1.49  fof(f9,axiom,(
% 7.70/1.49    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1)),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f62,plain,(
% 7.70/1.49    ( ! [X0,X1] : (k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f9])).
% 7.70/1.49  
% 7.70/1.49  fof(f3,axiom,(
% 7.70/1.49    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f56,plain,(
% 7.70/1.49    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f3])).
% 7.70/1.49  
% 7.70/1.49  fof(f4,axiom,(
% 7.70/1.49    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f57,plain,(
% 7.70/1.49    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f4])).
% 7.70/1.49  
% 7.70/1.49  fof(f5,axiom,(
% 7.70/1.49    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f58,plain,(
% 7.70/1.49    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f5])).
% 7.70/1.49  
% 7.70/1.49  fof(f6,axiom,(
% 7.70/1.49    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f59,plain,(
% 7.70/1.49    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f6])).
% 7.70/1.49  
% 7.70/1.49  fof(f7,axiom,(
% 7.70/1.49    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f60,plain,(
% 7.70/1.49    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f7])).
% 7.70/1.49  
% 7.70/1.49  fof(f8,axiom,(
% 7.70/1.49    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f61,plain,(
% 7.70/1.49    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 7.70/1.49    inference(cnf_transformation,[],[f8])).
% 7.70/1.49  
% 7.70/1.49  fof(f83,plain,(
% 7.70/1.49    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 7.70/1.49    inference(definition_unfolding,[],[f60,f61])).
% 7.70/1.49  
% 7.70/1.49  fof(f84,plain,(
% 7.70/1.49    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 7.70/1.49    inference(definition_unfolding,[],[f59,f83])).
% 7.70/1.49  
% 7.70/1.49  fof(f85,plain,(
% 7.70/1.49    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 7.70/1.49    inference(definition_unfolding,[],[f58,f84])).
% 7.70/1.49  
% 7.70/1.49  fof(f86,plain,(
% 7.70/1.49    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 7.70/1.49    inference(definition_unfolding,[],[f57,f85])).
% 7.70/1.49  
% 7.70/1.49  fof(f87,plain,(
% 7.70/1.49    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 7.70/1.49    inference(definition_unfolding,[],[f56,f86])).
% 7.70/1.49  
% 7.70/1.49  fof(f88,plain,(
% 7.70/1.49    ( ! [X0,X1] : (k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k3_xboole_0(X0,X1)) )),
% 7.70/1.49    inference(definition_unfolding,[],[f62,f87])).
% 7.70/1.49  
% 7.70/1.49  fof(f89,plain,(
% 7.70/1.49    ( ! [X0,X1] : (k1_setfam_1(k6_enumset1(k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),k1_relat_1(X1),X0)) = k1_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1)) )),
% 7.70/1.49    inference(definition_unfolding,[],[f80,f88])).
% 7.70/1.49  
% 7.70/1.49  fof(f26,conjecture,(
% 7.70/1.49    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))),
% 7.70/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.70/1.49  
% 7.70/1.49  fof(f27,negated_conjecture,(
% 7.70/1.49    ~! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))),
% 7.70/1.49    inference(negated_conjecture,[],[f26])).
% 7.70/1.49  
% 7.70/1.49  fof(f47,plain,(
% 7.70/1.49    ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1))),
% 7.70/1.49    inference(ennf_transformation,[],[f27])).
% 7.70/1.49  
% 7.70/1.49  fof(f50,plain,(
% 7.70/1.49    ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1)) => k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1))),
% 7.70/1.49    introduced(choice_axiom,[])).
% 7.70/1.49  
% 7.70/1.49  fof(f51,plain,(
% 7.70/1.49    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1))),
% 7.70/1.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f47,f50])).
% 7.70/1.49  
% 7.70/1.49  fof(f82,plain,(
% 7.70/1.49    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1))),
% 7.70/1.49    inference(cnf_transformation,[],[f51])).
% 7.70/1.49  
% 7.70/1.49  fof(f90,plain,(
% 7.70/1.49    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k1_setfam_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1)))),
% 7.70/1.49    inference(definition_unfolding,[],[f82,f88])).
% 7.70/1.49  
% 7.70/1.49  cnf(c_5,plain,
% 7.70/1.49      ( v1_relat_1(k6_relat_1(X0)) ),
% 7.70/1.49      inference(cnf_transformation,[],[f64]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_752,plain,
% 7.70/1.49      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_22,plain,
% 7.70/1.49      ( ~ v1_relat_1(X0) | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
% 7.70/1.49      inference(cnf_transformation,[],[f81]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_737,plain,
% 7.70/1.49      ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
% 7.70/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_1039,plain,
% 7.70/1.49      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k7_relat_1(k6_relat_1(X1),X0) ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_752,c_737]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_17,plain,
% 7.70/1.49      ( r1_tarski(k5_relat_1(X0,k6_relat_1(X1)),X0) | ~ v1_relat_1(X0) ),
% 7.70/1.49      inference(cnf_transformation,[],[f75]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_742,plain,
% 7.70/1.49      ( r1_tarski(k5_relat_1(X0,k6_relat_1(X1)),X0) = iProver_top
% 7.70/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_1596,plain,
% 7.70/1.49      ( r1_tarski(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(X1)) = iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_1039,c_742]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_2983,plain,
% 7.70/1.49      ( r1_tarski(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(X1)) = iProver_top ),
% 7.70/1.49      inference(forward_subsumption_resolution,[status(thm)],[c_1596,c_752]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_14,plain,
% 7.70/1.49      ( k2_relat_1(k6_relat_1(X0)) = X0 ),
% 7.70/1.49      inference(cnf_transformation,[],[f74]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_10,plain,
% 7.70/1.49      ( ~ r1_tarski(X0,X1)
% 7.70/1.49      | r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
% 7.70/1.49      | ~ v1_relat_1(X1)
% 7.70/1.49      | ~ v1_relat_1(X0) ),
% 7.70/1.49      inference(cnf_transformation,[],[f70]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_747,plain,
% 7.70/1.49      ( r1_tarski(X0,X1) != iProver_top
% 7.70/1.49      | r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) = iProver_top
% 7.70/1.49      | v1_relat_1(X0) != iProver_top
% 7.70/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_5646,plain,
% 7.70/1.49      ( r1_tarski(X0,k6_relat_1(X1)) != iProver_top
% 7.70/1.49      | r1_tarski(k2_relat_1(X0),X1) = iProver_top
% 7.70/1.49      | v1_relat_1(X0) != iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_14,c_747]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_7627,plain,
% 7.70/1.49      ( r1_tarski(X0,k6_relat_1(X1)) != iProver_top
% 7.70/1.49      | r1_tarski(k2_relat_1(X0),X1) = iProver_top
% 7.70/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.70/1.49      inference(forward_subsumption_resolution,[status(thm)],[c_5646,c_752]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_7634,plain,
% 7.70/1.49      ( r1_tarski(k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)),X1) = iProver_top
% 7.70/1.49      | v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) != iProver_top ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_2983,c_7627]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_9,plain,
% 7.70/1.49      ( ~ v1_relat_1(X0) | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 7.70/1.49      inference(cnf_transformation,[],[f68]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_748,plain,
% 7.70/1.49      ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
% 7.70/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_1285,plain,
% 7.70/1.49      ( k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = k9_relat_1(k6_relat_1(X0),X1) ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_752,c_748]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_7706,plain,
% 7.70/1.49      ( r1_tarski(k9_relat_1(k6_relat_1(X0),X1),X1) = iProver_top
% 7.70/1.49      | v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) != iProver_top ),
% 7.70/1.49      inference(light_normalisation,[status(thm)],[c_7634,c_1285]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_4,plain,
% 7.70/1.49      ( ~ v1_relat_1(X0) | ~ v1_relat_1(X1) | v1_relat_1(k5_relat_1(X1,X0)) ),
% 7.70/1.49      inference(cnf_transformation,[],[f63]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_753,plain,
% 7.70/1.49      ( v1_relat_1(X0) != iProver_top
% 7.70/1.49      | v1_relat_1(X1) != iProver_top
% 7.70/1.49      | v1_relat_1(k5_relat_1(X1,X0)) = iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_2756,plain,
% 7.70/1.49      ( v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X0)) != iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_1039,c_753]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_71,plain,
% 7.70/1.49      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_7989,plain,
% 7.70/1.49      ( v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 7.70/1.49      inference(global_propositional_subsumption,[status(thm)],[c_2756,c_71]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_7995,plain,
% 7.70/1.49      ( v1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = iProver_top ),
% 7.70/1.49      inference(forward_subsumption_resolution,[status(thm)],[c_7989,c_752]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_29736,plain,
% 7.70/1.49      ( r1_tarski(k9_relat_1(k6_relat_1(X0),X1),X1) = iProver_top ),
% 7.70/1.49      inference(global_propositional_subsumption,[status(thm)],[c_7706,c_7995]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_15,plain,
% 7.70/1.49      ( k1_relat_1(k6_relat_1(X0)) = X0 ),
% 7.70/1.49      inference(cnf_transformation,[],[f73]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_18,plain,
% 7.70/1.49      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 7.70/1.49      | ~ v1_relat_1(X0)
% 7.70/1.49      | k5_relat_1(k6_relat_1(X1),X0) = X0 ),
% 7.70/1.49      inference(cnf_transformation,[],[f77]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_741,plain,
% 7.70/1.49      ( k5_relat_1(k6_relat_1(X0),X1) = X1
% 7.70/1.49      | r1_tarski(k1_relat_1(X1),X0) != iProver_top
% 7.70/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_4065,plain,
% 7.70/1.49      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k6_relat_1(X1)
% 7.70/1.49      | r1_tarski(X1,X0) != iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_15,c_741]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_4069,plain,
% 7.70/1.49      ( k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0)
% 7.70/1.49      | r1_tarski(X0,X1) != iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
% 7.70/1.49      inference(demodulation,[status(thm)],[c_4065,c_1039]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_8677,plain,
% 7.70/1.49      ( r1_tarski(X0,X1) != iProver_top
% 7.70/1.49      | k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0) ),
% 7.70/1.49      inference(global_propositional_subsumption,[status(thm)],[c_4069,c_71]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_8678,plain,
% 7.70/1.49      ( k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0)
% 7.70/1.49      | r1_tarski(X0,X1) != iProver_top ),
% 7.70/1.49      inference(renaming,[status(thm)],[c_8677]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_29760,plain,
% 7.70/1.49      ( k7_relat_1(k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)),X1) = k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)) ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_29736,c_8678]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_12,plain,
% 7.70/1.49      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
% 7.70/1.49      | ~ v1_relat_1(X1)
% 7.70/1.49      | ~ v1_relat_1(X0) ),
% 7.70/1.49      inference(cnf_transformation,[],[f71]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_745,plain,
% 7.70/1.49      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) = iProver_top
% 7.70/1.49      | v1_relat_1(X0) != iProver_top
% 7.70/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_2360,plain,
% 7.70/1.49      ( r1_tarski(k2_relat_1(k5_relat_1(X0,k6_relat_1(X1))),X1) = iProver_top
% 7.70/1.49      | v1_relat_1(X0) != iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_14,c_745]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_4726,plain,
% 7.70/1.49      ( r1_tarski(k2_relat_1(k5_relat_1(X0,k6_relat_1(X1))),X1) = iProver_top
% 7.70/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.70/1.49      inference(forward_subsumption_resolution,[status(thm)],[c_2360,c_752]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_4730,plain,
% 7.70/1.49      ( r1_tarski(k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)),X0) = iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_1039,c_4726]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_4751,plain,
% 7.70/1.49      ( r1_tarski(k9_relat_1(k6_relat_1(X0),X1),X0) = iProver_top
% 7.70/1.49      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 7.70/1.49      inference(light_normalisation,[status(thm)],[c_4730,c_1285]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_4929,plain,
% 7.70/1.49      ( r1_tarski(k9_relat_1(k6_relat_1(X0),X1),X0) = iProver_top ),
% 7.70/1.49      inference(forward_subsumption_resolution,[status(thm)],[c_4751,c_752]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_8695,plain,
% 7.70/1.49      ( k7_relat_1(k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)),X0) = k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)) ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_4929,c_8678]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_19,plain,
% 7.70/1.49      ( ~ v1_relat_1(X0) | k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ),
% 7.70/1.49      inference(cnf_transformation,[],[f78]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_740,plain,
% 7.70/1.49      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
% 7.70/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_8009,plain,
% 7.70/1.49      ( k5_relat_1(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)))) = k7_relat_1(k6_relat_1(X0),X1) ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_7995,c_740]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_8015,plain,
% 7.70/1.49      ( k5_relat_1(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(k9_relat_1(k6_relat_1(X0),X1))) = k7_relat_1(k6_relat_1(X0),X1) ),
% 7.70/1.49      inference(light_normalisation,[status(thm)],[c_8009,c_1285]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_6,plain,
% 7.70/1.49      ( ~ v1_relat_1(X0)
% 7.70/1.49      | ~ v1_relat_1(X1)
% 7.70/1.49      | k7_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(k7_relat_1(X0,X2),X1) ),
% 7.70/1.49      inference(cnf_transformation,[],[f65]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_751,plain,
% 7.70/1.49      ( k7_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(k7_relat_1(X0,X2),X1)
% 7.70/1.49      | v1_relat_1(X0) != iProver_top
% 7.70/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_4038,plain,
% 7.70/1.49      ( k7_relat_1(k5_relat_1(k6_relat_1(X0),X1),X2) = k5_relat_1(k7_relat_1(k6_relat_1(X0),X2),X1)
% 7.70/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_752,c_751]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_5334,plain,
% 7.70/1.49      ( k7_relat_1(k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)),X2) = k5_relat_1(k7_relat_1(k6_relat_1(X0),X2),k6_relat_1(X1)) ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_752,c_4038]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_5336,plain,
% 7.70/1.49      ( k5_relat_1(k7_relat_1(k6_relat_1(X0),X1),k6_relat_1(X2)) = k7_relat_1(k7_relat_1(k6_relat_1(X2),X0),X1) ),
% 7.70/1.49      inference(light_normalisation,[status(thm)],[c_5334,c_1039]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_8274,plain,
% 7.70/1.49      ( k7_relat_1(k7_relat_1(k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)),X0),X1) = k7_relat_1(k6_relat_1(X0),X1) ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_8015,c_5336]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_9089,plain,
% 7.70/1.49      ( k7_relat_1(k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)),X1) = k7_relat_1(k6_relat_1(X0),X1) ),
% 7.70/1.49      inference(demodulation,[status(thm)],[c_8695,c_8274]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_29788,plain,
% 7.70/1.49      ( k6_relat_1(k9_relat_1(k6_relat_1(X0),X1)) = k7_relat_1(k6_relat_1(X0),X1) ),
% 7.70/1.49      inference(light_normalisation,[status(thm)],[c_29760,c_9089]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_30563,plain,
% 7.70/1.49      ( k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = k9_relat_1(k6_relat_1(X0),X1) ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_29788,c_15]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_21,plain,
% 7.70/1.49      ( ~ v1_relat_1(X0)
% 7.70/1.49      | k1_setfam_1(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1)) ),
% 7.70/1.49      inference(cnf_transformation,[],[f89]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_738,plain,
% 7.70/1.49      ( k1_setfam_1(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1))
% 7.70/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.70/1.49      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_1121,plain,
% 7.70/1.49      ( k1_setfam_1(k6_enumset1(k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
% 7.70/1.49      inference(superposition,[status(thm)],[c_752,c_738]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_1122,plain,
% 7.70/1.49      ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
% 7.70/1.49      inference(light_normalisation,[status(thm)],[c_1121,c_15]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_23,negated_conjecture,
% 7.70/1.49      ( k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k1_setfam_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) ),
% 7.70/1.49      inference(cnf_transformation,[],[f90]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_1594,plain,
% 7.70/1.49      ( k6_relat_1(k1_setfam_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK1))) != k7_relat_1(k6_relat_1(sK0),sK1) ),
% 7.70/1.49      inference(demodulation,[status(thm)],[c_1039,c_23]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_2344,plain,
% 7.70/1.49      ( k6_relat_1(k1_relat_1(k7_relat_1(k6_relat_1(sK0),sK1))) != k7_relat_1(k6_relat_1(sK0),sK1) ),
% 7.70/1.49      inference(demodulation,[status(thm)],[c_1122,c_1594]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_31721,plain,
% 7.70/1.49      ( k6_relat_1(k9_relat_1(k6_relat_1(sK0),sK1)) != k7_relat_1(k6_relat_1(sK0),sK1) ),
% 7.70/1.49      inference(demodulation,[status(thm)],[c_30563,c_2344]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_31727,plain,
% 7.70/1.49      ( k7_relat_1(k6_relat_1(sK0),sK1) != k7_relat_1(k6_relat_1(sK0),sK1) ),
% 7.70/1.49      inference(demodulation,[status(thm)],[c_31721,c_29788]) ).
% 7.70/1.49  
% 7.70/1.49  cnf(c_31728,plain,
% 7.70/1.49      ( $false ),
% 7.70/1.49      inference(equality_resolution_simp,[status(thm)],[c_31727]) ).
% 7.70/1.49  
% 7.70/1.49  
% 7.70/1.49  % SZS output end CNFRefutation for theBenchmark.p
% 7.70/1.49  
% 7.70/1.49  ------                               Statistics
% 7.70/1.49  
% 7.70/1.49  ------ General
% 7.70/1.49  
% 7.70/1.49  abstr_ref_over_cycles:                  0
% 7.70/1.49  abstr_ref_under_cycles:                 0
% 7.70/1.49  gc_basic_clause_elim:                   0
% 7.70/1.49  forced_gc_time:                         0
% 7.70/1.49  parsing_time:                           0.029
% 7.70/1.49  unif_index_cands_time:                  0.
% 7.70/1.49  unif_index_add_time:                    0.
% 7.70/1.49  orderings_time:                         0.
% 7.70/1.49  out_proof_time:                         0.015
% 7.70/1.49  total_time:                             0.893
% 7.70/1.49  num_of_symbols:                         44
% 7.70/1.49  num_of_terms:                           37274
% 7.70/1.49  
% 7.70/1.49  ------ Preprocessing
% 7.70/1.49  
% 7.70/1.49  num_of_splits:                          0
% 7.70/1.49  num_of_split_atoms:                     0
% 7.70/1.49  num_of_reused_defs:                     0
% 7.70/1.49  num_eq_ax_congr_red:                    12
% 7.70/1.49  num_of_sem_filtered_clauses:            1
% 7.70/1.49  num_of_subtypes:                        0
% 7.70/1.49  monotx_restored_types:                  0
% 7.70/1.49  sat_num_of_epr_types:                   0
% 7.70/1.49  sat_num_of_non_cyclic_types:            0
% 7.70/1.49  sat_guarded_non_collapsed_types:        0
% 7.70/1.49  num_pure_diseq_elim:                    0
% 7.70/1.49  simp_replaced_by:                       0
% 7.70/1.49  res_preprocessed:                       117
% 7.70/1.49  prep_upred:                             0
% 7.70/1.49  prep_unflattend:                        0
% 7.70/1.49  smt_new_axioms:                         0
% 7.70/1.49  pred_elim_cands:                        2
% 7.70/1.49  pred_elim:                              0
% 7.70/1.49  pred_elim_cl:                           0
% 7.70/1.49  pred_elim_cycles:                       2
% 7.70/1.49  merged_defs:                            0
% 7.70/1.49  merged_defs_ncl:                        0
% 7.70/1.49  bin_hyper_res:                          0
% 7.70/1.49  prep_cycles:                            4
% 7.70/1.49  pred_elim_time:                         0.
% 7.70/1.49  splitting_time:                         0.
% 7.70/1.49  sem_filter_time:                        0.
% 7.70/1.49  monotx_time:                            0.
% 7.70/1.49  subtype_inf_time:                       0.
% 7.70/1.49  
% 7.70/1.49  ------ Problem properties
% 7.70/1.49  
% 7.70/1.49  clauses:                                23
% 7.70/1.49  conjectures:                            1
% 7.70/1.49  epr:                                    3
% 7.70/1.49  horn:                                   23
% 7.70/1.49  ground:                                 1
% 7.70/1.49  unary:                                  5
% 7.70/1.49  binary:                                 8
% 7.70/1.49  lits:                                   54
% 7.70/1.49  lits_eq:                                13
% 7.70/1.49  fd_pure:                                0
% 7.70/1.49  fd_pseudo:                              0
% 7.70/1.49  fd_cond:                                0
% 7.70/1.49  fd_pseudo_cond:                         1
% 7.70/1.49  ac_symbols:                             0
% 7.70/1.49  
% 7.70/1.49  ------ Propositional Solver
% 7.70/1.49  
% 7.70/1.49  prop_solver_calls:                      30
% 7.70/1.49  prop_fast_solver_calls:                 956
% 7.70/1.49  smt_solver_calls:                       0
% 7.70/1.49  smt_fast_solver_calls:                  0
% 7.70/1.49  prop_num_of_clauses:                    11402
% 7.70/1.49  prop_preprocess_simplified:             21302
% 7.70/1.49  prop_fo_subsumed:                       10
% 7.70/1.49  prop_solver_time:                       0.
% 7.70/1.49  smt_solver_time:                        0.
% 7.70/1.49  smt_fast_solver_time:                   0.
% 7.70/1.49  prop_fast_solver_time:                  0.
% 7.70/1.49  prop_unsat_core_time:                   0.
% 7.70/1.49  
% 7.70/1.49  ------ QBF
% 7.70/1.49  
% 7.70/1.49  qbf_q_res:                              0
% 7.70/1.49  qbf_num_tautologies:                    0
% 7.70/1.49  qbf_prep_cycles:                        0
% 7.70/1.49  
% 7.70/1.49  ------ BMC1
% 7.70/1.49  
% 7.70/1.49  bmc1_current_bound:                     -1
% 7.70/1.49  bmc1_last_solved_bound:                 -1
% 7.70/1.49  bmc1_unsat_core_size:                   -1
% 7.70/1.49  bmc1_unsat_core_parents_size:           -1
% 7.70/1.49  bmc1_merge_next_fun:                    0
% 7.70/1.49  bmc1_unsat_core_clauses_time:           0.
% 7.70/1.49  
% 7.70/1.49  ------ Instantiation
% 7.70/1.49  
% 7.70/1.49  inst_num_of_clauses:                    2806
% 7.70/1.49  inst_num_in_passive:                    1502
% 7.70/1.49  inst_num_in_active:                     951
% 7.70/1.49  inst_num_in_unprocessed:                354
% 7.70/1.49  inst_num_of_loops:                      1000
% 7.70/1.49  inst_num_of_learning_restarts:          0
% 7.70/1.49  inst_num_moves_active_passive:          47
% 7.70/1.49  inst_lit_activity:                      0
% 7.70/1.49  inst_lit_activity_moves:                1
% 7.70/1.49  inst_num_tautologies:                   0
% 7.70/1.49  inst_num_prop_implied:                  0
% 7.70/1.49  inst_num_existing_simplified:           0
% 7.70/1.49  inst_num_eq_res_simplified:             0
% 7.70/1.49  inst_num_child_elim:                    0
% 7.70/1.49  inst_num_of_dismatching_blockings:      1768
% 7.70/1.49  inst_num_of_non_proper_insts:           2346
% 7.70/1.49  inst_num_of_duplicates:                 0
% 7.70/1.49  inst_inst_num_from_inst_to_res:         0
% 7.70/1.49  inst_dismatching_checking_time:         0.
% 7.70/1.49  
% 7.70/1.49  ------ Resolution
% 7.70/1.49  
% 7.70/1.49  res_num_of_clauses:                     0
% 7.70/1.49  res_num_in_passive:                     0
% 7.70/1.49  res_num_in_active:                      0
% 7.70/1.49  res_num_of_loops:                       121
% 7.70/1.49  res_forward_subset_subsumed:            266
% 7.70/1.49  res_backward_subset_subsumed:           4
% 7.70/1.49  res_forward_subsumed:                   0
% 7.70/1.49  res_backward_subsumed:                  0
% 7.70/1.49  res_forward_subsumption_resolution:     0
% 7.70/1.49  res_backward_subsumption_resolution:    0
% 7.70/1.49  res_clause_to_clause_subsumption:       6692
% 7.70/1.49  res_orphan_elimination:                 0
% 7.70/1.49  res_tautology_del:                      242
% 7.70/1.49  res_num_eq_res_simplified:              0
% 7.70/1.49  res_num_sel_changes:                    0
% 7.70/1.49  res_moves_from_active_to_pass:          0
% 7.70/1.49  
% 7.70/1.49  ------ Superposition
% 7.70/1.49  
% 7.70/1.49  sup_time_total:                         0.
% 7.70/1.49  sup_time_generating:                    0.
% 7.70/1.49  sup_time_sim_full:                      0.
% 7.70/1.49  sup_time_sim_immed:                     0.
% 7.70/1.49  
% 7.70/1.49  sup_num_of_clauses:                     1062
% 7.70/1.49  sup_num_in_active:                      124
% 7.70/1.49  sup_num_in_passive:                     938
% 7.70/1.49  sup_num_of_loops:                       198
% 7.70/1.49  sup_fw_superposition:                   1564
% 7.70/1.49  sup_bw_superposition:                   1758
% 7.70/1.49  sup_immediate_simplified:               1717
% 7.70/1.49  sup_given_eliminated:                   0
% 7.70/1.49  comparisons_done:                       0
% 7.70/1.49  comparisons_avoided:                    0
% 7.70/1.49  
% 7.70/1.49  ------ Simplifications
% 7.70/1.49  
% 7.70/1.49  
% 7.70/1.49  sim_fw_subset_subsumed:                 58
% 7.70/1.49  sim_bw_subset_subsumed:                 17
% 7.70/1.49  sim_fw_subsumed:                        497
% 7.70/1.49  sim_bw_subsumed:                        6
% 7.70/1.49  sim_fw_subsumption_res:                 10
% 7.70/1.49  sim_bw_subsumption_res:                 1
% 7.70/1.49  sim_tautology_del:                      125
% 7.70/1.49  sim_eq_tautology_del:                   199
% 7.70/1.49  sim_eq_res_simp:                        0
% 7.70/1.49  sim_fw_demodulated:                     496
% 7.70/1.49  sim_bw_demodulated:                     82
% 7.70/1.49  sim_light_normalised:                   917
% 7.70/1.49  sim_joinable_taut:                      0
% 7.70/1.49  sim_joinable_simp:                      0
% 7.70/1.49  sim_ac_normalised:                      0
% 7.70/1.49  sim_smt_subsumption:                    0
% 7.70/1.49  
%------------------------------------------------------------------------------
