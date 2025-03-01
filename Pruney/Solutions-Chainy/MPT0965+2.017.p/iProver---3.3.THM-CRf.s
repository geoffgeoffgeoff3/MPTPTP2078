%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:00:23 EST 2020

% Result     : Theorem 1.31s
% Output     : CNFRefutation 1.31s
% Verified   : 
% Statistics : Number of formulae       :   91 ( 223 expanded)
%              Number of clauses        :   55 (  87 expanded)
%              Number of leaves         :    9 (  39 expanded)
%              Depth                    :   20
%              Number of atoms          :  255 ( 914 expanded)
%              Number of equality atoms :  101 ( 193 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f26,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r2_hidden(X0,k1_relat_1(X1))
       => r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f12,plain,(
    ! [X0,X1] :
      ( r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f11])).

fof(f25,plain,(
    ! [X0,X1] :
      ( r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f8,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),X1)
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ( r2_hidden(X2,X0)
         => ( r2_hidden(k1_funct_1(X3,X2),X1)
            | k1_xboole_0 = X1 ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f19,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r2_hidden(k1_funct_1(X3,X2),X1)
      & k1_xboole_0 != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f20,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r2_hidden(k1_funct_1(X3,X2),X1)
      & k1_xboole_0 != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f19])).

fof(f22,plain,
    ( ? [X0,X1,X2,X3] :
        ( ~ r2_hidden(k1_funct_1(X3,X2),X1)
        & k1_xboole_0 != X1
        & r2_hidden(X2,X0)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
   => ( ~ r2_hidden(k1_funct_1(sK3,sK2),sK1)
      & k1_xboole_0 != sK1
      & r2_hidden(sK2,sK0)
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK3,sK0,sK1)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( ~ r2_hidden(k1_funct_1(sK3,sK2),sK1)
    & k1_xboole_0 != sK1
    & r2_hidden(sK2,sK0)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK3,sK0,sK1)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f20,f22])).

fof(f36,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f23])).

fof(f38,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f23])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f28,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f7,axiom,(
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

fof(f17,plain,(
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
    inference(ennf_transformation,[],[f7])).

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
    inference(flattening,[],[f17])).

fof(f21,plain,(
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
    inference(nnf_transformation,[],[f18])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f37,plain,(
    v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f23])).

fof(f40,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f23])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f27,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f24,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f41,plain,(
    ~ r2_hidden(k1_funct_1(sK3,sK2),sK1) ),
    inference(cnf_transformation,[],[f23])).

fof(f39,plain,(
    r2_hidden(sK2,sK0) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_17,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_191,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_17])).

cnf(c_192,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK3))
    | r2_hidden(k1_funct_1(sK3,X0),k2_relat_1(sK3))
    | ~ v1_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_191])).

cnf(c_210,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k1_relat_1(sK3))
    | r2_hidden(k1_funct_1(sK3,X3),k2_relat_1(sK3))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_192])).

cnf(c_211,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ r2_hidden(X2,k1_relat_1(sK3))
    | r2_hidden(k1_funct_1(sK3,X2),k2_relat_1(sK3)) ),
    inference(unflattening,[status(thm)],[c_210])).

cnf(c_369,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_45,X1_45)))
    | ~ r2_hidden(X0_47,k1_relat_1(sK3))
    | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) ),
    inference(subtyping,[status(esa)],[c_211])).

cnf(c_378,plain,
    ( ~ r2_hidden(X0_47,k1_relat_1(sK3))
    | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_369])).

cnf(c_627,plain,
    ( r2_hidden(X0_47,k1_relat_1(sK3)) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_378])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_20,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_380,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_369])).

cnf(c_417,plain,
    ( sP1_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_380])).

cnf(c_421,plain,
    ( r2_hidden(X0_47,k1_relat_1(sK3)) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_378])).

cnf(c_379,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_45,X1_45)))
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_369])).

cnf(c_712,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ sP1_iProver_split ),
    inference(instantiation,[status(thm)],[c_379])).

cnf(c_713,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_712])).

cnf(c_1079,plain,
    ( r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top
    | r2_hidden(X0_47,k1_relat_1(sK3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_627,c_20,c_417,c_421,c_713])).

cnf(c_1080,plain,
    ( r2_hidden(X0_47,k1_relat_1(sK3)) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top ),
    inference(renaming,[status(thm)],[c_1079])).

cnf(c_370,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_624,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_370])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_375,plain,
    ( ~ m1_subset_1(X0_45,k1_zfmisc_1(k2_zfmisc_1(X1_45,X2_45)))
    | k1_relset_1(X1_45,X2_45,X0_45) = k1_relat_1(X0_45) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_620,plain,
    ( k1_relset_1(X0_45,X1_45,X2_45) = k1_relat_1(X2_45)
    | m1_subset_1(X2_45,k1_zfmisc_1(k2_zfmisc_1(X0_45,X1_45))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_375])).

cnf(c_867,plain,
    ( k1_relset_1(sK0,sK1,sK3) = k1_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_624,c_620])).

cnf(c_11,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_16,negated_conjecture,
    ( v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_274,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK0 != X1
    | sK1 != X2
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_16])).

cnf(c_275,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | k1_relset_1(sK0,sK1,sK3) = sK0
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_274])).

cnf(c_13,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_277,plain,
    ( k1_relset_1(sK0,sK1,sK3) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_275,c_15,c_13])).

cnf(c_366,plain,
    ( k1_relset_1(sK0,sK1,sK3) = sK0 ),
    inference(subtyping,[status(esa)],[c_277])).

cnf(c_868,plain,
    ( k1_relat_1(sK3) = sK0 ),
    inference(light_normalisation,[status(thm)],[c_867,c_366])).

cnf(c_1085,plain,
    ( r2_hidden(X0_47,sK0) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1080,c_868])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_374,plain,
    ( ~ m1_subset_1(X0_45,k1_zfmisc_1(k2_zfmisc_1(X1_45,X2_45)))
    | k2_relset_1(X1_45,X2_45,X0_45) = k2_relat_1(X0_45) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_621,plain,
    ( k2_relset_1(X0_45,X1_45,X2_45) = k2_relat_1(X2_45)
    | m1_subset_1(X2_45,k1_zfmisc_1(k2_zfmisc_1(X0_45,X1_45))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_374])).

cnf(c_909,plain,
    ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_624,c_621])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_376,plain,
    ( ~ m1_subset_1(X0_45,k1_zfmisc_1(k2_zfmisc_1(X1_45,X2_45)))
    | m1_subset_1(k2_relset_1(X1_45,X2_45,X0_45),k1_zfmisc_1(X2_45)) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_619,plain,
    ( m1_subset_1(X0_45,k1_zfmisc_1(k2_zfmisc_1(X1_45,X2_45))) != iProver_top
    | m1_subset_1(k2_relset_1(X1_45,X2_45,X0_45),k1_zfmisc_1(X2_45)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_376])).

cnf(c_977,plain,
    ( m1_subset_1(k2_relat_1(sK3),k1_zfmisc_1(sK1)) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_909,c_619])).

cnf(c_1020,plain,
    ( m1_subset_1(k2_relat_1(sK3),k1_zfmisc_1(sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_977,c_20])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_377,plain,
    ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
    | ~ r2_hidden(X0_47,X0_45)
    | r2_hidden(X0_47,X1_45) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_618,plain,
    ( m1_subset_1(X0_45,k1_zfmisc_1(X1_45)) != iProver_top
    | r2_hidden(X0_47,X0_45) != iProver_top
    | r2_hidden(X0_47,X1_45) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_377])).

cnf(c_1025,plain,
    ( r2_hidden(X0_47,k2_relat_1(sK3)) != iProver_top
    | r2_hidden(X0_47,sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1020,c_618])).

cnf(c_1152,plain,
    ( r2_hidden(X0_47,sK0) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0_47),sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1085,c_1025])).

cnf(c_1154,plain,
    ( r2_hidden(k1_funct_1(sK3,sK2),sK1) = iProver_top
    | r2_hidden(sK2,sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1152])).

cnf(c_12,negated_conjecture,
    ( ~ r2_hidden(k1_funct_1(sK3,sK2),sK1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_22,plain,
    ( r2_hidden(k1_funct_1(sK3,sK2),sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_14,negated_conjecture,
    ( r2_hidden(sK2,sK0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_21,plain,
    ( r2_hidden(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1154,c_22,c_21])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n019.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 10:33:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.31/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.31/0.99  
% 1.31/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.31/0.99  
% 1.31/0.99  ------  iProver source info
% 1.31/0.99  
% 1.31/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.31/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.31/0.99  git: non_committed_changes: false
% 1.31/0.99  git: last_make_outside_of_git: false
% 1.31/0.99  
% 1.31/0.99  ------ 
% 1.31/0.99  
% 1.31/0.99  ------ Input Options
% 1.31/0.99  
% 1.31/0.99  --out_options                           all
% 1.31/0.99  --tptp_safe_out                         true
% 1.31/0.99  --problem_path                          ""
% 1.31/0.99  --include_path                          ""
% 1.31/0.99  --clausifier                            res/vclausify_rel
% 1.31/0.99  --clausifier_options                    --mode clausify
% 1.31/0.99  --stdin                                 false
% 1.31/0.99  --stats_out                             all
% 1.31/0.99  
% 1.31/0.99  ------ General Options
% 1.31/0.99  
% 1.31/0.99  --fof                                   false
% 1.31/0.99  --time_out_real                         305.
% 1.31/0.99  --time_out_virtual                      -1.
% 1.31/0.99  --symbol_type_check                     false
% 1.31/0.99  --clausify_out                          false
% 1.31/0.99  --sig_cnt_out                           false
% 1.31/0.99  --trig_cnt_out                          false
% 1.31/0.99  --trig_cnt_out_tolerance                1.
% 1.31/0.99  --trig_cnt_out_sk_spl                   false
% 1.31/0.99  --abstr_cl_out                          false
% 1.31/0.99  
% 1.31/0.99  ------ Global Options
% 1.31/0.99  
% 1.31/0.99  --schedule                              default
% 1.31/0.99  --add_important_lit                     false
% 1.31/0.99  --prop_solver_per_cl                    1000
% 1.31/0.99  --min_unsat_core                        false
% 1.31/0.99  --soft_assumptions                      false
% 1.31/0.99  --soft_lemma_size                       3
% 1.31/0.99  --prop_impl_unit_size                   0
% 1.31/0.99  --prop_impl_unit                        []
% 1.31/0.99  --share_sel_clauses                     true
% 1.31/0.99  --reset_solvers                         false
% 1.31/0.99  --bc_imp_inh                            [conj_cone]
% 1.31/0.99  --conj_cone_tolerance                   3.
% 1.31/0.99  --extra_neg_conj                        none
% 1.31/0.99  --large_theory_mode                     true
% 1.31/0.99  --prolific_symb_bound                   200
% 1.31/0.99  --lt_threshold                          2000
% 1.31/0.99  --clause_weak_htbl                      true
% 1.31/0.99  --gc_record_bc_elim                     false
% 1.31/0.99  
% 1.31/0.99  ------ Preprocessing Options
% 1.31/0.99  
% 1.31/0.99  --preprocessing_flag                    true
% 1.31/0.99  --time_out_prep_mult                    0.1
% 1.31/0.99  --splitting_mode                        input
% 1.31/0.99  --splitting_grd                         true
% 1.31/0.99  --splitting_cvd                         false
% 1.31/0.99  --splitting_cvd_svl                     false
% 1.31/0.99  --splitting_nvd                         32
% 1.31/0.99  --sub_typing                            true
% 1.31/0.99  --prep_gs_sim                           true
% 1.31/0.99  --prep_unflatten                        true
% 1.31/0.99  --prep_res_sim                          true
% 1.31/0.99  --prep_upred                            true
% 1.31/0.99  --prep_sem_filter                       exhaustive
% 1.31/0.99  --prep_sem_filter_out                   false
% 1.31/0.99  --pred_elim                             true
% 1.31/0.99  --res_sim_input                         true
% 1.31/0.99  --eq_ax_congr_red                       true
% 1.31/0.99  --pure_diseq_elim                       true
% 1.31/0.99  --brand_transform                       false
% 1.31/0.99  --non_eq_to_eq                          false
% 1.31/0.99  --prep_def_merge                        true
% 1.31/0.99  --prep_def_merge_prop_impl              false
% 1.31/0.99  --prep_def_merge_mbd                    true
% 1.31/0.99  --prep_def_merge_tr_red                 false
% 1.31/0.99  --prep_def_merge_tr_cl                  false
% 1.31/0.99  --smt_preprocessing                     true
% 1.31/0.99  --smt_ac_axioms                         fast
% 1.31/0.99  --preprocessed_out                      false
% 1.31/0.99  --preprocessed_stats                    false
% 1.31/0.99  
% 1.31/0.99  ------ Abstraction refinement Options
% 1.31/0.99  
% 1.31/0.99  --abstr_ref                             []
% 1.31/0.99  --abstr_ref_prep                        false
% 1.31/0.99  --abstr_ref_until_sat                   false
% 1.31/0.99  --abstr_ref_sig_restrict                funpre
% 1.31/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.31/0.99  --abstr_ref_under                       []
% 1.31/0.99  
% 1.31/0.99  ------ SAT Options
% 1.31/0.99  
% 1.31/0.99  --sat_mode                              false
% 1.31/0.99  --sat_fm_restart_options                ""
% 1.31/0.99  --sat_gr_def                            false
% 1.31/0.99  --sat_epr_types                         true
% 1.31/0.99  --sat_non_cyclic_types                  false
% 1.31/0.99  --sat_finite_models                     false
% 1.31/0.99  --sat_fm_lemmas                         false
% 1.31/0.99  --sat_fm_prep                           false
% 1.31/0.99  --sat_fm_uc_incr                        true
% 1.31/0.99  --sat_out_model                         small
% 1.31/0.99  --sat_out_clauses                       false
% 1.31/0.99  
% 1.31/0.99  ------ QBF Options
% 1.31/0.99  
% 1.31/0.99  --qbf_mode                              false
% 1.31/0.99  --qbf_elim_univ                         false
% 1.31/0.99  --qbf_dom_inst                          none
% 1.31/0.99  --qbf_dom_pre_inst                      false
% 1.31/0.99  --qbf_sk_in                             false
% 1.31/0.99  --qbf_pred_elim                         true
% 1.31/0.99  --qbf_split                             512
% 1.31/0.99  
% 1.31/0.99  ------ BMC1 Options
% 1.31/0.99  
% 1.31/0.99  --bmc1_incremental                      false
% 1.31/0.99  --bmc1_axioms                           reachable_all
% 1.31/0.99  --bmc1_min_bound                        0
% 1.31/0.99  --bmc1_max_bound                        -1
% 1.31/0.99  --bmc1_max_bound_default                -1
% 1.31/0.99  --bmc1_symbol_reachability              true
% 1.31/0.99  --bmc1_property_lemmas                  false
% 1.31/0.99  --bmc1_k_induction                      false
% 1.31/0.99  --bmc1_non_equiv_states                 false
% 1.31/0.99  --bmc1_deadlock                         false
% 1.31/0.99  --bmc1_ucm                              false
% 1.31/0.99  --bmc1_add_unsat_core                   none
% 1.31/0.99  --bmc1_unsat_core_children              false
% 1.31/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.31/0.99  --bmc1_out_stat                         full
% 1.31/0.99  --bmc1_ground_init                      false
% 1.31/0.99  --bmc1_pre_inst_next_state              false
% 1.31/0.99  --bmc1_pre_inst_state                   false
% 1.31/0.99  --bmc1_pre_inst_reach_state             false
% 1.31/0.99  --bmc1_out_unsat_core                   false
% 1.31/0.99  --bmc1_aig_witness_out                  false
% 1.31/0.99  --bmc1_verbose                          false
% 1.31/0.99  --bmc1_dump_clauses_tptp                false
% 1.31/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.31/0.99  --bmc1_dump_file                        -
% 1.31/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.31/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.31/0.99  --bmc1_ucm_extend_mode                  1
% 1.31/0.99  --bmc1_ucm_init_mode                    2
% 1.31/0.99  --bmc1_ucm_cone_mode                    none
% 1.31/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.31/0.99  --bmc1_ucm_relax_model                  4
% 1.31/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.31/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.31/0.99  --bmc1_ucm_layered_model                none
% 1.31/0.99  --bmc1_ucm_max_lemma_size               10
% 1.31/0.99  
% 1.31/0.99  ------ AIG Options
% 1.31/0.99  
% 1.31/0.99  --aig_mode                              false
% 1.31/0.99  
% 1.31/0.99  ------ Instantiation Options
% 1.31/0.99  
% 1.31/0.99  --instantiation_flag                    true
% 1.31/0.99  --inst_sos_flag                         false
% 1.31/0.99  --inst_sos_phase                        true
% 1.31/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.31/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.31/0.99  --inst_lit_sel_side                     num_symb
% 1.31/0.99  --inst_solver_per_active                1400
% 1.31/0.99  --inst_solver_calls_frac                1.
% 1.31/0.99  --inst_passive_queue_type               priority_queues
% 1.31/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.31/0.99  --inst_passive_queues_freq              [25;2]
% 1.31/0.99  --inst_dismatching                      true
% 1.31/0.99  --inst_eager_unprocessed_to_passive     true
% 1.31/0.99  --inst_prop_sim_given                   true
% 1.31/0.99  --inst_prop_sim_new                     false
% 1.31/0.99  --inst_subs_new                         false
% 1.31/0.99  --inst_eq_res_simp                      false
% 1.31/0.99  --inst_subs_given                       false
% 1.31/0.99  --inst_orphan_elimination               true
% 1.31/0.99  --inst_learning_loop_flag               true
% 1.31/0.99  --inst_learning_start                   3000
% 1.31/0.99  --inst_learning_factor                  2
% 1.31/0.99  --inst_start_prop_sim_after_learn       3
% 1.31/0.99  --inst_sel_renew                        solver
% 1.31/0.99  --inst_lit_activity_flag                true
% 1.31/0.99  --inst_restr_to_given                   false
% 1.31/0.99  --inst_activity_threshold               500
% 1.31/0.99  --inst_out_proof                        true
% 1.31/0.99  
% 1.31/0.99  ------ Resolution Options
% 1.31/0.99  
% 1.31/0.99  --resolution_flag                       true
% 1.31/0.99  --res_lit_sel                           adaptive
% 1.31/0.99  --res_lit_sel_side                      none
% 1.31/0.99  --res_ordering                          kbo
% 1.31/0.99  --res_to_prop_solver                    active
% 1.31/0.99  --res_prop_simpl_new                    false
% 1.31/0.99  --res_prop_simpl_given                  true
% 1.31/0.99  --res_passive_queue_type                priority_queues
% 1.31/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.31/0.99  --res_passive_queues_freq               [15;5]
% 1.31/0.99  --res_forward_subs                      full
% 1.31/0.99  --res_backward_subs                     full
% 1.31/0.99  --res_forward_subs_resolution           true
% 1.31/0.99  --res_backward_subs_resolution          true
% 1.31/0.99  --res_orphan_elimination                true
% 1.31/0.99  --res_time_limit                        2.
% 1.31/0.99  --res_out_proof                         true
% 1.31/0.99  
% 1.31/0.99  ------ Superposition Options
% 1.31/0.99  
% 1.31/0.99  --superposition_flag                    true
% 1.31/0.99  --sup_passive_queue_type                priority_queues
% 1.31/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.31/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.31/0.99  --demod_completeness_check              fast
% 1.31/0.99  --demod_use_ground                      true
% 1.31/0.99  --sup_to_prop_solver                    passive
% 1.31/0.99  --sup_prop_simpl_new                    true
% 1.31/0.99  --sup_prop_simpl_given                  true
% 1.31/0.99  --sup_fun_splitting                     false
% 1.31/0.99  --sup_smt_interval                      50000
% 1.31/0.99  
% 1.31/0.99  ------ Superposition Simplification Setup
% 1.31/0.99  
% 1.31/0.99  --sup_indices_passive                   []
% 1.31/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.31/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.31/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.31/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.31/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.31/0.99  --sup_full_bw                           [BwDemod]
% 1.31/0.99  --sup_immed_triv                        [TrivRules]
% 1.31/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.31/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.31/0.99  --sup_immed_bw_main                     []
% 1.31/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.31/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.31/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.31/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.31/0.99  
% 1.31/0.99  ------ Combination Options
% 1.31/0.99  
% 1.31/0.99  --comb_res_mult                         3
% 1.31/0.99  --comb_sup_mult                         2
% 1.31/0.99  --comb_inst_mult                        10
% 1.31/0.99  
% 1.31/0.99  ------ Debug Options
% 1.31/0.99  
% 1.31/0.99  --dbg_backtrace                         false
% 1.31/0.99  --dbg_dump_prop_clauses                 false
% 1.31/0.99  --dbg_dump_prop_clauses_file            -
% 1.31/0.99  --dbg_out_stat                          false
% 1.31/0.99  ------ Parsing...
% 1.31/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.31/0.99  
% 1.31/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.31/0.99  
% 1.31/0.99  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.31/0.99  
% 1.31/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.31/0.99  ------ Proving...
% 1.31/0.99  ------ Problem Properties 
% 1.31/0.99  
% 1.31/0.99  
% 1.31/0.99  clauses                                 14
% 1.31/0.99  conjectures                             4
% 1.31/0.99  EPR                                     3
% 1.31/0.99  Horn                                    12
% 1.31/0.99  unary                                   5
% 1.31/0.99  binary                                  5
% 1.31/0.99  lits                                    28
% 1.31/0.99  lits eq                                 9
% 1.31/0.99  fd_pure                                 0
% 1.31/0.99  fd_pseudo                               0
% 1.31/0.99  fd_cond                                 0
% 1.31/0.99  fd_pseudo_cond                          0
% 1.31/0.99  AC symbols                              0
% 1.31/0.99  
% 1.31/0.99  ------ Schedule dynamic 5 is on 
% 1.31/0.99  
% 1.31/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.31/0.99  
% 1.31/0.99  
% 1.31/0.99  ------ 
% 1.31/0.99  Current options:
% 1.31/0.99  ------ 
% 1.31/0.99  
% 1.31/0.99  ------ Input Options
% 1.31/0.99  
% 1.31/0.99  --out_options                           all
% 1.31/0.99  --tptp_safe_out                         true
% 1.31/0.99  --problem_path                          ""
% 1.31/0.99  --include_path                          ""
% 1.31/0.99  --clausifier                            res/vclausify_rel
% 1.31/0.99  --clausifier_options                    --mode clausify
% 1.31/0.99  --stdin                                 false
% 1.31/0.99  --stats_out                             all
% 1.31/0.99  
% 1.31/0.99  ------ General Options
% 1.31/0.99  
% 1.31/0.99  --fof                                   false
% 1.31/0.99  --time_out_real                         305.
% 1.31/0.99  --time_out_virtual                      -1.
% 1.31/0.99  --symbol_type_check                     false
% 1.31/0.99  --clausify_out                          false
% 1.31/0.99  --sig_cnt_out                           false
% 1.31/0.99  --trig_cnt_out                          false
% 1.31/0.99  --trig_cnt_out_tolerance                1.
% 1.31/0.99  --trig_cnt_out_sk_spl                   false
% 1.31/0.99  --abstr_cl_out                          false
% 1.31/0.99  
% 1.31/0.99  ------ Global Options
% 1.31/0.99  
% 1.31/0.99  --schedule                              default
% 1.31/0.99  --add_important_lit                     false
% 1.31/0.99  --prop_solver_per_cl                    1000
% 1.31/0.99  --min_unsat_core                        false
% 1.31/0.99  --soft_assumptions                      false
% 1.31/0.99  --soft_lemma_size                       3
% 1.31/0.99  --prop_impl_unit_size                   0
% 1.31/0.99  --prop_impl_unit                        []
% 1.31/0.99  --share_sel_clauses                     true
% 1.31/0.99  --reset_solvers                         false
% 1.31/0.99  --bc_imp_inh                            [conj_cone]
% 1.31/0.99  --conj_cone_tolerance                   3.
% 1.31/0.99  --extra_neg_conj                        none
% 1.31/0.99  --large_theory_mode                     true
% 1.31/0.99  --prolific_symb_bound                   200
% 1.31/0.99  --lt_threshold                          2000
% 1.31/0.99  --clause_weak_htbl                      true
% 1.31/0.99  --gc_record_bc_elim                     false
% 1.31/0.99  
% 1.31/0.99  ------ Preprocessing Options
% 1.31/0.99  
% 1.31/0.99  --preprocessing_flag                    true
% 1.31/0.99  --time_out_prep_mult                    0.1
% 1.31/0.99  --splitting_mode                        input
% 1.31/0.99  --splitting_grd                         true
% 1.31/0.99  --splitting_cvd                         false
% 1.31/0.99  --splitting_cvd_svl                     false
% 1.31/0.99  --splitting_nvd                         32
% 1.31/0.99  --sub_typing                            true
% 1.31/0.99  --prep_gs_sim                           true
% 1.31/0.99  --prep_unflatten                        true
% 1.31/0.99  --prep_res_sim                          true
% 1.31/0.99  --prep_upred                            true
% 1.31/0.99  --prep_sem_filter                       exhaustive
% 1.31/0.99  --prep_sem_filter_out                   false
% 1.31/0.99  --pred_elim                             true
% 1.31/0.99  --res_sim_input                         true
% 1.31/0.99  --eq_ax_congr_red                       true
% 1.31/0.99  --pure_diseq_elim                       true
% 1.31/0.99  --brand_transform                       false
% 1.31/0.99  --non_eq_to_eq                          false
% 1.31/0.99  --prep_def_merge                        true
% 1.31/0.99  --prep_def_merge_prop_impl              false
% 1.31/0.99  --prep_def_merge_mbd                    true
% 1.31/0.99  --prep_def_merge_tr_red                 false
% 1.31/0.99  --prep_def_merge_tr_cl                  false
% 1.31/0.99  --smt_preprocessing                     true
% 1.31/0.99  --smt_ac_axioms                         fast
% 1.31/0.99  --preprocessed_out                      false
% 1.31/0.99  --preprocessed_stats                    false
% 1.31/0.99  
% 1.31/0.99  ------ Abstraction refinement Options
% 1.31/0.99  
% 1.31/0.99  --abstr_ref                             []
% 1.31/0.99  --abstr_ref_prep                        false
% 1.31/0.99  --abstr_ref_until_sat                   false
% 1.31/0.99  --abstr_ref_sig_restrict                funpre
% 1.31/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.31/0.99  --abstr_ref_under                       []
% 1.31/0.99  
% 1.31/0.99  ------ SAT Options
% 1.31/0.99  
% 1.31/0.99  --sat_mode                              false
% 1.31/0.99  --sat_fm_restart_options                ""
% 1.31/0.99  --sat_gr_def                            false
% 1.31/0.99  --sat_epr_types                         true
% 1.31/0.99  --sat_non_cyclic_types                  false
% 1.31/0.99  --sat_finite_models                     false
% 1.31/0.99  --sat_fm_lemmas                         false
% 1.31/0.99  --sat_fm_prep                           false
% 1.31/0.99  --sat_fm_uc_incr                        true
% 1.31/0.99  --sat_out_model                         small
% 1.31/0.99  --sat_out_clauses                       false
% 1.31/0.99  
% 1.31/0.99  ------ QBF Options
% 1.31/0.99  
% 1.31/0.99  --qbf_mode                              false
% 1.31/0.99  --qbf_elim_univ                         false
% 1.31/0.99  --qbf_dom_inst                          none
% 1.31/0.99  --qbf_dom_pre_inst                      false
% 1.31/0.99  --qbf_sk_in                             false
% 1.31/0.99  --qbf_pred_elim                         true
% 1.31/0.99  --qbf_split                             512
% 1.31/0.99  
% 1.31/0.99  ------ BMC1 Options
% 1.31/0.99  
% 1.31/0.99  --bmc1_incremental                      false
% 1.31/0.99  --bmc1_axioms                           reachable_all
% 1.31/0.99  --bmc1_min_bound                        0
% 1.31/0.99  --bmc1_max_bound                        -1
% 1.31/0.99  --bmc1_max_bound_default                -1
% 1.31/0.99  --bmc1_symbol_reachability              true
% 1.31/0.99  --bmc1_property_lemmas                  false
% 1.31/0.99  --bmc1_k_induction                      false
% 1.31/0.99  --bmc1_non_equiv_states                 false
% 1.31/0.99  --bmc1_deadlock                         false
% 1.31/0.99  --bmc1_ucm                              false
% 1.31/0.99  --bmc1_add_unsat_core                   none
% 1.31/0.99  --bmc1_unsat_core_children              false
% 1.31/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.31/0.99  --bmc1_out_stat                         full
% 1.31/0.99  --bmc1_ground_init                      false
% 1.31/0.99  --bmc1_pre_inst_next_state              false
% 1.31/0.99  --bmc1_pre_inst_state                   false
% 1.31/0.99  --bmc1_pre_inst_reach_state             false
% 1.31/0.99  --bmc1_out_unsat_core                   false
% 1.31/0.99  --bmc1_aig_witness_out                  false
% 1.31/0.99  --bmc1_verbose                          false
% 1.31/0.99  --bmc1_dump_clauses_tptp                false
% 1.31/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.31/0.99  --bmc1_dump_file                        -
% 1.31/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.31/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.31/0.99  --bmc1_ucm_extend_mode                  1
% 1.31/0.99  --bmc1_ucm_init_mode                    2
% 1.31/0.99  --bmc1_ucm_cone_mode                    none
% 1.31/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.31/0.99  --bmc1_ucm_relax_model                  4
% 1.31/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.31/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.31/0.99  --bmc1_ucm_layered_model                none
% 1.31/0.99  --bmc1_ucm_max_lemma_size               10
% 1.31/0.99  
% 1.31/0.99  ------ AIG Options
% 1.31/0.99  
% 1.31/0.99  --aig_mode                              false
% 1.31/0.99  
% 1.31/0.99  ------ Instantiation Options
% 1.31/0.99  
% 1.31/0.99  --instantiation_flag                    true
% 1.31/0.99  --inst_sos_flag                         false
% 1.31/0.99  --inst_sos_phase                        true
% 1.31/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.31/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.31/0.99  --inst_lit_sel_side                     none
% 1.31/0.99  --inst_solver_per_active                1400
% 1.31/0.99  --inst_solver_calls_frac                1.
% 1.31/0.99  --inst_passive_queue_type               priority_queues
% 1.31/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.31/0.99  --inst_passive_queues_freq              [25;2]
% 1.31/0.99  --inst_dismatching                      true
% 1.31/0.99  --inst_eager_unprocessed_to_passive     true
% 1.31/0.99  --inst_prop_sim_given                   true
% 1.31/0.99  --inst_prop_sim_new                     false
% 1.31/0.99  --inst_subs_new                         false
% 1.31/0.99  --inst_eq_res_simp                      false
% 1.31/0.99  --inst_subs_given                       false
% 1.31/0.99  --inst_orphan_elimination               true
% 1.31/0.99  --inst_learning_loop_flag               true
% 1.31/0.99  --inst_learning_start                   3000
% 1.31/0.99  --inst_learning_factor                  2
% 1.31/0.99  --inst_start_prop_sim_after_learn       3
% 1.31/0.99  --inst_sel_renew                        solver
% 1.31/0.99  --inst_lit_activity_flag                true
% 1.31/0.99  --inst_restr_to_given                   false
% 1.31/0.99  --inst_activity_threshold               500
% 1.31/0.99  --inst_out_proof                        true
% 1.31/0.99  
% 1.31/0.99  ------ Resolution Options
% 1.31/0.99  
% 1.31/0.99  --resolution_flag                       false
% 1.31/0.99  --res_lit_sel                           adaptive
% 1.31/0.99  --res_lit_sel_side                      none
% 1.31/0.99  --res_ordering                          kbo
% 1.31/0.99  --res_to_prop_solver                    active
% 1.31/0.99  --res_prop_simpl_new                    false
% 1.31/0.99  --res_prop_simpl_given                  true
% 1.31/0.99  --res_passive_queue_type                priority_queues
% 1.31/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.31/0.99  --res_passive_queues_freq               [15;5]
% 1.31/0.99  --res_forward_subs                      full
% 1.31/0.99  --res_backward_subs                     full
% 1.31/0.99  --res_forward_subs_resolution           true
% 1.31/0.99  --res_backward_subs_resolution          true
% 1.31/0.99  --res_orphan_elimination                true
% 1.31/0.99  --res_time_limit                        2.
% 1.31/0.99  --res_out_proof                         true
% 1.31/0.99  
% 1.31/0.99  ------ Superposition Options
% 1.31/0.99  
% 1.31/0.99  --superposition_flag                    true
% 1.31/0.99  --sup_passive_queue_type                priority_queues
% 1.31/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.31/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.31/0.99  --demod_completeness_check              fast
% 1.31/0.99  --demod_use_ground                      true
% 1.31/0.99  --sup_to_prop_solver                    passive
% 1.31/0.99  --sup_prop_simpl_new                    true
% 1.31/0.99  --sup_prop_simpl_given                  true
% 1.31/0.99  --sup_fun_splitting                     false
% 1.31/0.99  --sup_smt_interval                      50000
% 1.31/0.99  
% 1.31/0.99  ------ Superposition Simplification Setup
% 1.31/0.99  
% 1.31/0.99  --sup_indices_passive                   []
% 1.31/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.31/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.31/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.31/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.31/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.31/0.99  --sup_full_bw                           [BwDemod]
% 1.31/0.99  --sup_immed_triv                        [TrivRules]
% 1.31/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.31/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.31/0.99  --sup_immed_bw_main                     []
% 1.31/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.31/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.31/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.31/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.31/0.99  
% 1.31/0.99  ------ Combination Options
% 1.31/0.99  
% 1.31/0.99  --comb_res_mult                         3
% 1.31/0.99  --comb_sup_mult                         2
% 1.31/0.99  --comb_inst_mult                        10
% 1.31/0.99  
% 1.31/0.99  ------ Debug Options
% 1.31/0.99  
% 1.31/0.99  --dbg_backtrace                         false
% 1.31/0.99  --dbg_dump_prop_clauses                 false
% 1.31/0.99  --dbg_dump_prop_clauses_file            -
% 1.31/0.99  --dbg_out_stat                          false
% 1.31/0.99  
% 1.31/0.99  
% 1.31/0.99  
% 1.31/0.99  
% 1.31/0.99  ------ Proving...
% 1.31/0.99  
% 1.31/0.99  
% 1.31/0.99  % SZS status Theorem for theBenchmark.p
% 1.31/0.99  
% 1.31/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.31/0.99  
% 1.31/0.99  fof(f3,axiom,(
% 1.31/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.31/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.31/0.99  
% 1.31/0.99  fof(f13,plain,(
% 1.31/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.31/0.99    inference(ennf_transformation,[],[f3])).
% 1.31/0.99  
% 1.31/0.99  fof(f26,plain,(
% 1.31/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.31/0.99    inference(cnf_transformation,[],[f13])).
% 1.31/0.99  
% 1.31/0.99  fof(f2,axiom,(
% 1.31/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r2_hidden(X0,k1_relat_1(X1)) => r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))))),
% 1.31/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.31/0.99  
% 1.31/0.99  fof(f11,plain,(
% 1.31/0.99    ! [X0,X1] : ((r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X1))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 1.31/0.99    inference(ennf_transformation,[],[f2])).
% 1.31/0.99  
% 1.31/0.99  fof(f12,plain,(
% 1.31/0.99    ! [X0,X1] : (r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.31/0.99    inference(flattening,[],[f11])).
% 1.31/0.99  
% 1.31/0.99  fof(f25,plain,(
% 1.31/0.99    ( ! [X0,X1] : (r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.31/0.99    inference(cnf_transformation,[],[f12])).
% 1.31/0.99  
% 1.31/0.99  fof(f8,conjecture,(
% 1.31/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1)))),
% 1.31/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.31/0.99  
% 1.31/0.99  fof(f9,negated_conjecture,(
% 1.31/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1)))),
% 1.31/0.99    inference(negated_conjecture,[],[f8])).
% 1.31/0.99  
% 1.31/0.99  fof(f19,plain,(
% 1.31/0.99    ? [X0,X1,X2,X3] : (((~r2_hidden(k1_funct_1(X3,X2),X1) & k1_xboole_0 != X1) & r2_hidden(X2,X0)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 1.31/0.99    inference(ennf_transformation,[],[f9])).
% 1.31/0.99  
% 1.31/0.99  fof(f20,plain,(
% 1.31/0.99    ? [X0,X1,X2,X3] : (~r2_hidden(k1_funct_1(X3,X2),X1) & k1_xboole_0 != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 1.31/0.99    inference(flattening,[],[f19])).
% 1.31/0.99  
% 1.31/0.99  fof(f22,plain,(
% 1.31/0.99    ? [X0,X1,X2,X3] : (~r2_hidden(k1_funct_1(X3,X2),X1) & k1_xboole_0 != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (~r2_hidden(k1_funct_1(sK3,sK2),sK1) & k1_xboole_0 != sK1 & r2_hidden(sK2,sK0) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3))),
% 1.31/0.99    introduced(choice_axiom,[])).
% 1.31/0.99  
% 1.31/0.99  fof(f23,plain,(
% 1.31/0.99    ~r2_hidden(k1_funct_1(sK3,sK2),sK1) & k1_xboole_0 != sK1 & r2_hidden(sK2,sK0) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)),
% 1.31/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f20,f22])).
% 1.31/0.99  
% 1.31/0.99  fof(f36,plain,(
% 1.31/0.99    v1_funct_1(sK3)),
% 1.31/0.99    inference(cnf_transformation,[],[f23])).
% 1.31/0.99  
% 1.31/0.99  fof(f38,plain,(
% 1.31/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.31/0.99    inference(cnf_transformation,[],[f23])).
% 1.31/0.99  
% 1.31/0.99  fof(f5,axiom,(
% 1.31/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 1.31/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.31/0.99  
% 1.31/0.99  fof(f15,plain,(
% 1.31/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.31/0.99    inference(ennf_transformation,[],[f5])).
% 1.31/0.99  
% 1.31/0.99  fof(f28,plain,(
% 1.31/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.31/0.99    inference(cnf_transformation,[],[f15])).
% 1.31/0.99  
% 1.31/0.99  fof(f7,axiom,(
% 1.31/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.31/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.31/0.99  
% 1.31/0.99  fof(f17,plain,(
% 1.31/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.31/0.99    inference(ennf_transformation,[],[f7])).
% 1.31/0.99  
% 1.31/0.99  fof(f18,plain,(
% 1.31/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.31/0.99    inference(flattening,[],[f17])).
% 1.31/0.99  
% 1.31/0.99  fof(f21,plain,(
% 1.31/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.31/0.99    inference(nnf_transformation,[],[f18])).
% 1.31/0.99  
% 1.31/0.99  fof(f30,plain,(
% 1.31/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.31/0.99    inference(cnf_transformation,[],[f21])).
% 1.31/0.99  
% 1.31/0.99  fof(f37,plain,(
% 1.31/0.99    v1_funct_2(sK3,sK0,sK1)),
% 1.31/0.99    inference(cnf_transformation,[],[f23])).
% 1.31/0.99  
% 1.31/0.99  fof(f40,plain,(
% 1.31/0.99    k1_xboole_0 != sK1),
% 1.31/0.99    inference(cnf_transformation,[],[f23])).
% 1.31/0.99  
% 1.31/0.99  fof(f6,axiom,(
% 1.31/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 1.31/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.31/0.99  
% 1.31/0.99  fof(f16,plain,(
% 1.31/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.31/0.99    inference(ennf_transformation,[],[f6])).
% 1.31/0.99  
% 1.31/0.99  fof(f29,plain,(
% 1.31/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.31/0.99    inference(cnf_transformation,[],[f16])).
% 1.31/0.99  
% 1.31/0.99  fof(f4,axiom,(
% 1.31/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)))),
% 1.31/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.31/0.99  
% 1.31/0.99  fof(f14,plain,(
% 1.31/0.99    ! [X0,X1,X2] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.31/0.99    inference(ennf_transformation,[],[f4])).
% 1.31/0.99  
% 1.31/0.99  fof(f27,plain,(
% 1.31/0.99    ( ! [X2,X0,X1] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.31/0.99    inference(cnf_transformation,[],[f14])).
% 1.31/0.99  
% 1.31/0.99  fof(f1,axiom,(
% 1.31/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 1.31/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.31/0.99  
% 1.31/0.99  fof(f10,plain,(
% 1.31/0.99    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.31/0.99    inference(ennf_transformation,[],[f1])).
% 1.31/0.99  
% 1.31/0.99  fof(f24,plain,(
% 1.31/0.99    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.31/0.99    inference(cnf_transformation,[],[f10])).
% 1.31/0.99  
% 1.31/0.99  fof(f41,plain,(
% 1.31/0.99    ~r2_hidden(k1_funct_1(sK3,sK2),sK1)),
% 1.31/0.99    inference(cnf_transformation,[],[f23])).
% 1.31/1.00  
% 1.31/1.00  fof(f39,plain,(
% 1.31/1.00    r2_hidden(sK2,sK0)),
% 1.31/1.00    inference(cnf_transformation,[],[f23])).
% 1.31/1.00  
% 1.31/1.00  cnf(c_2,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.31/1.00      | v1_relat_1(X0) ),
% 1.31/1.00      inference(cnf_transformation,[],[f26]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_1,plain,
% 1.31/1.00      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 1.31/1.00      | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
% 1.31/1.00      | ~ v1_relat_1(X1)
% 1.31/1.00      | ~ v1_funct_1(X1) ),
% 1.31/1.00      inference(cnf_transformation,[],[f25]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_17,negated_conjecture,
% 1.31/1.00      ( v1_funct_1(sK3) ),
% 1.31/1.00      inference(cnf_transformation,[],[f36]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_191,plain,
% 1.31/1.00      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 1.31/1.00      | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
% 1.31/1.00      | ~ v1_relat_1(X1)
% 1.31/1.00      | sK3 != X1 ),
% 1.31/1.00      inference(resolution_lifted,[status(thm)],[c_1,c_17]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_192,plain,
% 1.31/1.00      ( ~ r2_hidden(X0,k1_relat_1(sK3))
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X0),k2_relat_1(sK3))
% 1.31/1.00      | ~ v1_relat_1(sK3) ),
% 1.31/1.00      inference(unflattening,[status(thm)],[c_191]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_210,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.31/1.00      | ~ r2_hidden(X3,k1_relat_1(sK3))
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X3),k2_relat_1(sK3))
% 1.31/1.00      | sK3 != X0 ),
% 1.31/1.00      inference(resolution_lifted,[status(thm)],[c_2,c_192]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_211,plain,
% 1.31/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.31/1.00      | ~ r2_hidden(X2,k1_relat_1(sK3))
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X2),k2_relat_1(sK3)) ),
% 1.31/1.00      inference(unflattening,[status(thm)],[c_210]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_369,plain,
% 1.31/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_45,X1_45)))
% 1.31/1.00      | ~ r2_hidden(X0_47,k1_relat_1(sK3))
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) ),
% 1.31/1.00      inference(subtyping,[status(esa)],[c_211]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_378,plain,
% 1.31/1.00      ( ~ r2_hidden(X0_47,k1_relat_1(sK3))
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3))
% 1.31/1.00      | ~ sP0_iProver_split ),
% 1.31/1.00      inference(splitting,
% 1.31/1.00                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.31/1.00                [c_369]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_627,plain,
% 1.31/1.00      ( r2_hidden(X0_47,k1_relat_1(sK3)) != iProver_top
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top
% 1.31/1.00      | sP0_iProver_split != iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_378]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_15,negated_conjecture,
% 1.31/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 1.31/1.00      inference(cnf_transformation,[],[f38]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_20,plain,
% 1.31/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_380,plain,
% 1.31/1.00      ( sP1_iProver_split | sP0_iProver_split ),
% 1.31/1.00      inference(splitting,
% 1.31/1.00                [splitting(split),new_symbols(definition,[])],
% 1.31/1.00                [c_369]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_417,plain,
% 1.31/1.00      ( sP1_iProver_split = iProver_top
% 1.31/1.00      | sP0_iProver_split = iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_380]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_421,plain,
% 1.31/1.00      ( r2_hidden(X0_47,k1_relat_1(sK3)) != iProver_top
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top
% 1.31/1.00      | sP0_iProver_split != iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_378]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_379,plain,
% 1.31/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_45,X1_45)))
% 1.31/1.00      | ~ sP1_iProver_split ),
% 1.31/1.00      inference(splitting,
% 1.31/1.00                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.31/1.00                [c_369]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_712,plain,
% 1.31/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 1.31/1.00      | ~ sP1_iProver_split ),
% 1.31/1.00      inference(instantiation,[status(thm)],[c_379]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_713,plain,
% 1.31/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 1.31/1.00      | sP1_iProver_split != iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_712]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_1079,plain,
% 1.31/1.00      ( r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top
% 1.31/1.00      | r2_hidden(X0_47,k1_relat_1(sK3)) != iProver_top ),
% 1.31/1.00      inference(global_propositional_subsumption,
% 1.31/1.00                [status(thm)],
% 1.31/1.00                [c_627,c_20,c_417,c_421,c_713]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_1080,plain,
% 1.31/1.00      ( r2_hidden(X0_47,k1_relat_1(sK3)) != iProver_top
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top ),
% 1.31/1.00      inference(renaming,[status(thm)],[c_1079]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_370,negated_conjecture,
% 1.31/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 1.31/1.00      inference(subtyping,[status(esa)],[c_15]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_624,plain,
% 1.31/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_370]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_4,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.31/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.31/1.00      inference(cnf_transformation,[],[f28]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_375,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0_45,k1_zfmisc_1(k2_zfmisc_1(X1_45,X2_45)))
% 1.31/1.00      | k1_relset_1(X1_45,X2_45,X0_45) = k1_relat_1(X0_45) ),
% 1.31/1.00      inference(subtyping,[status(esa)],[c_4]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_620,plain,
% 1.31/1.00      ( k1_relset_1(X0_45,X1_45,X2_45) = k1_relat_1(X2_45)
% 1.31/1.00      | m1_subset_1(X2_45,k1_zfmisc_1(k2_zfmisc_1(X0_45,X1_45))) != iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_375]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_867,plain,
% 1.31/1.00      ( k1_relset_1(sK0,sK1,sK3) = k1_relat_1(sK3) ),
% 1.31/1.00      inference(superposition,[status(thm)],[c_624,c_620]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_11,plain,
% 1.31/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 1.31/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.31/1.00      | k1_relset_1(X1,X2,X0) = X1
% 1.31/1.00      | k1_xboole_0 = X2 ),
% 1.31/1.00      inference(cnf_transformation,[],[f30]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_16,negated_conjecture,
% 1.31/1.00      ( v1_funct_2(sK3,sK0,sK1) ),
% 1.31/1.00      inference(cnf_transformation,[],[f37]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_274,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.31/1.00      | k1_relset_1(X1,X2,X0) = X1
% 1.31/1.00      | sK0 != X1
% 1.31/1.00      | sK1 != X2
% 1.31/1.00      | sK3 != X0
% 1.31/1.00      | k1_xboole_0 = X2 ),
% 1.31/1.00      inference(resolution_lifted,[status(thm)],[c_11,c_16]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_275,plain,
% 1.31/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 1.31/1.00      | k1_relset_1(sK0,sK1,sK3) = sK0
% 1.31/1.00      | k1_xboole_0 = sK1 ),
% 1.31/1.00      inference(unflattening,[status(thm)],[c_274]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_13,negated_conjecture,
% 1.31/1.00      ( k1_xboole_0 != sK1 ),
% 1.31/1.00      inference(cnf_transformation,[],[f40]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_277,plain,
% 1.31/1.00      ( k1_relset_1(sK0,sK1,sK3) = sK0 ),
% 1.31/1.00      inference(global_propositional_subsumption,
% 1.31/1.00                [status(thm)],
% 1.31/1.00                [c_275,c_15,c_13]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_366,plain,
% 1.31/1.00      ( k1_relset_1(sK0,sK1,sK3) = sK0 ),
% 1.31/1.00      inference(subtyping,[status(esa)],[c_277]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_868,plain,
% 1.31/1.00      ( k1_relat_1(sK3) = sK0 ),
% 1.31/1.00      inference(light_normalisation,[status(thm)],[c_867,c_366]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_1085,plain,
% 1.31/1.00      ( r2_hidden(X0_47,sK0) != iProver_top
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X0_47),k2_relat_1(sK3)) = iProver_top ),
% 1.31/1.00      inference(light_normalisation,[status(thm)],[c_1080,c_868]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_5,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.31/1.00      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 1.31/1.00      inference(cnf_transformation,[],[f29]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_374,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0_45,k1_zfmisc_1(k2_zfmisc_1(X1_45,X2_45)))
% 1.31/1.00      | k2_relset_1(X1_45,X2_45,X0_45) = k2_relat_1(X0_45) ),
% 1.31/1.00      inference(subtyping,[status(esa)],[c_5]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_621,plain,
% 1.31/1.00      ( k2_relset_1(X0_45,X1_45,X2_45) = k2_relat_1(X2_45)
% 1.31/1.00      | m1_subset_1(X2_45,k1_zfmisc_1(k2_zfmisc_1(X0_45,X1_45))) != iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_374]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_909,plain,
% 1.31/1.00      ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
% 1.31/1.00      inference(superposition,[status(thm)],[c_624,c_621]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_3,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.31/1.00      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
% 1.31/1.00      inference(cnf_transformation,[],[f27]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_376,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0_45,k1_zfmisc_1(k2_zfmisc_1(X1_45,X2_45)))
% 1.31/1.00      | m1_subset_1(k2_relset_1(X1_45,X2_45,X0_45),k1_zfmisc_1(X2_45)) ),
% 1.31/1.00      inference(subtyping,[status(esa)],[c_3]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_619,plain,
% 1.31/1.00      ( m1_subset_1(X0_45,k1_zfmisc_1(k2_zfmisc_1(X1_45,X2_45))) != iProver_top
% 1.31/1.00      | m1_subset_1(k2_relset_1(X1_45,X2_45,X0_45),k1_zfmisc_1(X2_45)) = iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_376]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_977,plain,
% 1.31/1.00      ( m1_subset_1(k2_relat_1(sK3),k1_zfmisc_1(sK1)) = iProver_top
% 1.31/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top ),
% 1.31/1.00      inference(superposition,[status(thm)],[c_909,c_619]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_1020,plain,
% 1.31/1.00      ( m1_subset_1(k2_relat_1(sK3),k1_zfmisc_1(sK1)) = iProver_top ),
% 1.31/1.00      inference(global_propositional_subsumption,
% 1.31/1.00                [status(thm)],
% 1.31/1.00                [c_977,c_20]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_0,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.31/1.00      | ~ r2_hidden(X2,X0)
% 1.31/1.00      | r2_hidden(X2,X1) ),
% 1.31/1.00      inference(cnf_transformation,[],[f24]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_377,plain,
% 1.31/1.00      ( ~ m1_subset_1(X0_45,k1_zfmisc_1(X1_45))
% 1.31/1.00      | ~ r2_hidden(X0_47,X0_45)
% 1.31/1.00      | r2_hidden(X0_47,X1_45) ),
% 1.31/1.00      inference(subtyping,[status(esa)],[c_0]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_618,plain,
% 1.31/1.00      ( m1_subset_1(X0_45,k1_zfmisc_1(X1_45)) != iProver_top
% 1.31/1.00      | r2_hidden(X0_47,X0_45) != iProver_top
% 1.31/1.00      | r2_hidden(X0_47,X1_45) = iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_377]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_1025,plain,
% 1.31/1.00      ( r2_hidden(X0_47,k2_relat_1(sK3)) != iProver_top
% 1.31/1.00      | r2_hidden(X0_47,sK1) = iProver_top ),
% 1.31/1.00      inference(superposition,[status(thm)],[c_1020,c_618]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_1152,plain,
% 1.31/1.00      ( r2_hidden(X0_47,sK0) != iProver_top
% 1.31/1.00      | r2_hidden(k1_funct_1(sK3,X0_47),sK1) = iProver_top ),
% 1.31/1.00      inference(superposition,[status(thm)],[c_1085,c_1025]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_1154,plain,
% 1.31/1.00      ( r2_hidden(k1_funct_1(sK3,sK2),sK1) = iProver_top
% 1.31/1.00      | r2_hidden(sK2,sK0) != iProver_top ),
% 1.31/1.00      inference(instantiation,[status(thm)],[c_1152]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_12,negated_conjecture,
% 1.31/1.00      ( ~ r2_hidden(k1_funct_1(sK3,sK2),sK1) ),
% 1.31/1.00      inference(cnf_transformation,[],[f41]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_22,plain,
% 1.31/1.00      ( r2_hidden(k1_funct_1(sK3,sK2),sK1) != iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_14,negated_conjecture,
% 1.31/1.00      ( r2_hidden(sK2,sK0) ),
% 1.31/1.00      inference(cnf_transformation,[],[f39]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(c_21,plain,
% 1.31/1.00      ( r2_hidden(sK2,sK0) = iProver_top ),
% 1.31/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 1.31/1.00  
% 1.31/1.00  cnf(contradiction,plain,
% 1.31/1.00      ( $false ),
% 1.31/1.00      inference(minisat,[status(thm)],[c_1154,c_22,c_21]) ).
% 1.31/1.00  
% 1.31/1.00  
% 1.31/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.31/1.00  
% 1.31/1.00  ------                               Statistics
% 1.31/1.00  
% 1.31/1.00  ------ General
% 1.31/1.00  
% 1.31/1.00  abstr_ref_over_cycles:                  0
% 1.31/1.00  abstr_ref_under_cycles:                 0
% 1.31/1.00  gc_basic_clause_elim:                   0
% 1.31/1.00  forced_gc_time:                         0
% 1.31/1.00  parsing_time:                           0.008
% 1.31/1.00  unif_index_cands_time:                  0.
% 1.31/1.00  unif_index_add_time:                    0.
% 1.31/1.00  orderings_time:                         0.
% 1.31/1.00  out_proof_time:                         0.008
% 1.31/1.00  total_time:                             0.066
% 1.31/1.00  num_of_symbols:                         53
% 1.31/1.00  num_of_terms:                           1279
% 1.31/1.00  
% 1.31/1.00  ------ Preprocessing
% 1.31/1.00  
% 1.31/1.00  num_of_splits:                          2
% 1.31/1.00  num_of_split_atoms:                     2
% 1.31/1.00  num_of_reused_defs:                     0
% 1.31/1.00  num_eq_ax_congr_red:                    14
% 1.31/1.00  num_of_sem_filtered_clauses:            1
% 1.31/1.00  num_of_subtypes:                        3
% 1.31/1.00  monotx_restored_types:                  0
% 1.31/1.00  sat_num_of_epr_types:                   0
% 1.31/1.00  sat_num_of_non_cyclic_types:            0
% 1.31/1.00  sat_guarded_non_collapsed_types:        0
% 1.31/1.00  num_pure_diseq_elim:                    0
% 1.31/1.00  simp_replaced_by:                       0
% 1.31/1.00  res_preprocessed:                       83
% 1.31/1.00  prep_upred:                             0
% 1.31/1.00  prep_unflattend:                        29
% 1.31/1.00  smt_new_axioms:                         0
% 1.31/1.00  pred_elim_cands:                        2
% 1.31/1.00  pred_elim:                              3
% 1.31/1.00  pred_elim_cl:                           6
% 1.31/1.00  pred_elim_cycles:                       5
% 1.31/1.00  merged_defs:                            0
% 1.31/1.00  merged_defs_ncl:                        0
% 1.31/1.00  bin_hyper_res:                          0
% 1.31/1.00  prep_cycles:                            4
% 1.31/1.00  pred_elim_time:                         0.003
% 1.31/1.00  splitting_time:                         0.
% 1.31/1.00  sem_filter_time:                        0.
% 1.31/1.00  monotx_time:                            0.
% 1.31/1.00  subtype_inf_time:                       0.
% 1.31/1.00  
% 1.31/1.00  ------ Problem properties
% 1.31/1.00  
% 1.31/1.00  clauses:                                14
% 1.31/1.00  conjectures:                            4
% 1.31/1.00  epr:                                    3
% 1.31/1.00  horn:                                   12
% 1.31/1.00  ground:                                 8
% 1.31/1.00  unary:                                  5
% 1.31/1.00  binary:                                 5
% 1.31/1.00  lits:                                   28
% 1.31/1.00  lits_eq:                                9
% 1.31/1.00  fd_pure:                                0
% 1.31/1.00  fd_pseudo:                              0
% 1.31/1.00  fd_cond:                                0
% 1.31/1.00  fd_pseudo_cond:                         0
% 1.31/1.00  ac_symbols:                             0
% 1.31/1.00  
% 1.31/1.00  ------ Propositional Solver
% 1.31/1.00  
% 1.31/1.00  prop_solver_calls:                      28
% 1.31/1.00  prop_fast_solver_calls:                 427
% 1.31/1.00  smt_solver_calls:                       0
% 1.31/1.00  smt_fast_solver_calls:                  0
% 1.31/1.00  prop_num_of_clauses:                    343
% 1.31/1.00  prop_preprocess_simplified:             2095
% 1.31/1.00  prop_fo_subsumed:                       9
% 1.31/1.00  prop_solver_time:                       0.
% 1.31/1.00  smt_solver_time:                        0.
% 1.31/1.00  smt_fast_solver_time:                   0.
% 1.31/1.00  prop_fast_solver_time:                  0.
% 1.31/1.00  prop_unsat_core_time:                   0.
% 1.31/1.00  
% 1.31/1.00  ------ QBF
% 1.31/1.00  
% 1.31/1.00  qbf_q_res:                              0
% 1.31/1.00  qbf_num_tautologies:                    0
% 1.31/1.00  qbf_prep_cycles:                        0
% 1.31/1.00  
% 1.31/1.00  ------ BMC1
% 1.31/1.00  
% 1.31/1.00  bmc1_current_bound:                     -1
% 1.31/1.00  bmc1_last_solved_bound:                 -1
% 1.31/1.00  bmc1_unsat_core_size:                   -1
% 1.31/1.00  bmc1_unsat_core_parents_size:           -1
% 1.31/1.00  bmc1_merge_next_fun:                    0
% 1.31/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.31/1.00  
% 1.31/1.00  ------ Instantiation
% 1.31/1.00  
% 1.31/1.00  inst_num_of_clauses:                    118
% 1.31/1.00  inst_num_in_passive:                    26
% 1.31/1.00  inst_num_in_active:                     91
% 1.31/1.00  inst_num_in_unprocessed:                1
% 1.31/1.00  inst_num_of_loops:                      100
% 1.31/1.00  inst_num_of_learning_restarts:          0
% 1.31/1.00  inst_num_moves_active_passive:          5
% 1.31/1.00  inst_lit_activity:                      0
% 1.31/1.00  inst_lit_activity_moves:                0
% 1.31/1.00  inst_num_tautologies:                   0
% 1.31/1.00  inst_num_prop_implied:                  0
% 1.31/1.00  inst_num_existing_simplified:           0
% 1.31/1.00  inst_num_eq_res_simplified:             0
% 1.31/1.00  inst_num_child_elim:                    0
% 1.31/1.00  inst_num_of_dismatching_blockings:      3
% 1.31/1.00  inst_num_of_non_proper_insts:           101
% 1.31/1.00  inst_num_of_duplicates:                 0
% 1.31/1.00  inst_inst_num_from_inst_to_res:         0
% 1.31/1.00  inst_dismatching_checking_time:         0.
% 1.31/1.00  
% 1.31/1.00  ------ Resolution
% 1.31/1.00  
% 1.31/1.00  res_num_of_clauses:                     0
% 1.31/1.00  res_num_in_passive:                     0
% 1.31/1.00  res_num_in_active:                      0
% 1.31/1.00  res_num_of_loops:                       87
% 1.31/1.00  res_forward_subset_subsumed:            24
% 1.31/1.00  res_backward_subset_subsumed:           2
% 1.31/1.00  res_forward_subsumed:                   0
% 1.31/1.00  res_backward_subsumed:                  0
% 1.31/1.00  res_forward_subsumption_resolution:     0
% 1.31/1.00  res_backward_subsumption_resolution:    0
% 1.31/1.00  res_clause_to_clause_subsumption:       30
% 1.31/1.00  res_orphan_elimination:                 0
% 1.31/1.00  res_tautology_del:                      23
% 1.31/1.00  res_num_eq_res_simplified:              0
% 1.31/1.00  res_num_sel_changes:                    0
% 1.31/1.00  res_moves_from_active_to_pass:          0
% 1.31/1.00  
% 1.31/1.00  ------ Superposition
% 1.31/1.00  
% 1.31/1.00  sup_time_total:                         0.
% 1.31/1.00  sup_time_generating:                    0.
% 1.31/1.00  sup_time_sim_full:                      0.
% 1.31/1.00  sup_time_sim_immed:                     0.
% 1.31/1.00  
% 1.31/1.00  sup_num_of_clauses:                     23
% 1.31/1.00  sup_num_in_active:                      19
% 1.31/1.00  sup_num_in_passive:                     4
% 1.31/1.00  sup_num_of_loops:                       18
% 1.31/1.00  sup_fw_superposition:                   4
% 1.31/1.00  sup_bw_superposition:                   5
% 1.31/1.00  sup_immediate_simplified:               1
% 1.31/1.00  sup_given_eliminated:                   0
% 1.31/1.00  comparisons_done:                       0
% 1.31/1.00  comparisons_avoided:                    0
% 1.31/1.00  
% 1.31/1.00  ------ Simplifications
% 1.31/1.00  
% 1.31/1.00  
% 1.31/1.00  sim_fw_subset_subsumed:                 0
% 1.31/1.00  sim_bw_subset_subsumed:                 0
% 1.31/1.00  sim_fw_subsumed:                        0
% 1.31/1.00  sim_bw_subsumed:                        0
% 1.31/1.00  sim_fw_subsumption_res:                 0
% 1.31/1.00  sim_bw_subsumption_res:                 0
% 1.31/1.00  sim_tautology_del:                      0
% 1.31/1.00  sim_eq_tautology_del:                   0
% 1.31/1.00  sim_eq_res_simp:                        0
% 1.31/1.00  sim_fw_demodulated:                     0
% 1.31/1.00  sim_bw_demodulated:                     0
% 1.31/1.00  sim_light_normalised:                   2
% 1.31/1.00  sim_joinable_taut:                      0
% 1.31/1.00  sim_joinable_simp:                      0
% 1.31/1.00  sim_ac_normalised:                      0
% 1.31/1.00  sim_smt_subsumption:                    0
% 1.31/1.00  
%------------------------------------------------------------------------------
