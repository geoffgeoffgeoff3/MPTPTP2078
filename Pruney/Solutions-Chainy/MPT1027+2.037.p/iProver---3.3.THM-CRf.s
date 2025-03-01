%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:08:23 EST 2020

% Result     : Theorem 1.50s
% Output     : CNFRefutation 1.50s
% Verified   : 
% Statistics : Number of formulae       :   94 (1603 expanded)
%              Number of clauses        :   56 ( 438 expanded)
%              Number of leaves         :   10 ( 334 expanded)
%              Depth                    :   21
%              Number of atoms          :  290 (7770 expanded)
%              Number of equality atoms :  167 (2401 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => ( k1_relset_1(X0,X1,X2) = X0
       => ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_1(X2) )
       => ( k1_relset_1(X0,X1,X2) = X0
         => ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X2,X0,X1)
            & v1_funct_1(X2) ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f20,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        | ~ v1_funct_2(X2,X0,X1)
        | ~ v1_funct_1(X2) )
      & k1_relset_1(X0,X1,X2) = X0
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f21,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        | ~ v1_funct_2(X2,X0,X1)
        | ~ v1_funct_1(X2) )
      & k1_relset_1(X0,X1,X2) = X0
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f20])).

fof(f29,plain,
    ( ? [X0,X1,X2] :
        ( ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2) )
        & k1_relset_1(X0,X1,X2) = X0
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
   => ( ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
        | ~ v1_funct_2(sK4,sK2,sK3)
        | ~ v1_funct_1(sK4) )
      & k1_relset_1(sK2,sK3,sK4) = sK2
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
      & v1_funct_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
      | ~ v1_funct_2(sK4,sK2,sK3)
      | ~ v1_funct_1(sK4) )
    & k1_relset_1(sK2,sK3,sK4) = sK2
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    & v1_funct_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f21,f29])).

fof(f48,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f30])).

fof(f6,axiom,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
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
    inference(ennf_transformation,[],[f6])).

fof(f19,plain,(
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
    inference(flattening,[],[f18])).

fof(f26,plain,(
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
    inference(nnf_transformation,[],[f19])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f50,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    | ~ v1_funct_2(sK4,sK2,sK3)
    | ~ v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f30])).

fof(f47,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f30])).

fof(f49,plain,(
    k1_relset_1(sK2,sK3,sK4) = sK2 ),
    inference(cnf_transformation,[],[f30])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f22])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f51,plain,(
    ! [X0] : k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0) ),
    inference(equality_resolution,[],[f35])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f5,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3,X4,X5,X6] :
                  ( ( r2_hidden(X6,X1)
                    & r2_hidden(X5,X6)
                    & r2_hidden(X4,X5)
                    & r2_hidden(X3,X4)
                    & r2_hidden(X2,X3) )
                 => r1_xboole_0(X2,X0) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    inference(pure_predicate_removal,[],[f5])).

fof(f17,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f14])).

fof(f24,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f17,f24])).

fof(f37,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_xboole_0 != X2
      | k1_xboole_0 = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f53,plain,(
    ! [X0,X1] :
      ( v1_funct_2(k1_xboole_0,X0,X1)
      | k1_xboole_0 = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(equality_resolution,[],[f43])).

fof(f54,plain,(
    ! [X0] :
      ( v1_funct_2(k1_xboole_0,X0,k1_xboole_0)
      | k1_xboole_0 = X0
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))) ) ),
    inference(equality_resolution,[],[f53])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 != X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f56,plain,(
    ! [X2,X1] :
      ( v1_funct_2(X2,k1_xboole_0,X1)
      | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ) ),
    inference(equality_resolution,[],[f41])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f52,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f34])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_987,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_10,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) != X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_16,negated_conjecture,
    ( ~ v1_funct_2(sK4,sK2,sK3)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    | ~ v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_19,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_97,negated_conjecture,
    ( ~ v1_funct_2(sK4,sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_16,c_19,c_18])).

cnf(c_548,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) != X1
    | sK3 != X2
    | sK2 != X1
    | sK4 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_97])).

cnf(c_549,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    | k1_relset_1(sK2,sK3,sK4) != sK2
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_548])).

cnf(c_17,negated_conjecture,
    ( k1_relset_1(sK2,sK3,sK4) = sK2 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_551,plain,
    ( k1_xboole_0 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_549,c_18,c_17])).

cnf(c_1004,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_987,c_551])).

cnf(c_2,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1005,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1004,c_2])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_6,plain,
    ( r2_hidden(sK0(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_189,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | X2 != X0
    | sK0(X2) != X3
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_6])).

cnf(c_190,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_189])).

cnf(c_986,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_190])).

cnf(c_1395,plain,
    ( sK4 = k1_xboole_0
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1005,c_986])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_1056,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k1_xboole_0)) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1005])).

cnf(c_842,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1093,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_842])).

cnf(c_1134,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(X0))
    | ~ v1_xboole_0(X0)
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_190])).

cnf(c_1136,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k1_xboole_0))
    | ~ v1_xboole_0(k1_xboole_0)
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_1134])).

cnf(c_843,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1182,plain,
    ( sK4 != X0
    | sK4 = k1_xboole_0
    | k1_xboole_0 != X0 ),
    inference(instantiation,[status(thm)],[c_843])).

cnf(c_1350,plain,
    ( sK4 != sK4
    | sK4 = k1_xboole_0
    | k1_xboole_0 != sK4 ),
    inference(instantiation,[status(thm)],[c_1182])).

cnf(c_1415,plain,
    ( sK4 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1395,c_0,c_1056,c_1093,c_1136,c_1350])).

cnf(c_7,plain,
    ( v1_funct_2(k1_xboole_0,X0,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_490,plain,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
    | sK3 != k1_xboole_0
    | sK2 != X0
    | sK4 != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_97])).

cnf(c_491,plain,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0)))
    | sK3 != k1_xboole_0
    | sK4 != k1_xboole_0
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_490])).

cnf(c_985,plain,
    ( sK3 != k1_xboole_0
    | sK4 != k1_xboole_0
    | k1_xboole_0 = sK2
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_491])).

cnf(c_1043,plain,
    ( sK2 = k1_xboole_0
    | sK4 != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_985,c_551])).

cnf(c_1044,plain,
    ( sK2 = k1_xboole_0
    | sK4 != k1_xboole_0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_1043])).

cnf(c_1045,plain,
    ( sK2 = k1_xboole_0
    | sK4 != k1_xboole_0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1044,c_2])).

cnf(c_1418,plain,
    ( sK2 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1415,c_1045])).

cnf(c_1435,plain,
    ( sK2 = k1_xboole_0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_1418])).

cnf(c_1420,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1415,c_1005])).

cnf(c_1438,plain,
    ( sK2 = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1435,c_1420])).

cnf(c_9,plain,
    ( v1_funct_2(X0,k1_xboole_0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_524,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0
    | sK3 != X1
    | sK2 != k1_xboole_0
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_97])).

cnf(c_525,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK3)))
    | k1_relset_1(k1_xboole_0,sK3,sK4) != k1_xboole_0
    | sK2 != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_524])).

cnf(c_984,plain,
    ( k1_relset_1(k1_xboole_0,sK3,sK4) != k1_xboole_0
    | sK2 != k1_xboole_0
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_525])).

cnf(c_1035,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK4) != k1_xboole_0
    | sK2 != k1_xboole_0
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_984,c_551])).

cnf(c_3,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1036,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK4) != k1_xboole_0
    | sK2 != k1_xboole_0
    | m1_subset_1(sK4,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1035,c_3])).

cnf(c_1040,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK4) != k1_xboole_0
    | sK2 != k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1036,c_1005])).

cnf(c_1419,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | sK2 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1415,c_1040])).

cnf(c_1439,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1438,c_1419])).

cnf(c_1448,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0) != k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_1439])).

cnf(c_999,plain,
    ( k1_relset_1(sK2,k1_xboole_0,sK4) = sK2 ),
    inference(light_normalisation,[status(thm)],[c_17,c_551])).

cnf(c_1422,plain,
    ( k1_relset_1(sK2,k1_xboole_0,k1_xboole_0) = sK2 ),
    inference(demodulation,[status(thm)],[c_1415,c_999])).

cnf(c_1441,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1438,c_1422])).

cnf(c_1449,plain,
    ( k1_xboole_0 != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1448,c_1441])).

cnf(c_1450,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_1449])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:15:40 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.50/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.50/0.99  
% 1.50/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.50/0.99  
% 1.50/0.99  ------  iProver source info
% 1.50/0.99  
% 1.50/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.50/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.50/0.99  git: non_committed_changes: false
% 1.50/0.99  git: last_make_outside_of_git: false
% 1.50/0.99  
% 1.50/0.99  ------ 
% 1.50/0.99  
% 1.50/0.99  ------ Input Options
% 1.50/0.99  
% 1.50/0.99  --out_options                           all
% 1.50/0.99  --tptp_safe_out                         true
% 1.50/0.99  --problem_path                          ""
% 1.50/0.99  --include_path                          ""
% 1.50/0.99  --clausifier                            res/vclausify_rel
% 1.50/0.99  --clausifier_options                    --mode clausify
% 1.50/0.99  --stdin                                 false
% 1.50/0.99  --stats_out                             all
% 1.50/0.99  
% 1.50/0.99  ------ General Options
% 1.50/0.99  
% 1.50/0.99  --fof                                   false
% 1.50/0.99  --time_out_real                         305.
% 1.50/0.99  --time_out_virtual                      -1.
% 1.50/0.99  --symbol_type_check                     false
% 1.50/0.99  --clausify_out                          false
% 1.50/0.99  --sig_cnt_out                           false
% 1.50/0.99  --trig_cnt_out                          false
% 1.50/0.99  --trig_cnt_out_tolerance                1.
% 1.50/0.99  --trig_cnt_out_sk_spl                   false
% 1.50/0.99  --abstr_cl_out                          false
% 1.50/0.99  
% 1.50/0.99  ------ Global Options
% 1.50/0.99  
% 1.50/0.99  --schedule                              default
% 1.50/0.99  --add_important_lit                     false
% 1.50/0.99  --prop_solver_per_cl                    1000
% 1.50/0.99  --min_unsat_core                        false
% 1.50/0.99  --soft_assumptions                      false
% 1.50/0.99  --soft_lemma_size                       3
% 1.50/0.99  --prop_impl_unit_size                   0
% 1.50/0.99  --prop_impl_unit                        []
% 1.50/0.99  --share_sel_clauses                     true
% 1.50/0.99  --reset_solvers                         false
% 1.50/0.99  --bc_imp_inh                            [conj_cone]
% 1.50/0.99  --conj_cone_tolerance                   3.
% 1.50/0.99  --extra_neg_conj                        none
% 1.50/0.99  --large_theory_mode                     true
% 1.50/0.99  --prolific_symb_bound                   200
% 1.50/0.99  --lt_threshold                          2000
% 1.50/0.99  --clause_weak_htbl                      true
% 1.50/0.99  --gc_record_bc_elim                     false
% 1.50/0.99  
% 1.50/0.99  ------ Preprocessing Options
% 1.50/0.99  
% 1.50/0.99  --preprocessing_flag                    true
% 1.50/0.99  --time_out_prep_mult                    0.1
% 1.50/0.99  --splitting_mode                        input
% 1.50/0.99  --splitting_grd                         true
% 1.50/0.99  --splitting_cvd                         false
% 1.50/0.99  --splitting_cvd_svl                     false
% 1.50/0.99  --splitting_nvd                         32
% 1.50/0.99  --sub_typing                            true
% 1.50/0.99  --prep_gs_sim                           true
% 1.50/0.99  --prep_unflatten                        true
% 1.50/0.99  --prep_res_sim                          true
% 1.50/0.99  --prep_upred                            true
% 1.50/0.99  --prep_sem_filter                       exhaustive
% 1.50/0.99  --prep_sem_filter_out                   false
% 1.50/0.99  --pred_elim                             true
% 1.50/0.99  --res_sim_input                         true
% 1.50/0.99  --eq_ax_congr_red                       true
% 1.50/0.99  --pure_diseq_elim                       true
% 1.50/0.99  --brand_transform                       false
% 1.50/0.99  --non_eq_to_eq                          false
% 1.50/0.99  --prep_def_merge                        true
% 1.50/0.99  --prep_def_merge_prop_impl              false
% 1.50/0.99  --prep_def_merge_mbd                    true
% 1.50/0.99  --prep_def_merge_tr_red                 false
% 1.50/0.99  --prep_def_merge_tr_cl                  false
% 1.50/0.99  --smt_preprocessing                     true
% 1.50/0.99  --smt_ac_axioms                         fast
% 1.50/0.99  --preprocessed_out                      false
% 1.50/0.99  --preprocessed_stats                    false
% 1.50/0.99  
% 1.50/0.99  ------ Abstraction refinement Options
% 1.50/0.99  
% 1.50/0.99  --abstr_ref                             []
% 1.50/0.99  --abstr_ref_prep                        false
% 1.50/0.99  --abstr_ref_until_sat                   false
% 1.50/0.99  --abstr_ref_sig_restrict                funpre
% 1.50/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.50/0.99  --abstr_ref_under                       []
% 1.50/0.99  
% 1.50/0.99  ------ SAT Options
% 1.50/0.99  
% 1.50/0.99  --sat_mode                              false
% 1.50/0.99  --sat_fm_restart_options                ""
% 1.50/0.99  --sat_gr_def                            false
% 1.50/0.99  --sat_epr_types                         true
% 1.50/0.99  --sat_non_cyclic_types                  false
% 1.50/0.99  --sat_finite_models                     false
% 1.50/0.99  --sat_fm_lemmas                         false
% 1.50/0.99  --sat_fm_prep                           false
% 1.50/0.99  --sat_fm_uc_incr                        true
% 1.50/0.99  --sat_out_model                         small
% 1.50/0.99  --sat_out_clauses                       false
% 1.50/0.99  
% 1.50/0.99  ------ QBF Options
% 1.50/0.99  
% 1.50/0.99  --qbf_mode                              false
% 1.50/0.99  --qbf_elim_univ                         false
% 1.50/0.99  --qbf_dom_inst                          none
% 1.50/0.99  --qbf_dom_pre_inst                      false
% 1.50/0.99  --qbf_sk_in                             false
% 1.50/0.99  --qbf_pred_elim                         true
% 1.50/0.99  --qbf_split                             512
% 1.50/0.99  
% 1.50/0.99  ------ BMC1 Options
% 1.50/0.99  
% 1.50/0.99  --bmc1_incremental                      false
% 1.50/0.99  --bmc1_axioms                           reachable_all
% 1.50/0.99  --bmc1_min_bound                        0
% 1.50/0.99  --bmc1_max_bound                        -1
% 1.50/0.99  --bmc1_max_bound_default                -1
% 1.50/0.99  --bmc1_symbol_reachability              true
% 1.50/0.99  --bmc1_property_lemmas                  false
% 1.50/0.99  --bmc1_k_induction                      false
% 1.50/0.99  --bmc1_non_equiv_states                 false
% 1.50/0.99  --bmc1_deadlock                         false
% 1.50/0.99  --bmc1_ucm                              false
% 1.50/0.99  --bmc1_add_unsat_core                   none
% 1.50/0.99  --bmc1_unsat_core_children              false
% 1.50/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.50/0.99  --bmc1_out_stat                         full
% 1.50/0.99  --bmc1_ground_init                      false
% 1.50/0.99  --bmc1_pre_inst_next_state              false
% 1.50/0.99  --bmc1_pre_inst_state                   false
% 1.50/0.99  --bmc1_pre_inst_reach_state             false
% 1.50/0.99  --bmc1_out_unsat_core                   false
% 1.50/0.99  --bmc1_aig_witness_out                  false
% 1.50/0.99  --bmc1_verbose                          false
% 1.50/0.99  --bmc1_dump_clauses_tptp                false
% 1.50/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.50/0.99  --bmc1_dump_file                        -
% 1.50/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.50/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.50/0.99  --bmc1_ucm_extend_mode                  1
% 1.50/0.99  --bmc1_ucm_init_mode                    2
% 1.50/0.99  --bmc1_ucm_cone_mode                    none
% 1.50/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.50/0.99  --bmc1_ucm_relax_model                  4
% 1.50/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.50/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.50/0.99  --bmc1_ucm_layered_model                none
% 1.50/0.99  --bmc1_ucm_max_lemma_size               10
% 1.50/0.99  
% 1.50/0.99  ------ AIG Options
% 1.50/0.99  
% 1.50/0.99  --aig_mode                              false
% 1.50/0.99  
% 1.50/0.99  ------ Instantiation Options
% 1.50/0.99  
% 1.50/0.99  --instantiation_flag                    true
% 1.50/0.99  --inst_sos_flag                         false
% 1.50/0.99  --inst_sos_phase                        true
% 1.50/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.50/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.50/0.99  --inst_lit_sel_side                     num_symb
% 1.50/0.99  --inst_solver_per_active                1400
% 1.50/0.99  --inst_solver_calls_frac                1.
% 1.50/0.99  --inst_passive_queue_type               priority_queues
% 1.50/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.50/0.99  --inst_passive_queues_freq              [25;2]
% 1.50/0.99  --inst_dismatching                      true
% 1.50/0.99  --inst_eager_unprocessed_to_passive     true
% 1.50/0.99  --inst_prop_sim_given                   true
% 1.50/0.99  --inst_prop_sim_new                     false
% 1.50/0.99  --inst_subs_new                         false
% 1.50/0.99  --inst_eq_res_simp                      false
% 1.50/0.99  --inst_subs_given                       false
% 1.50/0.99  --inst_orphan_elimination               true
% 1.50/0.99  --inst_learning_loop_flag               true
% 1.50/0.99  --inst_learning_start                   3000
% 1.50/0.99  --inst_learning_factor                  2
% 1.50/0.99  --inst_start_prop_sim_after_learn       3
% 1.50/0.99  --inst_sel_renew                        solver
% 1.50/0.99  --inst_lit_activity_flag                true
% 1.50/0.99  --inst_restr_to_given                   false
% 1.50/0.99  --inst_activity_threshold               500
% 1.50/0.99  --inst_out_proof                        true
% 1.50/0.99  
% 1.50/0.99  ------ Resolution Options
% 1.50/0.99  
% 1.50/0.99  --resolution_flag                       true
% 1.50/0.99  --res_lit_sel                           adaptive
% 1.50/0.99  --res_lit_sel_side                      none
% 1.50/0.99  --res_ordering                          kbo
% 1.50/0.99  --res_to_prop_solver                    active
% 1.50/0.99  --res_prop_simpl_new                    false
% 1.50/0.99  --res_prop_simpl_given                  true
% 1.50/0.99  --res_passive_queue_type                priority_queues
% 1.50/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.50/0.99  --res_passive_queues_freq               [15;5]
% 1.50/0.99  --res_forward_subs                      full
% 1.50/0.99  --res_backward_subs                     full
% 1.50/0.99  --res_forward_subs_resolution           true
% 1.50/0.99  --res_backward_subs_resolution          true
% 1.50/0.99  --res_orphan_elimination                true
% 1.50/0.99  --res_time_limit                        2.
% 1.50/0.99  --res_out_proof                         true
% 1.50/0.99  
% 1.50/0.99  ------ Superposition Options
% 1.50/0.99  
% 1.50/0.99  --superposition_flag                    true
% 1.50/0.99  --sup_passive_queue_type                priority_queues
% 1.50/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.50/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.50/0.99  --demod_completeness_check              fast
% 1.50/0.99  --demod_use_ground                      true
% 1.50/0.99  --sup_to_prop_solver                    passive
% 1.50/0.99  --sup_prop_simpl_new                    true
% 1.50/0.99  --sup_prop_simpl_given                  true
% 1.50/0.99  --sup_fun_splitting                     false
% 1.50/0.99  --sup_smt_interval                      50000
% 1.50/0.99  
% 1.50/0.99  ------ Superposition Simplification Setup
% 1.50/0.99  
% 1.50/0.99  --sup_indices_passive                   []
% 1.50/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.50/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.50/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.50/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.50/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.50/0.99  --sup_full_bw                           [BwDemod]
% 1.50/0.99  --sup_immed_triv                        [TrivRules]
% 1.50/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.50/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.50/0.99  --sup_immed_bw_main                     []
% 1.50/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.50/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.50/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.50/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.50/1.00  
% 1.50/1.00  ------ Combination Options
% 1.50/1.00  
% 1.50/1.00  --comb_res_mult                         3
% 1.50/1.00  --comb_sup_mult                         2
% 1.50/1.00  --comb_inst_mult                        10
% 1.50/1.00  
% 1.50/1.00  ------ Debug Options
% 1.50/1.00  
% 1.50/1.00  --dbg_backtrace                         false
% 1.50/1.00  --dbg_dump_prop_clauses                 false
% 1.50/1.00  --dbg_dump_prop_clauses_file            -
% 1.50/1.00  --dbg_out_stat                          false
% 1.50/1.00  ------ Parsing...
% 1.50/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.50/1.00  
% 1.50/1.00  ------ Preprocessing... sf_s  rm: 4 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.50/1.00  
% 1.50/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.50/1.00  
% 1.50/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.50/1.00  ------ Proving...
% 1.50/1.00  ------ Problem Properties 
% 1.50/1.00  
% 1.50/1.00  
% 1.50/1.00  clauses                                 15
% 1.50/1.00  conjectures                             2
% 1.50/1.00  EPR                                     2
% 1.50/1.00  Horn                                    13
% 1.50/1.00  unary                                   8
% 1.50/1.00  binary                                  3
% 1.50/1.00  lits                                    27
% 1.50/1.00  lits eq                                 18
% 1.50/1.00  fd_pure                                 0
% 1.50/1.00  fd_pseudo                               0
% 1.50/1.00  fd_cond                                 2
% 1.50/1.00  fd_pseudo_cond                          0
% 1.50/1.00  AC symbols                              0
% 1.50/1.00  
% 1.50/1.00  ------ Schedule dynamic 5 is on 
% 1.50/1.00  
% 1.50/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.50/1.00  
% 1.50/1.00  
% 1.50/1.00  ------ 
% 1.50/1.00  Current options:
% 1.50/1.00  ------ 
% 1.50/1.00  
% 1.50/1.00  ------ Input Options
% 1.50/1.00  
% 1.50/1.00  --out_options                           all
% 1.50/1.00  --tptp_safe_out                         true
% 1.50/1.00  --problem_path                          ""
% 1.50/1.00  --include_path                          ""
% 1.50/1.00  --clausifier                            res/vclausify_rel
% 1.50/1.00  --clausifier_options                    --mode clausify
% 1.50/1.00  --stdin                                 false
% 1.50/1.00  --stats_out                             all
% 1.50/1.00  
% 1.50/1.00  ------ General Options
% 1.50/1.00  
% 1.50/1.00  --fof                                   false
% 1.50/1.00  --time_out_real                         305.
% 1.50/1.00  --time_out_virtual                      -1.
% 1.50/1.00  --symbol_type_check                     false
% 1.50/1.00  --clausify_out                          false
% 1.50/1.00  --sig_cnt_out                           false
% 1.50/1.00  --trig_cnt_out                          false
% 1.50/1.00  --trig_cnt_out_tolerance                1.
% 1.50/1.00  --trig_cnt_out_sk_spl                   false
% 1.50/1.00  --abstr_cl_out                          false
% 1.50/1.00  
% 1.50/1.00  ------ Global Options
% 1.50/1.00  
% 1.50/1.00  --schedule                              default
% 1.50/1.00  --add_important_lit                     false
% 1.50/1.00  --prop_solver_per_cl                    1000
% 1.50/1.00  --min_unsat_core                        false
% 1.50/1.00  --soft_assumptions                      false
% 1.50/1.00  --soft_lemma_size                       3
% 1.50/1.00  --prop_impl_unit_size                   0
% 1.50/1.00  --prop_impl_unit                        []
% 1.50/1.00  --share_sel_clauses                     true
% 1.50/1.00  --reset_solvers                         false
% 1.50/1.00  --bc_imp_inh                            [conj_cone]
% 1.50/1.00  --conj_cone_tolerance                   3.
% 1.50/1.00  --extra_neg_conj                        none
% 1.50/1.00  --large_theory_mode                     true
% 1.50/1.00  --prolific_symb_bound                   200
% 1.50/1.00  --lt_threshold                          2000
% 1.50/1.00  --clause_weak_htbl                      true
% 1.50/1.00  --gc_record_bc_elim                     false
% 1.50/1.00  
% 1.50/1.00  ------ Preprocessing Options
% 1.50/1.00  
% 1.50/1.00  --preprocessing_flag                    true
% 1.50/1.00  --time_out_prep_mult                    0.1
% 1.50/1.00  --splitting_mode                        input
% 1.50/1.00  --splitting_grd                         true
% 1.50/1.00  --splitting_cvd                         false
% 1.50/1.00  --splitting_cvd_svl                     false
% 1.50/1.00  --splitting_nvd                         32
% 1.50/1.00  --sub_typing                            true
% 1.50/1.00  --prep_gs_sim                           true
% 1.50/1.00  --prep_unflatten                        true
% 1.50/1.00  --prep_res_sim                          true
% 1.50/1.00  --prep_upred                            true
% 1.50/1.00  --prep_sem_filter                       exhaustive
% 1.50/1.00  --prep_sem_filter_out                   false
% 1.50/1.00  --pred_elim                             true
% 1.50/1.00  --res_sim_input                         true
% 1.50/1.00  --eq_ax_congr_red                       true
% 1.50/1.00  --pure_diseq_elim                       true
% 1.50/1.00  --brand_transform                       false
% 1.50/1.00  --non_eq_to_eq                          false
% 1.50/1.00  --prep_def_merge                        true
% 1.50/1.00  --prep_def_merge_prop_impl              false
% 1.50/1.00  --prep_def_merge_mbd                    true
% 1.50/1.00  --prep_def_merge_tr_red                 false
% 1.50/1.00  --prep_def_merge_tr_cl                  false
% 1.50/1.00  --smt_preprocessing                     true
% 1.50/1.00  --smt_ac_axioms                         fast
% 1.50/1.00  --preprocessed_out                      false
% 1.50/1.00  --preprocessed_stats                    false
% 1.50/1.00  
% 1.50/1.00  ------ Abstraction refinement Options
% 1.50/1.00  
% 1.50/1.00  --abstr_ref                             []
% 1.50/1.00  --abstr_ref_prep                        false
% 1.50/1.00  --abstr_ref_until_sat                   false
% 1.50/1.00  --abstr_ref_sig_restrict                funpre
% 1.50/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.50/1.00  --abstr_ref_under                       []
% 1.50/1.00  
% 1.50/1.00  ------ SAT Options
% 1.50/1.00  
% 1.50/1.00  --sat_mode                              false
% 1.50/1.00  --sat_fm_restart_options                ""
% 1.50/1.00  --sat_gr_def                            false
% 1.50/1.00  --sat_epr_types                         true
% 1.50/1.00  --sat_non_cyclic_types                  false
% 1.50/1.00  --sat_finite_models                     false
% 1.50/1.00  --sat_fm_lemmas                         false
% 1.50/1.00  --sat_fm_prep                           false
% 1.50/1.00  --sat_fm_uc_incr                        true
% 1.50/1.00  --sat_out_model                         small
% 1.50/1.00  --sat_out_clauses                       false
% 1.50/1.00  
% 1.50/1.00  ------ QBF Options
% 1.50/1.00  
% 1.50/1.00  --qbf_mode                              false
% 1.50/1.00  --qbf_elim_univ                         false
% 1.50/1.00  --qbf_dom_inst                          none
% 1.50/1.00  --qbf_dom_pre_inst                      false
% 1.50/1.00  --qbf_sk_in                             false
% 1.50/1.00  --qbf_pred_elim                         true
% 1.50/1.00  --qbf_split                             512
% 1.50/1.00  
% 1.50/1.00  ------ BMC1 Options
% 1.50/1.00  
% 1.50/1.00  --bmc1_incremental                      false
% 1.50/1.00  --bmc1_axioms                           reachable_all
% 1.50/1.00  --bmc1_min_bound                        0
% 1.50/1.00  --bmc1_max_bound                        -1
% 1.50/1.00  --bmc1_max_bound_default                -1
% 1.50/1.00  --bmc1_symbol_reachability              true
% 1.50/1.00  --bmc1_property_lemmas                  false
% 1.50/1.00  --bmc1_k_induction                      false
% 1.50/1.00  --bmc1_non_equiv_states                 false
% 1.50/1.00  --bmc1_deadlock                         false
% 1.50/1.00  --bmc1_ucm                              false
% 1.50/1.00  --bmc1_add_unsat_core                   none
% 1.50/1.00  --bmc1_unsat_core_children              false
% 1.50/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.50/1.00  --bmc1_out_stat                         full
% 1.50/1.00  --bmc1_ground_init                      false
% 1.50/1.00  --bmc1_pre_inst_next_state              false
% 1.50/1.00  --bmc1_pre_inst_state                   false
% 1.50/1.00  --bmc1_pre_inst_reach_state             false
% 1.50/1.00  --bmc1_out_unsat_core                   false
% 1.50/1.00  --bmc1_aig_witness_out                  false
% 1.50/1.00  --bmc1_verbose                          false
% 1.50/1.00  --bmc1_dump_clauses_tptp                false
% 1.50/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.50/1.00  --bmc1_dump_file                        -
% 1.50/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.50/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.50/1.00  --bmc1_ucm_extend_mode                  1
% 1.50/1.00  --bmc1_ucm_init_mode                    2
% 1.50/1.00  --bmc1_ucm_cone_mode                    none
% 1.50/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.50/1.00  --bmc1_ucm_relax_model                  4
% 1.50/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.50/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.50/1.00  --bmc1_ucm_layered_model                none
% 1.50/1.00  --bmc1_ucm_max_lemma_size               10
% 1.50/1.00  
% 1.50/1.00  ------ AIG Options
% 1.50/1.00  
% 1.50/1.00  --aig_mode                              false
% 1.50/1.00  
% 1.50/1.00  ------ Instantiation Options
% 1.50/1.00  
% 1.50/1.00  --instantiation_flag                    true
% 1.50/1.00  --inst_sos_flag                         false
% 1.50/1.00  --inst_sos_phase                        true
% 1.50/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.50/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.50/1.00  --inst_lit_sel_side                     none
% 1.50/1.00  --inst_solver_per_active                1400
% 1.50/1.00  --inst_solver_calls_frac                1.
% 1.50/1.00  --inst_passive_queue_type               priority_queues
% 1.50/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.50/1.00  --inst_passive_queues_freq              [25;2]
% 1.50/1.00  --inst_dismatching                      true
% 1.50/1.00  --inst_eager_unprocessed_to_passive     true
% 1.50/1.00  --inst_prop_sim_given                   true
% 1.50/1.00  --inst_prop_sim_new                     false
% 1.50/1.00  --inst_subs_new                         false
% 1.50/1.00  --inst_eq_res_simp                      false
% 1.50/1.00  --inst_subs_given                       false
% 1.50/1.00  --inst_orphan_elimination               true
% 1.50/1.00  --inst_learning_loop_flag               true
% 1.50/1.00  --inst_learning_start                   3000
% 1.50/1.00  --inst_learning_factor                  2
% 1.50/1.00  --inst_start_prop_sim_after_learn       3
% 1.50/1.00  --inst_sel_renew                        solver
% 1.50/1.00  --inst_lit_activity_flag                true
% 1.50/1.00  --inst_restr_to_given                   false
% 1.50/1.00  --inst_activity_threshold               500
% 1.50/1.00  --inst_out_proof                        true
% 1.50/1.00  
% 1.50/1.00  ------ Resolution Options
% 1.50/1.00  
% 1.50/1.00  --resolution_flag                       false
% 1.50/1.00  --res_lit_sel                           adaptive
% 1.50/1.00  --res_lit_sel_side                      none
% 1.50/1.00  --res_ordering                          kbo
% 1.50/1.00  --res_to_prop_solver                    active
% 1.50/1.00  --res_prop_simpl_new                    false
% 1.50/1.00  --res_prop_simpl_given                  true
% 1.50/1.00  --res_passive_queue_type                priority_queues
% 1.50/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.50/1.00  --res_passive_queues_freq               [15;5]
% 1.50/1.00  --res_forward_subs                      full
% 1.50/1.00  --res_backward_subs                     full
% 1.50/1.00  --res_forward_subs_resolution           true
% 1.50/1.00  --res_backward_subs_resolution          true
% 1.50/1.00  --res_orphan_elimination                true
% 1.50/1.00  --res_time_limit                        2.
% 1.50/1.00  --res_out_proof                         true
% 1.50/1.00  
% 1.50/1.00  ------ Superposition Options
% 1.50/1.00  
% 1.50/1.00  --superposition_flag                    true
% 1.50/1.00  --sup_passive_queue_type                priority_queues
% 1.50/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.50/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.50/1.00  --demod_completeness_check              fast
% 1.50/1.00  --demod_use_ground                      true
% 1.50/1.00  --sup_to_prop_solver                    passive
% 1.50/1.00  --sup_prop_simpl_new                    true
% 1.50/1.00  --sup_prop_simpl_given                  true
% 1.50/1.00  --sup_fun_splitting                     false
% 1.50/1.00  --sup_smt_interval                      50000
% 1.50/1.00  
% 1.50/1.00  ------ Superposition Simplification Setup
% 1.50/1.00  
% 1.50/1.00  --sup_indices_passive                   []
% 1.50/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.50/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.50/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.50/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.50/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.50/1.00  --sup_full_bw                           [BwDemod]
% 1.50/1.00  --sup_immed_triv                        [TrivRules]
% 1.50/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.50/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.50/1.00  --sup_immed_bw_main                     []
% 1.50/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.50/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.50/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.50/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.50/1.00  
% 1.50/1.00  ------ Combination Options
% 1.50/1.00  
% 1.50/1.00  --comb_res_mult                         3
% 1.50/1.00  --comb_sup_mult                         2
% 1.50/1.00  --comb_inst_mult                        10
% 1.50/1.00  
% 1.50/1.00  ------ Debug Options
% 1.50/1.00  
% 1.50/1.00  --dbg_backtrace                         false
% 1.50/1.00  --dbg_dump_prop_clauses                 false
% 1.50/1.00  --dbg_dump_prop_clauses_file            -
% 1.50/1.00  --dbg_out_stat                          false
% 1.50/1.00  
% 1.50/1.00  
% 1.50/1.00  
% 1.50/1.00  
% 1.50/1.00  ------ Proving...
% 1.50/1.00  
% 1.50/1.00  
% 1.50/1.00  % SZS status Theorem for theBenchmark.p
% 1.50/1.00  
% 1.50/1.00   Resolution empty clause
% 1.50/1.00  
% 1.50/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 1.50/1.00  
% 1.50/1.00  fof(f8,conjecture,(
% 1.50/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => (k1_relset_1(X0,X1,X2) = X0 => (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))))),
% 1.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.50/1.00  
% 1.50/1.00  fof(f9,negated_conjecture,(
% 1.50/1.00    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => (k1_relset_1(X0,X1,X2) = X0 => (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))))),
% 1.50/1.00    inference(negated_conjecture,[],[f8])).
% 1.50/1.00  
% 1.50/1.00  fof(f20,plain,(
% 1.50/1.00    ? [X0,X1,X2] : (((~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) & k1_relset_1(X0,X1,X2) = X0) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)))),
% 1.50/1.00    inference(ennf_transformation,[],[f9])).
% 1.50/1.00  
% 1.50/1.00  fof(f21,plain,(
% 1.50/1.00    ? [X0,X1,X2] : ((~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) & k1_relset_1(X0,X1,X2) = X0 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2))),
% 1.50/1.00    inference(flattening,[],[f20])).
% 1.50/1.00  
% 1.50/1.00  fof(f29,plain,(
% 1.50/1.00    ? [X0,X1,X2] : ((~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) & k1_relset_1(X0,X1,X2) = X0 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => ((~m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) | ~v1_funct_2(sK4,sK2,sK3) | ~v1_funct_1(sK4)) & k1_relset_1(sK2,sK3,sK4) = sK2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_1(sK4))),
% 1.50/1.00    introduced(choice_axiom,[])).
% 1.50/1.00  
% 1.50/1.00  fof(f30,plain,(
% 1.50/1.00    (~m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) | ~v1_funct_2(sK4,sK2,sK3) | ~v1_funct_1(sK4)) & k1_relset_1(sK2,sK3,sK4) = sK2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_1(sK4)),
% 1.50/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f21,f29])).
% 1.50/1.00  
% 1.50/1.00  fof(f48,plain,(
% 1.50/1.00    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))),
% 1.50/1.00    inference(cnf_transformation,[],[f30])).
% 1.50/1.00  
% 1.50/1.00  fof(f6,axiom,(
% 1.50/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.50/1.00  
% 1.50/1.00  fof(f18,plain,(
% 1.50/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.50/1.00    inference(ennf_transformation,[],[f6])).
% 1.50/1.00  
% 1.50/1.00  fof(f19,plain,(
% 1.50/1.00    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.50/1.00    inference(flattening,[],[f18])).
% 1.50/1.00  
% 1.50/1.00  fof(f26,plain,(
% 1.50/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.50/1.00    inference(nnf_transformation,[],[f19])).
% 1.50/1.00  
% 1.50/1.00  fof(f40,plain,(
% 1.50/1.00    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.50/1.00    inference(cnf_transformation,[],[f26])).
% 1.50/1.00  
% 1.50/1.00  fof(f50,plain,(
% 1.50/1.00    ~m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) | ~v1_funct_2(sK4,sK2,sK3) | ~v1_funct_1(sK4)),
% 1.50/1.00    inference(cnf_transformation,[],[f30])).
% 1.50/1.00  
% 1.50/1.00  fof(f47,plain,(
% 1.50/1.00    v1_funct_1(sK4)),
% 1.50/1.00    inference(cnf_transformation,[],[f30])).
% 1.50/1.00  
% 1.50/1.00  fof(f49,plain,(
% 1.50/1.00    k1_relset_1(sK2,sK3,sK4) = sK2),
% 1.50/1.00    inference(cnf_transformation,[],[f30])).
% 1.50/1.00  
% 1.50/1.00  fof(f3,axiom,(
% 1.50/1.00    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 1.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.50/1.00  
% 1.50/1.00  fof(f22,plain,(
% 1.50/1.00    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 1.50/1.00    inference(nnf_transformation,[],[f3])).
% 1.50/1.00  
% 1.50/1.00  fof(f23,plain,(
% 1.50/1.00    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 1.50/1.00    inference(flattening,[],[f22])).
% 1.50/1.00  
% 1.50/1.00  fof(f35,plain,(
% 1.50/1.00    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X1) )),
% 1.50/1.00    inference(cnf_transformation,[],[f23])).
% 1.50/1.00  
% 1.50/1.00  fof(f51,plain,(
% 1.50/1.00    ( ! [X0] : (k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0)) )),
% 1.50/1.00    inference(equality_resolution,[],[f35])).
% 1.50/1.00  
% 1.50/1.00  fof(f4,axiom,(
% 1.50/1.00    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 1.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.50/1.00  
% 1.50/1.00  fof(f16,plain,(
% 1.50/1.00    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 1.50/1.00    inference(ennf_transformation,[],[f4])).
% 1.50/1.00  
% 1.50/1.00  fof(f36,plain,(
% 1.50/1.00    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 1.50/1.00    inference(cnf_transformation,[],[f16])).
% 1.50/1.00  
% 1.50/1.00  fof(f5,axiom,(
% 1.50/1.00    ! [X0] : ~(! [X1] : ~(! [X2,X3,X4,X5,X6] : ((r2_hidden(X6,X1) & r2_hidden(X5,X6) & r2_hidden(X4,X5) & r2_hidden(X3,X4) & r2_hidden(X2,X3)) => r1_xboole_0(X2,X0)) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 1.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.50/1.00  
% 1.50/1.00  fof(f14,plain,(
% 1.50/1.00    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 1.50/1.00    inference(pure_predicate_removal,[],[f5])).
% 1.50/1.00  
% 1.50/1.00  fof(f17,plain,(
% 1.50/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 1.50/1.00    inference(ennf_transformation,[],[f14])).
% 1.50/1.00  
% 1.50/1.00  fof(f24,plain,(
% 1.50/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 1.50/1.00    introduced(choice_axiom,[])).
% 1.50/1.00  
% 1.50/1.00  fof(f25,plain,(
% 1.50/1.00    ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0)),
% 1.50/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f17,f24])).
% 1.50/1.00  
% 1.50/1.00  fof(f37,plain,(
% 1.50/1.00    ( ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0) )),
% 1.50/1.00    inference(cnf_transformation,[],[f25])).
% 1.50/1.00  
% 1.50/1.00  fof(f1,axiom,(
% 1.50/1.00    v1_xboole_0(k1_xboole_0)),
% 1.50/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.50/1.00  
% 1.50/1.00  fof(f31,plain,(
% 1.50/1.00    v1_xboole_0(k1_xboole_0)),
% 1.50/1.00    inference(cnf_transformation,[],[f1])).
% 1.50/1.00  
% 1.50/1.00  fof(f43,plain,(
% 1.50/1.00    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2 | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.50/1.00    inference(cnf_transformation,[],[f26])).
% 1.50/1.00  
% 1.50/1.00  fof(f53,plain,(
% 1.50/1.00    ( ! [X0,X1] : (v1_funct_2(k1_xboole_0,X0,X1) | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.50/1.00    inference(equality_resolution,[],[f43])).
% 1.50/1.00  
% 1.50/1.00  fof(f54,plain,(
% 1.50/1.00    ( ! [X0] : (v1_funct_2(k1_xboole_0,X0,k1_xboole_0) | k1_xboole_0 = X0 | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))) )),
% 1.50/1.00    inference(equality_resolution,[],[f53])).
% 1.50/1.00  
% 1.50/1.00  fof(f41,plain,(
% 1.50/1.00    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 != X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.50/1.00    inference(cnf_transformation,[],[f26])).
% 1.50/1.00  
% 1.50/1.00  fof(f56,plain,(
% 1.50/1.00    ( ! [X2,X1] : (v1_funct_2(X2,k1_xboole_0,X1) | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))) )),
% 1.50/1.00    inference(equality_resolution,[],[f41])).
% 1.50/1.00  
% 1.50/1.00  fof(f34,plain,(
% 1.50/1.00    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 1.50/1.00    inference(cnf_transformation,[],[f23])).
% 1.50/1.00  
% 1.50/1.00  fof(f52,plain,(
% 1.50/1.00    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 1.50/1.00    inference(equality_resolution,[],[f34])).
% 1.50/1.00  
% 1.50/1.00  cnf(c_18,negated_conjecture,
% 1.50/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
% 1.50/1.00      inference(cnf_transformation,[],[f48]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_987,plain,
% 1.50/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
% 1.50/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_10,plain,
% 1.50/1.00      ( v1_funct_2(X0,X1,X2)
% 1.50/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.50/1.00      | k1_relset_1(X1,X2,X0) != X1
% 1.50/1.00      | k1_xboole_0 = X2 ),
% 1.50/1.00      inference(cnf_transformation,[],[f40]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_16,negated_conjecture,
% 1.50/1.00      ( ~ v1_funct_2(sK4,sK2,sK3)
% 1.50/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
% 1.50/1.00      | ~ v1_funct_1(sK4) ),
% 1.50/1.00      inference(cnf_transformation,[],[f50]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_19,negated_conjecture,
% 1.50/1.00      ( v1_funct_1(sK4) ),
% 1.50/1.00      inference(cnf_transformation,[],[f47]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_97,negated_conjecture,
% 1.50/1.00      ( ~ v1_funct_2(sK4,sK2,sK3) ),
% 1.50/1.00      inference(global_propositional_subsumption,
% 1.50/1.00                [status(thm)],
% 1.50/1.00                [c_16,c_19,c_18]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_548,plain,
% 1.50/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.50/1.00      | k1_relset_1(X1,X2,X0) != X1
% 1.50/1.00      | sK3 != X2
% 1.50/1.00      | sK2 != X1
% 1.50/1.00      | sK4 != X0
% 1.50/1.00      | k1_xboole_0 = X2 ),
% 1.50/1.00      inference(resolution_lifted,[status(thm)],[c_10,c_97]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_549,plain,
% 1.50/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
% 1.50/1.00      | k1_relset_1(sK2,sK3,sK4) != sK2
% 1.50/1.00      | k1_xboole_0 = sK3 ),
% 1.50/1.00      inference(unflattening,[status(thm)],[c_548]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_17,negated_conjecture,
% 1.50/1.00      ( k1_relset_1(sK2,sK3,sK4) = sK2 ),
% 1.50/1.00      inference(cnf_transformation,[],[f49]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_551,plain,
% 1.50/1.00      ( k1_xboole_0 = sK3 ),
% 1.50/1.00      inference(global_propositional_subsumption,
% 1.50/1.00                [status(thm)],
% 1.50/1.00                [c_549,c_18,c_17]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1004,plain,
% 1.50/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))) = iProver_top ),
% 1.50/1.00      inference(light_normalisation,[status(thm)],[c_987,c_551]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_2,plain,
% 1.50/1.00      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 1.50/1.00      inference(cnf_transformation,[],[f51]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1005,plain,
% 1.50/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 1.50/1.00      inference(demodulation,[status(thm)],[c_1004,c_2]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_5,plain,
% 1.50/1.00      ( ~ r2_hidden(X0,X1)
% 1.50/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
% 1.50/1.00      | ~ v1_xboole_0(X2) ),
% 1.50/1.00      inference(cnf_transformation,[],[f36]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_6,plain,
% 1.50/1.00      ( r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0 ),
% 1.50/1.00      inference(cnf_transformation,[],[f37]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_189,plain,
% 1.50/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.50/1.00      | ~ v1_xboole_0(X1)
% 1.50/1.00      | X2 != X0
% 1.50/1.00      | sK0(X2) != X3
% 1.50/1.00      | k1_xboole_0 = X2 ),
% 1.50/1.00      inference(resolution_lifted,[status(thm)],[c_5,c_6]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_190,plain,
% 1.50/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.50/1.00      | ~ v1_xboole_0(X1)
% 1.50/1.00      | k1_xboole_0 = X0 ),
% 1.50/1.00      inference(unflattening,[status(thm)],[c_189]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_986,plain,
% 1.50/1.00      ( k1_xboole_0 = X0
% 1.50/1.00      | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 1.50/1.00      | v1_xboole_0(X1) != iProver_top ),
% 1.50/1.00      inference(predicate_to_equality,[status(thm)],[c_190]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1395,plain,
% 1.50/1.00      ( sK4 = k1_xboole_0 | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 1.50/1.00      inference(superposition,[status(thm)],[c_1005,c_986]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_0,plain,
% 1.50/1.00      ( v1_xboole_0(k1_xboole_0) ),
% 1.50/1.00      inference(cnf_transformation,[],[f31]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1056,plain,
% 1.50/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k1_xboole_0)) ),
% 1.50/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_1005]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_842,plain,( X0 = X0 ),theory(equality) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1093,plain,
% 1.50/1.00      ( sK4 = sK4 ),
% 1.50/1.00      inference(instantiation,[status(thm)],[c_842]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1134,plain,
% 1.50/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(X0))
% 1.50/1.00      | ~ v1_xboole_0(X0)
% 1.50/1.00      | k1_xboole_0 = sK4 ),
% 1.50/1.00      inference(instantiation,[status(thm)],[c_190]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1136,plain,
% 1.50/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k1_xboole_0))
% 1.50/1.00      | ~ v1_xboole_0(k1_xboole_0)
% 1.50/1.00      | k1_xboole_0 = sK4 ),
% 1.50/1.00      inference(instantiation,[status(thm)],[c_1134]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_843,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1182,plain,
% 1.50/1.00      ( sK4 != X0 | sK4 = k1_xboole_0 | k1_xboole_0 != X0 ),
% 1.50/1.00      inference(instantiation,[status(thm)],[c_843]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1350,plain,
% 1.50/1.00      ( sK4 != sK4 | sK4 = k1_xboole_0 | k1_xboole_0 != sK4 ),
% 1.50/1.00      inference(instantiation,[status(thm)],[c_1182]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1415,plain,
% 1.50/1.00      ( sK4 = k1_xboole_0 ),
% 1.50/1.00      inference(global_propositional_subsumption,
% 1.50/1.00                [status(thm)],
% 1.50/1.00                [c_1395,c_0,c_1056,c_1093,c_1136,c_1350]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_7,plain,
% 1.50/1.00      ( v1_funct_2(k1_xboole_0,X0,k1_xboole_0)
% 1.50/1.00      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
% 1.50/1.00      | k1_xboole_0 = X0 ),
% 1.50/1.00      inference(cnf_transformation,[],[f54]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_490,plain,
% 1.50/1.00      ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
% 1.50/1.00      | sK3 != k1_xboole_0
% 1.50/1.00      | sK2 != X0
% 1.50/1.00      | sK4 != k1_xboole_0
% 1.50/1.00      | k1_xboole_0 = X0 ),
% 1.50/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_97]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_491,plain,
% 1.50/1.00      ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0)))
% 1.50/1.00      | sK3 != k1_xboole_0
% 1.50/1.00      | sK4 != k1_xboole_0
% 1.50/1.00      | k1_xboole_0 = sK2 ),
% 1.50/1.00      inference(unflattening,[status(thm)],[c_490]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_985,plain,
% 1.50/1.00      ( sK3 != k1_xboole_0
% 1.50/1.00      | sK4 != k1_xboole_0
% 1.50/1.00      | k1_xboole_0 = sK2
% 1.50/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))) != iProver_top ),
% 1.50/1.00      inference(predicate_to_equality,[status(thm)],[c_491]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1043,plain,
% 1.50/1.00      ( sK2 = k1_xboole_0
% 1.50/1.00      | sK4 != k1_xboole_0
% 1.50/1.00      | k1_xboole_0 != k1_xboole_0
% 1.50/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))) != iProver_top ),
% 1.50/1.00      inference(light_normalisation,[status(thm)],[c_985,c_551]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1044,plain,
% 1.50/1.00      ( sK2 = k1_xboole_0
% 1.50/1.00      | sK4 != k1_xboole_0
% 1.50/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))) != iProver_top ),
% 1.50/1.00      inference(equality_resolution_simp,[status(thm)],[c_1043]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1045,plain,
% 1.50/1.00      ( sK2 = k1_xboole_0
% 1.50/1.00      | sK4 != k1_xboole_0
% 1.50/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.50/1.00      inference(demodulation,[status(thm)],[c_1044,c_2]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1418,plain,
% 1.50/1.00      ( sK2 = k1_xboole_0
% 1.50/1.00      | k1_xboole_0 != k1_xboole_0
% 1.50/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.50/1.00      inference(demodulation,[status(thm)],[c_1415,c_1045]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1435,plain,
% 1.50/1.00      ( sK2 = k1_xboole_0
% 1.50/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.50/1.00      inference(equality_resolution_simp,[status(thm)],[c_1418]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1420,plain,
% 1.50/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 1.50/1.00      inference(demodulation,[status(thm)],[c_1415,c_1005]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1438,plain,
% 1.50/1.00      ( sK2 = k1_xboole_0 ),
% 1.50/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_1435,c_1420]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_9,plain,
% 1.50/1.00      ( v1_funct_2(X0,k1_xboole_0,X1)
% 1.50/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 1.50/1.00      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0 ),
% 1.50/1.00      inference(cnf_transformation,[],[f56]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_524,plain,
% 1.50/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 1.50/1.00      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0
% 1.50/1.00      | sK3 != X1
% 1.50/1.00      | sK2 != k1_xboole_0
% 1.50/1.00      | sK4 != X0 ),
% 1.50/1.00      inference(resolution_lifted,[status(thm)],[c_9,c_97]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_525,plain,
% 1.50/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK3)))
% 1.50/1.00      | k1_relset_1(k1_xboole_0,sK3,sK4) != k1_xboole_0
% 1.50/1.00      | sK2 != k1_xboole_0 ),
% 1.50/1.00      inference(unflattening,[status(thm)],[c_524]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_984,plain,
% 1.50/1.00      ( k1_relset_1(k1_xboole_0,sK3,sK4) != k1_xboole_0
% 1.50/1.00      | sK2 != k1_xboole_0
% 1.50/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK3))) != iProver_top ),
% 1.50/1.00      inference(predicate_to_equality,[status(thm)],[c_525]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1035,plain,
% 1.50/1.00      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK4) != k1_xboole_0
% 1.50/1.00      | sK2 != k1_xboole_0
% 1.50/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) != iProver_top ),
% 1.50/1.00      inference(light_normalisation,[status(thm)],[c_984,c_551]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_3,plain,
% 1.50/1.00      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 1.50/1.00      inference(cnf_transformation,[],[f52]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1036,plain,
% 1.50/1.00      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK4) != k1_xboole_0
% 1.50/1.00      | sK2 != k1_xboole_0
% 1.50/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.50/1.00      inference(demodulation,[status(thm)],[c_1035,c_3]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1040,plain,
% 1.50/1.00      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK4) != k1_xboole_0
% 1.50/1.00      | sK2 != k1_xboole_0 ),
% 1.50/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_1036,c_1005]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1419,plain,
% 1.50/1.00      ( k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 1.50/1.00      | sK2 != k1_xboole_0 ),
% 1.50/1.00      inference(demodulation,[status(thm)],[c_1415,c_1040]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1439,plain,
% 1.50/1.00      ( k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 1.50/1.00      | k1_xboole_0 != k1_xboole_0 ),
% 1.50/1.00      inference(demodulation,[status(thm)],[c_1438,c_1419]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1448,plain,
% 1.50/1.00      ( k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0) != k1_xboole_0 ),
% 1.50/1.00      inference(equality_resolution_simp,[status(thm)],[c_1439]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_999,plain,
% 1.50/1.00      ( k1_relset_1(sK2,k1_xboole_0,sK4) = sK2 ),
% 1.50/1.00      inference(light_normalisation,[status(thm)],[c_17,c_551]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1422,plain,
% 1.50/1.00      ( k1_relset_1(sK2,k1_xboole_0,k1_xboole_0) = sK2 ),
% 1.50/1.00      inference(demodulation,[status(thm)],[c_1415,c_999]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1441,plain,
% 1.50/1.00      ( k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 1.50/1.00      inference(demodulation,[status(thm)],[c_1438,c_1422]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1449,plain,
% 1.50/1.00      ( k1_xboole_0 != k1_xboole_0 ),
% 1.50/1.00      inference(light_normalisation,[status(thm)],[c_1448,c_1441]) ).
% 1.50/1.00  
% 1.50/1.00  cnf(c_1450,plain,
% 1.50/1.00      ( $false ),
% 1.50/1.00      inference(equality_resolution_simp,[status(thm)],[c_1449]) ).
% 1.50/1.00  
% 1.50/1.00  
% 1.50/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.50/1.00  
% 1.50/1.00  ------                               Statistics
% 1.50/1.00  
% 1.50/1.00  ------ General
% 1.50/1.00  
% 1.50/1.00  abstr_ref_over_cycles:                  0
% 1.50/1.00  abstr_ref_under_cycles:                 0
% 1.50/1.00  gc_basic_clause_elim:                   0
% 1.50/1.00  forced_gc_time:                         0
% 1.50/1.00  parsing_time:                           0.009
% 1.50/1.00  unif_index_cands_time:                  0.
% 1.50/1.00  unif_index_add_time:                    0.
% 1.50/1.00  orderings_time:                         0.
% 1.50/1.00  out_proof_time:                         0.009
% 1.50/1.00  total_time:                             0.075
% 1.50/1.00  num_of_symbols:                         45
% 1.50/1.00  num_of_terms:                           1167
% 1.50/1.00  
% 1.50/1.00  ------ Preprocessing
% 1.50/1.00  
% 1.50/1.00  num_of_splits:                          0
% 1.50/1.00  num_of_split_atoms:                     0
% 1.50/1.00  num_of_reused_defs:                     0
% 1.50/1.00  num_eq_ax_congr_red:                    3
% 1.50/1.00  num_of_sem_filtered_clauses:            3
% 1.50/1.00  num_of_subtypes:                        0
% 1.50/1.00  monotx_restored_types:                  0
% 1.50/1.00  sat_num_of_epr_types:                   0
% 1.50/1.00  sat_num_of_non_cyclic_types:            0
% 1.50/1.00  sat_guarded_non_collapsed_types:        0
% 1.50/1.00  num_pure_diseq_elim:                    0
% 1.50/1.00  simp_replaced_by:                       0
% 1.50/1.00  res_preprocessed:                       82
% 1.50/1.00  prep_upred:                             0
% 1.50/1.00  prep_unflattend:                        54
% 1.50/1.00  smt_new_axioms:                         0
% 1.50/1.00  pred_elim_cands:                        2
% 1.50/1.00  pred_elim:                              2
% 1.50/1.00  pred_elim_cl:                           3
% 1.50/1.00  pred_elim_cycles:                       5
% 1.50/1.00  merged_defs:                            0
% 1.50/1.00  merged_defs_ncl:                        0
% 1.50/1.00  bin_hyper_res:                          0
% 1.50/1.00  prep_cycles:                            4
% 1.50/1.00  pred_elim_time:                         0.01
% 1.50/1.00  splitting_time:                         0.
% 1.50/1.00  sem_filter_time:                        0.
% 1.50/1.00  monotx_time:                            0.
% 1.50/1.00  subtype_inf_time:                       0.
% 1.50/1.00  
% 1.50/1.00  ------ Problem properties
% 1.50/1.00  
% 1.50/1.00  clauses:                                15
% 1.50/1.00  conjectures:                            2
% 1.50/1.00  epr:                                    2
% 1.50/1.00  horn:                                   13
% 1.50/1.00  ground:                                 8
% 1.50/1.00  unary:                                  8
% 1.50/1.00  binary:                                 3
% 1.50/1.00  lits:                                   27
% 1.50/1.00  lits_eq:                                18
% 1.50/1.00  fd_pure:                                0
% 1.50/1.00  fd_pseudo:                              0
% 1.50/1.00  fd_cond:                                2
% 1.50/1.00  fd_pseudo_cond:                         0
% 1.50/1.00  ac_symbols:                             0
% 1.50/1.00  
% 1.50/1.00  ------ Propositional Solver
% 1.50/1.00  
% 1.50/1.00  prop_solver_calls:                      25
% 1.50/1.00  prop_fast_solver_calls:                 484
% 1.50/1.00  smt_solver_calls:                       0
% 1.50/1.00  smt_fast_solver_calls:                  0
% 1.50/1.00  prop_num_of_clauses:                    340
% 1.50/1.00  prop_preprocess_simplified:             2019
% 1.50/1.00  prop_fo_subsumed:                       7
% 1.50/1.00  prop_solver_time:                       0.
% 1.50/1.00  smt_solver_time:                        0.
% 1.50/1.00  smt_fast_solver_time:                   0.
% 1.50/1.00  prop_fast_solver_time:                  0.
% 1.50/1.00  prop_unsat_core_time:                   0.
% 1.50/1.00  
% 1.50/1.00  ------ QBF
% 1.50/1.00  
% 1.50/1.00  qbf_q_res:                              0
% 1.50/1.00  qbf_num_tautologies:                    0
% 1.50/1.00  qbf_prep_cycles:                        0
% 1.50/1.00  
% 1.50/1.00  ------ BMC1
% 1.50/1.00  
% 1.50/1.00  bmc1_current_bound:                     -1
% 1.50/1.00  bmc1_last_solved_bound:                 -1
% 1.50/1.00  bmc1_unsat_core_size:                   -1
% 1.50/1.00  bmc1_unsat_core_parents_size:           -1
% 1.50/1.00  bmc1_merge_next_fun:                    0
% 1.50/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.50/1.00  
% 1.50/1.00  ------ Instantiation
% 1.50/1.00  
% 1.50/1.00  inst_num_of_clauses:                    113
% 1.50/1.00  inst_num_in_passive:                    37
% 1.50/1.00  inst_num_in_active:                     61
% 1.50/1.00  inst_num_in_unprocessed:                15
% 1.50/1.00  inst_num_of_loops:                      80
% 1.50/1.00  inst_num_of_learning_restarts:          0
% 1.50/1.00  inst_num_moves_active_passive:          17
% 1.50/1.00  inst_lit_activity:                      0
% 1.50/1.00  inst_lit_activity_moves:                0
% 1.50/1.00  inst_num_tautologies:                   0
% 1.50/1.00  inst_num_prop_implied:                  0
% 1.50/1.00  inst_num_existing_simplified:           0
% 1.50/1.00  inst_num_eq_res_simplified:             0
% 1.50/1.00  inst_num_child_elim:                    0
% 1.50/1.00  inst_num_of_dismatching_blockings:      6
% 1.50/1.00  inst_num_of_non_proper_insts:           47
% 1.50/1.00  inst_num_of_duplicates:                 0
% 1.50/1.00  inst_inst_num_from_inst_to_res:         0
% 1.50/1.00  inst_dismatching_checking_time:         0.
% 1.50/1.00  
% 1.50/1.00  ------ Resolution
% 1.50/1.00  
% 1.50/1.00  res_num_of_clauses:                     0
% 1.50/1.00  res_num_in_passive:                     0
% 1.50/1.00  res_num_in_active:                      0
% 1.50/1.00  res_num_of_loops:                       86
% 1.50/1.00  res_forward_subset_subsumed:            4
% 1.50/1.00  res_backward_subset_subsumed:           0
% 1.50/1.00  res_forward_subsumed:                   0
% 1.50/1.00  res_backward_subsumed:                  0
% 1.50/1.00  res_forward_subsumption_resolution:     0
% 1.50/1.00  res_backward_subsumption_resolution:    0
% 1.50/1.00  res_clause_to_clause_subsumption:       54
% 1.50/1.00  res_orphan_elimination:                 0
% 1.50/1.00  res_tautology_del:                      15
% 1.50/1.00  res_num_eq_res_simplified:              0
% 1.50/1.00  res_num_sel_changes:                    0
% 1.50/1.00  res_moves_from_active_to_pass:          0
% 1.50/1.00  
% 1.50/1.00  ------ Superposition
% 1.50/1.00  
% 1.50/1.00  sup_time_total:                         0.
% 1.50/1.00  sup_time_generating:                    0.
% 1.50/1.00  sup_time_sim_full:                      0.
% 1.50/1.00  sup_time_sim_immed:                     0.
% 1.50/1.00  
% 1.50/1.00  sup_num_of_clauses:                     15
% 1.50/1.00  sup_num_in_active:                      10
% 1.50/1.00  sup_num_in_passive:                     5
% 1.50/1.00  sup_num_of_loops:                       15
% 1.50/1.00  sup_fw_superposition:                   9
% 1.50/1.00  sup_bw_superposition:                   0
% 1.50/1.00  sup_immediate_simplified:               1
% 1.50/1.00  sup_given_eliminated:                   0
% 1.50/1.00  comparisons_done:                       0
% 1.50/1.00  comparisons_avoided:                    0
% 1.50/1.00  
% 1.50/1.00  ------ Simplifications
% 1.50/1.00  
% 1.50/1.00  
% 1.50/1.00  sim_fw_subset_subsumed:                 1
% 1.50/1.00  sim_bw_subset_subsumed:                 0
% 1.50/1.00  sim_fw_subsumed:                        0
% 1.50/1.00  sim_bw_subsumed:                        0
% 1.50/1.00  sim_fw_subsumption_res:                 2
% 1.50/1.00  sim_bw_subsumption_res:                 0
% 1.50/1.00  sim_tautology_del:                      1
% 1.50/1.00  sim_eq_tautology_del:                   1
% 1.50/1.00  sim_eq_res_simp:                        4
% 1.50/1.00  sim_fw_demodulated:                     3
% 1.50/1.00  sim_bw_demodulated:                     8
% 1.50/1.00  sim_light_normalised:                   6
% 1.50/1.00  sim_joinable_taut:                      0
% 1.50/1.00  sim_joinable_simp:                      0
% 1.50/1.00  sim_ac_normalised:                      0
% 1.50/1.00  sim_smt_subsumption:                    0
% 1.50/1.00  
%------------------------------------------------------------------------------
