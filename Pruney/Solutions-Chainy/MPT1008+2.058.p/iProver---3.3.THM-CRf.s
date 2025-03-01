%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:05:16 EST 2020

% Result     : Theorem 1.39s
% Output     : CNFRefutation 1.39s
% Verified   : 
% Statistics : Number of formulae       :  137 (1188 expanded)
%              Number of clauses        :   61 ( 169 expanded)
%              Number of leaves         :   22 ( 333 expanded)
%              Depth                    :   23
%              Number of atoms          :  344 (2451 expanded)
%              Number of equality atoms :  174 (1422 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <=> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(flattening,[],[f40])).

fof(f55,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f7])).

fof(f78,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k5_enumset1(X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f53,f54])).

fof(f79,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k5_enumset1(X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f52,f78])).

fof(f80,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k5_enumset1(X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f51,f79])).

fof(f81,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k5_enumset1(X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f50,f80])).

fof(f82,plain,(
    ! [X0] : k1_tarski(X0) = k5_enumset1(X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f49,f81])).

fof(f85,plain,(
    ! [X0,X1] :
      ( k5_enumset1(X1,X1,X1,X1,X1,X1,X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k5_enumset1(X1,X1,X1,X1,X1,X1,X1)) ) ),
    inference(definition_unfolding,[],[f55,f82,f82])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f58,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f16])).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f25])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f20,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
     => ( k1_xboole_0 != X1
       => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
          & v1_funct_2(X2,k1_tarski(X0),X1)
          & v1_funct_1(X2) )
       => ( k1_xboole_0 != X1
         => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2) ) ) ),
    inference(negated_conjecture,[],[f20])).

fof(f38,plain,(
    ? [X0,X1,X2] :
      ( k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f39,plain,(
    ? [X0,X1,X2] :
      ( k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f38])).

fof(f46,plain,
    ( ? [X0,X1,X2] :
        ( k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2)
        & k1_xboole_0 != X1
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
   => ( k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3)
      & k1_xboole_0 != sK2
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2)))
      & v1_funct_2(sK3,k1_tarski(sK1),sK2)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,
    ( k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3)
    & k1_xboole_0 != sK2
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2)))
    & v1_funct_2(sK3,k1_tarski(sK1),sK2)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f39,f46])).

fof(f75,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2))) ),
    inference(cnf_transformation,[],[f47])).

fof(f88,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2))) ),
    inference(definition_unfolding,[],[f75,f82])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( k1_tarski(X0) = k1_relat_1(X1)
       => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f30,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f29])).

fof(f64,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f86,plain,(
    ! [X0,X1] :
      ( k5_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f64,f82,f82])).

fof(f73,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f70,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f77,plain,(
    k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f87,plain,(
    k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3) ),
    inference(definition_unfolding,[],[f77,f82,f82])).

fof(f11,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f28,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f27])).

fof(f62,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f18,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    inference(pure_predicate_removal,[],[f18])).

fof(f35,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f22])).

fof(f44,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f35,f44])).

fof(f71,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f45])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f37,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f36])).

fof(f72,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f74,plain,(
    v1_funct_2(sK3,k1_tarski(sK1),sK2) ),
    inference(cnf_transformation,[],[f47])).

fof(f89,plain,(
    v1_funct_2(sK3,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2) ),
    inference(definition_unfolding,[],[f74,f82])).

fof(f76,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f47])).

fof(f10,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    k1_xboole_0 = k2_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f10])).

fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f14,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f67,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,k5_enumset1(X1,X1,X1,X1,X1,X1,X1))
    | k5_enumset1(X1,X1,X1,X1,X1,X1,X1) = X0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f85])).

cnf(c_5,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v4_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2))) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_265,plain,
    ( v4_relat_1(X0,X1)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_21])).

cnf(c_266,plain,
    ( v4_relat_1(sK3,X0)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_265])).

cnf(c_333,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | X2 != X1
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X2,X3))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_266])).

cnf(c_334,plain,
    ( r1_tarski(k1_relat_1(sK3),X0)
    | ~ v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_333])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_277,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_21])).

cnf(c_278,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_277])).

cnf(c_338,plain,
    ( r1_tarski(k1_relat_1(sK3),X0)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_334,c_278])).

cnf(c_383,plain,
    ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != X1
    | k5_enumset1(X0,X0,X0,X0,X0,X0,X0) = X2
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X3))
    | k1_relat_1(sK3) != X2
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_338])).

cnf(c_384,plain,
    ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) = k1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(X0,X0,X0,X0,X0,X0,X0),X1))
    | k1_xboole_0 = k1_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_383])).

cnf(c_10,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_enumset1(X1,X1,X1,X1,X1,X1,X1) != k1_relat_1(X0)
    | k5_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_23,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_311,plain,
    ( ~ v1_relat_1(X0)
    | k5_enumset1(X1,X1,X1,X1,X1,X1,X1) != k1_relat_1(X0)
    | k5_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_23])).

cnf(c_312,plain,
    ( ~ v1_relat_1(sK3)
    | k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
    | k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_311])).

cnf(c_314,plain,
    ( ~ v1_relat_1(sK3)
    | k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) = k2_relat_1(sK3)
    | k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) != k1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_312])).

cnf(c_614,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_908,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) = k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_614])).

cnf(c_910,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_278])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_256,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_21])).

cnf(c_257,plain,
    ( k2_relset_1(X0,X1,sK3) = k2_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_256])).

cnf(c_933,plain,
    ( k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3) = k2_relat_1(sK3) ),
    inference(equality_resolution,[status(thm)],[c_257])).

cnf(c_19,negated_conjecture,
    ( k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_935,plain,
    ( k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_933,c_19])).

cnf(c_967,plain,
    ( k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2))
    | k1_xboole_0 = k1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_384])).

cnf(c_1057,plain,
    ( k1_xboole_0 = k1_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_384,c_314,c_908,c_910,c_935,c_967])).

cnf(c_9,plain,
    ( ~ v1_relat_1(X0)
    | k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_818,plain,
    ( k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1306,plain,
    ( sK3 = k1_xboole_0
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1057,c_818])).

cnf(c_911,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2))
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_910])).

cnf(c_1313,plain,
    ( sK3 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1306,c_908,c_911])).

cnf(c_17,plain,
    ( r2_hidden(sK0(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_816,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK0(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_18,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_22,negated_conjecture,
    ( v1_funct_2(sK3,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_235,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) != X1
    | sK2 != X2
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_22])).

cnf(c_236,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)))
    | ~ r2_hidden(X0,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3))
    | ~ v1_funct_1(sK3)
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_235])).

cnf(c_20,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f76])).

cnf(c_240,plain,
    ( ~ r2_hidden(X0,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_236,c_23,c_21,c_20])).

cnf(c_815,plain,
    ( r2_hidden(X0,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1)) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_240])).

cnf(c_990,plain,
    ( r2_hidden(X0,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1)) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0),k2_relat_1(sK3)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_815,c_933])).

cnf(c_1190,plain,
    ( k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k1_xboole_0
    | r2_hidden(k1_funct_1(sK3,sK0(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))),k2_relat_1(sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_816,c_990])).

cnf(c_813,plain,
    ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
    | k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_312])).

cnf(c_997,plain,
    ( k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
    | k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_813,c_312,c_908,c_910])).

cnf(c_998,plain,
    ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
    | k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
    inference(renaming,[status(thm)],[c_997])).

cnf(c_1060,plain,
    ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_xboole_0
    | k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_1057,c_998])).

cnf(c_1061,plain,
    ( k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) = k2_relat_1(sK3)
    | k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1060])).

cnf(c_1251,plain,
    ( r2_hidden(k1_funct_1(sK3,sK0(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))),k2_relat_1(sK3)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1190,c_935,c_1061])).

cnf(c_1316,plain,
    ( r2_hidden(k1_funct_1(k1_xboole_0,sK0(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))),k2_relat_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1313,c_1251])).

cnf(c_6,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1344,plain,
    ( r2_hidden(k1_funct_1(k1_xboole_0,sK0(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))),k1_xboole_0) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1316,c_6])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_13,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_356,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_13])).

cnf(c_357,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_356])).

cnf(c_812,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_357])).

cnf(c_1487,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1344,c_812])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n025.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:25:36 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.39/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.39/1.00  
% 1.39/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.39/1.00  
% 1.39/1.00  ------  iProver source info
% 1.39/1.00  
% 1.39/1.00  git: date: 2020-06-30 10:37:57 +0100
% 1.39/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.39/1.00  git: non_committed_changes: false
% 1.39/1.00  git: last_make_outside_of_git: false
% 1.39/1.00  
% 1.39/1.00  ------ 
% 1.39/1.00  
% 1.39/1.00  ------ Input Options
% 1.39/1.00  
% 1.39/1.00  --out_options                           all
% 1.39/1.00  --tptp_safe_out                         true
% 1.39/1.00  --problem_path                          ""
% 1.39/1.00  --include_path                          ""
% 1.39/1.00  --clausifier                            res/vclausify_rel
% 1.39/1.00  --clausifier_options                    --mode clausify
% 1.39/1.00  --stdin                                 false
% 1.39/1.00  --stats_out                             all
% 1.39/1.00  
% 1.39/1.00  ------ General Options
% 1.39/1.00  
% 1.39/1.00  --fof                                   false
% 1.39/1.00  --time_out_real                         305.
% 1.39/1.00  --time_out_virtual                      -1.
% 1.39/1.00  --symbol_type_check                     false
% 1.39/1.00  --clausify_out                          false
% 1.39/1.00  --sig_cnt_out                           false
% 1.39/1.00  --trig_cnt_out                          false
% 1.39/1.00  --trig_cnt_out_tolerance                1.
% 1.39/1.00  --trig_cnt_out_sk_spl                   false
% 1.39/1.00  --abstr_cl_out                          false
% 1.39/1.00  
% 1.39/1.00  ------ Global Options
% 1.39/1.00  
% 1.39/1.00  --schedule                              default
% 1.39/1.00  --add_important_lit                     false
% 1.39/1.00  --prop_solver_per_cl                    1000
% 1.39/1.00  --min_unsat_core                        false
% 1.39/1.00  --soft_assumptions                      false
% 1.39/1.00  --soft_lemma_size                       3
% 1.39/1.00  --prop_impl_unit_size                   0
% 1.39/1.00  --prop_impl_unit                        []
% 1.39/1.00  --share_sel_clauses                     true
% 1.39/1.00  --reset_solvers                         false
% 1.39/1.00  --bc_imp_inh                            [conj_cone]
% 1.39/1.00  --conj_cone_tolerance                   3.
% 1.39/1.00  --extra_neg_conj                        none
% 1.39/1.00  --large_theory_mode                     true
% 1.39/1.00  --prolific_symb_bound                   200
% 1.39/1.00  --lt_threshold                          2000
% 1.39/1.00  --clause_weak_htbl                      true
% 1.39/1.00  --gc_record_bc_elim                     false
% 1.39/1.00  
% 1.39/1.00  ------ Preprocessing Options
% 1.39/1.00  
% 1.39/1.00  --preprocessing_flag                    true
% 1.39/1.00  --time_out_prep_mult                    0.1
% 1.39/1.00  --splitting_mode                        input
% 1.39/1.00  --splitting_grd                         true
% 1.39/1.00  --splitting_cvd                         false
% 1.39/1.00  --splitting_cvd_svl                     false
% 1.39/1.00  --splitting_nvd                         32
% 1.39/1.00  --sub_typing                            true
% 1.39/1.00  --prep_gs_sim                           true
% 1.39/1.00  --prep_unflatten                        true
% 1.39/1.00  --prep_res_sim                          true
% 1.39/1.00  --prep_upred                            true
% 1.39/1.00  --prep_sem_filter                       exhaustive
% 1.39/1.00  --prep_sem_filter_out                   false
% 1.39/1.00  --pred_elim                             true
% 1.39/1.00  --res_sim_input                         true
% 1.39/1.00  --eq_ax_congr_red                       true
% 1.39/1.00  --pure_diseq_elim                       true
% 1.39/1.00  --brand_transform                       false
% 1.39/1.00  --non_eq_to_eq                          false
% 1.39/1.00  --prep_def_merge                        true
% 1.39/1.00  --prep_def_merge_prop_impl              false
% 1.39/1.00  --prep_def_merge_mbd                    true
% 1.39/1.00  --prep_def_merge_tr_red                 false
% 1.39/1.00  --prep_def_merge_tr_cl                  false
% 1.39/1.00  --smt_preprocessing                     true
% 1.39/1.00  --smt_ac_axioms                         fast
% 1.39/1.00  --preprocessed_out                      false
% 1.39/1.00  --preprocessed_stats                    false
% 1.39/1.00  
% 1.39/1.00  ------ Abstraction refinement Options
% 1.39/1.00  
% 1.39/1.00  --abstr_ref                             []
% 1.39/1.00  --abstr_ref_prep                        false
% 1.39/1.00  --abstr_ref_until_sat                   false
% 1.39/1.00  --abstr_ref_sig_restrict                funpre
% 1.39/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.39/1.00  --abstr_ref_under                       []
% 1.39/1.00  
% 1.39/1.00  ------ SAT Options
% 1.39/1.00  
% 1.39/1.00  --sat_mode                              false
% 1.39/1.00  --sat_fm_restart_options                ""
% 1.39/1.00  --sat_gr_def                            false
% 1.39/1.00  --sat_epr_types                         true
% 1.39/1.00  --sat_non_cyclic_types                  false
% 1.39/1.00  --sat_finite_models                     false
% 1.39/1.00  --sat_fm_lemmas                         false
% 1.39/1.00  --sat_fm_prep                           false
% 1.39/1.01  --sat_fm_uc_incr                        true
% 1.39/1.01  --sat_out_model                         small
% 1.39/1.01  --sat_out_clauses                       false
% 1.39/1.01  
% 1.39/1.01  ------ QBF Options
% 1.39/1.01  
% 1.39/1.01  --qbf_mode                              false
% 1.39/1.01  --qbf_elim_univ                         false
% 1.39/1.01  --qbf_dom_inst                          none
% 1.39/1.01  --qbf_dom_pre_inst                      false
% 1.39/1.01  --qbf_sk_in                             false
% 1.39/1.01  --qbf_pred_elim                         true
% 1.39/1.01  --qbf_split                             512
% 1.39/1.01  
% 1.39/1.01  ------ BMC1 Options
% 1.39/1.01  
% 1.39/1.01  --bmc1_incremental                      false
% 1.39/1.01  --bmc1_axioms                           reachable_all
% 1.39/1.01  --bmc1_min_bound                        0
% 1.39/1.01  --bmc1_max_bound                        -1
% 1.39/1.01  --bmc1_max_bound_default                -1
% 1.39/1.01  --bmc1_symbol_reachability              true
% 1.39/1.01  --bmc1_property_lemmas                  false
% 1.39/1.01  --bmc1_k_induction                      false
% 1.39/1.01  --bmc1_non_equiv_states                 false
% 1.39/1.01  --bmc1_deadlock                         false
% 1.39/1.01  --bmc1_ucm                              false
% 1.39/1.01  --bmc1_add_unsat_core                   none
% 1.39/1.01  --bmc1_unsat_core_children              false
% 1.39/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.39/1.01  --bmc1_out_stat                         full
% 1.39/1.01  --bmc1_ground_init                      false
% 1.39/1.01  --bmc1_pre_inst_next_state              false
% 1.39/1.01  --bmc1_pre_inst_state                   false
% 1.39/1.01  --bmc1_pre_inst_reach_state             false
% 1.39/1.01  --bmc1_out_unsat_core                   false
% 1.39/1.01  --bmc1_aig_witness_out                  false
% 1.39/1.01  --bmc1_verbose                          false
% 1.39/1.01  --bmc1_dump_clauses_tptp                false
% 1.39/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.39/1.01  --bmc1_dump_file                        -
% 1.39/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.39/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.39/1.01  --bmc1_ucm_extend_mode                  1
% 1.39/1.01  --bmc1_ucm_init_mode                    2
% 1.39/1.01  --bmc1_ucm_cone_mode                    none
% 1.39/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.39/1.01  --bmc1_ucm_relax_model                  4
% 1.39/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.39/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.39/1.01  --bmc1_ucm_layered_model                none
% 1.39/1.01  --bmc1_ucm_max_lemma_size               10
% 1.39/1.01  
% 1.39/1.01  ------ AIG Options
% 1.39/1.01  
% 1.39/1.01  --aig_mode                              false
% 1.39/1.01  
% 1.39/1.01  ------ Instantiation Options
% 1.39/1.01  
% 1.39/1.01  --instantiation_flag                    true
% 1.39/1.01  --inst_sos_flag                         false
% 1.39/1.01  --inst_sos_phase                        true
% 1.39/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.39/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.39/1.01  --inst_lit_sel_side                     num_symb
% 1.39/1.01  --inst_solver_per_active                1400
% 1.39/1.01  --inst_solver_calls_frac                1.
% 1.39/1.01  --inst_passive_queue_type               priority_queues
% 1.39/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.39/1.01  --inst_passive_queues_freq              [25;2]
% 1.39/1.01  --inst_dismatching                      true
% 1.39/1.01  --inst_eager_unprocessed_to_passive     true
% 1.39/1.01  --inst_prop_sim_given                   true
% 1.39/1.01  --inst_prop_sim_new                     false
% 1.39/1.01  --inst_subs_new                         false
% 1.39/1.01  --inst_eq_res_simp                      false
% 1.39/1.01  --inst_subs_given                       false
% 1.39/1.01  --inst_orphan_elimination               true
% 1.39/1.01  --inst_learning_loop_flag               true
% 1.39/1.01  --inst_learning_start                   3000
% 1.39/1.01  --inst_learning_factor                  2
% 1.39/1.01  --inst_start_prop_sim_after_learn       3
% 1.39/1.01  --inst_sel_renew                        solver
% 1.39/1.01  --inst_lit_activity_flag                true
% 1.39/1.01  --inst_restr_to_given                   false
% 1.39/1.01  --inst_activity_threshold               500
% 1.39/1.01  --inst_out_proof                        true
% 1.39/1.01  
% 1.39/1.01  ------ Resolution Options
% 1.39/1.01  
% 1.39/1.01  --resolution_flag                       true
% 1.39/1.01  --res_lit_sel                           adaptive
% 1.39/1.01  --res_lit_sel_side                      none
% 1.39/1.01  --res_ordering                          kbo
% 1.39/1.01  --res_to_prop_solver                    active
% 1.39/1.01  --res_prop_simpl_new                    false
% 1.39/1.01  --res_prop_simpl_given                  true
% 1.39/1.01  --res_passive_queue_type                priority_queues
% 1.39/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.39/1.01  --res_passive_queues_freq               [15;5]
% 1.39/1.01  --res_forward_subs                      full
% 1.39/1.01  --res_backward_subs                     full
% 1.39/1.01  --res_forward_subs_resolution           true
% 1.39/1.01  --res_backward_subs_resolution          true
% 1.39/1.01  --res_orphan_elimination                true
% 1.39/1.01  --res_time_limit                        2.
% 1.39/1.01  --res_out_proof                         true
% 1.39/1.01  
% 1.39/1.01  ------ Superposition Options
% 1.39/1.01  
% 1.39/1.01  --superposition_flag                    true
% 1.39/1.01  --sup_passive_queue_type                priority_queues
% 1.39/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.39/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.39/1.01  --demod_completeness_check              fast
% 1.39/1.01  --demod_use_ground                      true
% 1.39/1.01  --sup_to_prop_solver                    passive
% 1.39/1.01  --sup_prop_simpl_new                    true
% 1.39/1.01  --sup_prop_simpl_given                  true
% 1.39/1.01  --sup_fun_splitting                     false
% 1.39/1.01  --sup_smt_interval                      50000
% 1.39/1.01  
% 1.39/1.01  ------ Superposition Simplification Setup
% 1.39/1.01  
% 1.39/1.01  --sup_indices_passive                   []
% 1.39/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.39/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.39/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.39/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.39/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.39/1.01  --sup_full_bw                           [BwDemod]
% 1.39/1.01  --sup_immed_triv                        [TrivRules]
% 1.39/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.39/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.39/1.01  --sup_immed_bw_main                     []
% 1.39/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.39/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.39/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.39/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.39/1.01  
% 1.39/1.01  ------ Combination Options
% 1.39/1.01  
% 1.39/1.01  --comb_res_mult                         3
% 1.39/1.01  --comb_sup_mult                         2
% 1.39/1.01  --comb_inst_mult                        10
% 1.39/1.01  
% 1.39/1.01  ------ Debug Options
% 1.39/1.01  
% 1.39/1.01  --dbg_backtrace                         false
% 1.39/1.01  --dbg_dump_prop_clauses                 false
% 1.39/1.01  --dbg_dump_prop_clauses_file            -
% 1.39/1.01  --dbg_out_stat                          false
% 1.39/1.01  ------ Parsing...
% 1.39/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.39/1.01  
% 1.39/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 1.39/1.01  
% 1.39/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.39/1.01  
% 1.39/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.39/1.01  ------ Proving...
% 1.39/1.01  ------ Problem Properties 
% 1.39/1.01  
% 1.39/1.01  
% 1.39/1.01  clauses                                 17
% 1.39/1.01  conjectures                             2
% 1.39/1.01  EPR                                     3
% 1.39/1.01  Horn                                    15
% 1.39/1.01  unary                                   7
% 1.39/1.01  binary                                  6
% 1.39/1.01  lits                                    31
% 1.39/1.01  lits eq                                 20
% 1.39/1.01  fd_pure                                 0
% 1.39/1.01  fd_pseudo                               0
% 1.39/1.01  fd_cond                                 3
% 1.39/1.01  fd_pseudo_cond                          0
% 1.39/1.01  AC symbols                              0
% 1.39/1.01  
% 1.39/1.01  ------ Schedule dynamic 5 is on 
% 1.39/1.01  
% 1.39/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.39/1.01  
% 1.39/1.01  
% 1.39/1.01  ------ 
% 1.39/1.01  Current options:
% 1.39/1.01  ------ 
% 1.39/1.01  
% 1.39/1.01  ------ Input Options
% 1.39/1.01  
% 1.39/1.01  --out_options                           all
% 1.39/1.01  --tptp_safe_out                         true
% 1.39/1.01  --problem_path                          ""
% 1.39/1.01  --include_path                          ""
% 1.39/1.01  --clausifier                            res/vclausify_rel
% 1.39/1.01  --clausifier_options                    --mode clausify
% 1.39/1.01  --stdin                                 false
% 1.39/1.01  --stats_out                             all
% 1.39/1.01  
% 1.39/1.01  ------ General Options
% 1.39/1.01  
% 1.39/1.01  --fof                                   false
% 1.39/1.01  --time_out_real                         305.
% 1.39/1.01  --time_out_virtual                      -1.
% 1.39/1.01  --symbol_type_check                     false
% 1.39/1.01  --clausify_out                          false
% 1.39/1.01  --sig_cnt_out                           false
% 1.39/1.01  --trig_cnt_out                          false
% 1.39/1.01  --trig_cnt_out_tolerance                1.
% 1.39/1.01  --trig_cnt_out_sk_spl                   false
% 1.39/1.01  --abstr_cl_out                          false
% 1.39/1.01  
% 1.39/1.01  ------ Global Options
% 1.39/1.01  
% 1.39/1.01  --schedule                              default
% 1.39/1.01  --add_important_lit                     false
% 1.39/1.01  --prop_solver_per_cl                    1000
% 1.39/1.01  --min_unsat_core                        false
% 1.39/1.01  --soft_assumptions                      false
% 1.39/1.01  --soft_lemma_size                       3
% 1.39/1.01  --prop_impl_unit_size                   0
% 1.39/1.01  --prop_impl_unit                        []
% 1.39/1.01  --share_sel_clauses                     true
% 1.39/1.01  --reset_solvers                         false
% 1.39/1.01  --bc_imp_inh                            [conj_cone]
% 1.39/1.01  --conj_cone_tolerance                   3.
% 1.39/1.01  --extra_neg_conj                        none
% 1.39/1.01  --large_theory_mode                     true
% 1.39/1.01  --prolific_symb_bound                   200
% 1.39/1.01  --lt_threshold                          2000
% 1.39/1.01  --clause_weak_htbl                      true
% 1.39/1.01  --gc_record_bc_elim                     false
% 1.39/1.01  
% 1.39/1.01  ------ Preprocessing Options
% 1.39/1.01  
% 1.39/1.01  --preprocessing_flag                    true
% 1.39/1.01  --time_out_prep_mult                    0.1
% 1.39/1.01  --splitting_mode                        input
% 1.39/1.01  --splitting_grd                         true
% 1.39/1.01  --splitting_cvd                         false
% 1.39/1.01  --splitting_cvd_svl                     false
% 1.39/1.01  --splitting_nvd                         32
% 1.39/1.01  --sub_typing                            true
% 1.39/1.01  --prep_gs_sim                           true
% 1.39/1.01  --prep_unflatten                        true
% 1.39/1.01  --prep_res_sim                          true
% 1.39/1.01  --prep_upred                            true
% 1.39/1.01  --prep_sem_filter                       exhaustive
% 1.39/1.01  --prep_sem_filter_out                   false
% 1.39/1.01  --pred_elim                             true
% 1.39/1.01  --res_sim_input                         true
% 1.39/1.01  --eq_ax_congr_red                       true
% 1.39/1.01  --pure_diseq_elim                       true
% 1.39/1.01  --brand_transform                       false
% 1.39/1.01  --non_eq_to_eq                          false
% 1.39/1.01  --prep_def_merge                        true
% 1.39/1.01  --prep_def_merge_prop_impl              false
% 1.39/1.01  --prep_def_merge_mbd                    true
% 1.39/1.01  --prep_def_merge_tr_red                 false
% 1.39/1.01  --prep_def_merge_tr_cl                  false
% 1.39/1.01  --smt_preprocessing                     true
% 1.39/1.01  --smt_ac_axioms                         fast
% 1.39/1.01  --preprocessed_out                      false
% 1.39/1.01  --preprocessed_stats                    false
% 1.39/1.01  
% 1.39/1.01  ------ Abstraction refinement Options
% 1.39/1.01  
% 1.39/1.01  --abstr_ref                             []
% 1.39/1.01  --abstr_ref_prep                        false
% 1.39/1.01  --abstr_ref_until_sat                   false
% 1.39/1.01  --abstr_ref_sig_restrict                funpre
% 1.39/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.39/1.01  --abstr_ref_under                       []
% 1.39/1.01  
% 1.39/1.01  ------ SAT Options
% 1.39/1.01  
% 1.39/1.01  --sat_mode                              false
% 1.39/1.01  --sat_fm_restart_options                ""
% 1.39/1.01  --sat_gr_def                            false
% 1.39/1.01  --sat_epr_types                         true
% 1.39/1.01  --sat_non_cyclic_types                  false
% 1.39/1.01  --sat_finite_models                     false
% 1.39/1.01  --sat_fm_lemmas                         false
% 1.39/1.01  --sat_fm_prep                           false
% 1.39/1.01  --sat_fm_uc_incr                        true
% 1.39/1.01  --sat_out_model                         small
% 1.39/1.01  --sat_out_clauses                       false
% 1.39/1.01  
% 1.39/1.01  ------ QBF Options
% 1.39/1.01  
% 1.39/1.01  --qbf_mode                              false
% 1.39/1.01  --qbf_elim_univ                         false
% 1.39/1.01  --qbf_dom_inst                          none
% 1.39/1.01  --qbf_dom_pre_inst                      false
% 1.39/1.01  --qbf_sk_in                             false
% 1.39/1.01  --qbf_pred_elim                         true
% 1.39/1.01  --qbf_split                             512
% 1.39/1.01  
% 1.39/1.01  ------ BMC1 Options
% 1.39/1.01  
% 1.39/1.01  --bmc1_incremental                      false
% 1.39/1.01  --bmc1_axioms                           reachable_all
% 1.39/1.01  --bmc1_min_bound                        0
% 1.39/1.01  --bmc1_max_bound                        -1
% 1.39/1.01  --bmc1_max_bound_default                -1
% 1.39/1.01  --bmc1_symbol_reachability              true
% 1.39/1.01  --bmc1_property_lemmas                  false
% 1.39/1.01  --bmc1_k_induction                      false
% 1.39/1.01  --bmc1_non_equiv_states                 false
% 1.39/1.01  --bmc1_deadlock                         false
% 1.39/1.01  --bmc1_ucm                              false
% 1.39/1.01  --bmc1_add_unsat_core                   none
% 1.39/1.01  --bmc1_unsat_core_children              false
% 1.39/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.39/1.01  --bmc1_out_stat                         full
% 1.39/1.01  --bmc1_ground_init                      false
% 1.39/1.01  --bmc1_pre_inst_next_state              false
% 1.39/1.01  --bmc1_pre_inst_state                   false
% 1.39/1.01  --bmc1_pre_inst_reach_state             false
% 1.39/1.01  --bmc1_out_unsat_core                   false
% 1.39/1.01  --bmc1_aig_witness_out                  false
% 1.39/1.01  --bmc1_verbose                          false
% 1.39/1.01  --bmc1_dump_clauses_tptp                false
% 1.39/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.39/1.01  --bmc1_dump_file                        -
% 1.39/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.39/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.39/1.01  --bmc1_ucm_extend_mode                  1
% 1.39/1.01  --bmc1_ucm_init_mode                    2
% 1.39/1.01  --bmc1_ucm_cone_mode                    none
% 1.39/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.39/1.01  --bmc1_ucm_relax_model                  4
% 1.39/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.39/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.39/1.01  --bmc1_ucm_layered_model                none
% 1.39/1.01  --bmc1_ucm_max_lemma_size               10
% 1.39/1.01  
% 1.39/1.01  ------ AIG Options
% 1.39/1.01  
% 1.39/1.01  --aig_mode                              false
% 1.39/1.01  
% 1.39/1.01  ------ Instantiation Options
% 1.39/1.01  
% 1.39/1.01  --instantiation_flag                    true
% 1.39/1.01  --inst_sos_flag                         false
% 1.39/1.01  --inst_sos_phase                        true
% 1.39/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.39/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.39/1.01  --inst_lit_sel_side                     none
% 1.39/1.01  --inst_solver_per_active                1400
% 1.39/1.01  --inst_solver_calls_frac                1.
% 1.39/1.01  --inst_passive_queue_type               priority_queues
% 1.39/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.39/1.01  --inst_passive_queues_freq              [25;2]
% 1.39/1.01  --inst_dismatching                      true
% 1.39/1.01  --inst_eager_unprocessed_to_passive     true
% 1.39/1.01  --inst_prop_sim_given                   true
% 1.39/1.01  --inst_prop_sim_new                     false
% 1.39/1.01  --inst_subs_new                         false
% 1.39/1.01  --inst_eq_res_simp                      false
% 1.39/1.01  --inst_subs_given                       false
% 1.39/1.01  --inst_orphan_elimination               true
% 1.39/1.01  --inst_learning_loop_flag               true
% 1.39/1.01  --inst_learning_start                   3000
% 1.39/1.01  --inst_learning_factor                  2
% 1.39/1.01  --inst_start_prop_sim_after_learn       3
% 1.39/1.01  --inst_sel_renew                        solver
% 1.39/1.01  --inst_lit_activity_flag                true
% 1.39/1.01  --inst_restr_to_given                   false
% 1.39/1.01  --inst_activity_threshold               500
% 1.39/1.01  --inst_out_proof                        true
% 1.39/1.01  
% 1.39/1.01  ------ Resolution Options
% 1.39/1.01  
% 1.39/1.01  --resolution_flag                       false
% 1.39/1.01  --res_lit_sel                           adaptive
% 1.39/1.01  --res_lit_sel_side                      none
% 1.39/1.01  --res_ordering                          kbo
% 1.39/1.01  --res_to_prop_solver                    active
% 1.39/1.01  --res_prop_simpl_new                    false
% 1.39/1.01  --res_prop_simpl_given                  true
% 1.39/1.01  --res_passive_queue_type                priority_queues
% 1.39/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.39/1.01  --res_passive_queues_freq               [15;5]
% 1.39/1.01  --res_forward_subs                      full
% 1.39/1.01  --res_backward_subs                     full
% 1.39/1.01  --res_forward_subs_resolution           true
% 1.39/1.01  --res_backward_subs_resolution          true
% 1.39/1.01  --res_orphan_elimination                true
% 1.39/1.01  --res_time_limit                        2.
% 1.39/1.01  --res_out_proof                         true
% 1.39/1.01  
% 1.39/1.01  ------ Superposition Options
% 1.39/1.01  
% 1.39/1.01  --superposition_flag                    true
% 1.39/1.01  --sup_passive_queue_type                priority_queues
% 1.39/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.39/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.39/1.01  --demod_completeness_check              fast
% 1.39/1.01  --demod_use_ground                      true
% 1.39/1.01  --sup_to_prop_solver                    passive
% 1.39/1.01  --sup_prop_simpl_new                    true
% 1.39/1.01  --sup_prop_simpl_given                  true
% 1.39/1.01  --sup_fun_splitting                     false
% 1.39/1.01  --sup_smt_interval                      50000
% 1.39/1.01  
% 1.39/1.01  ------ Superposition Simplification Setup
% 1.39/1.01  
% 1.39/1.01  --sup_indices_passive                   []
% 1.39/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.39/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.39/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.39/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.39/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.39/1.01  --sup_full_bw                           [BwDemod]
% 1.39/1.01  --sup_immed_triv                        [TrivRules]
% 1.39/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.39/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.39/1.01  --sup_immed_bw_main                     []
% 1.39/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.39/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.39/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.39/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.39/1.01  
% 1.39/1.01  ------ Combination Options
% 1.39/1.01  
% 1.39/1.01  --comb_res_mult                         3
% 1.39/1.01  --comb_sup_mult                         2
% 1.39/1.01  --comb_inst_mult                        10
% 1.39/1.01  
% 1.39/1.01  ------ Debug Options
% 1.39/1.01  
% 1.39/1.01  --dbg_backtrace                         false
% 1.39/1.01  --dbg_dump_prop_clauses                 false
% 1.39/1.01  --dbg_dump_prop_clauses_file            -
% 1.39/1.01  --dbg_out_stat                          false
% 1.39/1.01  
% 1.39/1.01  
% 1.39/1.01  
% 1.39/1.01  
% 1.39/1.01  ------ Proving...
% 1.39/1.01  
% 1.39/1.01  
% 1.39/1.01  % SZS status Theorem for theBenchmark.p
% 1.39/1.01  
% 1.39/1.01   Resolution empty clause
% 1.39/1.01  
% 1.39/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 1.39/1.01  
% 1.39/1.01  fof(f8,axiom,(
% 1.39/1.01    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f40,plain,(
% 1.39/1.01    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k1_tarski(X1))))),
% 1.39/1.01    inference(nnf_transformation,[],[f8])).
% 1.39/1.01  
% 1.39/1.01  fof(f41,plain,(
% 1.39/1.01    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))))),
% 1.39/1.01    inference(flattening,[],[f40])).
% 1.39/1.01  
% 1.39/1.01  fof(f55,plain,(
% 1.39/1.01    ( ! [X0,X1] : (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))) )),
% 1.39/1.01    inference(cnf_transformation,[],[f41])).
% 1.39/1.01  
% 1.39/1.01  fof(f2,axiom,(
% 1.39/1.01    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f49,plain,(
% 1.39/1.01    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f2])).
% 1.39/1.01  
% 1.39/1.01  fof(f3,axiom,(
% 1.39/1.01    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f50,plain,(
% 1.39/1.01    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f3])).
% 1.39/1.01  
% 1.39/1.01  fof(f4,axiom,(
% 1.39/1.01    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f51,plain,(
% 1.39/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f4])).
% 1.39/1.01  
% 1.39/1.01  fof(f5,axiom,(
% 1.39/1.01    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f52,plain,(
% 1.39/1.01    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f5])).
% 1.39/1.01  
% 1.39/1.01  fof(f6,axiom,(
% 1.39/1.01    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f53,plain,(
% 1.39/1.01    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f6])).
% 1.39/1.01  
% 1.39/1.01  fof(f7,axiom,(
% 1.39/1.01    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f54,plain,(
% 1.39/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f7])).
% 1.39/1.01  
% 1.39/1.01  fof(f78,plain,(
% 1.39/1.01    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k5_enumset1(X0,X0,X0,X1,X2,X3,X4)) )),
% 1.39/1.01    inference(definition_unfolding,[],[f53,f54])).
% 1.39/1.01  
% 1.39/1.01  fof(f79,plain,(
% 1.39/1.01    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k5_enumset1(X0,X0,X0,X0,X1,X2,X3)) )),
% 1.39/1.01    inference(definition_unfolding,[],[f52,f78])).
% 1.39/1.01  
% 1.39/1.01  fof(f80,plain,(
% 1.39/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k5_enumset1(X0,X0,X0,X0,X0,X1,X2)) )),
% 1.39/1.01    inference(definition_unfolding,[],[f51,f79])).
% 1.39/1.01  
% 1.39/1.01  fof(f81,plain,(
% 1.39/1.01    ( ! [X0,X1] : (k2_tarski(X0,X1) = k5_enumset1(X0,X0,X0,X0,X0,X0,X1)) )),
% 1.39/1.01    inference(definition_unfolding,[],[f50,f80])).
% 1.39/1.01  
% 1.39/1.01  fof(f82,plain,(
% 1.39/1.01    ( ! [X0] : (k1_tarski(X0) = k5_enumset1(X0,X0,X0,X0,X0,X0,X0)) )),
% 1.39/1.01    inference(definition_unfolding,[],[f49,f81])).
% 1.39/1.01  
% 1.39/1.01  fof(f85,plain,(
% 1.39/1.01    ( ! [X0,X1] : (k5_enumset1(X1,X1,X1,X1,X1,X1,X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k5_enumset1(X1,X1,X1,X1,X1,X1,X1))) )),
% 1.39/1.01    inference(definition_unfolding,[],[f55,f82,f82])).
% 1.39/1.01  
% 1.39/1.01  fof(f9,axiom,(
% 1.39/1.01    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f26,plain,(
% 1.39/1.01    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.39/1.01    inference(ennf_transformation,[],[f9])).
% 1.39/1.01  
% 1.39/1.01  fof(f42,plain,(
% 1.39/1.01    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 1.39/1.01    inference(nnf_transformation,[],[f26])).
% 1.39/1.01  
% 1.39/1.01  fof(f58,plain,(
% 1.39/1.01    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f42])).
% 1.39/1.01  
% 1.39/1.01  fof(f16,axiom,(
% 1.39/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f25,plain,(
% 1.39/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.39/1.01    inference(pure_predicate_removal,[],[f16])).
% 1.39/1.01  
% 1.39/1.01  fof(f33,plain,(
% 1.39/1.01    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.39/1.01    inference(ennf_transformation,[],[f25])).
% 1.39/1.01  
% 1.39/1.01  fof(f69,plain,(
% 1.39/1.01    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.39/1.01    inference(cnf_transformation,[],[f33])).
% 1.39/1.01  
% 1.39/1.01  fof(f20,conjecture,(
% 1.39/1.01    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2)))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f21,negated_conjecture,(
% 1.39/1.01    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2)))),
% 1.39/1.01    inference(negated_conjecture,[],[f20])).
% 1.39/1.01  
% 1.39/1.01  fof(f38,plain,(
% 1.39/1.01    ? [X0,X1,X2] : ((k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2) & k1_xboole_0 != X1) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)))),
% 1.39/1.01    inference(ennf_transformation,[],[f21])).
% 1.39/1.01  
% 1.39/1.01  fof(f39,plain,(
% 1.39/1.01    ? [X0,X1,X2] : (k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2))),
% 1.39/1.01    inference(flattening,[],[f38])).
% 1.39/1.01  
% 1.39/1.01  fof(f46,plain,(
% 1.39/1.01    ? [X0,X1,X2] : (k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3) & k1_xboole_0 != sK2 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2))) & v1_funct_2(sK3,k1_tarski(sK1),sK2) & v1_funct_1(sK3))),
% 1.39/1.01    introduced(choice_axiom,[])).
% 1.39/1.01  
% 1.39/1.01  fof(f47,plain,(
% 1.39/1.01    k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3) & k1_xboole_0 != sK2 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2))) & v1_funct_2(sK3,k1_tarski(sK1),sK2) & v1_funct_1(sK3)),
% 1.39/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f39,f46])).
% 1.39/1.01  
% 1.39/1.01  fof(f75,plain,(
% 1.39/1.01    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2)))),
% 1.39/1.01    inference(cnf_transformation,[],[f47])).
% 1.39/1.01  
% 1.39/1.01  fof(f88,plain,(
% 1.39/1.01    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)))),
% 1.39/1.01    inference(definition_unfolding,[],[f75,f82])).
% 1.39/1.01  
% 1.39/1.01  fof(f15,axiom,(
% 1.39/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f32,plain,(
% 1.39/1.01    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.39/1.01    inference(ennf_transformation,[],[f15])).
% 1.39/1.01  
% 1.39/1.01  fof(f68,plain,(
% 1.39/1.01    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.39/1.01    inference(cnf_transformation,[],[f32])).
% 1.39/1.01  
% 1.39/1.01  fof(f12,axiom,(
% 1.39/1.01    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (k1_tarski(X0) = k1_relat_1(X1) => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f29,plain,(
% 1.39/1.01    ! [X0,X1] : ((k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 1.39/1.01    inference(ennf_transformation,[],[f12])).
% 1.39/1.01  
% 1.39/1.01  fof(f30,plain,(
% 1.39/1.01    ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.39/1.01    inference(flattening,[],[f29])).
% 1.39/1.01  
% 1.39/1.01  fof(f64,plain,(
% 1.39/1.01    ( ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f30])).
% 1.39/1.01  
% 1.39/1.01  fof(f86,plain,(
% 1.39/1.01    ( ! [X0,X1] : (k5_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1) | k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.39/1.01    inference(definition_unfolding,[],[f64,f82,f82])).
% 1.39/1.01  
% 1.39/1.01  fof(f73,plain,(
% 1.39/1.01    v1_funct_1(sK3)),
% 1.39/1.01    inference(cnf_transformation,[],[f47])).
% 1.39/1.01  
% 1.39/1.01  fof(f17,axiom,(
% 1.39/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f34,plain,(
% 1.39/1.01    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.39/1.01    inference(ennf_transformation,[],[f17])).
% 1.39/1.01  
% 1.39/1.01  fof(f70,plain,(
% 1.39/1.01    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.39/1.01    inference(cnf_transformation,[],[f34])).
% 1.39/1.01  
% 1.39/1.01  fof(f77,plain,(
% 1.39/1.01    k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3)),
% 1.39/1.01    inference(cnf_transformation,[],[f47])).
% 1.39/1.01  
% 1.39/1.01  fof(f87,plain,(
% 1.39/1.01    k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3)),
% 1.39/1.01    inference(definition_unfolding,[],[f77,f82,f82])).
% 1.39/1.01  
% 1.39/1.01  fof(f11,axiom,(
% 1.39/1.01    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f27,plain,(
% 1.39/1.01    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 1.39/1.01    inference(ennf_transformation,[],[f11])).
% 1.39/1.01  
% 1.39/1.01  fof(f28,plain,(
% 1.39/1.01    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 1.39/1.01    inference(flattening,[],[f27])).
% 1.39/1.01  
% 1.39/1.01  fof(f62,plain,(
% 1.39/1.01    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f28])).
% 1.39/1.01  
% 1.39/1.01  fof(f18,axiom,(
% 1.39/1.01    ! [X0] : ~(! [X1] : ~(! [X2,X3,X4,X5,X6] : ((r2_hidden(X6,X1) & r2_hidden(X5,X6) & r2_hidden(X4,X5) & r2_hidden(X3,X4) & r2_hidden(X2,X3)) => r1_xboole_0(X2,X0)) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f22,plain,(
% 1.39/1.01    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 1.39/1.01    inference(pure_predicate_removal,[],[f18])).
% 1.39/1.01  
% 1.39/1.01  fof(f35,plain,(
% 1.39/1.01    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 1.39/1.01    inference(ennf_transformation,[],[f22])).
% 1.39/1.01  
% 1.39/1.01  fof(f44,plain,(
% 1.39/1.01    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 1.39/1.01    introduced(choice_axiom,[])).
% 1.39/1.01  
% 1.39/1.01  fof(f45,plain,(
% 1.39/1.01    ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0)),
% 1.39/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f35,f44])).
% 1.39/1.01  
% 1.39/1.01  fof(f71,plain,(
% 1.39/1.01    ( ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0) )),
% 1.39/1.01    inference(cnf_transformation,[],[f45])).
% 1.39/1.01  
% 1.39/1.01  fof(f19,axiom,(
% 1.39/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1)))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f36,plain,(
% 1.39/1.01    ! [X0,X1,X2,X3] : (((r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1) | ~r2_hidden(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 1.39/1.01    inference(ennf_transformation,[],[f19])).
% 1.39/1.01  
% 1.39/1.01  fof(f37,plain,(
% 1.39/1.01    ! [X0,X1,X2,X3] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 1.39/1.01    inference(flattening,[],[f36])).
% 1.39/1.01  
% 1.39/1.01  fof(f72,plain,(
% 1.39/1.01    ( ! [X2,X0,X3,X1] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f37])).
% 1.39/1.01  
% 1.39/1.01  fof(f74,plain,(
% 1.39/1.01    v1_funct_2(sK3,k1_tarski(sK1),sK2)),
% 1.39/1.01    inference(cnf_transformation,[],[f47])).
% 1.39/1.01  
% 1.39/1.01  fof(f89,plain,(
% 1.39/1.01    v1_funct_2(sK3,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)),
% 1.39/1.01    inference(definition_unfolding,[],[f74,f82])).
% 1.39/1.01  
% 1.39/1.01  fof(f76,plain,(
% 1.39/1.01    k1_xboole_0 != sK2),
% 1.39/1.01    inference(cnf_transformation,[],[f47])).
% 1.39/1.01  
% 1.39/1.01  fof(f10,axiom,(
% 1.39/1.01    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f61,plain,(
% 1.39/1.01    k1_xboole_0 = k2_relat_1(k1_xboole_0)),
% 1.39/1.01    inference(cnf_transformation,[],[f10])).
% 1.39/1.01  
% 1.39/1.01  fof(f1,axiom,(
% 1.39/1.01    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f48,plain,(
% 1.39/1.01    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f1])).
% 1.39/1.01  
% 1.39/1.01  fof(f14,axiom,(
% 1.39/1.01    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 1.39/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.39/1.01  
% 1.39/1.01  fof(f31,plain,(
% 1.39/1.01    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 1.39/1.01    inference(ennf_transformation,[],[f14])).
% 1.39/1.01  
% 1.39/1.01  fof(f67,plain,(
% 1.39/1.01    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 1.39/1.01    inference(cnf_transformation,[],[f31])).
% 1.39/1.01  
% 1.39/1.01  cnf(c_3,plain,
% 1.39/1.01      ( ~ r1_tarski(X0,k5_enumset1(X1,X1,X1,X1,X1,X1,X1))
% 1.39/1.01      | k5_enumset1(X1,X1,X1,X1,X1,X1,X1) = X0
% 1.39/1.01      | k1_xboole_0 = X0 ),
% 1.39/1.01      inference(cnf_transformation,[],[f85]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_5,plain,
% 1.39/1.01      ( ~ v4_relat_1(X0,X1) | r1_tarski(k1_relat_1(X0),X1) | ~ v1_relat_1(X0) ),
% 1.39/1.01      inference(cnf_transformation,[],[f58]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_15,plain,
% 1.39/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v4_relat_1(X0,X1) ),
% 1.39/1.01      inference(cnf_transformation,[],[f69]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_21,negated_conjecture,
% 1.39/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2))) ),
% 1.39/1.01      inference(cnf_transformation,[],[f88]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_265,plain,
% 1.39/1.01      ( v4_relat_1(X0,X1)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.39/1.01      | sK3 != X0 ),
% 1.39/1.01      inference(resolution_lifted,[status(thm)],[c_15,c_21]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_266,plain,
% 1.39/1.01      ( v4_relat_1(sK3,X0)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.39/1.01      inference(unflattening,[status(thm)],[c_265]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_333,plain,
% 1.39/1.01      ( r1_tarski(k1_relat_1(X0),X1)
% 1.39/1.01      | ~ v1_relat_1(X0)
% 1.39/1.01      | X2 != X1
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X2,X3))
% 1.39/1.01      | sK3 != X0 ),
% 1.39/1.01      inference(resolution_lifted,[status(thm)],[c_5,c_266]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_334,plain,
% 1.39/1.01      ( r1_tarski(k1_relat_1(sK3),X0)
% 1.39/1.01      | ~ v1_relat_1(sK3)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.39/1.01      inference(unflattening,[status(thm)],[c_333]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_14,plain,
% 1.39/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0) ),
% 1.39/1.01      inference(cnf_transformation,[],[f68]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_277,plain,
% 1.39/1.01      ( v1_relat_1(X0)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.39/1.01      | sK3 != X0 ),
% 1.39/1.01      inference(resolution_lifted,[status(thm)],[c_14,c_21]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_278,plain,
% 1.39/1.01      ( v1_relat_1(sK3)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.39/1.01      inference(unflattening,[status(thm)],[c_277]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_338,plain,
% 1.39/1.01      ( r1_tarski(k1_relat_1(sK3),X0)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.39/1.01      inference(global_propositional_subsumption,[status(thm)],[c_334,c_278]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_383,plain,
% 1.39/1.01      ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != X1
% 1.39/1.01      | k5_enumset1(X0,X0,X0,X0,X0,X0,X0) = X2
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X3))
% 1.39/1.01      | k1_relat_1(sK3) != X2
% 1.39/1.01      | k1_xboole_0 = X2 ),
% 1.39/1.01      inference(resolution_lifted,[status(thm)],[c_3,c_338]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_384,plain,
% 1.39/1.01      ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) = k1_relat_1(sK3)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(X0,X0,X0,X0,X0,X0,X0),X1))
% 1.39/1.01      | k1_xboole_0 = k1_relat_1(sK3) ),
% 1.39/1.01      inference(unflattening,[status(thm)],[c_383]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_10,plain,
% 1.39/1.01      ( ~ v1_funct_1(X0)
% 1.39/1.01      | ~ v1_relat_1(X0)
% 1.39/1.01      | k5_enumset1(X1,X1,X1,X1,X1,X1,X1) != k1_relat_1(X0)
% 1.39/1.01      | k5_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
% 1.39/1.01      inference(cnf_transformation,[],[f86]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_23,negated_conjecture,
% 1.39/1.01      ( v1_funct_1(sK3) ),
% 1.39/1.01      inference(cnf_transformation,[],[f73]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_311,plain,
% 1.39/1.01      ( ~ v1_relat_1(X0)
% 1.39/1.01      | k5_enumset1(X1,X1,X1,X1,X1,X1,X1) != k1_relat_1(X0)
% 1.39/1.01      | k5_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
% 1.39/1.01      | sK3 != X0 ),
% 1.39/1.01      inference(resolution_lifted,[status(thm)],[c_10,c_23]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_312,plain,
% 1.39/1.01      ( ~ v1_relat_1(sK3)
% 1.39/1.01      | k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
% 1.39/1.01      | k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
% 1.39/1.01      inference(unflattening,[status(thm)],[c_311]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_314,plain,
% 1.39/1.01      ( ~ v1_relat_1(sK3)
% 1.39/1.01      | k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) = k2_relat_1(sK3)
% 1.39/1.01      | k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) != k1_relat_1(sK3) ),
% 1.39/1.01      inference(instantiation,[status(thm)],[c_312]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_614,plain,( X0 = X0 ),theory(equality) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_908,plain,
% 1.39/1.01      ( k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) = k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) ),
% 1.39/1.01      inference(instantiation,[status(thm)],[c_614]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_910,plain,
% 1.39/1.01      ( v1_relat_1(sK3)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) ),
% 1.39/1.01      inference(instantiation,[status(thm)],[c_278]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_16,plain,
% 1.39/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.39/1.01      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 1.39/1.01      inference(cnf_transformation,[],[f70]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_256,plain,
% 1.39/1.01      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.39/1.01      | sK3 != X2 ),
% 1.39/1.01      inference(resolution_lifted,[status(thm)],[c_16,c_21]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_257,plain,
% 1.39/1.01      ( k2_relset_1(X0,X1,sK3) = k2_relat_1(sK3)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.39/1.01      inference(unflattening,[status(thm)],[c_256]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_933,plain,
% 1.39/1.01      ( k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3) = k2_relat_1(sK3) ),
% 1.39/1.01      inference(equality_resolution,[status(thm)],[c_257]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_19,negated_conjecture,
% 1.39/1.01      ( k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3) ),
% 1.39/1.01      inference(cnf_transformation,[],[f87]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_935,plain,
% 1.39/1.01      ( k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relat_1(sK3) ),
% 1.39/1.01      inference(demodulation,[status(thm)],[c_933,c_19]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_967,plain,
% 1.39/1.01      ( k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k1_relat_1(sK3)
% 1.39/1.01      | k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2))
% 1.39/1.01      | k1_xboole_0 = k1_relat_1(sK3) ),
% 1.39/1.01      inference(instantiation,[status(thm)],[c_384]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1057,plain,
% 1.39/1.01      ( k1_xboole_0 = k1_relat_1(sK3) ),
% 1.39/1.01      inference(global_propositional_subsumption,
% 1.39/1.01                [status(thm)],
% 1.39/1.01                [c_384,c_314,c_908,c_910,c_935,c_967]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_9,plain,
% 1.39/1.01      ( ~ v1_relat_1(X0) | k1_relat_1(X0) != k1_xboole_0 | k1_xboole_0 = X0 ),
% 1.39/1.01      inference(cnf_transformation,[],[f62]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_818,plain,
% 1.39/1.01      ( k1_relat_1(X0) != k1_xboole_0
% 1.39/1.01      | k1_xboole_0 = X0
% 1.39/1.01      | v1_relat_1(X0) != iProver_top ),
% 1.39/1.01      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1306,plain,
% 1.39/1.01      ( sK3 = k1_xboole_0 | v1_relat_1(sK3) != iProver_top ),
% 1.39/1.01      inference(superposition,[status(thm)],[c_1057,c_818]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_911,plain,
% 1.39/1.01      ( k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2))
% 1.39/1.01      | v1_relat_1(sK3) = iProver_top ),
% 1.39/1.01      inference(predicate_to_equality,[status(thm)],[c_910]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1313,plain,
% 1.39/1.01      ( sK3 = k1_xboole_0 ),
% 1.39/1.01      inference(global_propositional_subsumption,
% 1.39/1.01                [status(thm)],
% 1.39/1.01                [c_1306,c_908,c_911]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_17,plain,
% 1.39/1.01      ( r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0 ),
% 1.39/1.01      inference(cnf_transformation,[],[f71]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_816,plain,
% 1.39/1.01      ( k1_xboole_0 = X0 | r2_hidden(sK0(X0),X0) = iProver_top ),
% 1.39/1.01      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_18,plain,
% 1.39/1.01      ( ~ v1_funct_2(X0,X1,X2)
% 1.39/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.39/1.01      | ~ r2_hidden(X3,X1)
% 1.39/1.01      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.39/1.01      | ~ v1_funct_1(X0)
% 1.39/1.01      | k1_xboole_0 = X2 ),
% 1.39/1.01      inference(cnf_transformation,[],[f72]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_22,negated_conjecture,
% 1.39/1.01      ( v1_funct_2(sK3,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2) ),
% 1.39/1.01      inference(cnf_transformation,[],[f89]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_235,plain,
% 1.39/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.39/1.01      | ~ r2_hidden(X3,X1)
% 1.39/1.01      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.39/1.01      | ~ v1_funct_1(X0)
% 1.39/1.01      | k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) != X1
% 1.39/1.01      | sK2 != X2
% 1.39/1.01      | sK3 != X0
% 1.39/1.01      | k1_xboole_0 = X2 ),
% 1.39/1.01      inference(resolution_lifted,[status(thm)],[c_18,c_22]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_236,plain,
% 1.39/1.01      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2)))
% 1.39/1.01      | ~ r2_hidden(X0,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))
% 1.39/1.01      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3))
% 1.39/1.01      | ~ v1_funct_1(sK3)
% 1.39/1.01      | k1_xboole_0 = sK2 ),
% 1.39/1.01      inference(unflattening,[status(thm)],[c_235]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_20,negated_conjecture,
% 1.39/1.01      ( k1_xboole_0 != sK2 ),
% 1.39/1.01      inference(cnf_transformation,[],[f76]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_240,plain,
% 1.39/1.01      ( ~ r2_hidden(X0,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))
% 1.39/1.01      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3)) ),
% 1.39/1.01      inference(global_propositional_subsumption,
% 1.39/1.01                [status(thm)],
% 1.39/1.01                [c_236,c_23,c_21,c_20]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_815,plain,
% 1.39/1.01      ( r2_hidden(X0,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1)) != iProver_top
% 1.39/1.01      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1),sK2,sK3)) = iProver_top ),
% 1.39/1.01      inference(predicate_to_equality,[status(thm)],[c_240]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_990,plain,
% 1.39/1.01      ( r2_hidden(X0,k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1)) != iProver_top
% 1.39/1.01      | r2_hidden(k1_funct_1(sK3,X0),k2_relat_1(sK3)) = iProver_top ),
% 1.39/1.01      inference(light_normalisation,[status(thm)],[c_815,c_933]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1190,plain,
% 1.39/1.01      ( k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k1_xboole_0
% 1.39/1.01      | r2_hidden(k1_funct_1(sK3,sK0(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))),k2_relat_1(sK3)) = iProver_top ),
% 1.39/1.01      inference(superposition,[status(thm)],[c_816,c_990]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_813,plain,
% 1.39/1.01      ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
% 1.39/1.01      | k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
% 1.39/1.01      | v1_relat_1(sK3) != iProver_top ),
% 1.39/1.01      inference(predicate_to_equality,[status(thm)],[c_312]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_997,plain,
% 1.39/1.01      ( k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
% 1.39/1.01      | k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3) ),
% 1.39/1.01      inference(global_propositional_subsumption,
% 1.39/1.01                [status(thm)],
% 1.39/1.01                [c_813,c_312,c_908,c_910]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_998,plain,
% 1.39/1.01      ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
% 1.39/1.01      | k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
% 1.39/1.01      inference(renaming,[status(thm)],[c_997]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1060,plain,
% 1.39/1.01      ( k5_enumset1(X0,X0,X0,X0,X0,X0,X0) != k1_xboole_0
% 1.39/1.01      | k5_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
% 1.39/1.01      inference(demodulation,[status(thm)],[c_1057,c_998]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1061,plain,
% 1.39/1.01      ( k5_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) = k2_relat_1(sK3)
% 1.39/1.01      | k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1) != k1_xboole_0 ),
% 1.39/1.01      inference(instantiation,[status(thm)],[c_1060]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1251,plain,
% 1.39/1.01      ( r2_hidden(k1_funct_1(sK3,sK0(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))),k2_relat_1(sK3)) = iProver_top ),
% 1.39/1.01      inference(global_propositional_subsumption,
% 1.39/1.01                [status(thm)],
% 1.39/1.01                [c_1190,c_935,c_1061]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1316,plain,
% 1.39/1.01      ( r2_hidden(k1_funct_1(k1_xboole_0,sK0(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))),k2_relat_1(k1_xboole_0)) = iProver_top ),
% 1.39/1.01      inference(demodulation,[status(thm)],[c_1313,c_1251]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_6,plain,
% 1.39/1.01      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 1.39/1.01      inference(cnf_transformation,[],[f61]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1344,plain,
% 1.39/1.01      ( r2_hidden(k1_funct_1(k1_xboole_0,sK0(k5_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1))),k1_xboole_0) = iProver_top ),
% 1.39/1.01      inference(light_normalisation,[status(thm)],[c_1316,c_6]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_0,plain,
% 1.39/1.01      ( r1_tarski(k1_xboole_0,X0) ),
% 1.39/1.01      inference(cnf_transformation,[],[f48]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_13,plain,
% 1.39/1.01      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 1.39/1.01      inference(cnf_transformation,[],[f67]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_356,plain,
% 1.39/1.01      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 1.39/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_13]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_357,plain,
% 1.39/1.01      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 1.39/1.01      inference(unflattening,[status(thm)],[c_356]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_812,plain,
% 1.39/1.01      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 1.39/1.01      inference(predicate_to_equality,[status(thm)],[c_357]) ).
% 1.39/1.01  
% 1.39/1.01  cnf(c_1487,plain,
% 1.39/1.01      ( $false ),
% 1.39/1.01      inference(forward_subsumption_resolution,[status(thm)],[c_1344,c_812]) ).
% 1.39/1.01  
% 1.39/1.01  
% 1.39/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 1.39/1.01  
% 1.39/1.01  ------                               Statistics
% 1.39/1.01  
% 1.39/1.01  ------ General
% 1.39/1.01  
% 1.39/1.01  abstr_ref_over_cycles:                  0
% 1.39/1.01  abstr_ref_under_cycles:                 0
% 1.39/1.01  gc_basic_clause_elim:                   0
% 1.39/1.01  forced_gc_time:                         0
% 1.39/1.01  parsing_time:                           0.014
% 1.39/1.01  unif_index_cands_time:                  0.
% 1.39/1.01  unif_index_add_time:                    0.
% 1.39/1.01  orderings_time:                         0.
% 1.39/1.01  out_proof_time:                         0.016
% 1.39/1.01  total_time:                             0.103
% 1.39/1.01  num_of_symbols:                         50
% 1.39/1.01  num_of_terms:                           1248
% 1.39/1.01  
% 1.39/1.01  ------ Preprocessing
% 1.39/1.01  
% 1.39/1.01  num_of_splits:                          0
% 1.39/1.01  num_of_split_atoms:                     0
% 1.39/1.01  num_of_reused_defs:                     0
% 1.39/1.01  num_eq_ax_congr_red:                    5
% 1.39/1.01  num_of_sem_filtered_clauses:            1
% 1.39/1.01  num_of_subtypes:                        0
% 1.39/1.01  monotx_restored_types:                  0
% 1.39/1.01  sat_num_of_epr_types:                   0
% 1.39/1.01  sat_num_of_non_cyclic_types:            0
% 1.39/1.01  sat_guarded_non_collapsed_types:        0
% 1.39/1.01  num_pure_diseq_elim:                    0
% 1.39/1.01  simp_replaced_by:                       0
% 1.39/1.01  res_preprocessed:                       98
% 1.39/1.01  prep_upred:                             0
% 1.39/1.01  prep_unflattend:                        32
% 1.39/1.01  smt_new_axioms:                         0
% 1.39/1.01  pred_elim_cands:                        2
% 1.39/1.01  pred_elim:                              5
% 1.39/1.01  pred_elim_cl:                           7
% 1.39/1.01  pred_elim_cycles:                       7
% 1.39/1.01  merged_defs:                            0
% 1.39/1.01  merged_defs_ncl:                        0
% 1.39/1.01  bin_hyper_res:                          0
% 1.39/1.01  prep_cycles:                            4
% 1.39/1.01  pred_elim_time:                         0.007
% 1.39/1.01  splitting_time:                         0.
% 1.39/1.01  sem_filter_time:                        0.
% 1.39/1.01  monotx_time:                            0.
% 1.39/1.01  subtype_inf_time:                       0.
% 1.39/1.01  
% 1.39/1.01  ------ Problem properties
% 1.39/1.01  
% 1.39/1.01  clauses:                                17
% 1.39/1.01  conjectures:                            2
% 1.39/1.01  epr:                                    3
% 1.39/1.01  horn:                                   15
% 1.39/1.01  ground:                                 5
% 1.39/1.01  unary:                                  7
% 1.39/1.01  binary:                                 6
% 1.39/1.01  lits:                                   31
% 1.39/1.01  lits_eq:                                20
% 1.39/1.01  fd_pure:                                0
% 1.39/1.01  fd_pseudo:                              0
% 1.39/1.01  fd_cond:                                3
% 1.39/1.01  fd_pseudo_cond:                         0
% 1.39/1.01  ac_symbols:                             0
% 1.39/1.01  
% 1.39/1.01  ------ Propositional Solver
% 1.39/1.01  
% 1.39/1.01  prop_solver_calls:                      26
% 1.39/1.01  prop_fast_solver_calls:                 532
% 1.39/1.01  smt_solver_calls:                       0
% 1.39/1.01  smt_fast_solver_calls:                  0
% 1.39/1.01  prop_num_of_clauses:                    437
% 1.39/1.01  prop_preprocess_simplified:             2608
% 1.39/1.01  prop_fo_subsumed:                       12
% 1.39/1.01  prop_solver_time:                       0.
% 1.39/1.01  smt_solver_time:                        0.
% 1.39/1.01  smt_fast_solver_time:                   0.
% 1.39/1.01  prop_fast_solver_time:                  0.
% 1.39/1.01  prop_unsat_core_time:                   0.
% 1.39/1.01  
% 1.39/1.01  ------ QBF
% 1.39/1.01  
% 1.39/1.01  qbf_q_res:                              0
% 1.39/1.01  qbf_num_tautologies:                    0
% 1.39/1.01  qbf_prep_cycles:                        0
% 1.39/1.01  
% 1.39/1.01  ------ BMC1
% 1.39/1.01  
% 1.39/1.01  bmc1_current_bound:                     -1
% 1.39/1.01  bmc1_last_solved_bound:                 -1
% 1.39/1.01  bmc1_unsat_core_size:                   -1
% 1.39/1.01  bmc1_unsat_core_parents_size:           -1
% 1.39/1.01  bmc1_merge_next_fun:                    0
% 1.39/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.39/1.01  
% 1.39/1.01  ------ Instantiation
% 1.39/1.01  
% 1.39/1.01  inst_num_of_clauses:                    156
% 1.39/1.01  inst_num_in_passive:                    12
% 1.39/1.01  inst_num_in_active:                     112
% 1.39/1.01  inst_num_in_unprocessed:                33
% 1.39/1.01  inst_num_of_loops:                      120
% 1.39/1.01  inst_num_of_learning_restarts:          0
% 1.39/1.01  inst_num_moves_active_passive:          6
% 1.39/1.01  inst_lit_activity:                      0
% 1.39/1.01  inst_lit_activity_moves:                0
% 1.39/1.01  inst_num_tautologies:                   0
% 1.39/1.01  inst_num_prop_implied:                  0
% 1.39/1.01  inst_num_existing_simplified:           0
% 1.39/1.01  inst_num_eq_res_simplified:             0
% 1.39/1.01  inst_num_child_elim:                    0
% 1.39/1.01  inst_num_of_dismatching_blockings:      22
% 1.39/1.01  inst_num_of_non_proper_insts:           141
% 1.39/1.01  inst_num_of_duplicates:                 0
% 1.39/1.01  inst_inst_num_from_inst_to_res:         0
% 1.39/1.01  inst_dismatching_checking_time:         0.
% 1.39/1.01  
% 1.39/1.01  ------ Resolution
% 1.39/1.01  
% 1.39/1.01  res_num_of_clauses:                     0
% 1.39/1.01  res_num_in_passive:                     0
% 1.39/1.01  res_num_in_active:                      0
% 1.39/1.01  res_num_of_loops:                       102
% 1.39/1.01  res_forward_subset_subsumed:            34
% 1.39/1.01  res_backward_subset_subsumed:           4
% 1.39/1.01  res_forward_subsumed:                   1
% 1.39/1.01  res_backward_subsumed:                  0
% 1.39/1.01  res_forward_subsumption_resolution:     0
% 1.39/1.01  res_backward_subsumption_resolution:    0
% 1.39/1.01  res_clause_to_clause_subsumption:       26
% 1.39/1.01  res_orphan_elimination:                 0
% 1.39/1.01  res_tautology_del:                      29
% 1.39/1.01  res_num_eq_res_simplified:              0
% 1.39/1.01  res_num_sel_changes:                    0
% 1.39/1.01  res_moves_from_active_to_pass:          0
% 1.39/1.01  
% 1.39/1.01  ------ Superposition
% 1.39/1.01  
% 1.39/1.01  sup_time_total:                         0.
% 1.39/1.01  sup_time_generating:                    0.
% 1.39/1.01  sup_time_sim_full:                      0.
% 1.39/1.01  sup_time_sim_immed:                     0.
% 1.39/1.01  
% 1.39/1.01  sup_num_of_clauses:                     17
% 1.39/1.01  sup_num_in_active:                      12
% 1.39/1.01  sup_num_in_passive:                     5
% 1.39/1.01  sup_num_of_loops:                       22
% 1.39/1.01  sup_fw_superposition:                   4
% 1.39/1.01  sup_bw_superposition:                   1
% 1.39/1.01  sup_immediate_simplified:               7
% 1.39/1.01  sup_given_eliminated:                   0
% 1.39/1.01  comparisons_done:                       0
% 1.39/1.01  comparisons_avoided:                    0
% 1.39/1.01  
% 1.39/1.01  ------ Simplifications
% 1.39/1.01  
% 1.39/1.01  
% 1.39/1.01  sim_fw_subset_subsumed:                 1
% 1.39/1.01  sim_bw_subset_subsumed:                 0
% 1.39/1.01  sim_fw_subsumed:                        0
% 1.39/1.01  sim_bw_subsumed:                        0
% 1.39/1.01  sim_fw_subsumption_res:                 1
% 1.39/1.01  sim_bw_subsumption_res:                 0
% 1.39/1.01  sim_tautology_del:                      0
% 1.39/1.01  sim_eq_tautology_del:                   2
% 1.39/1.01  sim_eq_res_simp:                        0
% 1.39/1.01  sim_fw_demodulated:                     0
% 1.39/1.01  sim_bw_demodulated:                     10
% 1.39/1.01  sim_light_normalised:                   9
% 1.39/1.01  sim_joinable_taut:                      0
% 1.39/1.01  sim_joinable_simp:                      0
% 1.39/1.01  sim_ac_normalised:                      0
% 1.39/1.01  sim_smt_subsumption:                    0
% 1.39/1.01  
%------------------------------------------------------------------------------
