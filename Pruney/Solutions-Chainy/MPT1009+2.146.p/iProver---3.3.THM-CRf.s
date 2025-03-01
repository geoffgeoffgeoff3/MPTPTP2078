%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:05:57 EST 2020

% Result     : Theorem 1.62s
% Output     : CNFRefutation 1.62s
% Verified   : 
% Statistics : Number of formulae       :  131 ( 534 expanded)
%              Number of clauses        :   74 ( 152 expanded)
%              Number of leaves         :   16 ( 124 expanded)
%              Depth                    :   22
%              Number of atoms          :  329 (1444 expanded)
%              Number of equality atoms :  177 ( 586 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f10])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => k7_relat_1(X1,X0) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f21,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f20])).

fof(f41,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f14,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X3,k1_tarski(X0),X1)
        & v1_funct_1(X3) )
     => ( k1_xboole_0 != X1
       => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
          & v1_funct_2(X3,k1_tarski(X0),X1)
          & v1_funct_1(X3) )
       => ( k1_xboole_0 != X1
         => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f29,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))
      & k1_xboole_0 != X1
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X3,k1_tarski(X0),X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f30,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))
      & k1_xboole_0 != X1
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X3,k1_tarski(X0),X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f29])).

fof(f32,plain,
    ( ? [X0,X1,X2,X3] :
        ( ~ r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))
        & k1_xboole_0 != X1
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X3,k1_tarski(X0),X1)
        & v1_funct_1(X3) )
   => ( ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0)))
      & k1_xboole_0 != sK1
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)))
      & v1_funct_2(sK3,k1_tarski(sK0),sK1)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0)))
    & k1_xboole_0 != sK1
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)))
    & v1_funct_2(sK3,k1_tarski(sK0),sK1)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f30,f32])).

fof(f54,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))) ),
    inference(cnf_transformation,[],[f33])).

fof(f1,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f2,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f3])).

fof(f57,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f35,f36])).

fof(f58,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f34,f57])).

fof(f61,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))) ),
    inference(definition_unfolding,[],[f54,f58])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f37,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f53,plain,(
    v1_funct_2(sK3,k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f33])).

fof(f62,plain,(
    v1_funct_2(sK3,k2_enumset1(sK0,sK0,sK0,sK0),sK1) ),
    inference(definition_unfolding,[],[f53,f58])).

fof(f13,axiom,(
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

fof(f27,plain,(
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
    inference(ennf_transformation,[],[f13])).

fof(f28,plain,(
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
    inference(flattening,[],[f27])).

fof(f31,plain,(
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
    inference(nnf_transformation,[],[f28])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f55,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f33])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f40,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k9_relat_1(X1,X0),k9_relat_1(X1,k1_relat_1(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_tarski(k9_relat_1(X1,X0),k9_relat_1(X1,k1_relat_1(X1)))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r1_tarski(k9_relat_1(X1,X0),k9_relat_1(X1,k1_relat_1(X1)))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( k1_tarski(X0) = k1_relat_1(X1)
       => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f23,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f22])).

fof(f42,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f59,plain,(
    ! [X0,X1] :
      ( k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f42,f58,f58])).

fof(f52,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f33])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f45,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f56,plain,(
    ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) ),
    inference(cnf_transformation,[],[f33])).

fof(f60,plain,(
    ~ r1_tarski(k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) ),
    inference(definition_unfolding,[],[f56,f58,f58])).

cnf(c_6,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_4,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_238,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(resolution,[status(thm)],[c_6,c_4])).

cnf(c_17,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_290,plain,
    ( ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_238,c_17])).

cnf(c_291,plain,
    ( ~ v1_relat_1(sK3)
    | k7_relat_1(sK3,X0) = sK3
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_290])).

cnf(c_604,plain,
    ( ~ v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
    | k7_relat_1(sK3,X0_49) = sK3 ),
    inference(subtyping,[status(esa)],[c_291])).

cnf(c_790,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
    | k7_relat_1(sK3,X0_49) = sK3
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_604])).

cnf(c_615,plain,
    ( X0_51 = X0_51 ),
    theory(equality)).

cnf(c_872,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) = k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
    inference(instantiation,[status(thm)],[c_615])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_275,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(X1)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(X0)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_17])).

cnf(c_276,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(X0) ),
    inference(unflattening,[status(thm)],[c_275])).

cnf(c_605,plain,
    ( ~ v1_relat_1(X0_49)
    | v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(X0_49) ),
    inference(subtyping,[status(esa)],[c_276])).

cnf(c_867,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(X0_49,X1_49))
    | v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49)) ),
    inference(instantiation,[status(thm)],[c_605])).

cnf(c_926,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
    | v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
    inference(instantiation,[status(thm)],[c_867])).

cnf(c_1,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_611,plain,
    ( v1_relat_1(k2_zfmisc_1(X0_49,X1_49)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_962,plain,
    ( v1_relat_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
    inference(instantiation,[status(thm)],[c_611])).

cnf(c_1321,plain,
    ( k7_relat_1(sK3,X0_49) = sK3
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_790,c_604,c_872,c_926,c_962])).

cnf(c_1322,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
    | k7_relat_1(sK3,X0_49) = sK3 ),
    inference(renaming,[status(thm)],[c_1321])).

cnf(c_18,negated_conjecture,
    ( v1_funct_2(sK3,k2_enumset1(sK0,sK0,sK0,sK0),sK1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_14,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_305,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | k1_relset_1(X1,X2,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_17])).

cnf(c_306,plain,
    ( ~ v1_funct_2(sK3,X0,X1)
    | k1_relset_1(X0,X1,sK3) = X0
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_305])).

cnf(c_472,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) != X0
    | k1_relset_1(X0,X1,sK3) = X0
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != sK3
    | sK1 != X1
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_306])).

cnf(c_473,plain,
    ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_472])).

cnf(c_16,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f55])).

cnf(c_474,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
    | k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_473,c_16])).

cnf(c_475,plain,
    ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
    inference(renaming,[status(thm)],[c_474])).

cnf(c_531,plain,
    ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0) ),
    inference(equality_resolution_simp,[status(thm)],[c_475])).

cnf(c_599,plain,
    ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0) ),
    inference(subtyping,[status(esa)],[c_531])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_350,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_17])).

cnf(c_351,plain,
    ( k1_relset_1(X0,X1,sK3) = k1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_350])).

cnf(c_602,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
    | k1_relset_1(X0_49,X1_49,sK3) = k1_relat_1(sK3) ),
    inference(subtyping,[status(esa)],[c_351])).

cnf(c_866,plain,
    ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k1_relat_1(sK3) ),
    inference(equality_resolution,[status(thm)],[c_602])).

cnf(c_972,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = k1_relat_1(sK3) ),
    inference(light_normalisation,[status(thm)],[c_599,c_866])).

cnf(c_1324,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
    | k7_relat_1(sK3,X0_49) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_1322,c_972])).

cnf(c_1328,plain,
    ( k7_relat_1(sK3,k1_relat_1(sK3)) = sK3 ),
    inference(equality_resolution,[status(thm)],[c_1324])).

cnf(c_789,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(X0_49)
    | v1_relat_1(X0_49) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_605])).

cnf(c_927,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
    | v1_relat_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_926])).

cnf(c_963,plain,
    ( v1_relat_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_962])).

cnf(c_1235,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_789,c_872,c_927,c_963])).

cnf(c_3,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_609,plain,
    ( ~ v1_relat_1(X0_49)
    | k2_relat_1(k7_relat_1(X0_49,X1_49)) = k9_relat_1(X0_49,X1_49) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_786,plain,
    ( k2_relat_1(k7_relat_1(X0_49,X1_49)) = k9_relat_1(X0_49,X1_49)
    | v1_relat_1(X0_49) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_609])).

cnf(c_1240,plain,
    ( k2_relat_1(k7_relat_1(sK3,X0_49)) = k9_relat_1(sK3,X0_49) ),
    inference(superposition,[status(thm)],[c_1235,c_786])).

cnf(c_1582,plain,
    ( k9_relat_1(sK3,k1_relat_1(sK3)) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1328,c_1240])).

cnf(c_2,plain,
    ( r1_tarski(k9_relat_1(X0,X1),k9_relat_1(X0,k1_relat_1(X0)))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_610,plain,
    ( r1_tarski(k9_relat_1(X0_49,X1_49),k9_relat_1(X0_49,k1_relat_1(X0_49)))
    | ~ v1_relat_1(X0_49) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_785,plain,
    ( r1_tarski(k9_relat_1(X0_49,X1_49),k9_relat_1(X0_49,k1_relat_1(X0_49))) = iProver_top
    | v1_relat_1(X0_49) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_610])).

cnf(c_1672,plain,
    ( r1_tarski(k9_relat_1(sK3,X0_49),k2_relat_1(sK3)) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1582,c_785])).

cnf(c_1791,plain,
    ( r1_tarski(k9_relat_1(sK3,X0_49),k2_relat_1(sK3)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1672,c_872,c_927,c_963])).

cnf(c_5,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
    | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_19,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_256,plain,
    ( ~ v1_relat_1(X0)
    | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
    | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_19])).

cnf(c_257,plain,
    ( ~ v1_relat_1(sK3)
    | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_256])).

cnf(c_606,plain,
    ( ~ v1_relat_1(sK3)
    | k2_enumset1(X0_50,X0_50,X0_50,X0_50) != k1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50)) = k2_relat_1(sK3) ),
    inference(subtyping,[status(esa)],[c_257])).

cnf(c_788,plain,
    ( k2_enumset1(X0_50,X0_50,X0_50,X0_50) != k1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50)) = k2_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_606])).

cnf(c_1330,plain,
    ( k2_enumset1(k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50)) = k2_relat_1(sK3)
    | k2_enumset1(X0_50,X0_50,X0_50,X0_50) != k1_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_788,c_606,c_872,c_926,c_962])).

cnf(c_1331,plain,
    ( k2_enumset1(X0_50,X0_50,X0_50,X0_50) != k1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50)) = k2_relat_1(sK3) ),
    inference(renaming,[status(thm)],[c_1330])).

cnf(c_1335,plain,
    ( k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_972,c_1331])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_341,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_17])).

cnf(c_342,plain,
    ( k7_relset_1(X0,X1,sK3,X2) = k9_relat_1(sK3,X2)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_341])).

cnf(c_603,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
    | k7_relset_1(X0_49,X1_49,sK3,X2_49) = k9_relat_1(sK3,X2_49) ),
    inference(subtyping,[status(esa)],[c_342])).

cnf(c_895,plain,
    ( k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,X0_49) = k9_relat_1(sK3,X0_49) ),
    inference(equality_resolution,[status(thm)],[c_603])).

cnf(c_15,negated_conjecture,
    ( ~ r1_tarski(k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_608,negated_conjecture,
    ( ~ r1_tarski(k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_787,plain,
    ( r1_tarski(k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_608])).

cnf(c_943,plain,
    ( r1_tarski(k9_relat_1(sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_895,c_787])).

cnf(c_1496,plain,
    ( r1_tarski(k9_relat_1(sK3,sK2),k2_relat_1(sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1335,c_943])).

cnf(c_1799,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_1791,c_1496])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 20:42:42 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.62/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.62/0.99  
% 1.62/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.62/0.99  
% 1.62/0.99  ------  iProver source info
% 1.62/0.99  
% 1.62/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.62/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.62/0.99  git: non_committed_changes: false
% 1.62/0.99  git: last_make_outside_of_git: false
% 1.62/0.99  
% 1.62/0.99  ------ 
% 1.62/0.99  
% 1.62/0.99  ------ Input Options
% 1.62/0.99  
% 1.62/0.99  --out_options                           all
% 1.62/0.99  --tptp_safe_out                         true
% 1.62/0.99  --problem_path                          ""
% 1.62/0.99  --include_path                          ""
% 1.62/0.99  --clausifier                            res/vclausify_rel
% 1.62/0.99  --clausifier_options                    --mode clausify
% 1.62/0.99  --stdin                                 false
% 1.62/0.99  --stats_out                             all
% 1.62/0.99  
% 1.62/0.99  ------ General Options
% 1.62/0.99  
% 1.62/0.99  --fof                                   false
% 1.62/0.99  --time_out_real                         305.
% 1.62/0.99  --time_out_virtual                      -1.
% 1.62/0.99  --symbol_type_check                     false
% 1.62/0.99  --clausify_out                          false
% 1.62/0.99  --sig_cnt_out                           false
% 1.62/0.99  --trig_cnt_out                          false
% 1.62/0.99  --trig_cnt_out_tolerance                1.
% 1.62/0.99  --trig_cnt_out_sk_spl                   false
% 1.62/0.99  --abstr_cl_out                          false
% 1.62/0.99  
% 1.62/0.99  ------ Global Options
% 1.62/0.99  
% 1.62/0.99  --schedule                              default
% 1.62/0.99  --add_important_lit                     false
% 1.62/0.99  --prop_solver_per_cl                    1000
% 1.62/0.99  --min_unsat_core                        false
% 1.62/0.99  --soft_assumptions                      false
% 1.62/0.99  --soft_lemma_size                       3
% 1.62/0.99  --prop_impl_unit_size                   0
% 1.62/0.99  --prop_impl_unit                        []
% 1.62/0.99  --share_sel_clauses                     true
% 1.62/0.99  --reset_solvers                         false
% 1.62/0.99  --bc_imp_inh                            [conj_cone]
% 1.62/0.99  --conj_cone_tolerance                   3.
% 1.62/0.99  --extra_neg_conj                        none
% 1.62/0.99  --large_theory_mode                     true
% 1.62/0.99  --prolific_symb_bound                   200
% 1.62/0.99  --lt_threshold                          2000
% 1.62/0.99  --clause_weak_htbl                      true
% 1.62/0.99  --gc_record_bc_elim                     false
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing Options
% 1.62/0.99  
% 1.62/0.99  --preprocessing_flag                    true
% 1.62/0.99  --time_out_prep_mult                    0.1
% 1.62/0.99  --splitting_mode                        input
% 1.62/0.99  --splitting_grd                         true
% 1.62/0.99  --splitting_cvd                         false
% 1.62/0.99  --splitting_cvd_svl                     false
% 1.62/0.99  --splitting_nvd                         32
% 1.62/0.99  --sub_typing                            true
% 1.62/0.99  --prep_gs_sim                           true
% 1.62/0.99  --prep_unflatten                        true
% 1.62/0.99  --prep_res_sim                          true
% 1.62/0.99  --prep_upred                            true
% 1.62/0.99  --prep_sem_filter                       exhaustive
% 1.62/0.99  --prep_sem_filter_out                   false
% 1.62/0.99  --pred_elim                             true
% 1.62/0.99  --res_sim_input                         true
% 1.62/0.99  --eq_ax_congr_red                       true
% 1.62/0.99  --pure_diseq_elim                       true
% 1.62/0.99  --brand_transform                       false
% 1.62/0.99  --non_eq_to_eq                          false
% 1.62/0.99  --prep_def_merge                        true
% 1.62/0.99  --prep_def_merge_prop_impl              false
% 1.62/0.99  --prep_def_merge_mbd                    true
% 1.62/0.99  --prep_def_merge_tr_red                 false
% 1.62/0.99  --prep_def_merge_tr_cl                  false
% 1.62/0.99  --smt_preprocessing                     true
% 1.62/0.99  --smt_ac_axioms                         fast
% 1.62/0.99  --preprocessed_out                      false
% 1.62/0.99  --preprocessed_stats                    false
% 1.62/0.99  
% 1.62/0.99  ------ Abstraction refinement Options
% 1.62/0.99  
% 1.62/0.99  --abstr_ref                             []
% 1.62/0.99  --abstr_ref_prep                        false
% 1.62/0.99  --abstr_ref_until_sat                   false
% 1.62/0.99  --abstr_ref_sig_restrict                funpre
% 1.62/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.62/0.99  --abstr_ref_under                       []
% 1.62/0.99  
% 1.62/0.99  ------ SAT Options
% 1.62/0.99  
% 1.62/0.99  --sat_mode                              false
% 1.62/0.99  --sat_fm_restart_options                ""
% 1.62/0.99  --sat_gr_def                            false
% 1.62/0.99  --sat_epr_types                         true
% 1.62/0.99  --sat_non_cyclic_types                  false
% 1.62/0.99  --sat_finite_models                     false
% 1.62/0.99  --sat_fm_lemmas                         false
% 1.62/0.99  --sat_fm_prep                           false
% 1.62/0.99  --sat_fm_uc_incr                        true
% 1.62/0.99  --sat_out_model                         small
% 1.62/0.99  --sat_out_clauses                       false
% 1.62/0.99  
% 1.62/0.99  ------ QBF Options
% 1.62/0.99  
% 1.62/0.99  --qbf_mode                              false
% 1.62/0.99  --qbf_elim_univ                         false
% 1.62/0.99  --qbf_dom_inst                          none
% 1.62/0.99  --qbf_dom_pre_inst                      false
% 1.62/0.99  --qbf_sk_in                             false
% 1.62/0.99  --qbf_pred_elim                         true
% 1.62/0.99  --qbf_split                             512
% 1.62/0.99  
% 1.62/0.99  ------ BMC1 Options
% 1.62/0.99  
% 1.62/0.99  --bmc1_incremental                      false
% 1.62/0.99  --bmc1_axioms                           reachable_all
% 1.62/0.99  --bmc1_min_bound                        0
% 1.62/0.99  --bmc1_max_bound                        -1
% 1.62/0.99  --bmc1_max_bound_default                -1
% 1.62/0.99  --bmc1_symbol_reachability              true
% 1.62/0.99  --bmc1_property_lemmas                  false
% 1.62/0.99  --bmc1_k_induction                      false
% 1.62/0.99  --bmc1_non_equiv_states                 false
% 1.62/0.99  --bmc1_deadlock                         false
% 1.62/0.99  --bmc1_ucm                              false
% 1.62/0.99  --bmc1_add_unsat_core                   none
% 1.62/0.99  --bmc1_unsat_core_children              false
% 1.62/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.62/0.99  --bmc1_out_stat                         full
% 1.62/0.99  --bmc1_ground_init                      false
% 1.62/0.99  --bmc1_pre_inst_next_state              false
% 1.62/0.99  --bmc1_pre_inst_state                   false
% 1.62/0.99  --bmc1_pre_inst_reach_state             false
% 1.62/0.99  --bmc1_out_unsat_core                   false
% 1.62/0.99  --bmc1_aig_witness_out                  false
% 1.62/0.99  --bmc1_verbose                          false
% 1.62/0.99  --bmc1_dump_clauses_tptp                false
% 1.62/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.62/0.99  --bmc1_dump_file                        -
% 1.62/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.62/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.62/0.99  --bmc1_ucm_extend_mode                  1
% 1.62/0.99  --bmc1_ucm_init_mode                    2
% 1.62/0.99  --bmc1_ucm_cone_mode                    none
% 1.62/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.62/0.99  --bmc1_ucm_relax_model                  4
% 1.62/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.62/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.62/0.99  --bmc1_ucm_layered_model                none
% 1.62/0.99  --bmc1_ucm_max_lemma_size               10
% 1.62/0.99  
% 1.62/0.99  ------ AIG Options
% 1.62/0.99  
% 1.62/0.99  --aig_mode                              false
% 1.62/0.99  
% 1.62/0.99  ------ Instantiation Options
% 1.62/0.99  
% 1.62/0.99  --instantiation_flag                    true
% 1.62/0.99  --inst_sos_flag                         false
% 1.62/0.99  --inst_sos_phase                        true
% 1.62/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.62/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.62/0.99  --inst_lit_sel_side                     num_symb
% 1.62/0.99  --inst_solver_per_active                1400
% 1.62/0.99  --inst_solver_calls_frac                1.
% 1.62/0.99  --inst_passive_queue_type               priority_queues
% 1.62/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.62/0.99  --inst_passive_queues_freq              [25;2]
% 1.62/0.99  --inst_dismatching                      true
% 1.62/0.99  --inst_eager_unprocessed_to_passive     true
% 1.62/0.99  --inst_prop_sim_given                   true
% 1.62/0.99  --inst_prop_sim_new                     false
% 1.62/0.99  --inst_subs_new                         false
% 1.62/0.99  --inst_eq_res_simp                      false
% 1.62/0.99  --inst_subs_given                       false
% 1.62/0.99  --inst_orphan_elimination               true
% 1.62/0.99  --inst_learning_loop_flag               true
% 1.62/0.99  --inst_learning_start                   3000
% 1.62/0.99  --inst_learning_factor                  2
% 1.62/0.99  --inst_start_prop_sim_after_learn       3
% 1.62/0.99  --inst_sel_renew                        solver
% 1.62/0.99  --inst_lit_activity_flag                true
% 1.62/0.99  --inst_restr_to_given                   false
% 1.62/0.99  --inst_activity_threshold               500
% 1.62/0.99  --inst_out_proof                        true
% 1.62/0.99  
% 1.62/0.99  ------ Resolution Options
% 1.62/0.99  
% 1.62/0.99  --resolution_flag                       true
% 1.62/0.99  --res_lit_sel                           adaptive
% 1.62/0.99  --res_lit_sel_side                      none
% 1.62/0.99  --res_ordering                          kbo
% 1.62/0.99  --res_to_prop_solver                    active
% 1.62/0.99  --res_prop_simpl_new                    false
% 1.62/0.99  --res_prop_simpl_given                  true
% 1.62/0.99  --res_passive_queue_type                priority_queues
% 1.62/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.62/0.99  --res_passive_queues_freq               [15;5]
% 1.62/0.99  --res_forward_subs                      full
% 1.62/0.99  --res_backward_subs                     full
% 1.62/0.99  --res_forward_subs_resolution           true
% 1.62/0.99  --res_backward_subs_resolution          true
% 1.62/0.99  --res_orphan_elimination                true
% 1.62/0.99  --res_time_limit                        2.
% 1.62/0.99  --res_out_proof                         true
% 1.62/0.99  
% 1.62/0.99  ------ Superposition Options
% 1.62/0.99  
% 1.62/0.99  --superposition_flag                    true
% 1.62/0.99  --sup_passive_queue_type                priority_queues
% 1.62/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.62/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.62/0.99  --demod_completeness_check              fast
% 1.62/0.99  --demod_use_ground                      true
% 1.62/0.99  --sup_to_prop_solver                    passive
% 1.62/0.99  --sup_prop_simpl_new                    true
% 1.62/0.99  --sup_prop_simpl_given                  true
% 1.62/0.99  --sup_fun_splitting                     false
% 1.62/0.99  --sup_smt_interval                      50000
% 1.62/0.99  
% 1.62/0.99  ------ Superposition Simplification Setup
% 1.62/0.99  
% 1.62/0.99  --sup_indices_passive                   []
% 1.62/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.62/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_full_bw                           [BwDemod]
% 1.62/0.99  --sup_immed_triv                        [TrivRules]
% 1.62/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.62/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_immed_bw_main                     []
% 1.62/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.62/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.62/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.62/0.99  
% 1.62/0.99  ------ Combination Options
% 1.62/0.99  
% 1.62/0.99  --comb_res_mult                         3
% 1.62/0.99  --comb_sup_mult                         2
% 1.62/0.99  --comb_inst_mult                        10
% 1.62/0.99  
% 1.62/0.99  ------ Debug Options
% 1.62/0.99  
% 1.62/0.99  --dbg_backtrace                         false
% 1.62/0.99  --dbg_dump_prop_clauses                 false
% 1.62/0.99  --dbg_dump_prop_clauses_file            -
% 1.62/0.99  --dbg_out_stat                          false
% 1.62/0.99  ------ Parsing...
% 1.62/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.62/0.99  ------ Proving...
% 1.62/0.99  ------ Problem Properties 
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  clauses                                 13
% 1.62/0.99  conjectures                             2
% 1.62/0.99  EPR                                     1
% 1.62/0.99  Horn                                    12
% 1.62/0.99  unary                                   4
% 1.62/0.99  binary                                  4
% 1.62/0.99  lits                                    28
% 1.62/0.99  lits eq                                 19
% 1.62/0.99  fd_pure                                 0
% 1.62/0.99  fd_pseudo                               0
% 1.62/0.99  fd_cond                                 0
% 1.62/0.99  fd_pseudo_cond                          0
% 1.62/0.99  AC symbols                              0
% 1.62/0.99  
% 1.62/0.99  ------ Schedule dynamic 5 is on 
% 1.62/0.99  
% 1.62/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  ------ 
% 1.62/0.99  Current options:
% 1.62/0.99  ------ 
% 1.62/0.99  
% 1.62/0.99  ------ Input Options
% 1.62/0.99  
% 1.62/0.99  --out_options                           all
% 1.62/0.99  --tptp_safe_out                         true
% 1.62/0.99  --problem_path                          ""
% 1.62/0.99  --include_path                          ""
% 1.62/0.99  --clausifier                            res/vclausify_rel
% 1.62/0.99  --clausifier_options                    --mode clausify
% 1.62/0.99  --stdin                                 false
% 1.62/0.99  --stats_out                             all
% 1.62/0.99  
% 1.62/0.99  ------ General Options
% 1.62/0.99  
% 1.62/0.99  --fof                                   false
% 1.62/0.99  --time_out_real                         305.
% 1.62/0.99  --time_out_virtual                      -1.
% 1.62/0.99  --symbol_type_check                     false
% 1.62/0.99  --clausify_out                          false
% 1.62/0.99  --sig_cnt_out                           false
% 1.62/0.99  --trig_cnt_out                          false
% 1.62/0.99  --trig_cnt_out_tolerance                1.
% 1.62/0.99  --trig_cnt_out_sk_spl                   false
% 1.62/0.99  --abstr_cl_out                          false
% 1.62/0.99  
% 1.62/0.99  ------ Global Options
% 1.62/0.99  
% 1.62/0.99  --schedule                              default
% 1.62/0.99  --add_important_lit                     false
% 1.62/0.99  --prop_solver_per_cl                    1000
% 1.62/0.99  --min_unsat_core                        false
% 1.62/0.99  --soft_assumptions                      false
% 1.62/0.99  --soft_lemma_size                       3
% 1.62/0.99  --prop_impl_unit_size                   0
% 1.62/0.99  --prop_impl_unit                        []
% 1.62/0.99  --share_sel_clauses                     true
% 1.62/0.99  --reset_solvers                         false
% 1.62/0.99  --bc_imp_inh                            [conj_cone]
% 1.62/0.99  --conj_cone_tolerance                   3.
% 1.62/0.99  --extra_neg_conj                        none
% 1.62/0.99  --large_theory_mode                     true
% 1.62/0.99  --prolific_symb_bound                   200
% 1.62/0.99  --lt_threshold                          2000
% 1.62/0.99  --clause_weak_htbl                      true
% 1.62/0.99  --gc_record_bc_elim                     false
% 1.62/0.99  
% 1.62/0.99  ------ Preprocessing Options
% 1.62/0.99  
% 1.62/0.99  --preprocessing_flag                    true
% 1.62/0.99  --time_out_prep_mult                    0.1
% 1.62/0.99  --splitting_mode                        input
% 1.62/0.99  --splitting_grd                         true
% 1.62/0.99  --splitting_cvd                         false
% 1.62/0.99  --splitting_cvd_svl                     false
% 1.62/0.99  --splitting_nvd                         32
% 1.62/0.99  --sub_typing                            true
% 1.62/0.99  --prep_gs_sim                           true
% 1.62/0.99  --prep_unflatten                        true
% 1.62/0.99  --prep_res_sim                          true
% 1.62/0.99  --prep_upred                            true
% 1.62/0.99  --prep_sem_filter                       exhaustive
% 1.62/0.99  --prep_sem_filter_out                   false
% 1.62/0.99  --pred_elim                             true
% 1.62/0.99  --res_sim_input                         true
% 1.62/0.99  --eq_ax_congr_red                       true
% 1.62/0.99  --pure_diseq_elim                       true
% 1.62/0.99  --brand_transform                       false
% 1.62/0.99  --non_eq_to_eq                          false
% 1.62/0.99  --prep_def_merge                        true
% 1.62/0.99  --prep_def_merge_prop_impl              false
% 1.62/0.99  --prep_def_merge_mbd                    true
% 1.62/0.99  --prep_def_merge_tr_red                 false
% 1.62/0.99  --prep_def_merge_tr_cl                  false
% 1.62/0.99  --smt_preprocessing                     true
% 1.62/0.99  --smt_ac_axioms                         fast
% 1.62/0.99  --preprocessed_out                      false
% 1.62/0.99  --preprocessed_stats                    false
% 1.62/0.99  
% 1.62/0.99  ------ Abstraction refinement Options
% 1.62/0.99  
% 1.62/0.99  --abstr_ref                             []
% 1.62/0.99  --abstr_ref_prep                        false
% 1.62/0.99  --abstr_ref_until_sat                   false
% 1.62/0.99  --abstr_ref_sig_restrict                funpre
% 1.62/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.62/0.99  --abstr_ref_under                       []
% 1.62/0.99  
% 1.62/0.99  ------ SAT Options
% 1.62/0.99  
% 1.62/0.99  --sat_mode                              false
% 1.62/0.99  --sat_fm_restart_options                ""
% 1.62/0.99  --sat_gr_def                            false
% 1.62/0.99  --sat_epr_types                         true
% 1.62/0.99  --sat_non_cyclic_types                  false
% 1.62/0.99  --sat_finite_models                     false
% 1.62/0.99  --sat_fm_lemmas                         false
% 1.62/0.99  --sat_fm_prep                           false
% 1.62/0.99  --sat_fm_uc_incr                        true
% 1.62/0.99  --sat_out_model                         small
% 1.62/0.99  --sat_out_clauses                       false
% 1.62/0.99  
% 1.62/0.99  ------ QBF Options
% 1.62/0.99  
% 1.62/0.99  --qbf_mode                              false
% 1.62/0.99  --qbf_elim_univ                         false
% 1.62/0.99  --qbf_dom_inst                          none
% 1.62/0.99  --qbf_dom_pre_inst                      false
% 1.62/0.99  --qbf_sk_in                             false
% 1.62/0.99  --qbf_pred_elim                         true
% 1.62/0.99  --qbf_split                             512
% 1.62/0.99  
% 1.62/0.99  ------ BMC1 Options
% 1.62/0.99  
% 1.62/0.99  --bmc1_incremental                      false
% 1.62/0.99  --bmc1_axioms                           reachable_all
% 1.62/0.99  --bmc1_min_bound                        0
% 1.62/0.99  --bmc1_max_bound                        -1
% 1.62/0.99  --bmc1_max_bound_default                -1
% 1.62/0.99  --bmc1_symbol_reachability              true
% 1.62/0.99  --bmc1_property_lemmas                  false
% 1.62/0.99  --bmc1_k_induction                      false
% 1.62/0.99  --bmc1_non_equiv_states                 false
% 1.62/0.99  --bmc1_deadlock                         false
% 1.62/0.99  --bmc1_ucm                              false
% 1.62/0.99  --bmc1_add_unsat_core                   none
% 1.62/0.99  --bmc1_unsat_core_children              false
% 1.62/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.62/0.99  --bmc1_out_stat                         full
% 1.62/0.99  --bmc1_ground_init                      false
% 1.62/0.99  --bmc1_pre_inst_next_state              false
% 1.62/0.99  --bmc1_pre_inst_state                   false
% 1.62/0.99  --bmc1_pre_inst_reach_state             false
% 1.62/0.99  --bmc1_out_unsat_core                   false
% 1.62/0.99  --bmc1_aig_witness_out                  false
% 1.62/0.99  --bmc1_verbose                          false
% 1.62/0.99  --bmc1_dump_clauses_tptp                false
% 1.62/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.62/0.99  --bmc1_dump_file                        -
% 1.62/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.62/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.62/0.99  --bmc1_ucm_extend_mode                  1
% 1.62/0.99  --bmc1_ucm_init_mode                    2
% 1.62/0.99  --bmc1_ucm_cone_mode                    none
% 1.62/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.62/0.99  --bmc1_ucm_relax_model                  4
% 1.62/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.62/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.62/0.99  --bmc1_ucm_layered_model                none
% 1.62/0.99  --bmc1_ucm_max_lemma_size               10
% 1.62/0.99  
% 1.62/0.99  ------ AIG Options
% 1.62/0.99  
% 1.62/0.99  --aig_mode                              false
% 1.62/0.99  
% 1.62/0.99  ------ Instantiation Options
% 1.62/0.99  
% 1.62/0.99  --instantiation_flag                    true
% 1.62/0.99  --inst_sos_flag                         false
% 1.62/0.99  --inst_sos_phase                        true
% 1.62/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.62/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.62/0.99  --inst_lit_sel_side                     none
% 1.62/0.99  --inst_solver_per_active                1400
% 1.62/0.99  --inst_solver_calls_frac                1.
% 1.62/0.99  --inst_passive_queue_type               priority_queues
% 1.62/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.62/0.99  --inst_passive_queues_freq              [25;2]
% 1.62/0.99  --inst_dismatching                      true
% 1.62/0.99  --inst_eager_unprocessed_to_passive     true
% 1.62/0.99  --inst_prop_sim_given                   true
% 1.62/0.99  --inst_prop_sim_new                     false
% 1.62/0.99  --inst_subs_new                         false
% 1.62/0.99  --inst_eq_res_simp                      false
% 1.62/0.99  --inst_subs_given                       false
% 1.62/0.99  --inst_orphan_elimination               true
% 1.62/0.99  --inst_learning_loop_flag               true
% 1.62/0.99  --inst_learning_start                   3000
% 1.62/0.99  --inst_learning_factor                  2
% 1.62/0.99  --inst_start_prop_sim_after_learn       3
% 1.62/0.99  --inst_sel_renew                        solver
% 1.62/0.99  --inst_lit_activity_flag                true
% 1.62/0.99  --inst_restr_to_given                   false
% 1.62/0.99  --inst_activity_threshold               500
% 1.62/0.99  --inst_out_proof                        true
% 1.62/0.99  
% 1.62/0.99  ------ Resolution Options
% 1.62/0.99  
% 1.62/0.99  --resolution_flag                       false
% 1.62/0.99  --res_lit_sel                           adaptive
% 1.62/0.99  --res_lit_sel_side                      none
% 1.62/0.99  --res_ordering                          kbo
% 1.62/0.99  --res_to_prop_solver                    active
% 1.62/0.99  --res_prop_simpl_new                    false
% 1.62/0.99  --res_prop_simpl_given                  true
% 1.62/0.99  --res_passive_queue_type                priority_queues
% 1.62/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.62/0.99  --res_passive_queues_freq               [15;5]
% 1.62/0.99  --res_forward_subs                      full
% 1.62/0.99  --res_backward_subs                     full
% 1.62/0.99  --res_forward_subs_resolution           true
% 1.62/0.99  --res_backward_subs_resolution          true
% 1.62/0.99  --res_orphan_elimination                true
% 1.62/0.99  --res_time_limit                        2.
% 1.62/0.99  --res_out_proof                         true
% 1.62/0.99  
% 1.62/0.99  ------ Superposition Options
% 1.62/0.99  
% 1.62/0.99  --superposition_flag                    true
% 1.62/0.99  --sup_passive_queue_type                priority_queues
% 1.62/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.62/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.62/0.99  --demod_completeness_check              fast
% 1.62/0.99  --demod_use_ground                      true
% 1.62/0.99  --sup_to_prop_solver                    passive
% 1.62/0.99  --sup_prop_simpl_new                    true
% 1.62/0.99  --sup_prop_simpl_given                  true
% 1.62/0.99  --sup_fun_splitting                     false
% 1.62/0.99  --sup_smt_interval                      50000
% 1.62/0.99  
% 1.62/0.99  ------ Superposition Simplification Setup
% 1.62/0.99  
% 1.62/0.99  --sup_indices_passive                   []
% 1.62/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.62/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.62/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_full_bw                           [BwDemod]
% 1.62/0.99  --sup_immed_triv                        [TrivRules]
% 1.62/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.62/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_immed_bw_main                     []
% 1.62/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.62/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.62/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.62/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.62/0.99  
% 1.62/0.99  ------ Combination Options
% 1.62/0.99  
% 1.62/0.99  --comb_res_mult                         3
% 1.62/0.99  --comb_sup_mult                         2
% 1.62/0.99  --comb_inst_mult                        10
% 1.62/0.99  
% 1.62/0.99  ------ Debug Options
% 1.62/0.99  
% 1.62/0.99  --dbg_backtrace                         false
% 1.62/0.99  --dbg_dump_prop_clauses                 false
% 1.62/0.99  --dbg_dump_prop_clauses_file            -
% 1.62/0.99  --dbg_out_stat                          false
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  ------ Proving...
% 1.62/0.99  
% 1.62/0.99  
% 1.62/0.99  % SZS status Theorem for theBenchmark.p
% 1.62/0.99  
% 1.62/0.99   Resolution empty clause
% 1.62/0.99  
% 1.62/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.62/0.99  
% 1.62/0.99  fof(f10,axiom,(
% 1.62/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f16,plain,(
% 1.62/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.62/0.99    inference(pure_predicate_removal,[],[f10])).
% 1.62/0.99  
% 1.62/0.99  fof(f24,plain,(
% 1.62/0.99    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.62/0.99    inference(ennf_transformation,[],[f16])).
% 1.62/0.99  
% 1.62/0.99  fof(f43,plain,(
% 1.62/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.62/0.99    inference(cnf_transformation,[],[f24])).
% 1.62/0.99  
% 1.62/0.99  fof(f8,axiom,(
% 1.62/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => k7_relat_1(X1,X0) = X1)),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f20,plain,(
% 1.62/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.62/0.99    inference(ennf_transformation,[],[f8])).
% 1.62/0.99  
% 1.62/0.99  fof(f21,plain,(
% 1.62/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.62/0.99    inference(flattening,[],[f20])).
% 1.62/0.99  
% 1.62/0.99  fof(f41,plain,(
% 1.62/0.99    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.62/0.99    inference(cnf_transformation,[],[f21])).
% 1.62/0.99  
% 1.62/0.99  fof(f14,conjecture,(
% 1.62/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3)) => (k1_xboole_0 != X1 => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f15,negated_conjecture,(
% 1.62/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3)) => (k1_xboole_0 != X1 => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))))),
% 1.62/0.99    inference(negated_conjecture,[],[f14])).
% 1.62/0.99  
% 1.62/0.99  fof(f29,plain,(
% 1.62/0.99    ? [X0,X1,X2,X3] : ((~r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) & k1_xboole_0 != X1) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3)))),
% 1.62/0.99    inference(ennf_transformation,[],[f15])).
% 1.62/0.99  
% 1.62/0.99  fof(f30,plain,(
% 1.62/0.99    ? [X0,X1,X2,X3] : (~r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) & k1_xboole_0 != X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3))),
% 1.62/0.99    inference(flattening,[],[f29])).
% 1.62/0.99  
% 1.62/0.99  fof(f32,plain,(
% 1.62/0.99    ? [X0,X1,X2,X3] : (~r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) & k1_xboole_0 != X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3)) => (~r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) & k1_xboole_0 != sK1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))) & v1_funct_2(sK3,k1_tarski(sK0),sK1) & v1_funct_1(sK3))),
% 1.62/0.99    introduced(choice_axiom,[])).
% 1.62/0.99  
% 1.62/0.99  fof(f33,plain,(
% 1.62/0.99    ~r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) & k1_xboole_0 != sK1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))) & v1_funct_2(sK3,k1_tarski(sK0),sK1) & v1_funct_1(sK3)),
% 1.62/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f30,f32])).
% 1.62/0.99  
% 1.62/0.99  fof(f54,plain,(
% 1.62/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)))),
% 1.62/0.99    inference(cnf_transformation,[],[f33])).
% 1.62/0.99  
% 1.62/0.99  fof(f1,axiom,(
% 1.62/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f34,plain,(
% 1.62/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.62/0.99    inference(cnf_transformation,[],[f1])).
% 1.62/0.99  
% 1.62/0.99  fof(f2,axiom,(
% 1.62/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f35,plain,(
% 1.62/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.62/0.99    inference(cnf_transformation,[],[f2])).
% 1.62/0.99  
% 1.62/0.99  fof(f3,axiom,(
% 1.62/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f36,plain,(
% 1.62/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 1.62/0.99    inference(cnf_transformation,[],[f3])).
% 1.62/0.99  
% 1.62/0.99  fof(f57,plain,(
% 1.62/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 1.62/0.99    inference(definition_unfolding,[],[f35,f36])).
% 1.62/0.99  
% 1.62/0.99  fof(f58,plain,(
% 1.62/0.99    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 1.62/0.99    inference(definition_unfolding,[],[f34,f57])).
% 1.62/0.99  
% 1.62/0.99  fof(f61,plain,(
% 1.62/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)))),
% 1.62/0.99    inference(definition_unfolding,[],[f54,f58])).
% 1.62/0.99  
% 1.62/0.99  fof(f4,axiom,(
% 1.62/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f17,plain,(
% 1.62/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.62/0.99    inference(ennf_transformation,[],[f4])).
% 1.62/0.99  
% 1.62/0.99  fof(f37,plain,(
% 1.62/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 1.62/0.99    inference(cnf_transformation,[],[f17])).
% 1.62/0.99  
% 1.62/0.99  fof(f5,axiom,(
% 1.62/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f38,plain,(
% 1.62/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.62/0.99    inference(cnf_transformation,[],[f5])).
% 1.62/0.99  
% 1.62/0.99  fof(f53,plain,(
% 1.62/0.99    v1_funct_2(sK3,k1_tarski(sK0),sK1)),
% 1.62/0.99    inference(cnf_transformation,[],[f33])).
% 1.62/0.99  
% 1.62/0.99  fof(f62,plain,(
% 1.62/0.99    v1_funct_2(sK3,k2_enumset1(sK0,sK0,sK0,sK0),sK1)),
% 1.62/0.99    inference(definition_unfolding,[],[f53,f58])).
% 1.62/0.99  
% 1.62/0.99  fof(f13,axiom,(
% 1.62/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f27,plain,(
% 1.62/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.62/0.99    inference(ennf_transformation,[],[f13])).
% 1.62/0.99  
% 1.62/0.99  fof(f28,plain,(
% 1.62/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.62/0.99    inference(flattening,[],[f27])).
% 1.62/0.99  
% 1.62/0.99  fof(f31,plain,(
% 1.62/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.62/0.99    inference(nnf_transformation,[],[f28])).
% 1.62/0.99  
% 1.62/0.99  fof(f46,plain,(
% 1.62/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.62/0.99    inference(cnf_transformation,[],[f31])).
% 1.62/0.99  
% 1.62/0.99  fof(f55,plain,(
% 1.62/0.99    k1_xboole_0 != sK1),
% 1.62/0.99    inference(cnf_transformation,[],[f33])).
% 1.62/0.99  
% 1.62/0.99  fof(f11,axiom,(
% 1.62/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f25,plain,(
% 1.62/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.62/0.99    inference(ennf_transformation,[],[f11])).
% 1.62/0.99  
% 1.62/0.99  fof(f44,plain,(
% 1.62/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.62/0.99    inference(cnf_transformation,[],[f25])).
% 1.62/0.99  
% 1.62/0.99  fof(f7,axiom,(
% 1.62/0.99    ! [X0,X1] : (v1_relat_1(X1) => k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0)))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f19,plain,(
% 1.62/0.99    ! [X0,X1] : (k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1))),
% 1.62/0.99    inference(ennf_transformation,[],[f7])).
% 1.62/0.99  
% 1.62/0.99  fof(f40,plain,(
% 1.62/0.99    ( ! [X0,X1] : (k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1)) )),
% 1.62/0.99    inference(cnf_transformation,[],[f19])).
% 1.62/0.99  
% 1.62/0.99  fof(f6,axiom,(
% 1.62/0.99    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k9_relat_1(X1,X0),k9_relat_1(X1,k1_relat_1(X1))))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f18,plain,(
% 1.62/0.99    ! [X0,X1] : (r1_tarski(k9_relat_1(X1,X0),k9_relat_1(X1,k1_relat_1(X1))) | ~v1_relat_1(X1))),
% 1.62/0.99    inference(ennf_transformation,[],[f6])).
% 1.62/0.99  
% 1.62/0.99  fof(f39,plain,(
% 1.62/0.99    ( ! [X0,X1] : (r1_tarski(k9_relat_1(X1,X0),k9_relat_1(X1,k1_relat_1(X1))) | ~v1_relat_1(X1)) )),
% 1.62/0.99    inference(cnf_transformation,[],[f18])).
% 1.62/0.99  
% 1.62/0.99  fof(f9,axiom,(
% 1.62/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (k1_tarski(X0) = k1_relat_1(X1) => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f22,plain,(
% 1.62/0.99    ! [X0,X1] : ((k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 1.62/0.99    inference(ennf_transformation,[],[f9])).
% 1.62/0.99  
% 1.62/0.99  fof(f23,plain,(
% 1.62/0.99    ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.62/0.99    inference(flattening,[],[f22])).
% 1.62/0.99  
% 1.62/0.99  fof(f42,plain,(
% 1.62/0.99    ( ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.62/0.99    inference(cnf_transformation,[],[f23])).
% 1.62/0.99  
% 1.62/0.99  fof(f59,plain,(
% 1.62/0.99    ( ! [X0,X1] : (k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1) | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.62/0.99    inference(definition_unfolding,[],[f42,f58,f58])).
% 1.62/0.99  
% 1.62/0.99  fof(f52,plain,(
% 1.62/0.99    v1_funct_1(sK3)),
% 1.62/0.99    inference(cnf_transformation,[],[f33])).
% 1.62/0.99  
% 1.62/0.99  fof(f12,axiom,(
% 1.62/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 1.62/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.62/0.99  
% 1.62/0.99  fof(f26,plain,(
% 1.62/0.99    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.62/0.99    inference(ennf_transformation,[],[f12])).
% 1.62/0.99  
% 1.62/0.99  fof(f45,plain,(
% 1.62/0.99    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.62/0.99    inference(cnf_transformation,[],[f26])).
% 1.62/0.99  
% 1.62/0.99  fof(f56,plain,(
% 1.62/0.99    ~r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0)))),
% 1.62/0.99    inference(cnf_transformation,[],[f33])).
% 1.62/0.99  
% 1.62/0.99  fof(f60,plain,(
% 1.62/0.99    ~r1_tarski(k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)))),
% 1.62/0.99    inference(definition_unfolding,[],[f56,f58,f58])).
% 1.62/0.99  
% 1.62/0.99  cnf(c_6,plain,
% 1.62/0.99      ( v4_relat_1(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.62/0.99      inference(cnf_transformation,[],[f43]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_4,plain,
% 1.62/0.99      ( ~ v4_relat_1(X0,X1) | ~ v1_relat_1(X0) | k7_relat_1(X0,X1) = X0 ),
% 1.62/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_238,plain,
% 1.62/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.62/0.99      | ~ v1_relat_1(X0)
% 1.62/0.99      | k7_relat_1(X0,X1) = X0 ),
% 1.62/0.99      inference(resolution,[status(thm)],[c_6,c_4]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_17,negated_conjecture,
% 1.62/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))) ),
% 1.62/0.99      inference(cnf_transformation,[],[f61]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_290,plain,
% 1.62/0.99      ( ~ v1_relat_1(X0)
% 1.62/0.99      | k7_relat_1(X0,X1) = X0
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.62/0.99      | sK3 != X0 ),
% 1.62/0.99      inference(resolution_lifted,[status(thm)],[c_238,c_17]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_291,plain,
% 1.62/0.99      ( ~ v1_relat_1(sK3)
% 1.62/0.99      | k7_relat_1(sK3,X0) = sK3
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.62/0.99      inference(unflattening,[status(thm)],[c_290]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_604,plain,
% 1.62/0.99      ( ~ v1_relat_1(sK3)
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
% 1.62/0.99      | k7_relat_1(sK3,X0_49) = sK3 ),
% 1.62/0.99      inference(subtyping,[status(esa)],[c_291]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_790,plain,
% 1.62/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
% 1.62/0.99      | k7_relat_1(sK3,X0_49) = sK3
% 1.62/0.99      | v1_relat_1(sK3) != iProver_top ),
% 1.62/0.99      inference(predicate_to_equality,[status(thm)],[c_604]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_615,plain,( X0_51 = X0_51 ),theory(equality) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_872,plain,
% 1.62/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) = k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
% 1.62/0.99      inference(instantiation,[status(thm)],[c_615]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_0,plain,
% 1.62/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 1.62/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_275,plain,
% 1.62/0.99      ( ~ v1_relat_1(X0)
% 1.62/0.99      | v1_relat_1(X1)
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(X0)
% 1.62/0.99      | sK3 != X1 ),
% 1.62/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_17]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_276,plain,
% 1.62/0.99      ( ~ v1_relat_1(X0)
% 1.62/0.99      | v1_relat_1(sK3)
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(X0) ),
% 1.62/0.99      inference(unflattening,[status(thm)],[c_275]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_605,plain,
% 1.62/0.99      ( ~ v1_relat_1(X0_49)
% 1.62/0.99      | v1_relat_1(sK3)
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(X0_49) ),
% 1.62/0.99      inference(subtyping,[status(esa)],[c_276]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_867,plain,
% 1.62/0.99      ( ~ v1_relat_1(k2_zfmisc_1(X0_49,X1_49))
% 1.62/0.99      | v1_relat_1(sK3)
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49)) ),
% 1.62/0.99      inference(instantiation,[status(thm)],[c_605]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_926,plain,
% 1.62/0.99      ( ~ v1_relat_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
% 1.62/0.99      | v1_relat_1(sK3)
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
% 1.62/0.99      inference(instantiation,[status(thm)],[c_867]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_1,plain,
% 1.62/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.62/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_611,plain,
% 1.62/0.99      ( v1_relat_1(k2_zfmisc_1(X0_49,X1_49)) ),
% 1.62/0.99      inference(subtyping,[status(esa)],[c_1]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_962,plain,
% 1.62/0.99      ( v1_relat_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
% 1.62/0.99      inference(instantiation,[status(thm)],[c_611]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_1321,plain,
% 1.62/0.99      ( k7_relat_1(sK3,X0_49) = sK3
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49)) ),
% 1.62/0.99      inference(global_propositional_subsumption,
% 1.62/0.99                [status(thm)],
% 1.62/0.99                [c_790,c_604,c_872,c_926,c_962]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_1322,plain,
% 1.62/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
% 1.62/0.99      | k7_relat_1(sK3,X0_49) = sK3 ),
% 1.62/0.99      inference(renaming,[status(thm)],[c_1321]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_18,negated_conjecture,
% 1.62/0.99      ( v1_funct_2(sK3,k2_enumset1(sK0,sK0,sK0,sK0),sK1) ),
% 1.62/0.99      inference(cnf_transformation,[],[f62]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_14,plain,
% 1.62/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.62/0.99      | k1_relset_1(X1,X2,X0) = X1
% 1.62/0.99      | k1_xboole_0 = X2 ),
% 1.62/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_305,plain,
% 1.62/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.62/0.99      | k1_relset_1(X1,X2,X0) = X1
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.62/0.99      | sK3 != X0
% 1.62/0.99      | k1_xboole_0 = X2 ),
% 1.62/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_17]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_306,plain,
% 1.62/0.99      ( ~ v1_funct_2(sK3,X0,X1)
% 1.62/0.99      | k1_relset_1(X0,X1,sK3) = X0
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.62/0.99      | k1_xboole_0 = X1 ),
% 1.62/0.99      inference(unflattening,[status(thm)],[c_305]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_472,plain,
% 1.62/0.99      ( k2_enumset1(sK0,sK0,sK0,sK0) != X0
% 1.62/0.99      | k1_relset_1(X0,X1,sK3) = X0
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.62/0.99      | sK3 != sK3
% 1.62/0.99      | sK1 != X1
% 1.62/0.99      | k1_xboole_0 = X1 ),
% 1.62/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_306]) ).
% 1.62/0.99  
% 1.62/0.99  cnf(c_473,plain,
% 1.62/0.99      ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0)
% 1.62/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
% 1.62/0.99      | k1_xboole_0 = sK1 ),
% 1.62/0.99      inference(unflattening,[status(thm)],[c_472]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_16,negated_conjecture,
% 1.62/1.00      ( k1_xboole_0 != sK1 ),
% 1.62/1.00      inference(cnf_transformation,[],[f55]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_474,plain,
% 1.62/1.00      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
% 1.62/1.00      | k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0) ),
% 1.62/1.00      inference(global_propositional_subsumption,[status(thm)],[c_473,c_16]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_475,plain,
% 1.62/1.00      ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0)
% 1.62/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
% 1.62/1.00      inference(renaming,[status(thm)],[c_474]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_531,plain,
% 1.62/1.00      ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0) ),
% 1.62/1.00      inference(equality_resolution_simp,[status(thm)],[c_475]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_599,plain,
% 1.62/1.00      ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k2_enumset1(sK0,sK0,sK0,sK0) ),
% 1.62/1.00      inference(subtyping,[status(esa)],[c_531]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_7,plain,
% 1.62/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.62/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.62/1.00      inference(cnf_transformation,[],[f44]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_350,plain,
% 1.62/1.00      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 1.62/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.62/1.00      | sK3 != X2 ),
% 1.62/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_17]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_351,plain,
% 1.62/1.00      ( k1_relset_1(X0,X1,sK3) = k1_relat_1(sK3)
% 1.62/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.62/1.00      inference(unflattening,[status(thm)],[c_350]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_602,plain,
% 1.62/1.00      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
% 1.62/1.00      | k1_relset_1(X0_49,X1_49,sK3) = k1_relat_1(sK3) ),
% 1.62/1.00      inference(subtyping,[status(esa)],[c_351]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_866,plain,
% 1.62/1.00      ( k1_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3) = k1_relat_1(sK3) ),
% 1.62/1.00      inference(equality_resolution,[status(thm)],[c_602]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_972,plain,
% 1.62/1.00      ( k2_enumset1(sK0,sK0,sK0,sK0) = k1_relat_1(sK3) ),
% 1.62/1.00      inference(light_normalisation,[status(thm)],[c_599,c_866]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1324,plain,
% 1.62/1.00      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
% 1.62/1.00      | k7_relat_1(sK3,X0_49) = sK3 ),
% 1.62/1.00      inference(light_normalisation,[status(thm)],[c_1322,c_972]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1328,plain,
% 1.62/1.00      ( k7_relat_1(sK3,k1_relat_1(sK3)) = sK3 ),
% 1.62/1.00      inference(equality_resolution,[status(thm)],[c_1324]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_789,plain,
% 1.62/1.00      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(X0_49)
% 1.62/1.00      | v1_relat_1(X0_49) != iProver_top
% 1.62/1.00      | v1_relat_1(sK3) = iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_605]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_927,plain,
% 1.62/1.00      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
% 1.62/1.00      | v1_relat_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != iProver_top
% 1.62/1.00      | v1_relat_1(sK3) = iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_926]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_963,plain,
% 1.62/1.00      ( v1_relat_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) = iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_962]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1235,plain,
% 1.62/1.00      ( v1_relat_1(sK3) = iProver_top ),
% 1.62/1.00      inference(global_propositional_subsumption,
% 1.62/1.00                [status(thm)],
% 1.62/1.00                [c_789,c_872,c_927,c_963]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_3,plain,
% 1.62/1.00      ( ~ v1_relat_1(X0) | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 1.62/1.00      inference(cnf_transformation,[],[f40]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_609,plain,
% 1.62/1.00      ( ~ v1_relat_1(X0_49)
% 1.62/1.00      | k2_relat_1(k7_relat_1(X0_49,X1_49)) = k9_relat_1(X0_49,X1_49) ),
% 1.62/1.00      inference(subtyping,[status(esa)],[c_3]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_786,plain,
% 1.62/1.00      ( k2_relat_1(k7_relat_1(X0_49,X1_49)) = k9_relat_1(X0_49,X1_49)
% 1.62/1.00      | v1_relat_1(X0_49) != iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_609]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1240,plain,
% 1.62/1.00      ( k2_relat_1(k7_relat_1(sK3,X0_49)) = k9_relat_1(sK3,X0_49) ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_1235,c_786]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1582,plain,
% 1.62/1.00      ( k9_relat_1(sK3,k1_relat_1(sK3)) = k2_relat_1(sK3) ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_1328,c_1240]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_2,plain,
% 1.62/1.00      ( r1_tarski(k9_relat_1(X0,X1),k9_relat_1(X0,k1_relat_1(X0)))
% 1.62/1.00      | ~ v1_relat_1(X0) ),
% 1.62/1.00      inference(cnf_transformation,[],[f39]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_610,plain,
% 1.62/1.00      ( r1_tarski(k9_relat_1(X0_49,X1_49),k9_relat_1(X0_49,k1_relat_1(X0_49)))
% 1.62/1.00      | ~ v1_relat_1(X0_49) ),
% 1.62/1.00      inference(subtyping,[status(esa)],[c_2]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_785,plain,
% 1.62/1.00      ( r1_tarski(k9_relat_1(X0_49,X1_49),k9_relat_1(X0_49,k1_relat_1(X0_49))) = iProver_top
% 1.62/1.00      | v1_relat_1(X0_49) != iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_610]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1672,plain,
% 1.62/1.00      ( r1_tarski(k9_relat_1(sK3,X0_49),k2_relat_1(sK3)) = iProver_top
% 1.62/1.00      | v1_relat_1(sK3) != iProver_top ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_1582,c_785]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1791,plain,
% 1.62/1.00      ( r1_tarski(k9_relat_1(sK3,X0_49),k2_relat_1(sK3)) = iProver_top ),
% 1.62/1.00      inference(global_propositional_subsumption,
% 1.62/1.00                [status(thm)],
% 1.62/1.00                [c_1672,c_872,c_927,c_963]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_5,plain,
% 1.62/1.00      ( ~ v1_funct_1(X0)
% 1.62/1.00      | ~ v1_relat_1(X0)
% 1.62/1.00      | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
% 1.62/1.00      | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
% 1.62/1.00      inference(cnf_transformation,[],[f59]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_19,negated_conjecture,
% 1.62/1.00      ( v1_funct_1(sK3) ),
% 1.62/1.00      inference(cnf_transformation,[],[f52]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_256,plain,
% 1.62/1.00      ( ~ v1_relat_1(X0)
% 1.62/1.00      | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
% 1.62/1.00      | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
% 1.62/1.00      | sK3 != X0 ),
% 1.62/1.00      inference(resolution_lifted,[status(thm)],[c_5,c_19]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_257,plain,
% 1.62/1.00      ( ~ v1_relat_1(sK3)
% 1.62/1.00      | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
% 1.62/1.00      | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
% 1.62/1.00      inference(unflattening,[status(thm)],[c_256]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_606,plain,
% 1.62/1.00      ( ~ v1_relat_1(sK3)
% 1.62/1.00      | k2_enumset1(X0_50,X0_50,X0_50,X0_50) != k1_relat_1(sK3)
% 1.62/1.00      | k2_enumset1(k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50)) = k2_relat_1(sK3) ),
% 1.62/1.00      inference(subtyping,[status(esa)],[c_257]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_788,plain,
% 1.62/1.00      ( k2_enumset1(X0_50,X0_50,X0_50,X0_50) != k1_relat_1(sK3)
% 1.62/1.00      | k2_enumset1(k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50)) = k2_relat_1(sK3)
% 1.62/1.00      | v1_relat_1(sK3) != iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_606]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1330,plain,
% 1.62/1.00      ( k2_enumset1(k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50)) = k2_relat_1(sK3)
% 1.62/1.00      | k2_enumset1(X0_50,X0_50,X0_50,X0_50) != k1_relat_1(sK3) ),
% 1.62/1.00      inference(global_propositional_subsumption,
% 1.62/1.00                [status(thm)],
% 1.62/1.00                [c_788,c_606,c_872,c_926,c_962]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1331,plain,
% 1.62/1.00      ( k2_enumset1(X0_50,X0_50,X0_50,X0_50) != k1_relat_1(sK3)
% 1.62/1.00      | k2_enumset1(k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50),k1_funct_1(sK3,X0_50)) = k2_relat_1(sK3) ),
% 1.62/1.00      inference(renaming,[status(thm)],[c_1330]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1335,plain,
% 1.62/1.00      ( k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)) = k2_relat_1(sK3) ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_972,c_1331]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_8,plain,
% 1.62/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.62/1.00      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 1.62/1.00      inference(cnf_transformation,[],[f45]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_341,plain,
% 1.62/1.00      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 1.62/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.62/1.00      | sK3 != X2 ),
% 1.62/1.00      inference(resolution_lifted,[status(thm)],[c_8,c_17]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_342,plain,
% 1.62/1.00      ( k7_relset_1(X0,X1,sK3,X2) = k9_relat_1(sK3,X2)
% 1.62/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.62/1.00      inference(unflattening,[status(thm)],[c_341]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_603,plain,
% 1.62/1.00      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0_49,X1_49))
% 1.62/1.00      | k7_relset_1(X0_49,X1_49,sK3,X2_49) = k9_relat_1(sK3,X2_49) ),
% 1.62/1.00      inference(subtyping,[status(esa)],[c_342]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_895,plain,
% 1.62/1.00      ( k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,X0_49) = k9_relat_1(sK3,X0_49) ),
% 1.62/1.00      inference(equality_resolution,[status(thm)],[c_603]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_15,negated_conjecture,
% 1.62/1.00      ( ~ r1_tarski(k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) ),
% 1.62/1.00      inference(cnf_transformation,[],[f60]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_608,negated_conjecture,
% 1.62/1.00      ( ~ r1_tarski(k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) ),
% 1.62/1.00      inference(subtyping,[status(esa)],[c_15]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_787,plain,
% 1.62/1.00      ( r1_tarski(k7_relset_1(k2_enumset1(sK0,sK0,sK0,sK0),sK1,sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
% 1.62/1.00      inference(predicate_to_equality,[status(thm)],[c_608]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_943,plain,
% 1.62/1.00      ( r1_tarski(k9_relat_1(sK3,sK2),k2_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
% 1.62/1.00      inference(demodulation,[status(thm)],[c_895,c_787]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1496,plain,
% 1.62/1.00      ( r1_tarski(k9_relat_1(sK3,sK2),k2_relat_1(sK3)) != iProver_top ),
% 1.62/1.00      inference(demodulation,[status(thm)],[c_1335,c_943]) ).
% 1.62/1.00  
% 1.62/1.00  cnf(c_1799,plain,
% 1.62/1.00      ( $false ),
% 1.62/1.00      inference(superposition,[status(thm)],[c_1791,c_1496]) ).
% 1.62/1.00  
% 1.62/1.00  
% 1.62/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.62/1.00  
% 1.62/1.00  ------                               Statistics
% 1.62/1.00  
% 1.62/1.00  ------ General
% 1.62/1.00  
% 1.62/1.00  abstr_ref_over_cycles:                  0
% 1.62/1.00  abstr_ref_under_cycles:                 0
% 1.62/1.00  gc_basic_clause_elim:                   0
% 1.62/1.00  forced_gc_time:                         0
% 1.62/1.00  parsing_time:                           0.01
% 1.62/1.00  unif_index_cands_time:                  0.
% 1.62/1.00  unif_index_add_time:                    0.
% 1.62/1.00  orderings_time:                         0.
% 1.62/1.00  out_proof_time:                         0.01
% 1.62/1.00  total_time:                             0.1
% 1.62/1.00  num_of_symbols:                         55
% 1.62/1.00  num_of_terms:                           2149
% 1.62/1.00  
% 1.62/1.00  ------ Preprocessing
% 1.62/1.00  
% 1.62/1.00  num_of_splits:                          0
% 1.62/1.00  num_of_split_atoms:                     0
% 1.62/1.00  num_of_reused_defs:                     0
% 1.62/1.00  num_eq_ax_congr_red:                    10
% 1.62/1.00  num_of_sem_filtered_clauses:            1
% 1.62/1.00  num_of_subtypes:                        3
% 1.62/1.00  monotx_restored_types:                  0
% 1.62/1.00  sat_num_of_epr_types:                   0
% 1.62/1.00  sat_num_of_non_cyclic_types:            0
% 1.62/1.00  sat_guarded_non_collapsed_types:        0
% 1.62/1.00  num_pure_diseq_elim:                    0
% 1.62/1.00  simp_replaced_by:                       0
% 1.62/1.00  res_preprocessed:                       94
% 1.62/1.00  prep_upred:                             0
% 1.62/1.00  prep_unflattend:                        27
% 1.62/1.00  smt_new_axioms:                         0
% 1.62/1.00  pred_elim_cands:                        2
% 1.62/1.00  pred_elim:                              4
% 1.62/1.00  pred_elim_cl:                           7
% 1.62/1.00  pred_elim_cycles:                       7
% 1.62/1.00  merged_defs:                            0
% 1.62/1.00  merged_defs_ncl:                        0
% 1.62/1.00  bin_hyper_res:                          0
% 1.62/1.00  prep_cycles:                            4
% 1.62/1.00  pred_elim_time:                         0.007
% 1.62/1.00  splitting_time:                         0.
% 1.62/1.00  sem_filter_time:                        0.
% 1.62/1.00  monotx_time:                            0.
% 1.62/1.00  subtype_inf_time:                       0.
% 1.62/1.00  
% 1.62/1.00  ------ Problem properties
% 1.62/1.00  
% 1.62/1.00  clauses:                                13
% 1.62/1.00  conjectures:                            2
% 1.62/1.00  epr:                                    1
% 1.62/1.00  horn:                                   12
% 1.62/1.00  ground:                                 5
% 1.62/1.00  unary:                                  4
% 1.62/1.00  binary:                                 4
% 1.62/1.00  lits:                                   28
% 1.62/1.00  lits_eq:                                19
% 1.62/1.00  fd_pure:                                0
% 1.62/1.00  fd_pseudo:                              0
% 1.62/1.00  fd_cond:                                0
% 1.62/1.00  fd_pseudo_cond:                         0
% 1.62/1.00  ac_symbols:                             0
% 1.62/1.00  
% 1.62/1.00  ------ Propositional Solver
% 1.62/1.00  
% 1.62/1.00  prop_solver_calls:                      28
% 1.62/1.00  prop_fast_solver_calls:                 571
% 1.62/1.00  smt_solver_calls:                       0
% 1.62/1.00  smt_fast_solver_calls:                  0
% 1.62/1.00  prop_num_of_clauses:                    583
% 1.62/1.00  prop_preprocess_simplified:             2574
% 1.62/1.00  prop_fo_subsumed:                       10
% 1.62/1.00  prop_solver_time:                       0.
% 1.62/1.00  smt_solver_time:                        0.
% 1.62/1.00  smt_fast_solver_time:                   0.
% 1.62/1.00  prop_fast_solver_time:                  0.
% 1.62/1.00  prop_unsat_core_time:                   0.
% 1.62/1.00  
% 1.62/1.00  ------ QBF
% 1.62/1.00  
% 1.62/1.00  qbf_q_res:                              0
% 1.62/1.00  qbf_num_tautologies:                    0
% 1.62/1.00  qbf_prep_cycles:                        0
% 1.62/1.00  
% 1.62/1.00  ------ BMC1
% 1.62/1.00  
% 1.62/1.00  bmc1_current_bound:                     -1
% 1.62/1.00  bmc1_last_solved_bound:                 -1
% 1.62/1.00  bmc1_unsat_core_size:                   -1
% 1.62/1.00  bmc1_unsat_core_parents_size:           -1
% 1.62/1.00  bmc1_merge_next_fun:                    0
% 1.62/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.62/1.00  
% 1.62/1.00  ------ Instantiation
% 1.62/1.00  
% 1.62/1.00  inst_num_of_clauses:                    228
% 1.62/1.00  inst_num_in_passive:                    53
% 1.62/1.00  inst_num_in_active:                     141
% 1.62/1.00  inst_num_in_unprocessed:                34
% 1.62/1.00  inst_num_of_loops:                      150
% 1.62/1.00  inst_num_of_learning_restarts:          0
% 1.62/1.00  inst_num_moves_active_passive:          4
% 1.62/1.00  inst_lit_activity:                      0
% 1.62/1.00  inst_lit_activity_moves:                0
% 1.62/1.00  inst_num_tautologies:                   0
% 1.62/1.00  inst_num_prop_implied:                  0
% 1.62/1.00  inst_num_existing_simplified:           0
% 1.62/1.00  inst_num_eq_res_simplified:             0
% 1.62/1.00  inst_num_child_elim:                    0
% 1.62/1.00  inst_num_of_dismatching_blockings:      76
% 1.62/1.00  inst_num_of_non_proper_insts:           251
% 1.62/1.00  inst_num_of_duplicates:                 0
% 1.62/1.00  inst_inst_num_from_inst_to_res:         0
% 1.62/1.00  inst_dismatching_checking_time:         0.
% 1.62/1.00  
% 1.62/1.00  ------ Resolution
% 1.62/1.00  
% 1.62/1.00  res_num_of_clauses:                     0
% 1.62/1.00  res_num_in_passive:                     0
% 1.62/1.00  res_num_in_active:                      0
% 1.62/1.00  res_num_of_loops:                       98
% 1.62/1.00  res_forward_subset_subsumed:            52
% 1.62/1.00  res_backward_subset_subsumed:           0
% 1.62/1.00  res_forward_subsumed:                   0
% 1.62/1.00  res_backward_subsumed:                  0
% 1.62/1.00  res_forward_subsumption_resolution:     0
% 1.62/1.00  res_backward_subsumption_resolution:    0
% 1.62/1.00  res_clause_to_clause_subsumption:       33
% 1.62/1.00  res_orphan_elimination:                 0
% 1.62/1.00  res_tautology_del:                      53
% 1.62/1.00  res_num_eq_res_simplified:              1
% 1.62/1.00  res_num_sel_changes:                    0
% 1.62/1.00  res_moves_from_active_to_pass:          0
% 1.62/1.00  
% 1.62/1.00  ------ Superposition
% 1.62/1.00  
% 1.62/1.00  sup_time_total:                         0.
% 1.62/1.00  sup_time_generating:                    0.
% 1.62/1.00  sup_time_sim_full:                      0.
% 1.62/1.00  sup_time_sim_immed:                     0.
% 1.62/1.00  
% 1.62/1.00  sup_num_of_clauses:                     23
% 1.62/1.00  sup_num_in_active:                      23
% 1.62/1.00  sup_num_in_passive:                     0
% 1.62/1.00  sup_num_of_loops:                       29
% 1.62/1.00  sup_fw_superposition:                   3
% 1.62/1.00  sup_bw_superposition:                   5
% 1.62/1.00  sup_immediate_simplified:               1
% 1.62/1.00  sup_given_eliminated:                   0
% 1.62/1.00  comparisons_done:                       0
% 1.62/1.00  comparisons_avoided:                    0
% 1.62/1.00  
% 1.62/1.00  ------ Simplifications
% 1.62/1.00  
% 1.62/1.00  
% 1.62/1.00  sim_fw_subset_subsumed:                 0
% 1.62/1.00  sim_bw_subset_subsumed:                 0
% 1.62/1.00  sim_fw_subsumed:                        0
% 1.62/1.00  sim_bw_subsumed:                        0
% 1.62/1.00  sim_fw_subsumption_res:                 0
% 1.62/1.00  sim_bw_subsumption_res:                 0
% 1.62/1.00  sim_tautology_del:                      0
% 1.62/1.00  sim_eq_tautology_del:                   0
% 1.62/1.00  sim_eq_res_simp:                        0
% 1.62/1.00  sim_fw_demodulated:                     0
% 1.62/1.00  sim_bw_demodulated:                     7
% 1.62/1.00  sim_light_normalised:                   3
% 1.62/1.00  sim_joinable_taut:                      0
% 1.62/1.00  sim_joinable_simp:                      0
% 1.62/1.00  sim_ac_normalised:                      0
% 1.62/1.00  sim_smt_subsumption:                    0
% 1.62/1.00  
%------------------------------------------------------------------------------
