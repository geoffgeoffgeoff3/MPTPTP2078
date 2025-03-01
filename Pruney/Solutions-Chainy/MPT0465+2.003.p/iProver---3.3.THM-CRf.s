%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:43:37 EST 2020

% Result     : Theorem 19.53s
% Output     : CNFRefutation 19.53s
% Verified   : 
% Statistics : Number of formulae       :   87 ( 161 expanded)
%              Number of clauses        :   52 (  59 expanded)
%              Number of leaves         :   15 (  51 expanded)
%              Depth                    :   13
%              Number of atoms          :  193 ( 450 expanded)
%              Number of equality atoms :   72 (  99 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f1])).

fof(f5,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k6_subset_1(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k6_subset_1(X0,X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f31,plain,(
    ! [X0,X1] : k3_tarski(k2_tarski(X0,X1)) = k3_tarski(k2_tarski(X0,k6_subset_1(X1,X0))) ),
    inference(definition_unfolding,[],[f19,f23,f23,f24])).

fof(f9,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ! [X1] :
            ( v1_relat_1(X1)
           => ! [X2] :
                ( v1_relat_1(X2)
               => r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2))) ) ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f14,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2)))
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2)))
          & v1_relat_1(X2) )
     => ( ~ r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,sK2)),k5_relat_1(X0,k6_subset_1(X1,sK2)))
        & v1_relat_1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2)))
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
     => ( ? [X2] :
            ( ~ r1_tarski(k6_subset_1(k5_relat_1(X0,sK1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(sK1,X2)))
            & v1_relat_1(X2) )
        & v1_relat_1(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f15,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2)))
                & v1_relat_1(X2) )
            & v1_relat_1(X1) )
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k6_subset_1(k5_relat_1(sK0,X1),k5_relat_1(sK0,X2)),k5_relat_1(sK0,k6_subset_1(X1,X2)))
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,
    ( ~ r1_tarski(k6_subset_1(k5_relat_1(sK0,sK1),k5_relat_1(sK0,sK2)),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))
    & v1_relat_1(sK2)
    & v1_relat_1(sK1)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f14,f17,f16,f15])).

fof(f28,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f18])).

fof(f29,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f18])).

fof(f27,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f18])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => k2_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)) = k5_relat_1(X0,k2_xboole_0(X1,X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k2_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)) = k5_relat_1(X0,k2_xboole_0(X1,X2))
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f26,plain,(
    ! [X2,X0,X1] :
      ( k2_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)) = k5_relat_1(X0,k2_xboole_0(X1,X2))
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( k3_tarski(k2_tarski(k5_relat_1(X0,X1),k5_relat_1(X0,X2))) = k5_relat_1(X0,k3_tarski(k2_tarski(X1,X2)))
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f26,f23,f23])).

fof(f4,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f3,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f33,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k2_tarski(X0,X1))) ),
    inference(definition_unfolding,[],[f21,f23])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k4_xboole_0(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k4_xboole_0(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f25,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k4_xboole_0(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f34,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k6_subset_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f25,f24])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_xboole_0(X1,X2))
     => r1_tarski(k4_xboole_0(X0,X1),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k4_xboole_0(X0,X1),X2)
      | ~ r1_tarski(X0,k2_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f20,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k4_xboole_0(X0,X1),X2)
      | ~ r1_tarski(X0,k2_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k6_subset_1(X0,X1),X2)
      | ~ r1_tarski(X0,k3_tarski(k2_tarski(X1,X2))) ) ),
    inference(definition_unfolding,[],[f20,f24,f23])).

fof(f30,plain,(
    ~ r1_tarski(k6_subset_1(k5_relat_1(sK0,sK1),k5_relat_1(sK0,sK2)),k5_relat_1(sK0,k6_subset_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f18])).

cnf(c_113,plain,
    ( ~ r1_tarski(X0_37,X1_37)
    | r1_tarski(X2_37,X3_37)
    | X2_37 != X0_37
    | X3_37 != X1_37 ),
    theory(equality)).

cnf(c_1036,plain,
    ( ~ r1_tarski(X0_37,X1_37)
    | r1_tarski(k5_relat_1(X2_37,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
    | k5_relat_1(X2_37,sK1) != X0_37
    | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != X1_37 ),
    inference(instantiation,[status(thm)],[c_113])).

cnf(c_1495,plain,
    ( ~ r1_tarski(X0_37,k5_relat_1(X1_37,X2_37))
    | r1_tarski(k5_relat_1(X3_37,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
    | k5_relat_1(X3_37,sK1) != X0_37
    | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != k5_relat_1(X1_37,X2_37) ),
    inference(instantiation,[status(thm)],[c_1036])).

cnf(c_4065,plain,
    ( ~ r1_tarski(k5_relat_1(X0_37,sK1),k5_relat_1(X1_37,X2_37))
    | r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
    | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != k5_relat_1(X1_37,X2_37)
    | k5_relat_1(sK0,sK1) != k5_relat_1(X0_37,sK1) ),
    inference(instantiation,[status(thm)],[c_1495])).

cnf(c_36851,plain,
    ( ~ r1_tarski(k5_relat_1(X0_37,sK1),k5_relat_1(X1_37,k3_tarski(k2_tarski(sK2,sK1))))
    | r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
    | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != k5_relat_1(X1_37,k3_tarski(k2_tarski(sK2,sK1)))
    | k5_relat_1(sK0,sK1) != k5_relat_1(X0_37,sK1) ),
    inference(instantiation,[status(thm)],[c_4065])).

cnf(c_36857,plain,
    ( r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
    | ~ r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1))))
    | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1)))
    | k5_relat_1(sK0,sK1) != k5_relat_1(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_36851])).

cnf(c_0,plain,
    ( k3_tarski(k2_tarski(X0,k6_subset_1(X1,X0))) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_104,plain,
    ( k3_tarski(k2_tarski(X0_37,k6_subset_1(X1_37,X0_37))) = k3_tarski(k2_tarski(X0_37,X1_37)) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_13714,plain,
    ( k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2))) = k3_tarski(k2_tarski(sK2,sK1)) ),
    inference(instantiation,[status(thm)],[c_104])).

cnf(c_115,plain,
    ( X0_37 != X1_37
    | X2_37 != X3_37
    | k5_relat_1(X0_37,X2_37) = k5_relat_1(X1_37,X3_37) ),
    theory(equality)).

cnf(c_2067,plain,
    ( k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) = k5_relat_1(X0_37,X1_37)
    | k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2))) != X1_37
    | sK0 != X0_37 ),
    inference(instantiation,[status(thm)],[c_115])).

cnf(c_4896,plain,
    ( k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) = k5_relat_1(X0_37,k3_tarski(k2_tarski(sK2,sK1)))
    | k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2))) != k3_tarski(k2_tarski(sK2,sK1))
    | sK0 != X0_37 ),
    inference(instantiation,[status(thm)],[c_2067])).

cnf(c_4897,plain,
    ( k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) = k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1)))
    | k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2))) != k3_tarski(k2_tarski(sK2,sK1))
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_4896])).

cnf(c_8,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_96,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_271,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_96])).

cnf(c_7,negated_conjecture,
    ( v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_97,negated_conjecture,
    ( v1_relat_1(sK2) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_270,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_97])).

cnf(c_9,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_95,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_272,plain,
    ( v1_relat_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_95])).

cnf(c_5,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | k3_tarski(k2_tarski(k5_relat_1(X0,X2),k5_relat_1(X0,X1))) = k5_relat_1(X0,k3_tarski(k2_tarski(X2,X1))) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_99,plain,
    ( ~ v1_relat_1(X0_37)
    | ~ v1_relat_1(X1_37)
    | ~ v1_relat_1(X2_37)
    | k3_tarski(k2_tarski(k5_relat_1(X0_37,X2_37),k5_relat_1(X0_37,X1_37))) = k5_relat_1(X0_37,k3_tarski(k2_tarski(X2_37,X1_37))) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_268,plain,
    ( k3_tarski(k2_tarski(k5_relat_1(X0_37,X1_37),k5_relat_1(X0_37,X2_37))) = k5_relat_1(X0_37,k3_tarski(k2_tarski(X1_37,X2_37)))
    | v1_relat_1(X0_37) != iProver_top
    | v1_relat_1(X1_37) != iProver_top
    | v1_relat_1(X2_37) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_99])).

cnf(c_984,plain,
    ( k3_tarski(k2_tarski(k5_relat_1(sK0,X0_37),k5_relat_1(sK0,X1_37))) = k5_relat_1(sK0,k3_tarski(k2_tarski(X0_37,X1_37)))
    | v1_relat_1(X0_37) != iProver_top
    | v1_relat_1(X1_37) != iProver_top ),
    inference(superposition,[status(thm)],[c_272,c_268])).

cnf(c_4157,plain,
    ( k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,X0_37))) = k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,X0_37)))
    | v1_relat_1(X0_37) != iProver_top ),
    inference(superposition,[status(thm)],[c_270,c_984])).

cnf(c_4267,plain,
    ( k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,sK1))) = k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1))) ),
    inference(superposition,[status(thm)],[c_271,c_4157])).

cnf(c_3,plain,
    ( k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f22])).

cnf(c_101,plain,
    ( k2_tarski(X0_37,X1_37) = k2_tarski(X1_37,X0_37) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_2,plain,
    ( r1_tarski(X0,k3_tarski(k2_tarski(X0,X1))) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_102,plain,
    ( r1_tarski(X0_37,k3_tarski(k2_tarski(X0_37,X1_37))) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_266,plain,
    ( r1_tarski(X0_37,k3_tarski(k2_tarski(X0_37,X1_37))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_102])).

cnf(c_449,plain,
    ( r1_tarski(X0_37,k3_tarski(k2_tarski(X1_37,X0_37))) = iProver_top ),
    inference(superposition,[status(thm)],[c_101,c_266])).

cnf(c_4461,plain,
    ( r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_4267,c_449])).

cnf(c_4491,plain,
    ( r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1)))) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4461])).

cnf(c_293,plain,
    ( ~ r1_tarski(X0_37,X1_37)
    | r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
    | k5_relat_1(sK0,sK1) != X0_37
    | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) != X1_37 ),
    inference(instantiation,[status(thm)],[c_113])).

cnf(c_321,plain,
    ( ~ r1_tarski(k5_relat_1(X0_37,X1_37),X2_37)
    | r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
    | k5_relat_1(sK0,sK1) != k5_relat_1(X0_37,X1_37)
    | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) != X2_37 ),
    inference(instantiation,[status(thm)],[c_293])).

cnf(c_388,plain,
    ( ~ r1_tarski(k5_relat_1(X0_37,X1_37),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
    | r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
    | k5_relat_1(sK0,sK1) != k5_relat_1(X0_37,X1_37)
    | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) != k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) ),
    inference(instantiation,[status(thm)],[c_321])).

cnf(c_846,plain,
    ( ~ r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
    | r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
    | k5_relat_1(sK0,sK1) != k5_relat_1(sK0,sK1)
    | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) != k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) ),
    inference(instantiation,[status(thm)],[c_388])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k6_subset_1(X0,X1)) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_100,plain,
    ( ~ v1_relat_1(X0_37)
    | v1_relat_1(k6_subset_1(X0_37,X1_37)) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_613,plain,
    ( v1_relat_1(k6_subset_1(sK1,sK2))
    | ~ v1_relat_1(sK1) ),
    inference(instantiation,[status(thm)],[c_100])).

cnf(c_492,plain,
    ( ~ v1_relat_1(k6_subset_1(sK1,sK2))
    | ~ v1_relat_1(sK2)
    | ~ v1_relat_1(sK0)
    | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) = k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) ),
    inference(instantiation,[status(thm)],[c_99])).

cnf(c_106,plain,
    ( X0_37 = X0_37 ),
    theory(equality)).

cnf(c_356,plain,
    ( k5_relat_1(sK0,sK1) = k5_relat_1(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_106])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,k3_tarski(k2_tarski(X1,X2)))
    | r1_tarski(k6_subset_1(X0,X1),X2) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_103,plain,
    ( ~ r1_tarski(X0_37,k3_tarski(k2_tarski(X1_37,X2_37)))
    | r1_tarski(k6_subset_1(X0_37,X1_37),X2_37) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_285,plain,
    ( ~ r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
    | r1_tarski(k6_subset_1(k5_relat_1(sK0,sK1),k5_relat_1(sK0,sK2)),k5_relat_1(sK0,k6_subset_1(sK1,sK2))) ),
    inference(instantiation,[status(thm)],[c_103])).

cnf(c_123,plain,
    ( sK0 = sK0 ),
    inference(instantiation,[status(thm)],[c_106])).

cnf(c_6,negated_conjecture,
    ( ~ r1_tarski(k6_subset_1(k5_relat_1(sK0,sK1),k5_relat_1(sK0,sK2)),k5_relat_1(sK0,k6_subset_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f30])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_36857,c_13714,c_4897,c_4491,c_846,c_613,c_492,c_356,c_285,c_123,c_6,c_7,c_8,c_9])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n012.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:39:37 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 19.53/3.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 19.53/3.00  
% 19.53/3.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 19.53/3.00  
% 19.53/3.00  ------  iProver source info
% 19.53/3.00  
% 19.53/3.00  git: date: 2020-06-30 10:37:57 +0100
% 19.53/3.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 19.53/3.00  git: non_committed_changes: false
% 19.53/3.00  git: last_make_outside_of_git: false
% 19.53/3.00  
% 19.53/3.00  ------ 
% 19.53/3.00  
% 19.53/3.00  ------ Input Options
% 19.53/3.00  
% 19.53/3.00  --out_options                           all
% 19.53/3.00  --tptp_safe_out                         true
% 19.53/3.00  --problem_path                          ""
% 19.53/3.00  --include_path                          ""
% 19.53/3.00  --clausifier                            res/vclausify_rel
% 19.53/3.00  --clausifier_options                    ""
% 19.53/3.00  --stdin                                 false
% 19.53/3.00  --stats_out                             all
% 19.53/3.00  
% 19.53/3.00  ------ General Options
% 19.53/3.00  
% 19.53/3.00  --fof                                   false
% 19.53/3.00  --time_out_real                         305.
% 19.53/3.00  --time_out_virtual                      -1.
% 19.53/3.00  --symbol_type_check                     false
% 19.53/3.00  --clausify_out                          false
% 19.53/3.00  --sig_cnt_out                           false
% 19.53/3.00  --trig_cnt_out                          false
% 19.53/3.00  --trig_cnt_out_tolerance                1.
% 19.53/3.00  --trig_cnt_out_sk_spl                   false
% 19.53/3.00  --abstr_cl_out                          false
% 19.53/3.00  
% 19.53/3.00  ------ Global Options
% 19.53/3.00  
% 19.53/3.00  --schedule                              default
% 19.53/3.00  --add_important_lit                     false
% 19.53/3.00  --prop_solver_per_cl                    1000
% 19.53/3.00  --min_unsat_core                        false
% 19.53/3.00  --soft_assumptions                      false
% 19.53/3.00  --soft_lemma_size                       3
% 19.53/3.00  --prop_impl_unit_size                   0
% 19.53/3.00  --prop_impl_unit                        []
% 19.53/3.00  --share_sel_clauses                     true
% 19.53/3.00  --reset_solvers                         false
% 19.53/3.00  --bc_imp_inh                            [conj_cone]
% 19.53/3.00  --conj_cone_tolerance                   3.
% 19.53/3.00  --extra_neg_conj                        none
% 19.53/3.00  --large_theory_mode                     true
% 19.53/3.00  --prolific_symb_bound                   200
% 19.53/3.00  --lt_threshold                          2000
% 19.53/3.00  --clause_weak_htbl                      true
% 19.53/3.00  --gc_record_bc_elim                     false
% 19.53/3.00  
% 19.53/3.00  ------ Preprocessing Options
% 19.53/3.00  
% 19.53/3.00  --preprocessing_flag                    true
% 19.53/3.00  --time_out_prep_mult                    0.1
% 19.53/3.00  --splitting_mode                        input
% 19.53/3.00  --splitting_grd                         true
% 19.53/3.00  --splitting_cvd                         false
% 19.53/3.00  --splitting_cvd_svl                     false
% 19.53/3.00  --splitting_nvd                         32
% 19.53/3.00  --sub_typing                            true
% 19.53/3.00  --prep_gs_sim                           true
% 19.53/3.00  --prep_unflatten                        true
% 19.53/3.00  --prep_res_sim                          true
% 19.53/3.00  --prep_upred                            true
% 19.53/3.00  --prep_sem_filter                       exhaustive
% 19.53/3.00  --prep_sem_filter_out                   false
% 19.53/3.00  --pred_elim                             true
% 19.53/3.00  --res_sim_input                         true
% 19.53/3.00  --eq_ax_congr_red                       true
% 19.53/3.00  --pure_diseq_elim                       true
% 19.53/3.00  --brand_transform                       false
% 19.53/3.00  --non_eq_to_eq                          false
% 19.53/3.00  --prep_def_merge                        true
% 19.53/3.00  --prep_def_merge_prop_impl              false
% 19.53/3.00  --prep_def_merge_mbd                    true
% 19.53/3.00  --prep_def_merge_tr_red                 false
% 19.53/3.00  --prep_def_merge_tr_cl                  false
% 19.53/3.00  --smt_preprocessing                     true
% 19.53/3.00  --smt_ac_axioms                         fast
% 19.53/3.00  --preprocessed_out                      false
% 19.53/3.00  --preprocessed_stats                    false
% 19.53/3.00  
% 19.53/3.00  ------ Abstraction refinement Options
% 19.53/3.00  
% 19.53/3.00  --abstr_ref                             []
% 19.53/3.00  --abstr_ref_prep                        false
% 19.53/3.00  --abstr_ref_until_sat                   false
% 19.53/3.00  --abstr_ref_sig_restrict                funpre
% 19.53/3.00  --abstr_ref_af_restrict_to_split_sk     false
% 19.53/3.00  --abstr_ref_under                       []
% 19.53/3.00  
% 19.53/3.00  ------ SAT Options
% 19.53/3.00  
% 19.53/3.00  --sat_mode                              false
% 19.53/3.00  --sat_fm_restart_options                ""
% 19.53/3.00  --sat_gr_def                            false
% 19.53/3.00  --sat_epr_types                         true
% 19.53/3.00  --sat_non_cyclic_types                  false
% 19.53/3.00  --sat_finite_models                     false
% 19.53/3.00  --sat_fm_lemmas                         false
% 19.53/3.00  --sat_fm_prep                           false
% 19.53/3.00  --sat_fm_uc_incr                        true
% 19.53/3.00  --sat_out_model                         small
% 19.53/3.00  --sat_out_clauses                       false
% 19.53/3.00  
% 19.53/3.00  ------ QBF Options
% 19.53/3.00  
% 19.53/3.00  --qbf_mode                              false
% 19.53/3.00  --qbf_elim_univ                         false
% 19.53/3.00  --qbf_dom_inst                          none
% 19.53/3.00  --qbf_dom_pre_inst                      false
% 19.53/3.00  --qbf_sk_in                             false
% 19.53/3.00  --qbf_pred_elim                         true
% 19.53/3.00  --qbf_split                             512
% 19.53/3.00  
% 19.53/3.00  ------ BMC1 Options
% 19.53/3.00  
% 19.53/3.00  --bmc1_incremental                      false
% 19.53/3.00  --bmc1_axioms                           reachable_all
% 19.53/3.00  --bmc1_min_bound                        0
% 19.53/3.00  --bmc1_max_bound                        -1
% 19.53/3.00  --bmc1_max_bound_default                -1
% 19.53/3.00  --bmc1_symbol_reachability              true
% 19.53/3.00  --bmc1_property_lemmas                  false
% 19.53/3.00  --bmc1_k_induction                      false
% 19.53/3.00  --bmc1_non_equiv_states                 false
% 19.53/3.00  --bmc1_deadlock                         false
% 19.53/3.00  --bmc1_ucm                              false
% 19.53/3.00  --bmc1_add_unsat_core                   none
% 19.53/3.00  --bmc1_unsat_core_children              false
% 19.53/3.00  --bmc1_unsat_core_extrapolate_axioms    false
% 19.53/3.00  --bmc1_out_stat                         full
% 19.53/3.00  --bmc1_ground_init                      false
% 19.53/3.00  --bmc1_pre_inst_next_state              false
% 19.53/3.00  --bmc1_pre_inst_state                   false
% 19.53/3.00  --bmc1_pre_inst_reach_state             false
% 19.53/3.00  --bmc1_out_unsat_core                   false
% 19.53/3.00  --bmc1_aig_witness_out                  false
% 19.53/3.00  --bmc1_verbose                          false
% 19.53/3.00  --bmc1_dump_clauses_tptp                false
% 19.53/3.00  --bmc1_dump_unsat_core_tptp             false
% 19.53/3.00  --bmc1_dump_file                        -
% 19.53/3.00  --bmc1_ucm_expand_uc_limit              128
% 19.53/3.00  --bmc1_ucm_n_expand_iterations          6
% 19.53/3.00  --bmc1_ucm_extend_mode                  1
% 19.53/3.00  --bmc1_ucm_init_mode                    2
% 19.53/3.00  --bmc1_ucm_cone_mode                    none
% 19.53/3.00  --bmc1_ucm_reduced_relation_type        0
% 19.53/3.00  --bmc1_ucm_relax_model                  4
% 19.53/3.00  --bmc1_ucm_full_tr_after_sat            true
% 19.53/3.00  --bmc1_ucm_expand_neg_assumptions       false
% 19.53/3.00  --bmc1_ucm_layered_model                none
% 19.53/3.00  --bmc1_ucm_max_lemma_size               10
% 19.53/3.00  
% 19.53/3.00  ------ AIG Options
% 19.53/3.00  
% 19.53/3.00  --aig_mode                              false
% 19.53/3.00  
% 19.53/3.00  ------ Instantiation Options
% 19.53/3.00  
% 19.53/3.00  --instantiation_flag                    true
% 19.53/3.00  --inst_sos_flag                         true
% 19.53/3.00  --inst_sos_phase                        true
% 19.53/3.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 19.53/3.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 19.53/3.00  --inst_lit_sel_side                     num_symb
% 19.53/3.00  --inst_solver_per_active                1400
% 19.53/3.00  --inst_solver_calls_frac                1.
% 19.53/3.00  --inst_passive_queue_type               priority_queues
% 19.53/3.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 19.53/3.00  --inst_passive_queues_freq              [25;2]
% 19.53/3.00  --inst_dismatching                      true
% 19.53/3.00  --inst_eager_unprocessed_to_passive     true
% 19.53/3.00  --inst_prop_sim_given                   true
% 19.53/3.00  --inst_prop_sim_new                     false
% 19.53/3.00  --inst_subs_new                         false
% 19.53/3.00  --inst_eq_res_simp                      false
% 19.53/3.00  --inst_subs_given                       false
% 19.53/3.00  --inst_orphan_elimination               true
% 19.53/3.00  --inst_learning_loop_flag               true
% 19.53/3.00  --inst_learning_start                   3000
% 19.53/3.00  --inst_learning_factor                  2
% 19.53/3.00  --inst_start_prop_sim_after_learn       3
% 19.53/3.00  --inst_sel_renew                        solver
% 19.53/3.00  --inst_lit_activity_flag                true
% 19.53/3.00  --inst_restr_to_given                   false
% 19.53/3.00  --inst_activity_threshold               500
% 19.53/3.00  --inst_out_proof                        true
% 19.53/3.00  
% 19.53/3.00  ------ Resolution Options
% 19.53/3.00  
% 19.53/3.00  --resolution_flag                       true
% 19.53/3.00  --res_lit_sel                           adaptive
% 19.53/3.00  --res_lit_sel_side                      none
% 19.53/3.00  --res_ordering                          kbo
% 19.53/3.00  --res_to_prop_solver                    active
% 19.53/3.00  --res_prop_simpl_new                    false
% 19.53/3.00  --res_prop_simpl_given                  true
% 19.53/3.00  --res_passive_queue_type                priority_queues
% 19.53/3.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 19.53/3.00  --res_passive_queues_freq               [15;5]
% 19.53/3.00  --res_forward_subs                      full
% 19.53/3.00  --res_backward_subs                     full
% 19.53/3.00  --res_forward_subs_resolution           true
% 19.53/3.00  --res_backward_subs_resolution          true
% 19.53/3.00  --res_orphan_elimination                true
% 19.53/3.00  --res_time_limit                        2.
% 19.53/3.00  --res_out_proof                         true
% 19.53/3.00  
% 19.53/3.00  ------ Superposition Options
% 19.53/3.00  
% 19.53/3.00  --superposition_flag                    true
% 19.53/3.00  --sup_passive_queue_type                priority_queues
% 19.53/3.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 19.53/3.00  --sup_passive_queues_freq               [8;1;4]
% 19.53/3.00  --demod_completeness_check              fast
% 19.53/3.00  --demod_use_ground                      true
% 19.53/3.00  --sup_to_prop_solver                    passive
% 19.53/3.00  --sup_prop_simpl_new                    true
% 19.53/3.00  --sup_prop_simpl_given                  true
% 19.53/3.00  --sup_fun_splitting                     true
% 19.53/3.00  --sup_smt_interval                      50000
% 19.53/3.00  
% 19.53/3.00  ------ Superposition Simplification Setup
% 19.53/3.00  
% 19.53/3.00  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 19.53/3.00  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 19.53/3.00  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 19.53/3.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 19.53/3.00  --sup_full_triv                         [TrivRules;PropSubs]
% 19.53/3.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 19.53/3.00  --sup_full_bw                           [BwDemod;BwSubsumption]
% 19.53/3.00  --sup_immed_triv                        [TrivRules]
% 19.53/3.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 19.53/3.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 19.53/3.00  --sup_immed_bw_main                     []
% 19.53/3.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 19.53/3.00  --sup_input_triv                        [Unflattening;TrivRules]
% 19.53/3.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 19.53/3.00  --sup_input_bw                          []
% 19.53/3.00  
% 19.53/3.00  ------ Combination Options
% 19.53/3.00  
% 19.53/3.00  --comb_res_mult                         3
% 19.53/3.00  --comb_sup_mult                         2
% 19.53/3.00  --comb_inst_mult                        10
% 19.53/3.00  
% 19.53/3.00  ------ Debug Options
% 19.53/3.00  
% 19.53/3.00  --dbg_backtrace                         false
% 19.53/3.00  --dbg_dump_prop_clauses                 false
% 19.53/3.00  --dbg_dump_prop_clauses_file            -
% 19.53/3.00  --dbg_out_stat                          false
% 19.53/3.00  ------ Parsing...
% 19.53/3.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 19.53/3.00  
% 19.53/3.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 19.53/3.00  
% 19.53/3.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 19.53/3.00  
% 19.53/3.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 19.53/3.00  ------ Proving...
% 19.53/3.00  ------ Problem Properties 
% 19.53/3.00  
% 19.53/3.00  
% 19.53/3.00  clauses                                 10
% 19.53/3.00  conjectures                             4
% 19.53/3.00  EPR                                     3
% 19.53/3.00  Horn                                    10
% 19.53/3.00  unary                                   7
% 19.53/3.00  binary                                  2
% 19.53/3.00  lits                                    15
% 19.53/3.00  lits eq                                 3
% 19.53/3.00  fd_pure                                 0
% 19.53/3.00  fd_pseudo                               0
% 19.53/3.00  fd_cond                                 0
% 19.53/3.00  fd_pseudo_cond                          0
% 19.53/3.00  AC symbols                              0
% 19.53/3.00  
% 19.53/3.00  ------ Schedule dynamic 5 is on 
% 19.53/3.00  
% 19.53/3.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 19.53/3.00  
% 19.53/3.00  
% 19.53/3.00  ------ 
% 19.53/3.00  Current options:
% 19.53/3.00  ------ 
% 19.53/3.00  
% 19.53/3.00  ------ Input Options
% 19.53/3.00  
% 19.53/3.00  --out_options                           all
% 19.53/3.00  --tptp_safe_out                         true
% 19.53/3.00  --problem_path                          ""
% 19.53/3.00  --include_path                          ""
% 19.53/3.00  --clausifier                            res/vclausify_rel
% 19.53/3.00  --clausifier_options                    ""
% 19.53/3.00  --stdin                                 false
% 19.53/3.00  --stats_out                             all
% 19.53/3.00  
% 19.53/3.00  ------ General Options
% 19.53/3.00  
% 19.53/3.00  --fof                                   false
% 19.53/3.00  --time_out_real                         305.
% 19.53/3.00  --time_out_virtual                      -1.
% 19.53/3.00  --symbol_type_check                     false
% 19.53/3.00  --clausify_out                          false
% 19.53/3.00  --sig_cnt_out                           false
% 19.53/3.00  --trig_cnt_out                          false
% 19.53/3.00  --trig_cnt_out_tolerance                1.
% 19.53/3.00  --trig_cnt_out_sk_spl                   false
% 19.53/3.00  --abstr_cl_out                          false
% 19.53/3.00  
% 19.53/3.00  ------ Global Options
% 19.53/3.00  
% 19.53/3.00  --schedule                              default
% 19.53/3.00  --add_important_lit                     false
% 19.53/3.00  --prop_solver_per_cl                    1000
% 19.53/3.00  --min_unsat_core                        false
% 19.53/3.00  --soft_assumptions                      false
% 19.53/3.00  --soft_lemma_size                       3
% 19.53/3.00  --prop_impl_unit_size                   0
% 19.53/3.00  --prop_impl_unit                        []
% 19.53/3.00  --share_sel_clauses                     true
% 19.53/3.00  --reset_solvers                         false
% 19.53/3.00  --bc_imp_inh                            [conj_cone]
% 19.53/3.00  --conj_cone_tolerance                   3.
% 19.53/3.00  --extra_neg_conj                        none
% 19.53/3.00  --large_theory_mode                     true
% 19.53/3.00  --prolific_symb_bound                   200
% 19.53/3.00  --lt_threshold                          2000
% 19.53/3.00  --clause_weak_htbl                      true
% 19.53/3.00  --gc_record_bc_elim                     false
% 19.53/3.00  
% 19.53/3.00  ------ Preprocessing Options
% 19.53/3.00  
% 19.53/3.00  --preprocessing_flag                    true
% 19.53/3.00  --time_out_prep_mult                    0.1
% 19.53/3.00  --splitting_mode                        input
% 19.53/3.00  --splitting_grd                         true
% 19.53/3.00  --splitting_cvd                         false
% 19.53/3.00  --splitting_cvd_svl                     false
% 19.53/3.00  --splitting_nvd                         32
% 19.53/3.00  --sub_typing                            true
% 19.53/3.00  --prep_gs_sim                           true
% 19.53/3.00  --prep_unflatten                        true
% 19.53/3.00  --prep_res_sim                          true
% 19.53/3.00  --prep_upred                            true
% 19.53/3.00  --prep_sem_filter                       exhaustive
% 19.53/3.00  --prep_sem_filter_out                   false
% 19.53/3.00  --pred_elim                             true
% 19.53/3.00  --res_sim_input                         true
% 19.53/3.00  --eq_ax_congr_red                       true
% 19.53/3.00  --pure_diseq_elim                       true
% 19.53/3.00  --brand_transform                       false
% 19.53/3.00  --non_eq_to_eq                          false
% 19.53/3.00  --prep_def_merge                        true
% 19.53/3.00  --prep_def_merge_prop_impl              false
% 19.53/3.00  --prep_def_merge_mbd                    true
% 19.53/3.00  --prep_def_merge_tr_red                 false
% 19.53/3.00  --prep_def_merge_tr_cl                  false
% 19.53/3.00  --smt_preprocessing                     true
% 19.53/3.00  --smt_ac_axioms                         fast
% 19.53/3.00  --preprocessed_out                      false
% 19.53/3.00  --preprocessed_stats                    false
% 19.53/3.00  
% 19.53/3.00  ------ Abstraction refinement Options
% 19.53/3.00  
% 19.53/3.00  --abstr_ref                             []
% 19.53/3.00  --abstr_ref_prep                        false
% 19.53/3.00  --abstr_ref_until_sat                   false
% 19.53/3.00  --abstr_ref_sig_restrict                funpre
% 19.53/3.00  --abstr_ref_af_restrict_to_split_sk     false
% 19.53/3.00  --abstr_ref_under                       []
% 19.53/3.00  
% 19.53/3.00  ------ SAT Options
% 19.53/3.00  
% 19.53/3.00  --sat_mode                              false
% 19.53/3.00  --sat_fm_restart_options                ""
% 19.53/3.00  --sat_gr_def                            false
% 19.53/3.00  --sat_epr_types                         true
% 19.53/3.00  --sat_non_cyclic_types                  false
% 19.53/3.00  --sat_finite_models                     false
% 19.53/3.00  --sat_fm_lemmas                         false
% 19.53/3.00  --sat_fm_prep                           false
% 19.53/3.00  --sat_fm_uc_incr                        true
% 19.53/3.00  --sat_out_model                         small
% 19.53/3.00  --sat_out_clauses                       false
% 19.53/3.00  
% 19.53/3.00  ------ QBF Options
% 19.53/3.00  
% 19.53/3.00  --qbf_mode                              false
% 19.53/3.00  --qbf_elim_univ                         false
% 19.53/3.00  --qbf_dom_inst                          none
% 19.53/3.00  --qbf_dom_pre_inst                      false
% 19.53/3.00  --qbf_sk_in                             false
% 19.53/3.00  --qbf_pred_elim                         true
% 19.53/3.00  --qbf_split                             512
% 19.53/3.00  
% 19.53/3.00  ------ BMC1 Options
% 19.53/3.00  
% 19.53/3.00  --bmc1_incremental                      false
% 19.53/3.00  --bmc1_axioms                           reachable_all
% 19.53/3.00  --bmc1_min_bound                        0
% 19.53/3.00  --bmc1_max_bound                        -1
% 19.53/3.00  --bmc1_max_bound_default                -1
% 19.53/3.00  --bmc1_symbol_reachability              true
% 19.53/3.00  --bmc1_property_lemmas                  false
% 19.53/3.00  --bmc1_k_induction                      false
% 19.53/3.00  --bmc1_non_equiv_states                 false
% 19.53/3.00  --bmc1_deadlock                         false
% 19.53/3.00  --bmc1_ucm                              false
% 19.53/3.00  --bmc1_add_unsat_core                   none
% 19.53/3.00  --bmc1_unsat_core_children              false
% 19.53/3.00  --bmc1_unsat_core_extrapolate_axioms    false
% 19.53/3.00  --bmc1_out_stat                         full
% 19.53/3.00  --bmc1_ground_init                      false
% 19.53/3.00  --bmc1_pre_inst_next_state              false
% 19.53/3.00  --bmc1_pre_inst_state                   false
% 19.53/3.00  --bmc1_pre_inst_reach_state             false
% 19.53/3.00  --bmc1_out_unsat_core                   false
% 19.53/3.00  --bmc1_aig_witness_out                  false
% 19.53/3.00  --bmc1_verbose                          false
% 19.53/3.00  --bmc1_dump_clauses_tptp                false
% 19.53/3.00  --bmc1_dump_unsat_core_tptp             false
% 19.53/3.00  --bmc1_dump_file                        -
% 19.53/3.00  --bmc1_ucm_expand_uc_limit              128
% 19.53/3.00  --bmc1_ucm_n_expand_iterations          6
% 19.53/3.00  --bmc1_ucm_extend_mode                  1
% 19.53/3.00  --bmc1_ucm_init_mode                    2
% 19.53/3.00  --bmc1_ucm_cone_mode                    none
% 19.53/3.00  --bmc1_ucm_reduced_relation_type        0
% 19.53/3.00  --bmc1_ucm_relax_model                  4
% 19.53/3.00  --bmc1_ucm_full_tr_after_sat            true
% 19.53/3.00  --bmc1_ucm_expand_neg_assumptions       false
% 19.53/3.00  --bmc1_ucm_layered_model                none
% 19.53/3.00  --bmc1_ucm_max_lemma_size               10
% 19.53/3.00  
% 19.53/3.00  ------ AIG Options
% 19.53/3.00  
% 19.53/3.00  --aig_mode                              false
% 19.53/3.00  
% 19.53/3.00  ------ Instantiation Options
% 19.53/3.00  
% 19.53/3.00  --instantiation_flag                    true
% 19.53/3.00  --inst_sos_flag                         true
% 19.53/3.00  --inst_sos_phase                        true
% 19.53/3.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 19.53/3.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 19.53/3.00  --inst_lit_sel_side                     none
% 19.53/3.00  --inst_solver_per_active                1400
% 19.53/3.00  --inst_solver_calls_frac                1.
% 19.53/3.00  --inst_passive_queue_type               priority_queues
% 19.53/3.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 19.53/3.00  --inst_passive_queues_freq              [25;2]
% 19.53/3.00  --inst_dismatching                      true
% 19.53/3.00  --inst_eager_unprocessed_to_passive     true
% 19.53/3.00  --inst_prop_sim_given                   true
% 19.53/3.00  --inst_prop_sim_new                     false
% 19.53/3.00  --inst_subs_new                         false
% 19.53/3.00  --inst_eq_res_simp                      false
% 19.53/3.00  --inst_subs_given                       false
% 19.53/3.00  --inst_orphan_elimination               true
% 19.53/3.00  --inst_learning_loop_flag               true
% 19.53/3.00  --inst_learning_start                   3000
% 19.53/3.00  --inst_learning_factor                  2
% 19.53/3.00  --inst_start_prop_sim_after_learn       3
% 19.53/3.00  --inst_sel_renew                        solver
% 19.53/3.00  --inst_lit_activity_flag                true
% 19.53/3.00  --inst_restr_to_given                   false
% 19.53/3.00  --inst_activity_threshold               500
% 19.53/3.00  --inst_out_proof                        true
% 19.53/3.00  
% 19.53/3.00  ------ Resolution Options
% 19.53/3.00  
% 19.53/3.00  --resolution_flag                       false
% 19.53/3.00  --res_lit_sel                           adaptive
% 19.53/3.00  --res_lit_sel_side                      none
% 19.53/3.00  --res_ordering                          kbo
% 19.53/3.00  --res_to_prop_solver                    active
% 19.53/3.00  --res_prop_simpl_new                    false
% 19.53/3.00  --res_prop_simpl_given                  true
% 19.53/3.00  --res_passive_queue_type                priority_queues
% 19.53/3.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 19.53/3.00  --res_passive_queues_freq               [15;5]
% 19.53/3.00  --res_forward_subs                      full
% 19.53/3.00  --res_backward_subs                     full
% 19.53/3.00  --res_forward_subs_resolution           true
% 19.53/3.00  --res_backward_subs_resolution          true
% 19.53/3.00  --res_orphan_elimination                true
% 19.53/3.00  --res_time_limit                        2.
% 19.53/3.00  --res_out_proof                         true
% 19.53/3.00  
% 19.53/3.00  ------ Superposition Options
% 19.53/3.00  
% 19.53/3.00  --superposition_flag                    true
% 19.53/3.00  --sup_passive_queue_type                priority_queues
% 19.53/3.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 19.53/3.00  --sup_passive_queues_freq               [8;1;4]
% 19.53/3.00  --demod_completeness_check              fast
% 19.53/3.00  --demod_use_ground                      true
% 19.53/3.00  --sup_to_prop_solver                    passive
% 19.53/3.00  --sup_prop_simpl_new                    true
% 19.53/3.00  --sup_prop_simpl_given                  true
% 19.53/3.00  --sup_fun_splitting                     true
% 19.53/3.00  --sup_smt_interval                      50000
% 19.53/3.00  
% 19.53/3.00  ------ Superposition Simplification Setup
% 19.53/3.00  
% 19.53/3.00  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 19.53/3.00  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 19.53/3.00  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 19.53/3.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 19.53/3.00  --sup_full_triv                         [TrivRules;PropSubs]
% 19.53/3.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 19.53/3.00  --sup_full_bw                           [BwDemod;BwSubsumption]
% 19.53/3.00  --sup_immed_triv                        [TrivRules]
% 19.53/3.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 19.53/3.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 19.53/3.00  --sup_immed_bw_main                     []
% 19.53/3.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 19.53/3.00  --sup_input_triv                        [Unflattening;TrivRules]
% 19.53/3.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 19.53/3.00  --sup_input_bw                          []
% 19.53/3.00  
% 19.53/3.00  ------ Combination Options
% 19.53/3.00  
% 19.53/3.00  --comb_res_mult                         3
% 19.53/3.00  --comb_sup_mult                         2
% 19.53/3.00  --comb_inst_mult                        10
% 19.53/3.00  
% 19.53/3.00  ------ Debug Options
% 19.53/3.00  
% 19.53/3.00  --dbg_backtrace                         false
% 19.53/3.00  --dbg_dump_prop_clauses                 false
% 19.53/3.00  --dbg_dump_prop_clauses_file            -
% 19.53/3.00  --dbg_out_stat                          false
% 19.53/3.00  
% 19.53/3.00  
% 19.53/3.00  
% 19.53/3.00  
% 19.53/3.00  ------ Proving...
% 19.53/3.00  
% 19.53/3.00  
% 19.53/3.00  % SZS status Theorem for theBenchmark.p
% 19.53/3.00  
% 19.53/3.00  % SZS output start CNFRefutation for theBenchmark.p
% 19.53/3.00  
% 19.53/3.00  fof(f1,axiom,(
% 19.53/3.00    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))),
% 19.53/3.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.53/3.00  
% 19.53/3.00  fof(f19,plain,(
% 19.53/3.00    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 19.53/3.00    inference(cnf_transformation,[],[f1])).
% 19.53/3.00  
% 19.53/3.00  fof(f5,axiom,(
% 19.53/3.00    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 19.53/3.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.53/3.00  
% 19.53/3.00  fof(f23,plain,(
% 19.53/3.00    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 19.53/3.00    inference(cnf_transformation,[],[f5])).
% 19.53/3.00  
% 19.53/3.00  fof(f6,axiom,(
% 19.53/3.00    ! [X0,X1] : k4_xboole_0(X0,X1) = k6_subset_1(X0,X1)),
% 19.53/3.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.53/3.00  
% 19.53/3.00  fof(f24,plain,(
% 19.53/3.00    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k6_subset_1(X0,X1)) )),
% 19.53/3.00    inference(cnf_transformation,[],[f6])).
% 19.53/3.00  
% 19.53/3.00  fof(f31,plain,(
% 19.53/3.00    ( ! [X0,X1] : (k3_tarski(k2_tarski(X0,X1)) = k3_tarski(k2_tarski(X0,k6_subset_1(X1,X0)))) )),
% 19.53/3.00    inference(definition_unfolding,[],[f19,f23,f23,f24])).
% 19.53/3.00  
% 19.53/3.00  fof(f9,conjecture,(
% 19.53/3.00    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2))))))),
% 19.53/3.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.53/3.00  
% 19.53/3.00  fof(f10,negated_conjecture,(
% 19.53/3.00    ~! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2))))))),
% 19.53/3.00    inference(negated_conjecture,[],[f9])).
% 19.53/3.00  
% 19.53/3.00  fof(f14,plain,(
% 19.53/3.00    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2))) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 19.53/3.00    inference(ennf_transformation,[],[f10])).
% 19.53/3.00  
% 19.53/3.00  fof(f17,plain,(
% 19.53/3.00    ( ! [X0,X1] : (? [X2] : (~r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2))) & v1_relat_1(X2)) => (~r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,sK2)),k5_relat_1(X0,k6_subset_1(X1,sK2))) & v1_relat_1(sK2))) )),
% 19.53/3.00    introduced(choice_axiom,[])).
% 19.53/3.00  
% 19.53/3.00  fof(f16,plain,(
% 19.53/3.00    ( ! [X0] : (? [X1] : (? [X2] : (~r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2))) & v1_relat_1(X2)) & v1_relat_1(X1)) => (? [X2] : (~r1_tarski(k6_subset_1(k5_relat_1(X0,sK1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(sK1,X2))) & v1_relat_1(X2)) & v1_relat_1(sK1))) )),
% 19.53/3.00    introduced(choice_axiom,[])).
% 19.53/3.00  
% 19.53/3.00  fof(f15,plain,(
% 19.53/3.00    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k6_subset_1(k5_relat_1(X0,X1),k5_relat_1(X0,X2)),k5_relat_1(X0,k6_subset_1(X1,X2))) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0)) => (? [X1] : (? [X2] : (~r1_tarski(k6_subset_1(k5_relat_1(sK0,X1),k5_relat_1(sK0,X2)),k5_relat_1(sK0,k6_subset_1(X1,X2))) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(sK0))),
% 19.53/3.00    introduced(choice_axiom,[])).
% 19.53/3.00  
% 19.53/3.00  fof(f18,plain,(
% 19.53/3.00    ((~r1_tarski(k6_subset_1(k5_relat_1(sK0,sK1),k5_relat_1(sK0,sK2)),k5_relat_1(sK0,k6_subset_1(sK1,sK2))) & v1_relat_1(sK2)) & v1_relat_1(sK1)) & v1_relat_1(sK0)),
% 19.53/3.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f14,f17,f16,f15])).
% 19.53/3.00  
% 19.53/3.00  fof(f28,plain,(
% 19.53/3.00    v1_relat_1(sK1)),
% 19.53/3.00    inference(cnf_transformation,[],[f18])).
% 19.53/3.00  
% 19.53/3.00  fof(f29,plain,(
% 19.53/3.00    v1_relat_1(sK2)),
% 19.53/3.00    inference(cnf_transformation,[],[f18])).
% 19.53/3.00  
% 19.53/3.00  fof(f27,plain,(
% 19.53/3.00    v1_relat_1(sK0)),
% 19.53/3.00    inference(cnf_transformation,[],[f18])).
% 19.53/3.00  
% 19.53/3.00  fof(f8,axiom,(
% 19.53/3.00    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k2_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)) = k5_relat_1(X0,k2_xboole_0(X1,X2)))))),
% 19.53/3.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.53/3.00  
% 19.53/3.00  fof(f13,plain,(
% 19.53/3.00    ! [X0] : (! [X1] : (! [X2] : (k2_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)) = k5_relat_1(X0,k2_xboole_0(X1,X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 19.53/3.00    inference(ennf_transformation,[],[f8])).
% 19.53/3.00  
% 19.53/3.00  fof(f26,plain,(
% 19.53/3.00    ( ! [X2,X0,X1] : (k2_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)) = k5_relat_1(X0,k2_xboole_0(X1,X2)) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 19.53/3.00    inference(cnf_transformation,[],[f13])).
% 19.53/3.00  
% 19.53/3.00  fof(f35,plain,(
% 19.53/3.00    ( ! [X2,X0,X1] : (k3_tarski(k2_tarski(k5_relat_1(X0,X1),k5_relat_1(X0,X2))) = k5_relat_1(X0,k3_tarski(k2_tarski(X1,X2))) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 19.53/3.00    inference(definition_unfolding,[],[f26,f23,f23])).
% 19.53/3.00  
% 19.53/3.00  fof(f4,axiom,(
% 19.53/3.00    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 19.53/3.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.53/3.00  
% 19.53/3.00  fof(f22,plain,(
% 19.53/3.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 19.53/3.00    inference(cnf_transformation,[],[f4])).
% 19.53/3.00  
% 19.53/3.00  fof(f3,axiom,(
% 19.53/3.00    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 19.53/3.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.53/3.00  
% 19.53/3.00  fof(f21,plain,(
% 19.53/3.00    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 19.53/3.00    inference(cnf_transformation,[],[f3])).
% 19.53/3.00  
% 19.53/3.00  fof(f33,plain,(
% 19.53/3.00    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k2_tarski(X0,X1)))) )),
% 19.53/3.00    inference(definition_unfolding,[],[f21,f23])).
% 19.53/3.00  
% 19.53/3.00  fof(f7,axiom,(
% 19.53/3.00    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k4_xboole_0(X0,X1)))),
% 19.53/3.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.53/3.00  
% 19.53/3.00  fof(f12,plain,(
% 19.53/3.00    ! [X0,X1] : (v1_relat_1(k4_xboole_0(X0,X1)) | ~v1_relat_1(X0))),
% 19.53/3.00    inference(ennf_transformation,[],[f7])).
% 19.53/3.00  
% 19.53/3.00  fof(f25,plain,(
% 19.53/3.00    ( ! [X0,X1] : (v1_relat_1(k4_xboole_0(X0,X1)) | ~v1_relat_1(X0)) )),
% 19.53/3.00    inference(cnf_transformation,[],[f12])).
% 19.53/3.00  
% 19.53/3.00  fof(f34,plain,(
% 19.53/3.00    ( ! [X0,X1] : (v1_relat_1(k6_subset_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 19.53/3.00    inference(definition_unfolding,[],[f25,f24])).
% 19.53/3.00  
% 19.53/3.00  fof(f2,axiom,(
% 19.53/3.00    ! [X0,X1,X2] : (r1_tarski(X0,k2_xboole_0(X1,X2)) => r1_tarski(k4_xboole_0(X0,X1),X2))),
% 19.53/3.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.53/3.00  
% 19.53/3.00  fof(f11,plain,(
% 19.53/3.00    ! [X0,X1,X2] : (r1_tarski(k4_xboole_0(X0,X1),X2) | ~r1_tarski(X0,k2_xboole_0(X1,X2)))),
% 19.53/3.00    inference(ennf_transformation,[],[f2])).
% 19.53/3.00  
% 19.53/3.00  fof(f20,plain,(
% 19.53/3.00    ( ! [X2,X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X2) | ~r1_tarski(X0,k2_xboole_0(X1,X2))) )),
% 19.53/3.00    inference(cnf_transformation,[],[f11])).
% 19.53/3.00  
% 19.53/3.00  fof(f32,plain,(
% 19.53/3.00    ( ! [X2,X0,X1] : (r1_tarski(k6_subset_1(X0,X1),X2) | ~r1_tarski(X0,k3_tarski(k2_tarski(X1,X2)))) )),
% 19.53/3.00    inference(definition_unfolding,[],[f20,f24,f23])).
% 19.53/3.00  
% 19.53/3.00  fof(f30,plain,(
% 19.53/3.00    ~r1_tarski(k6_subset_1(k5_relat_1(sK0,sK1),k5_relat_1(sK0,sK2)),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))),
% 19.53/3.00    inference(cnf_transformation,[],[f18])).
% 19.53/3.00  
% 19.53/3.00  cnf(c_113,plain,
% 19.53/3.00      ( ~ r1_tarski(X0_37,X1_37)
% 19.53/3.00      | r1_tarski(X2_37,X3_37)
% 19.53/3.00      | X2_37 != X0_37
% 19.53/3.00      | X3_37 != X1_37 ),
% 19.53/3.00      theory(equality) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_1036,plain,
% 19.53/3.00      ( ~ r1_tarski(X0_37,X1_37)
% 19.53/3.00      | r1_tarski(k5_relat_1(X2_37,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | k5_relat_1(X2_37,sK1) != X0_37
% 19.53/3.00      | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != X1_37 ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_113]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_1495,plain,
% 19.53/3.00      ( ~ r1_tarski(X0_37,k5_relat_1(X1_37,X2_37))
% 19.53/3.00      | r1_tarski(k5_relat_1(X3_37,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | k5_relat_1(X3_37,sK1) != X0_37
% 19.53/3.00      | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != k5_relat_1(X1_37,X2_37) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_1036]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_4065,plain,
% 19.53/3.00      ( ~ r1_tarski(k5_relat_1(X0_37,sK1),k5_relat_1(X1_37,X2_37))
% 19.53/3.00      | r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != k5_relat_1(X1_37,X2_37)
% 19.53/3.00      | k5_relat_1(sK0,sK1) != k5_relat_1(X0_37,sK1) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_1495]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_36851,plain,
% 19.53/3.00      ( ~ r1_tarski(k5_relat_1(X0_37,sK1),k5_relat_1(X1_37,k3_tarski(k2_tarski(sK2,sK1))))
% 19.53/3.00      | r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != k5_relat_1(X1_37,k3_tarski(k2_tarski(sK2,sK1)))
% 19.53/3.00      | k5_relat_1(sK0,sK1) != k5_relat_1(X0_37,sK1) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_4065]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_36857,plain,
% 19.53/3.00      ( r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | ~ r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1))))
% 19.53/3.00      | k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) != k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1)))
% 19.53/3.00      | k5_relat_1(sK0,sK1) != k5_relat_1(sK0,sK1) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_36851]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_0,plain,
% 19.53/3.00      ( k3_tarski(k2_tarski(X0,k6_subset_1(X1,X0))) = k3_tarski(k2_tarski(X0,X1)) ),
% 19.53/3.00      inference(cnf_transformation,[],[f31]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_104,plain,
% 19.53/3.00      ( k3_tarski(k2_tarski(X0_37,k6_subset_1(X1_37,X0_37))) = k3_tarski(k2_tarski(X0_37,X1_37)) ),
% 19.53/3.00      inference(subtyping,[status(esa)],[c_0]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_13714,plain,
% 19.53/3.00      ( k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2))) = k3_tarski(k2_tarski(sK2,sK1)) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_104]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_115,plain,
% 19.53/3.00      ( X0_37 != X1_37
% 19.53/3.00      | X2_37 != X3_37
% 19.53/3.00      | k5_relat_1(X0_37,X2_37) = k5_relat_1(X1_37,X3_37) ),
% 19.53/3.00      theory(equality) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_2067,plain,
% 19.53/3.00      ( k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) = k5_relat_1(X0_37,X1_37)
% 19.53/3.00      | k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2))) != X1_37
% 19.53/3.00      | sK0 != X0_37 ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_115]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_4896,plain,
% 19.53/3.00      ( k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) = k5_relat_1(X0_37,k3_tarski(k2_tarski(sK2,sK1)))
% 19.53/3.00      | k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2))) != k3_tarski(k2_tarski(sK2,sK1))
% 19.53/3.00      | sK0 != X0_37 ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_2067]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_4897,plain,
% 19.53/3.00      ( k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) = k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1)))
% 19.53/3.00      | k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2))) != k3_tarski(k2_tarski(sK2,sK1))
% 19.53/3.00      | sK0 != sK0 ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_4896]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_8,negated_conjecture,
% 19.53/3.00      ( v1_relat_1(sK1) ),
% 19.53/3.00      inference(cnf_transformation,[],[f28]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_96,negated_conjecture,
% 19.53/3.00      ( v1_relat_1(sK1) ),
% 19.53/3.00      inference(subtyping,[status(esa)],[c_8]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_271,plain,
% 19.53/3.00      ( v1_relat_1(sK1) = iProver_top ),
% 19.53/3.00      inference(predicate_to_equality,[status(thm)],[c_96]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_7,negated_conjecture,
% 19.53/3.00      ( v1_relat_1(sK2) ),
% 19.53/3.00      inference(cnf_transformation,[],[f29]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_97,negated_conjecture,
% 19.53/3.00      ( v1_relat_1(sK2) ),
% 19.53/3.00      inference(subtyping,[status(esa)],[c_7]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_270,plain,
% 19.53/3.00      ( v1_relat_1(sK2) = iProver_top ),
% 19.53/3.00      inference(predicate_to_equality,[status(thm)],[c_97]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_9,negated_conjecture,
% 19.53/3.00      ( v1_relat_1(sK0) ),
% 19.53/3.00      inference(cnf_transformation,[],[f27]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_95,negated_conjecture,
% 19.53/3.00      ( v1_relat_1(sK0) ),
% 19.53/3.00      inference(subtyping,[status(esa)],[c_9]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_272,plain,
% 19.53/3.00      ( v1_relat_1(sK0) = iProver_top ),
% 19.53/3.00      inference(predicate_to_equality,[status(thm)],[c_95]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_5,plain,
% 19.53/3.00      ( ~ v1_relat_1(X0)
% 19.53/3.00      | ~ v1_relat_1(X1)
% 19.53/3.00      | ~ v1_relat_1(X2)
% 19.53/3.00      | k3_tarski(k2_tarski(k5_relat_1(X0,X2),k5_relat_1(X0,X1))) = k5_relat_1(X0,k3_tarski(k2_tarski(X2,X1))) ),
% 19.53/3.00      inference(cnf_transformation,[],[f35]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_99,plain,
% 19.53/3.00      ( ~ v1_relat_1(X0_37)
% 19.53/3.00      | ~ v1_relat_1(X1_37)
% 19.53/3.00      | ~ v1_relat_1(X2_37)
% 19.53/3.00      | k3_tarski(k2_tarski(k5_relat_1(X0_37,X2_37),k5_relat_1(X0_37,X1_37))) = k5_relat_1(X0_37,k3_tarski(k2_tarski(X2_37,X1_37))) ),
% 19.53/3.00      inference(subtyping,[status(esa)],[c_5]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_268,plain,
% 19.53/3.00      ( k3_tarski(k2_tarski(k5_relat_1(X0_37,X1_37),k5_relat_1(X0_37,X2_37))) = k5_relat_1(X0_37,k3_tarski(k2_tarski(X1_37,X2_37)))
% 19.53/3.00      | v1_relat_1(X0_37) != iProver_top
% 19.53/3.00      | v1_relat_1(X1_37) != iProver_top
% 19.53/3.00      | v1_relat_1(X2_37) != iProver_top ),
% 19.53/3.00      inference(predicate_to_equality,[status(thm)],[c_99]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_984,plain,
% 19.53/3.00      ( k3_tarski(k2_tarski(k5_relat_1(sK0,X0_37),k5_relat_1(sK0,X1_37))) = k5_relat_1(sK0,k3_tarski(k2_tarski(X0_37,X1_37)))
% 19.53/3.00      | v1_relat_1(X0_37) != iProver_top
% 19.53/3.00      | v1_relat_1(X1_37) != iProver_top ),
% 19.53/3.00      inference(superposition,[status(thm)],[c_272,c_268]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_4157,plain,
% 19.53/3.00      ( k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,X0_37))) = k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,X0_37)))
% 19.53/3.00      | v1_relat_1(X0_37) != iProver_top ),
% 19.53/3.00      inference(superposition,[status(thm)],[c_270,c_984]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_4267,plain,
% 19.53/3.00      ( k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,sK1))) = k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1))) ),
% 19.53/3.00      inference(superposition,[status(thm)],[c_271,c_4157]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_3,plain,
% 19.53/3.00      ( k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
% 19.53/3.00      inference(cnf_transformation,[],[f22]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_101,plain,
% 19.53/3.00      ( k2_tarski(X0_37,X1_37) = k2_tarski(X1_37,X0_37) ),
% 19.53/3.00      inference(subtyping,[status(esa)],[c_3]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_2,plain,
% 19.53/3.00      ( r1_tarski(X0,k3_tarski(k2_tarski(X0,X1))) ),
% 19.53/3.00      inference(cnf_transformation,[],[f33]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_102,plain,
% 19.53/3.00      ( r1_tarski(X0_37,k3_tarski(k2_tarski(X0_37,X1_37))) ),
% 19.53/3.00      inference(subtyping,[status(esa)],[c_2]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_266,plain,
% 19.53/3.00      ( r1_tarski(X0_37,k3_tarski(k2_tarski(X0_37,X1_37))) = iProver_top ),
% 19.53/3.00      inference(predicate_to_equality,[status(thm)],[c_102]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_449,plain,
% 19.53/3.00      ( r1_tarski(X0_37,k3_tarski(k2_tarski(X1_37,X0_37))) = iProver_top ),
% 19.53/3.00      inference(superposition,[status(thm)],[c_101,c_266]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_4461,plain,
% 19.53/3.00      ( r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1)))) = iProver_top ),
% 19.53/3.00      inference(superposition,[status(thm)],[c_4267,c_449]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_4491,plain,
% 19.53/3.00      ( r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,sK1)))) ),
% 19.53/3.00      inference(predicate_to_equality_rev,[status(thm)],[c_4461]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_293,plain,
% 19.53/3.00      ( ~ r1_tarski(X0_37,X1_37)
% 19.53/3.00      | r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | k5_relat_1(sK0,sK1) != X0_37
% 19.53/3.00      | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) != X1_37 ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_113]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_321,plain,
% 19.53/3.00      ( ~ r1_tarski(k5_relat_1(X0_37,X1_37),X2_37)
% 19.53/3.00      | r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | k5_relat_1(sK0,sK1) != k5_relat_1(X0_37,X1_37)
% 19.53/3.00      | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) != X2_37 ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_293]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_388,plain,
% 19.53/3.00      ( ~ r1_tarski(k5_relat_1(X0_37,X1_37),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | k5_relat_1(sK0,sK1) != k5_relat_1(X0_37,X1_37)
% 19.53/3.00      | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) != k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_321]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_846,plain,
% 19.53/3.00      ( ~ r1_tarski(k5_relat_1(sK0,sK1),k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | k5_relat_1(sK0,sK1) != k5_relat_1(sK0,sK1)
% 19.53/3.00      | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) != k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_388]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_4,plain,
% 19.53/3.00      ( ~ v1_relat_1(X0) | v1_relat_1(k6_subset_1(X0,X1)) ),
% 19.53/3.00      inference(cnf_transformation,[],[f34]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_100,plain,
% 19.53/3.00      ( ~ v1_relat_1(X0_37) | v1_relat_1(k6_subset_1(X0_37,X1_37)) ),
% 19.53/3.00      inference(subtyping,[status(esa)],[c_4]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_613,plain,
% 19.53/3.00      ( v1_relat_1(k6_subset_1(sK1,sK2)) | ~ v1_relat_1(sK1) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_100]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_492,plain,
% 19.53/3.00      ( ~ v1_relat_1(k6_subset_1(sK1,sK2))
% 19.53/3.00      | ~ v1_relat_1(sK2)
% 19.53/3.00      | ~ v1_relat_1(sK0)
% 19.53/3.00      | k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))) = k5_relat_1(sK0,k3_tarski(k2_tarski(sK2,k6_subset_1(sK1,sK2)))) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_99]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_106,plain,( X0_37 = X0_37 ),theory(equality) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_356,plain,
% 19.53/3.00      ( k5_relat_1(sK0,sK1) = k5_relat_1(sK0,sK1) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_106]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_1,plain,
% 19.53/3.00      ( ~ r1_tarski(X0,k3_tarski(k2_tarski(X1,X2)))
% 19.53/3.00      | r1_tarski(k6_subset_1(X0,X1),X2) ),
% 19.53/3.00      inference(cnf_transformation,[],[f32]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_103,plain,
% 19.53/3.00      ( ~ r1_tarski(X0_37,k3_tarski(k2_tarski(X1_37,X2_37)))
% 19.53/3.00      | r1_tarski(k6_subset_1(X0_37,X1_37),X2_37) ),
% 19.53/3.00      inference(subtyping,[status(esa)],[c_1]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_285,plain,
% 19.53/3.00      ( ~ r1_tarski(k5_relat_1(sK0,sK1),k3_tarski(k2_tarski(k5_relat_1(sK0,sK2),k5_relat_1(sK0,k6_subset_1(sK1,sK2)))))
% 19.53/3.00      | r1_tarski(k6_subset_1(k5_relat_1(sK0,sK1),k5_relat_1(sK0,sK2)),k5_relat_1(sK0,k6_subset_1(sK1,sK2))) ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_103]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_123,plain,
% 19.53/3.00      ( sK0 = sK0 ),
% 19.53/3.00      inference(instantiation,[status(thm)],[c_106]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(c_6,negated_conjecture,
% 19.53/3.00      ( ~ r1_tarski(k6_subset_1(k5_relat_1(sK0,sK1),k5_relat_1(sK0,sK2)),k5_relat_1(sK0,k6_subset_1(sK1,sK2))) ),
% 19.53/3.00      inference(cnf_transformation,[],[f30]) ).
% 19.53/3.00  
% 19.53/3.00  cnf(contradiction,plain,
% 19.53/3.00      ( $false ),
% 19.53/3.00      inference(minisat,
% 19.53/3.00                [status(thm)],
% 19.53/3.00                [c_36857,c_13714,c_4897,c_4491,c_846,c_613,c_492,c_356,
% 19.53/3.00                 c_285,c_123,c_6,c_7,c_8,c_9]) ).
% 19.53/3.00  
% 19.53/3.00  
% 19.53/3.00  % SZS output end CNFRefutation for theBenchmark.p
% 19.53/3.00  
% 19.53/3.00  ------                               Statistics
% 19.53/3.00  
% 19.53/3.00  ------ General
% 19.53/3.00  
% 19.53/3.00  abstr_ref_over_cycles:                  0
% 19.53/3.00  abstr_ref_under_cycles:                 0
% 19.53/3.00  gc_basic_clause_elim:                   0
% 19.53/3.00  forced_gc_time:                         0
% 19.53/3.00  parsing_time:                           0.008
% 19.53/3.00  unif_index_cands_time:                  0.
% 19.53/3.00  unif_index_add_time:                    0.
% 19.53/3.00  orderings_time:                         0.
% 19.53/3.00  out_proof_time:                         0.014
% 19.53/3.00  total_time:                             2.071
% 19.53/3.00  num_of_symbols:                         42
% 19.53/3.00  num_of_terms:                           45547
% 19.53/3.00  
% 19.53/3.00  ------ Preprocessing
% 19.53/3.00  
% 19.53/3.00  num_of_splits:                          0
% 19.53/3.00  num_of_split_atoms:                     0
% 19.53/3.00  num_of_reused_defs:                     0
% 19.53/3.00  num_eq_ax_congr_red:                    0
% 19.53/3.00  num_of_sem_filtered_clauses:            1
% 19.53/3.00  num_of_subtypes:                        2
% 19.53/3.00  monotx_restored_types:                  0
% 19.53/3.00  sat_num_of_epr_types:                   0
% 19.53/3.00  sat_num_of_non_cyclic_types:            0
% 19.53/3.00  sat_guarded_non_collapsed_types:        0
% 19.53/3.00  num_pure_diseq_elim:                    0
% 19.53/3.00  simp_replaced_by:                       0
% 19.53/3.00  res_preprocessed:                       51
% 19.53/3.00  prep_upred:                             0
% 19.53/3.00  prep_unflattend:                        0
% 19.53/3.00  smt_new_axioms:                         0
% 19.53/3.00  pred_elim_cands:                        2
% 19.53/3.00  pred_elim:                              0
% 19.53/3.00  pred_elim_cl:                           0
% 19.53/3.00  pred_elim_cycles:                       1
% 19.53/3.00  merged_defs:                            0
% 19.53/3.00  merged_defs_ncl:                        0
% 19.53/3.00  bin_hyper_res:                          0
% 19.53/3.00  prep_cycles:                            3
% 19.53/3.00  pred_elim_time:                         0.
% 19.53/3.00  splitting_time:                         0.
% 19.53/3.00  sem_filter_time:                        0.
% 19.53/3.00  monotx_time:                            0.
% 19.53/3.00  subtype_inf_time:                       0.
% 19.53/3.00  
% 19.53/3.00  ------ Problem properties
% 19.53/3.00  
% 19.53/3.00  clauses:                                10
% 19.53/3.00  conjectures:                            4
% 19.53/3.00  epr:                                    3
% 19.53/3.00  horn:                                   10
% 19.53/3.00  ground:                                 4
% 19.53/3.00  unary:                                  7
% 19.53/3.00  binary:                                 2
% 19.53/3.00  lits:                                   15
% 19.53/3.00  lits_eq:                                3
% 19.53/3.00  fd_pure:                                0
% 19.53/3.00  fd_pseudo:                              0
% 19.53/3.00  fd_cond:                                0
% 19.53/3.00  fd_pseudo_cond:                         0
% 19.53/3.00  ac_symbols:                             0
% 19.53/3.00  
% 19.53/3.00  ------ Propositional Solver
% 19.53/3.00  
% 19.53/3.00  prop_solver_calls:                      34
% 19.53/3.00  prop_fast_solver_calls:                 556
% 19.53/3.00  smt_solver_calls:                       0
% 19.53/3.00  smt_fast_solver_calls:                  0
% 19.53/3.00  prop_num_of_clauses:                    18019
% 19.53/3.00  prop_preprocess_simplified:             12364
% 19.53/3.00  prop_fo_subsumed:                       0
% 19.53/3.00  prop_solver_time:                       0.
% 19.53/3.00  smt_solver_time:                        0.
% 19.53/3.00  smt_fast_solver_time:                   0.
% 19.53/3.00  prop_fast_solver_time:                  0.
% 19.53/3.00  prop_unsat_core_time:                   0.003
% 19.53/3.00  
% 19.53/3.00  ------ QBF
% 19.53/3.00  
% 19.53/3.00  qbf_q_res:                              0
% 19.53/3.00  qbf_num_tautologies:                    0
% 19.53/3.00  qbf_prep_cycles:                        0
% 19.53/3.00  
% 19.53/3.00  ------ BMC1
% 19.53/3.00  
% 19.53/3.00  bmc1_current_bound:                     -1
% 19.53/3.00  bmc1_last_solved_bound:                 -1
% 19.53/3.00  bmc1_unsat_core_size:                   -1
% 19.53/3.00  bmc1_unsat_core_parents_size:           -1
% 19.53/3.00  bmc1_merge_next_fun:                    0
% 19.53/3.00  bmc1_unsat_core_clauses_time:           0.
% 19.53/3.00  
% 19.53/3.00  ------ Instantiation
% 19.53/3.00  
% 19.53/3.00  inst_num_of_clauses:                    2464
% 19.53/3.00  inst_num_in_passive:                    253
% 19.53/3.00  inst_num_in_active:                     1302
% 19.53/3.00  inst_num_in_unprocessed:                908
% 19.53/3.00  inst_num_of_loops:                      1374
% 19.53/3.00  inst_num_of_learning_restarts:          0
% 19.53/3.00  inst_num_moves_active_passive:          63
% 19.53/3.00  inst_lit_activity:                      0
% 19.53/3.00  inst_lit_activity_moves:                0
% 19.53/3.00  inst_num_tautologies:                   0
% 19.53/3.00  inst_num_prop_implied:                  0
% 19.53/3.00  inst_num_existing_simplified:           0
% 19.53/3.00  inst_num_eq_res_simplified:             0
% 19.53/3.00  inst_num_child_elim:                    0
% 19.53/3.00  inst_num_of_dismatching_blockings:      3821
% 19.53/3.00  inst_num_of_non_proper_insts:           4960
% 19.53/3.00  inst_num_of_duplicates:                 0
% 19.53/3.00  inst_inst_num_from_inst_to_res:         0
% 19.53/3.00  inst_dismatching_checking_time:         0.
% 19.53/3.00  
% 19.53/3.00  ------ Resolution
% 19.53/3.00  
% 19.53/3.00  res_num_of_clauses:                     0
% 19.53/3.00  res_num_in_passive:                     0
% 19.53/3.00  res_num_in_active:                      0
% 19.53/3.00  res_num_of_loops:                       54
% 19.53/3.00  res_forward_subset_subsumed:            987
% 19.53/3.00  res_backward_subset_subsumed:           0
% 19.53/3.00  res_forward_subsumed:                   0
% 19.53/3.00  res_backward_subsumed:                  0
% 19.53/3.00  res_forward_subsumption_resolution:     0
% 19.53/3.00  res_backward_subsumption_resolution:    0
% 19.53/3.00  res_clause_to_clause_subsumption:       55217
% 19.53/3.00  res_orphan_elimination:                 0
% 19.53/3.00  res_tautology_del:                      621
% 19.53/3.00  res_num_eq_res_simplified:              0
% 19.53/3.00  res_num_sel_changes:                    0
% 19.53/3.00  res_moves_from_active_to_pass:          0
% 19.53/3.00  
% 19.53/3.00  ------ Superposition
% 19.53/3.00  
% 19.53/3.00  sup_time_total:                         0.
% 19.53/3.00  sup_time_generating:                    0.
% 19.53/3.00  sup_time_sim_full:                      0.
% 19.53/3.00  sup_time_sim_immed:                     0.
% 19.53/3.00  
% 19.53/3.00  sup_num_of_clauses:                     3483
% 19.53/3.00  sup_num_in_active:                      251
% 19.53/3.00  sup_num_in_passive:                     3232
% 19.53/3.00  sup_num_of_loops:                       274
% 19.53/3.00  sup_fw_superposition:                   2390
% 19.53/3.00  sup_bw_superposition:                   3677
% 19.53/3.00  sup_immediate_simplified:               764
% 19.53/3.00  sup_given_eliminated:                   10
% 19.53/3.00  comparisons_done:                       0
% 19.53/3.00  comparisons_avoided:                    0
% 19.53/3.00  
% 19.53/3.00  ------ Simplifications
% 19.53/3.00  
% 19.53/3.00  
% 19.53/3.00  sim_fw_subset_subsumed:                 0
% 19.53/3.00  sim_bw_subset_subsumed:                 0
% 19.53/3.00  sim_fw_subsumed:                        135
% 19.53/3.00  sim_bw_subsumed:                        0
% 19.53/3.00  sim_fw_subsumption_res:                 0
% 19.53/3.00  sim_bw_subsumption_res:                 0
% 19.53/3.00  sim_tautology_del:                      0
% 19.53/3.00  sim_eq_tautology_del:                   10
% 19.53/3.00  sim_eq_res_simp:                        0
% 19.53/3.00  sim_fw_demodulated:                     73
% 19.53/3.00  sim_bw_demodulated:                     550
% 19.53/3.00  sim_light_normalised:                   604
% 19.53/3.00  sim_joinable_taut:                      0
% 19.53/3.00  sim_joinable_simp:                      0
% 19.53/3.00  sim_ac_normalised:                      0
% 19.53/3.00  sim_smt_subsumption:                    0
% 19.53/3.00  
%------------------------------------------------------------------------------
