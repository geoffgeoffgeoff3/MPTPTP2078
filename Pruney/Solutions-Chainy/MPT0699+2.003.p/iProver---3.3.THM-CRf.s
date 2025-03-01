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
% DateTime   : Thu Dec  3 11:52:05 EST 2020

% Result     : Theorem 2.72s
% Output     : CNFRefutation 2.72s
% Verified   : 
% Statistics : Number of formulae       :  107 ( 258 expanded)
%              Number of clauses        :   56 (  78 expanded)
%              Number of leaves         :   15 (  54 expanded)
%              Depth                    :   17
%              Number of atoms          :  261 ( 814 expanded)
%              Number of equality atoms :  123 ( 262 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f14,conjecture,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( v2_funct_1(X1)
       => k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( v1_funct_1(X1)
          & v1_relat_1(X1) )
       => ( v2_funct_1(X1)
         => k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f28,plain,(
    ? [X0,X1] :
      ( k9_relat_1(X1,X0) != k10_relat_1(k2_funct_1(X1),X0)
      & v2_funct_1(X1)
      & v1_funct_1(X1)
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f29,plain,(
    ? [X0,X1] :
      ( k9_relat_1(X1,X0) != k10_relat_1(k2_funct_1(X1),X0)
      & v2_funct_1(X1)
      & v1_funct_1(X1)
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f28])).

fof(f30,plain,
    ( ? [X0,X1] :
        ( k9_relat_1(X1,X0) != k10_relat_1(k2_funct_1(X1),X0)
        & v2_funct_1(X1)
        & v1_funct_1(X1)
        & v1_relat_1(X1) )
   => ( k9_relat_1(sK1,sK0) != k10_relat_1(k2_funct_1(sK1),sK0)
      & v2_funct_1(sK1)
      & v1_funct_1(sK1)
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,
    ( k9_relat_1(sK1,sK0) != k10_relat_1(k2_funct_1(sK1),sK0)
    & v2_funct_1(sK1)
    & v1_funct_1(sK1)
    & v1_relat_1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f29,f30])).

fof(f51,plain,(
    v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f31])).

fof(f8,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f21,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f20])).

fof(f40,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f50,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f31])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k10_relat_1(X1,k10_relat_1(X2,X0)) = k10_relat_1(k5_relat_1(X1,X2),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k10_relat_1(X1,k10_relat_1(X2,X0)) = k10_relat_1(k5_relat_1(X1,X2),X0)
          | ~ v1_relat_1(X2) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( k10_relat_1(X1,k10_relat_1(X2,X0)) = k10_relat_1(k5_relat_1(X1,X2),X0)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f13,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
          & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f27,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f26])).

fof(f48,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f52,plain,(
    v2_funct_1(sK1) ),
    inference(cnf_transformation,[],[f31])).

fof(f9,axiom,(
    ! [X0] :
      ( v2_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f37,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f7,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f11,axiom,(
    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f11])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f56,plain,(
    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k1_setfam_1(k2_tarski(X0,X1))) ),
    inference(definition_unfolding,[],[f45,f33])).

fof(f12,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f25,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f24])).

fof(f46,plain,(
    ! [X0] :
      ( k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f35,plain,(
    ! [X0,X1] :
      ( r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r1_tarski(X0,k2_relat_1(X1))
       => k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,k10_relat_1(X1,X0)) = X0
      | ~ r1_tarski(X0,k2_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f23,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,k10_relat_1(X1,X0)) = X0
      | ~ r1_tarski(X0,k2_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f22])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,k10_relat_1(X1,X0)) = X0
      | ~ r1_tarski(X0,k2_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f54,plain,(
    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k1_setfam_1(k2_tarski(X1,X0)) ),
    inference(definition_unfolding,[],[f32,f33,f33])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k9_relat_1(X1,X0) = k9_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k9_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k9_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f55,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k9_relat_1(X1,k1_setfam_1(k2_tarski(k1_relat_1(X1),X0)))
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f34,f33])).

fof(f53,plain,(
    k9_relat_1(sK1,sK0) != k10_relat_1(k2_funct_1(sK1),sK0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_19,negated_conjecture,
    ( v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_624,plain,
    ( v1_funct_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_8,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_627,plain,
    ( v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_20,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_623,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_3,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k10_relat_1(k5_relat_1(X0,X1),X2) = k10_relat_1(X0,k10_relat_1(X1,X2)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_630,plain,
    ( k10_relat_1(k5_relat_1(X0,X1),X2) = k10_relat_1(X0,k10_relat_1(X1,X2))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2294,plain,
    ( k10_relat_1(sK1,k10_relat_1(X0,X1)) = k10_relat_1(k5_relat_1(sK1,X0),X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_623,c_630])).

cnf(c_2533,plain,
    ( k10_relat_1(k5_relat_1(sK1,k2_funct_1(X0)),X1) = k10_relat_1(sK1,k10_relat_1(k2_funct_1(X0),X1))
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_627,c_2294])).

cnf(c_4159,plain,
    ( k10_relat_1(k5_relat_1(sK1,k2_funct_1(sK1)),X0) = k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0))
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_624,c_2533])).

cnf(c_16,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_18,negated_conjecture,
    ( v2_funct_1(sK1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_295,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_18])).

cnf(c_296,plain,
    ( ~ v1_funct_1(sK1)
    | ~ v1_relat_1(sK1)
    | k5_relat_1(sK1,k2_funct_1(sK1)) = k6_relat_1(k1_relat_1(sK1)) ),
    inference(unflattening,[status(thm)],[c_295])).

cnf(c_25,plain,
    ( ~ v2_funct_1(sK1)
    | ~ v1_funct_1(sK1)
    | ~ v1_relat_1(sK1)
    | k5_relat_1(sK1,k2_funct_1(sK1)) = k6_relat_1(k1_relat_1(sK1)) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_298,plain,
    ( k5_relat_1(sK1,k2_funct_1(sK1)) = k6_relat_1(k1_relat_1(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_296,c_20,c_19,c_18,c_25])).

cnf(c_4162,plain,
    ( k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0)) = k10_relat_1(k6_relat_1(k1_relat_1(sK1)),X0)
    | v1_relat_1(sK1) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4159,c_298])).

cnf(c_10,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_626,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k10_relat_1(X1,k1_relat_1(X0)) = k1_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_629,plain,
    ( k10_relat_1(X0,k1_relat_1(X1)) = k1_relat_1(k5_relat_1(X0,X1))
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_2101,plain,
    ( k10_relat_1(k6_relat_1(X0),k1_relat_1(X1)) = k1_relat_1(k5_relat_1(k6_relat_1(X0),X1))
    | v1_relat_1(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_626,c_629])).

cnf(c_2509,plain,
    ( k10_relat_1(k6_relat_1(X0),k1_relat_1(k6_relat_1(X1))) = k1_relat_1(k5_relat_1(k6_relat_1(X0),k6_relat_1(X1))) ),
    inference(superposition,[status(thm)],[c_626,c_2101])).

cnf(c_6,plain,
    ( k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_12,plain,
    ( k6_relat_1(k1_setfam_1(k2_tarski(X0,X1))) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_2514,plain,
    ( k10_relat_1(k6_relat_1(X0),X1) = k1_setfam_1(k2_tarski(X1,X0)) ),
    inference(demodulation,[status(thm)],[c_2509,c_6,c_12])).

cnf(c_4163,plain,
    ( k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0)) = k1_setfam_1(k2_tarski(X0,k1_relat_1(sK1)))
    | v1_relat_1(sK1) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4162,c_2514])).

cnf(c_21,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_4871,plain,
    ( k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0)) = k1_setfam_1(k2_tarski(X0,k1_relat_1(sK1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4163,c_21])).

cnf(c_14,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_311,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_18])).

cnf(c_312,plain,
    ( ~ v1_funct_1(sK1)
    | ~ v1_relat_1(sK1)
    | k1_relat_1(k2_funct_1(sK1)) = k2_relat_1(sK1) ),
    inference(unflattening,[status(thm)],[c_311])).

cnf(c_31,plain,
    ( ~ v2_funct_1(sK1)
    | ~ v1_funct_1(sK1)
    | ~ v1_relat_1(sK1)
    | k1_relat_1(k2_funct_1(sK1)) = k2_relat_1(sK1) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_314,plain,
    ( k1_relat_1(k2_funct_1(sK1)) = k2_relat_1(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_312,c_20,c_19,c_18,c_31])).

cnf(c_2,plain,
    ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_631,plain,
    ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0)) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1307,plain,
    ( r1_tarski(k10_relat_1(k2_funct_1(sK1),X0),k2_relat_1(sK1)) = iProver_top
    | v1_relat_1(k2_funct_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_314,c_631])).

cnf(c_22,plain,
    ( v1_funct_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_46,plain,
    ( v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_48,plain,
    ( v1_funct_1(sK1) != iProver_top
    | v1_relat_1(k2_funct_1(sK1)) = iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(instantiation,[status(thm)],[c_46])).

cnf(c_1331,plain,
    ( r1_tarski(k10_relat_1(k2_funct_1(sK1),X0),k2_relat_1(sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1307,c_21,c_22,c_48])).

cnf(c_11,plain,
    ( ~ r1_tarski(X0,k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_625,plain,
    ( k9_relat_1(X0,k10_relat_1(X0,X1)) = X1
    | r1_tarski(X1,k2_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1338,plain,
    ( k9_relat_1(sK1,k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0))) = k10_relat_1(k2_funct_1(sK1),X0)
    | v1_funct_1(sK1) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1331,c_625])).

cnf(c_1393,plain,
    ( k9_relat_1(sK1,k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0))) = k10_relat_1(k2_funct_1(sK1),X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1338,c_21,c_22])).

cnf(c_4875,plain,
    ( k9_relat_1(sK1,k1_setfam_1(k2_tarski(X0,k1_relat_1(sK1)))) = k10_relat_1(k2_funct_1(sK1),X0) ),
    inference(demodulation,[status(thm)],[c_4871,c_1393])).

cnf(c_0,plain,
    ( k1_setfam_1(k2_tarski(X0,X1)) = k1_setfam_1(k2_tarski(X1,X0)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | k9_relat_1(X0,k1_setfam_1(k2_tarski(k1_relat_1(X0),X1))) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_632,plain,
    ( k9_relat_1(X0,k1_setfam_1(k2_tarski(k1_relat_1(X0),X1))) = k9_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1727,plain,
    ( k9_relat_1(sK1,k1_setfam_1(k2_tarski(k1_relat_1(sK1),X0))) = k9_relat_1(sK1,X0) ),
    inference(superposition,[status(thm)],[c_623,c_632])).

cnf(c_1879,plain,
    ( k9_relat_1(sK1,k1_setfam_1(k2_tarski(X0,k1_relat_1(sK1)))) = k9_relat_1(sK1,X0) ),
    inference(superposition,[status(thm)],[c_0,c_1727])).

cnf(c_4876,plain,
    ( k10_relat_1(k2_funct_1(sK1),X0) = k9_relat_1(sK1,X0) ),
    inference(light_normalisation,[status(thm)],[c_4875,c_1879])).

cnf(c_17,negated_conjecture,
    ( k9_relat_1(sK1,sK0) != k10_relat_1(k2_funct_1(sK1),sK0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_4961,plain,
    ( k9_relat_1(sK1,sK0) != k9_relat_1(sK1,sK0) ),
    inference(demodulation,[status(thm)],[c_4876,c_17])).

cnf(c_4992,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_4961])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.31  % Computer   : n001.cluster.edu
% 0.12/0.31  % Model      : x86_64 x86_64
% 0.12/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.31  % Memory     : 8042.1875MB
% 0.12/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.31  % CPULimit   : 60
% 0.12/0.31  % WCLimit    : 600
% 0.12/0.31  % DateTime   : Tue Dec  1 16:04:45 EST 2020
% 0.12/0.31  % CPUTime    : 
% 0.12/0.32  % Running in FOF mode
% 2.72/0.97  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.72/0.97  
% 2.72/0.97  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.72/0.97  
% 2.72/0.97  ------  iProver source info
% 2.72/0.97  
% 2.72/0.97  git: date: 2020-06-30 10:37:57 +0100
% 2.72/0.97  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.72/0.97  git: non_committed_changes: false
% 2.72/0.97  git: last_make_outside_of_git: false
% 2.72/0.97  
% 2.72/0.97  ------ 
% 2.72/0.97  
% 2.72/0.97  ------ Input Options
% 2.72/0.97  
% 2.72/0.97  --out_options                           all
% 2.72/0.97  --tptp_safe_out                         true
% 2.72/0.97  --problem_path                          ""
% 2.72/0.97  --include_path                          ""
% 2.72/0.97  --clausifier                            res/vclausify_rel
% 2.72/0.97  --clausifier_options                    --mode clausify
% 2.72/0.97  --stdin                                 false
% 2.72/0.97  --stats_out                             all
% 2.72/0.97  
% 2.72/0.97  ------ General Options
% 2.72/0.97  
% 2.72/0.97  --fof                                   false
% 2.72/0.97  --time_out_real                         305.
% 2.72/0.97  --time_out_virtual                      -1.
% 2.72/0.97  --symbol_type_check                     false
% 2.72/0.97  --clausify_out                          false
% 2.72/0.97  --sig_cnt_out                           false
% 2.72/0.97  --trig_cnt_out                          false
% 2.72/0.97  --trig_cnt_out_tolerance                1.
% 2.72/0.97  --trig_cnt_out_sk_spl                   false
% 2.72/0.97  --abstr_cl_out                          false
% 2.72/0.97  
% 2.72/0.97  ------ Global Options
% 2.72/0.97  
% 2.72/0.97  --schedule                              default
% 2.72/0.97  --add_important_lit                     false
% 2.72/0.97  --prop_solver_per_cl                    1000
% 2.72/0.97  --min_unsat_core                        false
% 2.72/0.97  --soft_assumptions                      false
% 2.72/0.97  --soft_lemma_size                       3
% 2.72/0.97  --prop_impl_unit_size                   0
% 2.72/0.97  --prop_impl_unit                        []
% 2.72/0.97  --share_sel_clauses                     true
% 2.72/0.97  --reset_solvers                         false
% 2.72/0.97  --bc_imp_inh                            [conj_cone]
% 2.72/0.97  --conj_cone_tolerance                   3.
% 2.72/0.97  --extra_neg_conj                        none
% 2.72/0.97  --large_theory_mode                     true
% 2.72/0.97  --prolific_symb_bound                   200
% 2.72/0.97  --lt_threshold                          2000
% 2.72/0.97  --clause_weak_htbl                      true
% 2.72/0.97  --gc_record_bc_elim                     false
% 2.72/0.97  
% 2.72/0.97  ------ Preprocessing Options
% 2.72/0.97  
% 2.72/0.97  --preprocessing_flag                    true
% 2.72/0.97  --time_out_prep_mult                    0.1
% 2.72/0.97  --splitting_mode                        input
% 2.72/0.97  --splitting_grd                         true
% 2.72/0.97  --splitting_cvd                         false
% 2.72/0.97  --splitting_cvd_svl                     false
% 2.72/0.97  --splitting_nvd                         32
% 2.72/0.97  --sub_typing                            true
% 2.72/0.97  --prep_gs_sim                           true
% 2.72/0.97  --prep_unflatten                        true
% 2.72/0.97  --prep_res_sim                          true
% 2.72/0.97  --prep_upred                            true
% 2.72/0.97  --prep_sem_filter                       exhaustive
% 2.72/0.97  --prep_sem_filter_out                   false
% 2.72/0.97  --pred_elim                             true
% 2.72/0.97  --res_sim_input                         true
% 2.72/0.97  --eq_ax_congr_red                       true
% 2.72/0.97  --pure_diseq_elim                       true
% 2.72/0.97  --brand_transform                       false
% 2.72/0.97  --non_eq_to_eq                          false
% 2.72/0.97  --prep_def_merge                        true
% 2.72/0.97  --prep_def_merge_prop_impl              false
% 2.72/0.97  --prep_def_merge_mbd                    true
% 2.72/0.97  --prep_def_merge_tr_red                 false
% 2.72/0.97  --prep_def_merge_tr_cl                  false
% 2.72/0.97  --smt_preprocessing                     true
% 2.72/0.97  --smt_ac_axioms                         fast
% 2.72/0.97  --preprocessed_out                      false
% 2.72/0.97  --preprocessed_stats                    false
% 2.72/0.97  
% 2.72/0.97  ------ Abstraction refinement Options
% 2.72/0.97  
% 2.72/0.97  --abstr_ref                             []
% 2.72/0.97  --abstr_ref_prep                        false
% 2.72/0.97  --abstr_ref_until_sat                   false
% 2.72/0.97  --abstr_ref_sig_restrict                funpre
% 2.72/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.72/0.97  --abstr_ref_under                       []
% 2.72/0.97  
% 2.72/0.97  ------ SAT Options
% 2.72/0.97  
% 2.72/0.97  --sat_mode                              false
% 2.72/0.97  --sat_fm_restart_options                ""
% 2.72/0.97  --sat_gr_def                            false
% 2.72/0.97  --sat_epr_types                         true
% 2.72/0.97  --sat_non_cyclic_types                  false
% 2.72/0.97  --sat_finite_models                     false
% 2.72/0.97  --sat_fm_lemmas                         false
% 2.72/0.97  --sat_fm_prep                           false
% 2.72/0.97  --sat_fm_uc_incr                        true
% 2.72/0.97  --sat_out_model                         small
% 2.72/0.97  --sat_out_clauses                       false
% 2.72/0.97  
% 2.72/0.97  ------ QBF Options
% 2.72/0.97  
% 2.72/0.97  --qbf_mode                              false
% 2.72/0.97  --qbf_elim_univ                         false
% 2.72/0.97  --qbf_dom_inst                          none
% 2.72/0.97  --qbf_dom_pre_inst                      false
% 2.72/0.97  --qbf_sk_in                             false
% 2.72/0.97  --qbf_pred_elim                         true
% 2.72/0.97  --qbf_split                             512
% 2.72/0.97  
% 2.72/0.97  ------ BMC1 Options
% 2.72/0.97  
% 2.72/0.97  --bmc1_incremental                      false
% 2.72/0.97  --bmc1_axioms                           reachable_all
% 2.72/0.97  --bmc1_min_bound                        0
% 2.72/0.97  --bmc1_max_bound                        -1
% 2.72/0.97  --bmc1_max_bound_default                -1
% 2.72/0.97  --bmc1_symbol_reachability              true
% 2.72/0.97  --bmc1_property_lemmas                  false
% 2.72/0.97  --bmc1_k_induction                      false
% 2.72/0.97  --bmc1_non_equiv_states                 false
% 2.72/0.97  --bmc1_deadlock                         false
% 2.72/0.97  --bmc1_ucm                              false
% 2.72/0.97  --bmc1_add_unsat_core                   none
% 2.72/0.97  --bmc1_unsat_core_children              false
% 2.72/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.72/0.97  --bmc1_out_stat                         full
% 2.72/0.97  --bmc1_ground_init                      false
% 2.72/0.97  --bmc1_pre_inst_next_state              false
% 2.72/0.97  --bmc1_pre_inst_state                   false
% 2.72/0.97  --bmc1_pre_inst_reach_state             false
% 2.72/0.97  --bmc1_out_unsat_core                   false
% 2.72/0.97  --bmc1_aig_witness_out                  false
% 2.72/0.97  --bmc1_verbose                          false
% 2.72/0.97  --bmc1_dump_clauses_tptp                false
% 2.72/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.72/0.97  --bmc1_dump_file                        -
% 2.72/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.72/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.72/0.97  --bmc1_ucm_extend_mode                  1
% 2.72/0.97  --bmc1_ucm_init_mode                    2
% 2.72/0.97  --bmc1_ucm_cone_mode                    none
% 2.72/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.72/0.97  --bmc1_ucm_relax_model                  4
% 2.72/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.72/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.72/0.97  --bmc1_ucm_layered_model                none
% 2.72/0.97  --bmc1_ucm_max_lemma_size               10
% 2.72/0.97  
% 2.72/0.97  ------ AIG Options
% 2.72/0.97  
% 2.72/0.97  --aig_mode                              false
% 2.72/0.97  
% 2.72/0.97  ------ Instantiation Options
% 2.72/0.97  
% 2.72/0.97  --instantiation_flag                    true
% 2.72/0.97  --inst_sos_flag                         false
% 2.72/0.97  --inst_sos_phase                        true
% 2.72/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.72/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.72/0.97  --inst_lit_sel_side                     num_symb
% 2.72/0.97  --inst_solver_per_active                1400
% 2.72/0.97  --inst_solver_calls_frac                1.
% 2.72/0.97  --inst_passive_queue_type               priority_queues
% 2.72/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.72/0.97  --inst_passive_queues_freq              [25;2]
% 2.72/0.97  --inst_dismatching                      true
% 2.72/0.97  --inst_eager_unprocessed_to_passive     true
% 2.72/0.97  --inst_prop_sim_given                   true
% 2.72/0.97  --inst_prop_sim_new                     false
% 2.72/0.97  --inst_subs_new                         false
% 2.72/0.97  --inst_eq_res_simp                      false
% 2.72/0.97  --inst_subs_given                       false
% 2.72/0.97  --inst_orphan_elimination               true
% 2.72/0.97  --inst_learning_loop_flag               true
% 2.72/0.97  --inst_learning_start                   3000
% 2.72/0.97  --inst_learning_factor                  2
% 2.72/0.97  --inst_start_prop_sim_after_learn       3
% 2.72/0.97  --inst_sel_renew                        solver
% 2.72/0.97  --inst_lit_activity_flag                true
% 2.72/0.97  --inst_restr_to_given                   false
% 2.72/0.97  --inst_activity_threshold               500
% 2.72/0.97  --inst_out_proof                        true
% 2.72/0.97  
% 2.72/0.97  ------ Resolution Options
% 2.72/0.97  
% 2.72/0.97  --resolution_flag                       true
% 2.72/0.97  --res_lit_sel                           adaptive
% 2.72/0.97  --res_lit_sel_side                      none
% 2.72/0.97  --res_ordering                          kbo
% 2.72/0.97  --res_to_prop_solver                    active
% 2.72/0.97  --res_prop_simpl_new                    false
% 2.72/0.97  --res_prop_simpl_given                  true
% 2.72/0.97  --res_passive_queue_type                priority_queues
% 2.72/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.72/0.97  --res_passive_queues_freq               [15;5]
% 2.72/0.97  --res_forward_subs                      full
% 2.72/0.97  --res_backward_subs                     full
% 2.72/0.97  --res_forward_subs_resolution           true
% 2.72/0.97  --res_backward_subs_resolution          true
% 2.72/0.97  --res_orphan_elimination                true
% 2.72/0.97  --res_time_limit                        2.
% 2.72/0.97  --res_out_proof                         true
% 2.72/0.97  
% 2.72/0.97  ------ Superposition Options
% 2.72/0.97  
% 2.72/0.97  --superposition_flag                    true
% 2.72/0.97  --sup_passive_queue_type                priority_queues
% 2.72/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.72/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.72/0.97  --demod_completeness_check              fast
% 2.72/0.97  --demod_use_ground                      true
% 2.72/0.97  --sup_to_prop_solver                    passive
% 2.72/0.97  --sup_prop_simpl_new                    true
% 2.72/0.97  --sup_prop_simpl_given                  true
% 2.72/0.97  --sup_fun_splitting                     false
% 2.72/0.97  --sup_smt_interval                      50000
% 2.72/0.97  
% 2.72/0.97  ------ Superposition Simplification Setup
% 2.72/0.97  
% 2.72/0.97  --sup_indices_passive                   []
% 2.72/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.72/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.72/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.72/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.72/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.72/0.97  --sup_full_bw                           [BwDemod]
% 2.72/0.97  --sup_immed_triv                        [TrivRules]
% 2.72/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.72/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.72/0.97  --sup_immed_bw_main                     []
% 2.72/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.72/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.72/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.72/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.72/0.97  
% 2.72/0.97  ------ Combination Options
% 2.72/0.97  
% 2.72/0.97  --comb_res_mult                         3
% 2.72/0.97  --comb_sup_mult                         2
% 2.72/0.97  --comb_inst_mult                        10
% 2.72/0.97  
% 2.72/0.97  ------ Debug Options
% 2.72/0.97  
% 2.72/0.97  --dbg_backtrace                         false
% 2.72/0.97  --dbg_dump_prop_clauses                 false
% 2.72/0.97  --dbg_dump_prop_clauses_file            -
% 2.72/0.97  --dbg_out_stat                          false
% 2.72/0.97  ------ Parsing...
% 2.72/0.97  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.72/0.97  
% 2.72/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e 
% 2.72/0.97  
% 2.72/0.97  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.72/0.97  
% 2.72/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.72/0.97  ------ Proving...
% 2.72/0.97  ------ Problem Properties 
% 2.72/0.97  
% 2.72/0.97  
% 2.72/0.97  clauses                                 23
% 2.72/0.97  conjectures                             3
% 2.72/0.97  EPR                                     2
% 2.72/0.97  Horn                                    23
% 2.72/0.97  unary                                   12
% 2.72/0.97  binary                                  6
% 2.72/0.97  lits                                    40
% 2.72/0.97  lits eq                                 17
% 2.72/0.97  fd_pure                                 0
% 2.72/0.97  fd_pseudo                               0
% 2.72/0.97  fd_cond                                 0
% 2.72/0.97  fd_pseudo_cond                          0
% 2.72/0.97  AC symbols                              0
% 2.72/0.97  
% 2.72/0.97  ------ Schedule dynamic 5 is on 
% 2.72/0.97  
% 2.72/0.97  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.72/0.97  
% 2.72/0.97  
% 2.72/0.97  ------ 
% 2.72/0.97  Current options:
% 2.72/0.97  ------ 
% 2.72/0.97  
% 2.72/0.97  ------ Input Options
% 2.72/0.97  
% 2.72/0.97  --out_options                           all
% 2.72/0.97  --tptp_safe_out                         true
% 2.72/0.97  --problem_path                          ""
% 2.72/0.97  --include_path                          ""
% 2.72/0.97  --clausifier                            res/vclausify_rel
% 2.72/0.97  --clausifier_options                    --mode clausify
% 2.72/0.97  --stdin                                 false
% 2.72/0.97  --stats_out                             all
% 2.72/0.97  
% 2.72/0.97  ------ General Options
% 2.72/0.97  
% 2.72/0.97  --fof                                   false
% 2.72/0.97  --time_out_real                         305.
% 2.72/0.97  --time_out_virtual                      -1.
% 2.72/0.97  --symbol_type_check                     false
% 2.72/0.97  --clausify_out                          false
% 2.72/0.97  --sig_cnt_out                           false
% 2.72/0.97  --trig_cnt_out                          false
% 2.72/0.97  --trig_cnt_out_tolerance                1.
% 2.72/0.97  --trig_cnt_out_sk_spl                   false
% 2.72/0.97  --abstr_cl_out                          false
% 2.72/0.97  
% 2.72/0.97  ------ Global Options
% 2.72/0.97  
% 2.72/0.97  --schedule                              default
% 2.72/0.97  --add_important_lit                     false
% 2.72/0.97  --prop_solver_per_cl                    1000
% 2.72/0.97  --min_unsat_core                        false
% 2.72/0.97  --soft_assumptions                      false
% 2.72/0.97  --soft_lemma_size                       3
% 2.72/0.97  --prop_impl_unit_size                   0
% 2.72/0.97  --prop_impl_unit                        []
% 2.72/0.97  --share_sel_clauses                     true
% 2.72/0.97  --reset_solvers                         false
% 2.72/0.97  --bc_imp_inh                            [conj_cone]
% 2.72/0.97  --conj_cone_tolerance                   3.
% 2.72/0.97  --extra_neg_conj                        none
% 2.72/0.97  --large_theory_mode                     true
% 2.72/0.97  --prolific_symb_bound                   200
% 2.72/0.97  --lt_threshold                          2000
% 2.72/0.97  --clause_weak_htbl                      true
% 2.72/0.97  --gc_record_bc_elim                     false
% 2.72/0.97  
% 2.72/0.97  ------ Preprocessing Options
% 2.72/0.97  
% 2.72/0.97  --preprocessing_flag                    true
% 2.72/0.97  --time_out_prep_mult                    0.1
% 2.72/0.97  --splitting_mode                        input
% 2.72/0.97  --splitting_grd                         true
% 2.72/0.97  --splitting_cvd                         false
% 2.72/0.97  --splitting_cvd_svl                     false
% 2.72/0.97  --splitting_nvd                         32
% 2.72/0.97  --sub_typing                            true
% 2.72/0.97  --prep_gs_sim                           true
% 2.72/0.97  --prep_unflatten                        true
% 2.72/0.97  --prep_res_sim                          true
% 2.72/0.97  --prep_upred                            true
% 2.72/0.97  --prep_sem_filter                       exhaustive
% 2.72/0.97  --prep_sem_filter_out                   false
% 2.72/0.97  --pred_elim                             true
% 2.72/0.97  --res_sim_input                         true
% 2.72/0.97  --eq_ax_congr_red                       true
% 2.72/0.97  --pure_diseq_elim                       true
% 2.72/0.97  --brand_transform                       false
% 2.72/0.97  --non_eq_to_eq                          false
% 2.72/0.97  --prep_def_merge                        true
% 2.72/0.97  --prep_def_merge_prop_impl              false
% 2.72/0.97  --prep_def_merge_mbd                    true
% 2.72/0.97  --prep_def_merge_tr_red                 false
% 2.72/0.97  --prep_def_merge_tr_cl                  false
% 2.72/0.97  --smt_preprocessing                     true
% 2.72/0.97  --smt_ac_axioms                         fast
% 2.72/0.97  --preprocessed_out                      false
% 2.72/0.97  --preprocessed_stats                    false
% 2.72/0.97  
% 2.72/0.97  ------ Abstraction refinement Options
% 2.72/0.97  
% 2.72/0.97  --abstr_ref                             []
% 2.72/0.97  --abstr_ref_prep                        false
% 2.72/0.97  --abstr_ref_until_sat                   false
% 2.72/0.97  --abstr_ref_sig_restrict                funpre
% 2.72/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.72/0.97  --abstr_ref_under                       []
% 2.72/0.97  
% 2.72/0.97  ------ SAT Options
% 2.72/0.97  
% 2.72/0.97  --sat_mode                              false
% 2.72/0.97  --sat_fm_restart_options                ""
% 2.72/0.97  --sat_gr_def                            false
% 2.72/0.97  --sat_epr_types                         true
% 2.72/0.97  --sat_non_cyclic_types                  false
% 2.72/0.97  --sat_finite_models                     false
% 2.72/0.97  --sat_fm_lemmas                         false
% 2.72/0.97  --sat_fm_prep                           false
% 2.72/0.97  --sat_fm_uc_incr                        true
% 2.72/0.97  --sat_out_model                         small
% 2.72/0.97  --sat_out_clauses                       false
% 2.72/0.97  
% 2.72/0.97  ------ QBF Options
% 2.72/0.97  
% 2.72/0.97  --qbf_mode                              false
% 2.72/0.97  --qbf_elim_univ                         false
% 2.72/0.97  --qbf_dom_inst                          none
% 2.72/0.97  --qbf_dom_pre_inst                      false
% 2.72/0.97  --qbf_sk_in                             false
% 2.72/0.97  --qbf_pred_elim                         true
% 2.72/0.97  --qbf_split                             512
% 2.72/0.97  
% 2.72/0.97  ------ BMC1 Options
% 2.72/0.97  
% 2.72/0.97  --bmc1_incremental                      false
% 2.72/0.97  --bmc1_axioms                           reachable_all
% 2.72/0.97  --bmc1_min_bound                        0
% 2.72/0.97  --bmc1_max_bound                        -1
% 2.72/0.97  --bmc1_max_bound_default                -1
% 2.72/0.97  --bmc1_symbol_reachability              true
% 2.72/0.97  --bmc1_property_lemmas                  false
% 2.72/0.97  --bmc1_k_induction                      false
% 2.72/0.97  --bmc1_non_equiv_states                 false
% 2.72/0.97  --bmc1_deadlock                         false
% 2.72/0.97  --bmc1_ucm                              false
% 2.72/0.97  --bmc1_add_unsat_core                   none
% 2.72/0.97  --bmc1_unsat_core_children              false
% 2.72/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.72/0.97  --bmc1_out_stat                         full
% 2.72/0.97  --bmc1_ground_init                      false
% 2.72/0.97  --bmc1_pre_inst_next_state              false
% 2.72/0.97  --bmc1_pre_inst_state                   false
% 2.72/0.97  --bmc1_pre_inst_reach_state             false
% 2.72/0.97  --bmc1_out_unsat_core                   false
% 2.72/0.97  --bmc1_aig_witness_out                  false
% 2.72/0.97  --bmc1_verbose                          false
% 2.72/0.97  --bmc1_dump_clauses_tptp                false
% 2.72/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.72/0.97  --bmc1_dump_file                        -
% 2.72/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.72/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.72/0.97  --bmc1_ucm_extend_mode                  1
% 2.72/0.97  --bmc1_ucm_init_mode                    2
% 2.72/0.97  --bmc1_ucm_cone_mode                    none
% 2.72/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.72/0.97  --bmc1_ucm_relax_model                  4
% 2.72/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.72/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.72/0.97  --bmc1_ucm_layered_model                none
% 2.72/0.97  --bmc1_ucm_max_lemma_size               10
% 2.72/0.97  
% 2.72/0.97  ------ AIG Options
% 2.72/0.97  
% 2.72/0.97  --aig_mode                              false
% 2.72/0.97  
% 2.72/0.97  ------ Instantiation Options
% 2.72/0.97  
% 2.72/0.97  --instantiation_flag                    true
% 2.72/0.97  --inst_sos_flag                         false
% 2.72/0.97  --inst_sos_phase                        true
% 2.72/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.72/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.72/0.97  --inst_lit_sel_side                     none
% 2.72/0.97  --inst_solver_per_active                1400
% 2.72/0.97  --inst_solver_calls_frac                1.
% 2.72/0.97  --inst_passive_queue_type               priority_queues
% 2.72/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.72/0.97  --inst_passive_queues_freq              [25;2]
% 2.72/0.97  --inst_dismatching                      true
% 2.72/0.97  --inst_eager_unprocessed_to_passive     true
% 2.72/0.97  --inst_prop_sim_given                   true
% 2.72/0.97  --inst_prop_sim_new                     false
% 2.72/0.97  --inst_subs_new                         false
% 2.72/0.97  --inst_eq_res_simp                      false
% 2.72/0.97  --inst_subs_given                       false
% 2.72/0.97  --inst_orphan_elimination               true
% 2.72/0.97  --inst_learning_loop_flag               true
% 2.72/0.97  --inst_learning_start                   3000
% 2.72/0.97  --inst_learning_factor                  2
% 2.72/0.97  --inst_start_prop_sim_after_learn       3
% 2.72/0.97  --inst_sel_renew                        solver
% 2.72/0.97  --inst_lit_activity_flag                true
% 2.72/0.97  --inst_restr_to_given                   false
% 2.72/0.97  --inst_activity_threshold               500
% 2.72/0.97  --inst_out_proof                        true
% 2.72/0.97  
% 2.72/0.97  ------ Resolution Options
% 2.72/0.97  
% 2.72/0.97  --resolution_flag                       false
% 2.72/0.97  --res_lit_sel                           adaptive
% 2.72/0.97  --res_lit_sel_side                      none
% 2.72/0.97  --res_ordering                          kbo
% 2.72/0.97  --res_to_prop_solver                    active
% 2.72/0.97  --res_prop_simpl_new                    false
% 2.72/0.97  --res_prop_simpl_given                  true
% 2.72/0.97  --res_passive_queue_type                priority_queues
% 2.72/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.72/0.97  --res_passive_queues_freq               [15;5]
% 2.72/0.97  --res_forward_subs                      full
% 2.72/0.97  --res_backward_subs                     full
% 2.72/0.97  --res_forward_subs_resolution           true
% 2.72/0.97  --res_backward_subs_resolution          true
% 2.72/0.97  --res_orphan_elimination                true
% 2.72/0.97  --res_time_limit                        2.
% 2.72/0.97  --res_out_proof                         true
% 2.72/0.97  
% 2.72/0.97  ------ Superposition Options
% 2.72/0.97  
% 2.72/0.97  --superposition_flag                    true
% 2.72/0.97  --sup_passive_queue_type                priority_queues
% 2.72/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.72/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.72/0.97  --demod_completeness_check              fast
% 2.72/0.97  --demod_use_ground                      true
% 2.72/0.97  --sup_to_prop_solver                    passive
% 2.72/0.97  --sup_prop_simpl_new                    true
% 2.72/0.97  --sup_prop_simpl_given                  true
% 2.72/0.97  --sup_fun_splitting                     false
% 2.72/0.97  --sup_smt_interval                      50000
% 2.72/0.97  
% 2.72/0.97  ------ Superposition Simplification Setup
% 2.72/0.97  
% 2.72/0.97  --sup_indices_passive                   []
% 2.72/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.72/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.72/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.72/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.72/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.72/0.97  --sup_full_bw                           [BwDemod]
% 2.72/0.97  --sup_immed_triv                        [TrivRules]
% 2.72/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.72/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.72/0.97  --sup_immed_bw_main                     []
% 2.72/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.72/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.72/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.72/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.72/0.97  
% 2.72/0.97  ------ Combination Options
% 2.72/0.97  
% 2.72/0.97  --comb_res_mult                         3
% 2.72/0.97  --comb_sup_mult                         2
% 2.72/0.97  --comb_inst_mult                        10
% 2.72/0.97  
% 2.72/0.97  ------ Debug Options
% 2.72/0.97  
% 2.72/0.97  --dbg_backtrace                         false
% 2.72/0.97  --dbg_dump_prop_clauses                 false
% 2.72/0.97  --dbg_dump_prop_clauses_file            -
% 2.72/0.97  --dbg_out_stat                          false
% 2.72/0.97  
% 2.72/0.97  
% 2.72/0.97  
% 2.72/0.97  
% 2.72/0.97  ------ Proving...
% 2.72/0.97  
% 2.72/0.97  
% 2.72/0.97  % SZS status Theorem for theBenchmark.p
% 2.72/0.97  
% 2.72/0.97   Resolution empty clause
% 2.72/0.97  
% 2.72/0.97  % SZS output start CNFRefutation for theBenchmark.p
% 2.72/0.97  
% 2.72/0.97  fof(f14,conjecture,(
% 2.72/0.97    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (v2_funct_1(X1) => k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0)))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f15,negated_conjecture,(
% 2.72/0.97    ~! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (v2_funct_1(X1) => k9_relat_1(X1,X0) = k10_relat_1(k2_funct_1(X1),X0)))),
% 2.72/0.97    inference(negated_conjecture,[],[f14])).
% 2.72/0.97  
% 2.72/0.97  fof(f28,plain,(
% 2.72/0.97    ? [X0,X1] : ((k9_relat_1(X1,X0) != k10_relat_1(k2_funct_1(X1),X0) & v2_funct_1(X1)) & (v1_funct_1(X1) & v1_relat_1(X1)))),
% 2.72/0.97    inference(ennf_transformation,[],[f15])).
% 2.72/0.97  
% 2.72/0.97  fof(f29,plain,(
% 2.72/0.97    ? [X0,X1] : (k9_relat_1(X1,X0) != k10_relat_1(k2_funct_1(X1),X0) & v2_funct_1(X1) & v1_funct_1(X1) & v1_relat_1(X1))),
% 2.72/0.97    inference(flattening,[],[f28])).
% 2.72/0.97  
% 2.72/0.97  fof(f30,plain,(
% 2.72/0.97    ? [X0,X1] : (k9_relat_1(X1,X0) != k10_relat_1(k2_funct_1(X1),X0) & v2_funct_1(X1) & v1_funct_1(X1) & v1_relat_1(X1)) => (k9_relat_1(sK1,sK0) != k10_relat_1(k2_funct_1(sK1),sK0) & v2_funct_1(sK1) & v1_funct_1(sK1) & v1_relat_1(sK1))),
% 2.72/0.97    introduced(choice_axiom,[])).
% 2.72/0.97  
% 2.72/0.97  fof(f31,plain,(
% 2.72/0.97    k9_relat_1(sK1,sK0) != k10_relat_1(k2_funct_1(sK1),sK0) & v2_funct_1(sK1) & v1_funct_1(sK1) & v1_relat_1(sK1)),
% 2.72/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f29,f30])).
% 2.72/0.97  
% 2.72/0.97  fof(f51,plain,(
% 2.72/0.97    v1_funct_1(sK1)),
% 2.72/0.97    inference(cnf_transformation,[],[f31])).
% 2.72/0.97  
% 2.72/0.97  fof(f8,axiom,(
% 2.72/0.97    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f20,plain,(
% 2.72/0.97    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.72/0.97    inference(ennf_transformation,[],[f8])).
% 2.72/0.97  
% 2.72/0.97  fof(f21,plain,(
% 2.72/0.97    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.72/0.97    inference(flattening,[],[f20])).
% 2.72/0.97  
% 2.72/0.97  fof(f40,plain,(
% 2.72/0.97    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.72/0.97    inference(cnf_transformation,[],[f21])).
% 2.72/0.97  
% 2.72/0.97  fof(f50,plain,(
% 2.72/0.97    v1_relat_1(sK1)),
% 2.72/0.97    inference(cnf_transformation,[],[f31])).
% 2.72/0.97  
% 2.72/0.97  fof(f5,axiom,(
% 2.72/0.97    ! [X0,X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k10_relat_1(X1,k10_relat_1(X2,X0)) = k10_relat_1(k5_relat_1(X1,X2),X0)))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f18,plain,(
% 2.72/0.97    ! [X0,X1] : (! [X2] : (k10_relat_1(X1,k10_relat_1(X2,X0)) = k10_relat_1(k5_relat_1(X1,X2),X0) | ~v1_relat_1(X2)) | ~v1_relat_1(X1))),
% 2.72/0.97    inference(ennf_transformation,[],[f5])).
% 2.72/0.97  
% 2.72/0.97  fof(f36,plain,(
% 2.72/0.97    ( ! [X2,X0,X1] : (k10_relat_1(X1,k10_relat_1(X2,X0)) = k10_relat_1(k5_relat_1(X1,X2),X0) | ~v1_relat_1(X2) | ~v1_relat_1(X1)) )),
% 2.72/0.97    inference(cnf_transformation,[],[f18])).
% 2.72/0.97  
% 2.72/0.97  fof(f13,axiom,(
% 2.72/0.97    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)))))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f26,plain,(
% 2.72/0.97    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.72/0.97    inference(ennf_transformation,[],[f13])).
% 2.72/0.97  
% 2.72/0.97  fof(f27,plain,(
% 2.72/0.97    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.72/0.97    inference(flattening,[],[f26])).
% 2.72/0.97  
% 2.72/0.97  fof(f48,plain,(
% 2.72/0.97    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.72/0.97    inference(cnf_transformation,[],[f27])).
% 2.72/0.97  
% 2.72/0.97  fof(f52,plain,(
% 2.72/0.97    v2_funct_1(sK1)),
% 2.72/0.97    inference(cnf_transformation,[],[f31])).
% 2.72/0.97  
% 2.72/0.97  fof(f9,axiom,(
% 2.72/0.97    ! [X0] : (v2_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f42,plain,(
% 2.72/0.97    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 2.72/0.97    inference(cnf_transformation,[],[f9])).
% 2.72/0.97  
% 2.72/0.97  fof(f6,axiom,(
% 2.72/0.97    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1))))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f19,plain,(
% 2.72/0.97    ! [X0] : (! [X1] : (k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.72/0.97    inference(ennf_transformation,[],[f6])).
% 2.72/0.97  
% 2.72/0.97  fof(f37,plain,(
% 2.72/0.97    ( ! [X0,X1] : (k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.72/0.97    inference(cnf_transformation,[],[f19])).
% 2.72/0.97  
% 2.72/0.97  fof(f7,axiom,(
% 2.72/0.97    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f38,plain,(
% 2.72/0.97    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 2.72/0.97    inference(cnf_transformation,[],[f7])).
% 2.72/0.97  
% 2.72/0.97  fof(f11,axiom,(
% 2.72/0.97    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f45,plain,(
% 2.72/0.97    ( ! [X0,X1] : (k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))) )),
% 2.72/0.97    inference(cnf_transformation,[],[f11])).
% 2.72/0.97  
% 2.72/0.97  fof(f2,axiom,(
% 2.72/0.97    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f33,plain,(
% 2.72/0.97    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 2.72/0.97    inference(cnf_transformation,[],[f2])).
% 2.72/0.97  
% 2.72/0.97  fof(f56,plain,(
% 2.72/0.97    ( ! [X0,X1] : (k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k1_setfam_1(k2_tarski(X0,X1)))) )),
% 2.72/0.97    inference(definition_unfolding,[],[f45,f33])).
% 2.72/0.97  
% 2.72/0.97  fof(f12,axiom,(
% 2.72/0.97    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f24,plain,(
% 2.72/0.97    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.72/0.97    inference(ennf_transformation,[],[f12])).
% 2.72/0.97  
% 2.72/0.97  fof(f25,plain,(
% 2.72/0.97    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.72/0.97    inference(flattening,[],[f24])).
% 2.72/0.97  
% 2.72/0.97  fof(f46,plain,(
% 2.72/0.97    ( ! [X0] : (k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.72/0.97    inference(cnf_transformation,[],[f25])).
% 2.72/0.97  
% 2.72/0.97  fof(f4,axiom,(
% 2.72/0.97    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f17,plain,(
% 2.72/0.97    ! [X0,X1] : (r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)) | ~v1_relat_1(X1))),
% 2.72/0.97    inference(ennf_transformation,[],[f4])).
% 2.72/0.97  
% 2.72/0.97  fof(f35,plain,(
% 2.72/0.97    ( ! [X0,X1] : (r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)) | ~v1_relat_1(X1)) )),
% 2.72/0.97    inference(cnf_transformation,[],[f17])).
% 2.72/0.97  
% 2.72/0.97  fof(f10,axiom,(
% 2.72/0.97    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(X0,k2_relat_1(X1)) => k9_relat_1(X1,k10_relat_1(X1,X0)) = X0))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f22,plain,(
% 2.72/0.97    ! [X0,X1] : ((k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 | ~r1_tarski(X0,k2_relat_1(X1))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 2.72/0.97    inference(ennf_transformation,[],[f10])).
% 2.72/0.97  
% 2.72/0.97  fof(f23,plain,(
% 2.72/0.97    ! [X0,X1] : (k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 | ~r1_tarski(X0,k2_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.72/0.97    inference(flattening,[],[f22])).
% 2.72/0.97  
% 2.72/0.97  fof(f44,plain,(
% 2.72/0.97    ( ! [X0,X1] : (k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 | ~r1_tarski(X0,k2_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 2.72/0.97    inference(cnf_transformation,[],[f23])).
% 2.72/0.97  
% 2.72/0.97  fof(f1,axiom,(
% 2.72/0.97    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f32,plain,(
% 2.72/0.97    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 2.72/0.97    inference(cnf_transformation,[],[f1])).
% 2.72/0.97  
% 2.72/0.97  fof(f54,plain,(
% 2.72/0.97    ( ! [X0,X1] : (k1_setfam_1(k2_tarski(X0,X1)) = k1_setfam_1(k2_tarski(X1,X0))) )),
% 2.72/0.97    inference(definition_unfolding,[],[f32,f33,f33])).
% 2.72/0.97  
% 2.72/0.97  fof(f3,axiom,(
% 2.72/0.97    ! [X0,X1] : (v1_relat_1(X1) => k9_relat_1(X1,X0) = k9_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0)))),
% 2.72/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.72/0.97  
% 2.72/0.97  fof(f16,plain,(
% 2.72/0.97    ! [X0,X1] : (k9_relat_1(X1,X0) = k9_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.72/0.97    inference(ennf_transformation,[],[f3])).
% 2.72/0.97  
% 2.72/0.97  fof(f34,plain,(
% 2.72/0.97    ( ! [X0,X1] : (k9_relat_1(X1,X0) = k9_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0)) | ~v1_relat_1(X1)) )),
% 2.72/0.97    inference(cnf_transformation,[],[f16])).
% 2.72/0.97  
% 2.72/0.97  fof(f55,plain,(
% 2.72/0.97    ( ! [X0,X1] : (k9_relat_1(X1,X0) = k9_relat_1(X1,k1_setfam_1(k2_tarski(k1_relat_1(X1),X0))) | ~v1_relat_1(X1)) )),
% 2.72/0.97    inference(definition_unfolding,[],[f34,f33])).
% 2.72/0.97  
% 2.72/0.97  fof(f53,plain,(
% 2.72/0.97    k9_relat_1(sK1,sK0) != k10_relat_1(k2_funct_1(sK1),sK0)),
% 2.72/0.97    inference(cnf_transformation,[],[f31])).
% 2.72/0.97  
% 2.72/0.97  cnf(c_19,negated_conjecture,
% 2.72/0.97      ( v1_funct_1(sK1) ),
% 2.72/0.97      inference(cnf_transformation,[],[f51]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_624,plain,
% 2.72/0.97      ( v1_funct_1(sK1) = iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_8,plain,
% 2.72/0.97      ( ~ v1_funct_1(X0) | ~ v1_relat_1(X0) | v1_relat_1(k2_funct_1(X0)) ),
% 2.72/0.97      inference(cnf_transformation,[],[f40]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_627,plain,
% 2.72/0.97      ( v1_funct_1(X0) != iProver_top
% 2.72/0.97      | v1_relat_1(X0) != iProver_top
% 2.72/0.97      | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_20,negated_conjecture,
% 2.72/0.97      ( v1_relat_1(sK1) ),
% 2.72/0.97      inference(cnf_transformation,[],[f50]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_623,plain,
% 2.72/0.97      ( v1_relat_1(sK1) = iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_3,plain,
% 2.72/0.97      ( ~ v1_relat_1(X0)
% 2.72/0.97      | ~ v1_relat_1(X1)
% 2.72/0.97      | k10_relat_1(k5_relat_1(X0,X1),X2) = k10_relat_1(X0,k10_relat_1(X1,X2)) ),
% 2.72/0.97      inference(cnf_transformation,[],[f36]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_630,plain,
% 2.72/0.97      ( k10_relat_1(k5_relat_1(X0,X1),X2) = k10_relat_1(X0,k10_relat_1(X1,X2))
% 2.72/0.97      | v1_relat_1(X0) != iProver_top
% 2.72/0.97      | v1_relat_1(X1) != iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_2294,plain,
% 2.72/0.97      ( k10_relat_1(sK1,k10_relat_1(X0,X1)) = k10_relat_1(k5_relat_1(sK1,X0),X1)
% 2.72/0.97      | v1_relat_1(X0) != iProver_top ),
% 2.72/0.97      inference(superposition,[status(thm)],[c_623,c_630]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_2533,plain,
% 2.72/0.97      ( k10_relat_1(k5_relat_1(sK1,k2_funct_1(X0)),X1) = k10_relat_1(sK1,k10_relat_1(k2_funct_1(X0),X1))
% 2.72/0.97      | v1_funct_1(X0) != iProver_top
% 2.72/0.97      | v1_relat_1(X0) != iProver_top ),
% 2.72/0.97      inference(superposition,[status(thm)],[c_627,c_2294]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_4159,plain,
% 2.72/0.97      ( k10_relat_1(k5_relat_1(sK1,k2_funct_1(sK1)),X0) = k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0))
% 2.72/0.97      | v1_relat_1(sK1) != iProver_top ),
% 2.72/0.97      inference(superposition,[status(thm)],[c_624,c_2533]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_16,plain,
% 2.72/0.97      ( ~ v2_funct_1(X0)
% 2.72/0.97      | ~ v1_funct_1(X0)
% 2.72/0.97      | ~ v1_relat_1(X0)
% 2.72/0.97      | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ),
% 2.72/0.97      inference(cnf_transformation,[],[f48]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_18,negated_conjecture,
% 2.72/0.97      ( v2_funct_1(sK1) ),
% 2.72/0.97      inference(cnf_transformation,[],[f52]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_295,plain,
% 2.72/0.97      ( ~ v1_funct_1(X0)
% 2.72/0.97      | ~ v1_relat_1(X0)
% 2.72/0.97      | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
% 2.72/0.97      | sK1 != X0 ),
% 2.72/0.97      inference(resolution_lifted,[status(thm)],[c_16,c_18]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_296,plain,
% 2.72/0.97      ( ~ v1_funct_1(sK1)
% 2.72/0.97      | ~ v1_relat_1(sK1)
% 2.72/0.97      | k5_relat_1(sK1,k2_funct_1(sK1)) = k6_relat_1(k1_relat_1(sK1)) ),
% 2.72/0.97      inference(unflattening,[status(thm)],[c_295]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_25,plain,
% 2.72/0.97      ( ~ v2_funct_1(sK1)
% 2.72/0.97      | ~ v1_funct_1(sK1)
% 2.72/0.97      | ~ v1_relat_1(sK1)
% 2.72/0.97      | k5_relat_1(sK1,k2_funct_1(sK1)) = k6_relat_1(k1_relat_1(sK1)) ),
% 2.72/0.97      inference(instantiation,[status(thm)],[c_16]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_298,plain,
% 2.72/0.97      ( k5_relat_1(sK1,k2_funct_1(sK1)) = k6_relat_1(k1_relat_1(sK1)) ),
% 2.72/0.97      inference(global_propositional_subsumption,
% 2.72/0.97                [status(thm)],
% 2.72/0.97                [c_296,c_20,c_19,c_18,c_25]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_4162,plain,
% 2.72/0.97      ( k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0)) = k10_relat_1(k6_relat_1(k1_relat_1(sK1)),X0)
% 2.72/0.97      | v1_relat_1(sK1) != iProver_top ),
% 2.72/0.97      inference(light_normalisation,[status(thm)],[c_4159,c_298]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_10,plain,
% 2.72/0.97      ( v1_relat_1(k6_relat_1(X0)) ),
% 2.72/0.97      inference(cnf_transformation,[],[f42]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_626,plain,
% 2.72/0.97      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_4,plain,
% 2.72/0.97      ( ~ v1_relat_1(X0)
% 2.72/0.97      | ~ v1_relat_1(X1)
% 2.72/0.97      | k10_relat_1(X1,k1_relat_1(X0)) = k1_relat_1(k5_relat_1(X1,X0)) ),
% 2.72/0.97      inference(cnf_transformation,[],[f37]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_629,plain,
% 2.72/0.97      ( k10_relat_1(X0,k1_relat_1(X1)) = k1_relat_1(k5_relat_1(X0,X1))
% 2.72/0.97      | v1_relat_1(X1) != iProver_top
% 2.72/0.97      | v1_relat_1(X0) != iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_2101,plain,
% 2.72/0.97      ( k10_relat_1(k6_relat_1(X0),k1_relat_1(X1)) = k1_relat_1(k5_relat_1(k6_relat_1(X0),X1))
% 2.72/0.97      | v1_relat_1(X1) != iProver_top ),
% 2.72/0.97      inference(superposition,[status(thm)],[c_626,c_629]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_2509,plain,
% 2.72/0.97      ( k10_relat_1(k6_relat_1(X0),k1_relat_1(k6_relat_1(X1))) = k1_relat_1(k5_relat_1(k6_relat_1(X0),k6_relat_1(X1))) ),
% 2.72/0.97      inference(superposition,[status(thm)],[c_626,c_2101]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_6,plain,
% 2.72/0.97      ( k1_relat_1(k6_relat_1(X0)) = X0 ),
% 2.72/0.97      inference(cnf_transformation,[],[f38]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_12,plain,
% 2.72/0.97      ( k6_relat_1(k1_setfam_1(k2_tarski(X0,X1))) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) ),
% 2.72/0.97      inference(cnf_transformation,[],[f56]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_2514,plain,
% 2.72/0.97      ( k10_relat_1(k6_relat_1(X0),X1) = k1_setfam_1(k2_tarski(X1,X0)) ),
% 2.72/0.97      inference(demodulation,[status(thm)],[c_2509,c_6,c_12]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_4163,plain,
% 2.72/0.97      ( k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0)) = k1_setfam_1(k2_tarski(X0,k1_relat_1(sK1)))
% 2.72/0.97      | v1_relat_1(sK1) != iProver_top ),
% 2.72/0.97      inference(demodulation,[status(thm)],[c_4162,c_2514]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_21,plain,
% 2.72/0.97      ( v1_relat_1(sK1) = iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_4871,plain,
% 2.72/0.97      ( k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0)) = k1_setfam_1(k2_tarski(X0,k1_relat_1(sK1))) ),
% 2.72/0.97      inference(global_propositional_subsumption,[status(thm)],[c_4163,c_21]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_14,plain,
% 2.72/0.97      ( ~ v2_funct_1(X0)
% 2.72/0.97      | ~ v1_funct_1(X0)
% 2.72/0.97      | ~ v1_relat_1(X0)
% 2.72/0.97      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 2.72/0.97      inference(cnf_transformation,[],[f46]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_311,plain,
% 2.72/0.97      ( ~ v1_funct_1(X0)
% 2.72/0.97      | ~ v1_relat_1(X0)
% 2.72/0.97      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
% 2.72/0.97      | sK1 != X0 ),
% 2.72/0.97      inference(resolution_lifted,[status(thm)],[c_14,c_18]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_312,plain,
% 2.72/0.97      ( ~ v1_funct_1(sK1)
% 2.72/0.97      | ~ v1_relat_1(sK1)
% 2.72/0.97      | k1_relat_1(k2_funct_1(sK1)) = k2_relat_1(sK1) ),
% 2.72/0.97      inference(unflattening,[status(thm)],[c_311]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_31,plain,
% 2.72/0.97      ( ~ v2_funct_1(sK1)
% 2.72/0.97      | ~ v1_funct_1(sK1)
% 2.72/0.97      | ~ v1_relat_1(sK1)
% 2.72/0.97      | k1_relat_1(k2_funct_1(sK1)) = k2_relat_1(sK1) ),
% 2.72/0.97      inference(instantiation,[status(thm)],[c_14]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_314,plain,
% 2.72/0.97      ( k1_relat_1(k2_funct_1(sK1)) = k2_relat_1(sK1) ),
% 2.72/0.97      inference(global_propositional_subsumption,
% 2.72/0.97                [status(thm)],
% 2.72/0.97                [c_312,c_20,c_19,c_18,c_31]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_2,plain,
% 2.72/0.97      ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0)) | ~ v1_relat_1(X0) ),
% 2.72/0.97      inference(cnf_transformation,[],[f35]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_631,plain,
% 2.72/0.97      ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0)) = iProver_top
% 2.72/0.97      | v1_relat_1(X0) != iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_1307,plain,
% 2.72/0.97      ( r1_tarski(k10_relat_1(k2_funct_1(sK1),X0),k2_relat_1(sK1)) = iProver_top
% 2.72/0.97      | v1_relat_1(k2_funct_1(sK1)) != iProver_top ),
% 2.72/0.97      inference(superposition,[status(thm)],[c_314,c_631]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_22,plain,
% 2.72/0.97      ( v1_funct_1(sK1) = iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_46,plain,
% 2.72/0.97      ( v1_funct_1(X0) != iProver_top
% 2.72/0.97      | v1_relat_1(X0) != iProver_top
% 2.72/0.97      | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_48,plain,
% 2.72/0.97      ( v1_funct_1(sK1) != iProver_top
% 2.72/0.97      | v1_relat_1(k2_funct_1(sK1)) = iProver_top
% 2.72/0.97      | v1_relat_1(sK1) != iProver_top ),
% 2.72/0.97      inference(instantiation,[status(thm)],[c_46]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_1331,plain,
% 2.72/0.97      ( r1_tarski(k10_relat_1(k2_funct_1(sK1),X0),k2_relat_1(sK1)) = iProver_top ),
% 2.72/0.97      inference(global_propositional_subsumption,
% 2.72/0.97                [status(thm)],
% 2.72/0.97                [c_1307,c_21,c_22,c_48]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_11,plain,
% 2.72/0.97      ( ~ r1_tarski(X0,k2_relat_1(X1))
% 2.72/0.97      | ~ v1_funct_1(X1)
% 2.72/0.97      | ~ v1_relat_1(X1)
% 2.72/0.97      | k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 ),
% 2.72/0.97      inference(cnf_transformation,[],[f44]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_625,plain,
% 2.72/0.97      ( k9_relat_1(X0,k10_relat_1(X0,X1)) = X1
% 2.72/0.97      | r1_tarski(X1,k2_relat_1(X0)) != iProver_top
% 2.72/0.97      | v1_funct_1(X0) != iProver_top
% 2.72/0.97      | v1_relat_1(X0) != iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_1338,plain,
% 2.72/0.97      ( k9_relat_1(sK1,k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0))) = k10_relat_1(k2_funct_1(sK1),X0)
% 2.72/0.97      | v1_funct_1(sK1) != iProver_top
% 2.72/0.97      | v1_relat_1(sK1) != iProver_top ),
% 2.72/0.97      inference(superposition,[status(thm)],[c_1331,c_625]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_1393,plain,
% 2.72/0.97      ( k9_relat_1(sK1,k10_relat_1(sK1,k10_relat_1(k2_funct_1(sK1),X0))) = k10_relat_1(k2_funct_1(sK1),X0) ),
% 2.72/0.97      inference(global_propositional_subsumption,
% 2.72/0.97                [status(thm)],
% 2.72/0.97                [c_1338,c_21,c_22]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_4875,plain,
% 2.72/0.97      ( k9_relat_1(sK1,k1_setfam_1(k2_tarski(X0,k1_relat_1(sK1)))) = k10_relat_1(k2_funct_1(sK1),X0) ),
% 2.72/0.97      inference(demodulation,[status(thm)],[c_4871,c_1393]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_0,plain,
% 2.72/0.97      ( k1_setfam_1(k2_tarski(X0,X1)) = k1_setfam_1(k2_tarski(X1,X0)) ),
% 2.72/0.97      inference(cnf_transformation,[],[f54]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_1,plain,
% 2.72/0.97      ( ~ v1_relat_1(X0)
% 2.72/0.97      | k9_relat_1(X0,k1_setfam_1(k2_tarski(k1_relat_1(X0),X1))) = k9_relat_1(X0,X1) ),
% 2.72/0.97      inference(cnf_transformation,[],[f55]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_632,plain,
% 2.72/0.97      ( k9_relat_1(X0,k1_setfam_1(k2_tarski(k1_relat_1(X0),X1))) = k9_relat_1(X0,X1)
% 2.72/0.97      | v1_relat_1(X0) != iProver_top ),
% 2.72/0.97      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_1727,plain,
% 2.72/0.97      ( k9_relat_1(sK1,k1_setfam_1(k2_tarski(k1_relat_1(sK1),X0))) = k9_relat_1(sK1,X0) ),
% 2.72/0.97      inference(superposition,[status(thm)],[c_623,c_632]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_1879,plain,
% 2.72/0.97      ( k9_relat_1(sK1,k1_setfam_1(k2_tarski(X0,k1_relat_1(sK1)))) = k9_relat_1(sK1,X0) ),
% 2.72/0.97      inference(superposition,[status(thm)],[c_0,c_1727]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_4876,plain,
% 2.72/0.97      ( k10_relat_1(k2_funct_1(sK1),X0) = k9_relat_1(sK1,X0) ),
% 2.72/0.97      inference(light_normalisation,[status(thm)],[c_4875,c_1879]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_17,negated_conjecture,
% 2.72/0.97      ( k9_relat_1(sK1,sK0) != k10_relat_1(k2_funct_1(sK1),sK0) ),
% 2.72/0.97      inference(cnf_transformation,[],[f53]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_4961,plain,
% 2.72/0.97      ( k9_relat_1(sK1,sK0) != k9_relat_1(sK1,sK0) ),
% 2.72/0.97      inference(demodulation,[status(thm)],[c_4876,c_17]) ).
% 2.72/0.97  
% 2.72/0.97  cnf(c_4992,plain,
% 2.72/0.97      ( $false ),
% 2.72/0.97      inference(equality_resolution_simp,[status(thm)],[c_4961]) ).
% 2.72/0.97  
% 2.72/0.97  
% 2.72/0.97  % SZS output end CNFRefutation for theBenchmark.p
% 2.72/0.97  
% 2.72/0.97  ------                               Statistics
% 2.72/0.97  
% 2.72/0.97  ------ General
% 2.72/0.97  
% 2.72/0.97  abstr_ref_over_cycles:                  0
% 2.72/0.97  abstr_ref_under_cycles:                 0
% 2.72/0.97  gc_basic_clause_elim:                   0
% 2.72/0.97  forced_gc_time:                         0
% 2.72/0.97  parsing_time:                           0.009
% 2.72/0.97  unif_index_cands_time:                  0.
% 2.72/0.97  unif_index_add_time:                    0.
% 2.72/0.97  orderings_time:                         0.
% 2.72/0.97  out_proof_time:                         0.008
% 2.72/0.97  total_time:                             0.206
% 2.72/0.97  num_of_symbols:                         46
% 2.72/0.97  num_of_terms:                           6209
% 2.72/0.97  
% 2.72/0.97  ------ Preprocessing
% 2.72/0.97  
% 2.72/0.97  num_of_splits:                          0
% 2.72/0.97  num_of_split_atoms:                     0
% 2.72/0.97  num_of_reused_defs:                     0
% 2.72/0.97  num_eq_ax_congr_red:                    2
% 2.72/0.97  num_of_sem_filtered_clauses:            1
% 2.72/0.97  num_of_subtypes:                        0
% 2.72/0.97  monotx_restored_types:                  0
% 2.72/0.97  sat_num_of_epr_types:                   0
% 2.72/0.97  sat_num_of_non_cyclic_types:            0
% 2.72/0.97  sat_guarded_non_collapsed_types:        0
% 2.72/0.97  num_pure_diseq_elim:                    0
% 2.72/0.97  simp_replaced_by:                       0
% 2.72/0.97  res_preprocessed:                       96
% 2.72/0.97  prep_upred:                             0
% 2.72/0.97  prep_unflattend:                        9
% 2.72/0.97  smt_new_axioms:                         0
% 2.72/0.97  pred_elim_cands:                        4
% 2.72/0.97  pred_elim:                              1
% 2.72/0.97  pred_elim_cl:                           -2
% 2.72/0.97  pred_elim_cycles:                       3
% 2.72/0.97  merged_defs:                            0
% 2.72/0.97  merged_defs_ncl:                        0
% 2.72/0.97  bin_hyper_res:                          0
% 2.72/0.97  prep_cycles:                            3
% 2.72/0.97  pred_elim_time:                         0.002
% 2.72/0.97  splitting_time:                         0.
% 2.72/0.97  sem_filter_time:                        0.
% 2.72/0.97  monotx_time:                            0.
% 2.72/0.97  subtype_inf_time:                       0.
% 2.72/0.97  
% 2.72/0.97  ------ Problem properties
% 2.72/0.97  
% 2.72/0.97  clauses:                                23
% 2.72/0.97  conjectures:                            3
% 2.72/0.97  epr:                                    2
% 2.72/0.97  horn:                                   23
% 2.72/0.97  ground:                                 7
% 2.72/0.97  unary:                                  12
% 2.72/0.97  binary:                                 6
% 2.72/0.97  lits:                                   40
% 2.72/0.97  lits_eq:                                17
% 2.72/0.97  fd_pure:                                0
% 2.72/0.97  fd_pseudo:                              0
% 2.72/0.97  fd_cond:                                0
% 2.72/0.97  fd_pseudo_cond:                         0
% 2.72/0.97  ac_symbols:                             0
% 2.72/0.97  
% 2.72/0.97  ------ Propositional Solver
% 2.72/0.97  
% 2.72/0.97  prop_solver_calls:                      24
% 2.72/0.97  prop_fast_solver_calls:                 571
% 2.72/0.97  smt_solver_calls:                       0
% 2.72/0.97  smt_fast_solver_calls:                  0
% 2.72/0.97  prop_num_of_clauses:                    2105
% 2.72/0.97  prop_preprocess_simplified:             6111
% 2.72/0.97  prop_fo_subsumed:                       26
% 2.72/0.97  prop_solver_time:                       0.
% 2.72/0.97  smt_solver_time:                        0.
% 2.72/0.97  smt_fast_solver_time:                   0.
% 2.72/0.97  prop_fast_solver_time:                  0.
% 2.72/0.97  prop_unsat_core_time:                   0.
% 2.72/0.97  
% 2.72/0.97  ------ QBF
% 2.72/0.97  
% 2.72/0.97  qbf_q_res:                              0
% 2.72/0.97  qbf_num_tautologies:                    0
% 2.72/0.97  qbf_prep_cycles:                        0
% 2.72/0.97  
% 2.72/0.97  ------ BMC1
% 2.72/0.97  
% 2.72/0.97  bmc1_current_bound:                     -1
% 2.72/0.97  bmc1_last_solved_bound:                 -1
% 2.72/0.97  bmc1_unsat_core_size:                   -1
% 2.72/0.97  bmc1_unsat_core_parents_size:           -1
% 2.72/0.97  bmc1_merge_next_fun:                    0
% 2.72/0.97  bmc1_unsat_core_clauses_time:           0.
% 2.72/0.97  
% 2.72/0.97  ------ Instantiation
% 2.72/0.97  
% 2.72/0.97  inst_num_of_clauses:                    882
% 2.72/0.97  inst_num_in_passive:                    311
% 2.72/0.97  inst_num_in_active:                     342
% 2.72/0.97  inst_num_in_unprocessed:                229
% 2.72/0.97  inst_num_of_loops:                      350
% 2.72/0.97  inst_num_of_learning_restarts:          0
% 2.72/0.97  inst_num_moves_active_passive:          5
% 2.72/0.97  inst_lit_activity:                      0
% 2.72/0.97  inst_lit_activity_moves:                0
% 2.72/0.97  inst_num_tautologies:                   0
% 2.72/0.97  inst_num_prop_implied:                  0
% 2.72/0.97  inst_num_existing_simplified:           0
% 2.72/0.97  inst_num_eq_res_simplified:             0
% 2.72/0.97  inst_num_child_elim:                    0
% 2.72/0.97  inst_num_of_dismatching_blockings:      501
% 2.72/0.97  inst_num_of_non_proper_insts:           785
% 2.72/0.97  inst_num_of_duplicates:                 0
% 2.72/0.97  inst_inst_num_from_inst_to_res:         0
% 2.72/0.97  inst_dismatching_checking_time:         0.
% 2.72/0.97  
% 2.72/0.97  ------ Resolution
% 2.72/0.97  
% 2.72/0.97  res_num_of_clauses:                     0
% 2.72/0.97  res_num_in_passive:                     0
% 2.72/0.97  res_num_in_active:                      0
% 2.72/0.97  res_num_of_loops:                       99
% 2.72/0.97  res_forward_subset_subsumed:            77
% 2.72/0.97  res_backward_subset_subsumed:           0
% 2.72/0.97  res_forward_subsumed:                   0
% 2.72/0.97  res_backward_subsumed:                  0
% 2.72/0.97  res_forward_subsumption_resolution:     0
% 2.72/0.97  res_backward_subsumption_resolution:    0
% 2.72/0.97  res_clause_to_clause_subsumption:       208
% 2.72/0.97  res_orphan_elimination:                 0
% 2.72/0.97  res_tautology_del:                      93
% 2.72/0.97  res_num_eq_res_simplified:              0
% 2.72/0.97  res_num_sel_changes:                    0
% 2.72/0.97  res_moves_from_active_to_pass:          0
% 2.72/0.97  
% 2.72/0.97  ------ Superposition
% 2.72/0.97  
% 2.72/0.97  sup_time_total:                         0.
% 2.72/0.97  sup_time_generating:                    0.
% 2.72/0.97  sup_time_sim_full:                      0.
% 2.72/0.97  sup_time_sim_immed:                     0.
% 2.72/0.97  
% 2.72/0.97  sup_num_of_clauses:                     76
% 2.72/0.97  sup_num_in_active:                      49
% 2.72/0.97  sup_num_in_passive:                     27
% 2.72/0.97  sup_num_of_loops:                       68
% 2.72/0.97  sup_fw_superposition:                   58
% 2.72/0.97  sup_bw_superposition:                   32
% 2.72/0.97  sup_immediate_simplified:               21
% 2.72/0.97  sup_given_eliminated:                   1
% 2.72/0.97  comparisons_done:                       0
% 2.72/0.97  comparisons_avoided:                    0
% 2.72/0.97  
% 2.72/0.97  ------ Simplifications
% 2.72/0.97  
% 2.72/0.97  
% 2.72/0.97  sim_fw_subset_subsumed:                 2
% 2.72/0.97  sim_bw_subset_subsumed:                 0
% 2.72/0.97  sim_fw_subsumed:                        2
% 2.72/0.97  sim_bw_subsumed:                        0
% 2.72/0.97  sim_fw_subsumption_res:                 0
% 2.72/0.97  sim_bw_subsumption_res:                 0
% 2.72/0.97  sim_tautology_del:                      0
% 2.72/0.97  sim_eq_tautology_del:                   0
% 2.72/0.97  sim_eq_res_simp:                        0
% 2.72/0.97  sim_fw_demodulated:                     11
% 2.72/0.97  sim_bw_demodulated:                     20
% 2.72/0.97  sim_light_normalised:                   18
% 2.72/0.97  sim_joinable_taut:                      0
% 2.72/0.97  sim_joinable_simp:                      0
% 2.72/0.97  sim_ac_normalised:                      0
% 2.72/0.97  sim_smt_subsumption:                    0
% 2.72/0.97  
%------------------------------------------------------------------------------
