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
% DateTime   : Thu Dec  3 12:10:29 EST 2020

% Result     : Theorem 1.30s
% Output     : CNFRefutation 1.30s
% Verified   : 
% Statistics : Number of formulae       :  114 ( 348 expanded)
%              Number of clauses        :   62 ( 104 expanded)
%              Number of leaves         :   17 ( 100 expanded)
%              Depth                    :   27
%              Number of atoms          :  359 (2017 expanded)
%              Number of equality atoms :  125 ( 364 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
            & v1_funct_2(X1,X0,X0)
            & v1_funct_1(X1) )
         => ! [X2] :
              ( ( v1_funct_1(X2)
                & v5_relat_1(X2,X0)
                & v1_relat_1(X2) )
             => k1_relat_1(X2) = k1_relat_1(k5_relat_1(X2,X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
              & v1_funct_2(X1,X0,X0)
              & v1_funct_1(X1) )
           => ! [X2] :
                ( ( v1_funct_1(X2)
                  & v5_relat_1(X2,X0)
                  & v1_relat_1(X2) )
               => k1_relat_1(X2) = k1_relat_1(k5_relat_1(X2,X1)) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f25,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1))
              & v1_funct_1(X2)
              & v5_relat_1(X2,X0)
              & v1_relat_1(X2) )
          & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v1_funct_2(X1,X0,X0)
          & v1_funct_1(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f26,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1))
              & v1_funct_1(X2)
              & v5_relat_1(X2,X0)
              & v1_relat_1(X2) )
          & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v1_funct_2(X1,X0,X0)
          & v1_funct_1(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1))
          & v1_funct_1(X2)
          & v5_relat_1(X2,X0)
          & v1_relat_1(X2) )
     => ( k1_relat_1(sK2) != k1_relat_1(k5_relat_1(sK2,X1))
        & v1_funct_1(sK2)
        & v5_relat_1(sK2,X0)
        & v1_relat_1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1))
              & v1_funct_1(X2)
              & v5_relat_1(X2,X0)
              & v1_relat_1(X2) )
          & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v1_funct_2(X1,X0,X0)
          & v1_funct_1(X1) )
     => ( ? [X2] :
            ( k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,sK1))
            & v1_funct_1(X2)
            & v5_relat_1(X2,X0)
            & v1_relat_1(X2) )
        & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v1_funct_2(sK1,X0,X0)
        & v1_funct_1(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1))
                & v1_funct_1(X2)
                & v5_relat_1(X2,X0)
                & v1_relat_1(X2) )
            & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
            & v1_funct_2(X1,X0,X0)
            & v1_funct_1(X1) )
        & ~ v1_xboole_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1))
              & v1_funct_1(X2)
              & v5_relat_1(X2,sK0)
              & v1_relat_1(X2) )
          & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
          & v1_funct_2(X1,sK0,sK0)
          & v1_funct_1(X1) )
      & ~ v1_xboole_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( k1_relat_1(sK2) != k1_relat_1(k5_relat_1(sK2,sK1))
    & v1_funct_1(sK2)
    & v5_relat_1(sK2,sK0)
    & v1_relat_1(sK2)
    & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    & v1_funct_2(sK1,sK0,sK0)
    & v1_funct_1(sK1)
    & ~ v1_xboole_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f31,f30,f29])).

fof(f54,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f32])).

fof(f5,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f11,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f11])).

fof(f59,plain,(
    ! [X0] : k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(definition_unfolding,[],[f38,f49])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f23])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( ( v1_partfun1(X1,X0)
          | k1_relat_1(X1) != X0 )
        & ( k1_relat_1(X1) = X0
          | ~ v1_partfun1(X1,X0) ) )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X1) = X0
      | ~ v1_partfun1(X1,X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f21])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f52,plain,(
    v1_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f32])).

fof(f50,plain,(
    ~ v1_xboole_0(sK0) ),
    inference(cnf_transformation,[],[f32])).

fof(f51,plain,(
    v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f32])).

fof(f53,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(cnf_transformation,[],[f32])).

fof(f3,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f33,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => ( k1_relat_1(X0) = k1_relat_1(X1)
               => k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1))
              | k1_relat_1(X0) != k1_relat_1(X1)
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1))
              | k1_relat_1(X0) != k1_relat_1(X1)
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1))
      | k1_relat_1(X0) != k1_relat_1(X1)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f10,axiom,(
    ! [X0] :
      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_partfun1(k6_partfun1(X0),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f10])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f34,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k2_relat_1(X1),X0)
       => k5_relat_1(X1,k6_relat_1(X0)) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f18])).

fof(f40,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f60,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_partfun1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f40,f49])).

fof(f55,plain,(
    v5_relat_1(sK2,sK0) ),
    inference(cnf_transformation,[],[f32])).

fof(f57,plain,(
    k1_relat_1(sK2) != k1_relat_1(k5_relat_1(sK2,sK1)) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_19,negated_conjecture,
    ( v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_906,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_6,plain,
    ( k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_9,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_13,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_10,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_21,negated_conjecture,
    ( v1_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_232,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0)
    | sK0 != X2
    | sK0 != X1
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_21])).

cnf(c_233,plain,
    ( v1_partfun1(sK1,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | v1_xboole_0(sK0)
    | ~ v1_funct_1(sK1) ),
    inference(unflattening,[status(thm)],[c_232])).

cnf(c_23,negated_conjecture,
    ( ~ v1_xboole_0(sK0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_22,negated_conjecture,
    ( v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_20,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_235,plain,
    ( v1_partfun1(sK1,sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_233,c_23,c_22,c_20])).

cnf(c_518,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1
    | sK0 != X1
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_235])).

cnf(c_519,plain,
    ( ~ v4_relat_1(sK1,sK0)
    | ~ v1_relat_1(sK1)
    | k1_relat_1(sK1) = sK0 ),
    inference(unflattening,[status(thm)],[c_518])).

cnf(c_535,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(sK1)
    | k1_relat_1(sK1) = sK0
    | sK0 != X1
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_519])).

cnf(c_536,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
    | ~ v1_relat_1(sK1)
    | k1_relat_1(sK1) = sK0 ),
    inference(unflattening,[status(thm)],[c_535])).

cnf(c_538,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_relat_1(sK1)
    | k1_relat_1(sK1) = sK0 ),
    inference(instantiation,[status(thm)],[c_536])).

cnf(c_540,plain,
    ( ~ v1_relat_1(sK1)
    | k1_relat_1(sK1) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_536,c_20,c_538])).

cnf(c_903,plain,
    ( k1_relat_1(sK1) = sK0
    | v1_relat_1(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_540])).

cnf(c_3,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_62,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK0)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_974,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0)
    | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_1049,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_relat_1(k2_zfmisc_1(sK0,sK0))
    | v1_relat_1(sK1) ),
    inference(instantiation,[status(thm)],[c_974])).

cnf(c_1107,plain,
    ( k1_relat_1(sK1) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_903,c_20,c_62,c_538,c_1049])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | k1_relat_1(X1) != k1_relat_1(X0)
    | k1_relat_1(k5_relat_1(X2,X1)) = k1_relat_1(k5_relat_1(X2,X0)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_908,plain,
    ( k1_relat_1(X0) != k1_relat_1(X1)
    | k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1))
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1578,plain,
    ( k1_relat_1(X0) != sK0
    | k1_relat_1(k5_relat_1(X1,X0)) = k1_relat_1(k5_relat_1(X1,sK1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1107,c_908])).

cnf(c_27,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_61,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_63,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_61])).

cnf(c_1050,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK0,sK0)) != iProver_top
    | v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1049])).

cnf(c_2121,plain,
    ( v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | k1_relat_1(k5_relat_1(X1,X0)) = k1_relat_1(k5_relat_1(X1,sK1))
    | k1_relat_1(X0) != sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1578,c_27,c_63,c_1050])).

cnf(c_2122,plain,
    ( k1_relat_1(X0) != sK0
    | k1_relat_1(k5_relat_1(X1,X0)) = k1_relat_1(k5_relat_1(X1,sK1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_2121])).

cnf(c_2131,plain,
    ( k1_relat_1(k5_relat_1(X0,k6_partfun1(X1))) = k1_relat_1(k5_relat_1(X0,sK1))
    | sK0 != X1
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k6_partfun1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6,c_2122])).

cnf(c_2210,plain,
    ( k1_relat_1(k5_relat_1(X0,k6_partfun1(sK0))) = k1_relat_1(k5_relat_1(X0,sK1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k6_partfun1(sK0)) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2131])).

cnf(c_14,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_34,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_36,plain,
    ( m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
    inference(instantiation,[status(thm)],[c_34])).

cnf(c_1044,plain,
    ( ~ m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
    | ~ v1_relat_1(k2_zfmisc_1(X0,X0))
    | v1_relat_1(k6_partfun1(X0)) ),
    inference(instantiation,[status(thm)],[c_974])).

cnf(c_1045,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(X0,X0)) != iProver_top
    | v1_relat_1(k6_partfun1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1044])).

cnf(c_1047,plain,
    ( m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK0,sK0)) != iProver_top
    | v1_relat_1(k6_partfun1(sK0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_1045])).

cnf(c_2215,plain,
    ( v1_relat_1(X0) != iProver_top
    | k1_relat_1(k5_relat_1(X0,k6_partfun1(sK0))) = k1_relat_1(k5_relat_1(X0,sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2210,c_36,c_63,c_1047])).

cnf(c_2216,plain,
    ( k1_relat_1(k5_relat_1(X0,k6_partfun1(sK0))) = k1_relat_1(k5_relat_1(X0,sK1))
    | v1_relat_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_2215])).

cnf(c_2224,plain,
    ( k1_relat_1(k5_relat_1(sK2,k6_partfun1(sK0))) = k1_relat_1(k5_relat_1(sK2,sK1)) ),
    inference(superposition,[status(thm)],[c_906,c_2216])).

cnf(c_2,plain,
    ( r1_tarski(k2_relat_1(X0),X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_7,plain,
    ( ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_partfun1(X1)) = X0 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_376,plain,
    ( ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_partfun1(X1)) = X0 ),
    inference(resolution,[status(thm)],[c_2,c_7])).

cnf(c_18,negated_conjecture,
    ( v5_relat_1(sK2,sK0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_409,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_partfun1(X1)) = X0
    | sK0 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_376,c_18])).

cnf(c_410,plain,
    ( ~ v1_relat_1(sK2)
    | k5_relat_1(sK2,k6_partfun1(sK0)) = sK2 ),
    inference(unflattening,[status(thm)],[c_409])).

cnf(c_412,plain,
    ( k5_relat_1(sK2,k6_partfun1(sK0)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_410,c_19])).

cnf(c_2230,plain,
    ( k1_relat_1(k5_relat_1(sK2,sK1)) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_2224,c_412])).

cnf(c_743,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1417,plain,
    ( k1_relat_1(sK2) = k1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_743])).

cnf(c_744,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_995,plain,
    ( k1_relat_1(k5_relat_1(sK2,sK1)) != X0
    | k1_relat_1(sK2) != X0
    | k1_relat_1(sK2) = k1_relat_1(k5_relat_1(sK2,sK1)) ),
    inference(instantiation,[status(thm)],[c_744])).

cnf(c_1100,plain,
    ( k1_relat_1(k5_relat_1(sK2,sK1)) != k1_relat_1(X0)
    | k1_relat_1(sK2) != k1_relat_1(X0)
    | k1_relat_1(sK2) = k1_relat_1(k5_relat_1(sK2,sK1)) ),
    inference(instantiation,[status(thm)],[c_995])).

cnf(c_1416,plain,
    ( k1_relat_1(k5_relat_1(sK2,sK1)) != k1_relat_1(sK2)
    | k1_relat_1(sK2) = k1_relat_1(k5_relat_1(sK2,sK1))
    | k1_relat_1(sK2) != k1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1100])).

cnf(c_16,negated_conjecture,
    ( k1_relat_1(sK2) != k1_relat_1(k5_relat_1(sK2,sK1)) ),
    inference(cnf_transformation,[],[f57])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2230,c_1417,c_1416,c_16])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n012.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 16:16:22 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.30/1.06  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.30/1.06  
% 1.30/1.06  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.30/1.06  
% 1.30/1.06  ------  iProver source info
% 1.30/1.06  
% 1.30/1.06  git: date: 2020-06-30 10:37:57 +0100
% 1.30/1.06  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.30/1.06  git: non_committed_changes: false
% 1.30/1.06  git: last_make_outside_of_git: false
% 1.30/1.06  
% 1.30/1.06  ------ 
% 1.30/1.06  
% 1.30/1.06  ------ Input Options
% 1.30/1.06  
% 1.30/1.06  --out_options                           all
% 1.30/1.06  --tptp_safe_out                         true
% 1.30/1.06  --problem_path                          ""
% 1.30/1.06  --include_path                          ""
% 1.30/1.06  --clausifier                            res/vclausify_rel
% 1.30/1.06  --clausifier_options                    --mode clausify
% 1.30/1.06  --stdin                                 false
% 1.30/1.06  --stats_out                             all
% 1.30/1.06  
% 1.30/1.06  ------ General Options
% 1.30/1.06  
% 1.30/1.06  --fof                                   false
% 1.30/1.06  --time_out_real                         305.
% 1.30/1.06  --time_out_virtual                      -1.
% 1.30/1.06  --symbol_type_check                     false
% 1.30/1.06  --clausify_out                          false
% 1.30/1.06  --sig_cnt_out                           false
% 1.30/1.06  --trig_cnt_out                          false
% 1.30/1.06  --trig_cnt_out_tolerance                1.
% 1.30/1.06  --trig_cnt_out_sk_spl                   false
% 1.30/1.06  --abstr_cl_out                          false
% 1.30/1.06  
% 1.30/1.06  ------ Global Options
% 1.30/1.06  
% 1.30/1.06  --schedule                              default
% 1.30/1.06  --add_important_lit                     false
% 1.30/1.06  --prop_solver_per_cl                    1000
% 1.30/1.06  --min_unsat_core                        false
% 1.30/1.06  --soft_assumptions                      false
% 1.30/1.06  --soft_lemma_size                       3
% 1.30/1.06  --prop_impl_unit_size                   0
% 1.30/1.06  --prop_impl_unit                        []
% 1.30/1.06  --share_sel_clauses                     true
% 1.30/1.06  --reset_solvers                         false
% 1.30/1.06  --bc_imp_inh                            [conj_cone]
% 1.30/1.06  --conj_cone_tolerance                   3.
% 1.30/1.06  --extra_neg_conj                        none
% 1.30/1.06  --large_theory_mode                     true
% 1.30/1.06  --prolific_symb_bound                   200
% 1.30/1.06  --lt_threshold                          2000
% 1.30/1.06  --clause_weak_htbl                      true
% 1.30/1.06  --gc_record_bc_elim                     false
% 1.30/1.06  
% 1.30/1.06  ------ Preprocessing Options
% 1.30/1.06  
% 1.30/1.06  --preprocessing_flag                    true
% 1.30/1.06  --time_out_prep_mult                    0.1
% 1.30/1.06  --splitting_mode                        input
% 1.30/1.06  --splitting_grd                         true
% 1.30/1.06  --splitting_cvd                         false
% 1.30/1.06  --splitting_cvd_svl                     false
% 1.30/1.06  --splitting_nvd                         32
% 1.30/1.06  --sub_typing                            true
% 1.30/1.06  --prep_gs_sim                           true
% 1.30/1.06  --prep_unflatten                        true
% 1.30/1.06  --prep_res_sim                          true
% 1.30/1.06  --prep_upred                            true
% 1.30/1.06  --prep_sem_filter                       exhaustive
% 1.30/1.06  --prep_sem_filter_out                   false
% 1.30/1.06  --pred_elim                             true
% 1.30/1.06  --res_sim_input                         true
% 1.30/1.06  --eq_ax_congr_red                       true
% 1.30/1.06  --pure_diseq_elim                       true
% 1.30/1.06  --brand_transform                       false
% 1.30/1.06  --non_eq_to_eq                          false
% 1.30/1.06  --prep_def_merge                        true
% 1.30/1.06  --prep_def_merge_prop_impl              false
% 1.30/1.06  --prep_def_merge_mbd                    true
% 1.30/1.06  --prep_def_merge_tr_red                 false
% 1.30/1.06  --prep_def_merge_tr_cl                  false
% 1.30/1.06  --smt_preprocessing                     true
% 1.30/1.06  --smt_ac_axioms                         fast
% 1.30/1.06  --preprocessed_out                      false
% 1.30/1.06  --preprocessed_stats                    false
% 1.30/1.06  
% 1.30/1.06  ------ Abstraction refinement Options
% 1.30/1.06  
% 1.30/1.06  --abstr_ref                             []
% 1.30/1.06  --abstr_ref_prep                        false
% 1.30/1.06  --abstr_ref_until_sat                   false
% 1.30/1.06  --abstr_ref_sig_restrict                funpre
% 1.30/1.06  --abstr_ref_af_restrict_to_split_sk     false
% 1.30/1.06  --abstr_ref_under                       []
% 1.30/1.06  
% 1.30/1.06  ------ SAT Options
% 1.30/1.06  
% 1.30/1.06  --sat_mode                              false
% 1.30/1.06  --sat_fm_restart_options                ""
% 1.30/1.06  --sat_gr_def                            false
% 1.30/1.06  --sat_epr_types                         true
% 1.30/1.06  --sat_non_cyclic_types                  false
% 1.30/1.06  --sat_finite_models                     false
% 1.30/1.06  --sat_fm_lemmas                         false
% 1.30/1.06  --sat_fm_prep                           false
% 1.30/1.06  --sat_fm_uc_incr                        true
% 1.30/1.06  --sat_out_model                         small
% 1.30/1.06  --sat_out_clauses                       false
% 1.30/1.06  
% 1.30/1.06  ------ QBF Options
% 1.30/1.06  
% 1.30/1.06  --qbf_mode                              false
% 1.30/1.06  --qbf_elim_univ                         false
% 1.30/1.06  --qbf_dom_inst                          none
% 1.30/1.06  --qbf_dom_pre_inst                      false
% 1.30/1.06  --qbf_sk_in                             false
% 1.30/1.06  --qbf_pred_elim                         true
% 1.30/1.06  --qbf_split                             512
% 1.30/1.06  
% 1.30/1.06  ------ BMC1 Options
% 1.30/1.06  
% 1.30/1.06  --bmc1_incremental                      false
% 1.30/1.06  --bmc1_axioms                           reachable_all
% 1.30/1.06  --bmc1_min_bound                        0
% 1.30/1.06  --bmc1_max_bound                        -1
% 1.30/1.06  --bmc1_max_bound_default                -1
% 1.30/1.06  --bmc1_symbol_reachability              true
% 1.30/1.06  --bmc1_property_lemmas                  false
% 1.30/1.06  --bmc1_k_induction                      false
% 1.30/1.06  --bmc1_non_equiv_states                 false
% 1.30/1.06  --bmc1_deadlock                         false
% 1.30/1.06  --bmc1_ucm                              false
% 1.30/1.06  --bmc1_add_unsat_core                   none
% 1.30/1.06  --bmc1_unsat_core_children              false
% 1.30/1.06  --bmc1_unsat_core_extrapolate_axioms    false
% 1.30/1.06  --bmc1_out_stat                         full
% 1.30/1.06  --bmc1_ground_init                      false
% 1.30/1.06  --bmc1_pre_inst_next_state              false
% 1.30/1.06  --bmc1_pre_inst_state                   false
% 1.30/1.06  --bmc1_pre_inst_reach_state             false
% 1.30/1.06  --bmc1_out_unsat_core                   false
% 1.30/1.06  --bmc1_aig_witness_out                  false
% 1.30/1.06  --bmc1_verbose                          false
% 1.30/1.06  --bmc1_dump_clauses_tptp                false
% 1.30/1.06  --bmc1_dump_unsat_core_tptp             false
% 1.30/1.06  --bmc1_dump_file                        -
% 1.30/1.06  --bmc1_ucm_expand_uc_limit              128
% 1.30/1.06  --bmc1_ucm_n_expand_iterations          6
% 1.30/1.06  --bmc1_ucm_extend_mode                  1
% 1.30/1.06  --bmc1_ucm_init_mode                    2
% 1.30/1.06  --bmc1_ucm_cone_mode                    none
% 1.30/1.06  --bmc1_ucm_reduced_relation_type        0
% 1.30/1.06  --bmc1_ucm_relax_model                  4
% 1.30/1.06  --bmc1_ucm_full_tr_after_sat            true
% 1.30/1.06  --bmc1_ucm_expand_neg_assumptions       false
% 1.30/1.06  --bmc1_ucm_layered_model                none
% 1.30/1.06  --bmc1_ucm_max_lemma_size               10
% 1.30/1.06  
% 1.30/1.06  ------ AIG Options
% 1.30/1.06  
% 1.30/1.06  --aig_mode                              false
% 1.30/1.06  
% 1.30/1.06  ------ Instantiation Options
% 1.30/1.06  
% 1.30/1.06  --instantiation_flag                    true
% 1.30/1.06  --inst_sos_flag                         false
% 1.30/1.06  --inst_sos_phase                        true
% 1.30/1.06  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.30/1.06  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.30/1.06  --inst_lit_sel_side                     num_symb
% 1.30/1.06  --inst_solver_per_active                1400
% 1.30/1.06  --inst_solver_calls_frac                1.
% 1.30/1.06  --inst_passive_queue_type               priority_queues
% 1.30/1.06  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.30/1.06  --inst_passive_queues_freq              [25;2]
% 1.30/1.06  --inst_dismatching                      true
% 1.30/1.06  --inst_eager_unprocessed_to_passive     true
% 1.30/1.06  --inst_prop_sim_given                   true
% 1.30/1.06  --inst_prop_sim_new                     false
% 1.30/1.06  --inst_subs_new                         false
% 1.30/1.06  --inst_eq_res_simp                      false
% 1.30/1.06  --inst_subs_given                       false
% 1.30/1.06  --inst_orphan_elimination               true
% 1.30/1.06  --inst_learning_loop_flag               true
% 1.30/1.06  --inst_learning_start                   3000
% 1.30/1.06  --inst_learning_factor                  2
% 1.30/1.06  --inst_start_prop_sim_after_learn       3
% 1.30/1.06  --inst_sel_renew                        solver
% 1.30/1.06  --inst_lit_activity_flag                true
% 1.30/1.06  --inst_restr_to_given                   false
% 1.30/1.06  --inst_activity_threshold               500
% 1.30/1.06  --inst_out_proof                        true
% 1.30/1.06  
% 1.30/1.06  ------ Resolution Options
% 1.30/1.06  
% 1.30/1.06  --resolution_flag                       true
% 1.30/1.06  --res_lit_sel                           adaptive
% 1.30/1.06  --res_lit_sel_side                      none
% 1.30/1.06  --res_ordering                          kbo
% 1.30/1.06  --res_to_prop_solver                    active
% 1.30/1.06  --res_prop_simpl_new                    false
% 1.30/1.06  --res_prop_simpl_given                  true
% 1.30/1.06  --res_passive_queue_type                priority_queues
% 1.30/1.06  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.30/1.06  --res_passive_queues_freq               [15;5]
% 1.30/1.06  --res_forward_subs                      full
% 1.30/1.06  --res_backward_subs                     full
% 1.30/1.06  --res_forward_subs_resolution           true
% 1.30/1.06  --res_backward_subs_resolution          true
% 1.30/1.06  --res_orphan_elimination                true
% 1.30/1.06  --res_time_limit                        2.
% 1.30/1.06  --res_out_proof                         true
% 1.30/1.06  
% 1.30/1.06  ------ Superposition Options
% 1.30/1.06  
% 1.30/1.06  --superposition_flag                    true
% 1.30/1.06  --sup_passive_queue_type                priority_queues
% 1.30/1.06  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.30/1.06  --sup_passive_queues_freq               [8;1;4]
% 1.30/1.06  --demod_completeness_check              fast
% 1.30/1.06  --demod_use_ground                      true
% 1.30/1.06  --sup_to_prop_solver                    passive
% 1.30/1.06  --sup_prop_simpl_new                    true
% 1.30/1.06  --sup_prop_simpl_given                  true
% 1.30/1.06  --sup_fun_splitting                     false
% 1.30/1.06  --sup_smt_interval                      50000
% 1.30/1.06  
% 1.30/1.06  ------ Superposition Simplification Setup
% 1.30/1.06  
% 1.30/1.06  --sup_indices_passive                   []
% 1.30/1.06  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.30/1.06  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.30/1.06  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.30/1.06  --sup_full_triv                         [TrivRules;PropSubs]
% 1.30/1.06  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.30/1.06  --sup_full_bw                           [BwDemod]
% 1.30/1.06  --sup_immed_triv                        [TrivRules]
% 1.30/1.06  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.30/1.06  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.30/1.06  --sup_immed_bw_main                     []
% 1.30/1.06  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.30/1.06  --sup_input_triv                        [Unflattening;TrivRules]
% 1.30/1.06  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.30/1.06  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.30/1.06  
% 1.30/1.06  ------ Combination Options
% 1.30/1.06  
% 1.30/1.06  --comb_res_mult                         3
% 1.30/1.06  --comb_sup_mult                         2
% 1.30/1.06  --comb_inst_mult                        10
% 1.30/1.06  
% 1.30/1.06  ------ Debug Options
% 1.30/1.06  
% 1.30/1.06  --dbg_backtrace                         false
% 1.30/1.06  --dbg_dump_prop_clauses                 false
% 1.30/1.06  --dbg_dump_prop_clauses_file            -
% 1.30/1.06  --dbg_out_stat                          false
% 1.30/1.06  ------ Parsing...
% 1.30/1.06  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.30/1.06  
% 1.30/1.06  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 1.30/1.06  
% 1.30/1.06  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.30/1.06  
% 1.30/1.06  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.30/1.06  ------ Proving...
% 1.30/1.06  ------ Problem Properties 
% 1.30/1.06  
% 1.30/1.06  
% 1.30/1.06  clauses                                 12
% 1.30/1.06  conjectures                             3
% 1.30/1.06  EPR                                     1
% 1.30/1.06  Horn                                    12
% 1.30/1.06  unary                                   8
% 1.30/1.06  binary                                  1
% 1.30/1.06  lits                                    21
% 1.30/1.06  lits eq                                 8
% 1.30/1.06  fd_pure                                 0
% 1.30/1.06  fd_pseudo                               0
% 1.30/1.06  fd_cond                                 0
% 1.30/1.06  fd_pseudo_cond                          0
% 1.30/1.06  AC symbols                              0
% 1.30/1.06  
% 1.30/1.06  ------ Schedule dynamic 5 is on 
% 1.30/1.06  
% 1.30/1.06  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.30/1.06  
% 1.30/1.06  
% 1.30/1.06  ------ 
% 1.30/1.06  Current options:
% 1.30/1.06  ------ 
% 1.30/1.06  
% 1.30/1.06  ------ Input Options
% 1.30/1.06  
% 1.30/1.06  --out_options                           all
% 1.30/1.06  --tptp_safe_out                         true
% 1.30/1.06  --problem_path                          ""
% 1.30/1.06  --include_path                          ""
% 1.30/1.06  --clausifier                            res/vclausify_rel
% 1.30/1.06  --clausifier_options                    --mode clausify
% 1.30/1.06  --stdin                                 false
% 1.30/1.06  --stats_out                             all
% 1.30/1.06  
% 1.30/1.06  ------ General Options
% 1.30/1.06  
% 1.30/1.06  --fof                                   false
% 1.30/1.06  --time_out_real                         305.
% 1.30/1.06  --time_out_virtual                      -1.
% 1.30/1.06  --symbol_type_check                     false
% 1.30/1.06  --clausify_out                          false
% 1.30/1.06  --sig_cnt_out                           false
% 1.30/1.06  --trig_cnt_out                          false
% 1.30/1.06  --trig_cnt_out_tolerance                1.
% 1.30/1.06  --trig_cnt_out_sk_spl                   false
% 1.30/1.06  --abstr_cl_out                          false
% 1.30/1.06  
% 1.30/1.06  ------ Global Options
% 1.30/1.06  
% 1.30/1.06  --schedule                              default
% 1.30/1.06  --add_important_lit                     false
% 1.30/1.06  --prop_solver_per_cl                    1000
% 1.30/1.06  --min_unsat_core                        false
% 1.30/1.06  --soft_assumptions                      false
% 1.30/1.06  --soft_lemma_size                       3
% 1.30/1.06  --prop_impl_unit_size                   0
% 1.30/1.06  --prop_impl_unit                        []
% 1.30/1.06  --share_sel_clauses                     true
% 1.30/1.06  --reset_solvers                         false
% 1.30/1.06  --bc_imp_inh                            [conj_cone]
% 1.30/1.06  --conj_cone_tolerance                   3.
% 1.30/1.06  --extra_neg_conj                        none
% 1.30/1.06  --large_theory_mode                     true
% 1.30/1.06  --prolific_symb_bound                   200
% 1.30/1.06  --lt_threshold                          2000
% 1.30/1.06  --clause_weak_htbl                      true
% 1.30/1.06  --gc_record_bc_elim                     false
% 1.30/1.06  
% 1.30/1.06  ------ Preprocessing Options
% 1.30/1.06  
% 1.30/1.06  --preprocessing_flag                    true
% 1.30/1.06  --time_out_prep_mult                    0.1
% 1.30/1.06  --splitting_mode                        input
% 1.30/1.06  --splitting_grd                         true
% 1.30/1.06  --splitting_cvd                         false
% 1.30/1.06  --splitting_cvd_svl                     false
% 1.30/1.06  --splitting_nvd                         32
% 1.30/1.06  --sub_typing                            true
% 1.30/1.06  --prep_gs_sim                           true
% 1.30/1.06  --prep_unflatten                        true
% 1.30/1.06  --prep_res_sim                          true
% 1.30/1.06  --prep_upred                            true
% 1.30/1.06  --prep_sem_filter                       exhaustive
% 1.30/1.06  --prep_sem_filter_out                   false
% 1.30/1.06  --pred_elim                             true
% 1.30/1.06  --res_sim_input                         true
% 1.30/1.06  --eq_ax_congr_red                       true
% 1.30/1.06  --pure_diseq_elim                       true
% 1.30/1.06  --brand_transform                       false
% 1.30/1.06  --non_eq_to_eq                          false
% 1.30/1.06  --prep_def_merge                        true
% 1.30/1.06  --prep_def_merge_prop_impl              false
% 1.30/1.06  --prep_def_merge_mbd                    true
% 1.30/1.06  --prep_def_merge_tr_red                 false
% 1.30/1.06  --prep_def_merge_tr_cl                  false
% 1.30/1.06  --smt_preprocessing                     true
% 1.30/1.06  --smt_ac_axioms                         fast
% 1.30/1.06  --preprocessed_out                      false
% 1.30/1.06  --preprocessed_stats                    false
% 1.30/1.06  
% 1.30/1.06  ------ Abstraction refinement Options
% 1.30/1.06  
% 1.30/1.06  --abstr_ref                             []
% 1.30/1.06  --abstr_ref_prep                        false
% 1.30/1.06  --abstr_ref_until_sat                   false
% 1.30/1.06  --abstr_ref_sig_restrict                funpre
% 1.30/1.06  --abstr_ref_af_restrict_to_split_sk     false
% 1.30/1.06  --abstr_ref_under                       []
% 1.30/1.06  
% 1.30/1.06  ------ SAT Options
% 1.30/1.06  
% 1.30/1.06  --sat_mode                              false
% 1.30/1.06  --sat_fm_restart_options                ""
% 1.30/1.06  --sat_gr_def                            false
% 1.30/1.06  --sat_epr_types                         true
% 1.30/1.06  --sat_non_cyclic_types                  false
% 1.30/1.06  --sat_finite_models                     false
% 1.30/1.06  --sat_fm_lemmas                         false
% 1.30/1.06  --sat_fm_prep                           false
% 1.30/1.06  --sat_fm_uc_incr                        true
% 1.30/1.06  --sat_out_model                         small
% 1.30/1.06  --sat_out_clauses                       false
% 1.30/1.06  
% 1.30/1.06  ------ QBF Options
% 1.30/1.06  
% 1.30/1.06  --qbf_mode                              false
% 1.30/1.06  --qbf_elim_univ                         false
% 1.30/1.06  --qbf_dom_inst                          none
% 1.30/1.06  --qbf_dom_pre_inst                      false
% 1.30/1.06  --qbf_sk_in                             false
% 1.30/1.06  --qbf_pred_elim                         true
% 1.30/1.06  --qbf_split                             512
% 1.30/1.06  
% 1.30/1.06  ------ BMC1 Options
% 1.30/1.06  
% 1.30/1.06  --bmc1_incremental                      false
% 1.30/1.06  --bmc1_axioms                           reachable_all
% 1.30/1.06  --bmc1_min_bound                        0
% 1.30/1.06  --bmc1_max_bound                        -1
% 1.30/1.06  --bmc1_max_bound_default                -1
% 1.30/1.06  --bmc1_symbol_reachability              true
% 1.30/1.06  --bmc1_property_lemmas                  false
% 1.30/1.06  --bmc1_k_induction                      false
% 1.30/1.06  --bmc1_non_equiv_states                 false
% 1.30/1.06  --bmc1_deadlock                         false
% 1.30/1.06  --bmc1_ucm                              false
% 1.30/1.06  --bmc1_add_unsat_core                   none
% 1.30/1.06  --bmc1_unsat_core_children              false
% 1.30/1.06  --bmc1_unsat_core_extrapolate_axioms    false
% 1.30/1.06  --bmc1_out_stat                         full
% 1.30/1.06  --bmc1_ground_init                      false
% 1.30/1.06  --bmc1_pre_inst_next_state              false
% 1.30/1.06  --bmc1_pre_inst_state                   false
% 1.30/1.06  --bmc1_pre_inst_reach_state             false
% 1.30/1.06  --bmc1_out_unsat_core                   false
% 1.30/1.06  --bmc1_aig_witness_out                  false
% 1.30/1.06  --bmc1_verbose                          false
% 1.30/1.06  --bmc1_dump_clauses_tptp                false
% 1.30/1.06  --bmc1_dump_unsat_core_tptp             false
% 1.30/1.06  --bmc1_dump_file                        -
% 1.30/1.06  --bmc1_ucm_expand_uc_limit              128
% 1.30/1.06  --bmc1_ucm_n_expand_iterations          6
% 1.30/1.06  --bmc1_ucm_extend_mode                  1
% 1.30/1.06  --bmc1_ucm_init_mode                    2
% 1.30/1.06  --bmc1_ucm_cone_mode                    none
% 1.30/1.06  --bmc1_ucm_reduced_relation_type        0
% 1.30/1.06  --bmc1_ucm_relax_model                  4
% 1.30/1.06  --bmc1_ucm_full_tr_after_sat            true
% 1.30/1.06  --bmc1_ucm_expand_neg_assumptions       false
% 1.30/1.06  --bmc1_ucm_layered_model                none
% 1.30/1.06  --bmc1_ucm_max_lemma_size               10
% 1.30/1.06  
% 1.30/1.06  ------ AIG Options
% 1.30/1.06  
% 1.30/1.06  --aig_mode                              false
% 1.30/1.06  
% 1.30/1.06  ------ Instantiation Options
% 1.30/1.06  
% 1.30/1.06  --instantiation_flag                    true
% 1.30/1.06  --inst_sos_flag                         false
% 1.30/1.06  --inst_sos_phase                        true
% 1.30/1.06  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.30/1.06  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.30/1.06  --inst_lit_sel_side                     none
% 1.30/1.06  --inst_solver_per_active                1400
% 1.30/1.06  --inst_solver_calls_frac                1.
% 1.30/1.06  --inst_passive_queue_type               priority_queues
% 1.30/1.06  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.30/1.06  --inst_passive_queues_freq              [25;2]
% 1.30/1.06  --inst_dismatching                      true
% 1.30/1.06  --inst_eager_unprocessed_to_passive     true
% 1.30/1.06  --inst_prop_sim_given                   true
% 1.30/1.06  --inst_prop_sim_new                     false
% 1.30/1.06  --inst_subs_new                         false
% 1.30/1.06  --inst_eq_res_simp                      false
% 1.30/1.06  --inst_subs_given                       false
% 1.30/1.06  --inst_orphan_elimination               true
% 1.30/1.06  --inst_learning_loop_flag               true
% 1.30/1.06  --inst_learning_start                   3000
% 1.30/1.06  --inst_learning_factor                  2
% 1.30/1.06  --inst_start_prop_sim_after_learn       3
% 1.30/1.06  --inst_sel_renew                        solver
% 1.30/1.06  --inst_lit_activity_flag                true
% 1.30/1.06  --inst_restr_to_given                   false
% 1.30/1.06  --inst_activity_threshold               500
% 1.30/1.06  --inst_out_proof                        true
% 1.30/1.06  
% 1.30/1.06  ------ Resolution Options
% 1.30/1.06  
% 1.30/1.06  --resolution_flag                       false
% 1.30/1.06  --res_lit_sel                           adaptive
% 1.30/1.06  --res_lit_sel_side                      none
% 1.30/1.06  --res_ordering                          kbo
% 1.30/1.06  --res_to_prop_solver                    active
% 1.30/1.06  --res_prop_simpl_new                    false
% 1.30/1.06  --res_prop_simpl_given                  true
% 1.30/1.06  --res_passive_queue_type                priority_queues
% 1.30/1.06  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.30/1.06  --res_passive_queues_freq               [15;5]
% 1.30/1.06  --res_forward_subs                      full
% 1.30/1.06  --res_backward_subs                     full
% 1.30/1.06  --res_forward_subs_resolution           true
% 1.30/1.06  --res_backward_subs_resolution          true
% 1.30/1.06  --res_orphan_elimination                true
% 1.30/1.06  --res_time_limit                        2.
% 1.30/1.06  --res_out_proof                         true
% 1.30/1.06  
% 1.30/1.06  ------ Superposition Options
% 1.30/1.06  
% 1.30/1.06  --superposition_flag                    true
% 1.30/1.06  --sup_passive_queue_type                priority_queues
% 1.30/1.06  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.30/1.06  --sup_passive_queues_freq               [8;1;4]
% 1.30/1.06  --demod_completeness_check              fast
% 1.30/1.06  --demod_use_ground                      true
% 1.30/1.06  --sup_to_prop_solver                    passive
% 1.30/1.06  --sup_prop_simpl_new                    true
% 1.30/1.06  --sup_prop_simpl_given                  true
% 1.30/1.06  --sup_fun_splitting                     false
% 1.30/1.06  --sup_smt_interval                      50000
% 1.30/1.06  
% 1.30/1.06  ------ Superposition Simplification Setup
% 1.30/1.06  
% 1.30/1.06  --sup_indices_passive                   []
% 1.30/1.06  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.30/1.06  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.30/1.06  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.30/1.06  --sup_full_triv                         [TrivRules;PropSubs]
% 1.30/1.06  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.30/1.06  --sup_full_bw                           [BwDemod]
% 1.30/1.06  --sup_immed_triv                        [TrivRules]
% 1.30/1.06  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.30/1.06  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.30/1.06  --sup_immed_bw_main                     []
% 1.30/1.06  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.30/1.06  --sup_input_triv                        [Unflattening;TrivRules]
% 1.30/1.06  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.30/1.06  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.30/1.06  
% 1.30/1.06  ------ Combination Options
% 1.30/1.06  
% 1.30/1.06  --comb_res_mult                         3
% 1.30/1.06  --comb_sup_mult                         2
% 1.30/1.06  --comb_inst_mult                        10
% 1.30/1.06  
% 1.30/1.06  ------ Debug Options
% 1.30/1.06  
% 1.30/1.06  --dbg_backtrace                         false
% 1.30/1.06  --dbg_dump_prop_clauses                 false
% 1.30/1.06  --dbg_dump_prop_clauses_file            -
% 1.30/1.06  --dbg_out_stat                          false
% 1.30/1.06  
% 1.30/1.06  
% 1.30/1.06  
% 1.30/1.06  
% 1.30/1.06  ------ Proving...
% 1.30/1.06  
% 1.30/1.06  
% 1.30/1.06  % SZS status Theorem for theBenchmark.p
% 1.30/1.06  
% 1.30/1.06  % SZS output start CNFRefutation for theBenchmark.p
% 1.30/1.06  
% 1.30/1.06  fof(f12,conjecture,(
% 1.30/1.06    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ! [X2] : ((v1_funct_1(X2) & v5_relat_1(X2,X0) & v1_relat_1(X2)) => k1_relat_1(X2) = k1_relat_1(k5_relat_1(X2,X1)))))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f13,negated_conjecture,(
% 1.30/1.06    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ! [X2] : ((v1_funct_1(X2) & v5_relat_1(X2,X0) & v1_relat_1(X2)) => k1_relat_1(X2) = k1_relat_1(k5_relat_1(X2,X1)))))),
% 1.30/1.06    inference(negated_conjecture,[],[f12])).
% 1.30/1.06  
% 1.30/1.06  fof(f25,plain,(
% 1.30/1.06    ? [X0] : (? [X1] : (? [X2] : (k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1)) & (v1_funct_1(X2) & v5_relat_1(X2,X0) & v1_relat_1(X2))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))) & ~v1_xboole_0(X0))),
% 1.30/1.06    inference(ennf_transformation,[],[f13])).
% 1.30/1.06  
% 1.30/1.06  fof(f26,plain,(
% 1.30/1.06    ? [X0] : (? [X1] : (? [X2] : (k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1)) & v1_funct_1(X2) & v5_relat_1(X2,X0) & v1_relat_1(X2)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) & ~v1_xboole_0(X0))),
% 1.30/1.06    inference(flattening,[],[f25])).
% 1.30/1.06  
% 1.30/1.06  fof(f31,plain,(
% 1.30/1.06    ( ! [X0,X1] : (? [X2] : (k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1)) & v1_funct_1(X2) & v5_relat_1(X2,X0) & v1_relat_1(X2)) => (k1_relat_1(sK2) != k1_relat_1(k5_relat_1(sK2,X1)) & v1_funct_1(sK2) & v5_relat_1(sK2,X0) & v1_relat_1(sK2))) )),
% 1.30/1.06    introduced(choice_axiom,[])).
% 1.30/1.06  
% 1.30/1.06  fof(f30,plain,(
% 1.30/1.06    ( ! [X0] : (? [X1] : (? [X2] : (k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1)) & v1_funct_1(X2) & v5_relat_1(X2,X0) & v1_relat_1(X2)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (? [X2] : (k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,sK1)) & v1_funct_1(X2) & v5_relat_1(X2,X0) & v1_relat_1(X2)) & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(sK1,X0,X0) & v1_funct_1(sK1))) )),
% 1.30/1.06    introduced(choice_axiom,[])).
% 1.30/1.06  
% 1.30/1.06  fof(f29,plain,(
% 1.30/1.06    ? [X0] : (? [X1] : (? [X2] : (k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1)) & v1_funct_1(X2) & v5_relat_1(X2,X0) & v1_relat_1(X2)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) & ~v1_xboole_0(X0)) => (? [X1] : (? [X2] : (k1_relat_1(X2) != k1_relat_1(k5_relat_1(X2,X1)) & v1_funct_1(X2) & v5_relat_1(X2,sK0) & v1_relat_1(X2)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) & v1_funct_2(X1,sK0,sK0) & v1_funct_1(X1)) & ~v1_xboole_0(sK0))),
% 1.30/1.06    introduced(choice_axiom,[])).
% 1.30/1.06  
% 1.30/1.06  fof(f32,plain,(
% 1.30/1.06    ((k1_relat_1(sK2) != k1_relat_1(k5_relat_1(sK2,sK1)) & v1_funct_1(sK2) & v5_relat_1(sK2,sK0) & v1_relat_1(sK2)) & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) & v1_funct_2(sK1,sK0,sK0) & v1_funct_1(sK1)) & ~v1_xboole_0(sK0)),
% 1.30/1.06    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f31,f30,f29])).
% 1.30/1.06  
% 1.30/1.06  fof(f54,plain,(
% 1.30/1.06    v1_relat_1(sK2)),
% 1.30/1.06    inference(cnf_transformation,[],[f32])).
% 1.30/1.06  
% 1.30/1.06  fof(f5,axiom,(
% 1.30/1.06    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f38,plain,(
% 1.30/1.06    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 1.30/1.06    inference(cnf_transformation,[],[f5])).
% 1.30/1.06  
% 1.30/1.06  fof(f11,axiom,(
% 1.30/1.06    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f49,plain,(
% 1.30/1.06    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 1.30/1.06    inference(cnf_transformation,[],[f11])).
% 1.30/1.06  
% 1.30/1.06  fof(f59,plain,(
% 1.30/1.06    ( ! [X0] : (k1_relat_1(k6_partfun1(X0)) = X0) )),
% 1.30/1.06    inference(definition_unfolding,[],[f38,f49])).
% 1.30/1.06  
% 1.30/1.06  fof(f7,axiom,(
% 1.30/1.06    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f20,plain,(
% 1.30/1.06    ! [X0,X1,X2] : ((v5_relat_1(X2,X1) & v4_relat_1(X2,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.30/1.06    inference(ennf_transformation,[],[f7])).
% 1.30/1.06  
% 1.30/1.06  fof(f41,plain,(
% 1.30/1.06    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.30/1.06    inference(cnf_transformation,[],[f20])).
% 1.30/1.06  
% 1.30/1.06  fof(f9,axiom,(
% 1.30/1.06    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => (v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f23,plain,(
% 1.30/1.06    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.30/1.06    inference(ennf_transformation,[],[f9])).
% 1.30/1.06  
% 1.30/1.06  fof(f24,plain,(
% 1.30/1.06    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.30/1.06    inference(flattening,[],[f23])).
% 1.30/1.06  
% 1.30/1.06  fof(f28,plain,(
% 1.30/1.06    ! [X0,X1] : (((v1_partfun1(X1,X0) | k1_relat_1(X1) != X0) & (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0))) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.30/1.06    inference(nnf_transformation,[],[f24])).
% 1.30/1.06  
% 1.30/1.06  fof(f45,plain,(
% 1.30/1.06    ( ! [X0,X1] : (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.30/1.06    inference(cnf_transformation,[],[f28])).
% 1.30/1.06  
% 1.30/1.06  fof(f8,axiom,(
% 1.30/1.06    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f21,plain,(
% 1.30/1.06    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.30/1.06    inference(ennf_transformation,[],[f8])).
% 1.30/1.06  
% 1.30/1.06  fof(f22,plain,(
% 1.30/1.06    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.30/1.06    inference(flattening,[],[f21])).
% 1.30/1.06  
% 1.30/1.06  fof(f44,plain,(
% 1.30/1.06    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 1.30/1.06    inference(cnf_transformation,[],[f22])).
% 1.30/1.06  
% 1.30/1.06  fof(f52,plain,(
% 1.30/1.06    v1_funct_2(sK1,sK0,sK0)),
% 1.30/1.06    inference(cnf_transformation,[],[f32])).
% 1.30/1.06  
% 1.30/1.06  fof(f50,plain,(
% 1.30/1.06    ~v1_xboole_0(sK0)),
% 1.30/1.06    inference(cnf_transformation,[],[f32])).
% 1.30/1.06  
% 1.30/1.06  fof(f51,plain,(
% 1.30/1.06    v1_funct_1(sK1)),
% 1.30/1.06    inference(cnf_transformation,[],[f32])).
% 1.30/1.06  
% 1.30/1.06  fof(f53,plain,(
% 1.30/1.06    m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))),
% 1.30/1.06    inference(cnf_transformation,[],[f32])).
% 1.30/1.06  
% 1.30/1.06  fof(f3,axiom,(
% 1.30/1.06    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f36,plain,(
% 1.30/1.06    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.30/1.06    inference(cnf_transformation,[],[f3])).
% 1.30/1.06  
% 1.30/1.06  fof(f1,axiom,(
% 1.30/1.06    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f14,plain,(
% 1.30/1.06    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.30/1.06    inference(ennf_transformation,[],[f1])).
% 1.30/1.06  
% 1.30/1.06  fof(f33,plain,(
% 1.30/1.06    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 1.30/1.06    inference(cnf_transformation,[],[f14])).
% 1.30/1.06  
% 1.30/1.06  fof(f4,axiom,(
% 1.30/1.06    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => (k1_relat_1(X0) = k1_relat_1(X1) => k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1))))))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f16,plain,(
% 1.30/1.06    ! [X0] : (! [X1] : (! [X2] : ((k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1)) | k1_relat_1(X0) != k1_relat_1(X1)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.30/1.06    inference(ennf_transformation,[],[f4])).
% 1.30/1.06  
% 1.30/1.06  fof(f17,plain,(
% 1.30/1.06    ! [X0] : (! [X1] : (! [X2] : (k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1)) | k1_relat_1(X0) != k1_relat_1(X1) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.30/1.06    inference(flattening,[],[f16])).
% 1.30/1.06  
% 1.30/1.06  fof(f37,plain,(
% 1.30/1.06    ( ! [X2,X0,X1] : (k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1)) | k1_relat_1(X0) != k1_relat_1(X1) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.30/1.06    inference(cnf_transformation,[],[f17])).
% 1.30/1.06  
% 1.30/1.06  fof(f10,axiom,(
% 1.30/1.06    ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_partfun1(k6_partfun1(X0),X0))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f48,plain,(
% 1.30/1.06    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 1.30/1.06    inference(cnf_transformation,[],[f10])).
% 1.30/1.06  
% 1.30/1.06  fof(f2,axiom,(
% 1.30/1.06    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f15,plain,(
% 1.30/1.06    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.30/1.06    inference(ennf_transformation,[],[f2])).
% 1.30/1.06  
% 1.30/1.06  fof(f27,plain,(
% 1.30/1.06    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 1.30/1.06    inference(nnf_transformation,[],[f15])).
% 1.30/1.06  
% 1.30/1.06  fof(f34,plain,(
% 1.30/1.06    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.30/1.06    inference(cnf_transformation,[],[f27])).
% 1.30/1.06  
% 1.30/1.06  fof(f6,axiom,(
% 1.30/1.06    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k2_relat_1(X1),X0) => k5_relat_1(X1,k6_relat_1(X0)) = X1))),
% 1.30/1.06    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.30/1.06  
% 1.30/1.06  fof(f18,plain,(
% 1.30/1.06    ! [X0,X1] : ((k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.30/1.06    inference(ennf_transformation,[],[f6])).
% 1.30/1.06  
% 1.30/1.06  fof(f19,plain,(
% 1.30/1.06    ! [X0,X1] : (k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 1.30/1.06    inference(flattening,[],[f18])).
% 1.30/1.06  
% 1.30/1.06  fof(f40,plain,(
% 1.30/1.06    ( ! [X0,X1] : (k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 1.30/1.06    inference(cnf_transformation,[],[f19])).
% 1.30/1.06  
% 1.30/1.06  fof(f60,plain,(
% 1.30/1.06    ( ! [X0,X1] : (k5_relat_1(X1,k6_partfun1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 1.30/1.06    inference(definition_unfolding,[],[f40,f49])).
% 1.30/1.06  
% 1.30/1.06  fof(f55,plain,(
% 1.30/1.06    v5_relat_1(sK2,sK0)),
% 1.30/1.06    inference(cnf_transformation,[],[f32])).
% 1.30/1.06  
% 1.30/1.06  fof(f57,plain,(
% 1.30/1.06    k1_relat_1(sK2) != k1_relat_1(k5_relat_1(sK2,sK1))),
% 1.30/1.06    inference(cnf_transformation,[],[f32])).
% 1.30/1.06  
% 1.30/1.06  cnf(c_19,negated_conjecture,
% 1.30/1.06      ( v1_relat_1(sK2) ),
% 1.30/1.06      inference(cnf_transformation,[],[f54]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_906,plain,
% 1.30/1.06      ( v1_relat_1(sK2) = iProver_top ),
% 1.30/1.06      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_6,plain,
% 1.30/1.06      ( k1_relat_1(k6_partfun1(X0)) = X0 ),
% 1.30/1.06      inference(cnf_transformation,[],[f59]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_9,plain,
% 1.30/1.06      ( v4_relat_1(X0,X1)
% 1.30/1.06      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.30/1.06      inference(cnf_transformation,[],[f41]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_13,plain,
% 1.30/1.06      ( ~ v1_partfun1(X0,X1)
% 1.30/1.06      | ~ v4_relat_1(X0,X1)
% 1.30/1.06      | ~ v1_relat_1(X0)
% 1.30/1.06      | k1_relat_1(X0) = X1 ),
% 1.30/1.06      inference(cnf_transformation,[],[f45]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_10,plain,
% 1.30/1.06      ( ~ v1_funct_2(X0,X1,X2)
% 1.30/1.06      | v1_partfun1(X0,X1)
% 1.30/1.06      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.30/1.06      | v1_xboole_0(X2)
% 1.30/1.06      | ~ v1_funct_1(X0) ),
% 1.30/1.06      inference(cnf_transformation,[],[f44]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_21,negated_conjecture,
% 1.30/1.06      ( v1_funct_2(sK1,sK0,sK0) ),
% 1.30/1.06      inference(cnf_transformation,[],[f52]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_232,plain,
% 1.30/1.06      ( v1_partfun1(X0,X1)
% 1.30/1.06      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.30/1.06      | v1_xboole_0(X2)
% 1.30/1.06      | ~ v1_funct_1(X0)
% 1.30/1.06      | sK0 != X2
% 1.30/1.06      | sK0 != X1
% 1.30/1.06      | sK1 != X0 ),
% 1.30/1.06      inference(resolution_lifted,[status(thm)],[c_10,c_21]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_233,plain,
% 1.30/1.06      ( v1_partfun1(sK1,sK0)
% 1.30/1.06      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 1.30/1.06      | v1_xboole_0(sK0)
% 1.30/1.06      | ~ v1_funct_1(sK1) ),
% 1.30/1.06      inference(unflattening,[status(thm)],[c_232]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_23,negated_conjecture,
% 1.30/1.06      ( ~ v1_xboole_0(sK0) ),
% 1.30/1.06      inference(cnf_transformation,[],[f50]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_22,negated_conjecture,
% 1.30/1.06      ( v1_funct_1(sK1) ),
% 1.30/1.06      inference(cnf_transformation,[],[f51]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_20,negated_conjecture,
% 1.30/1.06      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
% 1.30/1.06      inference(cnf_transformation,[],[f53]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_235,plain,
% 1.30/1.06      ( v1_partfun1(sK1,sK0) ),
% 1.30/1.06      inference(global_propositional_subsumption,
% 1.30/1.06                [status(thm)],
% 1.30/1.06                [c_233,c_23,c_22,c_20]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_518,plain,
% 1.30/1.06      ( ~ v4_relat_1(X0,X1)
% 1.30/1.06      | ~ v1_relat_1(X0)
% 1.30/1.06      | k1_relat_1(X0) = X1
% 1.30/1.06      | sK0 != X1
% 1.30/1.06      | sK1 != X0 ),
% 1.30/1.06      inference(resolution_lifted,[status(thm)],[c_13,c_235]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_519,plain,
% 1.30/1.06      ( ~ v4_relat_1(sK1,sK0)
% 1.30/1.06      | ~ v1_relat_1(sK1)
% 1.30/1.06      | k1_relat_1(sK1) = sK0 ),
% 1.30/1.06      inference(unflattening,[status(thm)],[c_518]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_535,plain,
% 1.30/1.06      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.30/1.06      | ~ v1_relat_1(sK1)
% 1.30/1.06      | k1_relat_1(sK1) = sK0
% 1.30/1.06      | sK0 != X1
% 1.30/1.06      | sK1 != X0 ),
% 1.30/1.06      inference(resolution_lifted,[status(thm)],[c_9,c_519]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_536,plain,
% 1.30/1.06      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
% 1.30/1.06      | ~ v1_relat_1(sK1)
% 1.30/1.06      | k1_relat_1(sK1) = sK0 ),
% 1.30/1.06      inference(unflattening,[status(thm)],[c_535]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_538,plain,
% 1.30/1.06      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 1.30/1.06      | ~ v1_relat_1(sK1)
% 1.30/1.06      | k1_relat_1(sK1) = sK0 ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_536]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_540,plain,
% 1.30/1.06      ( ~ v1_relat_1(sK1) | k1_relat_1(sK1) = sK0 ),
% 1.30/1.06      inference(global_propositional_subsumption,
% 1.30/1.06                [status(thm)],
% 1.30/1.06                [c_536,c_20,c_538]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_903,plain,
% 1.30/1.06      ( k1_relat_1(sK1) = sK0 | v1_relat_1(sK1) != iProver_top ),
% 1.30/1.06      inference(predicate_to_equality,[status(thm)],[c_540]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_3,plain,
% 1.30/1.06      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.30/1.06      inference(cnf_transformation,[],[f36]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_62,plain,
% 1.30/1.06      ( v1_relat_1(k2_zfmisc_1(sK0,sK0)) ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_3]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_0,plain,
% 1.30/1.06      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.30/1.06      | ~ v1_relat_1(X1)
% 1.30/1.06      | v1_relat_1(X0) ),
% 1.30/1.06      inference(cnf_transformation,[],[f33]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_974,plain,
% 1.30/1.06      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.30/1.06      | v1_relat_1(X0)
% 1.30/1.06      | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_0]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1049,plain,
% 1.30/1.06      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 1.30/1.06      | ~ v1_relat_1(k2_zfmisc_1(sK0,sK0))
% 1.30/1.06      | v1_relat_1(sK1) ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_974]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1107,plain,
% 1.30/1.06      ( k1_relat_1(sK1) = sK0 ),
% 1.30/1.06      inference(global_propositional_subsumption,
% 1.30/1.06                [status(thm)],
% 1.30/1.06                [c_903,c_20,c_62,c_538,c_1049]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_4,plain,
% 1.30/1.06      ( ~ v1_relat_1(X0)
% 1.30/1.06      | ~ v1_relat_1(X1)
% 1.30/1.06      | ~ v1_relat_1(X2)
% 1.30/1.06      | k1_relat_1(X1) != k1_relat_1(X0)
% 1.30/1.06      | k1_relat_1(k5_relat_1(X2,X1)) = k1_relat_1(k5_relat_1(X2,X0)) ),
% 1.30/1.06      inference(cnf_transformation,[],[f37]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_908,plain,
% 1.30/1.06      ( k1_relat_1(X0) != k1_relat_1(X1)
% 1.30/1.06      | k1_relat_1(k5_relat_1(X2,X0)) = k1_relat_1(k5_relat_1(X2,X1))
% 1.30/1.06      | v1_relat_1(X1) != iProver_top
% 1.30/1.06      | v1_relat_1(X0) != iProver_top
% 1.30/1.06      | v1_relat_1(X2) != iProver_top ),
% 1.30/1.06      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1578,plain,
% 1.30/1.06      ( k1_relat_1(X0) != sK0
% 1.30/1.06      | k1_relat_1(k5_relat_1(X1,X0)) = k1_relat_1(k5_relat_1(X1,sK1))
% 1.30/1.06      | v1_relat_1(X0) != iProver_top
% 1.30/1.06      | v1_relat_1(X1) != iProver_top
% 1.30/1.06      | v1_relat_1(sK1) != iProver_top ),
% 1.30/1.06      inference(superposition,[status(thm)],[c_1107,c_908]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_27,plain,
% 1.30/1.06      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
% 1.30/1.06      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_61,plain,
% 1.30/1.06      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 1.30/1.06      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_63,plain,
% 1.30/1.06      ( v1_relat_1(k2_zfmisc_1(sK0,sK0)) = iProver_top ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_61]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1050,plain,
% 1.30/1.06      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 1.30/1.06      | v1_relat_1(k2_zfmisc_1(sK0,sK0)) != iProver_top
% 1.30/1.06      | v1_relat_1(sK1) = iProver_top ),
% 1.30/1.06      inference(predicate_to_equality,[status(thm)],[c_1049]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_2121,plain,
% 1.30/1.06      ( v1_relat_1(X1) != iProver_top
% 1.30/1.06      | v1_relat_1(X0) != iProver_top
% 1.30/1.06      | k1_relat_1(k5_relat_1(X1,X0)) = k1_relat_1(k5_relat_1(X1,sK1))
% 1.30/1.06      | k1_relat_1(X0) != sK0 ),
% 1.30/1.06      inference(global_propositional_subsumption,
% 1.30/1.06                [status(thm)],
% 1.30/1.06                [c_1578,c_27,c_63,c_1050]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_2122,plain,
% 1.30/1.06      ( k1_relat_1(X0) != sK0
% 1.30/1.06      | k1_relat_1(k5_relat_1(X1,X0)) = k1_relat_1(k5_relat_1(X1,sK1))
% 1.30/1.06      | v1_relat_1(X0) != iProver_top
% 1.30/1.06      | v1_relat_1(X1) != iProver_top ),
% 1.30/1.06      inference(renaming,[status(thm)],[c_2121]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_2131,plain,
% 1.30/1.06      ( k1_relat_1(k5_relat_1(X0,k6_partfun1(X1))) = k1_relat_1(k5_relat_1(X0,sK1))
% 1.30/1.06      | sK0 != X1
% 1.30/1.06      | v1_relat_1(X0) != iProver_top
% 1.30/1.06      | v1_relat_1(k6_partfun1(X1)) != iProver_top ),
% 1.30/1.06      inference(superposition,[status(thm)],[c_6,c_2122]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_2210,plain,
% 1.30/1.06      ( k1_relat_1(k5_relat_1(X0,k6_partfun1(sK0))) = k1_relat_1(k5_relat_1(X0,sK1))
% 1.30/1.06      | v1_relat_1(X0) != iProver_top
% 1.30/1.06      | v1_relat_1(k6_partfun1(sK0)) != iProver_top ),
% 1.30/1.06      inference(equality_resolution,[status(thm)],[c_2131]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_14,plain,
% 1.30/1.06      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 1.30/1.06      inference(cnf_transformation,[],[f48]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_34,plain,
% 1.30/1.06      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) = iProver_top ),
% 1.30/1.06      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_36,plain,
% 1.30/1.06      ( m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_34]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1044,plain,
% 1.30/1.06      ( ~ m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
% 1.30/1.06      | ~ v1_relat_1(k2_zfmisc_1(X0,X0))
% 1.30/1.06      | v1_relat_1(k6_partfun1(X0)) ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_974]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1045,plain,
% 1.30/1.06      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
% 1.30/1.06      | v1_relat_1(k2_zfmisc_1(X0,X0)) != iProver_top
% 1.30/1.06      | v1_relat_1(k6_partfun1(X0)) = iProver_top ),
% 1.30/1.06      inference(predicate_to_equality,[status(thm)],[c_1044]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1047,plain,
% 1.30/1.06      ( m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 1.30/1.06      | v1_relat_1(k2_zfmisc_1(sK0,sK0)) != iProver_top
% 1.30/1.06      | v1_relat_1(k6_partfun1(sK0)) = iProver_top ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_1045]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_2215,plain,
% 1.30/1.06      ( v1_relat_1(X0) != iProver_top
% 1.30/1.06      | k1_relat_1(k5_relat_1(X0,k6_partfun1(sK0))) = k1_relat_1(k5_relat_1(X0,sK1)) ),
% 1.30/1.06      inference(global_propositional_subsumption,
% 1.30/1.06                [status(thm)],
% 1.30/1.06                [c_2210,c_36,c_63,c_1047]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_2216,plain,
% 1.30/1.06      ( k1_relat_1(k5_relat_1(X0,k6_partfun1(sK0))) = k1_relat_1(k5_relat_1(X0,sK1))
% 1.30/1.06      | v1_relat_1(X0) != iProver_top ),
% 1.30/1.06      inference(renaming,[status(thm)],[c_2215]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_2224,plain,
% 1.30/1.06      ( k1_relat_1(k5_relat_1(sK2,k6_partfun1(sK0))) = k1_relat_1(k5_relat_1(sK2,sK1)) ),
% 1.30/1.06      inference(superposition,[status(thm)],[c_906,c_2216]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_2,plain,
% 1.30/1.06      ( r1_tarski(k2_relat_1(X0),X1)
% 1.30/1.06      | ~ v5_relat_1(X0,X1)
% 1.30/1.06      | ~ v1_relat_1(X0) ),
% 1.30/1.06      inference(cnf_transformation,[],[f34]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_7,plain,
% 1.30/1.06      ( ~ r1_tarski(k2_relat_1(X0),X1)
% 1.30/1.06      | ~ v1_relat_1(X0)
% 1.30/1.06      | k5_relat_1(X0,k6_partfun1(X1)) = X0 ),
% 1.30/1.06      inference(cnf_transformation,[],[f60]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_376,plain,
% 1.30/1.06      ( ~ v5_relat_1(X0,X1)
% 1.30/1.06      | ~ v1_relat_1(X0)
% 1.30/1.06      | k5_relat_1(X0,k6_partfun1(X1)) = X0 ),
% 1.30/1.06      inference(resolution,[status(thm)],[c_2,c_7]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_18,negated_conjecture,
% 1.30/1.06      ( v5_relat_1(sK2,sK0) ),
% 1.30/1.06      inference(cnf_transformation,[],[f55]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_409,plain,
% 1.30/1.06      ( ~ v1_relat_1(X0)
% 1.30/1.06      | k5_relat_1(X0,k6_partfun1(X1)) = X0
% 1.30/1.06      | sK0 != X1
% 1.30/1.06      | sK2 != X0 ),
% 1.30/1.06      inference(resolution_lifted,[status(thm)],[c_376,c_18]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_410,plain,
% 1.30/1.06      ( ~ v1_relat_1(sK2) | k5_relat_1(sK2,k6_partfun1(sK0)) = sK2 ),
% 1.30/1.06      inference(unflattening,[status(thm)],[c_409]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_412,plain,
% 1.30/1.06      ( k5_relat_1(sK2,k6_partfun1(sK0)) = sK2 ),
% 1.30/1.06      inference(global_propositional_subsumption,
% 1.30/1.06                [status(thm)],
% 1.30/1.06                [c_410,c_19]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_2230,plain,
% 1.30/1.06      ( k1_relat_1(k5_relat_1(sK2,sK1)) = k1_relat_1(sK2) ),
% 1.30/1.06      inference(light_normalisation,[status(thm)],[c_2224,c_412]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_743,plain,( X0 = X0 ),theory(equality) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1417,plain,
% 1.30/1.06      ( k1_relat_1(sK2) = k1_relat_1(sK2) ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_743]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_744,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_995,plain,
% 1.30/1.06      ( k1_relat_1(k5_relat_1(sK2,sK1)) != X0
% 1.30/1.06      | k1_relat_1(sK2) != X0
% 1.30/1.06      | k1_relat_1(sK2) = k1_relat_1(k5_relat_1(sK2,sK1)) ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_744]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1100,plain,
% 1.30/1.06      ( k1_relat_1(k5_relat_1(sK2,sK1)) != k1_relat_1(X0)
% 1.30/1.06      | k1_relat_1(sK2) != k1_relat_1(X0)
% 1.30/1.06      | k1_relat_1(sK2) = k1_relat_1(k5_relat_1(sK2,sK1)) ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_995]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_1416,plain,
% 1.30/1.06      ( k1_relat_1(k5_relat_1(sK2,sK1)) != k1_relat_1(sK2)
% 1.30/1.06      | k1_relat_1(sK2) = k1_relat_1(k5_relat_1(sK2,sK1))
% 1.30/1.06      | k1_relat_1(sK2) != k1_relat_1(sK2) ),
% 1.30/1.06      inference(instantiation,[status(thm)],[c_1100]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(c_16,negated_conjecture,
% 1.30/1.06      ( k1_relat_1(sK2) != k1_relat_1(k5_relat_1(sK2,sK1)) ),
% 1.30/1.06      inference(cnf_transformation,[],[f57]) ).
% 1.30/1.06  
% 1.30/1.06  cnf(contradiction,plain,
% 1.30/1.06      ( $false ),
% 1.30/1.06      inference(minisat,[status(thm)],[c_2230,c_1417,c_1416,c_16]) ).
% 1.30/1.06  
% 1.30/1.06  
% 1.30/1.06  % SZS output end CNFRefutation for theBenchmark.p
% 1.30/1.06  
% 1.30/1.06  ------                               Statistics
% 1.30/1.06  
% 1.30/1.06  ------ General
% 1.30/1.06  
% 1.30/1.06  abstr_ref_over_cycles:                  0
% 1.30/1.06  abstr_ref_under_cycles:                 0
% 1.30/1.06  gc_basic_clause_elim:                   0
% 1.30/1.06  forced_gc_time:                         0
% 1.30/1.06  parsing_time:                           0.01
% 1.30/1.06  unif_index_cands_time:                  0.
% 1.30/1.06  unif_index_add_time:                    0.
% 1.30/1.06  orderings_time:                         0.
% 1.30/1.06  out_proof_time:                         0.03
% 1.30/1.06  total_time:                             0.165
% 1.30/1.06  num_of_symbols:                         49
% 1.30/1.06  num_of_terms:                           2526
% 1.30/1.06  
% 1.30/1.06  ------ Preprocessing
% 1.30/1.06  
% 1.30/1.06  num_of_splits:                          0
% 1.30/1.06  num_of_split_atoms:                     0
% 1.30/1.06  num_of_reused_defs:                     0
% 1.30/1.06  num_eq_ax_congr_red:                    3
% 1.30/1.06  num_of_sem_filtered_clauses:            1
% 1.30/1.06  num_of_subtypes:                        0
% 1.30/1.06  monotx_restored_types:                  0
% 1.30/1.06  sat_num_of_epr_types:                   0
% 1.30/1.06  sat_num_of_non_cyclic_types:            0
% 1.30/1.06  sat_guarded_non_collapsed_types:        0
% 1.30/1.06  num_pure_diseq_elim:                    0
% 1.30/1.06  simp_replaced_by:                       0
% 1.30/1.06  res_preprocessed:                       80
% 1.30/1.06  prep_upred:                             0
% 1.30/1.06  prep_unflattend:                        35
% 1.30/1.06  smt_new_axioms:                         0
% 1.30/1.06  pred_elim_cands:                        2
% 1.30/1.06  pred_elim:                              7
% 1.30/1.06  pred_elim_cl:                           11
% 1.30/1.06  pred_elim_cycles:                       12
% 1.30/1.06  merged_defs:                            0
% 1.30/1.06  merged_defs_ncl:                        0
% 1.30/1.06  bin_hyper_res:                          0
% 1.30/1.06  prep_cycles:                            4
% 1.30/1.06  pred_elim_time:                         0.009
% 1.30/1.06  splitting_time:                         0.
% 1.30/1.06  sem_filter_time:                        0.
% 1.30/1.06  monotx_time:                            0.004
% 1.30/1.06  subtype_inf_time:                       0.
% 1.30/1.06  
% 1.30/1.06  ------ Problem properties
% 1.30/1.06  
% 1.30/1.06  clauses:                                12
% 1.30/1.06  conjectures:                            3
% 1.30/1.06  epr:                                    1
% 1.30/1.06  horn:                                   12
% 1.30/1.06  ground:                                 5
% 1.30/1.06  unary:                                  8
% 1.30/1.06  binary:                                 1
% 1.30/1.06  lits:                                   21
% 1.30/1.06  lits_eq:                                8
% 1.30/1.06  fd_pure:                                0
% 1.30/1.06  fd_pseudo:                              0
% 1.30/1.06  fd_cond:                                0
% 1.30/1.06  fd_pseudo_cond:                         0
% 1.30/1.06  ac_symbols:                             0
% 1.30/1.06  
% 1.30/1.06  ------ Propositional Solver
% 1.30/1.06  
% 1.30/1.06  prop_solver_calls:                      26
% 1.30/1.06  prop_fast_solver_calls:                 454
% 1.30/1.06  smt_solver_calls:                       0
% 1.30/1.06  smt_fast_solver_calls:                  0
% 1.30/1.06  prop_num_of_clauses:                    890
% 1.30/1.06  prop_preprocess_simplified:             3167
% 1.30/1.06  prop_fo_subsumed:                       10
% 1.30/1.06  prop_solver_time:                       0.
% 1.30/1.06  smt_solver_time:                        0.
% 1.30/1.06  smt_fast_solver_time:                   0.
% 1.30/1.06  prop_fast_solver_time:                  0.
% 1.30/1.06  prop_unsat_core_time:                   0.
% 1.30/1.06  
% 1.30/1.06  ------ QBF
% 1.30/1.06  
% 1.30/1.06  qbf_q_res:                              0
% 1.30/1.06  qbf_num_tautologies:                    0
% 1.30/1.06  qbf_prep_cycles:                        0
% 1.30/1.06  
% 1.30/1.06  ------ BMC1
% 1.30/1.06  
% 1.30/1.06  bmc1_current_bound:                     -1
% 1.30/1.06  bmc1_last_solved_bound:                 -1
% 1.30/1.06  bmc1_unsat_core_size:                   -1
% 1.30/1.06  bmc1_unsat_core_parents_size:           -1
% 1.30/1.06  bmc1_merge_next_fun:                    0
% 1.30/1.06  bmc1_unsat_core_clauses_time:           0.
% 1.30/1.06  
% 1.30/1.06  ------ Instantiation
% 1.30/1.06  
% 1.30/1.06  inst_num_of_clauses:                    253
% 1.30/1.06  inst_num_in_passive:                    121
% 1.30/1.06  inst_num_in_active:                     88
% 1.30/1.06  inst_num_in_unprocessed:                44
% 1.30/1.06  inst_num_of_loops:                      90
% 1.30/1.06  inst_num_of_learning_restarts:          0
% 1.30/1.06  inst_num_moves_active_passive:          1
% 1.30/1.06  inst_lit_activity:                      0
% 1.30/1.06  inst_lit_activity_moves:                0
% 1.30/1.06  inst_num_tautologies:                   0
% 1.30/1.06  inst_num_prop_implied:                  0
% 1.30/1.06  inst_num_existing_simplified:           0
% 1.30/1.06  inst_num_eq_res_simplified:             0
% 1.30/1.06  inst_num_child_elim:                    0
% 1.30/1.06  inst_num_of_dismatching_blockings:      2
% 1.30/1.06  inst_num_of_non_proper_insts:           194
% 1.30/1.06  inst_num_of_duplicates:                 0
% 1.30/1.06  inst_inst_num_from_inst_to_res:         0
% 1.30/1.06  inst_dismatching_checking_time:         0.
% 1.30/1.06  
% 1.30/1.06  ------ Resolution
% 1.30/1.06  
% 1.30/1.06  res_num_of_clauses:                     0
% 1.30/1.06  res_num_in_passive:                     0
% 1.30/1.06  res_num_in_active:                      0
% 1.30/1.06  res_num_of_loops:                       84
% 1.30/1.06  res_forward_subset_subsumed:            5
% 1.30/1.06  res_backward_subset_subsumed:           0
% 1.30/1.06  res_forward_subsumed:                   0
% 1.30/1.06  res_backward_subsumed:                  0
% 1.30/1.06  res_forward_subsumption_resolution:     0
% 1.30/1.06  res_backward_subsumption_resolution:    0
% 1.30/1.06  res_clause_to_clause_subsumption:       26
% 1.30/1.06  res_orphan_elimination:                 0
% 1.30/1.06  res_tautology_del:                      8
% 1.30/1.06  res_num_eq_res_simplified:              0
% 1.30/1.06  res_num_sel_changes:                    0
% 1.30/1.06  res_moves_from_active_to_pass:          0
% 1.30/1.06  
% 1.30/1.06  ------ Superposition
% 1.30/1.06  
% 1.30/1.06  sup_time_total:                         0.
% 1.30/1.06  sup_time_generating:                    0.
% 1.30/1.06  sup_time_sim_full:                      0.
% 1.30/1.06  sup_time_sim_immed:                     0.
% 1.30/1.06  
% 1.30/1.06  sup_num_of_clauses:                     25
% 1.30/1.06  sup_num_in_active:                      18
% 1.30/1.06  sup_num_in_passive:                     7
% 1.30/1.06  sup_num_of_loops:                       17
% 1.30/1.06  sup_fw_superposition:                   14
% 1.30/1.06  sup_bw_superposition:                   1
% 1.30/1.06  sup_immediate_simplified:               2
% 1.30/1.06  sup_given_eliminated:                   0
% 1.30/1.06  comparisons_done:                       0
% 1.30/1.06  comparisons_avoided:                    0
% 1.30/1.06  
% 1.30/1.06  ------ Simplifications
% 1.30/1.06  
% 1.30/1.06  
% 1.30/1.06  sim_fw_subset_subsumed:                 0
% 1.30/1.06  sim_bw_subset_subsumed:                 1
% 1.30/1.06  sim_fw_subsumed:                        0
% 1.30/1.06  sim_bw_subsumed:                        0
% 1.30/1.06  sim_fw_subsumption_res:                 0
% 1.30/1.06  sim_bw_subsumption_res:                 0
% 1.30/1.06  sim_tautology_del:                      0
% 1.30/1.06  sim_eq_tautology_del:                   2
% 1.30/1.06  sim_eq_res_simp:                        0
% 1.30/1.06  sim_fw_demodulated:                     0
% 1.30/1.06  sim_bw_demodulated:                     0
% 1.30/1.06  sim_light_normalised:                   2
% 1.30/1.06  sim_joinable_taut:                      0
% 1.30/1.06  sim_joinable_simp:                      0
% 1.30/1.06  sim_ac_normalised:                      0
% 1.30/1.06  sim_smt_subsumption:                    0
% 1.30/1.06  
%------------------------------------------------------------------------------
