%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:00:04 EST 2020

% Result     : Theorem 1.81s
% Output     : CNFRefutation 1.81s
% Verified   : 
% Statistics : Number of formulae       :  119 (1019 expanded)
%              Number of clauses        :   75 ( 386 expanded)
%              Number of leaves         :   10 ( 171 expanded)
%              Depth                    :   21
%              Number of atoms          :  369 (3836 expanded)
%              Number of equality atoms :  194 (1149 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   13 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f19])).

fof(f28,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f20])).

fof(f47,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f28])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( ( r1_tarski(k2_relat_1(X2),X1)
          & r1_tarski(k1_relat_1(X2),X0) )
       => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f13])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f14])).

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

fof(f17,plain,(
    ? [X0] :
      ( ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        | ~ v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        | ~ v1_funct_1(X0) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f18,plain,(
    ? [X0] :
      ( ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        | ~ v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        | ~ v1_funct_1(X0) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f17])).

fof(f25,plain,
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

fof(f26,plain,
    ( ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
      | ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
      | ~ v1_funct_1(sK0) )
    & v1_funct_1(sK0)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f25])).

fof(f44,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f26])).

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
    inference(ennf_transformation,[],[f8])).

fof(f16,plain,(
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
    inference(flattening,[],[f15])).

fof(f24,plain,(
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
    inference(nnf_transformation,[],[f16])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f46,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
    | ~ v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f26])).

fof(f45,plain,(
    v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f26])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 != X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f54,plain,(
    ! [X2,X1] :
      ( v1_funct_2(X2,k1_xboole_0,X1)
      | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ) ),
    inference(equality_resolution,[],[f41])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(flattening,[],[f21])).

fof(f31,plain,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f50,plain,(
    ! [X1] : k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(equality_resolution,[],[f31])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f34,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f3,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f3])).

fof(f32,plain,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f49,plain,(
    ! [X0] : k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(equality_resolution,[],[f32])).

fof(f29,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_xboole_0 != X2
      | k1_xboole_0 = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

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

cnf(c_1,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_743,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_10,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relat_1(X0),X2)
    | ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_19,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_243,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relat_1(X0),X2)
    | ~ r1_tarski(k1_relat_1(X0),X1)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_19])).

cnf(c_244,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ r1_tarski(k2_relat_1(sK0),X1)
    | ~ r1_tarski(k1_relat_1(sK0),X0) ),
    inference(unflattening,[status(thm)],[c_243])).

cnf(c_738,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top
    | r1_tarski(k2_relat_1(sK0),X1) != iProver_top
    | r1_tarski(k1_relat_1(sK0),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_244])).

cnf(c_14,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) != X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_17,negated_conjecture,
    ( ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
    | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_18,negated_conjecture,
    ( v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_102,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_17,c_18])).

cnf(c_103,negated_conjecture,
    ( ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
    | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) ),
    inference(renaming,[status(thm)],[c_102])).

cnf(c_313,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | k1_relset_1(X1,X2,X0) != X1
    | k2_relat_1(sK0) != X2
    | k1_relat_1(sK0) != X1
    | sK0 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_103])).

cnf(c_314,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | k1_relset_1(k1_relat_1(sK0),k2_relat_1(sK0),sK0) != k1_relat_1(sK0)
    | k1_xboole_0 = k2_relat_1(sK0) ),
    inference(unflattening,[status(thm)],[c_313])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_322,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | k1_xboole_0 = k2_relat_1(sK0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_314,c_9])).

cnf(c_735,plain,
    ( k1_xboole_0 = k2_relat_1(sK0)
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_322])).

cnf(c_836,plain,
    ( k2_relat_1(sK0) = k1_xboole_0
    | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
    | r1_tarski(k1_relat_1(sK0),k1_relat_1(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_738,c_735])).

cnf(c_844,plain,
    ( r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_849,plain,
    ( r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_844])).

cnf(c_876,plain,
    ( k2_relat_1(sK0) = k1_xboole_0
    | r1_tarski(k1_relat_1(sK0),k1_relat_1(sK0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_836,c_849])).

cnf(c_1032,plain,
    ( k2_relat_1(sK0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_743,c_876])).

cnf(c_13,plain,
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
    inference(resolution_lifted,[status(thm)],[c_13,c_103])).

cnf(c_298,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0))))
    | k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_297])).

cnf(c_736,plain,
    ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_298])).

cnf(c_4,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_795,plain,
    ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
    | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_736,c_4])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_47,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_49,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_47])).

cnf(c_6,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_53,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_55,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_53])).

cnf(c_299,plain,
    ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_298])).

cnf(c_843,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK0))))
    | ~ r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0))
    | ~ r1_tarski(k1_relat_1(sK0),X0) ),
    inference(instantiation,[status(thm)],[c_244])).

cnf(c_845,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK0)))) = iProver_top
    | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
    | r1_tarski(k1_relat_1(sK0),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_843])).

cnf(c_847,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0)))) = iProver_top
    | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
    | r1_tarski(k1_relat_1(sK0),k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_845])).

cnf(c_448,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X1)
    | X2 != X0 ),
    theory(equality)).

cnf(c_916,plain,
    ( ~ r1_tarski(X0,k1_xboole_0)
    | r1_tarski(k1_relat_1(sK0),k1_xboole_0)
    | k1_relat_1(sK0) != X0 ),
    inference(instantiation,[status(thm)],[c_448])).

cnf(c_917,plain,
    ( k1_relat_1(sK0) != X0
    | r1_tarski(X0,k1_xboole_0) != iProver_top
    | r1_tarski(k1_relat_1(sK0),k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_916])).

cnf(c_919,plain,
    ( k1_relat_1(sK0) != k1_xboole_0
    | r1_tarski(k1_relat_1(sK0),k1_xboole_0) = iProver_top
    | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_917])).

cnf(c_927,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
    | k1_relat_1(sK0) != k1_xboole_0
    | k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_795,c_49,c_55,c_299,c_847,c_849,c_919])).

cnf(c_928,plain,
    ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top ),
    inference(renaming,[status(thm)],[c_927])).

cnf(c_1223,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1032,c_928])).

cnf(c_3,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1244,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) != k1_xboole_0
    | k1_relat_1(sK0) != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1223,c_3])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f29])).

cnf(c_851,plain,
    ( ~ r1_tarski(sK0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,sK0)
    | sK0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_904,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0))
    | r1_tarski(sK0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_935,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) = iProver_top
    | r1_tarski(k2_relat_1(sK0),k1_xboole_0) != iProver_top
    | r1_tarski(k1_relat_1(sK0),X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3,c_738])).

cnf(c_859,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k2_relat_1(sK0),X1)
    | k2_relat_1(sK0) != X0 ),
    inference(instantiation,[status(thm)],[c_448])).

cnf(c_860,plain,
    ( k2_relat_1(sK0) != X0
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k2_relat_1(sK0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_859])).

cnf(c_862,plain,
    ( k2_relat_1(sK0) != k1_xboole_0
    | r1_tarski(k2_relat_1(sK0),k1_xboole_0) = iProver_top
    | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_860])).

cnf(c_878,plain,
    ( ~ r1_tarski(k1_relat_1(sK0),k1_relat_1(sK0))
    | k2_relat_1(sK0) = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_876])).

cnf(c_943,plain,
    ( r1_tarski(k1_relat_1(sK0),k1_relat_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_988,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) = iProver_top
    | r1_tarski(k1_relat_1(sK0),X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_935,c_49,c_55,c_862,c_878,c_943])).

cnf(c_1031,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_743,c_988])).

cnf(c_1037,plain,
    ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1031])).

cnf(c_1100,plain,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK0))
    | r1_tarski(k1_xboole_0,sK0) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_11,plain,
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
    inference(resolution_lifted,[status(thm)],[c_11,c_103])).

cnf(c_271,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0)))
    | k2_relat_1(sK0) != k1_xboole_0
    | sK0 != k1_xboole_0
    | k1_xboole_0 = k1_relat_1(sK0) ),
    inference(unflattening,[status(thm)],[c_270])).

cnf(c_283,plain,
    ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
    | k2_relat_1(sK0) != k1_xboole_0
    | sK0 != k1_xboole_0
    | k1_xboole_0 = k1_relat_1(sK0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_271,c_6])).

cnf(c_737,plain,
    ( k2_relat_1(sK0) != k1_xboole_0
    | sK0 != k1_xboole_0
    | k1_xboole_0 = k1_relat_1(sK0)
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_283])).

cnf(c_1224,plain,
    ( k1_relat_1(sK0) = k1_xboole_0
    | sK0 != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1032,c_737])).

cnf(c_1233,plain,
    ( k1_relat_1(sK0) = k1_xboole_0
    | sK0 != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_1224])).

cnf(c_1237,plain,
    ( k1_relat_1(sK0) = k1_xboole_0
    | sK0 != k1_xboole_0
    | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1233,c_3])).

cnf(c_1285,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1738,plain,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1244,c_851,c_904,c_1031,c_1037,c_1100,c_1237,c_1285])).

cnf(c_739,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1541,plain,
    ( k1_relset_1(k1_xboole_0,X0,X1) = k1_relat_1(X1)
    | m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4,c_739])).

cnf(c_1667,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK0) = k1_relat_1(sK0) ),
    inference(superposition,[status(thm)],[c_1031,c_1541])).

cnf(c_1740,plain,
    ( k1_relat_1(sK0) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1738,c_1667])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1740,c_1285,c_1237,c_1100,c_1037,c_1031,c_904,c_851])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n003.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 13:19:42 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.81/1.03  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.81/1.03  
% 1.81/1.03  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.81/1.03  
% 1.81/1.03  ------  iProver source info
% 1.81/1.03  
% 1.81/1.03  git: date: 2020-06-30 10:37:57 +0100
% 1.81/1.03  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.81/1.03  git: non_committed_changes: false
% 1.81/1.03  git: last_make_outside_of_git: false
% 1.81/1.03  
% 1.81/1.03  ------ 
% 1.81/1.03  
% 1.81/1.03  ------ Input Options
% 1.81/1.03  
% 1.81/1.03  --out_options                           all
% 1.81/1.03  --tptp_safe_out                         true
% 1.81/1.03  --problem_path                          ""
% 1.81/1.03  --include_path                          ""
% 1.81/1.03  --clausifier                            res/vclausify_rel
% 1.81/1.03  --clausifier_options                    --mode clausify
% 1.81/1.03  --stdin                                 false
% 1.81/1.03  --stats_out                             all
% 1.81/1.03  
% 1.81/1.03  ------ General Options
% 1.81/1.03  
% 1.81/1.03  --fof                                   false
% 1.81/1.03  --time_out_real                         305.
% 1.81/1.03  --time_out_virtual                      -1.
% 1.81/1.03  --symbol_type_check                     false
% 1.81/1.03  --clausify_out                          false
% 1.81/1.03  --sig_cnt_out                           false
% 1.81/1.03  --trig_cnt_out                          false
% 1.81/1.03  --trig_cnt_out_tolerance                1.
% 1.81/1.03  --trig_cnt_out_sk_spl                   false
% 1.81/1.03  --abstr_cl_out                          false
% 1.81/1.03  
% 1.81/1.03  ------ Global Options
% 1.81/1.03  
% 1.81/1.03  --schedule                              default
% 1.81/1.03  --add_important_lit                     false
% 1.81/1.03  --prop_solver_per_cl                    1000
% 1.81/1.03  --min_unsat_core                        false
% 1.81/1.03  --soft_assumptions                      false
% 1.81/1.03  --soft_lemma_size                       3
% 1.81/1.03  --prop_impl_unit_size                   0
% 1.81/1.03  --prop_impl_unit                        []
% 1.81/1.03  --share_sel_clauses                     true
% 1.81/1.03  --reset_solvers                         false
% 1.81/1.03  --bc_imp_inh                            [conj_cone]
% 1.81/1.03  --conj_cone_tolerance                   3.
% 1.81/1.03  --extra_neg_conj                        none
% 1.81/1.03  --large_theory_mode                     true
% 1.81/1.03  --prolific_symb_bound                   200
% 1.81/1.03  --lt_threshold                          2000
% 1.81/1.03  --clause_weak_htbl                      true
% 1.81/1.03  --gc_record_bc_elim                     false
% 1.81/1.03  
% 1.81/1.03  ------ Preprocessing Options
% 1.81/1.03  
% 1.81/1.03  --preprocessing_flag                    true
% 1.81/1.03  --time_out_prep_mult                    0.1
% 1.81/1.03  --splitting_mode                        input
% 1.81/1.03  --splitting_grd                         true
% 1.81/1.03  --splitting_cvd                         false
% 1.81/1.03  --splitting_cvd_svl                     false
% 1.81/1.03  --splitting_nvd                         32
% 1.81/1.03  --sub_typing                            true
% 1.81/1.03  --prep_gs_sim                           true
% 1.81/1.03  --prep_unflatten                        true
% 1.81/1.03  --prep_res_sim                          true
% 1.81/1.03  --prep_upred                            true
% 1.81/1.03  --prep_sem_filter                       exhaustive
% 1.81/1.03  --prep_sem_filter_out                   false
% 1.81/1.03  --pred_elim                             true
% 1.81/1.03  --res_sim_input                         true
% 1.81/1.03  --eq_ax_congr_red                       true
% 1.81/1.03  --pure_diseq_elim                       true
% 1.81/1.03  --brand_transform                       false
% 1.81/1.03  --non_eq_to_eq                          false
% 1.81/1.03  --prep_def_merge                        true
% 1.81/1.03  --prep_def_merge_prop_impl              false
% 1.81/1.03  --prep_def_merge_mbd                    true
% 1.81/1.03  --prep_def_merge_tr_red                 false
% 1.81/1.03  --prep_def_merge_tr_cl                  false
% 1.81/1.03  --smt_preprocessing                     true
% 1.81/1.03  --smt_ac_axioms                         fast
% 1.81/1.03  --preprocessed_out                      false
% 1.81/1.03  --preprocessed_stats                    false
% 1.81/1.03  
% 1.81/1.03  ------ Abstraction refinement Options
% 1.81/1.03  
% 1.81/1.03  --abstr_ref                             []
% 1.81/1.03  --abstr_ref_prep                        false
% 1.81/1.03  --abstr_ref_until_sat                   false
% 1.81/1.03  --abstr_ref_sig_restrict                funpre
% 1.81/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 1.81/1.03  --abstr_ref_under                       []
% 1.81/1.03  
% 1.81/1.03  ------ SAT Options
% 1.81/1.03  
% 1.81/1.03  --sat_mode                              false
% 1.81/1.03  --sat_fm_restart_options                ""
% 1.81/1.03  --sat_gr_def                            false
% 1.81/1.03  --sat_epr_types                         true
% 1.81/1.03  --sat_non_cyclic_types                  false
% 1.81/1.03  --sat_finite_models                     false
% 1.81/1.03  --sat_fm_lemmas                         false
% 1.81/1.03  --sat_fm_prep                           false
% 1.81/1.03  --sat_fm_uc_incr                        true
% 1.81/1.03  --sat_out_model                         small
% 1.81/1.03  --sat_out_clauses                       false
% 1.81/1.03  
% 1.81/1.03  ------ QBF Options
% 1.81/1.03  
% 1.81/1.03  --qbf_mode                              false
% 1.81/1.03  --qbf_elim_univ                         false
% 1.81/1.03  --qbf_dom_inst                          none
% 1.81/1.03  --qbf_dom_pre_inst                      false
% 1.81/1.03  --qbf_sk_in                             false
% 1.81/1.03  --qbf_pred_elim                         true
% 1.81/1.03  --qbf_split                             512
% 1.81/1.03  
% 1.81/1.03  ------ BMC1 Options
% 1.81/1.03  
% 1.81/1.03  --bmc1_incremental                      false
% 1.81/1.03  --bmc1_axioms                           reachable_all
% 1.81/1.03  --bmc1_min_bound                        0
% 1.81/1.03  --bmc1_max_bound                        -1
% 1.81/1.03  --bmc1_max_bound_default                -1
% 1.81/1.03  --bmc1_symbol_reachability              true
% 1.81/1.03  --bmc1_property_lemmas                  false
% 1.81/1.03  --bmc1_k_induction                      false
% 1.81/1.03  --bmc1_non_equiv_states                 false
% 1.81/1.03  --bmc1_deadlock                         false
% 1.81/1.03  --bmc1_ucm                              false
% 1.81/1.03  --bmc1_add_unsat_core                   none
% 1.81/1.03  --bmc1_unsat_core_children              false
% 1.81/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 1.81/1.03  --bmc1_out_stat                         full
% 1.81/1.03  --bmc1_ground_init                      false
% 1.81/1.03  --bmc1_pre_inst_next_state              false
% 1.81/1.03  --bmc1_pre_inst_state                   false
% 1.81/1.03  --bmc1_pre_inst_reach_state             false
% 1.81/1.03  --bmc1_out_unsat_core                   false
% 1.81/1.03  --bmc1_aig_witness_out                  false
% 1.81/1.03  --bmc1_verbose                          false
% 1.81/1.03  --bmc1_dump_clauses_tptp                false
% 1.81/1.03  --bmc1_dump_unsat_core_tptp             false
% 1.81/1.03  --bmc1_dump_file                        -
% 1.81/1.03  --bmc1_ucm_expand_uc_limit              128
% 1.81/1.03  --bmc1_ucm_n_expand_iterations          6
% 1.81/1.03  --bmc1_ucm_extend_mode                  1
% 1.81/1.03  --bmc1_ucm_init_mode                    2
% 1.81/1.03  --bmc1_ucm_cone_mode                    none
% 1.81/1.03  --bmc1_ucm_reduced_relation_type        0
% 1.81/1.03  --bmc1_ucm_relax_model                  4
% 1.81/1.03  --bmc1_ucm_full_tr_after_sat            true
% 1.81/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 1.81/1.03  --bmc1_ucm_layered_model                none
% 1.81/1.03  --bmc1_ucm_max_lemma_size               10
% 1.81/1.03  
% 1.81/1.03  ------ AIG Options
% 1.81/1.03  
% 1.81/1.03  --aig_mode                              false
% 1.81/1.03  
% 1.81/1.03  ------ Instantiation Options
% 1.81/1.03  
% 1.81/1.03  --instantiation_flag                    true
% 1.81/1.03  --inst_sos_flag                         false
% 1.81/1.03  --inst_sos_phase                        true
% 1.81/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.81/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.81/1.03  --inst_lit_sel_side                     num_symb
% 1.81/1.03  --inst_solver_per_active                1400
% 1.81/1.03  --inst_solver_calls_frac                1.
% 1.81/1.03  --inst_passive_queue_type               priority_queues
% 1.81/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.81/1.03  --inst_passive_queues_freq              [25;2]
% 1.81/1.03  --inst_dismatching                      true
% 1.81/1.03  --inst_eager_unprocessed_to_passive     true
% 1.81/1.03  --inst_prop_sim_given                   true
% 1.81/1.03  --inst_prop_sim_new                     false
% 1.81/1.03  --inst_subs_new                         false
% 1.81/1.03  --inst_eq_res_simp                      false
% 1.81/1.03  --inst_subs_given                       false
% 1.81/1.03  --inst_orphan_elimination               true
% 1.81/1.03  --inst_learning_loop_flag               true
% 1.81/1.03  --inst_learning_start                   3000
% 1.81/1.03  --inst_learning_factor                  2
% 1.81/1.03  --inst_start_prop_sim_after_learn       3
% 1.81/1.03  --inst_sel_renew                        solver
% 1.81/1.03  --inst_lit_activity_flag                true
% 1.81/1.03  --inst_restr_to_given                   false
% 1.81/1.03  --inst_activity_threshold               500
% 1.81/1.03  --inst_out_proof                        true
% 1.81/1.03  
% 1.81/1.03  ------ Resolution Options
% 1.81/1.03  
% 1.81/1.03  --resolution_flag                       true
% 1.81/1.03  --res_lit_sel                           adaptive
% 1.81/1.03  --res_lit_sel_side                      none
% 1.81/1.03  --res_ordering                          kbo
% 1.81/1.03  --res_to_prop_solver                    active
% 1.81/1.03  --res_prop_simpl_new                    false
% 1.81/1.03  --res_prop_simpl_given                  true
% 1.81/1.03  --res_passive_queue_type                priority_queues
% 1.81/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.81/1.03  --res_passive_queues_freq               [15;5]
% 1.81/1.03  --res_forward_subs                      full
% 1.81/1.03  --res_backward_subs                     full
% 1.81/1.03  --res_forward_subs_resolution           true
% 1.81/1.03  --res_backward_subs_resolution          true
% 1.81/1.03  --res_orphan_elimination                true
% 1.81/1.03  --res_time_limit                        2.
% 1.81/1.03  --res_out_proof                         true
% 1.81/1.03  
% 1.81/1.03  ------ Superposition Options
% 1.81/1.03  
% 1.81/1.03  --superposition_flag                    true
% 1.81/1.03  --sup_passive_queue_type                priority_queues
% 1.81/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.81/1.03  --sup_passive_queues_freq               [8;1;4]
% 1.81/1.03  --demod_completeness_check              fast
% 1.81/1.03  --demod_use_ground                      true
% 1.81/1.03  --sup_to_prop_solver                    passive
% 1.81/1.03  --sup_prop_simpl_new                    true
% 1.81/1.03  --sup_prop_simpl_given                  true
% 1.81/1.03  --sup_fun_splitting                     false
% 1.81/1.03  --sup_smt_interval                      50000
% 1.81/1.03  
% 1.81/1.03  ------ Superposition Simplification Setup
% 1.81/1.03  
% 1.81/1.03  --sup_indices_passive                   []
% 1.81/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.81/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.81/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.81/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 1.81/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.81/1.03  --sup_full_bw                           [BwDemod]
% 1.81/1.03  --sup_immed_triv                        [TrivRules]
% 1.81/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.81/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.81/1.03  --sup_immed_bw_main                     []
% 1.81/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.81/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 1.81/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.81/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.81/1.03  
% 1.81/1.03  ------ Combination Options
% 1.81/1.03  
% 1.81/1.03  --comb_res_mult                         3
% 1.81/1.03  --comb_sup_mult                         2
% 1.81/1.03  --comb_inst_mult                        10
% 1.81/1.03  
% 1.81/1.03  ------ Debug Options
% 1.81/1.03  
% 1.81/1.03  --dbg_backtrace                         false
% 1.81/1.03  --dbg_dump_prop_clauses                 false
% 1.81/1.03  --dbg_dump_prop_clauses_file            -
% 1.81/1.03  --dbg_out_stat                          false
% 1.81/1.03  ------ Parsing...
% 1.81/1.03  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.81/1.03  
% 1.81/1.03  ------ Preprocessing... sf_s  rm: 3 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.81/1.03  
% 1.81/1.03  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.81/1.03  
% 1.81/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.81/1.03  ------ Proving...
% 1.81/1.03  ------ Problem Properties 
% 1.81/1.03  
% 1.81/1.03  
% 1.81/1.03  clauses                                 13
% 1.81/1.03  conjectures                             0
% 1.81/1.03  EPR                                     2
% 1.81/1.03  Horn                                    12
% 1.81/1.03  unary                                   4
% 1.81/1.03  binary                                  4
% 1.81/1.03  lits                                    29
% 1.81/1.03  lits eq                                 13
% 1.81/1.03  fd_pure                                 0
% 1.81/1.03  fd_pseudo                               0
% 1.81/1.03  fd_cond                                 1
% 1.81/1.03  fd_pseudo_cond                          1
% 1.81/1.03  AC symbols                              0
% 1.81/1.03  
% 1.81/1.03  ------ Schedule dynamic 5 is on 
% 1.81/1.03  
% 1.81/1.03  ------ no conjectures: strip conj schedule 
% 1.81/1.03  
% 1.81/1.03  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" stripped conjectures Time Limit: 10.
% 1.81/1.03  
% 1.81/1.03  
% 1.81/1.03  ------ 
% 1.81/1.03  Current options:
% 1.81/1.03  ------ 
% 1.81/1.03  
% 1.81/1.03  ------ Input Options
% 1.81/1.03  
% 1.81/1.03  --out_options                           all
% 1.81/1.03  --tptp_safe_out                         true
% 1.81/1.03  --problem_path                          ""
% 1.81/1.03  --include_path                          ""
% 1.81/1.03  --clausifier                            res/vclausify_rel
% 1.81/1.03  --clausifier_options                    --mode clausify
% 1.81/1.03  --stdin                                 false
% 1.81/1.03  --stats_out                             all
% 1.81/1.03  
% 1.81/1.03  ------ General Options
% 1.81/1.03  
% 1.81/1.03  --fof                                   false
% 1.81/1.03  --time_out_real                         305.
% 1.81/1.03  --time_out_virtual                      -1.
% 1.81/1.03  --symbol_type_check                     false
% 1.81/1.03  --clausify_out                          false
% 1.81/1.03  --sig_cnt_out                           false
% 1.81/1.03  --trig_cnt_out                          false
% 1.81/1.03  --trig_cnt_out_tolerance                1.
% 1.81/1.03  --trig_cnt_out_sk_spl                   false
% 1.81/1.03  --abstr_cl_out                          false
% 1.81/1.03  
% 1.81/1.03  ------ Global Options
% 1.81/1.03  
% 1.81/1.03  --schedule                              default
% 1.81/1.03  --add_important_lit                     false
% 1.81/1.03  --prop_solver_per_cl                    1000
% 1.81/1.03  --min_unsat_core                        false
% 1.81/1.03  --soft_assumptions                      false
% 1.81/1.03  --soft_lemma_size                       3
% 1.81/1.03  --prop_impl_unit_size                   0
% 1.81/1.03  --prop_impl_unit                        []
% 1.81/1.03  --share_sel_clauses                     true
% 1.81/1.03  --reset_solvers                         false
% 1.81/1.03  --bc_imp_inh                            [conj_cone]
% 1.81/1.03  --conj_cone_tolerance                   3.
% 1.81/1.03  --extra_neg_conj                        none
% 1.81/1.03  --large_theory_mode                     true
% 1.81/1.03  --prolific_symb_bound                   200
% 1.81/1.03  --lt_threshold                          2000
% 1.81/1.03  --clause_weak_htbl                      true
% 1.81/1.03  --gc_record_bc_elim                     false
% 1.81/1.03  
% 1.81/1.03  ------ Preprocessing Options
% 1.81/1.03  
% 1.81/1.03  --preprocessing_flag                    true
% 1.81/1.03  --time_out_prep_mult                    0.1
% 1.81/1.03  --splitting_mode                        input
% 1.81/1.03  --splitting_grd                         true
% 1.81/1.03  --splitting_cvd                         false
% 1.81/1.03  --splitting_cvd_svl                     false
% 1.81/1.03  --splitting_nvd                         32
% 1.81/1.03  --sub_typing                            true
% 1.81/1.03  --prep_gs_sim                           true
% 1.81/1.03  --prep_unflatten                        true
% 1.81/1.03  --prep_res_sim                          true
% 1.81/1.03  --prep_upred                            true
% 1.81/1.03  --prep_sem_filter                       exhaustive
% 1.81/1.03  --prep_sem_filter_out                   false
% 1.81/1.03  --pred_elim                             true
% 1.81/1.03  --res_sim_input                         true
% 1.81/1.03  --eq_ax_congr_red                       true
% 1.81/1.03  --pure_diseq_elim                       true
% 1.81/1.03  --brand_transform                       false
% 1.81/1.03  --non_eq_to_eq                          false
% 1.81/1.03  --prep_def_merge                        true
% 1.81/1.03  --prep_def_merge_prop_impl              false
% 1.81/1.03  --prep_def_merge_mbd                    true
% 1.81/1.03  --prep_def_merge_tr_red                 false
% 1.81/1.03  --prep_def_merge_tr_cl                  false
% 1.81/1.03  --smt_preprocessing                     true
% 1.81/1.03  --smt_ac_axioms                         fast
% 1.81/1.03  --preprocessed_out                      false
% 1.81/1.03  --preprocessed_stats                    false
% 1.81/1.03  
% 1.81/1.03  ------ Abstraction refinement Options
% 1.81/1.03  
% 1.81/1.03  --abstr_ref                             []
% 1.81/1.03  --abstr_ref_prep                        false
% 1.81/1.03  --abstr_ref_until_sat                   false
% 1.81/1.03  --abstr_ref_sig_restrict                funpre
% 1.81/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 1.81/1.03  --abstr_ref_under                       []
% 1.81/1.03  
% 1.81/1.03  ------ SAT Options
% 1.81/1.03  
% 1.81/1.03  --sat_mode                              false
% 1.81/1.03  --sat_fm_restart_options                ""
% 1.81/1.03  --sat_gr_def                            false
% 1.81/1.03  --sat_epr_types                         true
% 1.81/1.03  --sat_non_cyclic_types                  false
% 1.81/1.03  --sat_finite_models                     false
% 1.81/1.03  --sat_fm_lemmas                         false
% 1.81/1.03  --sat_fm_prep                           false
% 1.81/1.03  --sat_fm_uc_incr                        true
% 1.81/1.03  --sat_out_model                         small
% 1.81/1.03  --sat_out_clauses                       false
% 1.81/1.03  
% 1.81/1.03  ------ QBF Options
% 1.81/1.03  
% 1.81/1.03  --qbf_mode                              false
% 1.81/1.03  --qbf_elim_univ                         false
% 1.81/1.03  --qbf_dom_inst                          none
% 1.81/1.03  --qbf_dom_pre_inst                      false
% 1.81/1.03  --qbf_sk_in                             false
% 1.81/1.03  --qbf_pred_elim                         true
% 1.81/1.03  --qbf_split                             512
% 1.81/1.03  
% 1.81/1.03  ------ BMC1 Options
% 1.81/1.03  
% 1.81/1.03  --bmc1_incremental                      false
% 1.81/1.03  --bmc1_axioms                           reachable_all
% 1.81/1.03  --bmc1_min_bound                        0
% 1.81/1.03  --bmc1_max_bound                        -1
% 1.81/1.03  --bmc1_max_bound_default                -1
% 1.81/1.03  --bmc1_symbol_reachability              true
% 1.81/1.03  --bmc1_property_lemmas                  false
% 1.81/1.03  --bmc1_k_induction                      false
% 1.81/1.03  --bmc1_non_equiv_states                 false
% 1.81/1.03  --bmc1_deadlock                         false
% 1.81/1.03  --bmc1_ucm                              false
% 1.81/1.03  --bmc1_add_unsat_core                   none
% 1.81/1.03  --bmc1_unsat_core_children              false
% 1.81/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 1.81/1.03  --bmc1_out_stat                         full
% 1.81/1.03  --bmc1_ground_init                      false
% 1.81/1.03  --bmc1_pre_inst_next_state              false
% 1.81/1.03  --bmc1_pre_inst_state                   false
% 1.81/1.03  --bmc1_pre_inst_reach_state             false
% 1.81/1.03  --bmc1_out_unsat_core                   false
% 1.81/1.03  --bmc1_aig_witness_out                  false
% 1.81/1.03  --bmc1_verbose                          false
% 1.81/1.03  --bmc1_dump_clauses_tptp                false
% 1.81/1.03  --bmc1_dump_unsat_core_tptp             false
% 1.81/1.03  --bmc1_dump_file                        -
% 1.81/1.03  --bmc1_ucm_expand_uc_limit              128
% 1.81/1.03  --bmc1_ucm_n_expand_iterations          6
% 1.81/1.03  --bmc1_ucm_extend_mode                  1
% 1.81/1.03  --bmc1_ucm_init_mode                    2
% 1.81/1.03  --bmc1_ucm_cone_mode                    none
% 1.81/1.03  --bmc1_ucm_reduced_relation_type        0
% 1.81/1.03  --bmc1_ucm_relax_model                  4
% 1.81/1.03  --bmc1_ucm_full_tr_after_sat            true
% 1.81/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 1.81/1.03  --bmc1_ucm_layered_model                none
% 1.81/1.03  --bmc1_ucm_max_lemma_size               10
% 1.81/1.03  
% 1.81/1.03  ------ AIG Options
% 1.81/1.03  
% 1.81/1.03  --aig_mode                              false
% 1.81/1.03  
% 1.81/1.03  ------ Instantiation Options
% 1.81/1.03  
% 1.81/1.03  --instantiation_flag                    true
% 1.81/1.03  --inst_sos_flag                         false
% 1.81/1.03  --inst_sos_phase                        true
% 1.81/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.81/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.81/1.03  --inst_lit_sel_side                     none
% 1.81/1.03  --inst_solver_per_active                1400
% 1.81/1.03  --inst_solver_calls_frac                1.
% 1.81/1.03  --inst_passive_queue_type               priority_queues
% 1.81/1.03  --inst_passive_queues                   [[-num_var];[+age;-num_symb]]
% 1.81/1.03  --inst_passive_queues_freq              [25;2]
% 1.81/1.03  --inst_dismatching                      true
% 1.81/1.03  --inst_eager_unprocessed_to_passive     true
% 1.81/1.03  --inst_prop_sim_given                   true
% 1.81/1.03  --inst_prop_sim_new                     false
% 1.81/1.03  --inst_subs_new                         false
% 1.81/1.03  --inst_eq_res_simp                      false
% 1.81/1.03  --inst_subs_given                       false
% 1.81/1.03  --inst_orphan_elimination               true
% 1.81/1.03  --inst_learning_loop_flag               true
% 1.81/1.03  --inst_learning_start                   3000
% 1.81/1.03  --inst_learning_factor                  2
% 1.81/1.03  --inst_start_prop_sim_after_learn       3
% 1.81/1.03  --inst_sel_renew                        solver
% 1.81/1.03  --inst_lit_activity_flag                true
% 1.81/1.03  --inst_restr_to_given                   false
% 1.81/1.03  --inst_activity_threshold               500
% 1.81/1.03  --inst_out_proof                        true
% 1.81/1.03  
% 1.81/1.03  ------ Resolution Options
% 1.81/1.03  
% 1.81/1.03  --resolution_flag                       false
% 1.81/1.03  --res_lit_sel                           adaptive
% 1.81/1.03  --res_lit_sel_side                      none
% 1.81/1.03  --res_ordering                          kbo
% 1.81/1.03  --res_to_prop_solver                    active
% 1.81/1.03  --res_prop_simpl_new                    false
% 1.81/1.03  --res_prop_simpl_given                  true
% 1.81/1.03  --res_passive_queue_type                priority_queues
% 1.81/1.03  --res_passive_queues                    [[-num_symb];[+age;-num_symb]]
% 1.81/1.03  --res_passive_queues_freq               [15;5]
% 1.81/1.03  --res_forward_subs                      full
% 1.81/1.03  --res_backward_subs                     full
% 1.81/1.03  --res_forward_subs_resolution           true
% 1.81/1.03  --res_backward_subs_resolution          true
% 1.81/1.03  --res_orphan_elimination                true
% 1.81/1.03  --res_time_limit                        2.
% 1.81/1.03  --res_out_proof                         true
% 1.81/1.03  
% 1.81/1.03  ------ Superposition Options
% 1.81/1.03  
% 1.81/1.03  --superposition_flag                    true
% 1.81/1.03  --sup_passive_queue_type                priority_queues
% 1.81/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.81/1.03  --sup_passive_queues_freq               [8;1;4]
% 1.81/1.03  --demod_completeness_check              fast
% 1.81/1.03  --demod_use_ground                      true
% 1.81/1.03  --sup_to_prop_solver                    passive
% 1.81/1.03  --sup_prop_simpl_new                    true
% 1.81/1.03  --sup_prop_simpl_given                  true
% 1.81/1.03  --sup_fun_splitting                     false
% 1.81/1.03  --sup_smt_interval                      50000
% 1.81/1.03  
% 1.81/1.03  ------ Superposition Simplification Setup
% 1.81/1.03  
% 1.81/1.03  --sup_indices_passive                   []
% 1.81/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.81/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.81/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.81/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 1.81/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.81/1.03  --sup_full_bw                           [BwDemod]
% 1.81/1.03  --sup_immed_triv                        [TrivRules]
% 1.81/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.81/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.81/1.03  --sup_immed_bw_main                     []
% 1.81/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.81/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 1.81/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.81/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.81/1.03  
% 1.81/1.03  ------ Combination Options
% 1.81/1.03  
% 1.81/1.03  --comb_res_mult                         3
% 1.81/1.03  --comb_sup_mult                         2
% 1.81/1.03  --comb_inst_mult                        10
% 1.81/1.03  
% 1.81/1.03  ------ Debug Options
% 1.81/1.03  
% 1.81/1.03  --dbg_backtrace                         false
% 1.81/1.03  --dbg_dump_prop_clauses                 false
% 1.81/1.03  --dbg_dump_prop_clauses_file            -
% 1.81/1.03  --dbg_out_stat                          false
% 1.81/1.03  
% 1.81/1.03  
% 1.81/1.03  
% 1.81/1.03  
% 1.81/1.03  ------ Proving...
% 1.81/1.03  
% 1.81/1.03  
% 1.81/1.03  % SZS status Theorem for theBenchmark.p
% 1.81/1.03  
% 1.81/1.03  % SZS output start CNFRefutation for theBenchmark.p
% 1.81/1.03  
% 1.81/1.03  fof(f1,axiom,(
% 1.81/1.03    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.81/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.81/1.03  
% 1.81/1.03  fof(f19,plain,(
% 1.81/1.03    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.81/1.03    inference(nnf_transformation,[],[f1])).
% 1.81/1.03  
% 1.81/1.03  fof(f20,plain,(
% 1.81/1.03    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.81/1.03    inference(flattening,[],[f19])).
% 1.81/1.03  
% 1.81/1.03  fof(f28,plain,(
% 1.81/1.03    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 1.81/1.03    inference(cnf_transformation,[],[f20])).
% 1.81/1.03  
% 1.81/1.03  fof(f47,plain,(
% 1.81/1.03    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 1.81/1.03    inference(equality_resolution,[],[f28])).
% 1.81/1.03  
% 1.81/1.03  fof(f7,axiom,(
% 1.81/1.03    ! [X0,X1,X2] : (v1_relat_1(X2) => ((r1_tarski(k2_relat_1(X2),X1) & r1_tarski(k1_relat_1(X2),X0)) => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 1.81/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.81/1.03  
% 1.81/1.03  fof(f13,plain,(
% 1.81/1.03    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | (~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0))) | ~v1_relat_1(X2))),
% 1.81/1.03    inference(ennf_transformation,[],[f7])).
% 1.81/1.03  
% 1.81/1.03  fof(f14,plain,(
% 1.81/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2))),
% 1.81/1.03    inference(flattening,[],[f13])).
% 1.81/1.03  
% 1.81/1.03  fof(f37,plain,(
% 1.81/1.03    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2)) )),
% 1.81/1.03    inference(cnf_transformation,[],[f14])).
% 1.81/1.03  
% 1.81/1.03  fof(f9,conjecture,(
% 1.81/1.03    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 1.81/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.81/1.03  
% 1.81/1.03  fof(f10,negated_conjecture,(
% 1.81/1.03    ~! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 1.81/1.03    inference(negated_conjecture,[],[f9])).
% 1.81/1.03  
% 1.81/1.03  fof(f17,plain,(
% 1.81/1.03    ? [X0] : ((~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0)) & (v1_funct_1(X0) & v1_relat_1(X0)))),
% 1.81/1.03    inference(ennf_transformation,[],[f10])).
% 1.81/1.03  
% 1.81/1.03  fof(f18,plain,(
% 1.81/1.03    ? [X0] : ((~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0)) & v1_funct_1(X0) & v1_relat_1(X0))),
% 1.81/1.03    inference(flattening,[],[f17])).
% 1.81/1.03  
% 1.81/1.03  fof(f25,plain,(
% 1.81/1.03    ? [X0] : ((~m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0)) & v1_funct_1(X0) & v1_relat_1(X0)) => ((~m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) | ~v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) | ~v1_funct_1(sK0)) & v1_funct_1(sK0) & v1_relat_1(sK0))),
% 1.81/1.03    introduced(choice_axiom,[])).
% 1.81/1.03  
% 1.81/1.03  fof(f26,plain,(
% 1.81/1.03    (~m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) | ~v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) | ~v1_funct_1(sK0)) & v1_funct_1(sK0) & v1_relat_1(sK0)),
% 1.81/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f25])).
% 1.81/1.03  
% 1.81/1.03  fof(f44,plain,(
% 1.81/1.03    v1_relat_1(sK0)),
% 1.81/1.03    inference(cnf_transformation,[],[f26])).
% 1.81/1.03  
% 1.81/1.03  fof(f8,axiom,(
% 1.81/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.81/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.81/1.03  
% 1.81/1.03  fof(f15,plain,(
% 1.81/1.03    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.81/1.03    inference(ennf_transformation,[],[f8])).
% 1.81/1.03  
% 1.81/1.03  fof(f16,plain,(
% 1.81/1.03    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.81/1.03    inference(flattening,[],[f15])).
% 1.81/1.03  
% 1.81/1.03  fof(f24,plain,(
% 1.81/1.03    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.81/1.03    inference(nnf_transformation,[],[f16])).
% 1.81/1.03  
% 1.81/1.03  fof(f40,plain,(
% 1.81/1.03    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.81/1.03    inference(cnf_transformation,[],[f24])).
% 1.81/1.03  
% 1.81/1.03  fof(f46,plain,(
% 1.81/1.03    ~m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) | ~v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) | ~v1_funct_1(sK0)),
% 1.81/1.03    inference(cnf_transformation,[],[f26])).
% 1.81/1.03  
% 1.81/1.03  fof(f45,plain,(
% 1.81/1.03    v1_funct_1(sK0)),
% 1.81/1.03    inference(cnf_transformation,[],[f26])).
% 1.81/1.03  
% 1.81/1.03  fof(f6,axiom,(
% 1.81/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relset_1(X0,X1,X2) = k1_relat_1(X2))),
% 1.81/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.81/1.03  
% 1.81/1.03  fof(f12,plain,(
% 1.81/1.03    ! [X0,X1,X2] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.81/1.03    inference(ennf_transformation,[],[f6])).
% 1.81/1.03  
% 1.81/1.03  fof(f36,plain,(
% 1.81/1.03    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.81/1.03    inference(cnf_transformation,[],[f12])).
% 1.81/1.03  
% 1.81/1.03  fof(f41,plain,(
% 1.81/1.03    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 != X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.81/1.03    inference(cnf_transformation,[],[f24])).
% 1.81/1.03  
% 1.81/1.03  fof(f54,plain,(
% 1.81/1.03    ( ! [X2,X1] : (v1_funct_2(X2,k1_xboole_0,X1) | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))) )),
% 1.81/1.03    inference(equality_resolution,[],[f41])).
% 1.81/1.03  
% 1.81/1.03  fof(f2,axiom,(
% 1.81/1.03    ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 1.81/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.81/1.03  
% 1.81/1.03  fof(f21,plain,(
% 1.81/1.03    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 1.81/1.03    inference(nnf_transformation,[],[f2])).
% 1.81/1.03  
% 1.81/1.03  fof(f22,plain,(
% 1.81/1.03    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 1.81/1.03    inference(flattening,[],[f21])).
% 1.81/1.03  
% 1.81/1.03  fof(f31,plain,(
% 1.81/1.03    ( ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 | k1_xboole_0 != X0) )),
% 1.81/1.03    inference(cnf_transformation,[],[f22])).
% 1.81/1.03  
% 1.81/1.03  fof(f50,plain,(
% 1.81/1.03    ( ! [X1] : (k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0) )),
% 1.81/1.03    inference(equality_resolution,[],[f31])).
% 1.81/1.03  
% 1.81/1.03  fof(f4,axiom,(
% 1.81/1.03    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 1.81/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.81/1.03  
% 1.81/1.03  fof(f23,plain,(
% 1.81/1.03    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 1.81/1.03    inference(nnf_transformation,[],[f4])).
% 1.81/1.03  
% 1.81/1.03  fof(f34,plain,(
% 1.81/1.03    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 1.81/1.03    inference(cnf_transformation,[],[f23])).
% 1.81/1.03  
% 1.81/1.03  fof(f3,axiom,(
% 1.81/1.03    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 1.81/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.81/1.03  
% 1.81/1.03  fof(f33,plain,(
% 1.81/1.03    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 1.81/1.03    inference(cnf_transformation,[],[f3])).
% 1.81/1.03  
% 1.81/1.03  fof(f32,plain,(
% 1.81/1.03    ( ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 | k1_xboole_0 != X1) )),
% 1.81/1.03    inference(cnf_transformation,[],[f22])).
% 1.81/1.03  
% 1.81/1.03  fof(f49,plain,(
% 1.81/1.03    ( ! [X0] : (k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0) )),
% 1.81/1.03    inference(equality_resolution,[],[f32])).
% 1.81/1.03  
% 1.81/1.03  fof(f29,plain,(
% 1.81/1.03    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 1.81/1.03    inference(cnf_transformation,[],[f20])).
% 1.81/1.03  
% 1.81/1.03  fof(f43,plain,(
% 1.81/1.03    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2 | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.81/1.03    inference(cnf_transformation,[],[f24])).
% 1.81/1.03  
% 1.81/1.03  fof(f51,plain,(
% 1.81/1.03    ( ! [X0,X1] : (v1_funct_2(k1_xboole_0,X0,X1) | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.81/1.03    inference(equality_resolution,[],[f43])).
% 1.81/1.03  
% 1.81/1.03  fof(f52,plain,(
% 1.81/1.03    ( ! [X0] : (v1_funct_2(k1_xboole_0,X0,k1_xboole_0) | k1_xboole_0 = X0 | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))) )),
% 1.81/1.03    inference(equality_resolution,[],[f51])).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1,plain,
% 1.81/1.03      ( r1_tarski(X0,X0) ),
% 1.81/1.03      inference(cnf_transformation,[],[f47]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_743,plain,
% 1.81/1.03      ( r1_tarski(X0,X0) = iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_10,plain,
% 1.81/1.03      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.81/1.03      | ~ r1_tarski(k2_relat_1(X0),X2)
% 1.81/1.03      | ~ r1_tarski(k1_relat_1(X0),X1)
% 1.81/1.03      | ~ v1_relat_1(X0) ),
% 1.81/1.03      inference(cnf_transformation,[],[f37]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_19,negated_conjecture,
% 1.81/1.03      ( v1_relat_1(sK0) ),
% 1.81/1.03      inference(cnf_transformation,[],[f44]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_243,plain,
% 1.81/1.03      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.81/1.03      | ~ r1_tarski(k2_relat_1(X0),X2)
% 1.81/1.03      | ~ r1_tarski(k1_relat_1(X0),X1)
% 1.81/1.03      | sK0 != X0 ),
% 1.81/1.03      inference(resolution_lifted,[status(thm)],[c_10,c_19]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_244,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.81/1.03      | ~ r1_tarski(k2_relat_1(sK0),X1)
% 1.81/1.03      | ~ r1_tarski(k1_relat_1(sK0),X0) ),
% 1.81/1.03      inference(unflattening,[status(thm)],[c_243]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_738,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top
% 1.81/1.03      | r1_tarski(k2_relat_1(sK0),X1) != iProver_top
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),X0) != iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_244]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_14,plain,
% 1.81/1.03      ( v1_funct_2(X0,X1,X2)
% 1.81/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.81/1.03      | k1_relset_1(X1,X2,X0) != X1
% 1.81/1.03      | k1_xboole_0 = X2 ),
% 1.81/1.03      inference(cnf_transformation,[],[f40]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_17,negated_conjecture,
% 1.81/1.03      ( ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
% 1.81/1.03      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | ~ v1_funct_1(sK0) ),
% 1.81/1.03      inference(cnf_transformation,[],[f46]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_18,negated_conjecture,
% 1.81/1.03      ( v1_funct_1(sK0) ),
% 1.81/1.03      inference(cnf_transformation,[],[f45]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_102,plain,
% 1.81/1.03      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0)) ),
% 1.81/1.03      inference(global_propositional_subsumption,
% 1.81/1.03                [status(thm)],
% 1.81/1.03                [c_17,c_18]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_103,negated_conjecture,
% 1.81/1.03      ( ~ v1_funct_2(sK0,k1_relat_1(sK0),k2_relat_1(sK0))
% 1.81/1.03      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) ),
% 1.81/1.03      inference(renaming,[status(thm)],[c_102]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_313,plain,
% 1.81/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.81/1.03      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | k1_relset_1(X1,X2,X0) != X1
% 1.81/1.03      | k2_relat_1(sK0) != X2
% 1.81/1.03      | k1_relat_1(sK0) != X1
% 1.81/1.03      | sK0 != X0
% 1.81/1.03      | k1_xboole_0 = X2 ),
% 1.81/1.03      inference(resolution_lifted,[status(thm)],[c_14,c_103]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_314,plain,
% 1.81/1.03      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | k1_relset_1(k1_relat_1(sK0),k2_relat_1(sK0),sK0) != k1_relat_1(sK0)
% 1.81/1.03      | k1_xboole_0 = k2_relat_1(sK0) ),
% 1.81/1.03      inference(unflattening,[status(thm)],[c_313]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_9,plain,
% 1.81/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.81/1.03      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.81/1.03      inference(cnf_transformation,[],[f36]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_322,plain,
% 1.81/1.03      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | k1_xboole_0 = k2_relat_1(sK0) ),
% 1.81/1.03      inference(forward_subsumption_resolution,[status(thm)],[c_314,c_9]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_735,plain,
% 1.81/1.03      ( k1_xboole_0 = k2_relat_1(sK0)
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_322]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_836,plain,
% 1.81/1.03      ( k2_relat_1(sK0) = k1_xboole_0
% 1.81/1.03      | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),k1_relat_1(sK0)) != iProver_top ),
% 1.81/1.03      inference(superposition,[status(thm)],[c_738,c_735]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_844,plain,
% 1.81/1.03      ( r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_1]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_849,plain,
% 1.81/1.03      ( r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) = iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_844]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_876,plain,
% 1.81/1.03      ( k2_relat_1(sK0) = k1_xboole_0
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),k1_relat_1(sK0)) != iProver_top ),
% 1.81/1.03      inference(global_propositional_subsumption,
% 1.81/1.03                [status(thm)],
% 1.81/1.03                [c_836,c_849]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1032,plain,
% 1.81/1.03      ( k2_relat_1(sK0) = k1_xboole_0 ),
% 1.81/1.03      inference(superposition,[status(thm)],[c_743,c_876]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_13,plain,
% 1.81/1.03      ( v1_funct_2(X0,k1_xboole_0,X1)
% 1.81/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 1.81/1.03      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0 ),
% 1.81/1.03      inference(cnf_transformation,[],[f54]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_297,plain,
% 1.81/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 1.81/1.03      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0
% 1.81/1.03      | k2_relat_1(sK0) != X1
% 1.81/1.03      | k1_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | sK0 != X0 ),
% 1.81/1.03      inference(resolution_lifted,[status(thm)],[c_13,c_103]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_298,plain,
% 1.81/1.03      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0))))
% 1.81/1.03      | k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 1.81/1.03      | k1_relat_1(sK0) != k1_xboole_0 ),
% 1.81/1.03      inference(unflattening,[status(thm)],[c_297]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_736,plain,
% 1.81/1.03      ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 1.81/1.03      | k1_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0)))) != iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_298]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_4,plain,
% 1.81/1.03      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 1.81/1.03      inference(cnf_transformation,[],[f50]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_795,plain,
% 1.81/1.03      ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 1.81/1.03      | k1_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.81/1.03      inference(demodulation,[status(thm)],[c_736,c_4]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_8,plain,
% 1.81/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 1.81/1.03      inference(cnf_transformation,[],[f34]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_47,plain,
% 1.81/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 1.81/1.03      | r1_tarski(X0,X1) = iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_49,plain,
% 1.81/1.03      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 1.81/1.03      | r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_47]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_6,plain,
% 1.81/1.03      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 1.81/1.03      inference(cnf_transformation,[],[f33]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_53,plain,
% 1.81/1.03      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_55,plain,
% 1.81/1.03      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_53]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_299,plain,
% 1.81/1.03      ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 1.81/1.03      | k1_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0)))) != iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_298]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_843,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK0))))
% 1.81/1.03      | ~ r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0))
% 1.81/1.03      | ~ r1_tarski(k1_relat_1(sK0),X0) ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_244]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_845,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK0)))) = iProver_top
% 1.81/1.03      | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),X0) != iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_843]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_847,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0)))) = iProver_top
% 1.81/1.03      | r1_tarski(k2_relat_1(sK0),k2_relat_1(sK0)) != iProver_top
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),k1_xboole_0) != iProver_top ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_845]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_448,plain,
% 1.81/1.03      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X1) | X2 != X0 ),
% 1.81/1.03      theory(equality) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_916,plain,
% 1.81/1.03      ( ~ r1_tarski(X0,k1_xboole_0)
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),k1_xboole_0)
% 1.81/1.03      | k1_relat_1(sK0) != X0 ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_448]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_917,plain,
% 1.81/1.03      ( k1_relat_1(sK0) != X0
% 1.81/1.03      | r1_tarski(X0,k1_xboole_0) != iProver_top
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),k1_xboole_0) = iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_916]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_919,plain,
% 1.81/1.03      ( k1_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),k1_xboole_0) = iProver_top
% 1.81/1.03      | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_917]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_927,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top
% 1.81/1.03      | k1_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0 ),
% 1.81/1.03      inference(global_propositional_subsumption,
% 1.81/1.03                [status(thm)],
% 1.81/1.03                [c_795,c_49,c_55,c_299,c_847,c_849,c_919]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_928,plain,
% 1.81/1.03      ( k1_relset_1(k1_xboole_0,k2_relat_1(sK0),sK0) != k1_xboole_0
% 1.81/1.03      | k1_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top ),
% 1.81/1.03      inference(renaming,[status(thm)],[c_927]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1223,plain,
% 1.81/1.03      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) != k1_xboole_0
% 1.81/1.03      | k1_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))) != iProver_top ),
% 1.81/1.03      inference(demodulation,[status(thm)],[c_1032,c_928]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_3,plain,
% 1.81/1.03      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 1.81/1.03      inference(cnf_transformation,[],[f49]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1244,plain,
% 1.81/1.03      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) != k1_xboole_0
% 1.81/1.03      | k1_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.81/1.03      inference(demodulation,[status(thm)],[c_1223,c_3]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_0,plain,
% 1.81/1.03      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 1.81/1.03      inference(cnf_transformation,[],[f29]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_851,plain,
% 1.81/1.03      ( ~ r1_tarski(sK0,k1_xboole_0)
% 1.81/1.03      | ~ r1_tarski(k1_xboole_0,sK0)
% 1.81/1.03      | sK0 = k1_xboole_0 ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_0]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_904,plain,
% 1.81/1.03      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0))
% 1.81/1.03      | r1_tarski(sK0,k1_xboole_0) ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_8]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_935,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) = iProver_top
% 1.81/1.03      | r1_tarski(k2_relat_1(sK0),k1_xboole_0) != iProver_top
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),X0) != iProver_top ),
% 1.81/1.03      inference(superposition,[status(thm)],[c_3,c_738]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_859,plain,
% 1.81/1.03      ( ~ r1_tarski(X0,X1)
% 1.81/1.03      | r1_tarski(k2_relat_1(sK0),X1)
% 1.81/1.03      | k2_relat_1(sK0) != X0 ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_448]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_860,plain,
% 1.81/1.03      ( k2_relat_1(sK0) != X0
% 1.81/1.03      | r1_tarski(X0,X1) != iProver_top
% 1.81/1.03      | r1_tarski(k2_relat_1(sK0),X1) = iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_859]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_862,plain,
% 1.81/1.03      ( k2_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | r1_tarski(k2_relat_1(sK0),k1_xboole_0) = iProver_top
% 1.81/1.03      | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_860]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_878,plain,
% 1.81/1.03      ( ~ r1_tarski(k1_relat_1(sK0),k1_relat_1(sK0))
% 1.81/1.03      | k2_relat_1(sK0) = k1_xboole_0 ),
% 1.81/1.03      inference(predicate_to_equality_rev,[status(thm)],[c_876]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_943,plain,
% 1.81/1.03      ( r1_tarski(k1_relat_1(sK0),k1_relat_1(sK0)) ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_1]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_988,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) = iProver_top
% 1.81/1.03      | r1_tarski(k1_relat_1(sK0),X0) != iProver_top ),
% 1.81/1.03      inference(global_propositional_subsumption,
% 1.81/1.03                [status(thm)],
% 1.81/1.03                [c_935,c_49,c_55,c_862,c_878,c_943]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1031,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 1.81/1.03      inference(superposition,[status(thm)],[c_743,c_988]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1037,plain,
% 1.81/1.03      ( m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) ),
% 1.81/1.03      inference(predicate_to_equality_rev,[status(thm)],[c_1031]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1100,plain,
% 1.81/1.03      ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK0))
% 1.81/1.03      | r1_tarski(k1_xboole_0,sK0) ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_8]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_11,plain,
% 1.81/1.03      ( v1_funct_2(k1_xboole_0,X0,k1_xboole_0)
% 1.81/1.03      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
% 1.81/1.03      | k1_xboole_0 = X0 ),
% 1.81/1.03      inference(cnf_transformation,[],[f52]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_270,plain,
% 1.81/1.03      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
% 1.81/1.03      | k2_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | k1_relat_1(sK0) != X0
% 1.81/1.03      | sK0 != k1_xboole_0
% 1.81/1.03      | k1_xboole_0 = X0 ),
% 1.81/1.03      inference(resolution_lifted,[status(thm)],[c_11,c_103]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_271,plain,
% 1.81/1.03      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0)))
% 1.81/1.03      | k2_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | sK0 != k1_xboole_0
% 1.81/1.03      | k1_xboole_0 = k1_relat_1(sK0) ),
% 1.81/1.03      inference(unflattening,[status(thm)],[c_270]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_283,plain,
% 1.81/1.03      ( ~ m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))))
% 1.81/1.03      | k2_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | sK0 != k1_xboole_0
% 1.81/1.03      | k1_xboole_0 = k1_relat_1(sK0) ),
% 1.81/1.03      inference(forward_subsumption_resolution,[status(thm)],[c_271,c_6]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_737,plain,
% 1.81/1.03      ( k2_relat_1(sK0) != k1_xboole_0
% 1.81/1.03      | sK0 != k1_xboole_0
% 1.81/1.03      | k1_xboole_0 = k1_relat_1(sK0)
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))) != iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_283]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1224,plain,
% 1.81/1.03      ( k1_relat_1(sK0) = k1_xboole_0
% 1.81/1.03      | sK0 != k1_xboole_0
% 1.81/1.03      | k1_xboole_0 != k1_xboole_0
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))) != iProver_top ),
% 1.81/1.03      inference(demodulation,[status(thm)],[c_1032,c_737]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1233,plain,
% 1.81/1.03      ( k1_relat_1(sK0) = k1_xboole_0
% 1.81/1.03      | sK0 != k1_xboole_0
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))) != iProver_top ),
% 1.81/1.03      inference(equality_resolution_simp,[status(thm)],[c_1224]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1237,plain,
% 1.81/1.03      ( k1_relat_1(sK0) = k1_xboole_0
% 1.81/1.03      | sK0 != k1_xboole_0
% 1.81/1.03      | m1_subset_1(sK0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.81/1.03      inference(demodulation,[status(thm)],[c_1233,c_3]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1285,plain,
% 1.81/1.03      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK0)) ),
% 1.81/1.03      inference(instantiation,[status(thm)],[c_6]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1738,plain,
% 1.81/1.03      ( k1_relset_1(k1_xboole_0,k1_xboole_0,sK0) != k1_xboole_0 ),
% 1.81/1.03      inference(global_propositional_subsumption,
% 1.81/1.03                [status(thm)],
% 1.81/1.03                [c_1244,c_851,c_904,c_1031,c_1037,c_1100,c_1237,c_1285]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_739,plain,
% 1.81/1.03      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 1.81/1.03      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 1.81/1.03      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1541,plain,
% 1.81/1.03      ( k1_relset_1(k1_xboole_0,X0,X1) = k1_relat_1(X1)
% 1.81/1.03      | m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.81/1.03      inference(superposition,[status(thm)],[c_4,c_739]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1667,plain,
% 1.81/1.03      ( k1_relset_1(k1_xboole_0,X0,sK0) = k1_relat_1(sK0) ),
% 1.81/1.03      inference(superposition,[status(thm)],[c_1031,c_1541]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(c_1740,plain,
% 1.81/1.03      ( k1_relat_1(sK0) != k1_xboole_0 ),
% 1.81/1.03      inference(demodulation,[status(thm)],[c_1738,c_1667]) ).
% 1.81/1.03  
% 1.81/1.03  cnf(contradiction,plain,
% 1.81/1.03      ( $false ),
% 1.81/1.03      inference(minisat,
% 1.81/1.03                [status(thm)],
% 1.81/1.03                [c_1740,c_1285,c_1237,c_1100,c_1037,c_1031,c_904,c_851]) ).
% 1.81/1.03  
% 1.81/1.03  
% 1.81/1.03  % SZS output end CNFRefutation for theBenchmark.p
% 1.81/1.03  
% 1.81/1.03  ------                               Statistics
% 1.81/1.03  
% 1.81/1.03  ------ General
% 1.81/1.03  
% 1.81/1.03  abstr_ref_over_cycles:                  0
% 1.81/1.03  abstr_ref_under_cycles:                 0
% 1.81/1.03  gc_basic_clause_elim:                   0
% 1.81/1.03  forced_gc_time:                         0
% 1.81/1.03  parsing_time:                           0.008
% 1.81/1.03  unif_index_cands_time:                  0.
% 1.81/1.03  unif_index_add_time:                    0.
% 1.81/1.03  orderings_time:                         0.
% 1.81/1.03  out_proof_time:                         0.01
% 1.81/1.03  total_time:                             0.083
% 1.81/1.03  num_of_symbols:                         43
% 1.81/1.03  num_of_terms:                           1345
% 1.81/1.03  
% 1.81/1.03  ------ Preprocessing
% 1.81/1.03  
% 1.81/1.03  num_of_splits:                          0
% 1.81/1.03  num_of_split_atoms:                     0
% 1.81/1.03  num_of_reused_defs:                     0
% 1.81/1.03  num_eq_ax_congr_red:                    5
% 1.81/1.03  num_of_sem_filtered_clauses:            2
% 1.81/1.03  num_of_subtypes:                        0
% 1.81/1.03  monotx_restored_types:                  0
% 1.81/1.03  sat_num_of_epr_types:                   0
% 1.81/1.03  sat_num_of_non_cyclic_types:            0
% 1.81/1.03  sat_guarded_non_collapsed_types:        0
% 1.81/1.03  num_pure_diseq_elim:                    0
% 1.81/1.03  simp_replaced_by:                       0
% 1.81/1.03  res_preprocessed:                       77
% 1.81/1.03  prep_upred:                             0
% 1.81/1.03  prep_unflattend:                        27
% 1.81/1.03  smt_new_axioms:                         0
% 1.81/1.03  pred_elim_cands:                        2
% 1.81/1.03  pred_elim:                              2
% 1.81/1.03  pred_elim_cl:                           5
% 1.81/1.03  pred_elim_cycles:                       4
% 1.81/1.03  merged_defs:                            8
% 1.81/1.03  merged_defs_ncl:                        0
% 1.81/1.03  bin_hyper_res:                          8
% 1.81/1.03  prep_cycles:                            4
% 1.81/1.03  pred_elim_time:                         0.003
% 1.81/1.03  splitting_time:                         0.
% 1.81/1.03  sem_filter_time:                        0.
% 1.81/1.03  monotx_time:                            0.
% 1.81/1.03  subtype_inf_time:                       0.
% 1.81/1.03  
% 1.81/1.03  ------ Problem properties
% 1.81/1.03  
% 1.81/1.03  clauses:                                13
% 1.81/1.03  conjectures:                            0
% 1.81/1.03  epr:                                    2
% 1.81/1.03  horn:                                   12
% 1.81/1.03  ground:                                 3
% 1.81/1.03  unary:                                  4
% 1.81/1.03  binary:                                 4
% 1.81/1.03  lits:                                   29
% 1.81/1.03  lits_eq:                                13
% 1.81/1.03  fd_pure:                                0
% 1.81/1.03  fd_pseudo:                              0
% 1.81/1.03  fd_cond:                                1
% 1.81/1.03  fd_pseudo_cond:                         1
% 1.81/1.03  ac_symbols:                             0
% 1.81/1.03  
% 1.81/1.03  ------ Propositional Solver
% 1.81/1.03  
% 1.81/1.03  prop_solver_calls:                      27
% 1.81/1.03  prop_fast_solver_calls:                 458
% 1.81/1.03  smt_solver_calls:                       0
% 1.81/1.03  smt_fast_solver_calls:                  0
% 1.81/1.03  prop_num_of_clauses:                    484
% 1.81/1.03  prop_preprocess_simplified:             2488
% 1.81/1.03  prop_fo_subsumed:                       11
% 1.81/1.03  prop_solver_time:                       0.
% 1.81/1.03  smt_solver_time:                        0.
% 1.81/1.03  smt_fast_solver_time:                   0.
% 1.81/1.03  prop_fast_solver_time:                  0.
% 1.81/1.03  prop_unsat_core_time:                   0.
% 1.81/1.03  
% 1.81/1.03  ------ QBF
% 1.81/1.03  
% 1.81/1.03  qbf_q_res:                              0
% 1.81/1.03  qbf_num_tautologies:                    0
% 1.81/1.03  qbf_prep_cycles:                        0
% 1.81/1.03  
% 1.81/1.03  ------ BMC1
% 1.81/1.03  
% 1.81/1.03  bmc1_current_bound:                     -1
% 1.81/1.03  bmc1_last_solved_bound:                 -1
% 1.81/1.03  bmc1_unsat_core_size:                   -1
% 1.81/1.03  bmc1_unsat_core_parents_size:           -1
% 1.81/1.03  bmc1_merge_next_fun:                    0
% 1.81/1.03  bmc1_unsat_core_clauses_time:           0.
% 1.81/1.03  
% 1.81/1.03  ------ Instantiation
% 1.81/1.03  
% 1.81/1.03  inst_num_of_clauses:                    161
% 1.81/1.03  inst_num_in_passive:                    68
% 1.81/1.03  inst_num_in_active:                     88
% 1.81/1.03  inst_num_in_unprocessed:                5
% 1.81/1.03  inst_num_of_loops:                      140
% 1.81/1.03  inst_num_of_learning_restarts:          0
% 1.81/1.03  inst_num_moves_active_passive:          49
% 1.81/1.03  inst_lit_activity:                      0
% 1.81/1.03  inst_lit_activity_moves:                0
% 1.81/1.03  inst_num_tautologies:                   0
% 1.81/1.03  inst_num_prop_implied:                  0
% 1.81/1.03  inst_num_existing_simplified:           0
% 1.81/1.03  inst_num_eq_res_simplified:             0
% 1.81/1.03  inst_num_child_elim:                    0
% 1.81/1.03  inst_num_of_dismatching_blockings:      27
% 1.81/1.03  inst_num_of_non_proper_insts:           197
% 1.81/1.03  inst_num_of_duplicates:                 0
% 1.81/1.03  inst_inst_num_from_inst_to_res:         0
% 1.81/1.03  inst_dismatching_checking_time:         0.
% 1.81/1.03  
% 1.81/1.03  ------ Resolution
% 1.81/1.03  
% 1.81/1.03  res_num_of_clauses:                     0
% 1.81/1.03  res_num_in_passive:                     0
% 1.81/1.03  res_num_in_active:                      0
% 1.81/1.03  res_num_of_loops:                       81
% 1.81/1.03  res_forward_subset_subsumed:            14
% 1.81/1.03  res_backward_subset_subsumed:           0
% 1.81/1.03  res_forward_subsumed:                   0
% 1.81/1.03  res_backward_subsumed:                  0
% 1.81/1.03  res_forward_subsumption_resolution:     2
% 1.81/1.03  res_backward_subsumption_resolution:    0
% 1.81/1.03  res_clause_to_clause_subsumption:       122
% 1.81/1.03  res_orphan_elimination:                 0
% 1.81/1.03  res_tautology_del:                      45
% 1.81/1.03  res_num_eq_res_simplified:              0
% 1.81/1.03  res_num_sel_changes:                    0
% 1.81/1.03  res_moves_from_active_to_pass:          0
% 1.81/1.03  
% 1.81/1.03  ------ Superposition
% 1.81/1.03  
% 1.81/1.03  sup_time_total:                         0.
% 1.81/1.03  sup_time_generating:                    0.
% 1.81/1.03  sup_time_sim_full:                      0.
% 1.81/1.03  sup_time_sim_immed:                     0.
% 1.81/1.03  
% 1.81/1.03  sup_num_of_clauses:                     31
% 1.81/1.03  sup_num_in_active:                      19
% 1.81/1.03  sup_num_in_passive:                     12
% 1.81/1.03  sup_num_of_loops:                       26
% 1.81/1.03  sup_fw_superposition:                   26
% 1.81/1.03  sup_bw_superposition:                   7
% 1.81/1.03  sup_immediate_simplified:               7
% 1.81/1.03  sup_given_eliminated:                   0
% 1.81/1.03  comparisons_done:                       0
% 1.81/1.03  comparisons_avoided:                    0
% 1.81/1.03  
% 1.81/1.03  ------ Simplifications
% 1.81/1.03  
% 1.81/1.03  
% 1.81/1.03  sim_fw_subset_subsumed:                 4
% 1.81/1.03  sim_bw_subset_subsumed:                 2
% 1.81/1.03  sim_fw_subsumed:                        1
% 1.81/1.03  sim_bw_subsumed:                        0
% 1.81/1.03  sim_fw_subsumption_res:                 0
% 1.81/1.03  sim_bw_subsumption_res:                 0
% 1.81/1.03  sim_tautology_del:                      0
% 1.81/1.03  sim_eq_tautology_del:                   3
% 1.81/1.03  sim_eq_res_simp:                        1
% 1.81/1.03  sim_fw_demodulated:                     4
% 1.81/1.03  sim_bw_demodulated:                     5
% 1.81/1.03  sim_light_normalised:                   0
% 1.81/1.03  sim_joinable_taut:                      0
% 1.81/1.03  sim_joinable_simp:                      0
% 1.81/1.03  sim_ac_normalised:                      0
% 1.81/1.03  sim_smt_subsumption:                    0
% 1.81/1.03  
%------------------------------------------------------------------------------
