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
% DateTime   : Thu Dec  3 12:00:02 EST 2020

% Result     : Theorem 2.34s
% Output     : CNFRefutation 2.34s
% Verified   : 
% Statistics : Number of formulae       :  101 ( 940 expanded)
%              Number of clauses        :   60 ( 326 expanded)
%              Number of leaves         :    9 ( 168 expanded)
%              Depth                    :   21
%              Number of atoms          :  309 (3688 expanded)
%              Number of equality atoms :  161 (1067 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f34,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( k1_xboole_0 = X1
         => ( ( v1_funct_2(X2,X0,X1)
            <=> k1_xboole_0 = X2 )
            | k1_xboole_0 = X0 ) )
        & ( ( k1_xboole_0 = X1
           => k1_xboole_0 = X0 )
         => ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f14])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( ( v1_funct_2(X2,X0,X1)
              | k1_xboole_0 != X2 )
            & ( k1_xboole_0 = X2
              | ~ v1_funct_2(X2,X0,X1) ) )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( ( v1_funct_2(X2,X0,X1)
              | k1_relset_1(X0,X1,X2) != X0 )
            & ( k1_relset_1(X0,X1,X2) = X0
              | ~ v1_funct_2(X2,X0,X1) ) )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f9,conjecture,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ( ( v1_funct_1(X0)
          & v1_relat_1(X0) )
       => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
          & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
          & v1_funct_1(X0) ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f16,plain,(
    ? [X0] :
      ( ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        | ~ v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        | ~ v1_funct_1(X0) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f17,plain,(
    ? [X0] :
      ( ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        | ~ v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        | ~ v1_funct_1(X0) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f24,plain,
    ( ? [X0] :
        ( ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
          | ~ v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
          | ~ v1_funct_1(X0) )
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
   => ( ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
        | ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
        | ~ v1_funct_1(sK0) )
      & v1_funct_1(sK0)
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,
    ( ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
      | ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
      | ~ v1_funct_1(sK0) )
    & v1_funct_1(sK0)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f17,f24])).

fof(f46,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
    | ~ v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f25])).

fof(f45,plain,(
    v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f25])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f35,plain,(
    ! [X0] :
      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f44,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f25])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f20])).

fof(f32,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f21])).

fof(f49,plain,(
    ! [X0] : k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0) ),
    inference(equality_resolution,[],[f32])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_xboole_0 != X2
      | k1_xboole_0 = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f51,plain,(
    ! [X0,X1] :
      ( v1_funct_2(k1_xboole_0,X0,X1)
      | k1_xboole_0 = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(equality_resolution,[],[f43])).

fof(f52,plain,(
    ! [X0] :
      ( v1_funct_2(k1_xboole_0,X0,k1_xboole_0)
      | k1_xboole_0 = X0
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))) ) ),
    inference(equality_resolution,[],[f51])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f18])).

fof(f28,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 != X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f54,plain,(
    ! [X2,X1] :
      ( v1_funct_2(X2,k1_xboole_0,X1)
      | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ) ),
    inference(equality_resolution,[],[f41])).

fof(f31,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f21])).

fof(f50,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f31])).

cnf(c_7,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_766,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_15,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) != X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_18,negated_conjecture,
    ( ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
    | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_19,negated_conjecture,
    ( v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_106,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_18,c_19])).

cnf(c_107,negated_conjecture,
    ( ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
    | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) ),
    inference(renaming,[status(thm)],[c_106])).

cnf(c_313,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | k1_relset_1(X1,X2,X0) != X1
    | k2_relat_1(sK0) != X2
    | k1_relat_1(sK0) != X1
    | sK0 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_107])).

cnf(c_314,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | k1_relset_1(k1_relat_1(sK0),k2_relat_1(sK0),sK0) != k1_relat_1(sK0)
    | k1_xboole_0 = k2_relat_1(sK0) ),
    inference(unflattening,[status(thm)],[c_313])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_322,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | k1_xboole_0 = k2_relat_1(sK0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_314,c_11])).

cnf(c_759,plain,
    ( k1_xboole_0 = k2_relat_1(sK0)
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_322])).

cnf(c_1105,plain,
    ( k2_relat_1(sK0) = k1_xboole_0
    | r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_766,c_759])).

cnf(c_9,plain,
    ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_20,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_253,plain,
    ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_20])).

cnf(c_254,plain,
    ( r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) ),
    inference(unflattening,[status(thm)],[c_253])).

cnf(c_255,plain,
    ( r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_254])).

cnf(c_1212,plain,
    ( k2_relat_1(sK0) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1105,c_255])).

cnf(c_762,plain,
    ( r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_254])).

cnf(c_1218,plain,
    ( r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1212,c_762])).

cnf(c_4,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1220,plain,
    ( r1_tarski(sK0,k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1218,c_4])).

cnf(c_763,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1115,plain,
    ( k1_relset_1(X0,k1_xboole_0,X1) = k1_relat_1(X1)
    | m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4,c_763])).

cnf(c_1393,plain,
    ( k1_relset_1(X0,k1_xboole_0,X1) = k1_relat_1(X1)
    | r1_tarski(X1,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_766,c_1115])).

cnf(c_1402,plain,
    ( k1_relset_1(X0,k1_xboole_0,sK0) = k1_relat_1(sK0) ),
    inference(superposition,[status(thm)],[c_1220,c_1393])).

cnf(c_12,plain,
    ( v1_funct_2(k1_xboole_0,X0,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_270,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
    | k2_relat_1(sK0) != k1_xboole_0
    | k1_relat_1(sK0) != X0
    | sK0 != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_107])).

cnf(c_271,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0)))
    | k2_relat_1(sK0) != k1_xboole_0
    | sK0 != k1_xboole_0
    | k1_xboole_0 = k1_relat_1(sK0) ),
    inference(unflattening,[status(thm)],[c_270])).

cnf(c_761,plain,
    ( k2_relat_1(sK0) != k1_xboole_0
    | sK0 != k1_xboole_0
    | k1_xboole_0 = k1_relat_1(sK0)
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_271])).

cnf(c_821,plain,
    ( k2_relat_1(sK0) != k1_xboole_0
    | k1_relat_1(sK0) = k1_xboole_0
    | sK0 != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_761,c_4])).

cnf(c_55,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))
    | ~ r1_tarski(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_3,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_60,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_835,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))
    | k2_relat_1(sK0) != k1_xboole_0
    | k1_relat_1(sK0) = k1_xboole_0
    | sK0 != k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_821])).

cnf(c_861,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_887,plain,
    ( k2_relat_1(sK0) != k1_xboole_0
    | k1_relat_1(sK0) = k1_xboole_0
    | sK0 != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_821,c_55,c_60,c_254,c_835,c_861])).

cnf(c_1215,plain,
    ( k1_relat_1(sK0) = k1_xboole_0
    | sK0 != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1212,c_887])).

cnf(c_1228,plain,
    ( k1_relat_1(sK0) = k1_xboole_0
    | sK0 != k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_1215])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f28])).

cnf(c_864,plain,
    ( ~ r1_tarski(sK0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,sK0)
    | sK0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_1234,plain,
    ( r1_tarski(sK0,k1_xboole_0) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1220])).

cnf(c_1313,plain,
    ( r1_tarski(k1_xboole_0,sK0) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1337,plain,
    ( k1_relat_1(sK0) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1228,c_255,c_864,c_887,c_1105,c_1234,c_1313])).

cnf(c_1404,plain,
    ( k1_relset_1(X0,k1_xboole_0,sK0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1402,c_1337])).

cnf(c_1409,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1404])).

cnf(c_14,plain,
    ( v1_funct_2(X0,k1_xboole_0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_297,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0
    | k2_relat_1(sK0) != X1
    | k1_relat_1(sK0) != k1_xboole_0
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_107])).

cnf(c_298,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0))))
    | k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_297])).

cnf(c_760,plain,
    ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_298])).

cnf(c_5,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_812,plain,
    ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
    | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_760,c_5])).

cnf(c_862,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) = iProver_top
    | r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_861])).

cnf(c_879,plain,
    ( k1_relat_1(sK0) != k1_xboole_0
    | k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_812,c_255,c_862])).

cnf(c_880,plain,
    ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_879])).

cnf(c_1216,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1212,c_880])).

cnf(c_985,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0))
    | ~ r1_tarski(sK0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_986,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) = iProver_top
    | r1_tarski(sK0,k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_985])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1409,c_1313,c_1234,c_1220,c_1216,c_1105,c_986,c_887,c_864,c_255])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:21:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.34/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.34/0.98  
% 2.34/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.34/0.98  
% 2.34/0.98  ------  iProver source info
% 2.34/0.98  
% 2.34/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.34/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.34/0.98  git: non_committed_changes: false
% 2.34/0.98  git: last_make_outside_of_git: false
% 2.34/0.98  
% 2.34/0.98  ------ 
% 2.34/0.98  
% 2.34/0.98  ------ Input Options
% 2.34/0.98  
% 2.34/0.98  --out_options                           all
% 2.34/0.98  --tptp_safe_out                         true
% 2.34/0.98  --problem_path                          ""
% 2.34/0.98  --include_path                          ""
% 2.34/0.98  --clausifier                            res/vclausify_rel
% 2.34/0.98  --clausifier_options                    --mode clausify
% 2.34/0.98  --stdin                                 false
% 2.34/0.98  --stats_out                             all
% 2.34/0.98  
% 2.34/0.98  ------ General Options
% 2.34/0.98  
% 2.34/0.98  --fof                                   false
% 2.34/0.98  --time_out_real                         305.
% 2.34/0.98  --time_out_virtual                      -1.
% 2.34/0.98  --symbol_type_check                     false
% 2.34/0.98  --clausify_out                          false
% 2.34/0.98  --sig_cnt_out                           false
% 2.34/0.98  --trig_cnt_out                          false
% 2.34/0.98  --trig_cnt_out_tolerance                1.
% 2.34/0.98  --trig_cnt_out_sk_spl                   false
% 2.34/0.98  --abstr_cl_out                          false
% 2.34/0.98  
% 2.34/0.98  ------ Global Options
% 2.34/0.98  
% 2.34/0.98  --schedule                              default
% 2.34/0.98  --add_important_lit                     false
% 2.34/0.98  --prop_solver_per_cl                    1000
% 2.34/0.98  --min_unsat_core                        false
% 2.34/0.98  --soft_assumptions                      false
% 2.34/0.98  --soft_lemma_size                       3
% 2.34/0.98  --prop_impl_unit_size                   0
% 2.34/0.98  --prop_impl_unit                        []
% 2.34/0.98  --share_sel_clauses                     true
% 2.34/0.98  --reset_solvers                         false
% 2.34/0.98  --bc_imp_inh                            [conj_cone]
% 2.34/0.98  --conj_cone_tolerance                   3.
% 2.34/0.98  --extra_neg_conj                        none
% 2.34/0.98  --large_theory_mode                     true
% 2.34/0.98  --prolific_symb_bound                   200
% 2.34/0.98  --lt_threshold                          2000
% 2.34/0.98  --clause_weak_htbl                      true
% 2.34/0.98  --gc_record_bc_elim                     false
% 2.34/0.98  
% 2.34/0.98  ------ Preprocessing Options
% 2.34/0.98  
% 2.34/0.98  --preprocessing_flag                    true
% 2.34/0.98  --time_out_prep_mult                    0.1
% 2.34/0.98  --splitting_mode                        input
% 2.34/0.98  --splitting_grd                         true
% 2.34/0.98  --splitting_cvd                         false
% 2.34/0.98  --splitting_cvd_svl                     false
% 2.34/0.98  --splitting_nvd                         32
% 2.34/0.98  --sub_typing                            true
% 2.34/0.98  --prep_gs_sim                           true
% 2.34/0.98  --prep_unflatten                        true
% 2.34/0.98  --prep_res_sim                          true
% 2.34/0.98  --prep_upred                            true
% 2.34/0.98  --prep_sem_filter                       exhaustive
% 2.34/0.98  --prep_sem_filter_out                   false
% 2.34/0.98  --pred_elim                             true
% 2.34/0.98  --res_sim_input                         true
% 2.34/0.98  --eq_ax_congr_red                       true
% 2.34/0.98  --pure_diseq_elim                       true
% 2.34/0.98  --brand_transform                       false
% 2.34/0.98  --non_eq_to_eq                          false
% 2.34/0.98  --prep_def_merge                        true
% 2.34/0.98  --prep_def_merge_prop_impl              false
% 2.34/0.98  --prep_def_merge_mbd                    true
% 2.34/0.98  --prep_def_merge_tr_red                 false
% 2.34/0.98  --prep_def_merge_tr_cl                  false
% 2.34/0.98  --smt_preprocessing                     true
% 2.34/0.98  --smt_ac_axioms                         fast
% 2.34/0.98  --preprocessed_out                      false
% 2.34/0.98  --preprocessed_stats                    false
% 2.34/0.98  
% 2.34/0.98  ------ Abstraction refinement Options
% 2.34/0.98  
% 2.34/0.98  --abstr_ref                             []
% 2.34/0.98  --abstr_ref_prep                        false
% 2.34/0.98  --abstr_ref_until_sat                   false
% 2.34/0.98  --abstr_ref_sig_restrict                funpre
% 2.34/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.34/0.98  --abstr_ref_under                       []
% 2.34/0.98  
% 2.34/0.98  ------ SAT Options
% 2.34/0.98  
% 2.34/0.98  --sat_mode                              false
% 2.34/0.98  --sat_fm_restart_options                ""
% 2.34/0.98  --sat_gr_def                            false
% 2.34/0.98  --sat_epr_types                         true
% 2.34/0.98  --sat_non_cyclic_types                  false
% 2.34/0.98  --sat_finite_models                     false
% 2.34/0.98  --sat_fm_lemmas                         false
% 2.34/0.98  --sat_fm_prep                           false
% 2.34/0.98  --sat_fm_uc_incr                        true
% 2.34/0.98  --sat_out_model                         small
% 2.34/0.98  --sat_out_clauses                       false
% 2.34/0.98  
% 2.34/0.98  ------ QBF Options
% 2.34/0.98  
% 2.34/0.98  --qbf_mode                              false
% 2.34/0.98  --qbf_elim_univ                         false
% 2.34/0.98  --qbf_dom_inst                          none
% 2.34/0.98  --qbf_dom_pre_inst                      false
% 2.34/0.98  --qbf_sk_in                             false
% 2.34/0.98  --qbf_pred_elim                         true
% 2.34/0.98  --qbf_split                             512
% 2.34/0.98  
% 2.34/0.98  ------ BMC1 Options
% 2.34/0.98  
% 2.34/0.98  --bmc1_incremental                      false
% 2.34/0.98  --bmc1_axioms                           reachable_all
% 2.34/0.98  --bmc1_min_bound                        0
% 2.34/0.98  --bmc1_max_bound                        -1
% 2.34/0.98  --bmc1_max_bound_default                -1
% 2.34/0.98  --bmc1_symbol_reachability              true
% 2.34/0.98  --bmc1_property_lemmas                  false
% 2.34/0.98  --bmc1_k_induction                      false
% 2.34/0.98  --bmc1_non_equiv_states                 false
% 2.34/0.98  --bmc1_deadlock                         false
% 2.34/0.98  --bmc1_ucm                              false
% 2.34/0.98  --bmc1_add_unsat_core                   none
% 2.34/0.98  --bmc1_unsat_core_children              false
% 2.34/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.34/0.98  --bmc1_out_stat                         full
% 2.34/0.98  --bmc1_ground_init                      false
% 2.34/0.98  --bmc1_pre_inst_next_state              false
% 2.34/0.98  --bmc1_pre_inst_state                   false
% 2.34/0.98  --bmc1_pre_inst_reach_state             false
% 2.34/0.98  --bmc1_out_unsat_core                   false
% 2.34/0.98  --bmc1_aig_witness_out                  false
% 2.34/0.98  --bmc1_verbose                          false
% 2.34/0.98  --bmc1_dump_clauses_tptp                false
% 2.34/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.34/0.98  --bmc1_dump_file                        -
% 2.34/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.34/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.34/0.98  --bmc1_ucm_extend_mode                  1
% 2.34/0.98  --bmc1_ucm_init_mode                    2
% 2.34/0.98  --bmc1_ucm_cone_mode                    none
% 2.34/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.34/0.98  --bmc1_ucm_relax_model                  4
% 2.34/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.34/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.34/0.98  --bmc1_ucm_layered_model                none
% 2.34/0.98  --bmc1_ucm_max_lemma_size               10
% 2.34/0.98  
% 2.34/0.98  ------ AIG Options
% 2.34/0.98  
% 2.34/0.98  --aig_mode                              false
% 2.34/0.98  
% 2.34/0.98  ------ Instantiation Options
% 2.34/0.98  
% 2.34/0.98  --instantiation_flag                    true
% 2.34/0.98  --inst_sos_flag                         false
% 2.34/0.98  --inst_sos_phase                        true
% 2.34/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.34/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.34/0.98  --inst_lit_sel_side                     num_symb
% 2.34/0.98  --inst_solver_per_active                1400
% 2.34/0.98  --inst_solver_calls_frac                1.
% 2.34/0.98  --inst_passive_queue_type               priority_queues
% 2.34/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.34/0.98  --inst_passive_queues_freq              [25;2]
% 2.34/0.98  --inst_dismatching                      true
% 2.34/0.98  --inst_eager_unprocessed_to_passive     true
% 2.34/0.98  --inst_prop_sim_given                   true
% 2.34/0.98  --inst_prop_sim_new                     false
% 2.34/0.98  --inst_subs_new                         false
% 2.34/0.98  --inst_eq_res_simp                      false
% 2.34/0.98  --inst_subs_given                       false
% 2.34/0.98  --inst_orphan_elimination               true
% 2.34/0.98  --inst_learning_loop_flag               true
% 2.34/0.98  --inst_learning_start                   3000
% 2.34/0.98  --inst_learning_factor                  2
% 2.34/0.98  --inst_start_prop_sim_after_learn       3
% 2.34/0.98  --inst_sel_renew                        solver
% 2.34/0.98  --inst_lit_activity_flag                true
% 2.34/0.98  --inst_restr_to_given                   false
% 2.34/0.98  --inst_activity_threshold               500
% 2.34/0.98  --inst_out_proof                        true
% 2.34/0.98  
% 2.34/0.98  ------ Resolution Options
% 2.34/0.98  
% 2.34/0.98  --resolution_flag                       true
% 2.34/0.98  --res_lit_sel                           adaptive
% 2.34/0.98  --res_lit_sel_side                      none
% 2.34/0.98  --res_ordering                          kbo
% 2.34/0.98  --res_to_prop_solver                    active
% 2.34/0.98  --res_prop_simpl_new                    false
% 2.34/0.98  --res_prop_simpl_given                  true
% 2.34/0.98  --res_passive_queue_type                priority_queues
% 2.34/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.34/0.98  --res_passive_queues_freq               [15;5]
% 2.34/0.98  --res_forward_subs                      full
% 2.34/0.98  --res_backward_subs                     full
% 2.34/0.98  --res_forward_subs_resolution           true
% 2.34/0.98  --res_backward_subs_resolution          true
% 2.34/0.98  --res_orphan_elimination                true
% 2.34/0.98  --res_time_limit                        2.
% 2.34/0.98  --res_out_proof                         true
% 2.34/0.98  
% 2.34/0.98  ------ Superposition Options
% 2.34/0.98  
% 2.34/0.98  --superposition_flag                    true
% 2.34/0.98  --sup_passive_queue_type                priority_queues
% 2.34/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.34/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.34/0.98  --demod_completeness_check              fast
% 2.34/0.98  --demod_use_ground                      true
% 2.34/0.98  --sup_to_prop_solver                    passive
% 2.34/0.98  --sup_prop_simpl_new                    true
% 2.34/0.98  --sup_prop_simpl_given                  true
% 2.34/0.98  --sup_fun_splitting                     false
% 2.34/0.98  --sup_smt_interval                      50000
% 2.34/0.98  
% 2.34/0.98  ------ Superposition Simplification Setup
% 2.34/0.98  
% 2.34/0.98  --sup_indices_passive                   []
% 2.34/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.34/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.34/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.34/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.34/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.34/0.98  --sup_full_bw                           [BwDemod]
% 2.34/0.98  --sup_immed_triv                        [TrivRules]
% 2.34/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.34/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.34/0.98  --sup_immed_bw_main                     []
% 2.34/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.34/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.34/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.34/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.34/0.98  
% 2.34/0.98  ------ Combination Options
% 2.34/0.98  
% 2.34/0.98  --comb_res_mult                         3
% 2.34/0.98  --comb_sup_mult                         2
% 2.34/0.98  --comb_inst_mult                        10
% 2.34/0.98  
% 2.34/0.98  ------ Debug Options
% 2.34/0.98  
% 2.34/0.98  --dbg_backtrace                         false
% 2.34/0.98  --dbg_dump_prop_clauses                 false
% 2.34/0.98  --dbg_dump_prop_clauses_file            -
% 2.34/0.98  --dbg_out_stat                          false
% 2.34/0.98  ------ Parsing...
% 2.34/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.34/0.98  
% 2.34/0.98  ------ Preprocessing... sf_s  rm: 3 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 2.34/0.98  
% 2.34/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.34/0.98  
% 2.34/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.34/0.98  ------ Proving...
% 2.34/0.98  ------ Problem Properties 
% 2.34/0.98  
% 2.34/0.98  
% 2.34/0.98  clauses                                 14
% 2.34/0.98  conjectures                             0
% 2.34/0.98  EPR                                     3
% 2.34/0.98  Horn                                    13
% 2.34/0.98  unary                                   5
% 2.34/0.98  binary                                  5
% 2.34/0.98  lits                                    30
% 2.34/0.98  lits eq                                 13
% 2.34/0.98  fd_pure                                 0
% 2.34/0.98  fd_pseudo                               0
% 2.34/0.98  fd_cond                                 1
% 2.34/0.98  fd_pseudo_cond                          1
% 2.34/0.98  AC symbols                              0
% 2.34/0.98  
% 2.34/0.98  ------ Schedule dynamic 5 is on 
% 2.34/0.98  
% 2.34/0.98  ------ no conjectures: strip conj schedule 
% 2.34/0.98  
% 2.34/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" stripped conjectures Time Limit: 10.
% 2.34/0.98  
% 2.34/0.98  
% 2.34/0.98  ------ 
% 2.34/0.98  Current options:
% 2.34/0.98  ------ 
% 2.34/0.98  
% 2.34/0.98  ------ Input Options
% 2.34/0.98  
% 2.34/0.98  --out_options                           all
% 2.34/0.98  --tptp_safe_out                         true
% 2.34/0.98  --problem_path                          ""
% 2.34/0.98  --include_path                          ""
% 2.34/0.98  --clausifier                            res/vclausify_rel
% 2.34/0.98  --clausifier_options                    --mode clausify
% 2.34/0.98  --stdin                                 false
% 2.34/0.98  --stats_out                             all
% 2.34/0.98  
% 2.34/0.98  ------ General Options
% 2.34/0.98  
% 2.34/0.98  --fof                                   false
% 2.34/0.98  --time_out_real                         305.
% 2.34/0.98  --time_out_virtual                      -1.
% 2.34/0.98  --symbol_type_check                     false
% 2.34/0.98  --clausify_out                          false
% 2.34/0.98  --sig_cnt_out                           false
% 2.34/0.98  --trig_cnt_out                          false
% 2.34/0.98  --trig_cnt_out_tolerance                1.
% 2.34/0.98  --trig_cnt_out_sk_spl                   false
% 2.34/0.98  --abstr_cl_out                          false
% 2.34/0.98  
% 2.34/0.98  ------ Global Options
% 2.34/0.98  
% 2.34/0.98  --schedule                              default
% 2.34/0.98  --add_important_lit                     false
% 2.34/0.98  --prop_solver_per_cl                    1000
% 2.34/0.98  --min_unsat_core                        false
% 2.34/0.98  --soft_assumptions                      false
% 2.34/0.98  --soft_lemma_size                       3
% 2.34/0.98  --prop_impl_unit_size                   0
% 2.34/0.98  --prop_impl_unit                        []
% 2.34/0.98  --share_sel_clauses                     true
% 2.34/0.98  --reset_solvers                         false
% 2.34/0.98  --bc_imp_inh                            [conj_cone]
% 2.34/0.98  --conj_cone_tolerance                   3.
% 2.34/0.98  --extra_neg_conj                        none
% 2.34/0.98  --large_theory_mode                     true
% 2.34/0.98  --prolific_symb_bound                   200
% 2.34/0.98  --lt_threshold                          2000
% 2.34/0.98  --clause_weak_htbl                      true
% 2.34/0.98  --gc_record_bc_elim                     false
% 2.34/0.98  
% 2.34/0.98  ------ Preprocessing Options
% 2.34/0.98  
% 2.34/0.98  --preprocessing_flag                    true
% 2.34/0.98  --time_out_prep_mult                    0.1
% 2.34/0.98  --splitting_mode                        input
% 2.34/0.98  --splitting_grd                         true
% 2.34/0.98  --splitting_cvd                         false
% 2.34/0.98  --splitting_cvd_svl                     false
% 2.34/0.98  --splitting_nvd                         32
% 2.34/0.98  --sub_typing                            true
% 2.34/0.98  --prep_gs_sim                           true
% 2.34/0.98  --prep_unflatten                        true
% 2.34/0.98  --prep_res_sim                          true
% 2.34/0.98  --prep_upred                            true
% 2.34/0.98  --prep_sem_filter                       exhaustive
% 2.34/0.98  --prep_sem_filter_out                   false
% 2.34/0.98  --pred_elim                             true
% 2.34/0.98  --res_sim_input                         true
% 2.34/0.98  --eq_ax_congr_red                       true
% 2.34/0.98  --pure_diseq_elim                       true
% 2.34/0.98  --brand_transform                       false
% 2.34/0.98  --non_eq_to_eq                          false
% 2.34/0.98  --prep_def_merge                        true
% 2.34/0.98  --prep_def_merge_prop_impl              false
% 2.34/0.98  --prep_def_merge_mbd                    true
% 2.34/0.98  --prep_def_merge_tr_red                 false
% 2.34/0.98  --prep_def_merge_tr_cl                  false
% 2.34/0.98  --smt_preprocessing                     true
% 2.34/0.98  --smt_ac_axioms                         fast
% 2.34/0.98  --preprocessed_out                      false
% 2.34/0.98  --preprocessed_stats                    false
% 2.34/0.98  
% 2.34/0.98  ------ Abstraction refinement Options
% 2.34/0.98  
% 2.34/0.98  --abstr_ref                             []
% 2.34/0.98  --abstr_ref_prep                        false
% 2.34/0.98  --abstr_ref_until_sat                   false
% 2.34/0.98  --abstr_ref_sig_restrict                funpre
% 2.34/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.34/0.98  --abstr_ref_under                       []
% 2.34/0.98  
% 2.34/0.98  ------ SAT Options
% 2.34/0.98  
% 2.34/0.98  --sat_mode                              false
% 2.34/0.98  --sat_fm_restart_options                ""
% 2.34/0.98  --sat_gr_def                            false
% 2.34/0.98  --sat_epr_types                         true
% 2.34/0.98  --sat_non_cyclic_types                  false
% 2.34/0.98  --sat_finite_models                     false
% 2.34/0.98  --sat_fm_lemmas                         false
% 2.34/0.98  --sat_fm_prep                           false
% 2.34/0.98  --sat_fm_uc_incr                        true
% 2.34/0.98  --sat_out_model                         small
% 2.34/0.98  --sat_out_clauses                       false
% 2.34/0.98  
% 2.34/0.98  ------ QBF Options
% 2.34/0.98  
% 2.34/0.98  --qbf_mode                              false
% 2.34/0.98  --qbf_elim_univ                         false
% 2.34/0.98  --qbf_dom_inst                          none
% 2.34/0.98  --qbf_dom_pre_inst                      false
% 2.34/0.98  --qbf_sk_in                             false
% 2.34/0.98  --qbf_pred_elim                         true
% 2.34/0.98  --qbf_split                             512
% 2.34/0.98  
% 2.34/0.98  ------ BMC1 Options
% 2.34/0.98  
% 2.34/0.98  --bmc1_incremental                      false
% 2.34/0.98  --bmc1_axioms                           reachable_all
% 2.34/0.98  --bmc1_min_bound                        0
% 2.34/0.98  --bmc1_max_bound                        -1
% 2.34/0.98  --bmc1_max_bound_default                -1
% 2.34/0.98  --bmc1_symbol_reachability              true
% 2.34/0.98  --bmc1_property_lemmas                  false
% 2.34/0.98  --bmc1_k_induction                      false
% 2.34/0.98  --bmc1_non_equiv_states                 false
% 2.34/0.98  --bmc1_deadlock                         false
% 2.34/0.98  --bmc1_ucm                              false
% 2.34/0.98  --bmc1_add_unsat_core                   none
% 2.34/0.98  --bmc1_unsat_core_children              false
% 2.34/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.34/0.98  --bmc1_out_stat                         full
% 2.34/0.98  --bmc1_ground_init                      false
% 2.34/0.98  --bmc1_pre_inst_next_state              false
% 2.34/0.98  --bmc1_pre_inst_state                   false
% 2.34/0.98  --bmc1_pre_inst_reach_state             false
% 2.34/0.98  --bmc1_out_unsat_core                   false
% 2.34/0.98  --bmc1_aig_witness_out                  false
% 2.34/0.98  --bmc1_verbose                          false
% 2.34/0.98  --bmc1_dump_clauses_tptp                false
% 2.34/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.34/0.98  --bmc1_dump_file                        -
% 2.34/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.34/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.34/0.98  --bmc1_ucm_extend_mode                  1
% 2.34/0.98  --bmc1_ucm_init_mode                    2
% 2.34/0.98  --bmc1_ucm_cone_mode                    none
% 2.34/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.34/0.98  --bmc1_ucm_relax_model                  4
% 2.34/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.34/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.34/0.98  --bmc1_ucm_layered_model                none
% 2.34/0.98  --bmc1_ucm_max_lemma_size               10
% 2.34/0.98  
% 2.34/0.98  ------ AIG Options
% 2.34/0.98  
% 2.34/0.98  --aig_mode                              false
% 2.34/0.98  
% 2.34/0.98  ------ Instantiation Options
% 2.34/0.98  
% 2.34/0.98  --instantiation_flag                    true
% 2.34/0.98  --inst_sos_flag                         false
% 2.34/0.98  --inst_sos_phase                        true
% 2.34/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.34/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.34/0.98  --inst_lit_sel_side                     none
% 2.34/0.98  --inst_solver_per_active                1400
% 2.34/0.98  --inst_solver_calls_frac                1.
% 2.34/0.98  --inst_passive_queue_type               priority_queues
% 2.34/0.98  --inst_passive_queues                   [[-num_var];[+age;-num_symb]]
% 2.34/0.98  --inst_passive_queues_freq              [25;2]
% 2.34/0.98  --inst_dismatching                      true
% 2.34/0.98  --inst_eager_unprocessed_to_passive     true
% 2.34/0.98  --inst_prop_sim_given                   true
% 2.34/0.98  --inst_prop_sim_new                     false
% 2.34/0.98  --inst_subs_new                         false
% 2.34/0.98  --inst_eq_res_simp                      false
% 2.34/0.98  --inst_subs_given                       false
% 2.34/0.98  --inst_orphan_elimination               true
% 2.34/0.98  --inst_learning_loop_flag               true
% 2.34/0.98  --inst_learning_start                   3000
% 2.34/0.98  --inst_learning_factor                  2
% 2.34/0.98  --inst_start_prop_sim_after_learn       3
% 2.34/0.98  --inst_sel_renew                        solver
% 2.34/0.98  --inst_lit_activity_flag                true
% 2.34/0.98  --inst_restr_to_given                   false
% 2.34/0.98  --inst_activity_threshold               500
% 2.34/0.98  --inst_out_proof                        true
% 2.34/0.98  
% 2.34/0.98  ------ Resolution Options
% 2.34/0.98  
% 2.34/0.98  --resolution_flag                       false
% 2.34/0.98  --res_lit_sel                           adaptive
% 2.34/0.98  --res_lit_sel_side                      none
% 2.34/0.98  --res_ordering                          kbo
% 2.34/0.98  --res_to_prop_solver                    active
% 2.34/0.98  --res_prop_simpl_new                    false
% 2.34/0.98  --res_prop_simpl_given                  true
% 2.34/0.98  --res_passive_queue_type                priority_queues
% 2.34/0.98  --res_passive_queues                    [[-num_symb];[+age;-num_symb]]
% 2.34/0.98  --res_passive_queues_freq               [15;5]
% 2.34/0.98  --res_forward_subs                      full
% 2.34/0.98  --res_backward_subs                     full
% 2.34/0.98  --res_forward_subs_resolution           true
% 2.34/0.98  --res_backward_subs_resolution          true
% 2.34/0.98  --res_orphan_elimination                true
% 2.34/0.98  --res_time_limit                        2.
% 2.34/0.98  --res_out_proof                         true
% 2.34/0.98  
% 2.34/0.98  ------ Superposition Options
% 2.34/0.98  
% 2.34/0.98  --superposition_flag                    true
% 2.34/0.98  --sup_passive_queue_type                priority_queues
% 2.34/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.34/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.34/0.98  --demod_completeness_check              fast
% 2.34/0.98  --demod_use_ground                      true
% 2.34/0.98  --sup_to_prop_solver                    passive
% 2.34/0.98  --sup_prop_simpl_new                    true
% 2.34/0.98  --sup_prop_simpl_given                  true
% 2.34/0.98  --sup_fun_splitting                     false
% 2.34/0.98  --sup_smt_interval                      50000
% 2.34/0.98  
% 2.34/0.98  ------ Superposition Simplification Setup
% 2.34/0.98  
% 2.34/0.98  --sup_indices_passive                   []
% 2.34/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.34/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.34/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.34/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.34/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.34/0.98  --sup_full_bw                           [BwDemod]
% 2.34/0.98  --sup_immed_triv                        [TrivRules]
% 2.34/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.34/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.34/0.98  --sup_immed_bw_main                     []
% 2.34/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.34/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.34/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.34/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.34/0.98  
% 2.34/0.98  ------ Combination Options
% 2.34/0.98  
% 2.34/0.98  --comb_res_mult                         3
% 2.34/0.98  --comb_sup_mult                         2
% 2.34/0.98  --comb_inst_mult                        10
% 2.34/0.98  
% 2.34/0.98  ------ Debug Options
% 2.34/0.98  
% 2.34/0.98  --dbg_backtrace                         false
% 2.34/0.98  --dbg_dump_prop_clauses                 false
% 2.34/0.98  --dbg_dump_prop_clauses_file            -
% 2.34/0.98  --dbg_out_stat                          false
% 2.34/0.98  
% 2.34/0.98  
% 2.34/0.98  
% 2.34/0.98  
% 2.34/0.98  ------ Proving...
% 2.34/0.98  
% 2.34/0.98  
% 2.34/0.98  % SZS status Theorem for theBenchmark.p
% 2.34/0.98  
% 2.34/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.34/0.98  
% 2.34/0.98  fof(f4,axiom,(
% 2.34/0.98    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.34/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.34/0.98  
% 2.34/0.98  fof(f22,plain,(
% 2.34/0.98    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.34/0.98    inference(nnf_transformation,[],[f4])).
% 2.34/0.98  
% 2.34/0.98  fof(f34,plain,(
% 2.34/0.98    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.34/0.98    inference(cnf_transformation,[],[f22])).
% 2.34/0.98  
% 2.34/0.98  fof(f8,axiom,(
% 2.34/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.34/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.34/0.98  
% 2.34/0.98  fof(f14,plain,(
% 2.34/0.98    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.34/0.98    inference(ennf_transformation,[],[f8])).
% 2.34/0.98  
% 2.34/0.98  fof(f15,plain,(
% 2.34/0.98    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.34/0.98    inference(flattening,[],[f14])).
% 2.34/0.98  
% 2.34/0.98  fof(f23,plain,(
% 2.34/0.98    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.34/0.98    inference(nnf_transformation,[],[f15])).
% 2.34/0.98  
% 2.34/0.98  fof(f40,plain,(
% 2.34/0.98    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.34/0.98    inference(cnf_transformation,[],[f23])).
% 2.34/0.98  
% 2.34/0.98  fof(f9,conjecture,(
% 2.34/0.98    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 2.34/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.34/0.98  
% 2.34/0.98  fof(f10,negated_conjecture,(
% 2.34/0.98    ~! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 2.34/0.98    inference(negated_conjecture,[],[f9])).
% 2.34/0.98  
% 2.34/0.98  fof(f16,plain,(
% 2.34/0.98    ? [X0] : ((~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0)) & (v1_funct_1(X0) & v1_relat_1(X0)))),
% 2.34/0.98    inference(ennf_transformation,[],[f10])).
% 2.34/0.98  
% 2.34/0.98  fof(f17,plain,(
% 2.34/0.98    ? [X0] : ((~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0)) & v1_funct_1(X0) & v1_relat_1(X0))),
% 2.34/0.98    inference(flattening,[],[f16])).
% 2.34/0.98  
% 2.34/0.98  fof(f24,plain,(
% 2.34/0.98    ? [X0] : ((~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0)) & v1_funct_1(X0) & v1_relat_1(X0)) => ((~m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) | ~v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) | ~v1_funct_1(sK0)) & v1_funct_1(sK0) & v1_relat_1(sK0))),
% 2.34/0.98    introduced(choice_axiom,[])).
% 2.34/0.98  
% 2.34/0.98  fof(f25,plain,(
% 2.34/0.98    (~m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) | ~v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) | ~v1_funct_1(sK0)) & v1_funct_1(sK0) & v1_relat_1(sK0)),
% 2.34/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f17,f24])).
% 2.34/0.98  
% 2.34/0.98  fof(f46,plain,(
% 2.34/0.98    ~m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) | ~v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) | ~v1_funct_1(sK0)),
% 2.34/0.98    inference(cnf_transformation,[],[f25])).
% 2.34/0.98  
% 2.34/0.98  fof(f45,plain,(
% 2.34/0.98    v1_funct_1(sK0)),
% 2.34/0.98    inference(cnf_transformation,[],[f25])).
% 2.34/0.98  
% 2.34/0.98  fof(f7,axiom,(
% 2.34/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.34/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.34/0.98  
% 2.34/0.98  fof(f13,plain,(
% 2.34/0.98    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.34/0.98    inference(ennf_transformation,[],[f7])).
% 2.34/0.98  
% 2.34/0.98  fof(f37,plain,(
% 2.34/0.98    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.34/0.98    inference(cnf_transformation,[],[f13])).
% 2.34/0.98  
% 2.34/0.98  fof(f5,axiom,(
% 2.34/0.98    ! [X0] : (v1_relat_1(X0) => r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))),
% 2.34/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.34/0.98  
% 2.34/0.98  fof(f11,plain,(
% 2.34/0.98    ! [X0] : (r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) | ~v1_relat_1(X0))),
% 2.34/0.98    inference(ennf_transformation,[],[f5])).
% 2.34/0.98  
% 2.34/0.98  fof(f35,plain,(
% 2.34/0.98    ( ! [X0] : (r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) | ~v1_relat_1(X0)) )),
% 2.34/0.98    inference(cnf_transformation,[],[f11])).
% 2.34/0.98  
% 2.34/0.98  fof(f44,plain,(
% 2.34/0.98    v1_relat_1(sK0)),
% 2.34/0.98    inference(cnf_transformation,[],[f25])).
% 2.34/0.98  
% 2.34/0.98  fof(f3,axiom,(
% 2.34/0.98    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.34/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.34/0.98  
% 2.34/0.98  fof(f20,plain,(
% 2.34/0.98    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 2.34/0.98    inference(nnf_transformation,[],[f3])).
% 2.34/0.98  
% 2.34/0.98  fof(f21,plain,(
% 2.34/0.98    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 2.34/0.98    inference(flattening,[],[f20])).
% 2.34/0.98  
% 2.34/0.98  fof(f32,plain,(
% 2.34/0.98    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X1) )),
% 2.34/0.98    inference(cnf_transformation,[],[f21])).
% 2.34/0.98  
% 2.34/0.98  fof(f49,plain,(
% 2.34/0.98    ( ! [X0] : (k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0)) )),
% 2.34/0.98    inference(equality_resolution,[],[f32])).
% 2.34/0.98  
% 2.34/0.98  fof(f43,plain,(
% 2.34/0.98    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2 | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.34/0.98    inference(cnf_transformation,[],[f23])).
% 2.34/0.98  
% 2.34/0.98  fof(f51,plain,(
% 2.34/0.98    ( ! [X0,X1] : (v1_funct_2(k1_xboole_0,X0,X1) | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.34/0.98    inference(equality_resolution,[],[f43])).
% 2.34/0.98  
% 2.34/0.98  fof(f52,plain,(
% 2.34/0.98    ( ! [X0] : (v1_funct_2(k1_xboole_0,X0,k1_xboole_0) | k1_xboole_0 = X0 | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))) )),
% 2.34/0.98    inference(equality_resolution,[],[f51])).
% 2.34/0.98  
% 2.34/0.98  fof(f2,axiom,(
% 2.34/0.98    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.34/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.34/0.98  
% 2.34/0.98  fof(f29,plain,(
% 2.34/0.98    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.34/0.98    inference(cnf_transformation,[],[f2])).
% 2.34/0.98  
% 2.34/0.98  fof(f1,axiom,(
% 2.34/0.98    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.34/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.34/0.98  
% 2.34/0.98  fof(f18,plain,(
% 2.34/0.98    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.34/0.98    inference(nnf_transformation,[],[f1])).
% 2.34/0.98  
% 2.34/0.98  fof(f19,plain,(
% 2.34/0.98    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.34/0.98    inference(flattening,[],[f18])).
% 2.34/0.98  
% 2.34/0.98  fof(f28,plain,(
% 2.34/0.98    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 2.34/0.98    inference(cnf_transformation,[],[f19])).
% 2.34/0.98  
% 2.34/0.98  fof(f41,plain,(
% 2.34/0.98    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 != X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.34/0.98    inference(cnf_transformation,[],[f23])).
% 2.34/0.98  
% 2.34/0.98  fof(f54,plain,(
% 2.34/0.98    ( ! [X2,X1] : (v1_funct_2(X2,k1_xboole_0,X1) | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))) )),
% 2.34/0.98    inference(equality_resolution,[],[f41])).
% 2.34/0.98  
% 2.34/0.98  fof(f31,plain,(
% 2.34/0.98    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 2.34/0.98    inference(cnf_transformation,[],[f21])).
% 2.34/0.98  
% 2.34/0.98  fof(f50,plain,(
% 2.34/0.98    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 2.34/0.98    inference(equality_resolution,[],[f31])).
% 2.34/0.98  
% 2.34/0.98  cnf(c_7,plain,
% 2.34/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.34/0.98      inference(cnf_transformation,[],[f34]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_766,plain,
% 2.34/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 2.34/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 2.34/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_15,plain,
% 2.34/0.98      ( v1_funct_2(X0,X1,X2)
% 2.34/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.34/0.98      | k1_relset_1(X1,X2,X0) != X1
% 2.34/0.98      | k1_xboole_0 = X2 ),
% 2.34/0.98      inference(cnf_transformation,[],[f40]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_18,negated_conjecture,
% 2.34/0.98      ( ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
% 2.34/0.98      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | ~ v1_funct_1(sK0) ),
% 2.34/0.98      inference(cnf_transformation,[],[f46]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_19,negated_conjecture,
% 2.34/0.98      ( v1_funct_1(sK0) ),
% 2.34/0.98      inference(cnf_transformation,[],[f45]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_106,plain,
% 2.34/0.98      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) ),
% 2.34/0.98      inference(global_propositional_subsumption,
% 2.34/0.98                [status(thm)],
% 2.34/0.98                [c_18,c_19]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_107,negated_conjecture,
% 2.34/0.98      ( ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
% 2.34/0.98      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) ),
% 2.34/0.98      inference(renaming,[status(thm)],[c_106]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_313,plain,
% 2.34/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.34/0.98      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | k1_relset_1(X1,X2,X0) != X1
% 2.34/0.98      | k2_relat_1(sK0) != X2
% 2.34/0.98      | k1_relat_1(sK0) != X1
% 2.34/0.98      | sK0 != X0
% 2.34/0.98      | k1_xboole_0 = X2 ),
% 2.34/0.98      inference(resolution_lifted,[status(thm)],[c_15,c_107]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_314,plain,
% 2.34/0.98      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | k1_relset_1(k1_relat_1(sK0),k2_relat_1(sK0),sK0) != k1_relat_1(sK0)
% 2.34/0.98      | k1_xboole_0 = k2_relat_1(sK0) ),
% 2.34/0.98      inference(unflattening,[status(thm)],[c_313]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_11,plain,
% 2.34/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.34/0.98      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.34/0.98      inference(cnf_transformation,[],[f37]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_322,plain,
% 2.34/0.98      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | k1_xboole_0 = k2_relat_1(sK0) ),
% 2.34/0.98      inference(forward_subsumption_resolution,
% 2.34/0.98                [status(thm)],
% 2.34/0.98                [c_314,c_11]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_759,plain,
% 2.34/0.98      ( k1_xboole_0 = k2_relat_1(sK0)
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top ),
% 2.34/0.98      inference(predicate_to_equality,[status(thm)],[c_322]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1105,plain,
% 2.34/0.98      ( k2_relat_1(sK0) = k1_xboole_0
% 2.34/0.98      | r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) != iProver_top ),
% 2.34/0.98      inference(superposition,[status(thm)],[c_766,c_759]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_9,plain,
% 2.34/0.98      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
% 2.34/0.98      | ~ v1_relat_1(X0) ),
% 2.34/0.98      inference(cnf_transformation,[],[f35]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_20,negated_conjecture,
% 2.34/0.98      ( v1_relat_1(sK0) ),
% 2.34/0.98      inference(cnf_transformation,[],[f44]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_253,plain,
% 2.34/0.98      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
% 2.34/0.98      | sK0 != X0 ),
% 2.34/0.98      inference(resolution_lifted,[status(thm)],[c_9,c_20]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_254,plain,
% 2.34/0.98      ( r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) ),
% 2.34/0.98      inference(unflattening,[status(thm)],[c_253]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_255,plain,
% 2.34/0.98      ( r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) = iProver_top ),
% 2.34/0.98      inference(predicate_to_equality,[status(thm)],[c_254]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1212,plain,
% 2.34/0.98      ( k2_relat_1(sK0) = k1_xboole_0 ),
% 2.34/0.98      inference(global_propositional_subsumption,
% 2.34/0.98                [status(thm)],
% 2.34/0.98                [c_1105,c_255]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_762,plain,
% 2.34/0.98      ( r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) = iProver_top ),
% 2.34/0.98      inference(predicate_to_equality,[status(thm)],[c_254]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1218,plain,
% 2.34/0.98      ( r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0)) = iProver_top ),
% 2.34/0.98      inference(demodulation,[status(thm)],[c_1212,c_762]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_4,plain,
% 2.34/0.98      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 2.34/0.98      inference(cnf_transformation,[],[f49]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1220,plain,
% 2.34/0.98      ( r1_tarski(sK0,k1_xboole_0) = iProver_top ),
% 2.34/0.98      inference(demodulation,[status(thm)],[c_1218,c_4]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_763,plain,
% 2.34/0.98      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.34/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.34/0.98      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1115,plain,
% 2.34/0.98      ( k1_relset_1(X0,k1_xboole_0,X1) = k1_relat_1(X1)
% 2.34/0.98      | m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 2.34/0.98      inference(superposition,[status(thm)],[c_4,c_763]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1393,plain,
% 2.34/0.98      ( k1_relset_1(X0,k1_xboole_0,X1) = k1_relat_1(X1)
% 2.34/0.98      | r1_tarski(X1,k1_xboole_0) != iProver_top ),
% 2.34/0.98      inference(superposition,[status(thm)],[c_766,c_1115]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1402,plain,
% 2.34/0.98      ( k1_relset_1(X0,k1_xboole_0,sK0) = k1_relat_1(sK0) ),
% 2.34/0.98      inference(superposition,[status(thm)],[c_1220,c_1393]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_12,plain,
% 2.34/0.98      ( v1_funct_2(k1_xboole_0,X0,k1_xboole_0)
% 2.34/0.98      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
% 2.34/0.98      | k1_xboole_0 = X0 ),
% 2.34/0.98      inference(cnf_transformation,[],[f52]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_270,plain,
% 2.34/0.98      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
% 2.34/0.98      | k2_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | k1_relat_1(sK0) != X0
% 2.34/0.98      | sK0 != k1_xboole_0
% 2.34/0.98      | k1_xboole_0 = X0 ),
% 2.34/0.98      inference(resolution_lifted,[status(thm)],[c_12,c_107]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_271,plain,
% 2.34/0.98      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0)))
% 2.34/0.98      | k2_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | sK0 != k1_xboole_0
% 2.34/0.98      | k1_xboole_0 = k1_relat_1(sK0) ),
% 2.34/0.98      inference(unflattening,[status(thm)],[c_270]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_761,plain,
% 2.34/0.98      ( k2_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | sK0 != k1_xboole_0
% 2.34/0.98      | k1_xboole_0 = k1_relat_1(sK0)
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
% 2.34/0.98      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))) != iProver_top ),
% 2.34/0.98      inference(predicate_to_equality,[status(thm)],[c_271]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_821,plain,
% 2.34/0.98      ( k2_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | k1_relat_1(sK0) = k1_xboole_0
% 2.34/0.98      | sK0 != k1_xboole_0
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
% 2.34/0.98      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 2.34/0.98      inference(demodulation,[status(thm)],[c_761,c_4]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_55,plain,
% 2.34/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))
% 2.34/0.98      | ~ r1_tarski(k1_xboole_0,k1_xboole_0) ),
% 2.34/0.98      inference(instantiation,[status(thm)],[c_7]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_3,plain,
% 2.34/0.98      ( r1_tarski(k1_xboole_0,X0) ),
% 2.34/0.98      inference(cnf_transformation,[],[f29]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_60,plain,
% 2.34/0.98      ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
% 2.34/0.98      inference(instantiation,[status(thm)],[c_3]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_835,plain,
% 2.34/0.98      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))
% 2.34/0.98      | k2_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | k1_relat_1(sK0) = k1_xboole_0
% 2.34/0.98      | sK0 != k1_xboole_0 ),
% 2.34/0.98      inference(predicate_to_equality_rev,[status(thm)],[c_821]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_861,plain,
% 2.34/0.98      ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | ~ r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) ),
% 2.34/0.98      inference(instantiation,[status(thm)],[c_7]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_887,plain,
% 2.34/0.98      ( k2_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | k1_relat_1(sK0) = k1_xboole_0
% 2.34/0.98      | sK0 != k1_xboole_0 ),
% 2.34/0.98      inference(global_propositional_subsumption,
% 2.34/0.98                [status(thm)],
% 2.34/0.98                [c_821,c_55,c_60,c_254,c_835,c_861]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1215,plain,
% 2.34/0.98      ( k1_relat_1(sK0) = k1_xboole_0
% 2.34/0.98      | sK0 != k1_xboole_0
% 2.34/0.98      | k1_xboole_0 != k1_xboole_0 ),
% 2.34/0.98      inference(demodulation,[status(thm)],[c_1212,c_887]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1228,plain,
% 2.34/0.98      ( k1_relat_1(sK0) = k1_xboole_0 | sK0 != k1_xboole_0 ),
% 2.34/0.98      inference(equality_resolution_simp,[status(thm)],[c_1215]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_0,plain,
% 2.34/0.98      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 2.34/0.98      inference(cnf_transformation,[],[f28]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_864,plain,
% 2.34/0.98      ( ~ r1_tarski(sK0,k1_xboole_0)
% 2.34/0.98      | ~ r1_tarski(k1_xboole_0,sK0)
% 2.34/0.98      | sK0 = k1_xboole_0 ),
% 2.34/0.98      inference(instantiation,[status(thm)],[c_0]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1234,plain,
% 2.34/0.98      ( r1_tarski(sK0,k1_xboole_0) ),
% 2.34/0.98      inference(predicate_to_equality_rev,[status(thm)],[c_1220]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1313,plain,
% 2.34/0.98      ( r1_tarski(k1_xboole_0,sK0) ),
% 2.34/0.98      inference(instantiation,[status(thm)],[c_3]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1337,plain,
% 2.34/0.98      ( k1_relat_1(sK0) = k1_xboole_0 ),
% 2.34/0.98      inference(global_propositional_subsumption,
% 2.34/0.98                [status(thm)],
% 2.34/0.98                [c_1228,c_255,c_864,c_887,c_1105,c_1234,c_1313]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1404,plain,
% 2.34/0.98      ( k1_relset_1(X0,k1_xboole_0,sK0) = k1_xboole_0 ),
% 2.34/0.98      inference(light_normalisation,[status(thm)],[c_1402,c_1337]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1409,plain,
% 2.34/0.98      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) = k1_xboole_0 ),
% 2.34/0.98      inference(instantiation,[status(thm)],[c_1404]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_14,plain,
% 2.34/0.98      ( v1_funct_2(X0,k1_xboole_0,X1)
% 2.34/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 2.34/0.98      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0 ),
% 2.34/0.98      inference(cnf_transformation,[],[f54]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_297,plain,
% 2.34/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 2.34/0.98      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0
% 2.34/0.98      | k2_relat_1(sK0) != X1
% 2.34/0.98      | k1_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | sK0 != X0 ),
% 2.34/0.98      inference(resolution_lifted,[status(thm)],[c_14,c_107]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_298,plain,
% 2.34/0.98      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 2.34/0.98      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0))))
% 2.34/0.98      | k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 2.34/0.98      | k1_relat_1(sK0) != k1_xboole_0 ),
% 2.34/0.98      inference(unflattening,[status(thm)],[c_297]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_760,plain,
% 2.34/0.98      ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 2.34/0.98      | k1_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0)))) != iProver_top ),
% 2.34/0.98      inference(predicate_to_equality,[status(thm)],[c_298]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_5,plain,
% 2.34/0.98      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 2.34/0.98      inference(cnf_transformation,[],[f50]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_812,plain,
% 2.34/0.98      ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 2.34/0.98      | k1_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 2.34/0.98      inference(demodulation,[status(thm)],[c_760,c_5]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_862,plain,
% 2.34/0.98      ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) = iProver_top
% 2.34/0.98      | r1_tarski(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) != iProver_top ),
% 2.34/0.98      inference(predicate_to_equality,[status(thm)],[c_861]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_879,plain,
% 2.34/0.98      ( k1_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 2.34/0.98      inference(global_propositional_subsumption,
% 2.34/0.98                [status(thm)],
% 2.34/0.98                [c_812,c_255,c_862]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_880,plain,
% 2.34/0.98      ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 2.34/0.98      | k1_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 2.34/0.98      inference(renaming,[status(thm)],[c_879]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_1216,plain,
% 2.34/0.98      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) != k1_xboole_0
% 2.34/0.98      | k1_relat_1(sK0) != k1_xboole_0
% 2.34/0.98      | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 2.34/0.98      inference(demodulation,[status(thm)],[c_1212,c_880]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_985,plain,
% 2.34/0.98      ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0))
% 2.34/0.98      | ~ r1_tarski(sK0,k1_xboole_0) ),
% 2.34/0.98      inference(instantiation,[status(thm)],[c_7]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(c_986,plain,
% 2.34/0.98      ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) = iProver_top
% 2.34/0.98      | r1_tarski(sK0,k1_xboole_0) != iProver_top ),
% 2.34/0.98      inference(predicate_to_equality,[status(thm)],[c_985]) ).
% 2.34/0.98  
% 2.34/0.98  cnf(contradiction,plain,
% 2.34/0.98      ( $false ),
% 2.34/0.98      inference(minisat,
% 2.34/0.98                [status(thm)],
% 2.34/0.98                [c_1409,c_1313,c_1234,c_1220,c_1216,c_1105,c_986,c_887,
% 2.34/0.98                 c_864,c_255]) ).
% 2.34/0.98  
% 2.34/0.98  
% 2.34/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 2.34/0.98  
% 2.34/0.98  ------                               Statistics
% 2.34/0.98  
% 2.34/0.98  ------ General
% 2.34/0.98  
% 2.34/0.98  abstr_ref_over_cycles:                  0
% 2.34/0.98  abstr_ref_under_cycles:                 0
% 2.34/0.98  gc_basic_clause_elim:                   0
% 2.34/0.98  forced_gc_time:                         0
% 2.34/0.98  parsing_time:                           0.01
% 2.34/0.98  unif_index_cands_time:                  0.
% 2.34/0.98  unif_index_add_time:                    0.
% 2.34/0.98  orderings_time:                         0.
% 2.34/0.98  out_proof_time:                         0.011
% 2.34/0.98  total_time:                             0.076
% 2.34/0.98  num_of_symbols:                         43
% 2.34/0.98  num_of_terms:                           1186
% 2.34/0.98  
% 2.34/0.98  ------ Preprocessing
% 2.34/0.98  
% 2.34/0.98  num_of_splits:                          0
% 2.34/0.98  num_of_split_atoms:                     0
% 2.34/0.98  num_of_reused_defs:                     0
% 2.34/0.98  num_eq_ax_congr_red:                    2
% 2.34/0.98  num_of_sem_filtered_clauses:            2
% 2.34/0.98  num_of_subtypes:                        0
% 2.34/0.98  monotx_restored_types:                  0
% 2.34/0.98  sat_num_of_epr_types:                   0
% 2.34/0.98  sat_num_of_non_cyclic_types:            0
% 2.34/0.98  sat_guarded_non_collapsed_types:        0
% 2.34/0.98  num_pure_diseq_elim:                    0
% 2.34/0.98  simp_replaced_by:                       0
% 2.34/0.98  res_preprocessed:                       81
% 2.34/0.98  prep_upred:                             0
% 2.34/0.98  prep_unflattend:                        27
% 2.34/0.98  smt_new_axioms:                         0
% 2.34/0.98  pred_elim_cands:                        2
% 2.34/0.98  pred_elim:                              2
% 2.34/0.98  pred_elim_cl:                           5
% 2.34/0.98  pred_elim_cycles:                       4
% 2.34/0.98  merged_defs:                            8
% 2.34/0.98  merged_defs_ncl:                        0
% 2.34/0.98  bin_hyper_res:                          8
% 2.34/0.98  prep_cycles:                            4
% 2.34/0.98  pred_elim_time:                         0.003
% 2.34/0.98  splitting_time:                         0.
% 2.34/0.98  sem_filter_time:                        0.
% 2.34/0.98  monotx_time:                            0.001
% 2.34/0.98  subtype_inf_time:                       0.
% 2.34/0.98  
% 2.34/0.98  ------ Problem properties
% 2.34/0.98  
% 2.34/0.98  clauses:                                14
% 2.34/0.98  conjectures:                            0
% 2.34/0.98  epr:                                    3
% 2.34/0.98  horn:                                   13
% 2.34/0.98  ground:                                 4
% 2.34/0.98  unary:                                  5
% 2.34/0.98  binary:                                 5
% 2.34/0.98  lits:                                   30
% 2.34/0.98  lits_eq:                                13
% 2.34/0.98  fd_pure:                                0
% 2.34/0.98  fd_pseudo:                              0
% 2.34/0.98  fd_cond:                                1
% 2.34/0.98  fd_pseudo_cond:                         1
% 2.34/0.98  ac_symbols:                             0
% 2.34/0.98  
% 2.34/0.98  ------ Propositional Solver
% 2.34/0.98  
% 2.34/0.98  prop_solver_calls:                      26
% 2.34/0.98  prop_fast_solver_calls:                 435
% 2.34/0.98  smt_solver_calls:                       0
% 2.34/0.98  smt_fast_solver_calls:                  0
% 2.34/0.98  prop_num_of_clauses:                    366
% 2.34/0.98  prop_preprocess_simplified:             2401
% 2.34/0.98  prop_fo_subsumed:                       8
% 2.34/0.98  prop_solver_time:                       0.
% 2.34/0.98  smt_solver_time:                        0.
% 2.34/0.98  smt_fast_solver_time:                   0.
% 2.34/0.98  prop_fast_solver_time:                  0.
% 2.34/0.98  prop_unsat_core_time:                   0.001
% 2.34/0.98  
% 2.34/0.98  ------ QBF
% 2.34/0.98  
% 2.34/0.98  qbf_q_res:                              0
% 2.34/0.98  qbf_num_tautologies:                    0
% 2.34/0.98  qbf_prep_cycles:                        0
% 2.34/0.98  
% 2.34/0.98  ------ BMC1
% 2.34/0.98  
% 2.34/0.98  bmc1_current_bound:                     -1
% 2.34/0.98  bmc1_last_solved_bound:                 -1
% 2.34/0.98  bmc1_unsat_core_size:                   -1
% 2.34/0.98  bmc1_unsat_core_parents_size:           -1
% 2.34/0.98  bmc1_merge_next_fun:                    0
% 2.34/0.98  bmc1_unsat_core_clauses_time:           0.
% 2.34/0.98  
% 2.34/0.98  ------ Instantiation
% 2.34/0.98  
% 2.34/0.98  inst_num_of_clauses:                    122
% 2.34/0.98  inst_num_in_passive:                    25
% 2.34/0.98  inst_num_in_active:                     80
% 2.34/0.98  inst_num_in_unprocessed:                17
% 2.34/0.98  inst_num_of_loops:                      90
% 2.34/0.98  inst_num_of_learning_restarts:          0
% 2.34/0.98  inst_num_moves_active_passive:          8
% 2.34/0.98  inst_lit_activity:                      0
% 2.34/0.98  inst_lit_activity_moves:                0
% 2.34/0.98  inst_num_tautologies:                   0
% 2.34/0.98  inst_num_prop_implied:                  0
% 2.34/0.98  inst_num_existing_simplified:           0
% 2.34/0.98  inst_num_eq_res_simplified:             0
% 2.34/0.98  inst_num_child_elim:                    0
% 2.34/0.98  inst_num_of_dismatching_blockings:      12
% 2.34/0.98  inst_num_of_non_proper_insts:           128
% 2.34/0.98  inst_num_of_duplicates:                 0
% 2.34/0.98  inst_inst_num_from_inst_to_res:         0
% 2.34/0.98  inst_dismatching_checking_time:         0.
% 2.34/0.98  
% 2.34/0.98  ------ Resolution
% 2.34/0.98  
% 2.34/0.98  res_num_of_clauses:                     0
% 2.34/0.98  res_num_in_passive:                     0
% 2.34/0.98  res_num_in_active:                      0
% 2.34/0.98  res_num_of_loops:                       85
% 2.34/0.98  res_forward_subset_subsumed:            9
% 2.34/0.98  res_backward_subset_subsumed:           0
% 2.34/0.98  res_forward_subsumed:                   0
% 2.34/0.98  res_backward_subsumed:                  0
% 2.34/0.98  res_forward_subsumption_resolution:     1
% 2.34/0.98  res_backward_subsumption_resolution:    0
% 2.34/0.98  res_clause_to_clause_subsumption:       70
% 2.34/0.98  res_orphan_elimination:                 0
% 2.34/0.98  res_tautology_del:                      35
% 2.34/0.98  res_num_eq_res_simplified:              0
% 2.34/0.98  res_num_sel_changes:                    0
% 2.34/0.98  res_moves_from_active_to_pass:          0
% 2.34/0.98  
% 2.34/0.98  ------ Superposition
% 2.34/0.98  
% 2.34/0.98  sup_time_total:                         0.
% 2.34/0.98  sup_time_generating:                    0.
% 2.34/0.98  sup_time_sim_full:                      0.
% 2.34/0.98  sup_time_sim_immed:                     0.
% 2.34/0.98  
% 2.34/0.98  sup_num_of_clauses:                     21
% 2.34/0.98  sup_num_in_active:                      14
% 2.34/0.98  sup_num_in_passive:                     7
% 2.34/0.98  sup_num_of_loops:                       17
% 2.34/0.98  sup_fw_superposition:                   9
% 2.34/0.98  sup_bw_superposition:                   2
% 2.34/0.98  sup_immediate_simplified:               2
% 2.34/0.98  sup_given_eliminated:                   0
% 2.34/0.98  comparisons_done:                       0
% 2.34/0.98  comparisons_avoided:                    0
% 2.34/0.98  
% 2.34/0.98  ------ Simplifications
% 2.34/0.98  
% 2.34/0.98  
% 2.34/0.98  sim_fw_subset_subsumed:                 0
% 2.34/0.98  sim_bw_subset_subsumed:                 0
% 2.34/0.98  sim_fw_subsumed:                        0
% 2.34/0.98  sim_bw_subsumed:                        0
% 2.34/0.98  sim_fw_subsumption_res:                 0
% 2.34/0.98  sim_bw_subsumption_res:                 0
% 2.34/0.98  sim_tautology_del:                      1
% 2.34/0.98  sim_eq_tautology_del:                   2
% 2.34/0.98  sim_eq_res_simp:                        1
% 2.34/0.98  sim_fw_demodulated:                     3
% 2.34/0.98  sim_bw_demodulated:                     4
% 2.34/0.98  sim_light_normalised:                   1
% 2.34/0.98  sim_joinable_taut:                      0
% 2.34/0.98  sim_joinable_simp:                      0
% 2.34/0.98  sim_ac_normalised:                      0
% 2.34/0.98  sim_smt_subsumption:                    0
% 2.34/0.98  
%------------------------------------------------------------------------------
