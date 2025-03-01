%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:05:07 EST 2020

% Result     : Theorem 3.00s
% Output     : CNFRefutation 3.00s
% Verified   : 
% Statistics : Number of formulae       :  182 (5269 expanded)
%              Number of clauses        :   98 (1405 expanded)
%              Number of leaves         :   23 (1261 expanded)
%              Depth                    :   30
%              Number of atoms          :  463 (12699 expanded)
%              Number of equality atoms :  241 (5938 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r2_hidden(X0,k1_relat_1(X1))
      <=> k1_xboole_0 != k11_relat_1(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( r2_hidden(X0,k1_relat_1(X1))
      <=> k1_xboole_0 != k11_relat_1(X1,X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ( ( r2_hidden(X0,k1_relat_1(X1))
          | k1_xboole_0 = k11_relat_1(X1,X0) )
        & ( k1_xboole_0 != k11_relat_1(X1,X0)
          | ~ r2_hidden(X0,k1_relat_1(X1)) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f65,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,k1_relat_1(X1))
      | k1_xboole_0 = k11_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f20,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
     => ( k1_xboole_0 != X1
       => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
          & v1_funct_2(X2,k1_tarski(X0),X1)
          & v1_funct_1(X2) )
       => ( k1_xboole_0 != X1
         => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2) ) ) ),
    inference(negated_conjecture,[],[f20])).

fof(f41,plain,(
    ? [X0,X1,X2] :
      ( k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f42,plain,(
    ? [X0,X1,X2] :
      ( k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f41])).

fof(f50,plain,
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

fof(f51,plain,
    ( k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3)
    & k1_xboole_0 != sK2
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2)))
    & v1_funct_2(sK3,k1_tarski(sK1),sK2)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f42,f50])).

fof(f80,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2))) ),
    inference(cnf_transformation,[],[f51])).

fof(f4,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f6])).

fof(f83,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f60,f61])).

fof(f84,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f59,f83])).

fof(f89,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))) ),
    inference(definition_unfolding,[],[f80,f84])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] : k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] : k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f62,plain,(
    ! [X0,X1] :
      ( k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f85,plain,(
    ! [X0,X1] :
      ( k11_relat_1(X0,X1) = k9_relat_1(X0,k2_enumset1(X1,X1,X1,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f62,f84])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f63,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r2_hidden(X0,k1_relat_1(X1))
       => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k1_tarski(X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k1_tarski(X0)))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k1_tarski(X0)))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f33])).

fof(f72,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k1_tarski(X0)))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f87,plain,(
    ! [X0,X1] :
      ( k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k2_enumset1(X0,X0,X0,X0)))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f72,f84,f84])).

fof(f78,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f51])).

fof(f18,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f76,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f82,plain,(
    k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3) ),
    inference(cnf_transformation,[],[f51])).

fof(f88,plain,(
    k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) ),
    inference(definition_unfolding,[],[f82,f84,f84])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f17])).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f75,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => k7_relat_1(X1,X0) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f27])).

fof(f66,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f12,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f30,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f29])).

fof(f70,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f43])).

fof(f45,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f44,f45])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f40,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f39])).

fof(f77,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f79,plain,(
    v1_funct_2(sK3,k1_tarski(sK1),sK2) ),
    inference(cnf_transformation,[],[f51])).

fof(f90,plain,(
    v1_funct_2(sK3,k2_enumset1(sK1,sK1,sK1,sK1),sK2) ),
    inference(definition_unfolding,[],[f79,f84])).

fof(f81,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f51])).

fof(f15,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f73,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f11,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f68,plain,(
    k1_xboole_0 = k2_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f11])).

fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f48,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f47])).

fof(f57,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f48])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( k1_tarski(X0) = k1_relat_1(X1)
       => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f32,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f31])).

fof(f71,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f86,plain,(
    ! [X0,X1] :
      ( k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f71,f84,f84])).

fof(f67,plain,(
    k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f11])).

cnf(c_9,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | k11_relat_1(X1,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1070,plain,
    ( k11_relat_1(X0,X1) = k1_xboole_0
    | r2_hidden(X1,k1_relat_1(X0)) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_334,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_25])).

cnf(c_335,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_334])).

cnf(c_1064,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_335])).

cnf(c_743,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1214,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) = k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_743])).

cnf(c_1217,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_335])).

cnf(c_1218,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1217])).

cnf(c_1272,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1064,c_1214,c_1218])).

cnf(c_7,plain,
    ( ~ v1_relat_1(X0)
    | k9_relat_1(X0,k2_enumset1(X1,X1,X1,X1)) = k11_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_1072,plain,
    ( k9_relat_1(X0,k2_enumset1(X1,X1,X1,X1)) = k11_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2050,plain,
    ( k9_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)) = k11_relat_1(sK3,X0) ),
    inference(superposition,[status(thm)],[c_1272,c_1072])).

cnf(c_8,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1071,plain,
    ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1664,plain,
    ( k2_relat_1(k7_relat_1(sK3,X0)) = k9_relat_1(sK3,X0) ),
    inference(superposition,[status(thm)],[c_1272,c_1071])).

cnf(c_17,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k2_enumset1(X0,X0,X0,X0))) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_27,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_353,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k2_enumset1(X0,X0,X0,X0)))
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_27])).

cnf(c_354,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK3))
    | ~ v1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0))) ),
    inference(unflattening,[status(thm)],[c_353])).

cnf(c_1063,plain,
    ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)))
    | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_354])).

cnf(c_355,plain,
    ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)))
    | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_354])).

cnf(c_1619,plain,
    ( r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
    | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1063,c_355,c_1214,c_1218])).

cnf(c_1620,plain,
    ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)))
    | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
    inference(renaming,[status(thm)],[c_1619])).

cnf(c_1667,plain,
    ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k9_relat_1(sK3,k2_enumset1(X0,X0,X0,X0))
    | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1664,c_1620])).

cnf(c_2053,plain,
    ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k11_relat_1(sK3,X0)
    | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2050,c_1667])).

cnf(c_2626,plain,
    ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k11_relat_1(sK3,X0)
    | k11_relat_1(sK3,X0) = k1_xboole_0
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1070,c_2053])).

cnf(c_2865,plain,
    ( k11_relat_1(sK3,X0) = k1_xboole_0
    | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k11_relat_1(sK3,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2626,c_1214,c_1218])).

cnf(c_2866,plain,
    ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k11_relat_1(sK3,X0)
    | k11_relat_1(sK3,X0) = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_2865])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_325,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_25])).

cnf(c_326,plain,
    ( k2_relset_1(X0,X1,sK3) = k2_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_325])).

cnf(c_1227,plain,
    ( k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) = k2_relat_1(sK3) ),
    inference(equality_resolution,[status(thm)],[c_326])).

cnf(c_23,negated_conjecture,
    ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_1247,plain,
    ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_1227,c_23])).

cnf(c_2872,plain,
    ( k11_relat_1(sK3,sK1) != k2_relat_1(sK3)
    | k11_relat_1(sK3,sK1) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2866,c_1247])).

cnf(c_20,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v4_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_11,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_275,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(resolution,[status(thm)],[c_20,c_11])).

cnf(c_279,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relat_1(X0,X1) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_275,c_20,c_19,c_11])).

cnf(c_316,plain,
    ( k7_relat_1(X0,X1) = X0
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_279,c_25])).

cnf(c_317,plain,
    ( k7_relat_1(sK3,X0) = sK3
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_316])).

cnf(c_1224,plain,
    ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = sK3 ),
    inference(equality_resolution,[status(thm)],[c_317])).

cnf(c_1671,plain,
    ( k9_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1224,c_1664])).

cnf(c_2057,plain,
    ( k11_relat_1(sK3,sK1) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1671,c_2050])).

cnf(c_2875,plain,
    ( k11_relat_1(sK3,sK1) = k1_xboole_0
    | k2_relat_1(sK3) != k2_relat_1(sK3) ),
    inference(light_normalisation,[status(thm)],[c_2872,c_2057])).

cnf(c_2876,plain,
    ( k11_relat_1(sK3,sK1) = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_2875])).

cnf(c_14,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1068,plain,
    ( k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_1933,plain,
    ( k7_relat_1(sK3,X0) = k1_xboole_0
    | k9_relat_1(sK3,X0) != k1_xboole_0
    | v1_relat_1(k7_relat_1(sK3,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1664,c_1068])).

cnf(c_2234,plain,
    ( k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)) = k1_xboole_0
    | k11_relat_1(sK3,X0) != k1_xboole_0
    | v1_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2050,c_1933])).

cnf(c_2958,plain,
    ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
    | v1_relat_1(k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2876,c_2234])).

cnf(c_2961,plain,
    ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
    | v1_relat_1(sK3) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2958,c_1224])).

cnf(c_2962,plain,
    ( sK3 = k1_xboole_0
    | v1_relat_1(sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2961,c_1224])).

cnf(c_2235,plain,
    ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
    | k2_relat_1(sK3) != k1_xboole_0
    | v1_relat_1(k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1671,c_1933])).

cnf(c_2239,plain,
    ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
    | k2_relat_1(sK3) != k1_xboole_0
    | v1_relat_1(sK3) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2235,c_1224])).

cnf(c_2240,plain,
    ( k2_relat_1(sK3) != k1_xboole_0
    | sK3 = k1_xboole_0
    | v1_relat_1(sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2239,c_1224])).

cnf(c_2955,plain,
    ( k2_relat_1(sK3) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2876,c_2057])).

cnf(c_3076,plain,
    ( sK3 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2962,c_1214,c_1218,c_2240,c_2955])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1077,plain,
    ( r2_hidden(sK0(X0,X1),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_22,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f77])).

cnf(c_26,negated_conjecture,
    ( v1_funct_2(sK3,k2_enumset1(sK1,sK1,sK1,sK1),sK2) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_295,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | k2_enumset1(sK1,sK1,sK1,sK1) != X1
    | sK2 != X2
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_26])).

cnf(c_296,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)))
    | ~ r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1))
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3))
    | ~ v1_funct_1(sK3)
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_295])).

cnf(c_24,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_300,plain,
    ( ~ r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1))
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_296,c_27,c_25,c_24])).

cnf(c_1065,plain,
    ( r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_300])).

cnf(c_1539,plain,
    ( r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0),k2_relat_1(sK3)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1065,c_1227])).

cnf(c_1907,plain,
    ( r2_hidden(k1_funct_1(sK3,sK0(k2_enumset1(sK1,sK1,sK1,sK1),X0)),k2_relat_1(sK3)) = iProver_top
    | r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1077,c_1539])).

cnf(c_18,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1066,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2439,plain,
    ( r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top
    | r1_tarski(k2_relat_1(sK3),k1_funct_1(sK3,sK0(k2_enumset1(sK1,sK1,sK1,sK1),X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1907,c_1066])).

cnf(c_3082,plain,
    ( r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top
    | r1_tarski(k2_relat_1(k1_xboole_0),k1_funct_1(k1_xboole_0,sK0(k2_enumset1(sK1,sK1,sK1,sK1),X0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3076,c_2439])).

cnf(c_12,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_3165,plain,
    ( r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top
    | r1_tarski(k1_xboole_0,k1_funct_1(k1_xboole_0,sK0(k2_enumset1(sK1,sK1,sK1,sK1),X0))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3082,c_12])).

cnf(c_6,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1073,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_3864,plain,
    ( r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3165,c_1073])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1075,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2515,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1073,c_1075])).

cnf(c_3869,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3864,c_2515])).

cnf(c_16,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
    | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_368,plain,
    ( ~ v1_relat_1(X0)
    | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
    | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_27])).

cnf(c_369,plain,
    ( ~ v1_relat_1(sK3)
    | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_368])).

cnf(c_1062,plain,
    ( k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_369])).

cnf(c_1364,plain,
    ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
    | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1062,c_369,c_1214,c_1217])).

cnf(c_1365,plain,
    ( k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
    inference(renaming,[status(thm)],[c_1364])).

cnf(c_3093,plain,
    ( k2_enumset1(X0,X0,X0,X0) != k1_relat_1(k1_xboole_0)
    | k2_enumset1(k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0)) = k2_relat_1(k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_3076,c_1365])).

cnf(c_13,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_3121,plain,
    ( k2_enumset1(X0,X0,X0,X0) != k1_xboole_0
    | k2_enumset1(k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0)) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_3093,c_12,c_13])).

cnf(c_3189,plain,
    ( k2_enumset1(k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1)) = k1_xboole_0
    | k2_enumset1(sK1,sK1,sK1,sK1) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_3121])).

cnf(c_3095,plain,
    ( k2_enumset1(k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1)) != k2_relat_1(k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_3076,c_1247])).

cnf(c_3115,plain,
    ( k2_enumset1(k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1)) != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_3095,c_12])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3869,c_3189,c_3115])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n024.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 12:23:36 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 3.00/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.00/1.00  
% 3.00/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.00/1.00  
% 3.00/1.00  ------  iProver source info
% 3.00/1.00  
% 3.00/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.00/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.00/1.00  git: non_committed_changes: false
% 3.00/1.00  git: last_make_outside_of_git: false
% 3.00/1.00  
% 3.00/1.00  ------ 
% 3.00/1.00  
% 3.00/1.00  ------ Input Options
% 3.00/1.00  
% 3.00/1.00  --out_options                           all
% 3.00/1.00  --tptp_safe_out                         true
% 3.00/1.00  --problem_path                          ""
% 3.00/1.00  --include_path                          ""
% 3.00/1.00  --clausifier                            res/vclausify_rel
% 3.00/1.00  --clausifier_options                    --mode clausify
% 3.00/1.00  --stdin                                 false
% 3.00/1.00  --stats_out                             all
% 3.00/1.00  
% 3.00/1.00  ------ General Options
% 3.00/1.00  
% 3.00/1.00  --fof                                   false
% 3.00/1.00  --time_out_real                         305.
% 3.00/1.00  --time_out_virtual                      -1.
% 3.00/1.00  --symbol_type_check                     false
% 3.00/1.00  --clausify_out                          false
% 3.00/1.00  --sig_cnt_out                           false
% 3.00/1.00  --trig_cnt_out                          false
% 3.00/1.00  --trig_cnt_out_tolerance                1.
% 3.00/1.00  --trig_cnt_out_sk_spl                   false
% 3.00/1.00  --abstr_cl_out                          false
% 3.00/1.00  
% 3.00/1.00  ------ Global Options
% 3.00/1.00  
% 3.00/1.00  --schedule                              default
% 3.00/1.00  --add_important_lit                     false
% 3.00/1.00  --prop_solver_per_cl                    1000
% 3.00/1.00  --min_unsat_core                        false
% 3.00/1.00  --soft_assumptions                      false
% 3.00/1.00  --soft_lemma_size                       3
% 3.00/1.00  --prop_impl_unit_size                   0
% 3.00/1.00  --prop_impl_unit                        []
% 3.00/1.00  --share_sel_clauses                     true
% 3.00/1.00  --reset_solvers                         false
% 3.00/1.00  --bc_imp_inh                            [conj_cone]
% 3.00/1.00  --conj_cone_tolerance                   3.
% 3.00/1.00  --extra_neg_conj                        none
% 3.00/1.00  --large_theory_mode                     true
% 3.00/1.00  --prolific_symb_bound                   200
% 3.00/1.00  --lt_threshold                          2000
% 3.00/1.00  --clause_weak_htbl                      true
% 3.00/1.00  --gc_record_bc_elim                     false
% 3.00/1.00  
% 3.00/1.00  ------ Preprocessing Options
% 3.00/1.00  
% 3.00/1.00  --preprocessing_flag                    true
% 3.00/1.00  --time_out_prep_mult                    0.1
% 3.00/1.00  --splitting_mode                        input
% 3.00/1.00  --splitting_grd                         true
% 3.00/1.00  --splitting_cvd                         false
% 3.00/1.00  --splitting_cvd_svl                     false
% 3.00/1.00  --splitting_nvd                         32
% 3.00/1.00  --sub_typing                            true
% 3.00/1.00  --prep_gs_sim                           true
% 3.00/1.00  --prep_unflatten                        true
% 3.00/1.00  --prep_res_sim                          true
% 3.00/1.00  --prep_upred                            true
% 3.00/1.00  --prep_sem_filter                       exhaustive
% 3.00/1.00  --prep_sem_filter_out                   false
% 3.00/1.00  --pred_elim                             true
% 3.00/1.00  --res_sim_input                         true
% 3.00/1.00  --eq_ax_congr_red                       true
% 3.00/1.00  --pure_diseq_elim                       true
% 3.00/1.00  --brand_transform                       false
% 3.00/1.00  --non_eq_to_eq                          false
% 3.00/1.00  --prep_def_merge                        true
% 3.00/1.00  --prep_def_merge_prop_impl              false
% 3.00/1.00  --prep_def_merge_mbd                    true
% 3.00/1.00  --prep_def_merge_tr_red                 false
% 3.00/1.00  --prep_def_merge_tr_cl                  false
% 3.00/1.00  --smt_preprocessing                     true
% 3.00/1.00  --smt_ac_axioms                         fast
% 3.00/1.00  --preprocessed_out                      false
% 3.00/1.00  --preprocessed_stats                    false
% 3.00/1.00  
% 3.00/1.00  ------ Abstraction refinement Options
% 3.00/1.00  
% 3.00/1.00  --abstr_ref                             []
% 3.00/1.00  --abstr_ref_prep                        false
% 3.00/1.00  --abstr_ref_until_sat                   false
% 3.00/1.00  --abstr_ref_sig_restrict                funpre
% 3.00/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.00/1.00  --abstr_ref_under                       []
% 3.00/1.00  
% 3.00/1.00  ------ SAT Options
% 3.00/1.00  
% 3.00/1.00  --sat_mode                              false
% 3.00/1.00  --sat_fm_restart_options                ""
% 3.00/1.00  --sat_gr_def                            false
% 3.00/1.00  --sat_epr_types                         true
% 3.00/1.00  --sat_non_cyclic_types                  false
% 3.00/1.00  --sat_finite_models                     false
% 3.00/1.00  --sat_fm_lemmas                         false
% 3.00/1.00  --sat_fm_prep                           false
% 3.00/1.00  --sat_fm_uc_incr                        true
% 3.00/1.00  --sat_out_model                         small
% 3.00/1.00  --sat_out_clauses                       false
% 3.00/1.00  
% 3.00/1.00  ------ QBF Options
% 3.00/1.00  
% 3.00/1.00  --qbf_mode                              false
% 3.00/1.00  --qbf_elim_univ                         false
% 3.00/1.00  --qbf_dom_inst                          none
% 3.00/1.00  --qbf_dom_pre_inst                      false
% 3.00/1.00  --qbf_sk_in                             false
% 3.00/1.00  --qbf_pred_elim                         true
% 3.00/1.00  --qbf_split                             512
% 3.00/1.00  
% 3.00/1.00  ------ BMC1 Options
% 3.00/1.00  
% 3.00/1.00  --bmc1_incremental                      false
% 3.00/1.00  --bmc1_axioms                           reachable_all
% 3.00/1.00  --bmc1_min_bound                        0
% 3.00/1.00  --bmc1_max_bound                        -1
% 3.00/1.00  --bmc1_max_bound_default                -1
% 3.00/1.00  --bmc1_symbol_reachability              true
% 3.00/1.00  --bmc1_property_lemmas                  false
% 3.00/1.00  --bmc1_k_induction                      false
% 3.00/1.00  --bmc1_non_equiv_states                 false
% 3.00/1.00  --bmc1_deadlock                         false
% 3.00/1.00  --bmc1_ucm                              false
% 3.00/1.00  --bmc1_add_unsat_core                   none
% 3.00/1.00  --bmc1_unsat_core_children              false
% 3.00/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.00/1.00  --bmc1_out_stat                         full
% 3.00/1.00  --bmc1_ground_init                      false
% 3.00/1.00  --bmc1_pre_inst_next_state              false
% 3.00/1.00  --bmc1_pre_inst_state                   false
% 3.00/1.00  --bmc1_pre_inst_reach_state             false
% 3.00/1.00  --bmc1_out_unsat_core                   false
% 3.00/1.00  --bmc1_aig_witness_out                  false
% 3.00/1.00  --bmc1_verbose                          false
% 3.00/1.00  --bmc1_dump_clauses_tptp                false
% 3.00/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.00/1.00  --bmc1_dump_file                        -
% 3.00/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.00/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.00/1.00  --bmc1_ucm_extend_mode                  1
% 3.00/1.00  --bmc1_ucm_init_mode                    2
% 3.00/1.00  --bmc1_ucm_cone_mode                    none
% 3.00/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.00/1.00  --bmc1_ucm_relax_model                  4
% 3.00/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.00/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.00/1.00  --bmc1_ucm_layered_model                none
% 3.00/1.00  --bmc1_ucm_max_lemma_size               10
% 3.00/1.00  
% 3.00/1.00  ------ AIG Options
% 3.00/1.00  
% 3.00/1.00  --aig_mode                              false
% 3.00/1.00  
% 3.00/1.00  ------ Instantiation Options
% 3.00/1.00  
% 3.00/1.00  --instantiation_flag                    true
% 3.00/1.00  --inst_sos_flag                         false
% 3.00/1.00  --inst_sos_phase                        true
% 3.00/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.00/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.00/1.00  --inst_lit_sel_side                     num_symb
% 3.00/1.00  --inst_solver_per_active                1400
% 3.00/1.00  --inst_solver_calls_frac                1.
% 3.00/1.00  --inst_passive_queue_type               priority_queues
% 3.00/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.00/1.00  --inst_passive_queues_freq              [25;2]
% 3.00/1.00  --inst_dismatching                      true
% 3.00/1.00  --inst_eager_unprocessed_to_passive     true
% 3.00/1.00  --inst_prop_sim_given                   true
% 3.00/1.00  --inst_prop_sim_new                     false
% 3.00/1.00  --inst_subs_new                         false
% 3.00/1.00  --inst_eq_res_simp                      false
% 3.00/1.00  --inst_subs_given                       false
% 3.00/1.00  --inst_orphan_elimination               true
% 3.00/1.00  --inst_learning_loop_flag               true
% 3.00/1.00  --inst_learning_start                   3000
% 3.00/1.00  --inst_learning_factor                  2
% 3.00/1.00  --inst_start_prop_sim_after_learn       3
% 3.00/1.00  --inst_sel_renew                        solver
% 3.00/1.00  --inst_lit_activity_flag                true
% 3.00/1.00  --inst_restr_to_given                   false
% 3.00/1.00  --inst_activity_threshold               500
% 3.00/1.00  --inst_out_proof                        true
% 3.00/1.00  
% 3.00/1.00  ------ Resolution Options
% 3.00/1.00  
% 3.00/1.00  --resolution_flag                       true
% 3.00/1.00  --res_lit_sel                           adaptive
% 3.00/1.00  --res_lit_sel_side                      none
% 3.00/1.00  --res_ordering                          kbo
% 3.00/1.00  --res_to_prop_solver                    active
% 3.00/1.00  --res_prop_simpl_new                    false
% 3.00/1.00  --res_prop_simpl_given                  true
% 3.00/1.00  --res_passive_queue_type                priority_queues
% 3.00/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.00/1.00  --res_passive_queues_freq               [15;5]
% 3.00/1.00  --res_forward_subs                      full
% 3.00/1.00  --res_backward_subs                     full
% 3.00/1.00  --res_forward_subs_resolution           true
% 3.00/1.00  --res_backward_subs_resolution          true
% 3.00/1.00  --res_orphan_elimination                true
% 3.00/1.00  --res_time_limit                        2.
% 3.00/1.00  --res_out_proof                         true
% 3.00/1.00  
% 3.00/1.00  ------ Superposition Options
% 3.00/1.00  
% 3.00/1.00  --superposition_flag                    true
% 3.00/1.00  --sup_passive_queue_type                priority_queues
% 3.00/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.00/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.00/1.00  --demod_completeness_check              fast
% 3.00/1.00  --demod_use_ground                      true
% 3.00/1.00  --sup_to_prop_solver                    passive
% 3.00/1.00  --sup_prop_simpl_new                    true
% 3.00/1.00  --sup_prop_simpl_given                  true
% 3.00/1.00  --sup_fun_splitting                     false
% 3.00/1.00  --sup_smt_interval                      50000
% 3.00/1.00  
% 3.00/1.00  ------ Superposition Simplification Setup
% 3.00/1.00  
% 3.00/1.00  --sup_indices_passive                   []
% 3.00/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.00/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/1.00  --sup_full_bw                           [BwDemod]
% 3.00/1.00  --sup_immed_triv                        [TrivRules]
% 3.00/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.00/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/1.00  --sup_immed_bw_main                     []
% 3.00/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.00/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.00/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.00/1.00  
% 3.00/1.00  ------ Combination Options
% 3.00/1.00  
% 3.00/1.00  --comb_res_mult                         3
% 3.00/1.00  --comb_sup_mult                         2
% 3.00/1.00  --comb_inst_mult                        10
% 3.00/1.00  
% 3.00/1.00  ------ Debug Options
% 3.00/1.00  
% 3.00/1.00  --dbg_backtrace                         false
% 3.00/1.00  --dbg_dump_prop_clauses                 false
% 3.00/1.00  --dbg_dump_prop_clauses_file            -
% 3.00/1.00  --dbg_out_stat                          false
% 3.00/1.00  ------ Parsing...
% 3.00/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.00/1.00  
% 3.00/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 3.00/1.00  
% 3.00/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.00/1.00  
% 3.00/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.00/1.00  ------ Proving...
% 3.00/1.00  ------ Problem Properties 
% 3.00/1.00  
% 3.00/1.00  
% 3.00/1.00  clauses                                 23
% 3.00/1.00  conjectures                             2
% 3.00/1.00  EPR                                     6
% 3.00/1.00  Horn                                    21
% 3.00/1.00  unary                                   6
% 3.00/1.00  binary                                  9
% 3.00/1.00  lits                                    48
% 3.00/1.00  lits eq                                 21
% 3.00/1.00  fd_pure                                 0
% 3.00/1.00  fd_pseudo                               0
% 3.00/1.00  fd_cond                                 2
% 3.00/1.00  fd_pseudo_cond                          1
% 3.00/1.00  AC symbols                              0
% 3.00/1.00  
% 3.00/1.00  ------ Schedule dynamic 5 is on 
% 3.00/1.00  
% 3.00/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.00/1.00  
% 3.00/1.00  
% 3.00/1.00  ------ 
% 3.00/1.00  Current options:
% 3.00/1.00  ------ 
% 3.00/1.00  
% 3.00/1.00  ------ Input Options
% 3.00/1.00  
% 3.00/1.00  --out_options                           all
% 3.00/1.00  --tptp_safe_out                         true
% 3.00/1.00  --problem_path                          ""
% 3.00/1.00  --include_path                          ""
% 3.00/1.00  --clausifier                            res/vclausify_rel
% 3.00/1.00  --clausifier_options                    --mode clausify
% 3.00/1.00  --stdin                                 false
% 3.00/1.00  --stats_out                             all
% 3.00/1.00  
% 3.00/1.00  ------ General Options
% 3.00/1.00  
% 3.00/1.00  --fof                                   false
% 3.00/1.00  --time_out_real                         305.
% 3.00/1.00  --time_out_virtual                      -1.
% 3.00/1.00  --symbol_type_check                     false
% 3.00/1.00  --clausify_out                          false
% 3.00/1.00  --sig_cnt_out                           false
% 3.00/1.00  --trig_cnt_out                          false
% 3.00/1.00  --trig_cnt_out_tolerance                1.
% 3.00/1.00  --trig_cnt_out_sk_spl                   false
% 3.00/1.00  --abstr_cl_out                          false
% 3.00/1.00  
% 3.00/1.00  ------ Global Options
% 3.00/1.00  
% 3.00/1.00  --schedule                              default
% 3.00/1.00  --add_important_lit                     false
% 3.00/1.00  --prop_solver_per_cl                    1000
% 3.00/1.00  --min_unsat_core                        false
% 3.00/1.00  --soft_assumptions                      false
% 3.00/1.00  --soft_lemma_size                       3
% 3.00/1.00  --prop_impl_unit_size                   0
% 3.00/1.00  --prop_impl_unit                        []
% 3.00/1.00  --share_sel_clauses                     true
% 3.00/1.00  --reset_solvers                         false
% 3.00/1.00  --bc_imp_inh                            [conj_cone]
% 3.00/1.00  --conj_cone_tolerance                   3.
% 3.00/1.00  --extra_neg_conj                        none
% 3.00/1.00  --large_theory_mode                     true
% 3.00/1.00  --prolific_symb_bound                   200
% 3.00/1.00  --lt_threshold                          2000
% 3.00/1.00  --clause_weak_htbl                      true
% 3.00/1.00  --gc_record_bc_elim                     false
% 3.00/1.00  
% 3.00/1.00  ------ Preprocessing Options
% 3.00/1.00  
% 3.00/1.00  --preprocessing_flag                    true
% 3.00/1.00  --time_out_prep_mult                    0.1
% 3.00/1.00  --splitting_mode                        input
% 3.00/1.00  --splitting_grd                         true
% 3.00/1.00  --splitting_cvd                         false
% 3.00/1.00  --splitting_cvd_svl                     false
% 3.00/1.00  --splitting_nvd                         32
% 3.00/1.00  --sub_typing                            true
% 3.00/1.00  --prep_gs_sim                           true
% 3.00/1.00  --prep_unflatten                        true
% 3.00/1.00  --prep_res_sim                          true
% 3.00/1.00  --prep_upred                            true
% 3.00/1.00  --prep_sem_filter                       exhaustive
% 3.00/1.00  --prep_sem_filter_out                   false
% 3.00/1.00  --pred_elim                             true
% 3.00/1.00  --res_sim_input                         true
% 3.00/1.00  --eq_ax_congr_red                       true
% 3.00/1.00  --pure_diseq_elim                       true
% 3.00/1.00  --brand_transform                       false
% 3.00/1.00  --non_eq_to_eq                          false
% 3.00/1.00  --prep_def_merge                        true
% 3.00/1.00  --prep_def_merge_prop_impl              false
% 3.00/1.00  --prep_def_merge_mbd                    true
% 3.00/1.00  --prep_def_merge_tr_red                 false
% 3.00/1.00  --prep_def_merge_tr_cl                  false
% 3.00/1.00  --smt_preprocessing                     true
% 3.00/1.00  --smt_ac_axioms                         fast
% 3.00/1.00  --preprocessed_out                      false
% 3.00/1.00  --preprocessed_stats                    false
% 3.00/1.00  
% 3.00/1.00  ------ Abstraction refinement Options
% 3.00/1.00  
% 3.00/1.00  --abstr_ref                             []
% 3.00/1.00  --abstr_ref_prep                        false
% 3.00/1.00  --abstr_ref_until_sat                   false
% 3.00/1.00  --abstr_ref_sig_restrict                funpre
% 3.00/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.00/1.00  --abstr_ref_under                       []
% 3.00/1.00  
% 3.00/1.00  ------ SAT Options
% 3.00/1.00  
% 3.00/1.00  --sat_mode                              false
% 3.00/1.00  --sat_fm_restart_options                ""
% 3.00/1.00  --sat_gr_def                            false
% 3.00/1.00  --sat_epr_types                         true
% 3.00/1.00  --sat_non_cyclic_types                  false
% 3.00/1.00  --sat_finite_models                     false
% 3.00/1.00  --sat_fm_lemmas                         false
% 3.00/1.00  --sat_fm_prep                           false
% 3.00/1.00  --sat_fm_uc_incr                        true
% 3.00/1.00  --sat_out_model                         small
% 3.00/1.00  --sat_out_clauses                       false
% 3.00/1.00  
% 3.00/1.00  ------ QBF Options
% 3.00/1.00  
% 3.00/1.00  --qbf_mode                              false
% 3.00/1.00  --qbf_elim_univ                         false
% 3.00/1.00  --qbf_dom_inst                          none
% 3.00/1.00  --qbf_dom_pre_inst                      false
% 3.00/1.00  --qbf_sk_in                             false
% 3.00/1.00  --qbf_pred_elim                         true
% 3.00/1.00  --qbf_split                             512
% 3.00/1.00  
% 3.00/1.00  ------ BMC1 Options
% 3.00/1.00  
% 3.00/1.00  --bmc1_incremental                      false
% 3.00/1.00  --bmc1_axioms                           reachable_all
% 3.00/1.00  --bmc1_min_bound                        0
% 3.00/1.00  --bmc1_max_bound                        -1
% 3.00/1.00  --bmc1_max_bound_default                -1
% 3.00/1.00  --bmc1_symbol_reachability              true
% 3.00/1.00  --bmc1_property_lemmas                  false
% 3.00/1.00  --bmc1_k_induction                      false
% 3.00/1.00  --bmc1_non_equiv_states                 false
% 3.00/1.00  --bmc1_deadlock                         false
% 3.00/1.00  --bmc1_ucm                              false
% 3.00/1.00  --bmc1_add_unsat_core                   none
% 3.00/1.00  --bmc1_unsat_core_children              false
% 3.00/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.00/1.00  --bmc1_out_stat                         full
% 3.00/1.00  --bmc1_ground_init                      false
% 3.00/1.00  --bmc1_pre_inst_next_state              false
% 3.00/1.00  --bmc1_pre_inst_state                   false
% 3.00/1.00  --bmc1_pre_inst_reach_state             false
% 3.00/1.00  --bmc1_out_unsat_core                   false
% 3.00/1.00  --bmc1_aig_witness_out                  false
% 3.00/1.00  --bmc1_verbose                          false
% 3.00/1.00  --bmc1_dump_clauses_tptp                false
% 3.00/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.00/1.00  --bmc1_dump_file                        -
% 3.00/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.00/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.00/1.00  --bmc1_ucm_extend_mode                  1
% 3.00/1.00  --bmc1_ucm_init_mode                    2
% 3.00/1.00  --bmc1_ucm_cone_mode                    none
% 3.00/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.00/1.00  --bmc1_ucm_relax_model                  4
% 3.00/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.00/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.00/1.00  --bmc1_ucm_layered_model                none
% 3.00/1.00  --bmc1_ucm_max_lemma_size               10
% 3.00/1.00  
% 3.00/1.00  ------ AIG Options
% 3.00/1.00  
% 3.00/1.00  --aig_mode                              false
% 3.00/1.00  
% 3.00/1.00  ------ Instantiation Options
% 3.00/1.00  
% 3.00/1.00  --instantiation_flag                    true
% 3.00/1.00  --inst_sos_flag                         false
% 3.00/1.00  --inst_sos_phase                        true
% 3.00/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.00/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.00/1.00  --inst_lit_sel_side                     none
% 3.00/1.00  --inst_solver_per_active                1400
% 3.00/1.00  --inst_solver_calls_frac                1.
% 3.00/1.00  --inst_passive_queue_type               priority_queues
% 3.00/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.00/1.00  --inst_passive_queues_freq              [25;2]
% 3.00/1.00  --inst_dismatching                      true
% 3.00/1.00  --inst_eager_unprocessed_to_passive     true
% 3.00/1.00  --inst_prop_sim_given                   true
% 3.00/1.00  --inst_prop_sim_new                     false
% 3.00/1.00  --inst_subs_new                         false
% 3.00/1.00  --inst_eq_res_simp                      false
% 3.00/1.00  --inst_subs_given                       false
% 3.00/1.00  --inst_orphan_elimination               true
% 3.00/1.00  --inst_learning_loop_flag               true
% 3.00/1.00  --inst_learning_start                   3000
% 3.00/1.00  --inst_learning_factor                  2
% 3.00/1.00  --inst_start_prop_sim_after_learn       3
% 3.00/1.00  --inst_sel_renew                        solver
% 3.00/1.00  --inst_lit_activity_flag                true
% 3.00/1.00  --inst_restr_to_given                   false
% 3.00/1.00  --inst_activity_threshold               500
% 3.00/1.00  --inst_out_proof                        true
% 3.00/1.00  
% 3.00/1.00  ------ Resolution Options
% 3.00/1.00  
% 3.00/1.00  --resolution_flag                       false
% 3.00/1.00  --res_lit_sel                           adaptive
% 3.00/1.00  --res_lit_sel_side                      none
% 3.00/1.00  --res_ordering                          kbo
% 3.00/1.00  --res_to_prop_solver                    active
% 3.00/1.00  --res_prop_simpl_new                    false
% 3.00/1.00  --res_prop_simpl_given                  true
% 3.00/1.00  --res_passive_queue_type                priority_queues
% 3.00/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.00/1.00  --res_passive_queues_freq               [15;5]
% 3.00/1.00  --res_forward_subs                      full
% 3.00/1.00  --res_backward_subs                     full
% 3.00/1.00  --res_forward_subs_resolution           true
% 3.00/1.00  --res_backward_subs_resolution          true
% 3.00/1.00  --res_orphan_elimination                true
% 3.00/1.00  --res_time_limit                        2.
% 3.00/1.00  --res_out_proof                         true
% 3.00/1.00  
% 3.00/1.00  ------ Superposition Options
% 3.00/1.00  
% 3.00/1.00  --superposition_flag                    true
% 3.00/1.00  --sup_passive_queue_type                priority_queues
% 3.00/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.00/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.00/1.00  --demod_completeness_check              fast
% 3.00/1.00  --demod_use_ground                      true
% 3.00/1.00  --sup_to_prop_solver                    passive
% 3.00/1.00  --sup_prop_simpl_new                    true
% 3.00/1.00  --sup_prop_simpl_given                  true
% 3.00/1.00  --sup_fun_splitting                     false
% 3.00/1.00  --sup_smt_interval                      50000
% 3.00/1.00  
% 3.00/1.00  ------ Superposition Simplification Setup
% 3.00/1.00  
% 3.00/1.00  --sup_indices_passive                   []
% 3.00/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.00/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/1.00  --sup_full_bw                           [BwDemod]
% 3.00/1.00  --sup_immed_triv                        [TrivRules]
% 3.00/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.00/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/1.00  --sup_immed_bw_main                     []
% 3.00/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.00/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.00/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.00/1.00  
% 3.00/1.00  ------ Combination Options
% 3.00/1.00  
% 3.00/1.00  --comb_res_mult                         3
% 3.00/1.00  --comb_sup_mult                         2
% 3.00/1.00  --comb_inst_mult                        10
% 3.00/1.00  
% 3.00/1.00  ------ Debug Options
% 3.00/1.00  
% 3.00/1.00  --dbg_backtrace                         false
% 3.00/1.00  --dbg_dump_prop_clauses                 false
% 3.00/1.00  --dbg_dump_prop_clauses_file            -
% 3.00/1.00  --dbg_out_stat                          false
% 3.00/1.00  
% 3.00/1.00  
% 3.00/1.00  
% 3.00/1.00  
% 3.00/1.00  ------ Proving...
% 3.00/1.00  
% 3.00/1.00  
% 3.00/1.00  % SZS status Theorem for theBenchmark.p
% 3.00/1.00  
% 3.00/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.00/1.00  
% 3.00/1.00  fof(f9,axiom,(
% 3.00/1.00    ! [X0,X1] : (v1_relat_1(X1) => (r2_hidden(X0,k1_relat_1(X1)) <=> k1_xboole_0 != k11_relat_1(X1,X0)))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f26,plain,(
% 3.00/1.00    ! [X0,X1] : ((r2_hidden(X0,k1_relat_1(X1)) <=> k1_xboole_0 != k11_relat_1(X1,X0)) | ~v1_relat_1(X1))),
% 3.00/1.00    inference(ennf_transformation,[],[f9])).
% 3.00/1.00  
% 3.00/1.00  fof(f49,plain,(
% 3.00/1.00    ! [X0,X1] : (((r2_hidden(X0,k1_relat_1(X1)) | k1_xboole_0 = k11_relat_1(X1,X0)) & (k1_xboole_0 != k11_relat_1(X1,X0) | ~r2_hidden(X0,k1_relat_1(X1)))) | ~v1_relat_1(X1))),
% 3.00/1.00    inference(nnf_transformation,[],[f26])).
% 3.00/1.00  
% 3.00/1.00  fof(f65,plain,(
% 3.00/1.00    ( ! [X0,X1] : (r2_hidden(X0,k1_relat_1(X1)) | k1_xboole_0 = k11_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f49])).
% 3.00/1.00  
% 3.00/1.00  fof(f16,axiom,(
% 3.00/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f36,plain,(
% 3.00/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/1.00    inference(ennf_transformation,[],[f16])).
% 3.00/1.00  
% 3.00/1.00  fof(f74,plain,(
% 3.00/1.00    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/1.00    inference(cnf_transformation,[],[f36])).
% 3.00/1.00  
% 3.00/1.00  fof(f20,conjecture,(
% 3.00/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2)))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f21,negated_conjecture,(
% 3.00/1.00    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2)))),
% 3.00/1.00    inference(negated_conjecture,[],[f20])).
% 3.00/1.00  
% 3.00/1.00  fof(f41,plain,(
% 3.00/1.00    ? [X0,X1,X2] : ((k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2) & k1_xboole_0 != X1) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)))),
% 3.00/1.00    inference(ennf_transformation,[],[f21])).
% 3.00/1.00  
% 3.00/1.00  fof(f42,plain,(
% 3.00/1.00    ? [X0,X1,X2] : (k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2))),
% 3.00/1.00    inference(flattening,[],[f41])).
% 3.00/1.00  
% 3.00/1.00  fof(f50,plain,(
% 3.00/1.00    ? [X0,X1,X2] : (k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3) & k1_xboole_0 != sK2 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2))) & v1_funct_2(sK3,k1_tarski(sK1),sK2) & v1_funct_1(sK3))),
% 3.00/1.00    introduced(choice_axiom,[])).
% 3.00/1.00  
% 3.00/1.00  fof(f51,plain,(
% 3.00/1.00    k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3) & k1_xboole_0 != sK2 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2))) & v1_funct_2(sK3,k1_tarski(sK1),sK2) & v1_funct_1(sK3)),
% 3.00/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f42,f50])).
% 3.00/1.00  
% 3.00/1.00  fof(f80,plain,(
% 3.00/1.00    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2)))),
% 3.00/1.00    inference(cnf_transformation,[],[f51])).
% 3.00/1.00  
% 3.00/1.00  fof(f4,axiom,(
% 3.00/1.00    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f59,plain,(
% 3.00/1.00    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f4])).
% 3.00/1.00  
% 3.00/1.00  fof(f5,axiom,(
% 3.00/1.00    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f60,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f5])).
% 3.00/1.00  
% 3.00/1.00  fof(f6,axiom,(
% 3.00/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f61,plain,(
% 3.00/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f6])).
% 3.00/1.00  
% 3.00/1.00  fof(f83,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 3.00/1.00    inference(definition_unfolding,[],[f60,f61])).
% 3.00/1.00  
% 3.00/1.00  fof(f84,plain,(
% 3.00/1.00    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 3.00/1.00    inference(definition_unfolding,[],[f59,f83])).
% 3.00/1.00  
% 3.00/1.00  fof(f89,plain,(
% 3.00/1.00    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)))),
% 3.00/1.00    inference(definition_unfolding,[],[f80,f84])).
% 3.00/1.00  
% 3.00/1.00  fof(f7,axiom,(
% 3.00/1.00    ! [X0] : (v1_relat_1(X0) => ! [X1] : k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1)))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f24,plain,(
% 3.00/1.00    ! [X0] : (! [X1] : k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1)) | ~v1_relat_1(X0))),
% 3.00/1.00    inference(ennf_transformation,[],[f7])).
% 3.00/1.00  
% 3.00/1.00  fof(f62,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k11_relat_1(X0,X1) = k9_relat_1(X0,k1_tarski(X1)) | ~v1_relat_1(X0)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f24])).
% 3.00/1.00  
% 3.00/1.00  fof(f85,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k11_relat_1(X0,X1) = k9_relat_1(X0,k2_enumset1(X1,X1,X1,X1)) | ~v1_relat_1(X0)) )),
% 3.00/1.00    inference(definition_unfolding,[],[f62,f84])).
% 3.00/1.00  
% 3.00/1.00  fof(f8,axiom,(
% 3.00/1.00    ! [X0,X1] : (v1_relat_1(X1) => k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0)))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f25,plain,(
% 3.00/1.00    ! [X0,X1] : (k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1))),
% 3.00/1.00    inference(ennf_transformation,[],[f8])).
% 3.00/1.00  
% 3.00/1.00  fof(f63,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k9_relat_1(X1,X0) = k2_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f25])).
% 3.00/1.00  
% 3.00/1.00  fof(f14,axiom,(
% 3.00/1.00    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r2_hidden(X0,k1_relat_1(X1)) => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k1_tarski(X0)))))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f33,plain,(
% 3.00/1.00    ! [X0,X1] : ((k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k1_tarski(X0))) | ~r2_hidden(X0,k1_relat_1(X1))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 3.00/1.00    inference(ennf_transformation,[],[f14])).
% 3.00/1.00  
% 3.00/1.00  fof(f34,plain,(
% 3.00/1.00    ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k1_tarski(X0))) | ~r2_hidden(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 3.00/1.00    inference(flattening,[],[f33])).
% 3.00/1.00  
% 3.00/1.00  fof(f72,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k1_tarski(X0))) | ~r2_hidden(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f34])).
% 3.00/1.00  
% 3.00/1.00  fof(f87,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k2_enumset1(X0,X0,X0,X0))) | ~r2_hidden(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.00/1.00    inference(definition_unfolding,[],[f72,f84,f84])).
% 3.00/1.00  
% 3.00/1.00  fof(f78,plain,(
% 3.00/1.00    v1_funct_1(sK3)),
% 3.00/1.00    inference(cnf_transformation,[],[f51])).
% 3.00/1.00  
% 3.00/1.00  fof(f18,axiom,(
% 3.00/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f38,plain,(
% 3.00/1.00    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/1.00    inference(ennf_transformation,[],[f18])).
% 3.00/1.00  
% 3.00/1.00  fof(f76,plain,(
% 3.00/1.00    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/1.00    inference(cnf_transformation,[],[f38])).
% 3.00/1.00  
% 3.00/1.00  fof(f82,plain,(
% 3.00/1.00    k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3)),
% 3.00/1.00    inference(cnf_transformation,[],[f51])).
% 3.00/1.00  
% 3.00/1.00  fof(f88,plain,(
% 3.00/1.00    k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)),
% 3.00/1.00    inference(definition_unfolding,[],[f82,f84,f84])).
% 3.00/1.00  
% 3.00/1.00  fof(f17,axiom,(
% 3.00/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f22,plain,(
% 3.00/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 3.00/1.00    inference(pure_predicate_removal,[],[f17])).
% 3.00/1.00  
% 3.00/1.00  fof(f37,plain,(
% 3.00/1.00    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/1.00    inference(ennf_transformation,[],[f22])).
% 3.00/1.00  
% 3.00/1.00  fof(f75,plain,(
% 3.00/1.00    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/1.00    inference(cnf_transformation,[],[f37])).
% 3.00/1.00  
% 3.00/1.00  fof(f10,axiom,(
% 3.00/1.00    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => k7_relat_1(X1,X0) = X1)),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f27,plain,(
% 3.00/1.00    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 3.00/1.00    inference(ennf_transformation,[],[f10])).
% 3.00/1.00  
% 3.00/1.00  fof(f28,plain,(
% 3.00/1.00    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.00/1.00    inference(flattening,[],[f27])).
% 3.00/1.00  
% 3.00/1.00  fof(f66,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f28])).
% 3.00/1.00  
% 3.00/1.00  fof(f12,axiom,(
% 3.00/1.00    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f29,plain,(
% 3.00/1.00    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 3.00/1.00    inference(ennf_transformation,[],[f12])).
% 3.00/1.00  
% 3.00/1.00  fof(f30,plain,(
% 3.00/1.00    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 3.00/1.00    inference(flattening,[],[f29])).
% 3.00/1.00  
% 3.00/1.00  fof(f70,plain,(
% 3.00/1.00    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f30])).
% 3.00/1.00  
% 3.00/1.00  fof(f1,axiom,(
% 3.00/1.00    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f23,plain,(
% 3.00/1.00    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 3.00/1.00    inference(ennf_transformation,[],[f1])).
% 3.00/1.00  
% 3.00/1.00  fof(f43,plain,(
% 3.00/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 3.00/1.00    inference(nnf_transformation,[],[f23])).
% 3.00/1.00  
% 3.00/1.00  fof(f44,plain,(
% 3.00/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.00/1.00    inference(rectify,[],[f43])).
% 3.00/1.00  
% 3.00/1.00  fof(f45,plain,(
% 3.00/1.00    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 3.00/1.00    introduced(choice_axiom,[])).
% 3.00/1.00  
% 3.00/1.00  fof(f46,plain,(
% 3.00/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.00/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f44,f45])).
% 3.00/1.00  
% 3.00/1.00  fof(f53,plain,(
% 3.00/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f46])).
% 3.00/1.00  
% 3.00/1.00  fof(f19,axiom,(
% 3.00/1.00    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1)))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f39,plain,(
% 3.00/1.00    ! [X0,X1,X2,X3] : (((r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1) | ~r2_hidden(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 3.00/1.00    inference(ennf_transformation,[],[f19])).
% 3.00/1.00  
% 3.00/1.00  fof(f40,plain,(
% 3.00/1.00    ! [X0,X1,X2,X3] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 3.00/1.00    inference(flattening,[],[f39])).
% 3.00/1.00  
% 3.00/1.00  fof(f77,plain,(
% 3.00/1.00    ( ! [X2,X0,X3,X1] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f40])).
% 3.00/1.00  
% 3.00/1.00  fof(f79,plain,(
% 3.00/1.00    v1_funct_2(sK3,k1_tarski(sK1),sK2)),
% 3.00/1.00    inference(cnf_transformation,[],[f51])).
% 3.00/1.00  
% 3.00/1.00  fof(f90,plain,(
% 3.00/1.00    v1_funct_2(sK3,k2_enumset1(sK1,sK1,sK1,sK1),sK2)),
% 3.00/1.00    inference(definition_unfolding,[],[f79,f84])).
% 3.00/1.00  
% 3.00/1.00  fof(f81,plain,(
% 3.00/1.00    k1_xboole_0 != sK2),
% 3.00/1.00    inference(cnf_transformation,[],[f51])).
% 3.00/1.00  
% 3.00/1.00  fof(f15,axiom,(
% 3.00/1.00    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f35,plain,(
% 3.00/1.00    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 3.00/1.00    inference(ennf_transformation,[],[f15])).
% 3.00/1.00  
% 3.00/1.00  fof(f73,plain,(
% 3.00/1.00    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f35])).
% 3.00/1.00  
% 3.00/1.00  fof(f11,axiom,(
% 3.00/1.00    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f68,plain,(
% 3.00/1.00    k1_xboole_0 = k2_relat_1(k1_xboole_0)),
% 3.00/1.00    inference(cnf_transformation,[],[f11])).
% 3.00/1.00  
% 3.00/1.00  fof(f3,axiom,(
% 3.00/1.00    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f58,plain,(
% 3.00/1.00    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f3])).
% 3.00/1.00  
% 3.00/1.00  fof(f2,axiom,(
% 3.00/1.00    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f47,plain,(
% 3.00/1.00    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.00/1.00    inference(nnf_transformation,[],[f2])).
% 3.00/1.00  
% 3.00/1.00  fof(f48,plain,(
% 3.00/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.00/1.00    inference(flattening,[],[f47])).
% 3.00/1.00  
% 3.00/1.00  fof(f57,plain,(
% 3.00/1.00    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f48])).
% 3.00/1.00  
% 3.00/1.00  fof(f13,axiom,(
% 3.00/1.00    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (k1_tarski(X0) = k1_relat_1(X1) => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)))),
% 3.00/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/1.00  
% 3.00/1.00  fof(f31,plain,(
% 3.00/1.00    ! [X0,X1] : ((k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 3.00/1.00    inference(ennf_transformation,[],[f13])).
% 3.00/1.00  
% 3.00/1.00  fof(f32,plain,(
% 3.00/1.00    ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 3.00/1.00    inference(flattening,[],[f31])).
% 3.00/1.00  
% 3.00/1.00  fof(f71,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.00/1.00    inference(cnf_transformation,[],[f32])).
% 3.00/1.00  
% 3.00/1.00  fof(f86,plain,(
% 3.00/1.00    ( ! [X0,X1] : (k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1) | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.00/1.00    inference(definition_unfolding,[],[f71,f84,f84])).
% 3.00/1.00  
% 3.00/1.00  fof(f67,plain,(
% 3.00/1.00    k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 3.00/1.00    inference(cnf_transformation,[],[f11])).
% 3.00/1.00  
% 3.00/1.00  cnf(c_9,plain,
% 3.00/1.00      ( r2_hidden(X0,k1_relat_1(X1))
% 3.00/1.00      | ~ v1_relat_1(X1)
% 3.00/1.00      | k11_relat_1(X1,X0) = k1_xboole_0 ),
% 3.00/1.00      inference(cnf_transformation,[],[f65]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1070,plain,
% 3.00/1.00      ( k11_relat_1(X0,X1) = k1_xboole_0
% 3.00/1.00      | r2_hidden(X1,k1_relat_1(X0)) = iProver_top
% 3.00/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_19,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | v1_relat_1(X0) ),
% 3.00/1.00      inference(cnf_transformation,[],[f74]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_25,negated_conjecture,
% 3.00/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))) ),
% 3.00/1.00      inference(cnf_transformation,[],[f89]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_334,plain,
% 3.00/1.00      ( v1_relat_1(X0)
% 3.00/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 3.00/1.00      | sK3 != X0 ),
% 3.00/1.00      inference(resolution_lifted,[status(thm)],[c_19,c_25]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_335,plain,
% 3.00/1.00      ( v1_relat_1(sK3)
% 3.00/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 3.00/1.00      inference(unflattening,[status(thm)],[c_334]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1064,plain,
% 3.00/1.00      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 3.00/1.00      | v1_relat_1(sK3) = iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_335]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_743,plain,( X0 = X0 ),theory(equality) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1214,plain,
% 3.00/1.00      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) = k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) ),
% 3.00/1.00      inference(instantiation,[status(thm)],[c_743]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1217,plain,
% 3.00/1.00      ( v1_relat_1(sK3)
% 3.00/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) ),
% 3.00/1.00      inference(instantiation,[status(thm)],[c_335]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1218,plain,
% 3.00/1.00      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))
% 3.00/1.00      | v1_relat_1(sK3) = iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_1217]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1272,plain,
% 3.00/1.00      ( v1_relat_1(sK3) = iProver_top ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_1064,c_1214,c_1218]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_7,plain,
% 3.00/1.00      ( ~ v1_relat_1(X0)
% 3.00/1.00      | k9_relat_1(X0,k2_enumset1(X1,X1,X1,X1)) = k11_relat_1(X0,X1) ),
% 3.00/1.00      inference(cnf_transformation,[],[f85]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1072,plain,
% 3.00/1.00      ( k9_relat_1(X0,k2_enumset1(X1,X1,X1,X1)) = k11_relat_1(X0,X1)
% 3.00/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2050,plain,
% 3.00/1.00      ( k9_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)) = k11_relat_1(sK3,X0) ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1272,c_1072]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_8,plain,
% 3.00/1.00      ( ~ v1_relat_1(X0)
% 3.00/1.00      | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 3.00/1.00      inference(cnf_transformation,[],[f63]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1071,plain,
% 3.00/1.00      ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
% 3.00/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1664,plain,
% 3.00/1.00      ( k2_relat_1(k7_relat_1(sK3,X0)) = k9_relat_1(sK3,X0) ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1272,c_1071]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_17,plain,
% 3.00/1.00      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 3.00/1.00      | ~ v1_funct_1(X1)
% 3.00/1.00      | ~ v1_relat_1(X1)
% 3.00/1.00      | k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k2_enumset1(X0,X0,X0,X0))) ),
% 3.00/1.00      inference(cnf_transformation,[],[f87]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_27,negated_conjecture,
% 3.00/1.00      ( v1_funct_1(sK3) ),
% 3.00/1.00      inference(cnf_transformation,[],[f78]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_353,plain,
% 3.00/1.00      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 3.00/1.00      | ~ v1_relat_1(X1)
% 3.00/1.00      | k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(k7_relat_1(X1,k2_enumset1(X0,X0,X0,X0)))
% 3.00/1.00      | sK3 != X1 ),
% 3.00/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_27]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_354,plain,
% 3.00/1.00      ( ~ r2_hidden(X0,k1_relat_1(sK3))
% 3.00/1.00      | ~ v1_relat_1(sK3)
% 3.00/1.00      | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0))) ),
% 3.00/1.00      inference(unflattening,[status(thm)],[c_353]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1063,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)))
% 3.00/1.00      | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
% 3.00/1.00      | v1_relat_1(sK3) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_354]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_355,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)))
% 3.00/1.00      | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
% 3.00/1.00      | v1_relat_1(sK3) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_354]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1619,plain,
% 3.00/1.00      ( r2_hidden(X0,k1_relat_1(sK3)) != iProver_top
% 3.00/1.00      | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0))) ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_1063,c_355,c_1214,c_1218]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1620,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)))
% 3.00/1.00      | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
% 3.00/1.00      inference(renaming,[status(thm)],[c_1619]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1667,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k9_relat_1(sK3,k2_enumset1(X0,X0,X0,X0))
% 3.00/1.00      | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_1664,c_1620]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2053,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k11_relat_1(sK3,X0)
% 3.00/1.00      | r2_hidden(X0,k1_relat_1(sK3)) != iProver_top ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_2050,c_1667]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2626,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k11_relat_1(sK3,X0)
% 3.00/1.00      | k11_relat_1(sK3,X0) = k1_xboole_0
% 3.00/1.00      | v1_relat_1(sK3) != iProver_top ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1070,c_2053]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2865,plain,
% 3.00/1.00      ( k11_relat_1(sK3,X0) = k1_xboole_0
% 3.00/1.00      | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k11_relat_1(sK3,X0) ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_2626,c_1214,c_1218]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2866,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k11_relat_1(sK3,X0)
% 3.00/1.00      | k11_relat_1(sK3,X0) = k1_xboole_0 ),
% 3.00/1.00      inference(renaming,[status(thm)],[c_2865]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_21,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.00/1.00      inference(cnf_transformation,[],[f76]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_325,plain,
% 3.00/1.00      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.00/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 3.00/1.00      | sK3 != X2 ),
% 3.00/1.00      inference(resolution_lifted,[status(thm)],[c_21,c_25]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_326,plain,
% 3.00/1.00      ( k2_relset_1(X0,X1,sK3) = k2_relat_1(sK3)
% 3.00/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 3.00/1.00      inference(unflattening,[status(thm)],[c_325]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1227,plain,
% 3.00/1.00      ( k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) = k2_relat_1(sK3) ),
% 3.00/1.00      inference(equality_resolution,[status(thm)],[c_326]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_23,negated_conjecture,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) ),
% 3.00/1.00      inference(cnf_transformation,[],[f88]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1247,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relat_1(sK3) ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_1227,c_23]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2872,plain,
% 3.00/1.00      ( k11_relat_1(sK3,sK1) != k2_relat_1(sK3)
% 3.00/1.00      | k11_relat_1(sK3,sK1) = k1_xboole_0 ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_2866,c_1247]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_20,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | v4_relat_1(X0,X1) ),
% 3.00/1.00      inference(cnf_transformation,[],[f75]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_11,plain,
% 3.00/1.00      ( ~ v4_relat_1(X0,X1) | ~ v1_relat_1(X0) | k7_relat_1(X0,X1) = X0 ),
% 3.00/1.00      inference(cnf_transformation,[],[f66]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_275,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | ~ v1_relat_1(X0)
% 3.00/1.00      | k7_relat_1(X0,X1) = X0 ),
% 3.00/1.00      inference(resolution,[status(thm)],[c_20,c_11]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_279,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | k7_relat_1(X0,X1) = X0 ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_275,c_20,c_19,c_11]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_316,plain,
% 3.00/1.00      ( k7_relat_1(X0,X1) = X0
% 3.00/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 3.00/1.00      | sK3 != X0 ),
% 3.00/1.00      inference(resolution_lifted,[status(thm)],[c_279,c_25]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_317,plain,
% 3.00/1.00      ( k7_relat_1(sK3,X0) = sK3
% 3.00/1.00      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 3.00/1.00      inference(unflattening,[status(thm)],[c_316]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1224,plain,
% 3.00/1.00      ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = sK3 ),
% 3.00/1.00      inference(equality_resolution,[status(thm)],[c_317]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1671,plain,
% 3.00/1.00      ( k9_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k2_relat_1(sK3) ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1224,c_1664]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2057,plain,
% 3.00/1.00      ( k11_relat_1(sK3,sK1) = k2_relat_1(sK3) ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1671,c_2050]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2875,plain,
% 3.00/1.00      ( k11_relat_1(sK3,sK1) = k1_xboole_0
% 3.00/1.00      | k2_relat_1(sK3) != k2_relat_1(sK3) ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_2872,c_2057]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2876,plain,
% 3.00/1.00      ( k11_relat_1(sK3,sK1) = k1_xboole_0 ),
% 3.00/1.00      inference(equality_resolution_simp,[status(thm)],[c_2875]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_14,plain,
% 3.00/1.00      ( ~ v1_relat_1(X0)
% 3.00/1.00      | k2_relat_1(X0) != k1_xboole_0
% 3.00/1.00      | k1_xboole_0 = X0 ),
% 3.00/1.00      inference(cnf_transformation,[],[f70]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1068,plain,
% 3.00/1.00      ( k2_relat_1(X0) != k1_xboole_0
% 3.00/1.00      | k1_xboole_0 = X0
% 3.00/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1933,plain,
% 3.00/1.00      ( k7_relat_1(sK3,X0) = k1_xboole_0
% 3.00/1.00      | k9_relat_1(sK3,X0) != k1_xboole_0
% 3.00/1.00      | v1_relat_1(k7_relat_1(sK3,X0)) != iProver_top ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1664,c_1068]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2234,plain,
% 3.00/1.00      ( k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0)) = k1_xboole_0
% 3.00/1.00      | k11_relat_1(sK3,X0) != k1_xboole_0
% 3.00/1.00      | v1_relat_1(k7_relat_1(sK3,k2_enumset1(X0,X0,X0,X0))) != iProver_top ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_2050,c_1933]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2958,plain,
% 3.00/1.00      ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
% 3.00/1.00      | v1_relat_1(k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1))) != iProver_top ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_2876,c_2234]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2961,plain,
% 3.00/1.00      ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
% 3.00/1.00      | v1_relat_1(sK3) != iProver_top ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_2958,c_1224]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2962,plain,
% 3.00/1.00      ( sK3 = k1_xboole_0 | v1_relat_1(sK3) != iProver_top ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_2961,c_1224]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2235,plain,
% 3.00/1.00      ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
% 3.00/1.00      | k2_relat_1(sK3) != k1_xboole_0
% 3.00/1.00      | v1_relat_1(k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1))) != iProver_top ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1671,c_1933]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2239,plain,
% 3.00/1.00      ( k7_relat_1(sK3,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
% 3.00/1.00      | k2_relat_1(sK3) != k1_xboole_0
% 3.00/1.00      | v1_relat_1(sK3) != iProver_top ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_2235,c_1224]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2240,plain,
% 3.00/1.00      ( k2_relat_1(sK3) != k1_xboole_0
% 3.00/1.00      | sK3 = k1_xboole_0
% 3.00/1.00      | v1_relat_1(sK3) != iProver_top ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_2239,c_1224]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2955,plain,
% 3.00/1.00      ( k2_relat_1(sK3) = k1_xboole_0 ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_2876,c_2057]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3076,plain,
% 3.00/1.00      ( sK3 = k1_xboole_0 ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_2962,c_1214,c_1218,c_2240,c_2955]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1,plain,
% 3.00/1.00      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 3.00/1.00      inference(cnf_transformation,[],[f53]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1077,plain,
% 3.00/1.00      ( r2_hidden(sK0(X0,X1),X0) = iProver_top
% 3.00/1.00      | r1_tarski(X0,X1) = iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_22,plain,
% 3.00/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.00/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | ~ r2_hidden(X3,X1)
% 3.00/1.00      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 3.00/1.00      | ~ v1_funct_1(X0)
% 3.00/1.00      | k1_xboole_0 = X2 ),
% 3.00/1.00      inference(cnf_transformation,[],[f77]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_26,negated_conjecture,
% 3.00/1.00      ( v1_funct_2(sK3,k2_enumset1(sK1,sK1,sK1,sK1),sK2) ),
% 3.00/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_295,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | ~ r2_hidden(X3,X1)
% 3.00/1.00      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 3.00/1.00      | ~ v1_funct_1(X0)
% 3.00/1.00      | k2_enumset1(sK1,sK1,sK1,sK1) != X1
% 3.00/1.00      | sK2 != X2
% 3.00/1.00      | sK3 != X0
% 3.00/1.00      | k1_xboole_0 = X2 ),
% 3.00/1.00      inference(resolution_lifted,[status(thm)],[c_22,c_26]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_296,plain,
% 3.00/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)))
% 3.00/1.00      | ~ r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1))
% 3.00/1.00      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3))
% 3.00/1.00      | ~ v1_funct_1(sK3)
% 3.00/1.00      | k1_xboole_0 = sK2 ),
% 3.00/1.00      inference(unflattening,[status(thm)],[c_295]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_24,negated_conjecture,
% 3.00/1.00      ( k1_xboole_0 != sK2 ),
% 3.00/1.00      inference(cnf_transformation,[],[f81]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_300,plain,
% 3.00/1.00      ( ~ r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1))
% 3.00/1.00      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_296,c_27,c_25,c_24]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1065,plain,
% 3.00/1.00      ( r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
% 3.00/1.00      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) = iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_300]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1539,plain,
% 3.00/1.00      ( r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
% 3.00/1.00      | r2_hidden(k1_funct_1(sK3,X0),k2_relat_1(sK3)) = iProver_top ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_1065,c_1227]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1907,plain,
% 3.00/1.00      ( r2_hidden(k1_funct_1(sK3,sK0(k2_enumset1(sK1,sK1,sK1,sK1),X0)),k2_relat_1(sK3)) = iProver_top
% 3.00/1.00      | r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1077,c_1539]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_18,plain,
% 3.00/1.00      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 3.00/1.00      inference(cnf_transformation,[],[f73]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1066,plain,
% 3.00/1.00      ( r2_hidden(X0,X1) != iProver_top
% 3.00/1.00      | r1_tarski(X1,X0) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2439,plain,
% 3.00/1.00      ( r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top
% 3.00/1.00      | r1_tarski(k2_relat_1(sK3),k1_funct_1(sK3,sK0(k2_enumset1(sK1,sK1,sK1,sK1),X0))) != iProver_top ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1907,c_1066]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3082,plain,
% 3.00/1.00      ( r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top
% 3.00/1.00      | r1_tarski(k2_relat_1(k1_xboole_0),k1_funct_1(k1_xboole_0,sK0(k2_enumset1(sK1,sK1,sK1,sK1),X0))) != iProver_top ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_3076,c_2439]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_12,plain,
% 3.00/1.00      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.00/1.00      inference(cnf_transformation,[],[f68]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3165,plain,
% 3.00/1.00      ( r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top
% 3.00/1.00      | r1_tarski(k1_xboole_0,k1_funct_1(k1_xboole_0,sK0(k2_enumset1(sK1,sK1,sK1,sK1),X0))) != iProver_top ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_3082,c_12]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_6,plain,
% 3.00/1.00      ( r1_tarski(k1_xboole_0,X0) ),
% 3.00/1.00      inference(cnf_transformation,[],[f58]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1073,plain,
% 3.00/1.00      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3864,plain,
% 3.00/1.00      ( r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),X0) = iProver_top ),
% 3.00/1.00      inference(forward_subsumption_resolution,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_3165,c_1073]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3,plain,
% 3.00/1.00      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 3.00/1.00      inference(cnf_transformation,[],[f57]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1075,plain,
% 3.00/1.00      ( X0 = X1
% 3.00/1.00      | r1_tarski(X0,X1) != iProver_top
% 3.00/1.00      | r1_tarski(X1,X0) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2515,plain,
% 3.00/1.00      ( k1_xboole_0 = X0 | r1_tarski(X0,k1_xboole_0) != iProver_top ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1073,c_1075]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3869,plain,
% 3.00/1.00      ( k2_enumset1(sK1,sK1,sK1,sK1) = k1_xboole_0 ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_3864,c_2515]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_16,plain,
% 3.00/1.00      ( ~ v1_funct_1(X0)
% 3.00/1.00      | ~ v1_relat_1(X0)
% 3.00/1.00      | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
% 3.00/1.00      | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
% 3.00/1.00      inference(cnf_transformation,[],[f86]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_368,plain,
% 3.00/1.00      ( ~ v1_relat_1(X0)
% 3.00/1.00      | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
% 3.00/1.00      | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
% 3.00/1.00      | sK3 != X0 ),
% 3.00/1.00      inference(resolution_lifted,[status(thm)],[c_16,c_27]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_369,plain,
% 3.00/1.00      ( ~ v1_relat_1(sK3)
% 3.00/1.00      | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
% 3.00/1.00      | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
% 3.00/1.00      inference(unflattening,[status(thm)],[c_368]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1062,plain,
% 3.00/1.00      ( k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
% 3.00/1.00      | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
% 3.00/1.00      | v1_relat_1(sK3) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_369]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1364,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
% 3.00/1.00      | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3) ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_1062,c_369,c_1214,c_1217]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1365,plain,
% 3.00/1.00      ( k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
% 3.00/1.00      | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
% 3.00/1.00      inference(renaming,[status(thm)],[c_1364]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3093,plain,
% 3.00/1.00      ( k2_enumset1(X0,X0,X0,X0) != k1_relat_1(k1_xboole_0)
% 3.00/1.00      | k2_enumset1(k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0)) = k2_relat_1(k1_xboole_0) ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_3076,c_1365]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_13,plain,
% 3.00/1.00      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.00/1.00      inference(cnf_transformation,[],[f67]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3121,plain,
% 3.00/1.00      ( k2_enumset1(X0,X0,X0,X0) != k1_xboole_0
% 3.00/1.00      | k2_enumset1(k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0),k1_funct_1(k1_xboole_0,X0)) = k1_xboole_0 ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_3093,c_12,c_13]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3189,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1)) = k1_xboole_0
% 3.00/1.00      | k2_enumset1(sK1,sK1,sK1,sK1) != k1_xboole_0 ),
% 3.00/1.00      inference(instantiation,[status(thm)],[c_3121]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3095,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1)) != k2_relat_1(k1_xboole_0) ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_3076,c_1247]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3115,plain,
% 3.00/1.00      ( k2_enumset1(k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1),k1_funct_1(k1_xboole_0,sK1)) != k1_xboole_0 ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_3095,c_12]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(contradiction,plain,
% 3.00/1.00      ( $false ),
% 3.00/1.00      inference(minisat,[status(thm)],[c_3869,c_3189,c_3115]) ).
% 3.00/1.00  
% 3.00/1.00  
% 3.00/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.00/1.00  
% 3.00/1.00  ------                               Statistics
% 3.00/1.00  
% 3.00/1.00  ------ General
% 3.00/1.00  
% 3.00/1.00  abstr_ref_over_cycles:                  0
% 3.00/1.00  abstr_ref_under_cycles:                 0
% 3.00/1.00  gc_basic_clause_elim:                   0
% 3.00/1.00  forced_gc_time:                         0
% 3.00/1.00  parsing_time:                           0.007
% 3.00/1.00  unif_index_cands_time:                  0.
% 3.00/1.00  unif_index_add_time:                    0.
% 3.00/1.00  orderings_time:                         0.
% 3.00/1.00  out_proof_time:                         0.012
% 3.00/1.00  total_time:                             0.109
% 3.00/1.00  num_of_symbols:                         53
% 3.00/1.00  num_of_terms:                           3444
% 3.00/1.00  
% 3.00/1.00  ------ Preprocessing
% 3.00/1.00  
% 3.00/1.00  num_of_splits:                          0
% 3.00/1.00  num_of_split_atoms:                     0
% 3.00/1.00  num_of_reused_defs:                     0
% 3.00/1.00  num_eq_ax_congr_red:                    22
% 3.00/1.00  num_of_sem_filtered_clauses:            1
% 3.00/1.00  num_of_subtypes:                        0
% 3.00/1.00  monotx_restored_types:                  0
% 3.00/1.00  sat_num_of_epr_types:                   0
% 3.00/1.00  sat_num_of_non_cyclic_types:            0
% 3.00/1.00  sat_guarded_non_collapsed_types:        0
% 3.00/1.00  num_pure_diseq_elim:                    0
% 3.00/1.00  simp_replaced_by:                       0
% 3.00/1.00  res_preprocessed:                       125
% 3.00/1.00  prep_upred:                             0
% 3.00/1.00  prep_unflattend:                        20
% 3.00/1.00  smt_new_axioms:                         0
% 3.00/1.00  pred_elim_cands:                        3
% 3.00/1.00  pred_elim:                              4
% 3.00/1.00  pred_elim_cl:                           4
% 3.00/1.00  pred_elim_cycles:                       6
% 3.00/1.00  merged_defs:                            0
% 3.00/1.00  merged_defs_ncl:                        0
% 3.00/1.00  bin_hyper_res:                          0
% 3.00/1.00  prep_cycles:                            4
% 3.00/1.00  pred_elim_time:                         0.005
% 3.00/1.00  splitting_time:                         0.
% 3.00/1.00  sem_filter_time:                        0.
% 3.00/1.00  monotx_time:                            0.
% 3.00/1.00  subtype_inf_time:                       0.
% 3.00/1.00  
% 3.00/1.00  ------ Problem properties
% 3.00/1.00  
% 3.00/1.00  clauses:                                23
% 3.00/1.00  conjectures:                            2
% 3.00/1.00  epr:                                    6
% 3.00/1.00  horn:                                   21
% 3.00/1.00  ground:                                 4
% 3.00/1.00  unary:                                  6
% 3.00/1.00  binary:                                 9
% 3.00/1.00  lits:                                   48
% 3.00/1.00  lits_eq:                                21
% 3.00/1.00  fd_pure:                                0
% 3.00/1.00  fd_pseudo:                              0
% 3.00/1.00  fd_cond:                                2
% 3.00/1.00  fd_pseudo_cond:                         1
% 3.00/1.00  ac_symbols:                             0
% 3.00/1.00  
% 3.00/1.00  ------ Propositional Solver
% 3.00/1.00  
% 3.00/1.00  prop_solver_calls:                      27
% 3.00/1.00  prop_fast_solver_calls:                 777
% 3.00/1.00  smt_solver_calls:                       0
% 3.00/1.00  smt_fast_solver_calls:                  0
% 3.00/1.00  prop_num_of_clauses:                    1490
% 3.00/1.00  prop_preprocess_simplified:             4721
% 3.00/1.00  prop_fo_subsumed:                       12
% 3.00/1.00  prop_solver_time:                       0.
% 3.00/1.00  smt_solver_time:                        0.
% 3.00/1.00  smt_fast_solver_time:                   0.
% 3.00/1.00  prop_fast_solver_time:                  0.
% 3.00/1.00  prop_unsat_core_time:                   0.
% 3.00/1.00  
% 3.00/1.00  ------ QBF
% 3.00/1.00  
% 3.00/1.00  qbf_q_res:                              0
% 3.00/1.00  qbf_num_tautologies:                    0
% 3.00/1.00  qbf_prep_cycles:                        0
% 3.00/1.00  
% 3.00/1.00  ------ BMC1
% 3.00/1.00  
% 3.00/1.00  bmc1_current_bound:                     -1
% 3.00/1.00  bmc1_last_solved_bound:                 -1
% 3.00/1.00  bmc1_unsat_core_size:                   -1
% 3.00/1.00  bmc1_unsat_core_parents_size:           -1
% 3.00/1.00  bmc1_merge_next_fun:                    0
% 3.00/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.00/1.00  
% 3.00/1.00  ------ Instantiation
% 3.00/1.00  
% 3.00/1.00  inst_num_of_clauses:                    478
% 3.00/1.00  inst_num_in_passive:                    73
% 3.00/1.00  inst_num_in_active:                     240
% 3.00/1.00  inst_num_in_unprocessed:                165
% 3.00/1.00  inst_num_of_loops:                      310
% 3.00/1.00  inst_num_of_learning_restarts:          0
% 3.00/1.00  inst_num_moves_active_passive:          67
% 3.00/1.00  inst_lit_activity:                      0
% 3.00/1.00  inst_lit_activity_moves:                0
% 3.00/1.00  inst_num_tautologies:                   0
% 3.00/1.00  inst_num_prop_implied:                  0
% 3.00/1.00  inst_num_existing_simplified:           0
% 3.00/1.00  inst_num_eq_res_simplified:             0
% 3.00/1.00  inst_num_child_elim:                    0
% 3.00/1.00  inst_num_of_dismatching_blockings:      77
% 3.00/1.00  inst_num_of_non_proper_insts:           404
% 3.00/1.00  inst_num_of_duplicates:                 0
% 3.00/1.00  inst_inst_num_from_inst_to_res:         0
% 3.00/1.00  inst_dismatching_checking_time:         0.
% 3.00/1.00  
% 3.00/1.00  ------ Resolution
% 3.00/1.00  
% 3.00/1.00  res_num_of_clauses:                     0
% 3.00/1.00  res_num_in_passive:                     0
% 3.00/1.00  res_num_in_active:                      0
% 3.00/1.00  res_num_of_loops:                       129
% 3.00/1.00  res_forward_subset_subsumed:            62
% 3.00/1.00  res_backward_subset_subsumed:           2
% 3.00/1.00  res_forward_subsumed:                   0
% 3.00/1.00  res_backward_subsumed:                  0
% 3.00/1.00  res_forward_subsumption_resolution:     0
% 3.00/1.00  res_backward_subsumption_resolution:    0
% 3.00/1.00  res_clause_to_clause_subsumption:       138
% 3.00/1.00  res_orphan_elimination:                 0
% 3.00/1.00  res_tautology_del:                      24
% 3.00/1.00  res_num_eq_res_simplified:              0
% 3.00/1.00  res_num_sel_changes:                    0
% 3.00/1.00  res_moves_from_active_to_pass:          0
% 3.00/1.00  
% 3.00/1.00  ------ Superposition
% 3.00/1.00  
% 3.00/1.00  sup_time_total:                         0.
% 3.00/1.00  sup_time_generating:                    0.
% 3.00/1.00  sup_time_sim_full:                      0.
% 3.00/1.00  sup_time_sim_immed:                     0.
% 3.00/1.00  
% 3.00/1.00  sup_num_of_clauses:                     56
% 3.00/1.00  sup_num_in_active:                      36
% 3.00/1.00  sup_num_in_passive:                     20
% 3.00/1.00  sup_num_of_loops:                       60
% 3.00/1.00  sup_fw_superposition:                   31
% 3.00/1.00  sup_bw_superposition:                   26
% 3.00/1.00  sup_immediate_simplified:               22
% 3.00/1.00  sup_given_eliminated:                   1
% 3.00/1.00  comparisons_done:                       0
% 3.00/1.00  comparisons_avoided:                    0
% 3.00/1.00  
% 3.00/1.00  ------ Simplifications
% 3.00/1.00  
% 3.00/1.00  
% 3.00/1.00  sim_fw_subset_subsumed:                 7
% 3.00/1.00  sim_bw_subset_subsumed:                 1
% 3.00/1.00  sim_fw_subsumed:                        1
% 3.00/1.00  sim_bw_subsumed:                        0
% 3.00/1.00  sim_fw_subsumption_res:                 1
% 3.00/1.00  sim_bw_subsumption_res:                 0
% 3.00/1.00  sim_tautology_del:                      1
% 3.00/1.00  sim_eq_tautology_del:                   3
% 3.00/1.00  sim_eq_res_simp:                        2
% 3.00/1.00  sim_fw_demodulated:                     3
% 3.00/1.00  sim_bw_demodulated:                     26
% 3.00/1.00  sim_light_normalised:                   17
% 3.00/1.00  sim_joinable_taut:                      0
% 3.00/1.00  sim_joinable_simp:                      0
% 3.00/1.00  sim_ac_normalised:                      0
% 3.00/1.00  sim_smt_subsumption:                    0
% 3.00/1.00  
%------------------------------------------------------------------------------
