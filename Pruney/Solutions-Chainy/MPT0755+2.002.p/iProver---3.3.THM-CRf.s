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
% DateTime   : Thu Dec  3 11:54:10 EST 2020

% Result     : Theorem 1.22s
% Output     : CNFRefutation 1.22s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 230 expanded)
%              Number of clauses        :   43 (  65 expanded)
%              Number of leaves         :    8 (  59 expanded)
%              Depth                    :   16
%              Number of atoms          :  259 (1569 expanded)
%              Number of equality atoms :   37 (  40 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,conjecture,(
    ! [X0,X1] :
      ( ( v5_ordinal1(X1)
        & v1_funct_1(X1)
        & v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ! [X2] :
          ( v3_ordinal1(X2)
         => ( v5_ordinal1(k7_relat_1(X1,X2))
            & v1_funct_1(k7_relat_1(X1,X2))
            & v5_relat_1(k7_relat_1(X1,X2),X0)
            & v1_relat_1(k7_relat_1(X1,X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( v5_ordinal1(X1)
          & v1_funct_1(X1)
          & v5_relat_1(X1,X0)
          & v1_relat_1(X1) )
       => ! [X2] :
            ( v3_ordinal1(X2)
           => ( v5_ordinal1(k7_relat_1(X1,X2))
              & v1_funct_1(k7_relat_1(X1,X2))
              & v5_relat_1(k7_relat_1(X1,X2),X0)
              & v1_relat_1(k7_relat_1(X1,X2)) ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f20,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ v5_ordinal1(k7_relat_1(X1,X2))
            | ~ v1_funct_1(k7_relat_1(X1,X2))
            | ~ v5_relat_1(k7_relat_1(X1,X2),X0)
            | ~ v1_relat_1(k7_relat_1(X1,X2)) )
          & v3_ordinal1(X2) )
      & v5_ordinal1(X1)
      & v1_funct_1(X1)
      & v5_relat_1(X1,X0)
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f21,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ v5_ordinal1(k7_relat_1(X1,X2))
            | ~ v1_funct_1(k7_relat_1(X1,X2))
            | ~ v5_relat_1(k7_relat_1(X1,X2),X0)
            | ~ v1_relat_1(k7_relat_1(X1,X2)) )
          & v3_ordinal1(X2) )
      & v5_ordinal1(X1)
      & v1_funct_1(X1)
      & v5_relat_1(X1,X0)
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f20])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ( ~ v5_ordinal1(k7_relat_1(X1,X2))
            | ~ v1_funct_1(k7_relat_1(X1,X2))
            | ~ v5_relat_1(k7_relat_1(X1,X2),X0)
            | ~ v1_relat_1(k7_relat_1(X1,X2)) )
          & v3_ordinal1(X2) )
     => ( ( ~ v5_ordinal1(k7_relat_1(X1,sK2))
          | ~ v1_funct_1(k7_relat_1(X1,sK2))
          | ~ v5_relat_1(k7_relat_1(X1,sK2),X0)
          | ~ v1_relat_1(k7_relat_1(X1,sK2)) )
        & v3_ordinal1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ( ~ v5_ordinal1(k7_relat_1(X1,X2))
              | ~ v1_funct_1(k7_relat_1(X1,X2))
              | ~ v5_relat_1(k7_relat_1(X1,X2),X0)
              | ~ v1_relat_1(k7_relat_1(X1,X2)) )
            & v3_ordinal1(X2) )
        & v5_ordinal1(X1)
        & v1_funct_1(X1)
        & v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
   => ( ? [X2] :
          ( ( ~ v5_ordinal1(k7_relat_1(sK1,X2))
            | ~ v1_funct_1(k7_relat_1(sK1,X2))
            | ~ v5_relat_1(k7_relat_1(sK1,X2),sK0)
            | ~ v1_relat_1(k7_relat_1(sK1,X2)) )
          & v3_ordinal1(X2) )
      & v5_ordinal1(sK1)
      & v1_funct_1(sK1)
      & v5_relat_1(sK1,sK0)
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( ( ~ v5_ordinal1(k7_relat_1(sK1,sK2))
      | ~ v1_funct_1(k7_relat_1(sK1,sK2))
      | ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0)
      | ~ v1_relat_1(k7_relat_1(sK1,sK2)) )
    & v3_ordinal1(sK2)
    & v5_ordinal1(sK1)
    & v1_funct_1(sK1)
    & v5_relat_1(sK1,sK0)
    & v1_relat_1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f21,f23,f22])).

fof(f39,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f24])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f25,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( v1_relat_1(X2)
        & v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v5_relat_1(k5_relat_1(X2,X1),X0)
        & v1_relat_1(k5_relat_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( ( v5_relat_1(k5_relat_1(X2,X1),X0)
        & v1_relat_1(k5_relat_1(X2,X1)) )
      | ~ v1_relat_1(X2)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( ( v5_relat_1(k5_relat_1(X2,X1),X0)
        & v1_relat_1(k5_relat_1(X2,X1)) )
      | ~ v1_relat_1(X2)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f12])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(k5_relat_1(X2,X1),X0)
      | ~ v1_relat_1(X2)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f5])).

fof(f44,plain,
    ( ~ v5_ordinal1(k7_relat_1(sK1,sK2))
    | ~ v1_funct_1(k7_relat_1(sK1,sK2))
    | ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0)
    | ~ v1_relat_1(k7_relat_1(sK1,sK2)) ),
    inference(cnf_transformation,[],[f24])).

fof(f41,plain,(
    v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f24])).

fof(f42,plain,(
    v5_ordinal1(sK1) ),
    inference(cnf_transformation,[],[f24])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( v3_ordinal1(X1)
        & v5_ordinal1(X0)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v5_ordinal1(k7_relat_1(X0,X1))
        & v5_relat_1(k7_relat_1(X0,X1),k2_relat_1(X0))
        & v1_relat_1(k7_relat_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( v5_ordinal1(k7_relat_1(X0,X1))
        & v5_relat_1(k7_relat_1(X0,X1),k2_relat_1(X0))
        & v1_relat_1(k7_relat_1(X0,X1)) )
      | ~ v3_ordinal1(X1)
      | ~ v5_ordinal1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( v5_ordinal1(k7_relat_1(X0,X1))
        & v5_relat_1(k7_relat_1(X0,X1),k2_relat_1(X0))
        & v1_relat_1(k7_relat_1(X0,X1)) )
      | ~ v3_ordinal1(X1)
      | ~ v5_ordinal1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f18])).

fof(f36,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v3_ordinal1(X1)
      | ~ v5_ordinal1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f43,plain,(
    v3_ordinal1(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f38,plain,(
    ! [X0,X1] :
      ( v5_ordinal1(k7_relat_1(X0,X1))
      | ~ v3_ordinal1(X1)
      | ~ v5_ordinal1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k7_relat_1(X0,X1))
        & v1_relat_1(k7_relat_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( ( v1_funct_1(k7_relat_1(X0,X1))
        & v1_relat_1(k7_relat_1(X0,X1)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( v1_funct_1(k7_relat_1(X0,X1))
        & v1_relat_1(k7_relat_1(X0,X1)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f35,plain,(
    ! [X0,X1] :
      ( v1_funct_1(k7_relat_1(X0,X1))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f40,plain,(
    v5_relat_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_19,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_384,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(subtyping,[status(esa)],[c_19])).

cnf(c_742,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_384])).

cnf(c_0,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_397,plain,
    ( ~ v1_relat_1(X0_40)
    | k5_relat_1(k6_relat_1(X0_41),X0_40) = k7_relat_1(X0_40,X0_41) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_729,plain,
    ( k5_relat_1(k6_relat_1(X0_41),X0_40) = k7_relat_1(X0_40,X0_41)
    | v1_relat_1(X0_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_397])).

cnf(c_1098,plain,
    ( k5_relat_1(k6_relat_1(X0_41),sK1) = k7_relat_1(sK1,X0_41) ),
    inference(superposition,[status(thm)],[c_742,c_729])).

cnf(c_3,plain,
    ( ~ v5_relat_1(X0,X1)
    | v5_relat_1(k5_relat_1(X2,X0),X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X2) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_394,plain,
    ( ~ v5_relat_1(X0_40,X0_41)
    | v5_relat_1(k5_relat_1(X1_40,X0_40),X0_41)
    | ~ v1_relat_1(X0_40)
    | ~ v1_relat_1(X1_40) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_732,plain,
    ( v5_relat_1(X0_40,X0_41) != iProver_top
    | v5_relat_1(k5_relat_1(X1_40,X0_40),X0_41) = iProver_top
    | v1_relat_1(X1_40) != iProver_top
    | v1_relat_1(X0_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_394])).

cnf(c_1658,plain,
    ( v5_relat_1(k7_relat_1(sK1,X0_41),X1_41) = iProver_top
    | v5_relat_1(sK1,X1_41) != iProver_top
    | v1_relat_1(k6_relat_1(X0_41)) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1098,c_732])).

cnf(c_20,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_8,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_395,plain,
    ( v1_relat_1(k6_relat_1(X0_41)) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_423,plain,
    ( v1_relat_1(k6_relat_1(X0_41)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_395])).

cnf(c_2506,plain,
    ( v5_relat_1(k7_relat_1(sK1,X0_41),X1_41) = iProver_top
    | v5_relat_1(sK1,X1_41) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1658,c_20,c_423])).

cnf(c_14,negated_conjecture,
    ( ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0)
    | ~ v5_ordinal1(k7_relat_1(sK1,sK2))
    | ~ v1_funct_1(k7_relat_1(sK1,sK2))
    | ~ v1_relat_1(k7_relat_1(sK1,sK2)) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_17,negated_conjecture,
    ( v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_16,negated_conjecture,
    ( v5_ordinal1(sK1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_13,plain,
    ( ~ v3_ordinal1(X0)
    | ~ v5_ordinal1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k7_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_15,negated_conjecture,
    ( v3_ordinal1(sK2) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_213,plain,
    ( ~ v5_ordinal1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k7_relat_1(X0,X1))
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_15])).

cnf(c_214,plain,
    ( ~ v5_ordinal1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k7_relat_1(X0,sK2)) ),
    inference(unflattening,[status(thm)],[c_213])).

cnf(c_216,plain,
    ( ~ v5_ordinal1(sK1)
    | ~ v1_funct_1(sK1)
    | v1_relat_1(k7_relat_1(sK1,sK2))
    | ~ v1_relat_1(sK1) ),
    inference(instantiation,[status(thm)],[c_214])).

cnf(c_11,plain,
    ( ~ v3_ordinal1(X0)
    | ~ v5_ordinal1(X1)
    | v5_ordinal1(k7_relat_1(X1,X0))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_218,plain,
    ( ~ v5_ordinal1(X0)
    | v5_ordinal1(k7_relat_1(X0,X1))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_15])).

cnf(c_219,plain,
    ( ~ v5_ordinal1(X0)
    | v5_ordinal1(k7_relat_1(X0,sK2))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_218])).

cnf(c_221,plain,
    ( v5_ordinal1(k7_relat_1(sK1,sK2))
    | ~ v5_ordinal1(sK1)
    | ~ v1_funct_1(sK1)
    | ~ v1_relat_1(sK1) ),
    inference(instantiation,[status(thm)],[c_219])).

cnf(c_288,plain,
    ( ~ v1_funct_1(k7_relat_1(sK1,sK2))
    | ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_14,c_19,c_17,c_16,c_216,c_221])).

cnf(c_289,negated_conjecture,
    ( ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0)
    | ~ v1_funct_1(k7_relat_1(sK1,sK2)) ),
    inference(renaming,[status(thm)],[c_288])).

cnf(c_381,negated_conjecture,
    ( ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0)
    | ~ v1_funct_1(k7_relat_1(sK1,sK2)) ),
    inference(subtyping,[status(esa)],[c_289])).

cnf(c_745,plain,
    ( v5_relat_1(k7_relat_1(sK1,sK2),sK0) != iProver_top
    | v1_funct_1(k7_relat_1(sK1,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_381])).

cnf(c_22,plain,
    ( v1_funct_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_290,plain,
    ( v5_relat_1(k7_relat_1(sK1,sK2),sK0) != iProver_top
    | v1_funct_1(k7_relat_1(sK1,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_289])).

cnf(c_9,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(k7_relat_1(X0,X1))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_389,plain,
    ( ~ v1_funct_1(X0_40)
    | v1_funct_1(k7_relat_1(X0_40,X0_41))
    | ~ v1_relat_1(X0_40) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_437,plain,
    ( v1_funct_1(X0_40) != iProver_top
    | v1_funct_1(k7_relat_1(X0_40,X0_41)) = iProver_top
    | v1_relat_1(X0_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_389])).

cnf(c_439,plain,
    ( v1_funct_1(k7_relat_1(sK1,sK2)) = iProver_top
    | v1_funct_1(sK1) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(instantiation,[status(thm)],[c_437])).

cnf(c_933,plain,
    ( v5_relat_1(k7_relat_1(sK1,sK2),sK0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_745,c_20,c_22,c_290,c_439])).

cnf(c_2514,plain,
    ( v5_relat_1(sK1,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2506,c_933])).

cnf(c_18,negated_conjecture,
    ( v5_relat_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_21,plain,
    ( v5_relat_1(sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2514,c_21])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.10  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.11  % Command    : iproveropt_run.sh %d %s
% 0.11/0.32  % Computer   : n021.cluster.edu
% 0.11/0.32  % Model      : x86_64 x86_64
% 0.11/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.32  % Memory     : 8042.1875MB
% 0.11/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.32  % CPULimit   : 60
% 0.11/0.32  % WCLimit    : 600
% 0.11/0.32  % DateTime   : Tue Dec  1 17:00:49 EST 2020
% 0.11/0.32  % CPUTime    : 
% 0.11/0.32  % Running in FOF mode
% 1.22/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.22/0.98  
% 1.22/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.22/0.98  
% 1.22/0.98  ------  iProver source info
% 1.22/0.98  
% 1.22/0.98  git: date: 2020-06-30 10:37:57 +0100
% 1.22/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.22/0.98  git: non_committed_changes: false
% 1.22/0.98  git: last_make_outside_of_git: false
% 1.22/0.98  
% 1.22/0.98  ------ 
% 1.22/0.98  
% 1.22/0.98  ------ Input Options
% 1.22/0.98  
% 1.22/0.98  --out_options                           all
% 1.22/0.98  --tptp_safe_out                         true
% 1.22/0.98  --problem_path                          ""
% 1.22/0.98  --include_path                          ""
% 1.22/0.98  --clausifier                            res/vclausify_rel
% 1.22/0.98  --clausifier_options                    --mode clausify
% 1.22/0.98  --stdin                                 false
% 1.22/0.98  --stats_out                             all
% 1.22/0.98  
% 1.22/0.98  ------ General Options
% 1.22/0.98  
% 1.22/0.98  --fof                                   false
% 1.22/0.98  --time_out_real                         305.
% 1.22/0.98  --time_out_virtual                      -1.
% 1.22/0.98  --symbol_type_check                     false
% 1.22/0.98  --clausify_out                          false
% 1.22/0.98  --sig_cnt_out                           false
% 1.22/0.98  --trig_cnt_out                          false
% 1.22/0.98  --trig_cnt_out_tolerance                1.
% 1.22/0.98  --trig_cnt_out_sk_spl                   false
% 1.22/0.98  --abstr_cl_out                          false
% 1.22/0.98  
% 1.22/0.98  ------ Global Options
% 1.22/0.98  
% 1.22/0.98  --schedule                              default
% 1.22/0.98  --add_important_lit                     false
% 1.22/0.98  --prop_solver_per_cl                    1000
% 1.22/0.98  --min_unsat_core                        false
% 1.22/0.98  --soft_assumptions                      false
% 1.22/0.98  --soft_lemma_size                       3
% 1.22/0.98  --prop_impl_unit_size                   0
% 1.22/0.98  --prop_impl_unit                        []
% 1.22/0.98  --share_sel_clauses                     true
% 1.22/0.98  --reset_solvers                         false
% 1.22/0.98  --bc_imp_inh                            [conj_cone]
% 1.22/0.98  --conj_cone_tolerance                   3.
% 1.22/0.98  --extra_neg_conj                        none
% 1.22/0.98  --large_theory_mode                     true
% 1.22/0.98  --prolific_symb_bound                   200
% 1.22/0.98  --lt_threshold                          2000
% 1.22/0.98  --clause_weak_htbl                      true
% 1.22/0.98  --gc_record_bc_elim                     false
% 1.22/0.98  
% 1.22/0.98  ------ Preprocessing Options
% 1.22/0.98  
% 1.22/0.98  --preprocessing_flag                    true
% 1.22/0.98  --time_out_prep_mult                    0.1
% 1.22/0.98  --splitting_mode                        input
% 1.22/0.98  --splitting_grd                         true
% 1.22/0.98  --splitting_cvd                         false
% 1.22/0.98  --splitting_cvd_svl                     false
% 1.22/0.98  --splitting_nvd                         32
% 1.22/0.98  --sub_typing                            true
% 1.22/0.98  --prep_gs_sim                           true
% 1.22/0.98  --prep_unflatten                        true
% 1.22/0.98  --prep_res_sim                          true
% 1.22/0.98  --prep_upred                            true
% 1.22/0.98  --prep_sem_filter                       exhaustive
% 1.22/0.98  --prep_sem_filter_out                   false
% 1.22/0.98  --pred_elim                             true
% 1.22/0.98  --res_sim_input                         true
% 1.22/0.98  --eq_ax_congr_red                       true
% 1.22/0.98  --pure_diseq_elim                       true
% 1.22/0.98  --brand_transform                       false
% 1.22/0.98  --non_eq_to_eq                          false
% 1.22/0.98  --prep_def_merge                        true
% 1.22/0.98  --prep_def_merge_prop_impl              false
% 1.22/0.98  --prep_def_merge_mbd                    true
% 1.22/0.98  --prep_def_merge_tr_red                 false
% 1.22/0.98  --prep_def_merge_tr_cl                  false
% 1.22/0.98  --smt_preprocessing                     true
% 1.22/0.98  --smt_ac_axioms                         fast
% 1.22/0.98  --preprocessed_out                      false
% 1.22/0.98  --preprocessed_stats                    false
% 1.22/0.98  
% 1.22/0.98  ------ Abstraction refinement Options
% 1.22/0.98  
% 1.22/0.98  --abstr_ref                             []
% 1.22/0.98  --abstr_ref_prep                        false
% 1.22/0.98  --abstr_ref_until_sat                   false
% 1.22/0.98  --abstr_ref_sig_restrict                funpre
% 1.22/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.22/0.98  --abstr_ref_under                       []
% 1.22/0.98  
% 1.22/0.98  ------ SAT Options
% 1.22/0.98  
% 1.22/0.98  --sat_mode                              false
% 1.22/0.98  --sat_fm_restart_options                ""
% 1.22/0.98  --sat_gr_def                            false
% 1.22/0.98  --sat_epr_types                         true
% 1.22/0.98  --sat_non_cyclic_types                  false
% 1.22/0.98  --sat_finite_models                     false
% 1.22/0.98  --sat_fm_lemmas                         false
% 1.22/0.98  --sat_fm_prep                           false
% 1.22/0.98  --sat_fm_uc_incr                        true
% 1.22/0.98  --sat_out_model                         small
% 1.22/0.98  --sat_out_clauses                       false
% 1.22/0.98  
% 1.22/0.98  ------ QBF Options
% 1.22/0.98  
% 1.22/0.98  --qbf_mode                              false
% 1.22/0.98  --qbf_elim_univ                         false
% 1.22/0.98  --qbf_dom_inst                          none
% 1.22/0.98  --qbf_dom_pre_inst                      false
% 1.22/0.98  --qbf_sk_in                             false
% 1.22/0.98  --qbf_pred_elim                         true
% 1.22/0.98  --qbf_split                             512
% 1.22/0.98  
% 1.22/0.98  ------ BMC1 Options
% 1.22/0.98  
% 1.22/0.98  --bmc1_incremental                      false
% 1.22/0.98  --bmc1_axioms                           reachable_all
% 1.22/0.98  --bmc1_min_bound                        0
% 1.22/0.98  --bmc1_max_bound                        -1
% 1.22/0.98  --bmc1_max_bound_default                -1
% 1.22/0.98  --bmc1_symbol_reachability              true
% 1.22/0.98  --bmc1_property_lemmas                  false
% 1.22/0.98  --bmc1_k_induction                      false
% 1.22/0.98  --bmc1_non_equiv_states                 false
% 1.22/0.98  --bmc1_deadlock                         false
% 1.22/0.98  --bmc1_ucm                              false
% 1.22/0.98  --bmc1_add_unsat_core                   none
% 1.22/0.98  --bmc1_unsat_core_children              false
% 1.22/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.22/0.98  --bmc1_out_stat                         full
% 1.22/0.98  --bmc1_ground_init                      false
% 1.22/0.98  --bmc1_pre_inst_next_state              false
% 1.22/0.98  --bmc1_pre_inst_state                   false
% 1.22/0.98  --bmc1_pre_inst_reach_state             false
% 1.22/0.98  --bmc1_out_unsat_core                   false
% 1.22/0.98  --bmc1_aig_witness_out                  false
% 1.22/0.98  --bmc1_verbose                          false
% 1.22/0.98  --bmc1_dump_clauses_tptp                false
% 1.22/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.22/0.98  --bmc1_dump_file                        -
% 1.22/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.22/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.22/0.98  --bmc1_ucm_extend_mode                  1
% 1.22/0.98  --bmc1_ucm_init_mode                    2
% 1.22/0.98  --bmc1_ucm_cone_mode                    none
% 1.22/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.22/0.98  --bmc1_ucm_relax_model                  4
% 1.22/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.22/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.22/0.98  --bmc1_ucm_layered_model                none
% 1.22/0.98  --bmc1_ucm_max_lemma_size               10
% 1.22/0.98  
% 1.22/0.98  ------ AIG Options
% 1.22/0.98  
% 1.22/0.98  --aig_mode                              false
% 1.22/0.98  
% 1.22/0.98  ------ Instantiation Options
% 1.22/0.98  
% 1.22/0.98  --instantiation_flag                    true
% 1.22/0.98  --inst_sos_flag                         false
% 1.22/0.98  --inst_sos_phase                        true
% 1.22/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.22/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.22/0.98  --inst_lit_sel_side                     num_symb
% 1.22/0.98  --inst_solver_per_active                1400
% 1.22/0.98  --inst_solver_calls_frac                1.
% 1.22/0.98  --inst_passive_queue_type               priority_queues
% 1.22/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.22/0.98  --inst_passive_queues_freq              [25;2]
% 1.22/0.98  --inst_dismatching                      true
% 1.22/0.98  --inst_eager_unprocessed_to_passive     true
% 1.22/0.98  --inst_prop_sim_given                   true
% 1.22/0.98  --inst_prop_sim_new                     false
% 1.22/0.98  --inst_subs_new                         false
% 1.22/0.98  --inst_eq_res_simp                      false
% 1.22/0.98  --inst_subs_given                       false
% 1.22/0.98  --inst_orphan_elimination               true
% 1.22/0.98  --inst_learning_loop_flag               true
% 1.22/0.98  --inst_learning_start                   3000
% 1.22/0.98  --inst_learning_factor                  2
% 1.22/0.98  --inst_start_prop_sim_after_learn       3
% 1.22/0.98  --inst_sel_renew                        solver
% 1.22/0.98  --inst_lit_activity_flag                true
% 1.22/0.98  --inst_restr_to_given                   false
% 1.22/0.98  --inst_activity_threshold               500
% 1.22/0.98  --inst_out_proof                        true
% 1.22/0.98  
% 1.22/0.98  ------ Resolution Options
% 1.22/0.98  
% 1.22/0.98  --resolution_flag                       true
% 1.22/0.98  --res_lit_sel                           adaptive
% 1.22/0.98  --res_lit_sel_side                      none
% 1.22/0.98  --res_ordering                          kbo
% 1.22/0.98  --res_to_prop_solver                    active
% 1.22/0.98  --res_prop_simpl_new                    false
% 1.22/0.98  --res_prop_simpl_given                  true
% 1.22/0.98  --res_passive_queue_type                priority_queues
% 1.22/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.22/0.98  --res_passive_queues_freq               [15;5]
% 1.22/0.98  --res_forward_subs                      full
% 1.22/0.98  --res_backward_subs                     full
% 1.22/0.98  --res_forward_subs_resolution           true
% 1.22/0.98  --res_backward_subs_resolution          true
% 1.22/0.98  --res_orphan_elimination                true
% 1.22/0.98  --res_time_limit                        2.
% 1.22/0.98  --res_out_proof                         true
% 1.22/0.98  
% 1.22/0.98  ------ Superposition Options
% 1.22/0.98  
% 1.22/0.98  --superposition_flag                    true
% 1.22/0.98  --sup_passive_queue_type                priority_queues
% 1.22/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.22/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.22/0.98  --demod_completeness_check              fast
% 1.22/0.98  --demod_use_ground                      true
% 1.22/0.98  --sup_to_prop_solver                    passive
% 1.22/0.98  --sup_prop_simpl_new                    true
% 1.22/0.98  --sup_prop_simpl_given                  true
% 1.22/0.98  --sup_fun_splitting                     false
% 1.22/0.98  --sup_smt_interval                      50000
% 1.22/0.98  
% 1.22/0.98  ------ Superposition Simplification Setup
% 1.22/0.98  
% 1.22/0.98  --sup_indices_passive                   []
% 1.22/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.22/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.22/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.22/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.22/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.22/0.98  --sup_full_bw                           [BwDemod]
% 1.22/0.98  --sup_immed_triv                        [TrivRules]
% 1.22/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.22/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.22/0.98  --sup_immed_bw_main                     []
% 1.22/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.22/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.22/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.22/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.22/0.98  
% 1.22/0.98  ------ Combination Options
% 1.22/0.98  
% 1.22/0.98  --comb_res_mult                         3
% 1.22/0.98  --comb_sup_mult                         2
% 1.22/0.98  --comb_inst_mult                        10
% 1.22/0.98  
% 1.22/0.98  ------ Debug Options
% 1.22/0.98  
% 1.22/0.98  --dbg_backtrace                         false
% 1.22/0.98  --dbg_dump_prop_clauses                 false
% 1.22/0.98  --dbg_dump_prop_clauses_file            -
% 1.22/0.98  --dbg_out_stat                          false
% 1.22/0.98  ------ Parsing...
% 1.22/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.22/0.98  
% 1.22/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 1.22/0.98  
% 1.22/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.22/0.98  
% 1.22/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.22/0.98  ------ Proving...
% 1.22/0.98  ------ Problem Properties 
% 1.22/0.98  
% 1.22/0.98  
% 1.22/0.98  clauses                                 17
% 1.22/0.98  conjectures                             5
% 1.22/0.98  EPR                                     4
% 1.22/0.98  Horn                                    17
% 1.22/0.98  unary                                   7
% 1.22/0.98  binary                                  2
% 1.22/0.98  lits                                    43
% 1.22/0.98  lits eq                                 1
% 1.22/0.98  fd_pure                                 0
% 1.22/0.98  fd_pseudo                               0
% 1.22/0.98  fd_cond                                 0
% 1.22/0.98  fd_pseudo_cond                          0
% 1.22/0.98  AC symbols                              0
% 1.22/0.98  
% 1.22/0.98  ------ Schedule dynamic 5 is on 
% 1.22/0.98  
% 1.22/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.22/0.98  
% 1.22/0.98  
% 1.22/0.98  ------ 
% 1.22/0.98  Current options:
% 1.22/0.98  ------ 
% 1.22/0.98  
% 1.22/0.98  ------ Input Options
% 1.22/0.98  
% 1.22/0.98  --out_options                           all
% 1.22/0.98  --tptp_safe_out                         true
% 1.22/0.98  --problem_path                          ""
% 1.22/0.98  --include_path                          ""
% 1.22/0.98  --clausifier                            res/vclausify_rel
% 1.22/0.98  --clausifier_options                    --mode clausify
% 1.22/0.98  --stdin                                 false
% 1.22/0.98  --stats_out                             all
% 1.22/0.98  
% 1.22/0.98  ------ General Options
% 1.22/0.98  
% 1.22/0.98  --fof                                   false
% 1.22/0.98  --time_out_real                         305.
% 1.22/0.98  --time_out_virtual                      -1.
% 1.22/0.98  --symbol_type_check                     false
% 1.22/0.98  --clausify_out                          false
% 1.22/0.98  --sig_cnt_out                           false
% 1.22/0.98  --trig_cnt_out                          false
% 1.22/0.98  --trig_cnt_out_tolerance                1.
% 1.22/0.98  --trig_cnt_out_sk_spl                   false
% 1.22/0.98  --abstr_cl_out                          false
% 1.22/0.98  
% 1.22/0.98  ------ Global Options
% 1.22/0.98  
% 1.22/0.98  --schedule                              default
% 1.22/0.98  --add_important_lit                     false
% 1.22/0.98  --prop_solver_per_cl                    1000
% 1.22/0.98  --min_unsat_core                        false
% 1.22/0.98  --soft_assumptions                      false
% 1.22/0.98  --soft_lemma_size                       3
% 1.22/0.98  --prop_impl_unit_size                   0
% 1.22/0.98  --prop_impl_unit                        []
% 1.22/0.98  --share_sel_clauses                     true
% 1.22/0.98  --reset_solvers                         false
% 1.22/0.98  --bc_imp_inh                            [conj_cone]
% 1.22/0.98  --conj_cone_tolerance                   3.
% 1.22/0.98  --extra_neg_conj                        none
% 1.22/0.98  --large_theory_mode                     true
% 1.22/0.98  --prolific_symb_bound                   200
% 1.22/0.98  --lt_threshold                          2000
% 1.22/0.98  --clause_weak_htbl                      true
% 1.22/0.98  --gc_record_bc_elim                     false
% 1.22/0.98  
% 1.22/0.98  ------ Preprocessing Options
% 1.22/0.98  
% 1.22/0.98  --preprocessing_flag                    true
% 1.22/0.98  --time_out_prep_mult                    0.1
% 1.22/0.98  --splitting_mode                        input
% 1.22/0.98  --splitting_grd                         true
% 1.22/0.98  --splitting_cvd                         false
% 1.22/0.98  --splitting_cvd_svl                     false
% 1.22/0.98  --splitting_nvd                         32
% 1.22/0.98  --sub_typing                            true
% 1.22/0.98  --prep_gs_sim                           true
% 1.22/0.98  --prep_unflatten                        true
% 1.22/0.98  --prep_res_sim                          true
% 1.22/0.98  --prep_upred                            true
% 1.22/0.98  --prep_sem_filter                       exhaustive
% 1.22/0.98  --prep_sem_filter_out                   false
% 1.22/0.98  --pred_elim                             true
% 1.22/0.98  --res_sim_input                         true
% 1.22/0.98  --eq_ax_congr_red                       true
% 1.22/0.98  --pure_diseq_elim                       true
% 1.22/0.98  --brand_transform                       false
% 1.22/0.98  --non_eq_to_eq                          false
% 1.22/0.98  --prep_def_merge                        true
% 1.22/0.98  --prep_def_merge_prop_impl              false
% 1.22/0.98  --prep_def_merge_mbd                    true
% 1.22/0.98  --prep_def_merge_tr_red                 false
% 1.22/0.98  --prep_def_merge_tr_cl                  false
% 1.22/0.98  --smt_preprocessing                     true
% 1.22/0.98  --smt_ac_axioms                         fast
% 1.22/0.98  --preprocessed_out                      false
% 1.22/0.98  --preprocessed_stats                    false
% 1.22/0.98  
% 1.22/0.98  ------ Abstraction refinement Options
% 1.22/0.98  
% 1.22/0.98  --abstr_ref                             []
% 1.22/0.98  --abstr_ref_prep                        false
% 1.22/0.98  --abstr_ref_until_sat                   false
% 1.22/0.98  --abstr_ref_sig_restrict                funpre
% 1.22/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.22/0.98  --abstr_ref_under                       []
% 1.22/0.98  
% 1.22/0.98  ------ SAT Options
% 1.22/0.98  
% 1.22/0.98  --sat_mode                              false
% 1.22/0.98  --sat_fm_restart_options                ""
% 1.22/0.98  --sat_gr_def                            false
% 1.22/0.98  --sat_epr_types                         true
% 1.22/0.98  --sat_non_cyclic_types                  false
% 1.22/0.98  --sat_finite_models                     false
% 1.22/0.98  --sat_fm_lemmas                         false
% 1.22/0.98  --sat_fm_prep                           false
% 1.22/0.98  --sat_fm_uc_incr                        true
% 1.22/0.98  --sat_out_model                         small
% 1.22/0.98  --sat_out_clauses                       false
% 1.22/0.98  
% 1.22/0.98  ------ QBF Options
% 1.22/0.98  
% 1.22/0.98  --qbf_mode                              false
% 1.22/0.98  --qbf_elim_univ                         false
% 1.22/0.98  --qbf_dom_inst                          none
% 1.22/0.98  --qbf_dom_pre_inst                      false
% 1.22/0.98  --qbf_sk_in                             false
% 1.22/0.98  --qbf_pred_elim                         true
% 1.22/0.98  --qbf_split                             512
% 1.22/0.98  
% 1.22/0.98  ------ BMC1 Options
% 1.22/0.98  
% 1.22/0.98  --bmc1_incremental                      false
% 1.22/0.98  --bmc1_axioms                           reachable_all
% 1.22/0.98  --bmc1_min_bound                        0
% 1.22/0.98  --bmc1_max_bound                        -1
% 1.22/0.98  --bmc1_max_bound_default                -1
% 1.22/0.98  --bmc1_symbol_reachability              true
% 1.22/0.98  --bmc1_property_lemmas                  false
% 1.22/0.98  --bmc1_k_induction                      false
% 1.22/0.98  --bmc1_non_equiv_states                 false
% 1.22/0.98  --bmc1_deadlock                         false
% 1.22/0.98  --bmc1_ucm                              false
% 1.22/0.98  --bmc1_add_unsat_core                   none
% 1.22/0.98  --bmc1_unsat_core_children              false
% 1.22/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.22/0.98  --bmc1_out_stat                         full
% 1.22/0.98  --bmc1_ground_init                      false
% 1.22/0.98  --bmc1_pre_inst_next_state              false
% 1.22/0.98  --bmc1_pre_inst_state                   false
% 1.22/0.98  --bmc1_pre_inst_reach_state             false
% 1.22/0.98  --bmc1_out_unsat_core                   false
% 1.22/0.98  --bmc1_aig_witness_out                  false
% 1.22/0.98  --bmc1_verbose                          false
% 1.22/0.98  --bmc1_dump_clauses_tptp                false
% 1.22/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.22/0.98  --bmc1_dump_file                        -
% 1.22/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.22/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.22/0.98  --bmc1_ucm_extend_mode                  1
% 1.22/0.98  --bmc1_ucm_init_mode                    2
% 1.22/0.98  --bmc1_ucm_cone_mode                    none
% 1.22/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.22/0.98  --bmc1_ucm_relax_model                  4
% 1.22/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.22/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.22/0.98  --bmc1_ucm_layered_model                none
% 1.22/0.98  --bmc1_ucm_max_lemma_size               10
% 1.22/0.98  
% 1.22/0.98  ------ AIG Options
% 1.22/0.98  
% 1.22/0.98  --aig_mode                              false
% 1.22/0.98  
% 1.22/0.98  ------ Instantiation Options
% 1.22/0.98  
% 1.22/0.98  --instantiation_flag                    true
% 1.22/0.98  --inst_sos_flag                         false
% 1.22/0.98  --inst_sos_phase                        true
% 1.22/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.22/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.22/0.98  --inst_lit_sel_side                     none
% 1.22/0.98  --inst_solver_per_active                1400
% 1.22/0.98  --inst_solver_calls_frac                1.
% 1.22/0.98  --inst_passive_queue_type               priority_queues
% 1.22/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.22/0.98  --inst_passive_queues_freq              [25;2]
% 1.22/0.98  --inst_dismatching                      true
% 1.22/0.98  --inst_eager_unprocessed_to_passive     true
% 1.22/0.98  --inst_prop_sim_given                   true
% 1.22/0.98  --inst_prop_sim_new                     false
% 1.22/0.98  --inst_subs_new                         false
% 1.22/0.98  --inst_eq_res_simp                      false
% 1.22/0.98  --inst_subs_given                       false
% 1.22/0.98  --inst_orphan_elimination               true
% 1.22/0.98  --inst_learning_loop_flag               true
% 1.22/0.98  --inst_learning_start                   3000
% 1.22/0.98  --inst_learning_factor                  2
% 1.22/0.98  --inst_start_prop_sim_after_learn       3
% 1.22/0.98  --inst_sel_renew                        solver
% 1.22/0.98  --inst_lit_activity_flag                true
% 1.22/0.98  --inst_restr_to_given                   false
% 1.22/0.98  --inst_activity_threshold               500
% 1.22/0.98  --inst_out_proof                        true
% 1.22/0.98  
% 1.22/0.98  ------ Resolution Options
% 1.22/0.98  
% 1.22/0.98  --resolution_flag                       false
% 1.22/0.98  --res_lit_sel                           adaptive
% 1.22/0.98  --res_lit_sel_side                      none
% 1.22/0.98  --res_ordering                          kbo
% 1.22/0.98  --res_to_prop_solver                    active
% 1.22/0.98  --res_prop_simpl_new                    false
% 1.22/0.98  --res_prop_simpl_given                  true
% 1.22/0.98  --res_passive_queue_type                priority_queues
% 1.22/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.22/0.98  --res_passive_queues_freq               [15;5]
% 1.22/0.98  --res_forward_subs                      full
% 1.22/0.98  --res_backward_subs                     full
% 1.22/0.98  --res_forward_subs_resolution           true
% 1.22/0.98  --res_backward_subs_resolution          true
% 1.22/0.98  --res_orphan_elimination                true
% 1.22/0.98  --res_time_limit                        2.
% 1.22/0.98  --res_out_proof                         true
% 1.22/0.98  
% 1.22/0.98  ------ Superposition Options
% 1.22/0.98  
% 1.22/0.98  --superposition_flag                    true
% 1.22/0.98  --sup_passive_queue_type                priority_queues
% 1.22/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.22/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.22/0.98  --demod_completeness_check              fast
% 1.22/0.98  --demod_use_ground                      true
% 1.22/0.98  --sup_to_prop_solver                    passive
% 1.22/0.98  --sup_prop_simpl_new                    true
% 1.22/0.98  --sup_prop_simpl_given                  true
% 1.22/0.98  --sup_fun_splitting                     false
% 1.22/0.98  --sup_smt_interval                      50000
% 1.22/0.98  
% 1.22/0.98  ------ Superposition Simplification Setup
% 1.22/0.98  
% 1.22/0.98  --sup_indices_passive                   []
% 1.22/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.22/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.22/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.22/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.22/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.22/0.98  --sup_full_bw                           [BwDemod]
% 1.22/0.98  --sup_immed_triv                        [TrivRules]
% 1.22/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.22/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.22/0.98  --sup_immed_bw_main                     []
% 1.22/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.22/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.22/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.22/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.22/0.98  
% 1.22/0.98  ------ Combination Options
% 1.22/0.98  
% 1.22/0.98  --comb_res_mult                         3
% 1.22/0.98  --comb_sup_mult                         2
% 1.22/0.98  --comb_inst_mult                        10
% 1.22/0.98  
% 1.22/0.98  ------ Debug Options
% 1.22/0.98  
% 1.22/0.98  --dbg_backtrace                         false
% 1.22/0.98  --dbg_dump_prop_clauses                 false
% 1.22/0.98  --dbg_dump_prop_clauses_file            -
% 1.22/0.98  --dbg_out_stat                          false
% 1.22/0.98  
% 1.22/0.98  
% 1.22/0.98  
% 1.22/0.98  
% 1.22/0.98  ------ Proving...
% 1.22/0.98  
% 1.22/0.98  
% 1.22/0.98  % SZS status Theorem for theBenchmark.p
% 1.22/0.98  
% 1.22/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 1.22/0.98  
% 1.22/0.98  fof(f8,conjecture,(
% 1.22/0.98    ! [X0,X1] : ((v5_ordinal1(X1) & v1_funct_1(X1) & v5_relat_1(X1,X0) & v1_relat_1(X1)) => ! [X2] : (v3_ordinal1(X2) => (v5_ordinal1(k7_relat_1(X1,X2)) & v1_funct_1(k7_relat_1(X1,X2)) & v5_relat_1(k7_relat_1(X1,X2),X0) & v1_relat_1(k7_relat_1(X1,X2)))))),
% 1.22/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.22/0.98  
% 1.22/0.98  fof(f9,negated_conjecture,(
% 1.22/0.98    ~! [X0,X1] : ((v5_ordinal1(X1) & v1_funct_1(X1) & v5_relat_1(X1,X0) & v1_relat_1(X1)) => ! [X2] : (v3_ordinal1(X2) => (v5_ordinal1(k7_relat_1(X1,X2)) & v1_funct_1(k7_relat_1(X1,X2)) & v5_relat_1(k7_relat_1(X1,X2),X0) & v1_relat_1(k7_relat_1(X1,X2)))))),
% 1.22/0.98    inference(negated_conjecture,[],[f8])).
% 1.22/0.98  
% 1.22/0.98  fof(f20,plain,(
% 1.22/0.98    ? [X0,X1] : (? [X2] : ((~v5_ordinal1(k7_relat_1(X1,X2)) | ~v1_funct_1(k7_relat_1(X1,X2)) | ~v5_relat_1(k7_relat_1(X1,X2),X0) | ~v1_relat_1(k7_relat_1(X1,X2))) & v3_ordinal1(X2)) & (v5_ordinal1(X1) & v1_funct_1(X1) & v5_relat_1(X1,X0) & v1_relat_1(X1)))),
% 1.22/0.98    inference(ennf_transformation,[],[f9])).
% 1.22/0.98  
% 1.22/0.98  fof(f21,plain,(
% 1.22/0.98    ? [X0,X1] : (? [X2] : ((~v5_ordinal1(k7_relat_1(X1,X2)) | ~v1_funct_1(k7_relat_1(X1,X2)) | ~v5_relat_1(k7_relat_1(X1,X2),X0) | ~v1_relat_1(k7_relat_1(X1,X2))) & v3_ordinal1(X2)) & v5_ordinal1(X1) & v1_funct_1(X1) & v5_relat_1(X1,X0) & v1_relat_1(X1))),
% 1.22/0.98    inference(flattening,[],[f20])).
% 1.22/0.98  
% 1.22/0.98  fof(f23,plain,(
% 1.22/0.98    ( ! [X0,X1] : (? [X2] : ((~v5_ordinal1(k7_relat_1(X1,X2)) | ~v1_funct_1(k7_relat_1(X1,X2)) | ~v5_relat_1(k7_relat_1(X1,X2),X0) | ~v1_relat_1(k7_relat_1(X1,X2))) & v3_ordinal1(X2)) => ((~v5_ordinal1(k7_relat_1(X1,sK2)) | ~v1_funct_1(k7_relat_1(X1,sK2)) | ~v5_relat_1(k7_relat_1(X1,sK2),X0) | ~v1_relat_1(k7_relat_1(X1,sK2))) & v3_ordinal1(sK2))) )),
% 1.22/0.98    introduced(choice_axiom,[])).
% 1.22/0.98  
% 1.22/0.98  fof(f22,plain,(
% 1.22/0.98    ? [X0,X1] : (? [X2] : ((~v5_ordinal1(k7_relat_1(X1,X2)) | ~v1_funct_1(k7_relat_1(X1,X2)) | ~v5_relat_1(k7_relat_1(X1,X2),X0) | ~v1_relat_1(k7_relat_1(X1,X2))) & v3_ordinal1(X2)) & v5_ordinal1(X1) & v1_funct_1(X1) & v5_relat_1(X1,X0) & v1_relat_1(X1)) => (? [X2] : ((~v5_ordinal1(k7_relat_1(sK1,X2)) | ~v1_funct_1(k7_relat_1(sK1,X2)) | ~v5_relat_1(k7_relat_1(sK1,X2),sK0) | ~v1_relat_1(k7_relat_1(sK1,X2))) & v3_ordinal1(X2)) & v5_ordinal1(sK1) & v1_funct_1(sK1) & v5_relat_1(sK1,sK0) & v1_relat_1(sK1))),
% 1.22/0.98    introduced(choice_axiom,[])).
% 1.22/0.98  
% 1.22/0.98  fof(f24,plain,(
% 1.22/0.98    ((~v5_ordinal1(k7_relat_1(sK1,sK2)) | ~v1_funct_1(k7_relat_1(sK1,sK2)) | ~v5_relat_1(k7_relat_1(sK1,sK2),sK0) | ~v1_relat_1(k7_relat_1(sK1,sK2))) & v3_ordinal1(sK2)) & v5_ordinal1(sK1) & v1_funct_1(sK1) & v5_relat_1(sK1,sK0) & v1_relat_1(sK1)),
% 1.22/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f21,f23,f22])).
% 1.22/0.98  
% 1.22/0.98  fof(f39,plain,(
% 1.22/0.98    v1_relat_1(sK1)),
% 1.22/0.98    inference(cnf_transformation,[],[f24])).
% 1.22/0.98  
% 1.22/0.98  fof(f1,axiom,(
% 1.22/0.98    ! [X0,X1] : (v1_relat_1(X1) => k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1))),
% 1.22/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.22/0.98  
% 1.22/0.98  fof(f11,plain,(
% 1.22/0.98    ! [X0,X1] : (k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) | ~v1_relat_1(X1))),
% 1.22/0.98    inference(ennf_transformation,[],[f1])).
% 1.22/0.98  
% 1.22/0.98  fof(f25,plain,(
% 1.22/0.98    ( ! [X0,X1] : (k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) | ~v1_relat_1(X1)) )),
% 1.22/0.98    inference(cnf_transformation,[],[f11])).
% 1.22/0.98  
% 1.22/0.98  fof(f3,axiom,(
% 1.22/0.98    ! [X0,X1,X2] : ((v1_relat_1(X2) & v5_relat_1(X1,X0) & v1_relat_1(X1)) => (v5_relat_1(k5_relat_1(X2,X1),X0) & v1_relat_1(k5_relat_1(X2,X1))))),
% 1.22/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.22/0.98  
% 1.22/0.98  fof(f12,plain,(
% 1.22/0.98    ! [X0,X1,X2] : ((v5_relat_1(k5_relat_1(X2,X1),X0) & v1_relat_1(k5_relat_1(X2,X1))) | (~v1_relat_1(X2) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.22/0.98    inference(ennf_transformation,[],[f3])).
% 1.22/0.98  
% 1.22/0.98  fof(f13,plain,(
% 1.22/0.98    ! [X0,X1,X2] : ((v5_relat_1(k5_relat_1(X2,X1),X0) & v1_relat_1(k5_relat_1(X2,X1))) | ~v1_relat_1(X2) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.22/0.98    inference(flattening,[],[f12])).
% 1.22/0.98  
% 1.22/0.98  fof(f29,plain,(
% 1.22/0.98    ( ! [X2,X0,X1] : (v5_relat_1(k5_relat_1(X2,X1),X0) | ~v1_relat_1(X2) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.22/0.98    inference(cnf_transformation,[],[f13])).
% 1.22/0.98  
% 1.22/0.98  fof(f5,axiom,(
% 1.22/0.98    ! [X0] : (v1_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 1.22/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.22/0.98  
% 1.22/0.98  fof(f32,plain,(
% 1.22/0.98    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 1.22/0.98    inference(cnf_transformation,[],[f5])).
% 1.22/0.98  
% 1.22/0.98  fof(f44,plain,(
% 1.22/0.98    ~v5_ordinal1(k7_relat_1(sK1,sK2)) | ~v1_funct_1(k7_relat_1(sK1,sK2)) | ~v5_relat_1(k7_relat_1(sK1,sK2),sK0) | ~v1_relat_1(k7_relat_1(sK1,sK2))),
% 1.22/0.98    inference(cnf_transformation,[],[f24])).
% 1.22/0.98  
% 1.22/0.98  fof(f41,plain,(
% 1.22/0.98    v1_funct_1(sK1)),
% 1.22/0.98    inference(cnf_transformation,[],[f24])).
% 1.22/0.98  
% 1.22/0.98  fof(f42,plain,(
% 1.22/0.98    v5_ordinal1(sK1)),
% 1.22/0.98    inference(cnf_transformation,[],[f24])).
% 1.22/0.98  
% 1.22/0.98  fof(f7,axiom,(
% 1.22/0.98    ! [X0,X1] : ((v3_ordinal1(X1) & v5_ordinal1(X0) & v1_funct_1(X0) & v1_relat_1(X0)) => (v5_ordinal1(k7_relat_1(X0,X1)) & v5_relat_1(k7_relat_1(X0,X1),k2_relat_1(X0)) & v1_relat_1(k7_relat_1(X0,X1))))),
% 1.22/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.22/0.98  
% 1.22/0.98  fof(f18,plain,(
% 1.22/0.98    ! [X0,X1] : ((v5_ordinal1(k7_relat_1(X0,X1)) & v5_relat_1(k7_relat_1(X0,X1),k2_relat_1(X0)) & v1_relat_1(k7_relat_1(X0,X1))) | (~v3_ordinal1(X1) | ~v5_ordinal1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.22/0.98    inference(ennf_transformation,[],[f7])).
% 1.22/0.98  
% 1.22/0.98  fof(f19,plain,(
% 1.22/0.98    ! [X0,X1] : ((v5_ordinal1(k7_relat_1(X0,X1)) & v5_relat_1(k7_relat_1(X0,X1),k2_relat_1(X0)) & v1_relat_1(k7_relat_1(X0,X1))) | ~v3_ordinal1(X1) | ~v5_ordinal1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.22/0.98    inference(flattening,[],[f18])).
% 1.22/0.98  
% 1.22/0.98  fof(f36,plain,(
% 1.22/0.98    ( ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v3_ordinal1(X1) | ~v5_ordinal1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.22/0.98    inference(cnf_transformation,[],[f19])).
% 1.22/0.98  
% 1.22/0.98  fof(f43,plain,(
% 1.22/0.98    v3_ordinal1(sK2)),
% 1.22/0.98    inference(cnf_transformation,[],[f24])).
% 1.22/0.98  
% 1.22/0.98  fof(f38,plain,(
% 1.22/0.98    ( ! [X0,X1] : (v5_ordinal1(k7_relat_1(X0,X1)) | ~v3_ordinal1(X1) | ~v5_ordinal1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.22/0.98    inference(cnf_transformation,[],[f19])).
% 1.22/0.98  
% 1.22/0.98  fof(f6,axiom,(
% 1.22/0.98    ! [X0,X1] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k7_relat_1(X0,X1)) & v1_relat_1(k7_relat_1(X0,X1))))),
% 1.22/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.22/0.98  
% 1.22/0.98  fof(f16,plain,(
% 1.22/0.98    ! [X0,X1] : ((v1_funct_1(k7_relat_1(X0,X1)) & v1_relat_1(k7_relat_1(X0,X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.22/0.98    inference(ennf_transformation,[],[f6])).
% 1.22/0.98  
% 1.22/0.98  fof(f17,plain,(
% 1.22/0.98    ! [X0,X1] : ((v1_funct_1(k7_relat_1(X0,X1)) & v1_relat_1(k7_relat_1(X0,X1))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.22/0.98    inference(flattening,[],[f16])).
% 1.22/0.98  
% 1.22/0.98  fof(f35,plain,(
% 1.22/0.98    ( ! [X0,X1] : (v1_funct_1(k7_relat_1(X0,X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.22/0.98    inference(cnf_transformation,[],[f17])).
% 1.22/0.98  
% 1.22/0.98  fof(f40,plain,(
% 1.22/0.98    v5_relat_1(sK1,sK0)),
% 1.22/0.98    inference(cnf_transformation,[],[f24])).
% 1.22/0.98  
% 1.22/0.98  cnf(c_19,negated_conjecture,
% 1.22/0.98      ( v1_relat_1(sK1) ),
% 1.22/0.98      inference(cnf_transformation,[],[f39]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_384,negated_conjecture,
% 1.22/0.98      ( v1_relat_1(sK1) ),
% 1.22/0.98      inference(subtyping,[status(esa)],[c_19]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_742,plain,
% 1.22/0.98      ( v1_relat_1(sK1) = iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_384]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_0,plain,
% 1.22/0.98      ( ~ v1_relat_1(X0)
% 1.22/0.98      | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
% 1.22/0.98      inference(cnf_transformation,[],[f25]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_397,plain,
% 1.22/0.98      ( ~ v1_relat_1(X0_40)
% 1.22/0.98      | k5_relat_1(k6_relat_1(X0_41),X0_40) = k7_relat_1(X0_40,X0_41) ),
% 1.22/0.98      inference(subtyping,[status(esa)],[c_0]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_729,plain,
% 1.22/0.98      ( k5_relat_1(k6_relat_1(X0_41),X0_40) = k7_relat_1(X0_40,X0_41)
% 1.22/0.98      | v1_relat_1(X0_40) != iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_397]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_1098,plain,
% 1.22/0.98      ( k5_relat_1(k6_relat_1(X0_41),sK1) = k7_relat_1(sK1,X0_41) ),
% 1.22/0.98      inference(superposition,[status(thm)],[c_742,c_729]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_3,plain,
% 1.22/0.98      ( ~ v5_relat_1(X0,X1)
% 1.22/0.98      | v5_relat_1(k5_relat_1(X2,X0),X1)
% 1.22/0.98      | ~ v1_relat_1(X0)
% 1.22/0.98      | ~ v1_relat_1(X2) ),
% 1.22/0.98      inference(cnf_transformation,[],[f29]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_394,plain,
% 1.22/0.98      ( ~ v5_relat_1(X0_40,X0_41)
% 1.22/0.98      | v5_relat_1(k5_relat_1(X1_40,X0_40),X0_41)
% 1.22/0.98      | ~ v1_relat_1(X0_40)
% 1.22/0.98      | ~ v1_relat_1(X1_40) ),
% 1.22/0.98      inference(subtyping,[status(esa)],[c_3]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_732,plain,
% 1.22/0.98      ( v5_relat_1(X0_40,X0_41) != iProver_top
% 1.22/0.98      | v5_relat_1(k5_relat_1(X1_40,X0_40),X0_41) = iProver_top
% 1.22/0.98      | v1_relat_1(X1_40) != iProver_top
% 1.22/0.98      | v1_relat_1(X0_40) != iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_394]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_1658,plain,
% 1.22/0.98      ( v5_relat_1(k7_relat_1(sK1,X0_41),X1_41) = iProver_top
% 1.22/0.98      | v5_relat_1(sK1,X1_41) != iProver_top
% 1.22/0.98      | v1_relat_1(k6_relat_1(X0_41)) != iProver_top
% 1.22/0.98      | v1_relat_1(sK1) != iProver_top ),
% 1.22/0.98      inference(superposition,[status(thm)],[c_1098,c_732]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_20,plain,
% 1.22/0.98      ( v1_relat_1(sK1) = iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_8,plain,
% 1.22/0.98      ( v1_relat_1(k6_relat_1(X0)) ),
% 1.22/0.98      inference(cnf_transformation,[],[f32]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_395,plain,
% 1.22/0.98      ( v1_relat_1(k6_relat_1(X0_41)) ),
% 1.22/0.98      inference(subtyping,[status(esa)],[c_8]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_423,plain,
% 1.22/0.98      ( v1_relat_1(k6_relat_1(X0_41)) = iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_395]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_2506,plain,
% 1.22/0.98      ( v5_relat_1(k7_relat_1(sK1,X0_41),X1_41) = iProver_top
% 1.22/0.98      | v5_relat_1(sK1,X1_41) != iProver_top ),
% 1.22/0.98      inference(global_propositional_subsumption,
% 1.22/0.98                [status(thm)],
% 1.22/0.98                [c_1658,c_20,c_423]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_14,negated_conjecture,
% 1.22/0.98      ( ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0)
% 1.22/0.98      | ~ v5_ordinal1(k7_relat_1(sK1,sK2))
% 1.22/0.98      | ~ v1_funct_1(k7_relat_1(sK1,sK2))
% 1.22/0.98      | ~ v1_relat_1(k7_relat_1(sK1,sK2)) ),
% 1.22/0.98      inference(cnf_transformation,[],[f44]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_17,negated_conjecture,
% 1.22/0.98      ( v1_funct_1(sK1) ),
% 1.22/0.98      inference(cnf_transformation,[],[f41]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_16,negated_conjecture,
% 1.22/0.98      ( v5_ordinal1(sK1) ),
% 1.22/0.98      inference(cnf_transformation,[],[f42]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_13,plain,
% 1.22/0.98      ( ~ v3_ordinal1(X0)
% 1.22/0.98      | ~ v5_ordinal1(X1)
% 1.22/0.98      | ~ v1_funct_1(X1)
% 1.22/0.98      | ~ v1_relat_1(X1)
% 1.22/0.98      | v1_relat_1(k7_relat_1(X1,X0)) ),
% 1.22/0.98      inference(cnf_transformation,[],[f36]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_15,negated_conjecture,
% 1.22/0.98      ( v3_ordinal1(sK2) ),
% 1.22/0.98      inference(cnf_transformation,[],[f43]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_213,plain,
% 1.22/0.98      ( ~ v5_ordinal1(X0)
% 1.22/0.98      | ~ v1_funct_1(X0)
% 1.22/0.98      | ~ v1_relat_1(X0)
% 1.22/0.98      | v1_relat_1(k7_relat_1(X0,X1))
% 1.22/0.98      | sK2 != X1 ),
% 1.22/0.98      inference(resolution_lifted,[status(thm)],[c_13,c_15]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_214,plain,
% 1.22/0.98      ( ~ v5_ordinal1(X0)
% 1.22/0.98      | ~ v1_funct_1(X0)
% 1.22/0.98      | ~ v1_relat_1(X0)
% 1.22/0.98      | v1_relat_1(k7_relat_1(X0,sK2)) ),
% 1.22/0.98      inference(unflattening,[status(thm)],[c_213]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_216,plain,
% 1.22/0.98      ( ~ v5_ordinal1(sK1)
% 1.22/0.98      | ~ v1_funct_1(sK1)
% 1.22/0.98      | v1_relat_1(k7_relat_1(sK1,sK2))
% 1.22/0.98      | ~ v1_relat_1(sK1) ),
% 1.22/0.98      inference(instantiation,[status(thm)],[c_214]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_11,plain,
% 1.22/0.98      ( ~ v3_ordinal1(X0)
% 1.22/0.98      | ~ v5_ordinal1(X1)
% 1.22/0.98      | v5_ordinal1(k7_relat_1(X1,X0))
% 1.22/0.98      | ~ v1_funct_1(X1)
% 1.22/0.98      | ~ v1_relat_1(X1) ),
% 1.22/0.98      inference(cnf_transformation,[],[f38]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_218,plain,
% 1.22/0.98      ( ~ v5_ordinal1(X0)
% 1.22/0.98      | v5_ordinal1(k7_relat_1(X0,X1))
% 1.22/0.98      | ~ v1_funct_1(X0)
% 1.22/0.98      | ~ v1_relat_1(X0)
% 1.22/0.98      | sK2 != X1 ),
% 1.22/0.98      inference(resolution_lifted,[status(thm)],[c_11,c_15]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_219,plain,
% 1.22/0.98      ( ~ v5_ordinal1(X0)
% 1.22/0.98      | v5_ordinal1(k7_relat_1(X0,sK2))
% 1.22/0.98      | ~ v1_funct_1(X0)
% 1.22/0.98      | ~ v1_relat_1(X0) ),
% 1.22/0.98      inference(unflattening,[status(thm)],[c_218]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_221,plain,
% 1.22/0.98      ( v5_ordinal1(k7_relat_1(sK1,sK2))
% 1.22/0.98      | ~ v5_ordinal1(sK1)
% 1.22/0.98      | ~ v1_funct_1(sK1)
% 1.22/0.98      | ~ v1_relat_1(sK1) ),
% 1.22/0.98      inference(instantiation,[status(thm)],[c_219]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_288,plain,
% 1.22/0.98      ( ~ v1_funct_1(k7_relat_1(sK1,sK2))
% 1.22/0.98      | ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0) ),
% 1.22/0.98      inference(global_propositional_subsumption,
% 1.22/0.98                [status(thm)],
% 1.22/0.98                [c_14,c_19,c_17,c_16,c_216,c_221]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_289,negated_conjecture,
% 1.22/0.98      ( ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0)
% 1.22/0.98      | ~ v1_funct_1(k7_relat_1(sK1,sK2)) ),
% 1.22/0.98      inference(renaming,[status(thm)],[c_288]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_381,negated_conjecture,
% 1.22/0.98      ( ~ v5_relat_1(k7_relat_1(sK1,sK2),sK0)
% 1.22/0.98      | ~ v1_funct_1(k7_relat_1(sK1,sK2)) ),
% 1.22/0.98      inference(subtyping,[status(esa)],[c_289]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_745,plain,
% 1.22/0.98      ( v5_relat_1(k7_relat_1(sK1,sK2),sK0) != iProver_top
% 1.22/0.98      | v1_funct_1(k7_relat_1(sK1,sK2)) != iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_381]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_22,plain,
% 1.22/0.98      ( v1_funct_1(sK1) = iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_290,plain,
% 1.22/0.98      ( v5_relat_1(k7_relat_1(sK1,sK2),sK0) != iProver_top
% 1.22/0.98      | v1_funct_1(k7_relat_1(sK1,sK2)) != iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_289]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_9,plain,
% 1.22/0.98      ( ~ v1_funct_1(X0)
% 1.22/0.98      | v1_funct_1(k7_relat_1(X0,X1))
% 1.22/0.98      | ~ v1_relat_1(X0) ),
% 1.22/0.98      inference(cnf_transformation,[],[f35]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_389,plain,
% 1.22/0.98      ( ~ v1_funct_1(X0_40)
% 1.22/0.98      | v1_funct_1(k7_relat_1(X0_40,X0_41))
% 1.22/0.98      | ~ v1_relat_1(X0_40) ),
% 1.22/0.98      inference(subtyping,[status(esa)],[c_9]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_437,plain,
% 1.22/0.98      ( v1_funct_1(X0_40) != iProver_top
% 1.22/0.98      | v1_funct_1(k7_relat_1(X0_40,X0_41)) = iProver_top
% 1.22/0.98      | v1_relat_1(X0_40) != iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_389]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_439,plain,
% 1.22/0.98      ( v1_funct_1(k7_relat_1(sK1,sK2)) = iProver_top
% 1.22/0.98      | v1_funct_1(sK1) != iProver_top
% 1.22/0.98      | v1_relat_1(sK1) != iProver_top ),
% 1.22/0.98      inference(instantiation,[status(thm)],[c_437]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_933,plain,
% 1.22/0.98      ( v5_relat_1(k7_relat_1(sK1,sK2),sK0) != iProver_top ),
% 1.22/0.98      inference(global_propositional_subsumption,
% 1.22/0.98                [status(thm)],
% 1.22/0.98                [c_745,c_20,c_22,c_290,c_439]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_2514,plain,
% 1.22/0.98      ( v5_relat_1(sK1,sK0) != iProver_top ),
% 1.22/0.98      inference(superposition,[status(thm)],[c_2506,c_933]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_18,negated_conjecture,
% 1.22/0.98      ( v5_relat_1(sK1,sK0) ),
% 1.22/0.98      inference(cnf_transformation,[],[f40]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(c_21,plain,
% 1.22/0.98      ( v5_relat_1(sK1,sK0) = iProver_top ),
% 1.22/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.22/0.98  
% 1.22/0.98  cnf(contradiction,plain,
% 1.22/0.98      ( $false ),
% 1.22/0.98      inference(minisat,[status(thm)],[c_2514,c_21]) ).
% 1.22/0.98  
% 1.22/0.98  
% 1.22/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 1.22/0.98  
% 1.22/0.98  ------                               Statistics
% 1.22/0.98  
% 1.22/0.98  ------ General
% 1.22/0.98  
% 1.22/0.98  abstr_ref_over_cycles:                  0
% 1.22/0.98  abstr_ref_under_cycles:                 0
% 1.22/0.98  gc_basic_clause_elim:                   0
% 1.22/0.98  forced_gc_time:                         0
% 1.22/0.98  parsing_time:                           0.008
% 1.22/0.98  unif_index_cands_time:                  0.
% 1.22/0.98  unif_index_add_time:                    0.
% 1.22/0.98  orderings_time:                         0.
% 1.22/0.98  out_proof_time:                         0.008
% 1.22/0.98  total_time:                             0.121
% 1.22/0.98  num_of_symbols:                         45
% 1.22/0.98  num_of_terms:                           2664
% 1.22/0.98  
% 1.22/0.98  ------ Preprocessing
% 1.22/0.98  
% 1.22/0.98  num_of_splits:                          0
% 1.22/0.98  num_of_split_atoms:                     0
% 1.22/0.98  num_of_reused_defs:                     0
% 1.22/0.98  num_eq_ax_congr_red:                    9
% 1.22/0.98  num_of_sem_filtered_clauses:            1
% 1.22/0.98  num_of_subtypes:                        2
% 1.22/0.98  monotx_restored_types:                  0
% 1.22/0.98  sat_num_of_epr_types:                   0
% 1.22/0.98  sat_num_of_non_cyclic_types:            0
% 1.22/0.98  sat_guarded_non_collapsed_types:        0
% 1.22/0.98  num_pure_diseq_elim:                    0
% 1.22/0.98  simp_replaced_by:                       0
% 1.22/0.98  res_preprocessed:                       89
% 1.22/0.98  prep_upred:                             0
% 1.22/0.98  prep_unflattend:                        3
% 1.22/0.98  smt_new_axioms:                         0
% 1.22/0.98  pred_elim_cands:                        4
% 1.22/0.98  pred_elim:                              1
% 1.22/0.98  pred_elim_cl:                           2
% 1.22/0.98  pred_elim_cycles:                       3
% 1.22/0.98  merged_defs:                            0
% 1.22/0.98  merged_defs_ncl:                        0
% 1.22/0.98  bin_hyper_res:                          0
% 1.22/0.98  prep_cycles:                            4
% 1.22/0.98  pred_elim_time:                         0.002
% 1.22/0.98  splitting_time:                         0.
% 1.22/0.98  sem_filter_time:                        0.
% 1.22/0.98  monotx_time:                            0.
% 1.22/0.98  subtype_inf_time:                       0.
% 1.22/0.98  
% 1.22/0.98  ------ Problem properties
% 1.22/0.98  
% 1.22/0.98  clauses:                                17
% 1.22/0.98  conjectures:                            5
% 1.22/0.98  epr:                                    4
% 1.22/0.98  horn:                                   17
% 1.22/0.98  ground:                                 5
% 1.22/0.98  unary:                                  7
% 1.22/0.98  binary:                                 2
% 1.22/0.98  lits:                                   43
% 1.22/0.98  lits_eq:                                1
% 1.22/0.98  fd_pure:                                0
% 1.22/0.98  fd_pseudo:                              0
% 1.22/0.98  fd_cond:                                0
% 1.22/0.98  fd_pseudo_cond:                         0
% 1.22/0.98  ac_symbols:                             0
% 1.22/0.98  
% 1.22/0.98  ------ Propositional Solver
% 1.22/0.98  
% 1.22/0.98  prop_solver_calls:                      28
% 1.22/0.98  prop_fast_solver_calls:                 551
% 1.22/0.98  smt_solver_calls:                       0
% 1.22/0.98  smt_fast_solver_calls:                  0
% 1.22/0.98  prop_num_of_clauses:                    821
% 1.22/0.98  prop_preprocess_simplified:             3346
% 1.22/0.98  prop_fo_subsumed:                       9
% 1.22/0.98  prop_solver_time:                       0.
% 1.22/0.98  smt_solver_time:                        0.
% 1.22/0.98  smt_fast_solver_time:                   0.
% 1.22/0.98  prop_fast_solver_time:                  0.
% 1.22/0.98  prop_unsat_core_time:                   0.
% 1.22/0.98  
% 1.22/0.98  ------ QBF
% 1.22/0.98  
% 1.22/0.98  qbf_q_res:                              0
% 1.22/0.98  qbf_num_tautologies:                    0
% 1.22/0.98  qbf_prep_cycles:                        0
% 1.22/0.98  
% 1.22/0.98  ------ BMC1
% 1.22/0.98  
% 1.22/0.98  bmc1_current_bound:                     -1
% 1.22/0.98  bmc1_last_solved_bound:                 -1
% 1.22/0.98  bmc1_unsat_core_size:                   -1
% 1.22/0.98  bmc1_unsat_core_parents_size:           -1
% 1.22/0.98  bmc1_merge_next_fun:                    0
% 1.22/0.98  bmc1_unsat_core_clauses_time:           0.
% 1.22/0.98  
% 1.22/0.98  ------ Instantiation
% 1.22/0.98  
% 1.22/0.98  inst_num_of_clauses:                    245
% 1.22/0.98  inst_num_in_passive:                    79
% 1.22/0.98  inst_num_in_active:                     149
% 1.22/0.98  inst_num_in_unprocessed:                17
% 1.22/0.98  inst_num_of_loops:                      160
% 1.22/0.98  inst_num_of_learning_restarts:          0
% 1.22/0.98  inst_num_moves_active_passive:          7
% 1.22/0.98  inst_lit_activity:                      0
% 1.22/0.98  inst_lit_activity_moves:                0
% 1.22/0.98  inst_num_tautologies:                   0
% 1.22/0.98  inst_num_prop_implied:                  0
% 1.22/0.98  inst_num_existing_simplified:           0
% 1.22/0.98  inst_num_eq_res_simplified:             0
% 1.22/0.98  inst_num_child_elim:                    0
% 1.22/0.98  inst_num_of_dismatching_blockings:      119
% 1.22/0.98  inst_num_of_non_proper_insts:           220
% 1.22/0.98  inst_num_of_duplicates:                 0
% 1.22/0.98  inst_inst_num_from_inst_to_res:         0
% 1.22/0.98  inst_dismatching_checking_time:         0.
% 1.22/0.98  
% 1.22/0.98  ------ Resolution
% 1.22/0.98  
% 1.22/0.98  res_num_of_clauses:                     0
% 1.22/0.98  res_num_in_passive:                     0
% 1.22/0.98  res_num_in_active:                      0
% 1.22/0.98  res_num_of_loops:                       93
% 1.22/0.98  res_forward_subset_subsumed:            15
% 1.22/0.98  res_backward_subset_subsumed:           0
% 1.22/0.98  res_forward_subsumed:                   1
% 1.22/0.98  res_backward_subsumed:                  0
% 1.22/0.98  res_forward_subsumption_resolution:     0
% 1.22/0.98  res_backward_subsumption_resolution:    0
% 1.22/0.98  res_clause_to_clause_subsumption:       150
% 1.22/0.98  res_orphan_elimination:                 0
% 1.22/0.98  res_tautology_del:                      27
% 1.22/0.98  res_num_eq_res_simplified:              0
% 1.22/0.98  res_num_sel_changes:                    0
% 1.22/0.98  res_moves_from_active_to_pass:          0
% 1.22/0.98  
% 1.22/0.98  ------ Superposition
% 1.22/0.98  
% 1.22/0.98  sup_time_total:                         0.
% 1.22/0.98  sup_time_generating:                    0.
% 1.22/0.98  sup_time_sim_full:                      0.
% 1.22/0.98  sup_time_sim_immed:                     0.
% 1.22/0.98  
% 1.22/0.98  sup_num_of_clauses:                     54
% 1.22/0.98  sup_num_in_active:                      31
% 1.22/0.98  sup_num_in_passive:                     23
% 1.22/0.98  sup_num_of_loops:                       30
% 1.22/0.98  sup_fw_superposition:                   39
% 1.22/0.98  sup_bw_superposition:                   17
% 1.22/0.98  sup_immediate_simplified:               17
% 1.22/0.98  sup_given_eliminated:                   0
% 1.22/0.98  comparisons_done:                       0
% 1.22/0.98  comparisons_avoided:                    0
% 1.22/0.98  
% 1.22/0.98  ------ Simplifications
% 1.22/0.98  
% 1.22/0.98  
% 1.22/0.98  sim_fw_subset_subsumed:                 1
% 1.22/0.98  sim_bw_subset_subsumed:                 0
% 1.22/0.98  sim_fw_subsumed:                        13
% 1.22/0.98  sim_bw_subsumed:                        0
% 1.22/0.98  sim_fw_subsumption_res:                 1
% 1.22/0.98  sim_bw_subsumption_res:                 0
% 1.22/0.98  sim_tautology_del:                      0
% 1.22/0.98  sim_eq_tautology_del:                   1
% 1.22/0.98  sim_eq_res_simp:                        0
% 1.22/0.98  sim_fw_demodulated:                     3
% 1.22/0.98  sim_bw_demodulated:                     0
% 1.22/0.98  sim_light_normalised:                   0
% 1.22/0.98  sim_joinable_taut:                      0
% 1.22/0.98  sim_joinable_simp:                      0
% 1.22/0.98  sim_ac_normalised:                      0
% 1.22/0.98  sim_smt_subsumption:                    0
% 1.22/0.98  
%------------------------------------------------------------------------------
