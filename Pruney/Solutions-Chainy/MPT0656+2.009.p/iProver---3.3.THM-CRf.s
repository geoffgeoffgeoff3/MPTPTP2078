%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:50:46 EST 2020

% Result     : Theorem 2.67s
% Output     : CNFRefutation 2.67s
% Verified   : 
% Statistics : Number of formulae       :  101 ( 813 expanded)
%              Number of clauses        :   65 ( 214 expanded)
%              Number of leaves         :    9 ( 211 expanded)
%              Depth                    :   19
%              Number of atoms          :  280 (5049 expanded)
%              Number of equality atoms :  125 (1933 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0))
              & k2_relat_1(X0) = k1_relat_1(X1)
              & v2_funct_1(X0) )
           => k2_funct_1(X0) = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( ( v1_funct_1(X0)
          & v1_relat_1(X0) )
       => ! [X1] :
            ( ( v1_funct_1(X1)
              & v1_relat_1(X1) )
           => ( ( k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0))
                & k2_relat_1(X0) = k1_relat_1(X1)
                & v2_funct_1(X0) )
             => k2_funct_1(X0) = X1 ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f18,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k2_funct_1(X0) != X1
          & k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0))
          & k2_relat_1(X0) = k1_relat_1(X1)
          & v2_funct_1(X0)
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f19,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k2_funct_1(X0) != X1
          & k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0))
          & k2_relat_1(X0) = k1_relat_1(X1)
          & v2_funct_1(X0)
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f18])).

fof(f21,plain,(
    ! [X0] :
      ( ? [X1] :
          ( k2_funct_1(X0) != X1
          & k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0))
          & k2_relat_1(X0) = k1_relat_1(X1)
          & v2_funct_1(X0)
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
     => ( k2_funct_1(X0) != sK1
        & k5_relat_1(X0,sK1) = k6_relat_1(k1_relat_1(X0))
        & k2_relat_1(X0) = k1_relat_1(sK1)
        & v2_funct_1(X0)
        & v1_funct_1(sK1)
        & v1_relat_1(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( k2_funct_1(X0) != X1
            & k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0))
            & k2_relat_1(X0) = k1_relat_1(X1)
            & v2_funct_1(X0)
            & v1_funct_1(X1)
            & v1_relat_1(X1) )
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( k2_funct_1(sK0) != X1
          & k5_relat_1(sK0,X1) = k6_relat_1(k1_relat_1(sK0))
          & k2_relat_1(sK0) = k1_relat_1(X1)
          & v2_funct_1(sK0)
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(sK0)
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,
    ( k2_funct_1(sK0) != sK1
    & k5_relat_1(sK0,sK1) = k6_relat_1(k1_relat_1(sK0))
    & k2_relat_1(sK0) = k1_relat_1(sK1)
    & v2_funct_1(sK0)
    & v1_funct_1(sK1)
    & v1_relat_1(sK1)
    & v1_funct_1(sK0)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f19,f21,f20])).

fof(f34,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f22])).

fof(f32,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f22])).

fof(f4,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => k4_relat_1(X0) = k2_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( k4_relat_1(X0) = k2_funct_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f13,plain,(
    ! [X0] :
      ( k4_relat_1(X0) = k2_funct_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f12])).

fof(f27,plain,(
    ! [X0] :
      ( k4_relat_1(X0) = k2_funct_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f36,plain,(
    v2_funct_1(sK0) ),
    inference(cnf_transformation,[],[f22])).

fof(f33,plain,(
    v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f15,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f14])).

fof(f28,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2)
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f25,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
          & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f31,plain,(
    ! [X0] :
      ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f38,plain,(
    k5_relat_1(sK0,sK1) = k6_relat_1(k1_relat_1(sK0)) ),
    inference(cnf_transformation,[],[f22])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f26,plain,(
    ! [X0] :
      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f37,plain,(
    k2_relat_1(sK0) = k1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f22])).

fof(f30,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( k2_relat_1(k4_relat_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k4_relat_1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( ( k2_relat_1(k4_relat_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k4_relat_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f23,plain,(
    ! [X0] :
      ( k2_relat_1(X0) = k1_relat_1(k4_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f39,plain,(
    k2_funct_1(sK0) != sK1 ),
    inference(cnf_transformation,[],[f22])).

cnf(c_14,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_267,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_489,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_267])).

cnf(c_16,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_265,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_491,plain,
    ( v1_relat_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_265])).

cnf(c_4,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_funct_1(X0) = k4_relat_1(X0) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_12,negated_conjecture,
    ( v2_funct_1(sK0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_177,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_funct_1(X0) = k4_relat_1(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_12])).

cnf(c_178,plain,
    ( ~ v1_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k2_funct_1(sK0) = k4_relat_1(sK0) ),
    inference(unflattening,[status(thm)],[c_177])).

cnf(c_15,negated_conjecture,
    ( v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_35,plain,
    ( ~ v1_funct_1(sK0)
    | ~ v2_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k2_funct_1(sK0) = k4_relat_1(sK0) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_180,plain,
    ( k2_funct_1(sK0) = k4_relat_1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_178,c_16,c_15,c_12,c_35])).

cnf(c_262,plain,
    ( k2_funct_1(sK0) = k4_relat_1(sK0) ),
    inference(subtyping,[status(esa)],[c_180])).

cnf(c_6,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_272,plain,
    ( ~ v1_funct_1(X0_39)
    | ~ v1_relat_1(X0_39)
    | v1_relat_1(k2_funct_1(X0_39)) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_487,plain,
    ( v1_funct_1(X0_39) != iProver_top
    | v1_relat_1(X0_39) != iProver_top
    | v1_relat_1(k2_funct_1(X0_39)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_272])).

cnf(c_1101,plain,
    ( v1_funct_1(sK0) != iProver_top
    | v1_relat_1(k4_relat_1(sK0)) = iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_262,c_487])).

cnf(c_17,plain,
    ( v1_relat_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_18,plain,
    ( v1_funct_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_1154,plain,
    ( v1_relat_1(k4_relat_1(sK0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1101,c_17,c_18])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | k5_relat_1(k5_relat_1(X0,X2),X1) = k5_relat_1(X0,k5_relat_1(X2,X1)) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_275,plain,
    ( ~ v1_relat_1(X0_39)
    | ~ v1_relat_1(X1_39)
    | ~ v1_relat_1(X2_39)
    | k5_relat_1(k5_relat_1(X0_39,X2_39),X1_39) = k5_relat_1(X0_39,k5_relat_1(X2_39,X1_39)) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_484,plain,
    ( k5_relat_1(k5_relat_1(X0_39,X1_39),X2_39) = k5_relat_1(X0_39,k5_relat_1(X1_39,X2_39))
    | v1_relat_1(X0_39) != iProver_top
    | v1_relat_1(X1_39) != iProver_top
    | v1_relat_1(X2_39) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_275])).

cnf(c_1159,plain,
    ( k5_relat_1(k4_relat_1(sK0),k5_relat_1(X0_39,X1_39)) = k5_relat_1(k5_relat_1(k4_relat_1(sK0),X0_39),X1_39)
    | v1_relat_1(X0_39) != iProver_top
    | v1_relat_1(X1_39) != iProver_top ),
    inference(superposition,[status(thm)],[c_1154,c_484])).

cnf(c_3156,plain,
    ( k5_relat_1(k5_relat_1(k4_relat_1(sK0),sK0),X0_39) = k5_relat_1(k4_relat_1(sK0),k5_relat_1(sK0,X0_39))
    | v1_relat_1(X0_39) != iProver_top ),
    inference(superposition,[status(thm)],[c_491,c_1159])).

cnf(c_7,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_169,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_12])).

cnf(c_170,plain,
    ( ~ v1_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k5_relat_1(k2_funct_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
    inference(unflattening,[status(thm)],[c_169])).

cnf(c_26,plain,
    ( ~ v1_funct_1(sK0)
    | ~ v2_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k5_relat_1(k2_funct_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_172,plain,
    ( k5_relat_1(k2_funct_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_170,c_16,c_15,c_12,c_26])).

cnf(c_263,plain,
    ( k5_relat_1(k2_funct_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
    inference(subtyping,[status(esa)],[c_172])).

cnf(c_514,plain,
    ( k5_relat_1(k4_relat_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
    inference(light_normalisation,[status(thm)],[c_263,c_262])).

cnf(c_3173,plain,
    ( k5_relat_1(k4_relat_1(sK0),k5_relat_1(sK0,X0_39)) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),X0_39)
    | v1_relat_1(X0_39) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3156,c_514])).

cnf(c_4085,plain,
    ( k5_relat_1(k4_relat_1(sK0),k5_relat_1(sK0,sK1)) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),sK1) ),
    inference(superposition,[status(thm)],[c_489,c_3173])).

cnf(c_10,negated_conjecture,
    ( k5_relat_1(sK0,sK1) = k6_relat_1(k1_relat_1(sK0)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_270,negated_conjecture,
    ( k5_relat_1(sK0,sK1) = k6_relat_1(k1_relat_1(sK0)) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_3,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ),
    inference(cnf_transformation,[],[f26])).

cnf(c_274,plain,
    ( ~ v1_relat_1(X0_39)
    | k5_relat_1(k6_relat_1(k1_relat_1(X0_39)),X0_39) = X0_39 ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_485,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(X0_39)),X0_39) = X0_39
    | v1_relat_1(X0_39) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_274])).

cnf(c_710,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(sK1)),sK1) = sK1 ),
    inference(superposition,[status(thm)],[c_489,c_485])).

cnf(c_11,negated_conjecture,
    ( k2_relat_1(sK0) = k1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_269,negated_conjecture,
    ( k2_relat_1(sK0) = k1_relat_1(sK1) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_715,plain,
    ( k5_relat_1(k6_relat_1(k2_relat_1(sK0)),sK1) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_710,c_269])).

cnf(c_4101,plain,
    ( k5_relat_1(k4_relat_1(sK0),k6_relat_1(k1_relat_1(sK0))) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_4085,c_270,c_715])).

cnf(c_4088,plain,
    ( k5_relat_1(k4_relat_1(sK0),k5_relat_1(sK0,k4_relat_1(sK0))) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),k4_relat_1(sK0)) ),
    inference(superposition,[status(thm)],[c_1154,c_3173])).

cnf(c_8,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_161,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_12])).

cnf(c_162,plain,
    ( ~ v1_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
    inference(unflattening,[status(thm)],[c_161])).

cnf(c_23,plain,
    ( ~ v1_funct_1(sK0)
    | ~ v2_funct_1(sK0)
    | ~ v1_relat_1(sK0)
    | k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_164,plain,
    ( k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_162,c_16,c_15,c_12,c_23])).

cnf(c_264,plain,
    ( k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
    inference(subtyping,[status(esa)],[c_164])).

cnf(c_511,plain,
    ( k5_relat_1(sK0,k4_relat_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
    inference(light_normalisation,[status(thm)],[c_264,c_262])).

cnf(c_1160,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(k4_relat_1(sK0))),k4_relat_1(sK0)) = k4_relat_1(sK0) ),
    inference(superposition,[status(thm)],[c_1154,c_485])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | k1_relat_1(k4_relat_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_276,plain,
    ( ~ v1_relat_1(X0_39)
    | k1_relat_1(k4_relat_1(X0_39)) = k2_relat_1(X0_39) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_483,plain,
    ( k1_relat_1(k4_relat_1(X0_39)) = k2_relat_1(X0_39)
    | v1_relat_1(X0_39) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_276])).

cnf(c_702,plain,
    ( k1_relat_1(k4_relat_1(sK0)) = k2_relat_1(sK0) ),
    inference(superposition,[status(thm)],[c_491,c_483])).

cnf(c_1170,plain,
    ( k5_relat_1(k6_relat_1(k2_relat_1(sK0)),k4_relat_1(sK0)) = k4_relat_1(sK0) ),
    inference(light_normalisation,[status(thm)],[c_1160,c_702])).

cnf(c_4090,plain,
    ( k5_relat_1(k4_relat_1(sK0),k6_relat_1(k1_relat_1(sK0))) = k4_relat_1(sK0) ),
    inference(light_normalisation,[status(thm)],[c_4088,c_511,c_1170])).

cnf(c_4102,plain,
    ( k4_relat_1(sK0) = sK1 ),
    inference(demodulation,[status(thm)],[c_4101,c_4090])).

cnf(c_9,negated_conjecture,
    ( k2_funct_1(sK0) != sK1 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_271,negated_conjecture,
    ( k2_funct_1(sK0) != sK1 ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_505,plain,
    ( k4_relat_1(sK0) != sK1 ),
    inference(demodulation,[status(thm)],[c_262,c_271])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4102,c_505])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.32  % Computer   : n004.cluster.edu
% 0.12/0.32  % Model      : x86_64 x86_64
% 0.12/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.32  % Memory     : 8042.1875MB
% 0.12/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.32  % CPULimit   : 60
% 0.12/0.32  % WCLimit    : 600
% 0.12/0.32  % DateTime   : Tue Dec  1 17:26:53 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 2.67/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.67/0.98  
% 2.67/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.67/0.98  
% 2.67/0.98  ------  iProver source info
% 2.67/0.98  
% 2.67/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.67/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.67/0.98  git: non_committed_changes: false
% 2.67/0.98  git: last_make_outside_of_git: false
% 2.67/0.98  
% 2.67/0.98  ------ 
% 2.67/0.98  
% 2.67/0.98  ------ Input Options
% 2.67/0.98  
% 2.67/0.98  --out_options                           all
% 2.67/0.98  --tptp_safe_out                         true
% 2.67/0.98  --problem_path                          ""
% 2.67/0.98  --include_path                          ""
% 2.67/0.98  --clausifier                            res/vclausify_rel
% 2.67/0.98  --clausifier_options                    --mode clausify
% 2.67/0.98  --stdin                                 false
% 2.67/0.98  --stats_out                             all
% 2.67/0.98  
% 2.67/0.98  ------ General Options
% 2.67/0.98  
% 2.67/0.98  --fof                                   false
% 2.67/0.98  --time_out_real                         305.
% 2.67/0.98  --time_out_virtual                      -1.
% 2.67/0.98  --symbol_type_check                     false
% 2.67/0.98  --clausify_out                          false
% 2.67/0.98  --sig_cnt_out                           false
% 2.67/0.98  --trig_cnt_out                          false
% 2.67/0.98  --trig_cnt_out_tolerance                1.
% 2.67/0.98  --trig_cnt_out_sk_spl                   false
% 2.67/0.98  --abstr_cl_out                          false
% 2.67/0.98  
% 2.67/0.98  ------ Global Options
% 2.67/0.98  
% 2.67/0.98  --schedule                              default
% 2.67/0.98  --add_important_lit                     false
% 2.67/0.98  --prop_solver_per_cl                    1000
% 2.67/0.98  --min_unsat_core                        false
% 2.67/0.98  --soft_assumptions                      false
% 2.67/0.98  --soft_lemma_size                       3
% 2.67/0.98  --prop_impl_unit_size                   0
% 2.67/0.98  --prop_impl_unit                        []
% 2.67/0.98  --share_sel_clauses                     true
% 2.67/0.98  --reset_solvers                         false
% 2.67/0.98  --bc_imp_inh                            [conj_cone]
% 2.67/0.98  --conj_cone_tolerance                   3.
% 2.67/0.98  --extra_neg_conj                        none
% 2.67/0.98  --large_theory_mode                     true
% 2.67/0.98  --prolific_symb_bound                   200
% 2.67/0.98  --lt_threshold                          2000
% 2.67/0.98  --clause_weak_htbl                      true
% 2.67/0.98  --gc_record_bc_elim                     false
% 2.67/0.98  
% 2.67/0.98  ------ Preprocessing Options
% 2.67/0.98  
% 2.67/0.98  --preprocessing_flag                    true
% 2.67/0.98  --time_out_prep_mult                    0.1
% 2.67/0.98  --splitting_mode                        input
% 2.67/0.98  --splitting_grd                         true
% 2.67/0.98  --splitting_cvd                         false
% 2.67/0.98  --splitting_cvd_svl                     false
% 2.67/0.98  --splitting_nvd                         32
% 2.67/0.98  --sub_typing                            true
% 2.67/0.98  --prep_gs_sim                           true
% 2.67/0.98  --prep_unflatten                        true
% 2.67/0.98  --prep_res_sim                          true
% 2.67/0.98  --prep_upred                            true
% 2.67/0.98  --prep_sem_filter                       exhaustive
% 2.67/0.98  --prep_sem_filter_out                   false
% 2.67/0.98  --pred_elim                             true
% 2.67/0.98  --res_sim_input                         true
% 2.67/0.98  --eq_ax_congr_red                       true
% 2.67/0.98  --pure_diseq_elim                       true
% 2.67/0.98  --brand_transform                       false
% 2.67/0.98  --non_eq_to_eq                          false
% 2.67/0.98  --prep_def_merge                        true
% 2.67/0.98  --prep_def_merge_prop_impl              false
% 2.67/0.98  --prep_def_merge_mbd                    true
% 2.67/0.98  --prep_def_merge_tr_red                 false
% 2.67/0.98  --prep_def_merge_tr_cl                  false
% 2.67/0.98  --smt_preprocessing                     true
% 2.67/0.98  --smt_ac_axioms                         fast
% 2.67/0.98  --preprocessed_out                      false
% 2.67/0.98  --preprocessed_stats                    false
% 2.67/0.98  
% 2.67/0.98  ------ Abstraction refinement Options
% 2.67/0.98  
% 2.67/0.98  --abstr_ref                             []
% 2.67/0.98  --abstr_ref_prep                        false
% 2.67/0.98  --abstr_ref_until_sat                   false
% 2.67/0.98  --abstr_ref_sig_restrict                funpre
% 2.67/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.67/0.98  --abstr_ref_under                       []
% 2.67/0.98  
% 2.67/0.98  ------ SAT Options
% 2.67/0.98  
% 2.67/0.98  --sat_mode                              false
% 2.67/0.98  --sat_fm_restart_options                ""
% 2.67/0.98  --sat_gr_def                            false
% 2.67/0.98  --sat_epr_types                         true
% 2.67/0.98  --sat_non_cyclic_types                  false
% 2.67/0.98  --sat_finite_models                     false
% 2.67/0.98  --sat_fm_lemmas                         false
% 2.67/0.98  --sat_fm_prep                           false
% 2.67/0.98  --sat_fm_uc_incr                        true
% 2.67/0.98  --sat_out_model                         small
% 2.67/0.98  --sat_out_clauses                       false
% 2.67/0.98  
% 2.67/0.98  ------ QBF Options
% 2.67/0.98  
% 2.67/0.98  --qbf_mode                              false
% 2.67/0.98  --qbf_elim_univ                         false
% 2.67/0.98  --qbf_dom_inst                          none
% 2.67/0.98  --qbf_dom_pre_inst                      false
% 2.67/0.98  --qbf_sk_in                             false
% 2.67/0.98  --qbf_pred_elim                         true
% 2.67/0.98  --qbf_split                             512
% 2.67/0.98  
% 2.67/0.98  ------ BMC1 Options
% 2.67/0.98  
% 2.67/0.98  --bmc1_incremental                      false
% 2.67/0.98  --bmc1_axioms                           reachable_all
% 2.67/0.98  --bmc1_min_bound                        0
% 2.67/0.98  --bmc1_max_bound                        -1
% 2.67/0.98  --bmc1_max_bound_default                -1
% 2.67/0.98  --bmc1_symbol_reachability              true
% 2.67/0.98  --bmc1_property_lemmas                  false
% 2.67/0.98  --bmc1_k_induction                      false
% 2.67/0.98  --bmc1_non_equiv_states                 false
% 2.67/0.98  --bmc1_deadlock                         false
% 2.67/0.98  --bmc1_ucm                              false
% 2.67/0.98  --bmc1_add_unsat_core                   none
% 2.67/0.98  --bmc1_unsat_core_children              false
% 2.67/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.67/0.98  --bmc1_out_stat                         full
% 2.67/0.98  --bmc1_ground_init                      false
% 2.67/0.98  --bmc1_pre_inst_next_state              false
% 2.67/0.98  --bmc1_pre_inst_state                   false
% 2.67/0.98  --bmc1_pre_inst_reach_state             false
% 2.67/0.98  --bmc1_out_unsat_core                   false
% 2.67/0.98  --bmc1_aig_witness_out                  false
% 2.67/0.98  --bmc1_verbose                          false
% 2.67/0.98  --bmc1_dump_clauses_tptp                false
% 2.67/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.67/0.98  --bmc1_dump_file                        -
% 2.67/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.67/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.67/0.98  --bmc1_ucm_extend_mode                  1
% 2.67/0.98  --bmc1_ucm_init_mode                    2
% 2.67/0.98  --bmc1_ucm_cone_mode                    none
% 2.67/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.67/0.98  --bmc1_ucm_relax_model                  4
% 2.67/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.67/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.67/0.98  --bmc1_ucm_layered_model                none
% 2.67/0.98  --bmc1_ucm_max_lemma_size               10
% 2.67/0.98  
% 2.67/0.98  ------ AIG Options
% 2.67/0.98  
% 2.67/0.98  --aig_mode                              false
% 2.67/0.98  
% 2.67/0.98  ------ Instantiation Options
% 2.67/0.98  
% 2.67/0.98  --instantiation_flag                    true
% 2.67/0.98  --inst_sos_flag                         false
% 2.67/0.98  --inst_sos_phase                        true
% 2.67/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.67/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.67/0.98  --inst_lit_sel_side                     num_symb
% 2.67/0.98  --inst_solver_per_active                1400
% 2.67/0.98  --inst_solver_calls_frac                1.
% 2.67/0.98  --inst_passive_queue_type               priority_queues
% 2.67/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.67/0.98  --inst_passive_queues_freq              [25;2]
% 2.67/0.98  --inst_dismatching                      true
% 2.67/0.98  --inst_eager_unprocessed_to_passive     true
% 2.67/0.98  --inst_prop_sim_given                   true
% 2.67/0.98  --inst_prop_sim_new                     false
% 2.67/0.98  --inst_subs_new                         false
% 2.67/0.98  --inst_eq_res_simp                      false
% 2.67/0.98  --inst_subs_given                       false
% 2.67/0.98  --inst_orphan_elimination               true
% 2.67/0.98  --inst_learning_loop_flag               true
% 2.67/0.98  --inst_learning_start                   3000
% 2.67/0.98  --inst_learning_factor                  2
% 2.67/0.98  --inst_start_prop_sim_after_learn       3
% 2.67/0.98  --inst_sel_renew                        solver
% 2.67/0.98  --inst_lit_activity_flag                true
% 2.67/0.98  --inst_restr_to_given                   false
% 2.67/0.98  --inst_activity_threshold               500
% 2.67/0.98  --inst_out_proof                        true
% 2.67/0.98  
% 2.67/0.98  ------ Resolution Options
% 2.67/0.98  
% 2.67/0.98  --resolution_flag                       true
% 2.67/0.98  --res_lit_sel                           adaptive
% 2.67/0.98  --res_lit_sel_side                      none
% 2.67/0.98  --res_ordering                          kbo
% 2.67/0.98  --res_to_prop_solver                    active
% 2.67/0.98  --res_prop_simpl_new                    false
% 2.67/0.98  --res_prop_simpl_given                  true
% 2.67/0.98  --res_passive_queue_type                priority_queues
% 2.67/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.67/0.98  --res_passive_queues_freq               [15;5]
% 2.67/0.98  --res_forward_subs                      full
% 2.67/0.98  --res_backward_subs                     full
% 2.67/0.98  --res_forward_subs_resolution           true
% 2.67/0.98  --res_backward_subs_resolution          true
% 2.67/0.98  --res_orphan_elimination                true
% 2.67/0.98  --res_time_limit                        2.
% 2.67/0.98  --res_out_proof                         true
% 2.67/0.98  
% 2.67/0.98  ------ Superposition Options
% 2.67/0.98  
% 2.67/0.98  --superposition_flag                    true
% 2.67/0.98  --sup_passive_queue_type                priority_queues
% 2.67/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.67/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.67/0.98  --demod_completeness_check              fast
% 2.67/0.98  --demod_use_ground                      true
% 2.67/0.98  --sup_to_prop_solver                    passive
% 2.67/0.98  --sup_prop_simpl_new                    true
% 2.67/0.98  --sup_prop_simpl_given                  true
% 2.67/0.98  --sup_fun_splitting                     false
% 2.67/0.98  --sup_smt_interval                      50000
% 2.67/0.98  
% 2.67/0.98  ------ Superposition Simplification Setup
% 2.67/0.98  
% 2.67/0.98  --sup_indices_passive                   []
% 2.67/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.67/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/0.98  --sup_full_bw                           [BwDemod]
% 2.67/0.98  --sup_immed_triv                        [TrivRules]
% 2.67/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.67/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/0.98  --sup_immed_bw_main                     []
% 2.67/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.67/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.67/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.67/0.98  
% 2.67/0.98  ------ Combination Options
% 2.67/0.98  
% 2.67/0.98  --comb_res_mult                         3
% 2.67/0.98  --comb_sup_mult                         2
% 2.67/0.98  --comb_inst_mult                        10
% 2.67/0.98  
% 2.67/0.98  ------ Debug Options
% 2.67/0.98  
% 2.67/0.98  --dbg_backtrace                         false
% 2.67/0.98  --dbg_dump_prop_clauses                 false
% 2.67/0.98  --dbg_dump_prop_clauses_file            -
% 2.67/0.98  --dbg_out_stat                          false
% 2.67/0.98  ------ Parsing...
% 2.67/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.67/0.98  
% 2.67/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.67/0.98  
% 2.67/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.67/0.98  
% 2.67/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.67/0.98  ------ Proving...
% 2.67/0.98  ------ Problem Properties 
% 2.67/0.98  
% 2.67/0.98  
% 2.67/0.98  clauses                                 16
% 2.67/0.98  conjectures                             7
% 2.67/0.98  EPR                                     4
% 2.67/0.98  Horn                                    16
% 2.67/0.98  unary                                   10
% 2.67/0.98  binary                                  3
% 2.67/0.98  lits                                    26
% 2.67/0.98  lits eq                                 10
% 2.67/0.98  fd_pure                                 0
% 2.67/0.98  fd_pseudo                               0
% 2.67/0.98  fd_cond                                 0
% 2.67/0.98  fd_pseudo_cond                          0
% 2.67/0.98  AC symbols                              0
% 2.67/0.98  
% 2.67/0.98  ------ Schedule dynamic 5 is on 
% 2.67/0.98  
% 2.67/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.67/0.98  
% 2.67/0.98  
% 2.67/0.98  ------ 
% 2.67/0.98  Current options:
% 2.67/0.98  ------ 
% 2.67/0.98  
% 2.67/0.98  ------ Input Options
% 2.67/0.98  
% 2.67/0.98  --out_options                           all
% 2.67/0.98  --tptp_safe_out                         true
% 2.67/0.98  --problem_path                          ""
% 2.67/0.98  --include_path                          ""
% 2.67/0.98  --clausifier                            res/vclausify_rel
% 2.67/0.98  --clausifier_options                    --mode clausify
% 2.67/0.98  --stdin                                 false
% 2.67/0.98  --stats_out                             all
% 2.67/0.98  
% 2.67/0.98  ------ General Options
% 2.67/0.98  
% 2.67/0.98  --fof                                   false
% 2.67/0.98  --time_out_real                         305.
% 2.67/0.98  --time_out_virtual                      -1.
% 2.67/0.98  --symbol_type_check                     false
% 2.67/0.98  --clausify_out                          false
% 2.67/0.98  --sig_cnt_out                           false
% 2.67/0.98  --trig_cnt_out                          false
% 2.67/0.98  --trig_cnt_out_tolerance                1.
% 2.67/0.98  --trig_cnt_out_sk_spl                   false
% 2.67/0.98  --abstr_cl_out                          false
% 2.67/0.98  
% 2.67/0.98  ------ Global Options
% 2.67/0.98  
% 2.67/0.98  --schedule                              default
% 2.67/0.98  --add_important_lit                     false
% 2.67/0.98  --prop_solver_per_cl                    1000
% 2.67/0.98  --min_unsat_core                        false
% 2.67/0.98  --soft_assumptions                      false
% 2.67/0.98  --soft_lemma_size                       3
% 2.67/0.98  --prop_impl_unit_size                   0
% 2.67/0.98  --prop_impl_unit                        []
% 2.67/0.98  --share_sel_clauses                     true
% 2.67/0.98  --reset_solvers                         false
% 2.67/0.98  --bc_imp_inh                            [conj_cone]
% 2.67/0.98  --conj_cone_tolerance                   3.
% 2.67/0.98  --extra_neg_conj                        none
% 2.67/0.98  --large_theory_mode                     true
% 2.67/0.98  --prolific_symb_bound                   200
% 2.67/0.98  --lt_threshold                          2000
% 2.67/0.98  --clause_weak_htbl                      true
% 2.67/0.98  --gc_record_bc_elim                     false
% 2.67/0.98  
% 2.67/0.98  ------ Preprocessing Options
% 2.67/0.98  
% 2.67/0.98  --preprocessing_flag                    true
% 2.67/0.98  --time_out_prep_mult                    0.1
% 2.67/0.98  --splitting_mode                        input
% 2.67/0.98  --splitting_grd                         true
% 2.67/0.98  --splitting_cvd                         false
% 2.67/0.98  --splitting_cvd_svl                     false
% 2.67/0.98  --splitting_nvd                         32
% 2.67/0.98  --sub_typing                            true
% 2.67/0.98  --prep_gs_sim                           true
% 2.67/0.98  --prep_unflatten                        true
% 2.67/0.98  --prep_res_sim                          true
% 2.67/0.98  --prep_upred                            true
% 2.67/0.98  --prep_sem_filter                       exhaustive
% 2.67/0.98  --prep_sem_filter_out                   false
% 2.67/0.98  --pred_elim                             true
% 2.67/0.98  --res_sim_input                         true
% 2.67/0.98  --eq_ax_congr_red                       true
% 2.67/0.98  --pure_diseq_elim                       true
% 2.67/0.98  --brand_transform                       false
% 2.67/0.98  --non_eq_to_eq                          false
% 2.67/0.98  --prep_def_merge                        true
% 2.67/0.98  --prep_def_merge_prop_impl              false
% 2.67/0.98  --prep_def_merge_mbd                    true
% 2.67/0.98  --prep_def_merge_tr_red                 false
% 2.67/0.98  --prep_def_merge_tr_cl                  false
% 2.67/0.98  --smt_preprocessing                     true
% 2.67/0.98  --smt_ac_axioms                         fast
% 2.67/0.98  --preprocessed_out                      false
% 2.67/0.98  --preprocessed_stats                    false
% 2.67/0.98  
% 2.67/0.98  ------ Abstraction refinement Options
% 2.67/0.98  
% 2.67/0.98  --abstr_ref                             []
% 2.67/0.98  --abstr_ref_prep                        false
% 2.67/0.98  --abstr_ref_until_sat                   false
% 2.67/0.98  --abstr_ref_sig_restrict                funpre
% 2.67/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.67/0.98  --abstr_ref_under                       []
% 2.67/0.98  
% 2.67/0.98  ------ SAT Options
% 2.67/0.98  
% 2.67/0.98  --sat_mode                              false
% 2.67/0.98  --sat_fm_restart_options                ""
% 2.67/0.98  --sat_gr_def                            false
% 2.67/0.98  --sat_epr_types                         true
% 2.67/0.98  --sat_non_cyclic_types                  false
% 2.67/0.98  --sat_finite_models                     false
% 2.67/0.98  --sat_fm_lemmas                         false
% 2.67/0.98  --sat_fm_prep                           false
% 2.67/0.98  --sat_fm_uc_incr                        true
% 2.67/0.98  --sat_out_model                         small
% 2.67/0.98  --sat_out_clauses                       false
% 2.67/0.98  
% 2.67/0.98  ------ QBF Options
% 2.67/0.98  
% 2.67/0.98  --qbf_mode                              false
% 2.67/0.98  --qbf_elim_univ                         false
% 2.67/0.98  --qbf_dom_inst                          none
% 2.67/0.98  --qbf_dom_pre_inst                      false
% 2.67/0.98  --qbf_sk_in                             false
% 2.67/0.98  --qbf_pred_elim                         true
% 2.67/0.98  --qbf_split                             512
% 2.67/0.98  
% 2.67/0.98  ------ BMC1 Options
% 2.67/0.98  
% 2.67/0.98  --bmc1_incremental                      false
% 2.67/0.98  --bmc1_axioms                           reachable_all
% 2.67/0.98  --bmc1_min_bound                        0
% 2.67/0.98  --bmc1_max_bound                        -1
% 2.67/0.98  --bmc1_max_bound_default                -1
% 2.67/0.98  --bmc1_symbol_reachability              true
% 2.67/0.98  --bmc1_property_lemmas                  false
% 2.67/0.98  --bmc1_k_induction                      false
% 2.67/0.98  --bmc1_non_equiv_states                 false
% 2.67/0.98  --bmc1_deadlock                         false
% 2.67/0.98  --bmc1_ucm                              false
% 2.67/0.98  --bmc1_add_unsat_core                   none
% 2.67/0.98  --bmc1_unsat_core_children              false
% 2.67/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.67/0.98  --bmc1_out_stat                         full
% 2.67/0.98  --bmc1_ground_init                      false
% 2.67/0.98  --bmc1_pre_inst_next_state              false
% 2.67/0.98  --bmc1_pre_inst_state                   false
% 2.67/0.98  --bmc1_pre_inst_reach_state             false
% 2.67/0.98  --bmc1_out_unsat_core                   false
% 2.67/0.98  --bmc1_aig_witness_out                  false
% 2.67/0.98  --bmc1_verbose                          false
% 2.67/0.98  --bmc1_dump_clauses_tptp                false
% 2.67/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.67/0.98  --bmc1_dump_file                        -
% 2.67/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.67/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.67/0.98  --bmc1_ucm_extend_mode                  1
% 2.67/0.98  --bmc1_ucm_init_mode                    2
% 2.67/0.98  --bmc1_ucm_cone_mode                    none
% 2.67/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.67/0.98  --bmc1_ucm_relax_model                  4
% 2.67/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.67/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.67/0.98  --bmc1_ucm_layered_model                none
% 2.67/0.98  --bmc1_ucm_max_lemma_size               10
% 2.67/0.98  
% 2.67/0.98  ------ AIG Options
% 2.67/0.98  
% 2.67/0.98  --aig_mode                              false
% 2.67/0.98  
% 2.67/0.98  ------ Instantiation Options
% 2.67/0.98  
% 2.67/0.98  --instantiation_flag                    true
% 2.67/0.98  --inst_sos_flag                         false
% 2.67/0.98  --inst_sos_phase                        true
% 2.67/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.67/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.67/0.98  --inst_lit_sel_side                     none
% 2.67/0.98  --inst_solver_per_active                1400
% 2.67/0.98  --inst_solver_calls_frac                1.
% 2.67/0.98  --inst_passive_queue_type               priority_queues
% 2.67/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.67/0.98  --inst_passive_queues_freq              [25;2]
% 2.67/0.98  --inst_dismatching                      true
% 2.67/0.98  --inst_eager_unprocessed_to_passive     true
% 2.67/0.98  --inst_prop_sim_given                   true
% 2.67/0.98  --inst_prop_sim_new                     false
% 2.67/0.98  --inst_subs_new                         false
% 2.67/0.98  --inst_eq_res_simp                      false
% 2.67/0.98  --inst_subs_given                       false
% 2.67/0.98  --inst_orphan_elimination               true
% 2.67/0.98  --inst_learning_loop_flag               true
% 2.67/0.98  --inst_learning_start                   3000
% 2.67/0.98  --inst_learning_factor                  2
% 2.67/0.98  --inst_start_prop_sim_after_learn       3
% 2.67/0.98  --inst_sel_renew                        solver
% 2.67/0.98  --inst_lit_activity_flag                true
% 2.67/0.98  --inst_restr_to_given                   false
% 2.67/0.98  --inst_activity_threshold               500
% 2.67/0.98  --inst_out_proof                        true
% 2.67/0.98  
% 2.67/0.98  ------ Resolution Options
% 2.67/0.98  
% 2.67/0.98  --resolution_flag                       false
% 2.67/0.98  --res_lit_sel                           adaptive
% 2.67/0.98  --res_lit_sel_side                      none
% 2.67/0.98  --res_ordering                          kbo
% 2.67/0.98  --res_to_prop_solver                    active
% 2.67/0.98  --res_prop_simpl_new                    false
% 2.67/0.98  --res_prop_simpl_given                  true
% 2.67/0.98  --res_passive_queue_type                priority_queues
% 2.67/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.67/0.98  --res_passive_queues_freq               [15;5]
% 2.67/0.98  --res_forward_subs                      full
% 2.67/0.98  --res_backward_subs                     full
% 2.67/0.98  --res_forward_subs_resolution           true
% 2.67/0.98  --res_backward_subs_resolution          true
% 2.67/0.98  --res_orphan_elimination                true
% 2.67/0.98  --res_time_limit                        2.
% 2.67/0.98  --res_out_proof                         true
% 2.67/0.98  
% 2.67/0.98  ------ Superposition Options
% 2.67/0.98  
% 2.67/0.98  --superposition_flag                    true
% 2.67/0.98  --sup_passive_queue_type                priority_queues
% 2.67/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.67/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.67/0.98  --demod_completeness_check              fast
% 2.67/0.98  --demod_use_ground                      true
% 2.67/0.98  --sup_to_prop_solver                    passive
% 2.67/0.98  --sup_prop_simpl_new                    true
% 2.67/0.98  --sup_prop_simpl_given                  true
% 2.67/0.98  --sup_fun_splitting                     false
% 2.67/0.98  --sup_smt_interval                      50000
% 2.67/0.98  
% 2.67/0.98  ------ Superposition Simplification Setup
% 2.67/0.98  
% 2.67/0.98  --sup_indices_passive                   []
% 2.67/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.67/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/0.98  --sup_full_bw                           [BwDemod]
% 2.67/0.98  --sup_immed_triv                        [TrivRules]
% 2.67/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.67/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/0.98  --sup_immed_bw_main                     []
% 2.67/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.67/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.67/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.67/0.98  
% 2.67/0.98  ------ Combination Options
% 2.67/0.98  
% 2.67/0.98  --comb_res_mult                         3
% 2.67/0.98  --comb_sup_mult                         2
% 2.67/0.98  --comb_inst_mult                        10
% 2.67/0.98  
% 2.67/0.98  ------ Debug Options
% 2.67/0.98  
% 2.67/0.98  --dbg_backtrace                         false
% 2.67/0.98  --dbg_dump_prop_clauses                 false
% 2.67/0.98  --dbg_dump_prop_clauses_file            -
% 2.67/0.98  --dbg_out_stat                          false
% 2.67/0.98  
% 2.67/0.98  
% 2.67/0.98  
% 2.67/0.98  
% 2.67/0.98  ------ Proving...
% 2.67/0.98  
% 2.67/0.98  
% 2.67/0.98  % SZS status Theorem for theBenchmark.p
% 2.67/0.98  
% 2.67/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.67/0.98  
% 2.67/0.98  fof(f7,conjecture,(
% 2.67/0.98    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0)) & k2_relat_1(X0) = k1_relat_1(X1) & v2_funct_1(X0)) => k2_funct_1(X0) = X1)))),
% 2.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/0.98  
% 2.67/0.98  fof(f8,negated_conjecture,(
% 2.67/0.98    ~! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0)) & k2_relat_1(X0) = k1_relat_1(X1) & v2_funct_1(X0)) => k2_funct_1(X0) = X1)))),
% 2.67/0.98    inference(negated_conjecture,[],[f7])).
% 2.67/0.98  
% 2.67/0.98  fof(f18,plain,(
% 2.67/0.98    ? [X0] : (? [X1] : ((k2_funct_1(X0) != X1 & (k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0)) & k2_relat_1(X0) = k1_relat_1(X1) & v2_funct_1(X0))) & (v1_funct_1(X1) & v1_relat_1(X1))) & (v1_funct_1(X0) & v1_relat_1(X0)))),
% 2.67/0.98    inference(ennf_transformation,[],[f8])).
% 2.67/0.98  
% 2.67/0.98  fof(f19,plain,(
% 2.67/0.98    ? [X0] : (? [X1] : (k2_funct_1(X0) != X1 & k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0)) & k2_relat_1(X0) = k1_relat_1(X1) & v2_funct_1(X0) & v1_funct_1(X1) & v1_relat_1(X1)) & v1_funct_1(X0) & v1_relat_1(X0))),
% 2.67/0.98    inference(flattening,[],[f18])).
% 2.67/0.98  
% 2.67/0.98  fof(f21,plain,(
% 2.67/0.98    ( ! [X0] : (? [X1] : (k2_funct_1(X0) != X1 & k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0)) & k2_relat_1(X0) = k1_relat_1(X1) & v2_funct_1(X0) & v1_funct_1(X1) & v1_relat_1(X1)) => (k2_funct_1(X0) != sK1 & k5_relat_1(X0,sK1) = k6_relat_1(k1_relat_1(X0)) & k2_relat_1(X0) = k1_relat_1(sK1) & v2_funct_1(X0) & v1_funct_1(sK1) & v1_relat_1(sK1))) )),
% 2.67/0.98    introduced(choice_axiom,[])).
% 2.67/0.98  
% 2.67/0.98  fof(f20,plain,(
% 2.67/0.98    ? [X0] : (? [X1] : (k2_funct_1(X0) != X1 & k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0)) & k2_relat_1(X0) = k1_relat_1(X1) & v2_funct_1(X0) & v1_funct_1(X1) & v1_relat_1(X1)) & v1_funct_1(X0) & v1_relat_1(X0)) => (? [X1] : (k2_funct_1(sK0) != X1 & k5_relat_1(sK0,X1) = k6_relat_1(k1_relat_1(sK0)) & k2_relat_1(sK0) = k1_relat_1(X1) & v2_funct_1(sK0) & v1_funct_1(X1) & v1_relat_1(X1)) & v1_funct_1(sK0) & v1_relat_1(sK0))),
% 2.67/0.98    introduced(choice_axiom,[])).
% 2.67/0.98  
% 2.67/0.98  fof(f22,plain,(
% 2.67/0.98    (k2_funct_1(sK0) != sK1 & k5_relat_1(sK0,sK1) = k6_relat_1(k1_relat_1(sK0)) & k2_relat_1(sK0) = k1_relat_1(sK1) & v2_funct_1(sK0) & v1_funct_1(sK1) & v1_relat_1(sK1)) & v1_funct_1(sK0) & v1_relat_1(sK0)),
% 2.67/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f19,f21,f20])).
% 2.67/0.98  
% 2.67/0.98  fof(f34,plain,(
% 2.67/0.98    v1_relat_1(sK1)),
% 2.67/0.98    inference(cnf_transformation,[],[f22])).
% 2.67/0.98  
% 2.67/0.98  fof(f32,plain,(
% 2.67/0.98    v1_relat_1(sK0)),
% 2.67/0.98    inference(cnf_transformation,[],[f22])).
% 2.67/0.98  
% 2.67/0.98  fof(f4,axiom,(
% 2.67/0.98    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => k4_relat_1(X0) = k2_funct_1(X0)))),
% 2.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/0.98  
% 2.67/0.98  fof(f12,plain,(
% 2.67/0.98    ! [X0] : ((k4_relat_1(X0) = k2_funct_1(X0) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.67/0.98    inference(ennf_transformation,[],[f4])).
% 2.67/0.98  
% 2.67/0.98  fof(f13,plain,(
% 2.67/0.98    ! [X0] : (k4_relat_1(X0) = k2_funct_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.67/0.98    inference(flattening,[],[f12])).
% 2.67/0.98  
% 2.67/0.98  fof(f27,plain,(
% 2.67/0.98    ( ! [X0] : (k4_relat_1(X0) = k2_funct_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.67/0.98    inference(cnf_transformation,[],[f13])).
% 2.67/0.98  
% 2.67/0.98  fof(f36,plain,(
% 2.67/0.98    v2_funct_1(sK0)),
% 2.67/0.98    inference(cnf_transformation,[],[f22])).
% 2.67/0.98  
% 2.67/0.98  fof(f33,plain,(
% 2.67/0.98    v1_funct_1(sK0)),
% 2.67/0.98    inference(cnf_transformation,[],[f22])).
% 2.67/0.98  
% 2.67/0.98  fof(f5,axiom,(
% 2.67/0.98    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 2.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/0.98  
% 2.67/0.98  fof(f14,plain,(
% 2.67/0.98    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.67/0.98    inference(ennf_transformation,[],[f5])).
% 2.67/0.98  
% 2.67/0.98  fof(f15,plain,(
% 2.67/0.98    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.67/0.98    inference(flattening,[],[f14])).
% 2.67/0.98  
% 2.67/0.98  fof(f28,plain,(
% 2.67/0.98    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.67/0.98    inference(cnf_transformation,[],[f15])).
% 2.67/0.98  
% 2.67/0.98  fof(f2,axiom,(
% 2.67/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2))))),
% 2.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/0.98  
% 2.67/0.98  fof(f10,plain,(
% 2.67/0.98    ! [X0] : (! [X1] : (! [X2] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.67/0.98    inference(ennf_transformation,[],[f2])).
% 2.67/0.98  
% 2.67/0.98  fof(f25,plain,(
% 2.67/0.98    ( ! [X2,X0,X1] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.67/0.98    inference(cnf_transformation,[],[f10])).
% 2.67/0.98  
% 2.67/0.98  fof(f6,axiom,(
% 2.67/0.98    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)))))),
% 2.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/0.98  
% 2.67/0.98  fof(f16,plain,(
% 2.67/0.98    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.67/0.98    inference(ennf_transformation,[],[f6])).
% 2.67/0.98  
% 2.67/0.98  fof(f17,plain,(
% 2.67/0.98    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.67/0.98    inference(flattening,[],[f16])).
% 2.67/0.98  
% 2.67/0.98  fof(f31,plain,(
% 2.67/0.98    ( ! [X0] : (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.67/0.98    inference(cnf_transformation,[],[f17])).
% 2.67/0.98  
% 2.67/0.98  fof(f38,plain,(
% 2.67/0.98    k5_relat_1(sK0,sK1) = k6_relat_1(k1_relat_1(sK0))),
% 2.67/0.98    inference(cnf_transformation,[],[f22])).
% 2.67/0.98  
% 2.67/0.98  fof(f3,axiom,(
% 2.67/0.98    ! [X0] : (v1_relat_1(X0) => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0)),
% 2.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/0.98  
% 2.67/0.98  fof(f11,plain,(
% 2.67/0.98    ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0))),
% 2.67/0.98    inference(ennf_transformation,[],[f3])).
% 2.67/0.98  
% 2.67/0.98  fof(f26,plain,(
% 2.67/0.98    ( ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0)) )),
% 2.67/0.98    inference(cnf_transformation,[],[f11])).
% 2.67/0.98  
% 2.67/0.98  fof(f37,plain,(
% 2.67/0.98    k2_relat_1(sK0) = k1_relat_1(sK1)),
% 2.67/0.98    inference(cnf_transformation,[],[f22])).
% 2.67/0.98  
% 2.67/0.98  fof(f30,plain,(
% 2.67/0.98    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.67/0.98    inference(cnf_transformation,[],[f17])).
% 2.67/0.98  
% 2.67/0.98  fof(f1,axiom,(
% 2.67/0.98    ! [X0] : (v1_relat_1(X0) => (k2_relat_1(k4_relat_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k4_relat_1(X0))))),
% 2.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/0.98  
% 2.67/0.98  fof(f9,plain,(
% 2.67/0.98    ! [X0] : ((k2_relat_1(k4_relat_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k4_relat_1(X0))) | ~v1_relat_1(X0))),
% 2.67/0.98    inference(ennf_transformation,[],[f1])).
% 2.67/0.98  
% 2.67/0.98  fof(f23,plain,(
% 2.67/0.98    ( ! [X0] : (k2_relat_1(X0) = k1_relat_1(k4_relat_1(X0)) | ~v1_relat_1(X0)) )),
% 2.67/0.98    inference(cnf_transformation,[],[f9])).
% 2.67/0.98  
% 2.67/0.98  fof(f39,plain,(
% 2.67/0.98    k2_funct_1(sK0) != sK1),
% 2.67/0.98    inference(cnf_transformation,[],[f22])).
% 2.67/0.98  
% 2.67/0.98  cnf(c_14,negated_conjecture,
% 2.67/0.98      ( v1_relat_1(sK1) ),
% 2.67/0.98      inference(cnf_transformation,[],[f34]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_267,negated_conjecture,
% 2.67/0.98      ( v1_relat_1(sK1) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_14]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_489,plain,
% 2.67/0.98      ( v1_relat_1(sK1) = iProver_top ),
% 2.67/0.98      inference(predicate_to_equality,[status(thm)],[c_267]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_16,negated_conjecture,
% 2.67/0.98      ( v1_relat_1(sK0) ),
% 2.67/0.98      inference(cnf_transformation,[],[f32]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_265,negated_conjecture,
% 2.67/0.98      ( v1_relat_1(sK0) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_16]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_491,plain,
% 2.67/0.98      ( v1_relat_1(sK0) = iProver_top ),
% 2.67/0.98      inference(predicate_to_equality,[status(thm)],[c_265]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_4,plain,
% 2.67/0.98      ( ~ v1_funct_1(X0)
% 2.67/0.98      | ~ v2_funct_1(X0)
% 2.67/0.98      | ~ v1_relat_1(X0)
% 2.67/0.98      | k2_funct_1(X0) = k4_relat_1(X0) ),
% 2.67/0.98      inference(cnf_transformation,[],[f27]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_12,negated_conjecture,
% 2.67/0.98      ( v2_funct_1(sK0) ),
% 2.67/0.98      inference(cnf_transformation,[],[f36]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_177,plain,
% 2.67/0.98      ( ~ v1_funct_1(X0)
% 2.67/0.98      | ~ v1_relat_1(X0)
% 2.67/0.98      | k2_funct_1(X0) = k4_relat_1(X0)
% 2.67/0.98      | sK0 != X0 ),
% 2.67/0.98      inference(resolution_lifted,[status(thm)],[c_4,c_12]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_178,plain,
% 2.67/0.98      ( ~ v1_funct_1(sK0)
% 2.67/0.98      | ~ v1_relat_1(sK0)
% 2.67/0.98      | k2_funct_1(sK0) = k4_relat_1(sK0) ),
% 2.67/0.98      inference(unflattening,[status(thm)],[c_177]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_15,negated_conjecture,
% 2.67/0.98      ( v1_funct_1(sK0) ),
% 2.67/0.98      inference(cnf_transformation,[],[f33]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_35,plain,
% 2.67/0.98      ( ~ v1_funct_1(sK0)
% 2.67/0.98      | ~ v2_funct_1(sK0)
% 2.67/0.98      | ~ v1_relat_1(sK0)
% 2.67/0.98      | k2_funct_1(sK0) = k4_relat_1(sK0) ),
% 2.67/0.98      inference(instantiation,[status(thm)],[c_4]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_180,plain,
% 2.67/0.98      ( k2_funct_1(sK0) = k4_relat_1(sK0) ),
% 2.67/0.98      inference(global_propositional_subsumption,
% 2.67/0.98                [status(thm)],
% 2.67/0.98                [c_178,c_16,c_15,c_12,c_35]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_262,plain,
% 2.67/0.98      ( k2_funct_1(sK0) = k4_relat_1(sK0) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_180]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_6,plain,
% 2.67/0.98      ( ~ v1_funct_1(X0)
% 2.67/0.98      | ~ v1_relat_1(X0)
% 2.67/0.98      | v1_relat_1(k2_funct_1(X0)) ),
% 2.67/0.98      inference(cnf_transformation,[],[f28]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_272,plain,
% 2.67/0.98      ( ~ v1_funct_1(X0_39)
% 2.67/0.98      | ~ v1_relat_1(X0_39)
% 2.67/0.98      | v1_relat_1(k2_funct_1(X0_39)) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_6]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_487,plain,
% 2.67/0.98      ( v1_funct_1(X0_39) != iProver_top
% 2.67/0.98      | v1_relat_1(X0_39) != iProver_top
% 2.67/0.98      | v1_relat_1(k2_funct_1(X0_39)) = iProver_top ),
% 2.67/0.98      inference(predicate_to_equality,[status(thm)],[c_272]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_1101,plain,
% 2.67/0.98      ( v1_funct_1(sK0) != iProver_top
% 2.67/0.98      | v1_relat_1(k4_relat_1(sK0)) = iProver_top
% 2.67/0.98      | v1_relat_1(sK0) != iProver_top ),
% 2.67/0.98      inference(superposition,[status(thm)],[c_262,c_487]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_17,plain,
% 2.67/0.98      ( v1_relat_1(sK0) = iProver_top ),
% 2.67/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_18,plain,
% 2.67/0.98      ( v1_funct_1(sK0) = iProver_top ),
% 2.67/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_1154,plain,
% 2.67/0.98      ( v1_relat_1(k4_relat_1(sK0)) = iProver_top ),
% 2.67/0.98      inference(global_propositional_subsumption,
% 2.67/0.98                [status(thm)],
% 2.67/0.98                [c_1101,c_17,c_18]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_2,plain,
% 2.67/0.98      ( ~ v1_relat_1(X0)
% 2.67/0.98      | ~ v1_relat_1(X1)
% 2.67/0.98      | ~ v1_relat_1(X2)
% 2.67/0.98      | k5_relat_1(k5_relat_1(X0,X2),X1) = k5_relat_1(X0,k5_relat_1(X2,X1)) ),
% 2.67/0.98      inference(cnf_transformation,[],[f25]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_275,plain,
% 2.67/0.98      ( ~ v1_relat_1(X0_39)
% 2.67/0.98      | ~ v1_relat_1(X1_39)
% 2.67/0.98      | ~ v1_relat_1(X2_39)
% 2.67/0.98      | k5_relat_1(k5_relat_1(X0_39,X2_39),X1_39) = k5_relat_1(X0_39,k5_relat_1(X2_39,X1_39)) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_2]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_484,plain,
% 2.67/0.98      ( k5_relat_1(k5_relat_1(X0_39,X1_39),X2_39) = k5_relat_1(X0_39,k5_relat_1(X1_39,X2_39))
% 2.67/0.98      | v1_relat_1(X0_39) != iProver_top
% 2.67/0.98      | v1_relat_1(X1_39) != iProver_top
% 2.67/0.98      | v1_relat_1(X2_39) != iProver_top ),
% 2.67/0.98      inference(predicate_to_equality,[status(thm)],[c_275]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_1159,plain,
% 2.67/0.98      ( k5_relat_1(k4_relat_1(sK0),k5_relat_1(X0_39,X1_39)) = k5_relat_1(k5_relat_1(k4_relat_1(sK0),X0_39),X1_39)
% 2.67/0.98      | v1_relat_1(X0_39) != iProver_top
% 2.67/0.98      | v1_relat_1(X1_39) != iProver_top ),
% 2.67/0.98      inference(superposition,[status(thm)],[c_1154,c_484]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_3156,plain,
% 2.67/0.98      ( k5_relat_1(k5_relat_1(k4_relat_1(sK0),sK0),X0_39) = k5_relat_1(k4_relat_1(sK0),k5_relat_1(sK0,X0_39))
% 2.67/0.98      | v1_relat_1(X0_39) != iProver_top ),
% 2.67/0.98      inference(superposition,[status(thm)],[c_491,c_1159]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_7,plain,
% 2.67/0.98      ( ~ v1_funct_1(X0)
% 2.67/0.98      | ~ v2_funct_1(X0)
% 2.67/0.98      | ~ v1_relat_1(X0)
% 2.67/0.98      | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) ),
% 2.67/0.98      inference(cnf_transformation,[],[f31]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_169,plain,
% 2.67/0.98      ( ~ v1_funct_1(X0)
% 2.67/0.98      | ~ v1_relat_1(X0)
% 2.67/0.98      | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
% 2.67/0.98      | sK0 != X0 ),
% 2.67/0.98      inference(resolution_lifted,[status(thm)],[c_7,c_12]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_170,plain,
% 2.67/0.98      ( ~ v1_funct_1(sK0)
% 2.67/0.98      | ~ v1_relat_1(sK0)
% 2.67/0.98      | k5_relat_1(k2_funct_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
% 2.67/0.98      inference(unflattening,[status(thm)],[c_169]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_26,plain,
% 2.67/0.98      ( ~ v1_funct_1(sK0)
% 2.67/0.98      | ~ v2_funct_1(sK0)
% 2.67/0.98      | ~ v1_relat_1(sK0)
% 2.67/0.98      | k5_relat_1(k2_funct_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
% 2.67/0.98      inference(instantiation,[status(thm)],[c_7]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_172,plain,
% 2.67/0.98      ( k5_relat_1(k2_funct_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
% 2.67/0.98      inference(global_propositional_subsumption,
% 2.67/0.98                [status(thm)],
% 2.67/0.98                [c_170,c_16,c_15,c_12,c_26]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_263,plain,
% 2.67/0.98      ( k5_relat_1(k2_funct_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_172]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_514,plain,
% 2.67/0.98      ( k5_relat_1(k4_relat_1(sK0),sK0) = k6_relat_1(k2_relat_1(sK0)) ),
% 2.67/0.98      inference(light_normalisation,[status(thm)],[c_263,c_262]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_3173,plain,
% 2.67/0.98      ( k5_relat_1(k4_relat_1(sK0),k5_relat_1(sK0,X0_39)) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),X0_39)
% 2.67/0.98      | v1_relat_1(X0_39) != iProver_top ),
% 2.67/0.98      inference(light_normalisation,[status(thm)],[c_3156,c_514]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_4085,plain,
% 2.67/0.98      ( k5_relat_1(k4_relat_1(sK0),k5_relat_1(sK0,sK1)) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),sK1) ),
% 2.67/0.98      inference(superposition,[status(thm)],[c_489,c_3173]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_10,negated_conjecture,
% 2.67/0.98      ( k5_relat_1(sK0,sK1) = k6_relat_1(k1_relat_1(sK0)) ),
% 2.67/0.98      inference(cnf_transformation,[],[f38]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_270,negated_conjecture,
% 2.67/0.98      ( k5_relat_1(sK0,sK1) = k6_relat_1(k1_relat_1(sK0)) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_10]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_3,plain,
% 2.67/0.98      ( ~ v1_relat_1(X0)
% 2.67/0.98      | k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ),
% 2.67/0.98      inference(cnf_transformation,[],[f26]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_274,plain,
% 2.67/0.98      ( ~ v1_relat_1(X0_39)
% 2.67/0.98      | k5_relat_1(k6_relat_1(k1_relat_1(X0_39)),X0_39) = X0_39 ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_3]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_485,plain,
% 2.67/0.98      ( k5_relat_1(k6_relat_1(k1_relat_1(X0_39)),X0_39) = X0_39
% 2.67/0.98      | v1_relat_1(X0_39) != iProver_top ),
% 2.67/0.98      inference(predicate_to_equality,[status(thm)],[c_274]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_710,plain,
% 2.67/0.98      ( k5_relat_1(k6_relat_1(k1_relat_1(sK1)),sK1) = sK1 ),
% 2.67/0.98      inference(superposition,[status(thm)],[c_489,c_485]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_11,negated_conjecture,
% 2.67/0.98      ( k2_relat_1(sK0) = k1_relat_1(sK1) ),
% 2.67/0.98      inference(cnf_transformation,[],[f37]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_269,negated_conjecture,
% 2.67/0.98      ( k2_relat_1(sK0) = k1_relat_1(sK1) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_11]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_715,plain,
% 2.67/0.98      ( k5_relat_1(k6_relat_1(k2_relat_1(sK0)),sK1) = sK1 ),
% 2.67/0.98      inference(light_normalisation,[status(thm)],[c_710,c_269]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_4101,plain,
% 2.67/0.98      ( k5_relat_1(k4_relat_1(sK0),k6_relat_1(k1_relat_1(sK0))) = sK1 ),
% 2.67/0.98      inference(light_normalisation,[status(thm)],[c_4085,c_270,c_715]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_4088,plain,
% 2.67/0.98      ( k5_relat_1(k4_relat_1(sK0),k5_relat_1(sK0,k4_relat_1(sK0))) = k5_relat_1(k6_relat_1(k2_relat_1(sK0)),k4_relat_1(sK0)) ),
% 2.67/0.98      inference(superposition,[status(thm)],[c_1154,c_3173]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_8,plain,
% 2.67/0.98      ( ~ v1_funct_1(X0)
% 2.67/0.98      | ~ v2_funct_1(X0)
% 2.67/0.98      | ~ v1_relat_1(X0)
% 2.67/0.98      | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ),
% 2.67/0.98      inference(cnf_transformation,[],[f30]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_161,plain,
% 2.67/0.98      ( ~ v1_funct_1(X0)
% 2.67/0.98      | ~ v1_relat_1(X0)
% 2.67/0.98      | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
% 2.67/0.98      | sK0 != X0 ),
% 2.67/0.98      inference(resolution_lifted,[status(thm)],[c_8,c_12]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_162,plain,
% 2.67/0.98      ( ~ v1_funct_1(sK0)
% 2.67/0.98      | ~ v1_relat_1(sK0)
% 2.67/0.98      | k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
% 2.67/0.98      inference(unflattening,[status(thm)],[c_161]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_23,plain,
% 2.67/0.98      ( ~ v1_funct_1(sK0)
% 2.67/0.98      | ~ v2_funct_1(sK0)
% 2.67/0.98      | ~ v1_relat_1(sK0)
% 2.67/0.98      | k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
% 2.67/0.98      inference(instantiation,[status(thm)],[c_8]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_164,plain,
% 2.67/0.98      ( k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
% 2.67/0.98      inference(global_propositional_subsumption,
% 2.67/0.98                [status(thm)],
% 2.67/0.98                [c_162,c_16,c_15,c_12,c_23]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_264,plain,
% 2.67/0.98      ( k5_relat_1(sK0,k2_funct_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_164]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_511,plain,
% 2.67/0.98      ( k5_relat_1(sK0,k4_relat_1(sK0)) = k6_relat_1(k1_relat_1(sK0)) ),
% 2.67/0.98      inference(light_normalisation,[status(thm)],[c_264,c_262]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_1160,plain,
% 2.67/0.98      ( k5_relat_1(k6_relat_1(k1_relat_1(k4_relat_1(sK0))),k4_relat_1(sK0)) = k4_relat_1(sK0) ),
% 2.67/0.98      inference(superposition,[status(thm)],[c_1154,c_485]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_1,plain,
% 2.67/0.98      ( ~ v1_relat_1(X0) | k1_relat_1(k4_relat_1(X0)) = k2_relat_1(X0) ),
% 2.67/0.98      inference(cnf_transformation,[],[f23]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_276,plain,
% 2.67/0.98      ( ~ v1_relat_1(X0_39)
% 2.67/0.98      | k1_relat_1(k4_relat_1(X0_39)) = k2_relat_1(X0_39) ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_1]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_483,plain,
% 2.67/0.98      ( k1_relat_1(k4_relat_1(X0_39)) = k2_relat_1(X0_39)
% 2.67/0.98      | v1_relat_1(X0_39) != iProver_top ),
% 2.67/0.98      inference(predicate_to_equality,[status(thm)],[c_276]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_702,plain,
% 2.67/0.98      ( k1_relat_1(k4_relat_1(sK0)) = k2_relat_1(sK0) ),
% 2.67/0.98      inference(superposition,[status(thm)],[c_491,c_483]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_1170,plain,
% 2.67/0.98      ( k5_relat_1(k6_relat_1(k2_relat_1(sK0)),k4_relat_1(sK0)) = k4_relat_1(sK0) ),
% 2.67/0.98      inference(light_normalisation,[status(thm)],[c_1160,c_702]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_4090,plain,
% 2.67/0.98      ( k5_relat_1(k4_relat_1(sK0),k6_relat_1(k1_relat_1(sK0))) = k4_relat_1(sK0) ),
% 2.67/0.98      inference(light_normalisation,[status(thm)],[c_4088,c_511,c_1170]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_4102,plain,
% 2.67/0.98      ( k4_relat_1(sK0) = sK1 ),
% 2.67/0.98      inference(demodulation,[status(thm)],[c_4101,c_4090]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_9,negated_conjecture,
% 2.67/0.98      ( k2_funct_1(sK0) != sK1 ),
% 2.67/0.98      inference(cnf_transformation,[],[f39]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_271,negated_conjecture,
% 2.67/0.98      ( k2_funct_1(sK0) != sK1 ),
% 2.67/0.98      inference(subtyping,[status(esa)],[c_9]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(c_505,plain,
% 2.67/0.98      ( k4_relat_1(sK0) != sK1 ),
% 2.67/0.98      inference(demodulation,[status(thm)],[c_262,c_271]) ).
% 2.67/0.98  
% 2.67/0.98  cnf(contradiction,plain,
% 2.67/0.98      ( $false ),
% 2.67/0.98      inference(minisat,[status(thm)],[c_4102,c_505]) ).
% 2.67/0.98  
% 2.67/0.98  
% 2.67/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 2.67/0.98  
% 2.67/0.98  ------                               Statistics
% 2.67/0.98  
% 2.67/0.98  ------ General
% 2.67/0.98  
% 2.67/0.98  abstr_ref_over_cycles:                  0
% 2.67/0.98  abstr_ref_under_cycles:                 0
% 2.67/0.98  gc_basic_clause_elim:                   0
% 2.67/0.98  forced_gc_time:                         0
% 2.67/0.98  parsing_time:                           0.016
% 2.67/0.98  unif_index_cands_time:                  0.
% 2.67/0.98  unif_index_add_time:                    0.
% 2.67/0.98  orderings_time:                         0.
% 2.67/0.98  out_proof_time:                         0.006
% 2.67/0.98  total_time:                             0.175
% 2.67/0.98  num_of_symbols:                         44
% 2.67/0.98  num_of_terms:                           2955
% 2.67/0.98  
% 2.67/0.98  ------ Preprocessing
% 2.67/0.98  
% 2.67/0.98  num_of_splits:                          0
% 2.67/0.98  num_of_split_atoms:                     0
% 2.67/0.98  num_of_reused_defs:                     0
% 2.67/0.98  num_eq_ax_congr_red:                    1
% 2.67/0.98  num_of_sem_filtered_clauses:            1
% 2.67/0.98  num_of_subtypes:                        2
% 2.67/0.98  monotx_restored_types:                  0
% 2.67/0.98  sat_num_of_epr_types:                   0
% 2.67/0.98  sat_num_of_non_cyclic_types:            0
% 2.67/0.98  sat_guarded_non_collapsed_types:        1
% 2.67/0.98  num_pure_diseq_elim:                    0
% 2.67/0.98  simp_replaced_by:                       0
% 2.67/0.98  res_preprocessed:                       90
% 2.67/0.98  prep_upred:                             0
% 2.67/0.98  prep_unflattend:                        3
% 2.67/0.98  smt_new_axioms:                         0
% 2.67/0.98  pred_elim_cands:                        2
% 2.67/0.98  pred_elim:                              1
% 2.67/0.98  pred_elim_cl:                           1
% 2.67/0.98  pred_elim_cycles:                       3
% 2.67/0.98  merged_defs:                            0
% 2.67/0.98  merged_defs_ncl:                        0
% 2.67/0.98  bin_hyper_res:                          0
% 2.67/0.98  prep_cycles:                            4
% 2.67/0.98  pred_elim_time:                         0.
% 2.67/0.98  splitting_time:                         0.
% 2.67/0.98  sem_filter_time:                        0.
% 2.67/0.98  monotx_time:                            0.
% 2.67/0.98  subtype_inf_time:                       0.
% 2.67/0.98  
% 2.67/0.98  ------ Problem properties
% 2.67/0.98  
% 2.67/0.98  clauses:                                16
% 2.67/0.98  conjectures:                            7
% 2.67/0.98  epr:                                    4
% 2.67/0.98  horn:                                   16
% 2.67/0.98  ground:                                 10
% 2.67/0.98  unary:                                  10
% 2.67/0.98  binary:                                 3
% 2.67/0.98  lits:                                   26
% 2.67/0.98  lits_eq:                                10
% 2.67/0.98  fd_pure:                                0
% 2.67/0.98  fd_pseudo:                              0
% 2.67/0.98  fd_cond:                                0
% 2.67/0.98  fd_pseudo_cond:                         0
% 2.67/0.98  ac_symbols:                             0
% 2.67/0.98  
% 2.67/0.98  ------ Propositional Solver
% 2.67/0.98  
% 2.67/0.98  prop_solver_calls:                      34
% 2.67/0.98  prop_fast_solver_calls:                 508
% 2.67/0.98  smt_solver_calls:                       0
% 2.67/0.98  smt_fast_solver_calls:                  0
% 2.67/0.98  prop_num_of_clauses:                    1400
% 2.67/0.98  prop_preprocess_simplified:             3445
% 2.67/0.98  prop_fo_subsumed:                       21
% 2.67/0.98  prop_solver_time:                       0.
% 2.67/0.98  smt_solver_time:                        0.
% 2.67/0.98  smt_fast_solver_time:                   0.
% 2.67/0.98  prop_fast_solver_time:                  0.
% 2.67/0.98  prop_unsat_core_time:                   0.
% 2.67/0.98  
% 2.67/0.98  ------ QBF
% 2.67/0.98  
% 2.67/0.98  qbf_q_res:                              0
% 2.67/0.98  qbf_num_tautologies:                    0
% 2.67/0.98  qbf_prep_cycles:                        0
% 2.67/0.98  
% 2.67/0.98  ------ BMC1
% 2.67/0.98  
% 2.67/0.98  bmc1_current_bound:                     -1
% 2.67/0.98  bmc1_last_solved_bound:                 -1
% 2.67/0.98  bmc1_unsat_core_size:                   -1
% 2.67/0.98  bmc1_unsat_core_parents_size:           -1
% 2.67/0.98  bmc1_merge_next_fun:                    0
% 2.67/0.98  bmc1_unsat_core_clauses_time:           0.
% 2.67/0.98  
% 2.67/0.98  ------ Instantiation
% 2.67/0.98  
% 2.67/0.98  inst_num_of_clauses:                    775
% 2.67/0.98  inst_num_in_passive:                    123
% 2.67/0.98  inst_num_in_active:                     383
% 2.67/0.98  inst_num_in_unprocessed:                269
% 2.67/0.98  inst_num_of_loops:                      410
% 2.67/0.98  inst_num_of_learning_restarts:          0
% 2.67/0.98  inst_num_moves_active_passive:          16
% 2.67/0.98  inst_lit_activity:                      0
% 2.67/0.98  inst_lit_activity_moves:                0
% 2.67/0.98  inst_num_tautologies:                   0
% 2.67/0.98  inst_num_prop_implied:                  0
% 2.67/0.98  inst_num_existing_simplified:           0
% 2.67/0.98  inst_num_eq_res_simplified:             0
% 2.67/0.98  inst_num_child_elim:                    0
% 2.67/0.98  inst_num_of_dismatching_blockings:      145
% 2.67/0.98  inst_num_of_non_proper_insts:           852
% 2.67/0.98  inst_num_of_duplicates:                 0
% 2.67/0.98  inst_inst_num_from_inst_to_res:         0
% 2.67/0.98  inst_dismatching_checking_time:         0.
% 2.67/0.98  
% 2.67/0.98  ------ Resolution
% 2.67/0.98  
% 2.67/0.98  res_num_of_clauses:                     0
% 2.67/0.98  res_num_in_passive:                     0
% 2.67/0.98  res_num_in_active:                      0
% 2.67/0.98  res_num_of_loops:                       94
% 2.67/0.98  res_forward_subset_subsumed:            196
% 2.67/0.98  res_backward_subset_subsumed:           2
% 2.67/0.98  res_forward_subsumed:                   0
% 2.67/0.98  res_backward_subsumed:                  0
% 2.67/0.98  res_forward_subsumption_resolution:     0
% 2.67/0.98  res_backward_subsumption_resolution:    0
% 2.67/0.98  res_clause_to_clause_subsumption:       309
% 2.67/0.98  res_orphan_elimination:                 0
% 2.67/0.98  res_tautology_del:                      120
% 2.67/0.98  res_num_eq_res_simplified:              0
% 2.67/0.98  res_num_sel_changes:                    0
% 2.67/0.98  res_moves_from_active_to_pass:          0
% 2.67/0.98  
% 2.67/0.98  ------ Superposition
% 2.67/0.98  
% 2.67/0.98  sup_time_total:                         0.
% 2.67/0.98  sup_time_generating:                    0.
% 2.67/0.98  sup_time_sim_full:                      0.
% 2.67/0.98  sup_time_sim_immed:                     0.
% 2.67/0.98  
% 2.67/0.98  sup_num_of_clauses:                     107
% 2.67/0.98  sup_num_in_active:                      81
% 2.67/0.98  sup_num_in_passive:                     26
% 2.67/0.98  sup_num_of_loops:                       80
% 2.67/0.98  sup_fw_superposition:                   94
% 2.67/0.98  sup_bw_superposition:                   8
% 2.67/0.98  sup_immediate_simplified:               29
% 2.67/0.98  sup_given_eliminated:                   1
% 2.67/0.98  comparisons_done:                       0
% 2.67/0.98  comparisons_avoided:                    0
% 2.67/0.98  
% 2.67/0.98  ------ Simplifications
% 2.67/0.98  
% 2.67/0.98  
% 2.67/0.98  sim_fw_subset_subsumed:                 3
% 2.67/0.98  sim_bw_subset_subsumed:                 0
% 2.67/0.98  sim_fw_subsumed:                        0
% 2.67/0.98  sim_bw_subsumed:                        0
% 2.67/0.98  sim_fw_subsumption_res:                 0
% 2.67/0.98  sim_bw_subsumption_res:                 0
% 2.67/0.98  sim_tautology_del:                      0
% 2.67/0.98  sim_eq_tautology_del:                   5
% 2.67/0.98  sim_eq_res_simp:                        0
% 2.67/0.98  sim_fw_demodulated:                     0
% 2.67/0.98  sim_bw_demodulated:                     6
% 2.67/0.98  sim_light_normalised:                   30
% 2.67/0.98  sim_joinable_taut:                      0
% 2.67/0.98  sim_joinable_simp:                      0
% 2.67/0.98  sim_ac_normalised:                      0
% 2.67/0.98  sim_smt_subsumption:                    0
% 2.67/0.98  
%------------------------------------------------------------------------------
