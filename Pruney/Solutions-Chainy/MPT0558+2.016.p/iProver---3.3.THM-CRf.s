%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:46:51 EST 2020

% Result     : Theorem 7.87s
% Output     : CNFRefutation 7.87s
% Verified   : 
% Statistics : Number of formulae       :   83 ( 166 expanded)
%              Number of clauses        :   48 (  65 expanded)
%              Number of leaves         :   14 (  43 expanded)
%              Depth                    :   18
%              Number of atoms          :  184 ( 416 expanded)
%              Number of equality atoms :  103 ( 188 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ! [X1] :
            ( v1_relat_1(X1)
           => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f20,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k2_relat_1(k5_relat_1(X0,X1)) != k9_relat_1(X1,k2_relat_1(X0))
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f22,plain,(
    ! [X0] :
      ( ? [X1] :
          ( k2_relat_1(k5_relat_1(X0,X1)) != k9_relat_1(X1,k2_relat_1(X0))
          & v1_relat_1(X1) )
     => ( k2_relat_1(k5_relat_1(X0,sK1)) != k9_relat_1(sK1,k2_relat_1(X0))
        & v1_relat_1(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( k2_relat_1(k5_relat_1(X0,X1)) != k9_relat_1(X1,k2_relat_1(X0))
            & v1_relat_1(X1) )
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( k2_relat_1(k5_relat_1(sK0,X1)) != k9_relat_1(X1,k2_relat_1(sK0))
          & v1_relat_1(X1) )
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( k2_relat_1(k5_relat_1(sK0,sK1)) != k9_relat_1(sK1,k2_relat_1(sK0))
    & v1_relat_1(sK1)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f20,f22,f21])).

fof(f34,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f23])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k7_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f25,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f35,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f23])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f33,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f27,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f7,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f1,axiom,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f1])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
           => k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0))
          | ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0))
          | ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f15])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0))
      | ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f32,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2)
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f36,plain,(
    k2_relat_1(k5_relat_1(sK0,sK1)) != k9_relat_1(sK1,k2_relat_1(sK0)) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_12,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_351,plain,
    ( v1_relat_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k7_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_359,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(k7_relat_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_11,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_352,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_9,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_353,plain,
    ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_745,plain,
    ( k5_relat_1(k6_relat_1(X0),sK1) = k7_relat_1(sK1,X0) ),
    inference(superposition,[status(thm)],[c_352,c_353])).

cnf(c_3,plain,
    ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_357,plain,
    ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_1023,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(sK1,X0)),k1_relat_1(k6_relat_1(X0))) = iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_745,c_357])).

cnf(c_7,plain,
    ( k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_1024,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(sK1,X0)),X0) = iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1023,c_7])).

cnf(c_14,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_0,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_38,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1279,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(sK1,X0)),X0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1024,c_14,c_38])).

cnf(c_4,plain,
    ( ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k2_relat_1(k5_relat_1(X1,X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_356,plain,
    ( k2_relat_1(k5_relat_1(X0,X1)) = k2_relat_1(X1)
    | r1_tarski(k1_relat_1(X1),k2_relat_1(X0)) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1505,plain,
    ( k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k2_relat_1(k7_relat_1(sK1,k2_relat_1(X0)))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k7_relat_1(sK1,k2_relat_1(X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1279,c_356])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_358,plain,
    ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_858,plain,
    ( k2_relat_1(k7_relat_1(sK1,X0)) = k9_relat_1(sK1,X0) ),
    inference(superposition,[status(thm)],[c_352,c_358])).

cnf(c_1554,plain,
    ( k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k9_relat_1(sK1,k2_relat_1(X0))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k7_relat_1(sK1,k2_relat_1(X0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1505,c_858])).

cnf(c_12706,plain,
    ( k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k9_relat_1(sK1,k2_relat_1(X0))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_359,c_1554])).

cnf(c_37985,plain,
    ( v1_relat_1(X0) != iProver_top
    | k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k9_relat_1(sK1,k2_relat_1(X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_12706,c_14])).

cnf(c_37986,plain,
    ( k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k9_relat_1(sK1,k2_relat_1(X0))
    | v1_relat_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_37985])).

cnf(c_37996,plain,
    ( k2_relat_1(k5_relat_1(sK0,k7_relat_1(sK1,k2_relat_1(sK0)))) = k9_relat_1(sK1,k2_relat_1(sK0)) ),
    inference(superposition,[status(thm)],[c_351,c_37986])).

cnf(c_8,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_354,plain,
    ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_574,plain,
    ( k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0))) = sK0 ),
    inference(superposition,[status(thm)],[c_351,c_354])).

cnf(c_360,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_5,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2)) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_355,plain,
    ( k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1381,plain,
    ( k5_relat_1(sK0,k5_relat_1(X0,X1)) = k5_relat_1(k5_relat_1(sK0,X0),X1)
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_351,c_355])).

cnf(c_2512,plain,
    ( k5_relat_1(k5_relat_1(sK0,k6_relat_1(X0)),X1) = k5_relat_1(sK0,k5_relat_1(k6_relat_1(X0),X1))
    | v1_relat_1(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_360,c_1381])).

cnf(c_4732,plain,
    ( k5_relat_1(sK0,k5_relat_1(k6_relat_1(X0),sK1)) = k5_relat_1(k5_relat_1(sK0,k6_relat_1(X0)),sK1) ),
    inference(superposition,[status(thm)],[c_352,c_2512])).

cnf(c_4738,plain,
    ( k5_relat_1(k5_relat_1(sK0,k6_relat_1(X0)),sK1) = k5_relat_1(sK0,k7_relat_1(sK1,X0)) ),
    inference(light_normalisation,[status(thm)],[c_4732,c_745])).

cnf(c_5151,plain,
    ( k5_relat_1(sK0,k7_relat_1(sK1,k2_relat_1(sK0))) = k5_relat_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_574,c_4738])).

cnf(c_37998,plain,
    ( k9_relat_1(sK1,k2_relat_1(sK0)) = k2_relat_1(k5_relat_1(sK0,sK1)) ),
    inference(light_normalisation,[status(thm)],[c_37996,c_5151])).

cnf(c_160,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_436,plain,
    ( k9_relat_1(sK1,k2_relat_1(sK0)) != X0
    | k2_relat_1(k5_relat_1(sK0,sK1)) != X0
    | k2_relat_1(k5_relat_1(sK0,sK1)) = k9_relat_1(sK1,k2_relat_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_160])).

cnf(c_23364,plain,
    ( k9_relat_1(sK1,k2_relat_1(sK0)) != k2_relat_1(k5_relat_1(sK0,sK1))
    | k2_relat_1(k5_relat_1(sK0,sK1)) = k9_relat_1(sK1,k2_relat_1(sK0))
    | k2_relat_1(k5_relat_1(sK0,sK1)) != k2_relat_1(k5_relat_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_436])).

cnf(c_159,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1303,plain,
    ( k2_relat_1(k5_relat_1(sK0,sK1)) = k2_relat_1(k5_relat_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_159])).

cnf(c_10,negated_conjecture,
    ( k2_relat_1(k5_relat_1(sK0,sK1)) != k9_relat_1(sK1,k2_relat_1(sK0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_37998,c_23364,c_1303,c_10])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n021.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 16:47:19 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 7.87/1.49  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 7.87/1.49  
% 7.87/1.49  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.87/1.49  
% 7.87/1.49  ------  iProver source info
% 7.87/1.49  
% 7.87/1.49  git: date: 2020-06-30 10:37:57 +0100
% 7.87/1.49  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.87/1.49  git: non_committed_changes: false
% 7.87/1.49  git: last_make_outside_of_git: false
% 7.87/1.49  
% 7.87/1.49  ------ 
% 7.87/1.49  
% 7.87/1.49  ------ Input Options
% 7.87/1.49  
% 7.87/1.49  --out_options                           all
% 7.87/1.49  --tptp_safe_out                         true
% 7.87/1.49  --problem_path                          ""
% 7.87/1.49  --include_path                          ""
% 7.87/1.49  --clausifier                            res/vclausify_rel
% 7.87/1.49  --clausifier_options                    --mode clausify
% 7.87/1.49  --stdin                                 false
% 7.87/1.49  --stats_out                             all
% 7.87/1.49  
% 7.87/1.49  ------ General Options
% 7.87/1.49  
% 7.87/1.49  --fof                                   false
% 7.87/1.49  --time_out_real                         305.
% 7.87/1.49  --time_out_virtual                      -1.
% 7.87/1.49  --symbol_type_check                     false
% 7.87/1.49  --clausify_out                          false
% 7.87/1.49  --sig_cnt_out                           false
% 7.87/1.49  --trig_cnt_out                          false
% 7.87/1.49  --trig_cnt_out_tolerance                1.
% 7.87/1.49  --trig_cnt_out_sk_spl                   false
% 7.87/1.49  --abstr_cl_out                          false
% 7.87/1.49  
% 7.87/1.49  ------ Global Options
% 7.87/1.49  
% 7.87/1.49  --schedule                              default
% 7.87/1.49  --add_important_lit                     false
% 7.87/1.49  --prop_solver_per_cl                    1000
% 7.87/1.49  --min_unsat_core                        false
% 7.87/1.49  --soft_assumptions                      false
% 7.87/1.49  --soft_lemma_size                       3
% 7.87/1.49  --prop_impl_unit_size                   0
% 7.87/1.49  --prop_impl_unit                        []
% 7.87/1.49  --share_sel_clauses                     true
% 7.87/1.49  --reset_solvers                         false
% 7.87/1.49  --bc_imp_inh                            [conj_cone]
% 7.87/1.49  --conj_cone_tolerance                   3.
% 7.87/1.49  --extra_neg_conj                        none
% 7.87/1.49  --large_theory_mode                     true
% 7.87/1.49  --prolific_symb_bound                   200
% 7.87/1.49  --lt_threshold                          2000
% 7.87/1.49  --clause_weak_htbl                      true
% 7.87/1.49  --gc_record_bc_elim                     false
% 7.87/1.49  
% 7.87/1.49  ------ Preprocessing Options
% 7.87/1.49  
% 7.87/1.49  --preprocessing_flag                    true
% 7.87/1.49  --time_out_prep_mult                    0.1
% 7.87/1.49  --splitting_mode                        input
% 7.87/1.49  --splitting_grd                         true
% 7.87/1.49  --splitting_cvd                         false
% 7.87/1.49  --splitting_cvd_svl                     false
% 7.87/1.49  --splitting_nvd                         32
% 7.87/1.49  --sub_typing                            true
% 7.87/1.49  --prep_gs_sim                           true
% 7.87/1.49  --prep_unflatten                        true
% 7.87/1.49  --prep_res_sim                          true
% 7.87/1.49  --prep_upred                            true
% 7.87/1.49  --prep_sem_filter                       exhaustive
% 7.87/1.49  --prep_sem_filter_out                   false
% 7.87/1.49  --pred_elim                             true
% 7.87/1.49  --res_sim_input                         true
% 7.87/1.49  --eq_ax_congr_red                       true
% 7.87/1.49  --pure_diseq_elim                       true
% 7.87/1.49  --brand_transform                       false
% 7.87/1.49  --non_eq_to_eq                          false
% 7.87/1.49  --prep_def_merge                        true
% 7.87/1.49  --prep_def_merge_prop_impl              false
% 7.87/1.49  --prep_def_merge_mbd                    true
% 7.87/1.49  --prep_def_merge_tr_red                 false
% 7.87/1.49  --prep_def_merge_tr_cl                  false
% 7.87/1.49  --smt_preprocessing                     true
% 7.87/1.49  --smt_ac_axioms                         fast
% 7.87/1.49  --preprocessed_out                      false
% 7.87/1.49  --preprocessed_stats                    false
% 7.87/1.49  
% 7.87/1.49  ------ Abstraction refinement Options
% 7.87/1.49  
% 7.87/1.49  --abstr_ref                             []
% 7.87/1.49  --abstr_ref_prep                        false
% 7.87/1.49  --abstr_ref_until_sat                   false
% 7.87/1.49  --abstr_ref_sig_restrict                funpre
% 7.87/1.49  --abstr_ref_af_restrict_to_split_sk     false
% 7.87/1.49  --abstr_ref_under                       []
% 7.87/1.49  
% 7.87/1.49  ------ SAT Options
% 7.87/1.49  
% 7.87/1.49  --sat_mode                              false
% 7.87/1.49  --sat_fm_restart_options                ""
% 7.87/1.49  --sat_gr_def                            false
% 7.87/1.49  --sat_epr_types                         true
% 7.87/1.49  --sat_non_cyclic_types                  false
% 7.87/1.49  --sat_finite_models                     false
% 7.87/1.49  --sat_fm_lemmas                         false
% 7.87/1.49  --sat_fm_prep                           false
% 7.87/1.49  --sat_fm_uc_incr                        true
% 7.87/1.49  --sat_out_model                         small
% 7.87/1.49  --sat_out_clauses                       false
% 7.87/1.49  
% 7.87/1.49  ------ QBF Options
% 7.87/1.49  
% 7.87/1.49  --qbf_mode                              false
% 7.87/1.49  --qbf_elim_univ                         false
% 7.87/1.49  --qbf_dom_inst                          none
% 7.87/1.49  --qbf_dom_pre_inst                      false
% 7.87/1.49  --qbf_sk_in                             false
% 7.87/1.49  --qbf_pred_elim                         true
% 7.87/1.49  --qbf_split                             512
% 7.87/1.49  
% 7.87/1.49  ------ BMC1 Options
% 7.87/1.49  
% 7.87/1.49  --bmc1_incremental                      false
% 7.87/1.49  --bmc1_axioms                           reachable_all
% 7.87/1.49  --bmc1_min_bound                        0
% 7.87/1.49  --bmc1_max_bound                        -1
% 7.87/1.49  --bmc1_max_bound_default                -1
% 7.87/1.49  --bmc1_symbol_reachability              true
% 7.87/1.49  --bmc1_property_lemmas                  false
% 7.87/1.49  --bmc1_k_induction                      false
% 7.87/1.49  --bmc1_non_equiv_states                 false
% 7.87/1.49  --bmc1_deadlock                         false
% 7.87/1.49  --bmc1_ucm                              false
% 7.87/1.49  --bmc1_add_unsat_core                   none
% 7.87/1.49  --bmc1_unsat_core_children              false
% 7.87/1.49  --bmc1_unsat_core_extrapolate_axioms    false
% 7.87/1.49  --bmc1_out_stat                         full
% 7.87/1.49  --bmc1_ground_init                      false
% 7.87/1.49  --bmc1_pre_inst_next_state              false
% 7.87/1.49  --bmc1_pre_inst_state                   false
% 7.87/1.49  --bmc1_pre_inst_reach_state             false
% 7.87/1.49  --bmc1_out_unsat_core                   false
% 7.87/1.49  --bmc1_aig_witness_out                  false
% 7.87/1.49  --bmc1_verbose                          false
% 7.87/1.49  --bmc1_dump_clauses_tptp                false
% 7.87/1.49  --bmc1_dump_unsat_core_tptp             false
% 7.87/1.49  --bmc1_dump_file                        -
% 7.87/1.49  --bmc1_ucm_expand_uc_limit              128
% 7.87/1.49  --bmc1_ucm_n_expand_iterations          6
% 7.87/1.49  --bmc1_ucm_extend_mode                  1
% 7.87/1.49  --bmc1_ucm_init_mode                    2
% 7.87/1.49  --bmc1_ucm_cone_mode                    none
% 7.87/1.49  --bmc1_ucm_reduced_relation_type        0
% 7.87/1.49  --bmc1_ucm_relax_model                  4
% 7.87/1.49  --bmc1_ucm_full_tr_after_sat            true
% 7.87/1.49  --bmc1_ucm_expand_neg_assumptions       false
% 7.87/1.49  --bmc1_ucm_layered_model                none
% 7.87/1.49  --bmc1_ucm_max_lemma_size               10
% 7.87/1.49  
% 7.87/1.49  ------ AIG Options
% 7.87/1.49  
% 7.87/1.49  --aig_mode                              false
% 7.87/1.49  
% 7.87/1.49  ------ Instantiation Options
% 7.87/1.49  
% 7.87/1.49  --instantiation_flag                    true
% 7.87/1.49  --inst_sos_flag                         false
% 7.87/1.49  --inst_sos_phase                        true
% 7.87/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.87/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.87/1.49  --inst_lit_sel_side                     num_symb
% 7.87/1.49  --inst_solver_per_active                1400
% 7.87/1.49  --inst_solver_calls_frac                1.
% 7.87/1.49  --inst_passive_queue_type               priority_queues
% 7.87/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.87/1.49  --inst_passive_queues_freq              [25;2]
% 7.87/1.49  --inst_dismatching                      true
% 7.87/1.49  --inst_eager_unprocessed_to_passive     true
% 7.87/1.49  --inst_prop_sim_given                   true
% 7.87/1.49  --inst_prop_sim_new                     false
% 7.87/1.49  --inst_subs_new                         false
% 7.87/1.49  --inst_eq_res_simp                      false
% 7.87/1.49  --inst_subs_given                       false
% 7.87/1.49  --inst_orphan_elimination               true
% 7.87/1.49  --inst_learning_loop_flag               true
% 7.87/1.49  --inst_learning_start                   3000
% 7.87/1.49  --inst_learning_factor                  2
% 7.87/1.49  --inst_start_prop_sim_after_learn       3
% 7.87/1.49  --inst_sel_renew                        solver
% 7.87/1.49  --inst_lit_activity_flag                true
% 7.87/1.49  --inst_restr_to_given                   false
% 7.87/1.49  --inst_activity_threshold               500
% 7.87/1.49  --inst_out_proof                        true
% 7.87/1.49  
% 7.87/1.49  ------ Resolution Options
% 7.87/1.49  
% 7.87/1.49  --resolution_flag                       true
% 7.87/1.49  --res_lit_sel                           adaptive
% 7.87/1.49  --res_lit_sel_side                      none
% 7.87/1.49  --res_ordering                          kbo
% 7.87/1.49  --res_to_prop_solver                    active
% 7.87/1.49  --res_prop_simpl_new                    false
% 7.87/1.49  --res_prop_simpl_given                  true
% 7.87/1.49  --res_passive_queue_type                priority_queues
% 7.87/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.87/1.49  --res_passive_queues_freq               [15;5]
% 7.87/1.49  --res_forward_subs                      full
% 7.87/1.49  --res_backward_subs                     full
% 7.87/1.49  --res_forward_subs_resolution           true
% 7.87/1.49  --res_backward_subs_resolution          true
% 7.87/1.49  --res_orphan_elimination                true
% 7.87/1.49  --res_time_limit                        2.
% 7.87/1.49  --res_out_proof                         true
% 7.87/1.49  
% 7.87/1.49  ------ Superposition Options
% 7.87/1.49  
% 7.87/1.49  --superposition_flag                    true
% 7.87/1.49  --sup_passive_queue_type                priority_queues
% 7.87/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.87/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.87/1.49  --demod_completeness_check              fast
% 7.87/1.49  --demod_use_ground                      true
% 7.87/1.49  --sup_to_prop_solver                    passive
% 7.87/1.49  --sup_prop_simpl_new                    true
% 7.87/1.49  --sup_prop_simpl_given                  true
% 7.87/1.49  --sup_fun_splitting                     false
% 7.87/1.49  --sup_smt_interval                      50000
% 7.87/1.49  
% 7.87/1.49  ------ Superposition Simplification Setup
% 7.87/1.49  
% 7.87/1.49  --sup_indices_passive                   []
% 7.87/1.49  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.49  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.87/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.49  --sup_full_bw                           [BwDemod]
% 7.87/1.49  --sup_immed_triv                        [TrivRules]
% 7.87/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.87/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.49  --sup_immed_bw_main                     []
% 7.87/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.87/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.87/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.49  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.87/1.49  
% 7.87/1.49  ------ Combination Options
% 7.87/1.49  
% 7.87/1.49  --comb_res_mult                         3
% 7.87/1.49  --comb_sup_mult                         2
% 7.87/1.49  --comb_inst_mult                        10
% 7.87/1.49  
% 7.87/1.49  ------ Debug Options
% 7.87/1.49  
% 7.87/1.49  --dbg_backtrace                         false
% 7.87/1.49  --dbg_dump_prop_clauses                 false
% 7.87/1.49  --dbg_dump_prop_clauses_file            -
% 7.87/1.49  --dbg_out_stat                          false
% 7.87/1.49  ------ Parsing...
% 7.87/1.49  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.87/1.49  
% 7.87/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 7.87/1.49  
% 7.87/1.49  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.87/1.49  
% 7.87/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 7.87/1.49  ------ Proving...
% 7.87/1.49  ------ Problem Properties 
% 7.87/1.49  
% 7.87/1.49  
% 7.87/1.49  clauses                                 13
% 7.87/1.49  conjectures                             3
% 7.87/1.49  EPR                                     2
% 7.87/1.49  Horn                                    13
% 7.87/1.49  unary                                   6
% 7.87/1.49  binary                                  4
% 7.87/1.49  lits                                    25
% 7.87/1.49  lits eq                                 8
% 7.87/1.49  fd_pure                                 0
% 7.87/1.49  fd_pseudo                               0
% 7.87/1.49  fd_cond                                 0
% 7.87/1.49  fd_pseudo_cond                          0
% 7.87/1.49  AC symbols                              0
% 7.87/1.49  
% 7.87/1.49  ------ Schedule dynamic 5 is on 
% 7.87/1.49  
% 7.87/1.49  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 7.87/1.49  
% 7.87/1.49  
% 7.87/1.49  ------ 
% 7.87/1.49  Current options:
% 7.87/1.49  ------ 
% 7.87/1.49  
% 7.87/1.49  ------ Input Options
% 7.87/1.49  
% 7.87/1.49  --out_options                           all
% 7.87/1.49  --tptp_safe_out                         true
% 7.87/1.49  --problem_path                          ""
% 7.87/1.49  --include_path                          ""
% 7.87/1.49  --clausifier                            res/vclausify_rel
% 7.87/1.49  --clausifier_options                    --mode clausify
% 7.87/1.49  --stdin                                 false
% 7.87/1.49  --stats_out                             all
% 7.87/1.49  
% 7.87/1.49  ------ General Options
% 7.87/1.49  
% 7.87/1.49  --fof                                   false
% 7.87/1.49  --time_out_real                         305.
% 7.87/1.49  --time_out_virtual                      -1.
% 7.87/1.49  --symbol_type_check                     false
% 7.87/1.49  --clausify_out                          false
% 7.87/1.49  --sig_cnt_out                           false
% 7.87/1.49  --trig_cnt_out                          false
% 7.87/1.49  --trig_cnt_out_tolerance                1.
% 7.87/1.49  --trig_cnt_out_sk_spl                   false
% 7.87/1.49  --abstr_cl_out                          false
% 7.87/1.49  
% 7.87/1.49  ------ Global Options
% 7.87/1.49  
% 7.87/1.49  --schedule                              default
% 7.87/1.49  --add_important_lit                     false
% 7.87/1.49  --prop_solver_per_cl                    1000
% 7.87/1.49  --min_unsat_core                        false
% 7.87/1.49  --soft_assumptions                      false
% 7.87/1.49  --soft_lemma_size                       3
% 7.87/1.49  --prop_impl_unit_size                   0
% 7.87/1.49  --prop_impl_unit                        []
% 7.87/1.49  --share_sel_clauses                     true
% 7.87/1.49  --reset_solvers                         false
% 7.87/1.49  --bc_imp_inh                            [conj_cone]
% 7.87/1.49  --conj_cone_tolerance                   3.
% 7.87/1.49  --extra_neg_conj                        none
% 7.87/1.49  --large_theory_mode                     true
% 7.87/1.49  --prolific_symb_bound                   200
% 7.87/1.49  --lt_threshold                          2000
% 7.87/1.49  --clause_weak_htbl                      true
% 7.87/1.49  --gc_record_bc_elim                     false
% 7.87/1.49  
% 7.87/1.49  ------ Preprocessing Options
% 7.87/1.49  
% 7.87/1.49  --preprocessing_flag                    true
% 7.87/1.49  --time_out_prep_mult                    0.1
% 7.87/1.49  --splitting_mode                        input
% 7.87/1.49  --splitting_grd                         true
% 7.87/1.49  --splitting_cvd                         false
% 7.87/1.49  --splitting_cvd_svl                     false
% 7.87/1.49  --splitting_nvd                         32
% 7.87/1.49  --sub_typing                            true
% 7.87/1.49  --prep_gs_sim                           true
% 7.87/1.49  --prep_unflatten                        true
% 7.87/1.49  --prep_res_sim                          true
% 7.87/1.49  --prep_upred                            true
% 7.87/1.49  --prep_sem_filter                       exhaustive
% 7.87/1.49  --prep_sem_filter_out                   false
% 7.87/1.49  --pred_elim                             true
% 7.87/1.49  --res_sim_input                         true
% 7.87/1.49  --eq_ax_congr_red                       true
% 7.87/1.49  --pure_diseq_elim                       true
% 7.87/1.49  --brand_transform                       false
% 7.87/1.49  --non_eq_to_eq                          false
% 7.87/1.49  --prep_def_merge                        true
% 7.87/1.49  --prep_def_merge_prop_impl              false
% 7.87/1.49  --prep_def_merge_mbd                    true
% 7.87/1.49  --prep_def_merge_tr_red                 false
% 7.87/1.49  --prep_def_merge_tr_cl                  false
% 7.87/1.49  --smt_preprocessing                     true
% 7.87/1.49  --smt_ac_axioms                         fast
% 7.87/1.49  --preprocessed_out                      false
% 7.87/1.49  --preprocessed_stats                    false
% 7.87/1.49  
% 7.87/1.49  ------ Abstraction refinement Options
% 7.87/1.49  
% 7.87/1.49  --abstr_ref                             []
% 7.87/1.49  --abstr_ref_prep                        false
% 7.87/1.49  --abstr_ref_until_sat                   false
% 7.87/1.49  --abstr_ref_sig_restrict                funpre
% 7.87/1.49  --abstr_ref_af_restrict_to_split_sk     false
% 7.87/1.49  --abstr_ref_under                       []
% 7.87/1.49  
% 7.87/1.49  ------ SAT Options
% 7.87/1.49  
% 7.87/1.49  --sat_mode                              false
% 7.87/1.49  --sat_fm_restart_options                ""
% 7.87/1.49  --sat_gr_def                            false
% 7.87/1.49  --sat_epr_types                         true
% 7.87/1.49  --sat_non_cyclic_types                  false
% 7.87/1.49  --sat_finite_models                     false
% 7.87/1.49  --sat_fm_lemmas                         false
% 7.87/1.49  --sat_fm_prep                           false
% 7.87/1.49  --sat_fm_uc_incr                        true
% 7.87/1.49  --sat_out_model                         small
% 7.87/1.49  --sat_out_clauses                       false
% 7.87/1.49  
% 7.87/1.49  ------ QBF Options
% 7.87/1.49  
% 7.87/1.49  --qbf_mode                              false
% 7.87/1.49  --qbf_elim_univ                         false
% 7.87/1.49  --qbf_dom_inst                          none
% 7.87/1.49  --qbf_dom_pre_inst                      false
% 7.87/1.49  --qbf_sk_in                             false
% 7.87/1.49  --qbf_pred_elim                         true
% 7.87/1.49  --qbf_split                             512
% 7.87/1.49  
% 7.87/1.49  ------ BMC1 Options
% 7.87/1.49  
% 7.87/1.49  --bmc1_incremental                      false
% 7.87/1.49  --bmc1_axioms                           reachable_all
% 7.87/1.49  --bmc1_min_bound                        0
% 7.87/1.49  --bmc1_max_bound                        -1
% 7.87/1.49  --bmc1_max_bound_default                -1
% 7.87/1.49  --bmc1_symbol_reachability              true
% 7.87/1.49  --bmc1_property_lemmas                  false
% 7.87/1.49  --bmc1_k_induction                      false
% 7.87/1.49  --bmc1_non_equiv_states                 false
% 7.87/1.49  --bmc1_deadlock                         false
% 7.87/1.49  --bmc1_ucm                              false
% 7.87/1.49  --bmc1_add_unsat_core                   none
% 7.87/1.49  --bmc1_unsat_core_children              false
% 7.87/1.49  --bmc1_unsat_core_extrapolate_axioms    false
% 7.87/1.49  --bmc1_out_stat                         full
% 7.87/1.49  --bmc1_ground_init                      false
% 7.87/1.49  --bmc1_pre_inst_next_state              false
% 7.87/1.49  --bmc1_pre_inst_state                   false
% 7.87/1.49  --bmc1_pre_inst_reach_state             false
% 7.87/1.49  --bmc1_out_unsat_core                   false
% 7.87/1.49  --bmc1_aig_witness_out                  false
% 7.87/1.49  --bmc1_verbose                          false
% 7.87/1.49  --bmc1_dump_clauses_tptp                false
% 7.87/1.49  --bmc1_dump_unsat_core_tptp             false
% 7.87/1.49  --bmc1_dump_file                        -
% 7.87/1.49  --bmc1_ucm_expand_uc_limit              128
% 7.87/1.49  --bmc1_ucm_n_expand_iterations          6
% 7.87/1.49  --bmc1_ucm_extend_mode                  1
% 7.87/1.49  --bmc1_ucm_init_mode                    2
% 7.87/1.49  --bmc1_ucm_cone_mode                    none
% 7.87/1.49  --bmc1_ucm_reduced_relation_type        0
% 7.87/1.49  --bmc1_ucm_relax_model                  4
% 7.87/1.49  --bmc1_ucm_full_tr_after_sat            true
% 7.87/1.49  --bmc1_ucm_expand_neg_assumptions       false
% 7.87/1.49  --bmc1_ucm_layered_model                none
% 7.87/1.49  --bmc1_ucm_max_lemma_size               10
% 7.87/1.49  
% 7.87/1.49  ------ AIG Options
% 7.87/1.49  
% 7.87/1.49  --aig_mode                              false
% 7.87/1.49  
% 7.87/1.49  ------ Instantiation Options
% 7.87/1.49  
% 7.87/1.49  --instantiation_flag                    true
% 7.87/1.49  --inst_sos_flag                         false
% 7.87/1.49  --inst_sos_phase                        true
% 7.87/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.87/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.87/1.49  --inst_lit_sel_side                     none
% 7.87/1.49  --inst_solver_per_active                1400
% 7.87/1.49  --inst_solver_calls_frac                1.
% 7.87/1.49  --inst_passive_queue_type               priority_queues
% 7.87/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.87/1.49  --inst_passive_queues_freq              [25;2]
% 7.87/1.49  --inst_dismatching                      true
% 7.87/1.49  --inst_eager_unprocessed_to_passive     true
% 7.87/1.49  --inst_prop_sim_given                   true
% 7.87/1.49  --inst_prop_sim_new                     false
% 7.87/1.49  --inst_subs_new                         false
% 7.87/1.49  --inst_eq_res_simp                      false
% 7.87/1.49  --inst_subs_given                       false
% 7.87/1.49  --inst_orphan_elimination               true
% 7.87/1.49  --inst_learning_loop_flag               true
% 7.87/1.49  --inst_learning_start                   3000
% 7.87/1.49  --inst_learning_factor                  2
% 7.87/1.49  --inst_start_prop_sim_after_learn       3
% 7.87/1.49  --inst_sel_renew                        solver
% 7.87/1.49  --inst_lit_activity_flag                true
% 7.87/1.49  --inst_restr_to_given                   false
% 7.87/1.49  --inst_activity_threshold               500
% 7.87/1.49  --inst_out_proof                        true
% 7.87/1.49  
% 7.87/1.49  ------ Resolution Options
% 7.87/1.49  
% 7.87/1.49  --resolution_flag                       false
% 7.87/1.49  --res_lit_sel                           adaptive
% 7.87/1.49  --res_lit_sel_side                      none
% 7.87/1.49  --res_ordering                          kbo
% 7.87/1.49  --res_to_prop_solver                    active
% 7.87/1.49  --res_prop_simpl_new                    false
% 7.87/1.49  --res_prop_simpl_given                  true
% 7.87/1.49  --res_passive_queue_type                priority_queues
% 7.87/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.87/1.49  --res_passive_queues_freq               [15;5]
% 7.87/1.49  --res_forward_subs                      full
% 7.87/1.49  --res_backward_subs                     full
% 7.87/1.49  --res_forward_subs_resolution           true
% 7.87/1.49  --res_backward_subs_resolution          true
% 7.87/1.49  --res_orphan_elimination                true
% 7.87/1.49  --res_time_limit                        2.
% 7.87/1.49  --res_out_proof                         true
% 7.87/1.49  
% 7.87/1.49  ------ Superposition Options
% 7.87/1.49  
% 7.87/1.49  --superposition_flag                    true
% 7.87/1.49  --sup_passive_queue_type                priority_queues
% 7.87/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.87/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.87/1.49  --demod_completeness_check              fast
% 7.87/1.49  --demod_use_ground                      true
% 7.87/1.49  --sup_to_prop_solver                    passive
% 7.87/1.49  --sup_prop_simpl_new                    true
% 7.87/1.49  --sup_prop_simpl_given                  true
% 7.87/1.49  --sup_fun_splitting                     false
% 7.87/1.49  --sup_smt_interval                      50000
% 7.87/1.49  
% 7.87/1.49  ------ Superposition Simplification Setup
% 7.87/1.49  
% 7.87/1.49  --sup_indices_passive                   []
% 7.87/1.49  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.49  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.87/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.49  --sup_full_bw                           [BwDemod]
% 7.87/1.49  --sup_immed_triv                        [TrivRules]
% 7.87/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.87/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.49  --sup_immed_bw_main                     []
% 7.87/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.87/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.87/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.49  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.87/1.49  
% 7.87/1.49  ------ Combination Options
% 7.87/1.49  
% 7.87/1.49  --comb_res_mult                         3
% 7.87/1.49  --comb_sup_mult                         2
% 7.87/1.49  --comb_inst_mult                        10
% 7.87/1.49  
% 7.87/1.49  ------ Debug Options
% 7.87/1.49  
% 7.87/1.49  --dbg_backtrace                         false
% 7.87/1.49  --dbg_dump_prop_clauses                 false
% 7.87/1.49  --dbg_dump_prop_clauses_file            -
% 7.87/1.49  --dbg_out_stat                          false
% 7.87/1.49  
% 7.87/1.49  
% 7.87/1.49  
% 7.87/1.49  
% 7.87/1.49  ------ Proving...
% 7.87/1.49  
% 7.87/1.49  
% 7.87/1.49  % SZS status Theorem for theBenchmark.p
% 7.87/1.49  
% 7.87/1.49  % SZS output start CNFRefutation for theBenchmark.p
% 7.87/1.49  
% 7.87/1.49  fof(f10,conjecture,(
% 7.87/1.49    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))))),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f11,negated_conjecture,(
% 7.87/1.49    ~! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))))),
% 7.87/1.49    inference(negated_conjecture,[],[f10])).
% 7.87/1.49  
% 7.87/1.49  fof(f20,plain,(
% 7.87/1.49    ? [X0] : (? [X1] : (k2_relat_1(k5_relat_1(X0,X1)) != k9_relat_1(X1,k2_relat_1(X0)) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 7.87/1.49    inference(ennf_transformation,[],[f11])).
% 7.87/1.49  
% 7.87/1.49  fof(f22,plain,(
% 7.87/1.49    ( ! [X0] : (? [X1] : (k2_relat_1(k5_relat_1(X0,X1)) != k9_relat_1(X1,k2_relat_1(X0)) & v1_relat_1(X1)) => (k2_relat_1(k5_relat_1(X0,sK1)) != k9_relat_1(sK1,k2_relat_1(X0)) & v1_relat_1(sK1))) )),
% 7.87/1.49    introduced(choice_axiom,[])).
% 7.87/1.49  
% 7.87/1.49  fof(f21,plain,(
% 7.87/1.49    ? [X0] : (? [X1] : (k2_relat_1(k5_relat_1(X0,X1)) != k9_relat_1(X1,k2_relat_1(X0)) & v1_relat_1(X1)) & v1_relat_1(X0)) => (? [X1] : (k2_relat_1(k5_relat_1(sK0,X1)) != k9_relat_1(X1,k2_relat_1(sK0)) & v1_relat_1(X1)) & v1_relat_1(sK0))),
% 7.87/1.49    introduced(choice_axiom,[])).
% 7.87/1.49  
% 7.87/1.49  fof(f23,plain,(
% 7.87/1.49    (k2_relat_1(k5_relat_1(sK0,sK1)) != k9_relat_1(sK1,k2_relat_1(sK0)) & v1_relat_1(sK1)) & v1_relat_1(sK0)),
% 7.87/1.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f20,f22,f21])).
% 7.87/1.49  
% 7.87/1.49  fof(f34,plain,(
% 7.87/1.49    v1_relat_1(sK0)),
% 7.87/1.49    inference(cnf_transformation,[],[f23])).
% 7.87/1.49  
% 7.87/1.49  fof(f2,axiom,(
% 7.87/1.49    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k7_relat_1(X0,X1)))),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f12,plain,(
% 7.87/1.49    ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0))),
% 7.87/1.49    inference(ennf_transformation,[],[f2])).
% 7.87/1.49  
% 7.87/1.49  fof(f25,plain,(
% 7.87/1.49    ( ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 7.87/1.49    inference(cnf_transformation,[],[f12])).
% 7.87/1.49  
% 7.87/1.49  fof(f35,plain,(
% 7.87/1.49    v1_relat_1(sK1)),
% 7.87/1.49    inference(cnf_transformation,[],[f23])).
% 7.87/1.49  
% 7.87/1.49  fof(f9,axiom,(
% 7.87/1.49    ! [X0,X1] : (v1_relat_1(X1) => k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1))),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f19,plain,(
% 7.87/1.49    ! [X0,X1] : (k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) | ~v1_relat_1(X1))),
% 7.87/1.49    inference(ennf_transformation,[],[f9])).
% 7.87/1.49  
% 7.87/1.49  fof(f33,plain,(
% 7.87/1.49    ( ! [X0,X1] : (k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) | ~v1_relat_1(X1)) )),
% 7.87/1.49    inference(cnf_transformation,[],[f19])).
% 7.87/1.49  
% 7.87/1.49  fof(f4,axiom,(
% 7.87/1.49    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))))),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f14,plain,(
% 7.87/1.49    ! [X0] : (! [X1] : (r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.87/1.49    inference(ennf_transformation,[],[f4])).
% 7.87/1.49  
% 7.87/1.49  fof(f27,plain,(
% 7.87/1.49    ( ! [X0,X1] : (r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 7.87/1.49    inference(cnf_transformation,[],[f14])).
% 7.87/1.49  
% 7.87/1.49  fof(f7,axiom,(
% 7.87/1.49    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f30,plain,(
% 7.87/1.49    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 7.87/1.49    inference(cnf_transformation,[],[f7])).
% 7.87/1.49  
% 7.87/1.49  fof(f1,axiom,(
% 7.87/1.49    ! [X0] : v1_relat_1(k6_relat_1(X0))),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f24,plain,(
% 7.87/1.49    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 7.87/1.49    inference(cnf_transformation,[],[f1])).
% 7.87/1.49  
% 7.87/1.49  fof(f5,axiom,(
% 7.87/1.49    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) => k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)))))),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f15,plain,(
% 7.87/1.49    ! [X0] : (! [X1] : ((k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)) | ~r1_tarski(k1_relat_1(X0),k2_relat_1(X1))) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.87/1.49    inference(ennf_transformation,[],[f5])).
% 7.87/1.49  
% 7.87/1.49  fof(f16,plain,(
% 7.87/1.49    ! [X0] : (! [X1] : (k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)) | ~r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.87/1.49    inference(flattening,[],[f15])).
% 7.87/1.49  
% 7.87/1.49  fof(f28,plain,(
% 7.87/1.49    ( ! [X0,X1] : (k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)) | ~r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 7.87/1.49    inference(cnf_transformation,[],[f16])).
% 7.87/1.49  
% 7.87/1.49  fof(f3,axiom,(
% 7.87/1.49    ! [X0,X1] : (v1_relat_1(X1) => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0))),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f13,plain,(
% 7.87/1.49    ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 7.87/1.49    inference(ennf_transformation,[],[f3])).
% 7.87/1.49  
% 7.87/1.49  fof(f26,plain,(
% 7.87/1.49    ( ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 7.87/1.49    inference(cnf_transformation,[],[f13])).
% 7.87/1.49  
% 7.87/1.49  fof(f8,axiom,(
% 7.87/1.49    ! [X0] : (v1_relat_1(X0) => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0)),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f18,plain,(
% 7.87/1.49    ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0))),
% 7.87/1.49    inference(ennf_transformation,[],[f8])).
% 7.87/1.49  
% 7.87/1.49  fof(f32,plain,(
% 7.87/1.49    ( ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0)) )),
% 7.87/1.49    inference(cnf_transformation,[],[f18])).
% 7.87/1.49  
% 7.87/1.49  fof(f6,axiom,(
% 7.87/1.49    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2))))),
% 7.87/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.49  
% 7.87/1.49  fof(f17,plain,(
% 7.87/1.49    ! [X0] : (! [X1] : (! [X2] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.87/1.49    inference(ennf_transformation,[],[f6])).
% 7.87/1.49  
% 7.87/1.49  fof(f29,plain,(
% 7.87/1.49    ( ! [X2,X0,X1] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 7.87/1.49    inference(cnf_transformation,[],[f17])).
% 7.87/1.49  
% 7.87/1.49  fof(f36,plain,(
% 7.87/1.49    k2_relat_1(k5_relat_1(sK0,sK1)) != k9_relat_1(sK1,k2_relat_1(sK0))),
% 7.87/1.49    inference(cnf_transformation,[],[f23])).
% 7.87/1.49  
% 7.87/1.49  cnf(c_12,negated_conjecture,
% 7.87/1.49      ( v1_relat_1(sK0) ),
% 7.87/1.49      inference(cnf_transformation,[],[f34]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_351,plain,
% 7.87/1.49      ( v1_relat_1(sK0) = iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_1,plain,
% 7.87/1.49      ( ~ v1_relat_1(X0) | v1_relat_1(k7_relat_1(X0,X1)) ),
% 7.87/1.49      inference(cnf_transformation,[],[f25]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_359,plain,
% 7.87/1.49      ( v1_relat_1(X0) != iProver_top
% 7.87/1.49      | v1_relat_1(k7_relat_1(X0,X1)) = iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_11,negated_conjecture,
% 7.87/1.49      ( v1_relat_1(sK1) ),
% 7.87/1.49      inference(cnf_transformation,[],[f35]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_352,plain,
% 7.87/1.49      ( v1_relat_1(sK1) = iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_9,plain,
% 7.87/1.49      ( ~ v1_relat_1(X0)
% 7.87/1.49      | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
% 7.87/1.49      inference(cnf_transformation,[],[f33]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_353,plain,
% 7.87/1.49      ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
% 7.87/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_745,plain,
% 7.87/1.49      ( k5_relat_1(k6_relat_1(X0),sK1) = k7_relat_1(sK1,X0) ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_352,c_353]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_3,plain,
% 7.87/1.49      ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))
% 7.87/1.49      | ~ v1_relat_1(X0)
% 7.87/1.49      | ~ v1_relat_1(X1) ),
% 7.87/1.49      inference(cnf_transformation,[],[f27]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_357,plain,
% 7.87/1.49      ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0)) = iProver_top
% 7.87/1.49      | v1_relat_1(X0) != iProver_top
% 7.87/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_1023,plain,
% 7.87/1.49      ( r1_tarski(k1_relat_1(k7_relat_1(sK1,X0)),k1_relat_1(k6_relat_1(X0))) = iProver_top
% 7.87/1.49      | v1_relat_1(k6_relat_1(X0)) != iProver_top
% 7.87/1.49      | v1_relat_1(sK1) != iProver_top ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_745,c_357]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_7,plain,
% 7.87/1.49      ( k1_relat_1(k6_relat_1(X0)) = X0 ),
% 7.87/1.49      inference(cnf_transformation,[],[f30]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_1024,plain,
% 7.87/1.49      ( r1_tarski(k1_relat_1(k7_relat_1(sK1,X0)),X0) = iProver_top
% 7.87/1.49      | v1_relat_1(k6_relat_1(X0)) != iProver_top
% 7.87/1.49      | v1_relat_1(sK1) != iProver_top ),
% 7.87/1.49      inference(light_normalisation,[status(thm)],[c_1023,c_7]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_14,plain,
% 7.87/1.49      ( v1_relat_1(sK1) = iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_0,plain,
% 7.87/1.49      ( v1_relat_1(k6_relat_1(X0)) ),
% 7.87/1.49      inference(cnf_transformation,[],[f24]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_38,plain,
% 7.87/1.49      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_1279,plain,
% 7.87/1.49      ( r1_tarski(k1_relat_1(k7_relat_1(sK1,X0)),X0) = iProver_top ),
% 7.87/1.49      inference(global_propositional_subsumption,
% 7.87/1.49                [status(thm)],
% 7.87/1.49                [c_1024,c_14,c_38]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_4,plain,
% 7.87/1.49      ( ~ r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
% 7.87/1.49      | ~ v1_relat_1(X0)
% 7.87/1.49      | ~ v1_relat_1(X1)
% 7.87/1.49      | k2_relat_1(k5_relat_1(X1,X0)) = k2_relat_1(X0) ),
% 7.87/1.49      inference(cnf_transformation,[],[f28]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_356,plain,
% 7.87/1.49      ( k2_relat_1(k5_relat_1(X0,X1)) = k2_relat_1(X1)
% 7.87/1.49      | r1_tarski(k1_relat_1(X1),k2_relat_1(X0)) != iProver_top
% 7.87/1.49      | v1_relat_1(X1) != iProver_top
% 7.87/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_1505,plain,
% 7.87/1.49      ( k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k2_relat_1(k7_relat_1(sK1,k2_relat_1(X0)))
% 7.87/1.49      | v1_relat_1(X0) != iProver_top
% 7.87/1.49      | v1_relat_1(k7_relat_1(sK1,k2_relat_1(X0))) != iProver_top ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_1279,c_356]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_2,plain,
% 7.87/1.49      ( ~ v1_relat_1(X0)
% 7.87/1.49      | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 7.87/1.49      inference(cnf_transformation,[],[f26]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_358,plain,
% 7.87/1.49      ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
% 7.87/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_858,plain,
% 7.87/1.49      ( k2_relat_1(k7_relat_1(sK1,X0)) = k9_relat_1(sK1,X0) ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_352,c_358]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_1554,plain,
% 7.87/1.49      ( k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k9_relat_1(sK1,k2_relat_1(X0))
% 7.87/1.49      | v1_relat_1(X0) != iProver_top
% 7.87/1.49      | v1_relat_1(k7_relat_1(sK1,k2_relat_1(X0))) != iProver_top ),
% 7.87/1.49      inference(demodulation,[status(thm)],[c_1505,c_858]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_12706,plain,
% 7.87/1.49      ( k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k9_relat_1(sK1,k2_relat_1(X0))
% 7.87/1.49      | v1_relat_1(X0) != iProver_top
% 7.87/1.49      | v1_relat_1(sK1) != iProver_top ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_359,c_1554]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_37985,plain,
% 7.87/1.49      ( v1_relat_1(X0) != iProver_top
% 7.87/1.49      | k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k9_relat_1(sK1,k2_relat_1(X0)) ),
% 7.87/1.49      inference(global_propositional_subsumption,
% 7.87/1.49                [status(thm)],
% 7.87/1.49                [c_12706,c_14]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_37986,plain,
% 7.87/1.49      ( k2_relat_1(k5_relat_1(X0,k7_relat_1(sK1,k2_relat_1(X0)))) = k9_relat_1(sK1,k2_relat_1(X0))
% 7.87/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.87/1.49      inference(renaming,[status(thm)],[c_37985]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_37996,plain,
% 7.87/1.49      ( k2_relat_1(k5_relat_1(sK0,k7_relat_1(sK1,k2_relat_1(sK0)))) = k9_relat_1(sK1,k2_relat_1(sK0)) ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_351,c_37986]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_8,plain,
% 7.87/1.49      ( ~ v1_relat_1(X0)
% 7.87/1.49      | k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ),
% 7.87/1.49      inference(cnf_transformation,[],[f32]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_354,plain,
% 7.87/1.49      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
% 7.87/1.49      | v1_relat_1(X0) != iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_574,plain,
% 7.87/1.49      ( k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0))) = sK0 ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_351,c_354]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_360,plain,
% 7.87/1.49      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_5,plain,
% 7.87/1.49      ( ~ v1_relat_1(X0)
% 7.87/1.49      | ~ v1_relat_1(X1)
% 7.87/1.49      | ~ v1_relat_1(X2)
% 7.87/1.49      | k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2)) ),
% 7.87/1.49      inference(cnf_transformation,[],[f29]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_355,plain,
% 7.87/1.49      ( k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))
% 7.87/1.49      | v1_relat_1(X0) != iProver_top
% 7.87/1.49      | v1_relat_1(X1) != iProver_top
% 7.87/1.49      | v1_relat_1(X2) != iProver_top ),
% 7.87/1.49      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_1381,plain,
% 7.87/1.49      ( k5_relat_1(sK0,k5_relat_1(X0,X1)) = k5_relat_1(k5_relat_1(sK0,X0),X1)
% 7.87/1.49      | v1_relat_1(X0) != iProver_top
% 7.87/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_351,c_355]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_2512,plain,
% 7.87/1.49      ( k5_relat_1(k5_relat_1(sK0,k6_relat_1(X0)),X1) = k5_relat_1(sK0,k5_relat_1(k6_relat_1(X0),X1))
% 7.87/1.49      | v1_relat_1(X1) != iProver_top ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_360,c_1381]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_4732,plain,
% 7.87/1.49      ( k5_relat_1(sK0,k5_relat_1(k6_relat_1(X0),sK1)) = k5_relat_1(k5_relat_1(sK0,k6_relat_1(X0)),sK1) ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_352,c_2512]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_4738,plain,
% 7.87/1.49      ( k5_relat_1(k5_relat_1(sK0,k6_relat_1(X0)),sK1) = k5_relat_1(sK0,k7_relat_1(sK1,X0)) ),
% 7.87/1.49      inference(light_normalisation,[status(thm)],[c_4732,c_745]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_5151,plain,
% 7.87/1.49      ( k5_relat_1(sK0,k7_relat_1(sK1,k2_relat_1(sK0))) = k5_relat_1(sK0,sK1) ),
% 7.87/1.49      inference(superposition,[status(thm)],[c_574,c_4738]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_37998,plain,
% 7.87/1.49      ( k9_relat_1(sK1,k2_relat_1(sK0)) = k2_relat_1(k5_relat_1(sK0,sK1)) ),
% 7.87/1.49      inference(light_normalisation,[status(thm)],[c_37996,c_5151]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_160,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_436,plain,
% 7.87/1.49      ( k9_relat_1(sK1,k2_relat_1(sK0)) != X0
% 7.87/1.49      | k2_relat_1(k5_relat_1(sK0,sK1)) != X0
% 7.87/1.49      | k2_relat_1(k5_relat_1(sK0,sK1)) = k9_relat_1(sK1,k2_relat_1(sK0)) ),
% 7.87/1.49      inference(instantiation,[status(thm)],[c_160]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_23364,plain,
% 7.87/1.49      ( k9_relat_1(sK1,k2_relat_1(sK0)) != k2_relat_1(k5_relat_1(sK0,sK1))
% 7.87/1.49      | k2_relat_1(k5_relat_1(sK0,sK1)) = k9_relat_1(sK1,k2_relat_1(sK0))
% 7.87/1.49      | k2_relat_1(k5_relat_1(sK0,sK1)) != k2_relat_1(k5_relat_1(sK0,sK1)) ),
% 7.87/1.49      inference(instantiation,[status(thm)],[c_436]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_159,plain,( X0 = X0 ),theory(equality) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_1303,plain,
% 7.87/1.49      ( k2_relat_1(k5_relat_1(sK0,sK1)) = k2_relat_1(k5_relat_1(sK0,sK1)) ),
% 7.87/1.49      inference(instantiation,[status(thm)],[c_159]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(c_10,negated_conjecture,
% 7.87/1.49      ( k2_relat_1(k5_relat_1(sK0,sK1)) != k9_relat_1(sK1,k2_relat_1(sK0)) ),
% 7.87/1.49      inference(cnf_transformation,[],[f36]) ).
% 7.87/1.49  
% 7.87/1.49  cnf(contradiction,plain,
% 7.87/1.49      ( $false ),
% 7.87/1.49      inference(minisat,[status(thm)],[c_37998,c_23364,c_1303,c_10]) ).
% 7.87/1.49  
% 7.87/1.49  
% 7.87/1.49  % SZS output end CNFRefutation for theBenchmark.p
% 7.87/1.49  
% 7.87/1.49  ------                               Statistics
% 7.87/1.49  
% 7.87/1.49  ------ General
% 7.87/1.49  
% 7.87/1.49  abstr_ref_over_cycles:                  0
% 7.87/1.49  abstr_ref_under_cycles:                 0
% 7.87/1.49  gc_basic_clause_elim:                   0
% 7.87/1.49  forced_gc_time:                         0
% 7.87/1.49  parsing_time:                           0.009
% 7.87/1.49  unif_index_cands_time:                  0.
% 7.87/1.49  unif_index_add_time:                    0.
% 7.87/1.49  orderings_time:                         0.
% 7.87/1.49  out_proof_time:                         0.008
% 7.87/1.49  total_time:                             0.997
% 7.87/1.49  num_of_symbols:                         41
% 7.87/1.49  num_of_terms:                           36291
% 7.87/1.49  
% 7.87/1.49  ------ Preprocessing
% 7.87/1.49  
% 7.87/1.49  num_of_splits:                          0
% 7.87/1.49  num_of_split_atoms:                     0
% 7.87/1.49  num_of_reused_defs:                     0
% 7.87/1.49  num_eq_ax_congr_red:                    4
% 7.87/1.49  num_of_sem_filtered_clauses:            1
% 7.87/1.49  num_of_subtypes:                        0
% 7.87/1.49  monotx_restored_types:                  0
% 7.87/1.49  sat_num_of_epr_types:                   0
% 7.87/1.49  sat_num_of_non_cyclic_types:            0
% 7.87/1.49  sat_guarded_non_collapsed_types:        0
% 7.87/1.49  num_pure_diseq_elim:                    0
% 7.87/1.49  simp_replaced_by:                       0
% 7.87/1.49  res_preprocessed:                       58
% 7.87/1.49  prep_upred:                             0
% 7.87/1.49  prep_unflattend:                        0
% 7.87/1.49  smt_new_axioms:                         0
% 7.87/1.49  pred_elim_cands:                        2
% 7.87/1.49  pred_elim:                              0
% 7.87/1.49  pred_elim_cl:                           0
% 7.87/1.49  pred_elim_cycles:                       1
% 7.87/1.49  merged_defs:                            0
% 7.87/1.49  merged_defs_ncl:                        0
% 7.87/1.49  bin_hyper_res:                          0
% 7.87/1.49  prep_cycles:                            3
% 7.87/1.49  pred_elim_time:                         0.
% 7.87/1.49  splitting_time:                         0.
% 7.87/1.49  sem_filter_time:                        0.
% 7.87/1.49  monotx_time:                            0.
% 7.87/1.49  subtype_inf_time:                       0.
% 7.87/1.49  
% 7.87/1.49  ------ Problem properties
% 7.87/1.49  
% 7.87/1.49  clauses:                                13
% 7.87/1.49  conjectures:                            3
% 7.87/1.49  epr:                                    2
% 7.87/1.49  horn:                                   13
% 7.87/1.49  ground:                                 3
% 7.87/1.49  unary:                                  6
% 7.87/1.49  binary:                                 4
% 7.87/1.49  lits:                                   25
% 7.87/1.49  lits_eq:                                8
% 7.87/1.49  fd_pure:                                0
% 7.87/1.49  fd_pseudo:                              0
% 7.87/1.49  fd_cond:                                0
% 7.87/1.49  fd_pseudo_cond:                         0
% 7.87/1.49  ac_symbols:                             0
% 7.87/1.49  
% 7.87/1.49  ------ Propositional Solver
% 7.87/1.49  
% 7.87/1.49  prop_solver_calls:                      30
% 7.87/1.49  prop_fast_solver_calls:                 833
% 7.87/1.49  smt_solver_calls:                       0
% 7.87/1.49  smt_fast_solver_calls:                  0
% 7.87/1.49  prop_num_of_clauses:                    10411
% 7.87/1.49  prop_preprocess_simplified:             18032
% 7.87/1.49  prop_fo_subsumed:                       32
% 7.87/1.49  prop_solver_time:                       0.
% 7.87/1.49  smt_solver_time:                        0.
% 7.87/1.49  smt_fast_solver_time:                   0.
% 7.87/1.49  prop_fast_solver_time:                  0.
% 7.87/1.49  prop_unsat_core_time:                   0.001
% 7.87/1.49  
% 7.87/1.49  ------ QBF
% 7.87/1.49  
% 7.87/1.49  qbf_q_res:                              0
% 7.87/1.49  qbf_num_tautologies:                    0
% 7.87/1.49  qbf_prep_cycles:                        0
% 7.87/1.49  
% 7.87/1.49  ------ BMC1
% 7.87/1.49  
% 7.87/1.49  bmc1_current_bound:                     -1
% 7.87/1.49  bmc1_last_solved_bound:                 -1
% 7.87/1.49  bmc1_unsat_core_size:                   -1
% 7.87/1.49  bmc1_unsat_core_parents_size:           -1
% 7.87/1.49  bmc1_merge_next_fun:                    0
% 7.87/1.49  bmc1_unsat_core_clauses_time:           0.
% 7.87/1.49  
% 7.87/1.49  ------ Instantiation
% 7.87/1.49  
% 7.87/1.49  inst_num_of_clauses:                    4705
% 7.87/1.49  inst_num_in_passive:                    1803
% 7.87/1.49  inst_num_in_active:                     1326
% 7.87/1.49  inst_num_in_unprocessed:                1582
% 7.87/1.49  inst_num_of_loops:                      1600
% 7.87/1.49  inst_num_of_learning_restarts:          0
% 7.87/1.49  inst_num_moves_active_passive:          269
% 7.87/1.49  inst_lit_activity:                      0
% 7.87/1.49  inst_lit_activity_moves:                1
% 7.87/1.49  inst_num_tautologies:                   0
% 7.87/1.49  inst_num_prop_implied:                  0
% 7.87/1.49  inst_num_existing_simplified:           0
% 7.87/1.49  inst_num_eq_res_simplified:             0
% 7.87/1.49  inst_num_child_elim:                    0
% 7.87/1.49  inst_num_of_dismatching_blockings:      7766
% 7.87/1.49  inst_num_of_non_proper_insts:           6791
% 7.87/1.49  inst_num_of_duplicates:                 0
% 7.87/1.49  inst_inst_num_from_inst_to_res:         0
% 7.87/1.49  inst_dismatching_checking_time:         0.
% 7.87/1.49  
% 7.87/1.49  ------ Resolution
% 7.87/1.49  
% 7.87/1.49  res_num_of_clauses:                     0
% 7.87/1.49  res_num_in_passive:                     0
% 7.87/1.49  res_num_in_active:                      0
% 7.87/1.49  res_num_of_loops:                       61
% 7.87/1.49  res_forward_subset_subsumed:            1302
% 7.87/1.49  res_backward_subset_subsumed:           14
% 7.87/1.49  res_forward_subsumed:                   0
% 7.87/1.49  res_backward_subsumed:                  0
% 7.87/1.49  res_forward_subsumption_resolution:     0
% 7.87/1.49  res_backward_subsumption_resolution:    0
% 7.87/1.49  res_clause_to_clause_subsumption:       1956
% 7.87/1.49  res_orphan_elimination:                 0
% 7.87/1.49  res_tautology_del:                      570
% 7.87/1.49  res_num_eq_res_simplified:              0
% 7.87/1.49  res_num_sel_changes:                    0
% 7.87/1.49  res_moves_from_active_to_pass:          0
% 7.87/1.49  
% 7.87/1.49  ------ Superposition
% 7.87/1.49  
% 7.87/1.49  sup_time_total:                         0.
% 7.87/1.49  sup_time_generating:                    0.
% 7.87/1.49  sup_time_sim_full:                      0.
% 7.87/1.49  sup_time_sim_immed:                     0.
% 7.87/1.49  
% 7.87/1.49  sup_num_of_clauses:                     841
% 7.87/1.49  sup_num_in_active:                      314
% 7.87/1.49  sup_num_in_passive:                     527
% 7.87/1.49  sup_num_of_loops:                       318
% 7.87/1.49  sup_fw_superposition:                   680
% 7.87/1.49  sup_bw_superposition:                   340
% 7.87/1.49  sup_immediate_simplified:               480
% 7.87/1.49  sup_given_eliminated:                   0
% 7.87/1.49  comparisons_done:                       0
% 7.87/1.49  comparisons_avoided:                    0
% 7.87/1.49  
% 7.87/1.49  ------ Simplifications
% 7.87/1.49  
% 7.87/1.49  
% 7.87/1.49  sim_fw_subset_subsumed:                 44
% 7.87/1.49  sim_bw_subset_subsumed:                 17
% 7.87/1.49  sim_fw_subsumed:                        18
% 7.87/1.49  sim_bw_subsumed:                        0
% 7.87/1.49  sim_fw_subsumption_res:                 3
% 7.87/1.49  sim_bw_subsumption_res:                 0
% 7.87/1.49  sim_tautology_del:                      0
% 7.87/1.49  sim_eq_tautology_del:                   50
% 7.87/1.49  sim_eq_res_simp:                        0
% 7.87/1.49  sim_fw_demodulated:                     149
% 7.87/1.49  sim_bw_demodulated:                     1
% 7.87/1.49  sim_light_normalised:                   353
% 7.87/1.49  sim_joinable_taut:                      0
% 7.87/1.49  sim_joinable_simp:                      0
% 7.87/1.49  sim_ac_normalised:                      0
% 7.87/1.49  sim_smt_subsumption:                    0
% 7.87/1.49  
%------------------------------------------------------------------------------
