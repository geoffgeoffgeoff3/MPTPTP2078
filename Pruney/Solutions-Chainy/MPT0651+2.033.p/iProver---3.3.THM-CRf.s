%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:50:32 EST 2020

% Result     : Theorem 1.32s
% Output     : CNFRefutation 1.32s
% Verified   : 
% Statistics : Number of formulae       :   93 ( 962 expanded)
%              Number of clauses        :   60 ( 281 expanded)
%              Number of leaves         :    9 ( 191 expanded)
%              Depth                    :   17
%              Number of atoms          :  268 (3951 expanded)
%              Number of equality atoms :  132 (1519 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
          & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( ( v1_funct_1(X0)
          & v1_relat_1(X0) )
       => ( v2_funct_1(X0)
         => ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
            & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f19,plain,(
    ? [X0] :
      ( ( k1_relat_1(X0) != k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
        | k1_relat_1(X0) != k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) )
      & v2_funct_1(X0)
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f20,plain,(
    ? [X0] :
      ( ( k1_relat_1(X0) != k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
        | k1_relat_1(X0) != k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) )
      & v2_funct_1(X0)
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f19])).

fof(f21,plain,
    ( ? [X0] :
        ( ( k1_relat_1(X0) != k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
          | k1_relat_1(X0) != k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) )
        & v2_funct_1(X0)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
   => ( ( k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))
        | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) )
      & v2_funct_1(sK0)
      & v1_funct_1(sK0)
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,
    ( ( k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))
      | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) )
    & v2_funct_1(sK0)
    & v1_funct_1(sK0)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f20,f21])).

fof(f32,plain,(
    v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f16,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f15])).

fof(f27,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0] :
      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f24,plain,(
    ! [X0] :
      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f18,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f17])).

fof(f30,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f33,plain,(
    v2_funct_1(sK0) ),
    inference(cnf_transformation,[],[f22])).

fof(f31,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f22])).

fof(f29,plain,(
    ! [X0] :
      ( k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f23,plain,(
    ! [X0,X1] :
      ( r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r1_tarski(k2_relat_1(X0),k1_relat_1(X1))
           => k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,X1))
          | ~ r1_tarski(k2_relat_1(X0),k1_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,X1))
          | ~ r1_tarski(k2_relat_1(X0),k1_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f11])).

fof(f25,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,X1))
      | ~ r1_tarski(k2_relat_1(X0),k1_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f34,plain,
    ( k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))
    | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) ),
    inference(cnf_transformation,[],[f22])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
           => k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0))
          | ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0))
          | ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f13])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0))
      | ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f14])).

cnf(c_10,negated_conjecture,
    ( v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_324,negated_conjecture,
    ( v1_funct_1(sK0) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_484,plain,
    ( v1_funct_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_324])).

cnf(c_5,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_326,plain,
    ( ~ v1_funct_1(X0_39)
    | ~ v1_relat_1(X0_39)
    | v1_relat_1(k2_funct_1(X0_39)) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_483,plain,
    ( v1_funct_1(X0_39) != iProver_top
    | v1_relat_1(X0_39) != iProver_top
    | v1_relat_1(k2_funct_1(X0_39)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_326])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_330,plain,
    ( ~ v1_relat_1(X0_39)
    | k10_relat_1(X0_39,k2_relat_1(X0_39)) = k1_relat_1(X0_39) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_479,plain,
    ( k10_relat_1(X0_39,k2_relat_1(X0_39)) = k1_relat_1(X0_39)
    | v1_relat_1(X0_39) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_330])).

cnf(c_874,plain,
    ( k10_relat_1(k2_funct_1(X0_39),k2_relat_1(k2_funct_1(X0_39))) = k1_relat_1(k2_funct_1(X0_39))
    | v1_funct_1(X0_39) != iProver_top
    | v1_relat_1(X0_39) != iProver_top ),
    inference(superposition,[status(thm)],[c_483,c_479])).

cnf(c_1469,plain,
    ( k10_relat_1(k2_funct_1(sK0),k2_relat_1(k2_funct_1(sK0))) = k1_relat_1(k2_funct_1(sK0))
    | v1_relat_1(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_484,c_874])).

cnf(c_6,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_9,negated_conjecture,
    ( v2_funct_1(sK0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_138,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_9])).

cnf(c_139,plain,
    ( ~ v1_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k2_relat_1(k2_funct_1(sK0)) = k1_relat_1(sK0) ),
    inference(unflattening,[status(thm)],[c_138])).

cnf(c_11,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_19,plain,
    ( ~ v2_funct_1(sK0)
    | ~ v1_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k2_relat_1(k2_funct_1(sK0)) = k1_relat_1(sK0) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_141,plain,
    ( k2_relat_1(k2_funct_1(sK0)) = k1_relat_1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_139,c_11,c_10,c_9,c_19])).

cnf(c_321,plain,
    ( k2_relat_1(k2_funct_1(sK0)) = k1_relat_1(sK0) ),
    inference(subtyping,[status(esa)],[c_141])).

cnf(c_7,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_130,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_9])).

cnf(c_131,plain,
    ( ~ v1_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k1_relat_1(k2_funct_1(sK0)) = k2_relat_1(sK0) ),
    inference(unflattening,[status(thm)],[c_130])).

cnf(c_16,plain,
    ( ~ v2_funct_1(sK0)
    | ~ v1_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k1_relat_1(k2_funct_1(sK0)) = k2_relat_1(sK0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_133,plain,
    ( k1_relat_1(k2_funct_1(sK0)) = k2_relat_1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_131,c_11,c_10,c_9,c_16])).

cnf(c_322,plain,
    ( k1_relat_1(k2_funct_1(sK0)) = k2_relat_1(sK0) ),
    inference(subtyping,[status(esa)],[c_133])).

cnf(c_1481,plain,
    ( k10_relat_1(k2_funct_1(sK0),k1_relat_1(sK0)) = k2_relat_1(sK0)
    | v1_relat_1(sK0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1469,c_321,c_322])).

cnf(c_12,plain,
    ( v1_relat_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1846,plain,
    ( k10_relat_1(k2_funct_1(sK0),k1_relat_1(sK0)) = k2_relat_1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1481,c_12])).

cnf(c_0,plain,
    ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_331,plain,
    ( r1_tarski(k10_relat_1(X0_39,X0_38),k1_relat_1(X0_39))
    | ~ v1_relat_1(X0_39) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_478,plain,
    ( r1_tarski(k10_relat_1(X0_39,X0_38),k1_relat_1(X0_39)) = iProver_top
    | v1_relat_1(X0_39) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_331])).

cnf(c_723,plain,
    ( r1_tarski(k10_relat_1(k2_funct_1(sK0),X0_38),k2_relat_1(sK0)) = iProver_top
    | v1_relat_1(k2_funct_1(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_322,c_478])).

cnf(c_13,plain,
    ( v1_funct_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_21,plain,
    ( v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_23,plain,
    ( v1_funct_1(sK0) != iProver_top
    | v1_relat_1(k2_funct_1(sK0)) = iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_21])).

cnf(c_996,plain,
    ( r1_tarski(k10_relat_1(k2_funct_1(sK0),X0_38),k2_relat_1(sK0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_723,c_12,c_13,c_23])).

cnf(c_1850,plain,
    ( r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1846,c_996])).

cnf(c_2,plain,
    ( ~ r1_tarski(k2_relat_1(X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k5_relat_1(X0,X1)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_329,plain,
    ( ~ r1_tarski(k2_relat_1(X0_39),k1_relat_1(X1_39))
    | ~ v1_relat_1(X0_39)
    | ~ v1_relat_1(X1_39)
    | k1_relat_1(k5_relat_1(X0_39,X1_39)) = k1_relat_1(X0_39) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_480,plain,
    ( k1_relat_1(k5_relat_1(X0_39,X1_39)) = k1_relat_1(X0_39)
    | r1_tarski(k2_relat_1(X0_39),k1_relat_1(X1_39)) != iProver_top
    | v1_relat_1(X0_39) != iProver_top
    | v1_relat_1(X1_39) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_329])).

cnf(c_789,plain,
    ( k1_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(X0_39)
    | r1_tarski(k2_relat_1(X0_39),k2_relat_1(sK0)) != iProver_top
    | v1_relat_1(X0_39) != iProver_top
    | v1_relat_1(k2_funct_1(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_322,c_480])).

cnf(c_1058,plain,
    ( v1_relat_1(X0_39) != iProver_top
    | r1_tarski(k2_relat_1(X0_39),k2_relat_1(sK0)) != iProver_top
    | k1_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(X0_39) ),
    inference(global_propositional_subsumption,[status(thm)],[c_789,c_12,c_13,c_23])).

cnf(c_1059,plain,
    ( k1_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(X0_39)
    | r1_tarski(k2_relat_1(X0_39),k2_relat_1(sK0)) != iProver_top
    | v1_relat_1(X0_39) != iProver_top ),
    inference(renaming,[status(thm)],[c_1058])).

cnf(c_1859,plain,
    ( k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) = k1_relat_1(sK0)
    | v1_relat_1(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1850,c_1059])).

cnf(c_1061,plain,
    ( k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) = k1_relat_1(sK0)
    | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1059])).

cnf(c_2039,plain,
    ( k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) = k1_relat_1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1859,c_12,c_1061,c_1850])).

cnf(c_8,negated_conjecture,
    ( k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))
    | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_325,negated_conjecture,
    ( k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))
    | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_2042,plain,
    ( k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) != k1_relat_1(sK0)
    | k1_relat_1(sK0) != k1_relat_1(sK0) ),
    inference(demodulation,[status(thm)],[c_2039,c_325])).

cnf(c_3,plain,
    ( ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k5_relat_1(X1,X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_328,plain,
    ( ~ r1_tarski(k1_relat_1(X0_39),k2_relat_1(X1_39))
    | ~ v1_relat_1(X0_39)
    | ~ v1_relat_1(X1_39)
    | k2_relat_1(k5_relat_1(X1_39,X0_39)) = k2_relat_1(X0_39) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_481,plain,
    ( k2_relat_1(k5_relat_1(X0_39,X1_39)) = k2_relat_1(X1_39)
    | r1_tarski(k1_relat_1(X1_39),k2_relat_1(X0_39)) != iProver_top
    | v1_relat_1(X1_39) != iProver_top
    | v1_relat_1(X0_39) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_328])).

cnf(c_883,plain,
    ( k2_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k2_relat_1(k2_funct_1(sK0))
    | r1_tarski(k2_relat_1(sK0),k2_relat_1(X0_39)) != iProver_top
    | v1_relat_1(X0_39) != iProver_top
    | v1_relat_1(k2_funct_1(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_322,c_481])).

cnf(c_897,plain,
    ( k2_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(sK0)
    | r1_tarski(k2_relat_1(sK0),k2_relat_1(X0_39)) != iProver_top
    | v1_relat_1(X0_39) != iProver_top
    | v1_relat_1(k2_funct_1(sK0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_883,c_321])).

cnf(c_1278,plain,
    ( v1_relat_1(X0_39) != iProver_top
    | r1_tarski(k2_relat_1(sK0),k2_relat_1(X0_39)) != iProver_top
    | k2_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_897,c_12,c_13,c_23])).

cnf(c_1279,plain,
    ( k2_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(sK0)
    | r1_tarski(k2_relat_1(sK0),k2_relat_1(X0_39)) != iProver_top
    | v1_relat_1(X0_39) != iProver_top ),
    inference(renaming,[status(thm)],[c_1278])).

cnf(c_1281,plain,
    ( k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) = k1_relat_1(sK0)
    | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1279])).

cnf(c_333,plain,
    ( X0_38 = X0_38 ),
    theory(equality)).

cnf(c_563,plain,
    ( k1_relat_1(sK0) = k1_relat_1(sK0) ),
    inference(instantiation,[status(thm)],[c_333])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2042,c_1850,c_1281,c_563,c_12])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:51:06 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 1.32/1.04  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.32/1.04  
% 1.32/1.04  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.32/1.04  
% 1.32/1.04  ------  iProver source info
% 1.32/1.04  
% 1.32/1.04  git: date: 2020-06-30 10:37:57 +0100
% 1.32/1.04  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.32/1.04  git: non_committed_changes: false
% 1.32/1.04  git: last_make_outside_of_git: false
% 1.32/1.04  
% 1.32/1.04  ------ 
% 1.32/1.04  
% 1.32/1.04  ------ Input Options
% 1.32/1.04  
% 1.32/1.04  --out_options                           all
% 1.32/1.04  --tptp_safe_out                         true
% 1.32/1.04  --problem_path                          ""
% 1.32/1.04  --include_path                          ""
% 1.32/1.04  --clausifier                            res/vclausify_rel
% 1.32/1.04  --clausifier_options                    --mode clausify
% 1.32/1.04  --stdin                                 false
% 1.32/1.04  --stats_out                             all
% 1.32/1.04  
% 1.32/1.04  ------ General Options
% 1.32/1.04  
% 1.32/1.04  --fof                                   false
% 1.32/1.04  --time_out_real                         305.
% 1.32/1.04  --time_out_virtual                      -1.
% 1.32/1.04  --symbol_type_check                     false
% 1.32/1.04  --clausify_out                          false
% 1.32/1.04  --sig_cnt_out                           false
% 1.32/1.04  --trig_cnt_out                          false
% 1.32/1.04  --trig_cnt_out_tolerance                1.
% 1.32/1.04  --trig_cnt_out_sk_spl                   false
% 1.32/1.04  --abstr_cl_out                          false
% 1.32/1.04  
% 1.32/1.04  ------ Global Options
% 1.32/1.04  
% 1.32/1.04  --schedule                              default
% 1.32/1.04  --add_important_lit                     false
% 1.32/1.04  --prop_solver_per_cl                    1000
% 1.32/1.04  --min_unsat_core                        false
% 1.32/1.04  --soft_assumptions                      false
% 1.32/1.04  --soft_lemma_size                       3
% 1.32/1.04  --prop_impl_unit_size                   0
% 1.32/1.04  --prop_impl_unit                        []
% 1.32/1.04  --share_sel_clauses                     true
% 1.32/1.04  --reset_solvers                         false
% 1.32/1.04  --bc_imp_inh                            [conj_cone]
% 1.32/1.04  --conj_cone_tolerance                   3.
% 1.32/1.04  --extra_neg_conj                        none
% 1.32/1.04  --large_theory_mode                     true
% 1.32/1.04  --prolific_symb_bound                   200
% 1.32/1.04  --lt_threshold                          2000
% 1.32/1.04  --clause_weak_htbl                      true
% 1.32/1.04  --gc_record_bc_elim                     false
% 1.32/1.04  
% 1.32/1.04  ------ Preprocessing Options
% 1.32/1.04  
% 1.32/1.04  --preprocessing_flag                    true
% 1.32/1.04  --time_out_prep_mult                    0.1
% 1.32/1.04  --splitting_mode                        input
% 1.32/1.04  --splitting_grd                         true
% 1.32/1.04  --splitting_cvd                         false
% 1.32/1.04  --splitting_cvd_svl                     false
% 1.32/1.04  --splitting_nvd                         32
% 1.32/1.04  --sub_typing                            true
% 1.32/1.04  --prep_gs_sim                           true
% 1.32/1.04  --prep_unflatten                        true
% 1.32/1.04  --prep_res_sim                          true
% 1.32/1.04  --prep_upred                            true
% 1.32/1.04  --prep_sem_filter                       exhaustive
% 1.32/1.04  --prep_sem_filter_out                   false
% 1.32/1.04  --pred_elim                             true
% 1.32/1.04  --res_sim_input                         true
% 1.32/1.04  --eq_ax_congr_red                       true
% 1.32/1.04  --pure_diseq_elim                       true
% 1.32/1.04  --brand_transform                       false
% 1.32/1.04  --non_eq_to_eq                          false
% 1.32/1.04  --prep_def_merge                        true
% 1.32/1.04  --prep_def_merge_prop_impl              false
% 1.32/1.04  --prep_def_merge_mbd                    true
% 1.32/1.04  --prep_def_merge_tr_red                 false
% 1.32/1.04  --prep_def_merge_tr_cl                  false
% 1.32/1.04  --smt_preprocessing                     true
% 1.32/1.04  --smt_ac_axioms                         fast
% 1.32/1.04  --preprocessed_out                      false
% 1.32/1.04  --preprocessed_stats                    false
% 1.32/1.04  
% 1.32/1.04  ------ Abstraction refinement Options
% 1.32/1.04  
% 1.32/1.04  --abstr_ref                             []
% 1.32/1.04  --abstr_ref_prep                        false
% 1.32/1.04  --abstr_ref_until_sat                   false
% 1.32/1.04  --abstr_ref_sig_restrict                funpre
% 1.32/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 1.32/1.04  --abstr_ref_under                       []
% 1.32/1.04  
% 1.32/1.04  ------ SAT Options
% 1.32/1.04  
% 1.32/1.04  --sat_mode                              false
% 1.32/1.04  --sat_fm_restart_options                ""
% 1.32/1.04  --sat_gr_def                            false
% 1.32/1.04  --sat_epr_types                         true
% 1.32/1.04  --sat_non_cyclic_types                  false
% 1.32/1.04  --sat_finite_models                     false
% 1.32/1.04  --sat_fm_lemmas                         false
% 1.32/1.04  --sat_fm_prep                           false
% 1.32/1.04  --sat_fm_uc_incr                        true
% 1.32/1.04  --sat_out_model                         small
% 1.32/1.04  --sat_out_clauses                       false
% 1.32/1.04  
% 1.32/1.04  ------ QBF Options
% 1.32/1.04  
% 1.32/1.04  --qbf_mode                              false
% 1.32/1.04  --qbf_elim_univ                         false
% 1.32/1.04  --qbf_dom_inst                          none
% 1.32/1.04  --qbf_dom_pre_inst                      false
% 1.32/1.04  --qbf_sk_in                             false
% 1.32/1.04  --qbf_pred_elim                         true
% 1.32/1.04  --qbf_split                             512
% 1.32/1.04  
% 1.32/1.04  ------ BMC1 Options
% 1.32/1.04  
% 1.32/1.04  --bmc1_incremental                      false
% 1.32/1.04  --bmc1_axioms                           reachable_all
% 1.32/1.04  --bmc1_min_bound                        0
% 1.32/1.04  --bmc1_max_bound                        -1
% 1.32/1.04  --bmc1_max_bound_default                -1
% 1.32/1.04  --bmc1_symbol_reachability              true
% 1.32/1.04  --bmc1_property_lemmas                  false
% 1.32/1.04  --bmc1_k_induction                      false
% 1.32/1.04  --bmc1_non_equiv_states                 false
% 1.32/1.04  --bmc1_deadlock                         false
% 1.32/1.04  --bmc1_ucm                              false
% 1.32/1.04  --bmc1_add_unsat_core                   none
% 1.32/1.04  --bmc1_unsat_core_children              false
% 1.32/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 1.32/1.04  --bmc1_out_stat                         full
% 1.32/1.04  --bmc1_ground_init                      false
% 1.32/1.04  --bmc1_pre_inst_next_state              false
% 1.32/1.04  --bmc1_pre_inst_state                   false
% 1.32/1.04  --bmc1_pre_inst_reach_state             false
% 1.32/1.04  --bmc1_out_unsat_core                   false
% 1.32/1.04  --bmc1_aig_witness_out                  false
% 1.32/1.04  --bmc1_verbose                          false
% 1.32/1.04  --bmc1_dump_clauses_tptp                false
% 1.32/1.04  --bmc1_dump_unsat_core_tptp             false
% 1.32/1.04  --bmc1_dump_file                        -
% 1.32/1.04  --bmc1_ucm_expand_uc_limit              128
% 1.32/1.04  --bmc1_ucm_n_expand_iterations          6
% 1.32/1.04  --bmc1_ucm_extend_mode                  1
% 1.32/1.04  --bmc1_ucm_init_mode                    2
% 1.32/1.04  --bmc1_ucm_cone_mode                    none
% 1.32/1.04  --bmc1_ucm_reduced_relation_type        0
% 1.32/1.04  --bmc1_ucm_relax_model                  4
% 1.32/1.04  --bmc1_ucm_full_tr_after_sat            true
% 1.32/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 1.32/1.04  --bmc1_ucm_layered_model                none
% 1.32/1.04  --bmc1_ucm_max_lemma_size               10
% 1.32/1.04  
% 1.32/1.04  ------ AIG Options
% 1.32/1.04  
% 1.32/1.04  --aig_mode                              false
% 1.32/1.04  
% 1.32/1.04  ------ Instantiation Options
% 1.32/1.04  
% 1.32/1.04  --instantiation_flag                    true
% 1.32/1.04  --inst_sos_flag                         false
% 1.32/1.04  --inst_sos_phase                        true
% 1.32/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.32/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.32/1.04  --inst_lit_sel_side                     num_symb
% 1.32/1.04  --inst_solver_per_active                1400
% 1.32/1.04  --inst_solver_calls_frac                1.
% 1.32/1.04  --inst_passive_queue_type               priority_queues
% 1.32/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.32/1.04  --inst_passive_queues_freq              [25;2]
% 1.32/1.04  --inst_dismatching                      true
% 1.32/1.04  --inst_eager_unprocessed_to_passive     true
% 1.32/1.04  --inst_prop_sim_given                   true
% 1.32/1.04  --inst_prop_sim_new                     false
% 1.32/1.04  --inst_subs_new                         false
% 1.32/1.04  --inst_eq_res_simp                      false
% 1.32/1.04  --inst_subs_given                       false
% 1.32/1.04  --inst_orphan_elimination               true
% 1.32/1.04  --inst_learning_loop_flag               true
% 1.32/1.04  --inst_learning_start                   3000
% 1.32/1.04  --inst_learning_factor                  2
% 1.32/1.04  --inst_start_prop_sim_after_learn       3
% 1.32/1.04  --inst_sel_renew                        solver
% 1.32/1.04  --inst_lit_activity_flag                true
% 1.32/1.04  --inst_restr_to_given                   false
% 1.32/1.04  --inst_activity_threshold               500
% 1.32/1.04  --inst_out_proof                        true
% 1.32/1.04  
% 1.32/1.04  ------ Resolution Options
% 1.32/1.04  
% 1.32/1.04  --resolution_flag                       true
% 1.32/1.04  --res_lit_sel                           adaptive
% 1.32/1.04  --res_lit_sel_side                      none
% 1.32/1.04  --res_ordering                          kbo
% 1.32/1.04  --res_to_prop_solver                    active
% 1.32/1.04  --res_prop_simpl_new                    false
% 1.32/1.04  --res_prop_simpl_given                  true
% 1.32/1.04  --res_passive_queue_type                priority_queues
% 1.32/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.32/1.04  --res_passive_queues_freq               [15;5]
% 1.32/1.04  --res_forward_subs                      full
% 1.32/1.04  --res_backward_subs                     full
% 1.32/1.04  --res_forward_subs_resolution           true
% 1.32/1.04  --res_backward_subs_resolution          true
% 1.32/1.04  --res_orphan_elimination                true
% 1.32/1.04  --res_time_limit                        2.
% 1.32/1.04  --res_out_proof                         true
% 1.32/1.04  
% 1.32/1.04  ------ Superposition Options
% 1.32/1.04  
% 1.32/1.04  --superposition_flag                    true
% 1.32/1.04  --sup_passive_queue_type                priority_queues
% 1.32/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.32/1.04  --sup_passive_queues_freq               [8;1;4]
% 1.32/1.04  --demod_completeness_check              fast
% 1.32/1.04  --demod_use_ground                      true
% 1.32/1.04  --sup_to_prop_solver                    passive
% 1.32/1.04  --sup_prop_simpl_new                    true
% 1.32/1.04  --sup_prop_simpl_given                  true
% 1.32/1.04  --sup_fun_splitting                     false
% 1.32/1.04  --sup_smt_interval                      50000
% 1.32/1.04  
% 1.32/1.04  ------ Superposition Simplification Setup
% 1.32/1.04  
% 1.32/1.04  --sup_indices_passive                   []
% 1.32/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.32/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.32/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.32/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 1.32/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.32/1.04  --sup_full_bw                           [BwDemod]
% 1.32/1.04  --sup_immed_triv                        [TrivRules]
% 1.32/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.32/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.32/1.04  --sup_immed_bw_main                     []
% 1.32/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.32/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 1.32/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.32/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.32/1.04  
% 1.32/1.04  ------ Combination Options
% 1.32/1.04  
% 1.32/1.04  --comb_res_mult                         3
% 1.32/1.04  --comb_sup_mult                         2
% 1.32/1.04  --comb_inst_mult                        10
% 1.32/1.04  
% 1.32/1.04  ------ Debug Options
% 1.32/1.04  
% 1.32/1.04  --dbg_backtrace                         false
% 1.32/1.04  --dbg_dump_prop_clauses                 false
% 1.32/1.04  --dbg_dump_prop_clauses_file            -
% 1.32/1.04  --dbg_out_stat                          false
% 1.32/1.04  ------ Parsing...
% 1.32/1.04  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.32/1.04  
% 1.32/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 1.32/1.04  
% 1.32/1.04  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.32/1.04  
% 1.32/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.32/1.04  ------ Proving...
% 1.32/1.04  ------ Problem Properties 
% 1.32/1.04  
% 1.32/1.04  
% 1.32/1.04  clauses                                 11
% 1.32/1.04  conjectures                             3
% 1.32/1.04  EPR                                     2
% 1.32/1.04  Horn                                    11
% 1.32/1.04  unary                                   4
% 1.32/1.04  binary                                  3
% 1.32/1.04  lits                                    24
% 1.32/1.04  lits eq                                 7
% 1.32/1.04  fd_pure                                 0
% 1.32/1.04  fd_pseudo                               0
% 1.32/1.04  fd_cond                                 0
% 1.32/1.04  fd_pseudo_cond                          0
% 1.32/1.04  AC symbols                              0
% 1.32/1.04  
% 1.32/1.04  ------ Schedule dynamic 5 is on 
% 1.32/1.04  
% 1.32/1.04  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.32/1.04  
% 1.32/1.04  
% 1.32/1.04  ------ 
% 1.32/1.04  Current options:
% 1.32/1.04  ------ 
% 1.32/1.04  
% 1.32/1.04  ------ Input Options
% 1.32/1.04  
% 1.32/1.04  --out_options                           all
% 1.32/1.04  --tptp_safe_out                         true
% 1.32/1.04  --problem_path                          ""
% 1.32/1.04  --include_path                          ""
% 1.32/1.04  --clausifier                            res/vclausify_rel
% 1.32/1.04  --clausifier_options                    --mode clausify
% 1.32/1.04  --stdin                                 false
% 1.32/1.04  --stats_out                             all
% 1.32/1.04  
% 1.32/1.04  ------ General Options
% 1.32/1.04  
% 1.32/1.04  --fof                                   false
% 1.32/1.04  --time_out_real                         305.
% 1.32/1.04  --time_out_virtual                      -1.
% 1.32/1.04  --symbol_type_check                     false
% 1.32/1.04  --clausify_out                          false
% 1.32/1.04  --sig_cnt_out                           false
% 1.32/1.04  --trig_cnt_out                          false
% 1.32/1.04  --trig_cnt_out_tolerance                1.
% 1.32/1.04  --trig_cnt_out_sk_spl                   false
% 1.32/1.04  --abstr_cl_out                          false
% 1.32/1.04  
% 1.32/1.04  ------ Global Options
% 1.32/1.04  
% 1.32/1.04  --schedule                              default
% 1.32/1.04  --add_important_lit                     false
% 1.32/1.04  --prop_solver_per_cl                    1000
% 1.32/1.04  --min_unsat_core                        false
% 1.32/1.04  --soft_assumptions                      false
% 1.32/1.04  --soft_lemma_size                       3
% 1.32/1.04  --prop_impl_unit_size                   0
% 1.32/1.04  --prop_impl_unit                        []
% 1.32/1.04  --share_sel_clauses                     true
% 1.32/1.04  --reset_solvers                         false
% 1.32/1.04  --bc_imp_inh                            [conj_cone]
% 1.32/1.04  --conj_cone_tolerance                   3.
% 1.32/1.04  --extra_neg_conj                        none
% 1.32/1.04  --large_theory_mode                     true
% 1.32/1.04  --prolific_symb_bound                   200
% 1.32/1.04  --lt_threshold                          2000
% 1.32/1.04  --clause_weak_htbl                      true
% 1.32/1.04  --gc_record_bc_elim                     false
% 1.32/1.04  
% 1.32/1.04  ------ Preprocessing Options
% 1.32/1.04  
% 1.32/1.04  --preprocessing_flag                    true
% 1.32/1.04  --time_out_prep_mult                    0.1
% 1.32/1.04  --splitting_mode                        input
% 1.32/1.04  --splitting_grd                         true
% 1.32/1.04  --splitting_cvd                         false
% 1.32/1.04  --splitting_cvd_svl                     false
% 1.32/1.04  --splitting_nvd                         32
% 1.32/1.04  --sub_typing                            true
% 1.32/1.04  --prep_gs_sim                           true
% 1.32/1.04  --prep_unflatten                        true
% 1.32/1.04  --prep_res_sim                          true
% 1.32/1.04  --prep_upred                            true
% 1.32/1.04  --prep_sem_filter                       exhaustive
% 1.32/1.04  --prep_sem_filter_out                   false
% 1.32/1.04  --pred_elim                             true
% 1.32/1.04  --res_sim_input                         true
% 1.32/1.04  --eq_ax_congr_red                       true
% 1.32/1.04  --pure_diseq_elim                       true
% 1.32/1.04  --brand_transform                       false
% 1.32/1.04  --non_eq_to_eq                          false
% 1.32/1.04  --prep_def_merge                        true
% 1.32/1.04  --prep_def_merge_prop_impl              false
% 1.32/1.04  --prep_def_merge_mbd                    true
% 1.32/1.04  --prep_def_merge_tr_red                 false
% 1.32/1.04  --prep_def_merge_tr_cl                  false
% 1.32/1.04  --smt_preprocessing                     true
% 1.32/1.04  --smt_ac_axioms                         fast
% 1.32/1.04  --preprocessed_out                      false
% 1.32/1.04  --preprocessed_stats                    false
% 1.32/1.04  
% 1.32/1.04  ------ Abstraction refinement Options
% 1.32/1.04  
% 1.32/1.04  --abstr_ref                             []
% 1.32/1.04  --abstr_ref_prep                        false
% 1.32/1.04  --abstr_ref_until_sat                   false
% 1.32/1.04  --abstr_ref_sig_restrict                funpre
% 1.32/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 1.32/1.04  --abstr_ref_under                       []
% 1.32/1.04  
% 1.32/1.04  ------ SAT Options
% 1.32/1.04  
% 1.32/1.04  --sat_mode                              false
% 1.32/1.04  --sat_fm_restart_options                ""
% 1.32/1.04  --sat_gr_def                            false
% 1.32/1.04  --sat_epr_types                         true
% 1.32/1.04  --sat_non_cyclic_types                  false
% 1.32/1.04  --sat_finite_models                     false
% 1.32/1.04  --sat_fm_lemmas                         false
% 1.32/1.04  --sat_fm_prep                           false
% 1.32/1.04  --sat_fm_uc_incr                        true
% 1.32/1.04  --sat_out_model                         small
% 1.32/1.04  --sat_out_clauses                       false
% 1.32/1.04  
% 1.32/1.04  ------ QBF Options
% 1.32/1.04  
% 1.32/1.04  --qbf_mode                              false
% 1.32/1.04  --qbf_elim_univ                         false
% 1.32/1.04  --qbf_dom_inst                          none
% 1.32/1.04  --qbf_dom_pre_inst                      false
% 1.32/1.04  --qbf_sk_in                             false
% 1.32/1.04  --qbf_pred_elim                         true
% 1.32/1.04  --qbf_split                             512
% 1.32/1.04  
% 1.32/1.04  ------ BMC1 Options
% 1.32/1.04  
% 1.32/1.04  --bmc1_incremental                      false
% 1.32/1.04  --bmc1_axioms                           reachable_all
% 1.32/1.04  --bmc1_min_bound                        0
% 1.32/1.04  --bmc1_max_bound                        -1
% 1.32/1.04  --bmc1_max_bound_default                -1
% 1.32/1.04  --bmc1_symbol_reachability              true
% 1.32/1.04  --bmc1_property_lemmas                  false
% 1.32/1.04  --bmc1_k_induction                      false
% 1.32/1.04  --bmc1_non_equiv_states                 false
% 1.32/1.04  --bmc1_deadlock                         false
% 1.32/1.04  --bmc1_ucm                              false
% 1.32/1.04  --bmc1_add_unsat_core                   none
% 1.32/1.04  --bmc1_unsat_core_children              false
% 1.32/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 1.32/1.04  --bmc1_out_stat                         full
% 1.32/1.04  --bmc1_ground_init                      false
% 1.32/1.04  --bmc1_pre_inst_next_state              false
% 1.32/1.04  --bmc1_pre_inst_state                   false
% 1.32/1.04  --bmc1_pre_inst_reach_state             false
% 1.32/1.04  --bmc1_out_unsat_core                   false
% 1.32/1.04  --bmc1_aig_witness_out                  false
% 1.32/1.04  --bmc1_verbose                          false
% 1.32/1.04  --bmc1_dump_clauses_tptp                false
% 1.32/1.04  --bmc1_dump_unsat_core_tptp             false
% 1.32/1.04  --bmc1_dump_file                        -
% 1.32/1.04  --bmc1_ucm_expand_uc_limit              128
% 1.32/1.04  --bmc1_ucm_n_expand_iterations          6
% 1.32/1.04  --bmc1_ucm_extend_mode                  1
% 1.32/1.04  --bmc1_ucm_init_mode                    2
% 1.32/1.04  --bmc1_ucm_cone_mode                    none
% 1.32/1.04  --bmc1_ucm_reduced_relation_type        0
% 1.32/1.04  --bmc1_ucm_relax_model                  4
% 1.32/1.04  --bmc1_ucm_full_tr_after_sat            true
% 1.32/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 1.32/1.04  --bmc1_ucm_layered_model                none
% 1.32/1.04  --bmc1_ucm_max_lemma_size               10
% 1.32/1.04  
% 1.32/1.04  ------ AIG Options
% 1.32/1.04  
% 1.32/1.04  --aig_mode                              false
% 1.32/1.04  
% 1.32/1.04  ------ Instantiation Options
% 1.32/1.04  
% 1.32/1.04  --instantiation_flag                    true
% 1.32/1.04  --inst_sos_flag                         false
% 1.32/1.04  --inst_sos_phase                        true
% 1.32/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.32/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.32/1.04  --inst_lit_sel_side                     none
% 1.32/1.04  --inst_solver_per_active                1400
% 1.32/1.04  --inst_solver_calls_frac                1.
% 1.32/1.04  --inst_passive_queue_type               priority_queues
% 1.32/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.32/1.04  --inst_passive_queues_freq              [25;2]
% 1.32/1.04  --inst_dismatching                      true
% 1.32/1.04  --inst_eager_unprocessed_to_passive     true
% 1.32/1.04  --inst_prop_sim_given                   true
% 1.32/1.04  --inst_prop_sim_new                     false
% 1.32/1.04  --inst_subs_new                         false
% 1.32/1.04  --inst_eq_res_simp                      false
% 1.32/1.04  --inst_subs_given                       false
% 1.32/1.04  --inst_orphan_elimination               true
% 1.32/1.04  --inst_learning_loop_flag               true
% 1.32/1.04  --inst_learning_start                   3000
% 1.32/1.04  --inst_learning_factor                  2
% 1.32/1.04  --inst_start_prop_sim_after_learn       3
% 1.32/1.04  --inst_sel_renew                        solver
% 1.32/1.04  --inst_lit_activity_flag                true
% 1.32/1.04  --inst_restr_to_given                   false
% 1.32/1.04  --inst_activity_threshold               500
% 1.32/1.04  --inst_out_proof                        true
% 1.32/1.04  
% 1.32/1.04  ------ Resolution Options
% 1.32/1.04  
% 1.32/1.04  --resolution_flag                       false
% 1.32/1.04  --res_lit_sel                           adaptive
% 1.32/1.04  --res_lit_sel_side                      none
% 1.32/1.04  --res_ordering                          kbo
% 1.32/1.04  --res_to_prop_solver                    active
% 1.32/1.04  --res_prop_simpl_new                    false
% 1.32/1.04  --res_prop_simpl_given                  true
% 1.32/1.04  --res_passive_queue_type                priority_queues
% 1.32/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.32/1.04  --res_passive_queues_freq               [15;5]
% 1.32/1.04  --res_forward_subs                      full
% 1.32/1.04  --res_backward_subs                     full
% 1.32/1.04  --res_forward_subs_resolution           true
% 1.32/1.04  --res_backward_subs_resolution          true
% 1.32/1.04  --res_orphan_elimination                true
% 1.32/1.04  --res_time_limit                        2.
% 1.32/1.04  --res_out_proof                         true
% 1.32/1.04  
% 1.32/1.04  ------ Superposition Options
% 1.32/1.04  
% 1.32/1.04  --superposition_flag                    true
% 1.32/1.04  --sup_passive_queue_type                priority_queues
% 1.32/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.32/1.04  --sup_passive_queues_freq               [8;1;4]
% 1.32/1.04  --demod_completeness_check              fast
% 1.32/1.04  --demod_use_ground                      true
% 1.32/1.04  --sup_to_prop_solver                    passive
% 1.32/1.04  --sup_prop_simpl_new                    true
% 1.32/1.04  --sup_prop_simpl_given                  true
% 1.32/1.04  --sup_fun_splitting                     false
% 1.32/1.04  --sup_smt_interval                      50000
% 1.32/1.04  
% 1.32/1.04  ------ Superposition Simplification Setup
% 1.32/1.04  
% 1.32/1.04  --sup_indices_passive                   []
% 1.32/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.32/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.32/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.32/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 1.32/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.32/1.04  --sup_full_bw                           [BwDemod]
% 1.32/1.04  --sup_immed_triv                        [TrivRules]
% 1.32/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.32/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.32/1.04  --sup_immed_bw_main                     []
% 1.32/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.32/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 1.32/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.32/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.32/1.04  
% 1.32/1.04  ------ Combination Options
% 1.32/1.04  
% 1.32/1.04  --comb_res_mult                         3
% 1.32/1.04  --comb_sup_mult                         2
% 1.32/1.04  --comb_inst_mult                        10
% 1.32/1.04  
% 1.32/1.04  ------ Debug Options
% 1.32/1.04  
% 1.32/1.04  --dbg_backtrace                         false
% 1.32/1.04  --dbg_dump_prop_clauses                 false
% 1.32/1.04  --dbg_dump_prop_clauses_file            -
% 1.32/1.04  --dbg_out_stat                          false
% 1.32/1.04  
% 1.32/1.04  
% 1.32/1.04  
% 1.32/1.04  
% 1.32/1.04  ------ Proving...
% 1.32/1.04  
% 1.32/1.04  
% 1.32/1.04  % SZS status Theorem for theBenchmark.p
% 1.32/1.04  
% 1.32/1.04  % SZS output start CNFRefutation for theBenchmark.p
% 1.32/1.04  
% 1.32/1.04  fof(f7,conjecture,(
% 1.32/1.04    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))))))),
% 1.32/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.32/1.04  
% 1.32/1.04  fof(f8,negated_conjecture,(
% 1.32/1.04    ~! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))))))),
% 1.32/1.04    inference(negated_conjecture,[],[f7])).
% 1.32/1.04  
% 1.32/1.04  fof(f19,plain,(
% 1.32/1.04    ? [X0] : (((k1_relat_1(X0) != k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) | k1_relat_1(X0) != k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))) & v2_funct_1(X0)) & (v1_funct_1(X0) & v1_relat_1(X0)))),
% 1.32/1.04    inference(ennf_transformation,[],[f8])).
% 1.32/1.04  
% 1.32/1.04  fof(f20,plain,(
% 1.32/1.04    ? [X0] : ((k1_relat_1(X0) != k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) | k1_relat_1(X0) != k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))) & v2_funct_1(X0) & v1_funct_1(X0) & v1_relat_1(X0))),
% 1.32/1.04    inference(flattening,[],[f19])).
% 1.32/1.04  
% 1.32/1.04  fof(f21,plain,(
% 1.32/1.04    ? [X0] : ((k1_relat_1(X0) != k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) | k1_relat_1(X0) != k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))) & v2_funct_1(X0) & v1_funct_1(X0) & v1_relat_1(X0)) => ((k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))) & v2_funct_1(sK0) & v1_funct_1(sK0) & v1_relat_1(sK0))),
% 1.32/1.04    introduced(choice_axiom,[])).
% 1.32/1.04  
% 1.32/1.04  fof(f22,plain,(
% 1.32/1.04    (k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))) & v2_funct_1(sK0) & v1_funct_1(sK0) & v1_relat_1(sK0)),
% 1.32/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f20,f21])).
% 1.32/1.04  
% 1.32/1.04  fof(f32,plain,(
% 1.32/1.04    v1_funct_1(sK0)),
% 1.32/1.04    inference(cnf_transformation,[],[f22])).
% 1.32/1.04  
% 1.32/1.04  fof(f5,axiom,(
% 1.32/1.04    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 1.32/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.32/1.04  
% 1.32/1.04  fof(f15,plain,(
% 1.32/1.04    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.32/1.04    inference(ennf_transformation,[],[f5])).
% 1.32/1.04  
% 1.32/1.04  fof(f16,plain,(
% 1.32/1.04    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.32/1.04    inference(flattening,[],[f15])).
% 1.32/1.04  
% 1.32/1.04  fof(f27,plain,(
% 1.32/1.04    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.32/1.04    inference(cnf_transformation,[],[f16])).
% 1.32/1.04  
% 1.32/1.04  fof(f2,axiom,(
% 1.32/1.04    ! [X0] : (v1_relat_1(X0) => k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0))),
% 1.32/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.32/1.04  
% 1.32/1.04  fof(f10,plain,(
% 1.32/1.04    ! [X0] : (k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) | ~v1_relat_1(X0))),
% 1.32/1.04    inference(ennf_transformation,[],[f2])).
% 1.32/1.04  
% 1.32/1.04  fof(f24,plain,(
% 1.32/1.04    ( ! [X0] : (k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 1.32/1.04    inference(cnf_transformation,[],[f10])).
% 1.32/1.04  
% 1.32/1.04  fof(f6,axiom,(
% 1.32/1.04    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 1.32/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.32/1.04  
% 1.32/1.04  fof(f17,plain,(
% 1.32/1.04    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.32/1.04    inference(ennf_transformation,[],[f6])).
% 1.32/1.04  
% 1.32/1.04  fof(f18,plain,(
% 1.32/1.04    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.32/1.04    inference(flattening,[],[f17])).
% 1.32/1.04  
% 1.32/1.04  fof(f30,plain,(
% 1.32/1.04    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.32/1.04    inference(cnf_transformation,[],[f18])).
% 1.32/1.04  
% 1.32/1.04  fof(f33,plain,(
% 1.32/1.04    v2_funct_1(sK0)),
% 1.32/1.04    inference(cnf_transformation,[],[f22])).
% 1.32/1.04  
% 1.32/1.04  fof(f31,plain,(
% 1.32/1.04    v1_relat_1(sK0)),
% 1.32/1.04    inference(cnf_transformation,[],[f22])).
% 1.32/1.04  
% 1.32/1.04  fof(f29,plain,(
% 1.32/1.04    ( ! [X0] : (k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.32/1.04    inference(cnf_transformation,[],[f18])).
% 1.32/1.04  
% 1.32/1.04  fof(f1,axiom,(
% 1.32/1.04    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)))),
% 1.32/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.32/1.04  
% 1.32/1.04  fof(f9,plain,(
% 1.32/1.04    ! [X0,X1] : (r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)) | ~v1_relat_1(X1))),
% 1.32/1.04    inference(ennf_transformation,[],[f1])).
% 1.32/1.04  
% 1.32/1.04  fof(f23,plain,(
% 1.32/1.04    ( ! [X0,X1] : (r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)) | ~v1_relat_1(X1)) )),
% 1.32/1.04    inference(cnf_transformation,[],[f9])).
% 1.32/1.04  
% 1.32/1.04  fof(f3,axiom,(
% 1.32/1.04    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r1_tarski(k2_relat_1(X0),k1_relat_1(X1)) => k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,X1)))))),
% 1.32/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.32/1.04  
% 1.32/1.04  fof(f11,plain,(
% 1.32/1.04    ! [X0] : (! [X1] : ((k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,X1)) | ~r1_tarski(k2_relat_1(X0),k1_relat_1(X1))) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.32/1.04    inference(ennf_transformation,[],[f3])).
% 1.32/1.04  
% 1.32/1.04  fof(f12,plain,(
% 1.32/1.04    ! [X0] : (! [X1] : (k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,X1)) | ~r1_tarski(k2_relat_1(X0),k1_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.32/1.04    inference(flattening,[],[f11])).
% 1.32/1.04  
% 1.32/1.04  fof(f25,plain,(
% 1.32/1.04    ( ! [X0,X1] : (k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,X1)) | ~r1_tarski(k2_relat_1(X0),k1_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.32/1.04    inference(cnf_transformation,[],[f12])).
% 1.32/1.04  
% 1.32/1.04  fof(f34,plain,(
% 1.32/1.04    k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))),
% 1.32/1.04    inference(cnf_transformation,[],[f22])).
% 1.32/1.04  
% 1.32/1.04  fof(f4,axiom,(
% 1.32/1.04    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) => k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)))))),
% 1.32/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.32/1.04  
% 1.32/1.04  fof(f13,plain,(
% 1.32/1.04    ! [X0] : (! [X1] : ((k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)) | ~r1_tarski(k1_relat_1(X0),k2_relat_1(X1))) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.32/1.04    inference(ennf_transformation,[],[f4])).
% 1.32/1.04  
% 1.32/1.04  fof(f14,plain,(
% 1.32/1.04    ! [X0] : (! [X1] : (k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)) | ~r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.32/1.04    inference(flattening,[],[f13])).
% 1.32/1.04  
% 1.32/1.04  fof(f26,plain,(
% 1.32/1.04    ( ! [X0,X1] : (k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)) | ~r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.32/1.04    inference(cnf_transformation,[],[f14])).
% 1.32/1.04  
% 1.32/1.04  cnf(c_10,negated_conjecture,
% 1.32/1.04      ( v1_funct_1(sK0) ),
% 1.32/1.04      inference(cnf_transformation,[],[f32]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_324,negated_conjecture,
% 1.32/1.04      ( v1_funct_1(sK0) ),
% 1.32/1.04      inference(subtyping,[status(esa)],[c_10]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_484,plain,
% 1.32/1.04      ( v1_funct_1(sK0) = iProver_top ),
% 1.32/1.04      inference(predicate_to_equality,[status(thm)],[c_324]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_5,plain,
% 1.32/1.04      ( ~ v1_funct_1(X0)
% 1.32/1.04      | ~ v1_relat_1(X0)
% 1.32/1.04      | v1_relat_1(k2_funct_1(X0)) ),
% 1.32/1.04      inference(cnf_transformation,[],[f27]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_326,plain,
% 1.32/1.04      ( ~ v1_funct_1(X0_39)
% 1.32/1.04      | ~ v1_relat_1(X0_39)
% 1.32/1.04      | v1_relat_1(k2_funct_1(X0_39)) ),
% 1.32/1.04      inference(subtyping,[status(esa)],[c_5]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_483,plain,
% 1.32/1.04      ( v1_funct_1(X0_39) != iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top
% 1.32/1.04      | v1_relat_1(k2_funct_1(X0_39)) = iProver_top ),
% 1.32/1.04      inference(predicate_to_equality,[status(thm)],[c_326]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1,plain,
% 1.32/1.04      ( ~ v1_relat_1(X0)
% 1.32/1.04      | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
% 1.32/1.04      inference(cnf_transformation,[],[f24]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_330,plain,
% 1.32/1.04      ( ~ v1_relat_1(X0_39)
% 1.32/1.04      | k10_relat_1(X0_39,k2_relat_1(X0_39)) = k1_relat_1(X0_39) ),
% 1.32/1.04      inference(subtyping,[status(esa)],[c_1]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_479,plain,
% 1.32/1.04      ( k10_relat_1(X0_39,k2_relat_1(X0_39)) = k1_relat_1(X0_39)
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top ),
% 1.32/1.04      inference(predicate_to_equality,[status(thm)],[c_330]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_874,plain,
% 1.32/1.04      ( k10_relat_1(k2_funct_1(X0_39),k2_relat_1(k2_funct_1(X0_39))) = k1_relat_1(k2_funct_1(X0_39))
% 1.32/1.04      | v1_funct_1(X0_39) != iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top ),
% 1.32/1.04      inference(superposition,[status(thm)],[c_483,c_479]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1469,plain,
% 1.32/1.04      ( k10_relat_1(k2_funct_1(sK0),k2_relat_1(k2_funct_1(sK0))) = k1_relat_1(k2_funct_1(sK0))
% 1.32/1.04      | v1_relat_1(sK0) != iProver_top ),
% 1.32/1.04      inference(superposition,[status(thm)],[c_484,c_874]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_6,plain,
% 1.32/1.04      ( ~ v2_funct_1(X0)
% 1.32/1.04      | ~ v1_funct_1(X0)
% 1.32/1.04      | ~ v1_relat_1(X0)
% 1.32/1.04      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 1.32/1.04      inference(cnf_transformation,[],[f30]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_9,negated_conjecture,
% 1.32/1.04      ( v2_funct_1(sK0) ),
% 1.32/1.04      inference(cnf_transformation,[],[f33]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_138,plain,
% 1.32/1.04      ( ~ v1_funct_1(X0)
% 1.32/1.04      | ~ v1_relat_1(X0)
% 1.32/1.04      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 1.32/1.04      | sK0 != X0 ),
% 1.32/1.04      inference(resolution_lifted,[status(thm)],[c_6,c_9]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_139,plain,
% 1.32/1.04      ( ~ v1_funct_1(sK0)
% 1.32/1.04      | ~ v1_relat_1(sK0)
% 1.32/1.04      | k2_relat_1(k2_funct_1(sK0)) = k1_relat_1(sK0) ),
% 1.32/1.04      inference(unflattening,[status(thm)],[c_138]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_11,negated_conjecture,
% 1.32/1.04      ( v1_relat_1(sK0) ),
% 1.32/1.04      inference(cnf_transformation,[],[f31]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_19,plain,
% 1.32/1.04      ( ~ v2_funct_1(sK0)
% 1.32/1.04      | ~ v1_funct_1(sK0)
% 1.32/1.04      | ~ v1_relat_1(sK0)
% 1.32/1.04      | k2_relat_1(k2_funct_1(sK0)) = k1_relat_1(sK0) ),
% 1.32/1.04      inference(instantiation,[status(thm)],[c_6]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_141,plain,
% 1.32/1.04      ( k2_relat_1(k2_funct_1(sK0)) = k1_relat_1(sK0) ),
% 1.32/1.04      inference(global_propositional_subsumption,
% 1.32/1.04                [status(thm)],
% 1.32/1.04                [c_139,c_11,c_10,c_9,c_19]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_321,plain,
% 1.32/1.04      ( k2_relat_1(k2_funct_1(sK0)) = k1_relat_1(sK0) ),
% 1.32/1.04      inference(subtyping,[status(esa)],[c_141]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_7,plain,
% 1.32/1.04      ( ~ v2_funct_1(X0)
% 1.32/1.04      | ~ v1_funct_1(X0)
% 1.32/1.04      | ~ v1_relat_1(X0)
% 1.32/1.04      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 1.32/1.04      inference(cnf_transformation,[],[f29]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_130,plain,
% 1.32/1.04      ( ~ v1_funct_1(X0)
% 1.32/1.04      | ~ v1_relat_1(X0)
% 1.32/1.04      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
% 1.32/1.04      | sK0 != X0 ),
% 1.32/1.04      inference(resolution_lifted,[status(thm)],[c_7,c_9]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_131,plain,
% 1.32/1.04      ( ~ v1_funct_1(sK0)
% 1.32/1.04      | ~ v1_relat_1(sK0)
% 1.32/1.04      | k1_relat_1(k2_funct_1(sK0)) = k2_relat_1(sK0) ),
% 1.32/1.04      inference(unflattening,[status(thm)],[c_130]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_16,plain,
% 1.32/1.04      ( ~ v2_funct_1(sK0)
% 1.32/1.04      | ~ v1_funct_1(sK0)
% 1.32/1.04      | ~ v1_relat_1(sK0)
% 1.32/1.04      | k1_relat_1(k2_funct_1(sK0)) = k2_relat_1(sK0) ),
% 1.32/1.04      inference(instantiation,[status(thm)],[c_7]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_133,plain,
% 1.32/1.04      ( k1_relat_1(k2_funct_1(sK0)) = k2_relat_1(sK0) ),
% 1.32/1.04      inference(global_propositional_subsumption,
% 1.32/1.04                [status(thm)],
% 1.32/1.04                [c_131,c_11,c_10,c_9,c_16]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_322,plain,
% 1.32/1.04      ( k1_relat_1(k2_funct_1(sK0)) = k2_relat_1(sK0) ),
% 1.32/1.04      inference(subtyping,[status(esa)],[c_133]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1481,plain,
% 1.32/1.04      ( k10_relat_1(k2_funct_1(sK0),k1_relat_1(sK0)) = k2_relat_1(sK0)
% 1.32/1.04      | v1_relat_1(sK0) != iProver_top ),
% 1.32/1.04      inference(light_normalisation,[status(thm)],[c_1469,c_321,c_322]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_12,plain,
% 1.32/1.04      ( v1_relat_1(sK0) = iProver_top ),
% 1.32/1.04      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1846,plain,
% 1.32/1.04      ( k10_relat_1(k2_funct_1(sK0),k1_relat_1(sK0)) = k2_relat_1(sK0) ),
% 1.32/1.04      inference(global_propositional_subsumption,
% 1.32/1.04                [status(thm)],
% 1.32/1.04                [c_1481,c_12]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_0,plain,
% 1.32/1.04      ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0)) | ~ v1_relat_1(X0) ),
% 1.32/1.04      inference(cnf_transformation,[],[f23]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_331,plain,
% 1.32/1.04      ( r1_tarski(k10_relat_1(X0_39,X0_38),k1_relat_1(X0_39))
% 1.32/1.04      | ~ v1_relat_1(X0_39) ),
% 1.32/1.04      inference(subtyping,[status(esa)],[c_0]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_478,plain,
% 1.32/1.04      ( r1_tarski(k10_relat_1(X0_39,X0_38),k1_relat_1(X0_39)) = iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top ),
% 1.32/1.04      inference(predicate_to_equality,[status(thm)],[c_331]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_723,plain,
% 1.32/1.04      ( r1_tarski(k10_relat_1(k2_funct_1(sK0),X0_38),k2_relat_1(sK0)) = iProver_top
% 1.32/1.04      | v1_relat_1(k2_funct_1(sK0)) != iProver_top ),
% 1.32/1.04      inference(superposition,[status(thm)],[c_322,c_478]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_13,plain,
% 1.32/1.04      ( v1_funct_1(sK0) = iProver_top ),
% 1.32/1.04      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_21,plain,
% 1.32/1.04      ( v1_funct_1(X0) != iProver_top
% 1.32/1.04      | v1_relat_1(X0) != iProver_top
% 1.32/1.04      | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
% 1.32/1.04      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_23,plain,
% 1.32/1.04      ( v1_funct_1(sK0) != iProver_top
% 1.32/1.04      | v1_relat_1(k2_funct_1(sK0)) = iProver_top
% 1.32/1.04      | v1_relat_1(sK0) != iProver_top ),
% 1.32/1.04      inference(instantiation,[status(thm)],[c_21]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_996,plain,
% 1.32/1.04      ( r1_tarski(k10_relat_1(k2_funct_1(sK0),X0_38),k2_relat_1(sK0)) = iProver_top ),
% 1.32/1.04      inference(global_propositional_subsumption,
% 1.32/1.04                [status(thm)],
% 1.32/1.04                [c_723,c_12,c_13,c_23]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1850,plain,
% 1.32/1.04      ( r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) = iProver_top ),
% 1.32/1.04      inference(superposition,[status(thm)],[c_1846,c_996]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_2,plain,
% 1.32/1.04      ( ~ r1_tarski(k2_relat_1(X0),k1_relat_1(X1))
% 1.32/1.04      | ~ v1_relat_1(X1)
% 1.32/1.04      | ~ v1_relat_1(X0)
% 1.32/1.04      | k1_relat_1(k5_relat_1(X0,X1)) = k1_relat_1(X0) ),
% 1.32/1.04      inference(cnf_transformation,[],[f25]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_329,plain,
% 1.32/1.04      ( ~ r1_tarski(k2_relat_1(X0_39),k1_relat_1(X1_39))
% 1.32/1.04      | ~ v1_relat_1(X0_39)
% 1.32/1.04      | ~ v1_relat_1(X1_39)
% 1.32/1.04      | k1_relat_1(k5_relat_1(X0_39,X1_39)) = k1_relat_1(X0_39) ),
% 1.32/1.04      inference(subtyping,[status(esa)],[c_2]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_480,plain,
% 1.32/1.04      ( k1_relat_1(k5_relat_1(X0_39,X1_39)) = k1_relat_1(X0_39)
% 1.32/1.04      | r1_tarski(k2_relat_1(X0_39),k1_relat_1(X1_39)) != iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top
% 1.32/1.04      | v1_relat_1(X1_39) != iProver_top ),
% 1.32/1.04      inference(predicate_to_equality,[status(thm)],[c_329]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_789,plain,
% 1.32/1.04      ( k1_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(X0_39)
% 1.32/1.04      | r1_tarski(k2_relat_1(X0_39),k2_relat_1(sK0)) != iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top
% 1.32/1.04      | v1_relat_1(k2_funct_1(sK0)) != iProver_top ),
% 1.32/1.04      inference(superposition,[status(thm)],[c_322,c_480]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1058,plain,
% 1.32/1.04      ( v1_relat_1(X0_39) != iProver_top
% 1.32/1.04      | r1_tarski(k2_relat_1(X0_39),k2_relat_1(sK0)) != iProver_top
% 1.32/1.04      | k1_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(X0_39) ),
% 1.32/1.04      inference(global_propositional_subsumption,
% 1.32/1.04                [status(thm)],
% 1.32/1.04                [c_789,c_12,c_13,c_23]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1059,plain,
% 1.32/1.04      ( k1_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(X0_39)
% 1.32/1.04      | r1_tarski(k2_relat_1(X0_39),k2_relat_1(sK0)) != iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top ),
% 1.32/1.04      inference(renaming,[status(thm)],[c_1058]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1859,plain,
% 1.32/1.04      ( k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) = k1_relat_1(sK0)
% 1.32/1.04      | v1_relat_1(sK0) != iProver_top ),
% 1.32/1.04      inference(superposition,[status(thm)],[c_1850,c_1059]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1061,plain,
% 1.32/1.04      ( k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) = k1_relat_1(sK0)
% 1.32/1.04      | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
% 1.32/1.04      | v1_relat_1(sK0) != iProver_top ),
% 1.32/1.04      inference(instantiation,[status(thm)],[c_1059]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_2039,plain,
% 1.32/1.04      ( k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) = k1_relat_1(sK0) ),
% 1.32/1.04      inference(global_propositional_subsumption,
% 1.32/1.04                [status(thm)],
% 1.32/1.04                [c_1859,c_12,c_1061,c_1850]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_8,negated_conjecture,
% 1.32/1.04      ( k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))
% 1.32/1.04      | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) ),
% 1.32/1.04      inference(cnf_transformation,[],[f34]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_325,negated_conjecture,
% 1.32/1.04      ( k1_relat_1(sK0) != k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0)))
% 1.32/1.04      | k1_relat_1(sK0) != k1_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) ),
% 1.32/1.04      inference(subtyping,[status(esa)],[c_8]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_2042,plain,
% 1.32/1.04      ( k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) != k1_relat_1(sK0)
% 1.32/1.04      | k1_relat_1(sK0) != k1_relat_1(sK0) ),
% 1.32/1.04      inference(demodulation,[status(thm)],[c_2039,c_325]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_3,plain,
% 1.32/1.04      ( ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
% 1.32/1.04      | ~ v1_relat_1(X1)
% 1.32/1.04      | ~ v1_relat_1(X0)
% 1.32/1.04      | k2_relat_1(k5_relat_1(X1,X0)) = k2_relat_1(X0) ),
% 1.32/1.04      inference(cnf_transformation,[],[f26]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_328,plain,
% 1.32/1.04      ( ~ r1_tarski(k1_relat_1(X0_39),k2_relat_1(X1_39))
% 1.32/1.04      | ~ v1_relat_1(X0_39)
% 1.32/1.04      | ~ v1_relat_1(X1_39)
% 1.32/1.04      | k2_relat_1(k5_relat_1(X1_39,X0_39)) = k2_relat_1(X0_39) ),
% 1.32/1.04      inference(subtyping,[status(esa)],[c_3]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_481,plain,
% 1.32/1.04      ( k2_relat_1(k5_relat_1(X0_39,X1_39)) = k2_relat_1(X1_39)
% 1.32/1.04      | r1_tarski(k1_relat_1(X1_39),k2_relat_1(X0_39)) != iProver_top
% 1.32/1.04      | v1_relat_1(X1_39) != iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top ),
% 1.32/1.04      inference(predicate_to_equality,[status(thm)],[c_328]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_883,plain,
% 1.32/1.04      ( k2_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k2_relat_1(k2_funct_1(sK0))
% 1.32/1.04      | r1_tarski(k2_relat_1(sK0),k2_relat_1(X0_39)) != iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top
% 1.32/1.04      | v1_relat_1(k2_funct_1(sK0)) != iProver_top ),
% 1.32/1.04      inference(superposition,[status(thm)],[c_322,c_481]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_897,plain,
% 1.32/1.04      ( k2_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(sK0)
% 1.32/1.04      | r1_tarski(k2_relat_1(sK0),k2_relat_1(X0_39)) != iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top
% 1.32/1.04      | v1_relat_1(k2_funct_1(sK0)) != iProver_top ),
% 1.32/1.04      inference(light_normalisation,[status(thm)],[c_883,c_321]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1278,plain,
% 1.32/1.04      ( v1_relat_1(X0_39) != iProver_top
% 1.32/1.04      | r1_tarski(k2_relat_1(sK0),k2_relat_1(X0_39)) != iProver_top
% 1.32/1.04      | k2_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(sK0) ),
% 1.32/1.04      inference(global_propositional_subsumption,
% 1.32/1.04                [status(thm)],
% 1.32/1.04                [c_897,c_12,c_13,c_23]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1279,plain,
% 1.32/1.04      ( k2_relat_1(k5_relat_1(X0_39,k2_funct_1(sK0))) = k1_relat_1(sK0)
% 1.32/1.04      | r1_tarski(k2_relat_1(sK0),k2_relat_1(X0_39)) != iProver_top
% 1.32/1.04      | v1_relat_1(X0_39) != iProver_top ),
% 1.32/1.04      inference(renaming,[status(thm)],[c_1278]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_1281,plain,
% 1.32/1.04      ( k2_relat_1(k5_relat_1(sK0,k2_funct_1(sK0))) = k1_relat_1(sK0)
% 1.32/1.04      | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
% 1.32/1.04      | v1_relat_1(sK0) != iProver_top ),
% 1.32/1.04      inference(instantiation,[status(thm)],[c_1279]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_333,plain,( X0_38 = X0_38 ),theory(equality) ).
% 1.32/1.04  
% 1.32/1.04  cnf(c_563,plain,
% 1.32/1.04      ( k1_relat_1(sK0) = k1_relat_1(sK0) ),
% 1.32/1.04      inference(instantiation,[status(thm)],[c_333]) ).
% 1.32/1.04  
% 1.32/1.04  cnf(contradiction,plain,
% 1.32/1.04      ( $false ),
% 1.32/1.04      inference(minisat,[status(thm)],[c_2042,c_1850,c_1281,c_563,c_12]) ).
% 1.32/1.04  
% 1.32/1.04  
% 1.32/1.04  % SZS output end CNFRefutation for theBenchmark.p
% 1.32/1.04  
% 1.32/1.04  ------                               Statistics
% 1.32/1.04  
% 1.32/1.04  ------ General
% 1.32/1.04  
% 1.32/1.04  abstr_ref_over_cycles:                  0
% 1.32/1.04  abstr_ref_under_cycles:                 0
% 1.32/1.04  gc_basic_clause_elim:                   0
% 1.32/1.04  forced_gc_time:                         0
% 1.32/1.04  parsing_time:                           0.008
% 1.32/1.04  unif_index_cands_time:                  0.
% 1.32/1.04  unif_index_add_time:                    0.
% 1.32/1.04  orderings_time:                         0.
% 1.32/1.04  out_proof_time:                         0.008
% 1.32/1.04  total_time:                             0.091
% 1.32/1.04  num_of_symbols:                         43
% 1.32/1.04  num_of_terms:                           1285
% 1.32/1.04  
% 1.32/1.04  ------ Preprocessing
% 1.32/1.04  
% 1.32/1.04  num_of_splits:                          0
% 1.32/1.04  num_of_split_atoms:                     0
% 1.32/1.04  num_of_reused_defs:                     0
% 1.32/1.04  num_eq_ax_congr_red:                    10
% 1.32/1.04  num_of_sem_filtered_clauses:            1
% 1.32/1.04  num_of_subtypes:                        2
% 1.32/1.04  monotx_restored_types:                  0
% 1.32/1.04  sat_num_of_epr_types:                   0
% 1.32/1.04  sat_num_of_non_cyclic_types:            0
% 1.32/1.04  sat_guarded_non_collapsed_types:        0
% 1.32/1.04  num_pure_diseq_elim:                    0
% 1.32/1.04  simp_replaced_by:                       0
% 1.32/1.04  res_preprocessed:                       54
% 1.32/1.04  prep_upred:                             0
% 1.32/1.04  prep_unflattend:                        2
% 1.32/1.04  smt_new_axioms:                         0
% 1.32/1.04  pred_elim_cands:                        3
% 1.32/1.04  pred_elim:                              1
% 1.32/1.04  pred_elim_cl:                           1
% 1.32/1.04  pred_elim_cycles:                       3
% 1.32/1.04  merged_defs:                            0
% 1.32/1.04  merged_defs_ncl:                        0
% 1.32/1.04  bin_hyper_res:                          0
% 1.32/1.04  prep_cycles:                            4
% 1.32/1.04  pred_elim_time:                         0.002
% 1.32/1.04  splitting_time:                         0.
% 1.32/1.04  sem_filter_time:                        0.
% 1.32/1.04  monotx_time:                            0.
% 1.32/1.04  subtype_inf_time:                       0.
% 1.32/1.04  
% 1.32/1.04  ------ Problem properties
% 1.32/1.04  
% 1.32/1.04  clauses:                                11
% 1.32/1.04  conjectures:                            3
% 1.32/1.04  epr:                                    2
% 1.32/1.04  horn:                                   11
% 1.32/1.04  ground:                                 5
% 1.32/1.04  unary:                                  4
% 1.32/1.04  binary:                                 3
% 1.32/1.04  lits:                                   24
% 1.32/1.04  lits_eq:                                7
% 1.32/1.04  fd_pure:                                0
% 1.32/1.04  fd_pseudo:                              0
% 1.32/1.04  fd_cond:                                0
% 1.32/1.04  fd_pseudo_cond:                         0
% 1.32/1.04  ac_symbols:                             0
% 1.32/1.04  
% 1.32/1.04  ------ Propositional Solver
% 1.32/1.04  
% 1.32/1.04  prop_solver_calls:                      29
% 1.32/1.04  prop_fast_solver_calls:                 379
% 1.32/1.04  smt_solver_calls:                       0
% 1.32/1.04  smt_fast_solver_calls:                  0
% 1.32/1.04  prop_num_of_clauses:                    590
% 1.32/1.04  prop_preprocess_simplified:             1946
% 1.32/1.04  prop_fo_subsumed:                       18
% 1.32/1.04  prop_solver_time:                       0.
% 1.32/1.04  smt_solver_time:                        0.
% 1.32/1.04  smt_fast_solver_time:                   0.
% 1.32/1.04  prop_fast_solver_time:                  0.
% 1.32/1.04  prop_unsat_core_time:                   0.
% 1.32/1.04  
% 1.32/1.04  ------ QBF
% 1.32/1.04  
% 1.32/1.04  qbf_q_res:                              0
% 1.32/1.04  qbf_num_tautologies:                    0
% 1.32/1.04  qbf_prep_cycles:                        0
% 1.32/1.04  
% 1.32/1.04  ------ BMC1
% 1.32/1.04  
% 1.32/1.04  bmc1_current_bound:                     -1
% 1.32/1.04  bmc1_last_solved_bound:                 -1
% 1.32/1.04  bmc1_unsat_core_size:                   -1
% 1.32/1.04  bmc1_unsat_core_parents_size:           -1
% 1.32/1.04  bmc1_merge_next_fun:                    0
% 1.32/1.04  bmc1_unsat_core_clauses_time:           0.
% 1.32/1.04  
% 1.32/1.04  ------ Instantiation
% 1.32/1.04  
% 1.32/1.04  inst_num_of_clauses:                    214
% 1.32/1.04  inst_num_in_passive:                    1
% 1.32/1.04  inst_num_in_active:                     141
% 1.32/1.04  inst_num_in_unprocessed:                72
% 1.32/1.04  inst_num_of_loops:                      150
% 1.32/1.04  inst_num_of_learning_restarts:          0
% 1.32/1.04  inst_num_moves_active_passive:          5
% 1.32/1.04  inst_lit_activity:                      0
% 1.32/1.04  inst_lit_activity_moves:                0
% 1.32/1.04  inst_num_tautologies:                   0
% 1.32/1.04  inst_num_prop_implied:                  0
% 1.32/1.04  inst_num_existing_simplified:           0
% 1.32/1.04  inst_num_eq_res_simplified:             0
% 1.32/1.04  inst_num_child_elim:                    0
% 1.32/1.04  inst_num_of_dismatching_blockings:      146
% 1.32/1.04  inst_num_of_non_proper_insts:           321
% 1.32/1.04  inst_num_of_duplicates:                 0
% 1.32/1.04  inst_inst_num_from_inst_to_res:         0
% 1.32/1.04  inst_dismatching_checking_time:         0.
% 1.32/1.04  
% 1.32/1.04  ------ Resolution
% 1.32/1.04  
% 1.32/1.04  res_num_of_clauses:                     0
% 1.32/1.04  res_num_in_passive:                     0
% 1.32/1.04  res_num_in_active:                      0
% 1.32/1.04  res_num_of_loops:                       58
% 1.32/1.05  res_forward_subset_subsumed:            61
% 1.32/1.05  res_backward_subset_subsumed:           0
% 1.32/1.05  res_forward_subsumed:                   0
% 1.32/1.05  res_backward_subsumed:                  0
% 1.32/1.05  res_forward_subsumption_resolution:     0
% 1.32/1.05  res_backward_subsumption_resolution:    0
% 1.32/1.05  res_clause_to_clause_subsumption:       73
% 1.32/1.05  res_orphan_elimination:                 0
% 1.32/1.05  res_tautology_del:                      76
% 1.32/1.05  res_num_eq_res_simplified:              0
% 1.32/1.05  res_num_sel_changes:                    0
% 1.32/1.05  res_moves_from_active_to_pass:          0
% 1.32/1.05  
% 1.32/1.05  ------ Superposition
% 1.32/1.05  
% 1.32/1.05  sup_time_total:                         0.
% 1.32/1.05  sup_time_generating:                    0.
% 1.32/1.05  sup_time_sim_full:                      0.
% 1.32/1.05  sup_time_sim_immed:                     0.
% 1.32/1.05  
% 1.32/1.05  sup_num_of_clauses:                     40
% 1.32/1.05  sup_num_in_active:                      28
% 1.32/1.05  sup_num_in_passive:                     12
% 1.32/1.05  sup_num_of_loops:                       29
% 1.32/1.05  sup_fw_superposition:                   17
% 1.32/1.05  sup_bw_superposition:                   15
% 1.32/1.05  sup_immediate_simplified:               9
% 1.32/1.05  sup_given_eliminated:                   0
% 1.32/1.05  comparisons_done:                       0
% 1.32/1.05  comparisons_avoided:                    0
% 1.32/1.05  
% 1.32/1.05  ------ Simplifications
% 1.32/1.05  
% 1.32/1.05  
% 1.32/1.05  sim_fw_subset_subsumed:                 1
% 1.32/1.05  sim_bw_subset_subsumed:                 0
% 1.32/1.05  sim_fw_subsumed:                        0
% 1.32/1.05  sim_bw_subsumed:                        0
% 1.32/1.05  sim_fw_subsumption_res:                 0
% 1.32/1.05  sim_bw_subsumption_res:                 0
% 1.32/1.05  sim_tautology_del:                      0
% 1.32/1.05  sim_eq_tautology_del:                   0
% 1.32/1.05  sim_eq_res_simp:                        0
% 1.32/1.05  sim_fw_demodulated:                     0
% 1.32/1.05  sim_bw_demodulated:                     1
% 1.32/1.05  sim_light_normalised:                   8
% 1.32/1.05  sim_joinable_taut:                      0
% 1.32/1.05  sim_joinable_simp:                      0
% 1.32/1.05  sim_ac_normalised:                      0
% 1.32/1.05  sim_smt_subsumption:                    0
% 1.32/1.05  
%------------------------------------------------------------------------------
