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
% DateTime   : Thu Dec  3 12:05:58 EST 2020

% Result     : Theorem 2.97s
% Output     : CNFRefutation 2.97s
% Verified   : 
% Statistics : Number of formulae       :  135 ( 889 expanded)
%              Number of clauses        :   64 ( 152 expanded)
%              Number of leaves         :   19 ( 234 expanded)
%              Depth                    :   18
%              Number of atoms          :  334 (2084 expanded)
%              Number of equality atoms :  150 ( 931 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f32])).

fof(f38,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f81,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f38])).

fof(f17,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r1_tarski(k2_relat_1(X1),X0)
       => ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
          & v1_funct_2(X1,k1_relat_1(X1),X0)
          & v1_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f28])).

fof(f64,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f18,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X3,k1_tarski(X0),X1)
        & v1_funct_1(X3) )
     => ( k1_xboole_0 != X1
       => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
          & v1_funct_2(X3,k1_tarski(X0),X1)
          & v1_funct_1(X3) )
       => ( k1_xboole_0 != X1
         => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) ) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f30,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))
      & k1_xboole_0 != X1
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X3,k1_tarski(X0),X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f31,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))
      & k1_xboole_0 != X1
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X3,k1_tarski(X0),X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f30])).

fof(f36,plain,
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

fof(f37,plain,
    ( ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0)))
    & k1_xboole_0 != sK1
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)))
    & v1_funct_2(sK3,k1_tarski(sK0),sK1)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f31,f36])).

fof(f65,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f55,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f67,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))) ),
    inference(cnf_transformation,[],[f37])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f8])).

fof(f70,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f46,f47])).

fof(f71,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f45,f70])).

fof(f72,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f44,f71])).

fof(f73,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f43,f72])).

fof(f74,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f42,f73])).

fof(f75,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f41,f74])).

fof(f78,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1))) ),
    inference(definition_unfolding,[],[f67,f75])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f48,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f10,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f50,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f49,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f11,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f11])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f53,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f16,axiom,(
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

fof(f26,plain,(
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
    inference(ennf_transformation,[],[f16])).

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
    inference(flattening,[],[f26])).

fof(f35,plain,(
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
    inference(nnf_transformation,[],[f27])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f66,plain,(
    v1_funct_2(sK3,k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f37])).

fof(f79,plain,(
    v1_funct_2(sK3,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1) ),
    inference(definition_unfolding,[],[f66,f75])).

fof(f68,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f37])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( k1_tarski(X0) = k1_relat_1(X1)
       => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f22,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f21])).

fof(f52,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f76,plain,(
    ! [X0,X1] :
      ( k6_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f52,f75,f75])).

fof(f69,plain,(
    ~ r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) ),
    inference(cnf_transformation,[],[f37])).

fof(f77,plain,(
    ~ r1_tarski(k7_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) ),
    inference(definition_unfolding,[],[f69,f75,f75])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1188,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_17,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_24,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_325,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_24])).

cnf(c_326,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X0)))
    | ~ r1_tarski(k2_relat_1(sK3),X0)
    | ~ v1_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_325])).

cnf(c_1178,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X0))) = iProver_top
    | r1_tarski(k2_relat_1(sK3),X0) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_326])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1182,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2270,plain,
    ( k7_relset_1(k1_relat_1(sK3),X0,sK3,X1) = k9_relat_1(sK3,X1)
    | r1_tarski(k2_relat_1(sK3),X0) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1178,c_1182])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1))) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1180,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1186,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1629,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1180,c_1186])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_3,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_183,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_3])).

cnf(c_184,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_183])).

cnf(c_229,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(bin_hyper_res,[status(thm)],[c_5,c_184])).

cnf(c_1340,plain,
    ( ~ r1_tarski(X0,k2_zfmisc_1(X1,X2))
    | v1_relat_1(X0)
    | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_229])).

cnf(c_1807,plain,
    ( ~ r1_tarski(sK3,k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1))
    | ~ v1_relat_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_1340])).

cnf(c_1808,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) != iProver_top
    | v1_relat_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1807])).

cnf(c_6,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1975,plain,
    ( v1_relat_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1976,plain,
    ( v1_relat_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1975])).

cnf(c_3137,plain,
    ( r1_tarski(k2_relat_1(sK3),X0) != iProver_top
    | k7_relset_1(k1_relat_1(sK3),X0,sK3,X1) = k9_relat_1(sK3,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2270,c_1629,c_1808,c_1976])).

cnf(c_3138,plain,
    ( k7_relset_1(k1_relat_1(sK3),X0,sK3,X1) = k9_relat_1(sK3,X1)
    | r1_tarski(k2_relat_1(sK3),X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_3137])).

cnf(c_3145,plain,
    ( k7_relset_1(k1_relat_1(sK3),k2_relat_1(sK3),sK3,X0) = k9_relat_1(sK3,X0) ),
    inference(superposition,[status(thm)],[c_1188,c_3138])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k7_relset_1(X1,X2,X0,X3),k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1184,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k7_relset_1(X1,X2,X0,X3),k1_zfmisc_1(X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_2377,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | r1_tarski(k7_relset_1(X1,X2,X0,X3),X2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1184,c_1186])).

cnf(c_3577,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) != iProver_top
    | r1_tarski(k9_relat_1(sK3,X0),k2_relat_1(sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3145,c_2377])).

cnf(c_2769,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3))))
    | ~ r1_tarski(k2_relat_1(sK3),k2_relat_1(sK3))
    | ~ v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_326])).

cnf(c_2771,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) = iProver_top
    | r1_tarski(k2_relat_1(sK3),k2_relat_1(sK3)) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2769])).

cnf(c_2770,plain,
    ( r1_tarski(k2_relat_1(sK3),k2_relat_1(sK3)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_2773,plain,
    ( r1_tarski(k2_relat_1(sK3),k2_relat_1(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2770])).

cnf(c_3909,plain,
    ( r1_tarski(k9_relat_1(sK3,X0),k2_relat_1(sK3)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3577,c_1629,c_1808,c_1976,c_2771,c_2773])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1183,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2124,plain,
    ( k1_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3) = k1_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1180,c_1183])).

cnf(c_16,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_23,negated_conjecture,
    ( v1_funct_2(sK3,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_452,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) != X1
    | k1_relset_1(X1,X2,X0) = X1
    | sK3 != X0
    | sK1 != X2
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_23])).

cnf(c_453,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)))
    | k1_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3) = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_452])).

cnf(c_21,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_455,plain,
    ( k1_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3) = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_453,c_22,c_21])).

cnf(c_2402,plain,
    ( k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) = k1_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_2124,c_455])).

cnf(c_7,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) != k1_relat_1(X0)
    | k6_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_340,plain,
    ( ~ v1_relat_1(X0)
    | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) != k1_relat_1(X0)
    | k6_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_24])).

cnf(c_341,plain,
    ( ~ v1_relat_1(sK3)
    | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
    | k6_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_340])).

cnf(c_1177,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
    | k6_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_341])).

cnf(c_2502,plain,
    ( k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)) = k2_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2402,c_1177])).

cnf(c_343,plain,
    ( ~ v1_relat_1(sK3)
    | k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)) = k2_relat_1(sK3)
    | k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) != k1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_341])).

cnf(c_1639,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1629])).

cnf(c_3250,plain,
    ( k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)) = k2_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2502,c_343,c_1639,c_1807,c_1975,c_2402])).

cnf(c_2474,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),sK1))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2402,c_1180])).

cnf(c_2507,plain,
    ( k7_relset_1(k1_relat_1(sK3),sK1,sK3,X0) = k9_relat_1(sK3,X0) ),
    inference(superposition,[status(thm)],[c_2474,c_1182])).

cnf(c_20,negated_conjecture,
    ( ~ r1_tarski(k7_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1181,plain,
    ( r1_tarski(k7_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_2473,plain,
    ( r1_tarski(k7_relset_1(k1_relat_1(sK3),sK1,sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2402,c_1181])).

cnf(c_2748,plain,
    ( r1_tarski(k9_relat_1(sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2507,c_2473])).

cnf(c_3253,plain,
    ( r1_tarski(k9_relat_1(sK3,sK2),k2_relat_1(sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3250,c_2748])).

cnf(c_3918,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_3909,c_3253])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n020.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:41:22 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 2.97/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.97/0.98  
% 2.97/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.97/0.98  
% 2.97/0.98  ------  iProver source info
% 2.97/0.98  
% 2.97/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.97/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.97/0.98  git: non_committed_changes: false
% 2.97/0.98  git: last_make_outside_of_git: false
% 2.97/0.98  
% 2.97/0.98  ------ 
% 2.97/0.98  
% 2.97/0.98  ------ Input Options
% 2.97/0.98  
% 2.97/0.98  --out_options                           all
% 2.97/0.98  --tptp_safe_out                         true
% 2.97/0.98  --problem_path                          ""
% 2.97/0.98  --include_path                          ""
% 2.97/0.98  --clausifier                            res/vclausify_rel
% 2.97/0.98  --clausifier_options                    --mode clausify
% 2.97/0.98  --stdin                                 false
% 2.97/0.98  --stats_out                             all
% 2.97/0.98  
% 2.97/0.98  ------ General Options
% 2.97/0.98  
% 2.97/0.98  --fof                                   false
% 2.97/0.98  --time_out_real                         305.
% 2.97/0.98  --time_out_virtual                      -1.
% 2.97/0.98  --symbol_type_check                     false
% 2.97/0.98  --clausify_out                          false
% 2.97/0.98  --sig_cnt_out                           false
% 2.97/0.98  --trig_cnt_out                          false
% 2.97/0.98  --trig_cnt_out_tolerance                1.
% 2.97/0.98  --trig_cnt_out_sk_spl                   false
% 2.97/0.98  --abstr_cl_out                          false
% 2.97/0.98  
% 2.97/0.98  ------ Global Options
% 2.97/0.98  
% 2.97/0.98  --schedule                              default
% 2.97/0.98  --add_important_lit                     false
% 2.97/0.98  --prop_solver_per_cl                    1000
% 2.97/0.98  --min_unsat_core                        false
% 2.97/0.98  --soft_assumptions                      false
% 2.97/0.98  --soft_lemma_size                       3
% 2.97/0.98  --prop_impl_unit_size                   0
% 2.97/0.98  --prop_impl_unit                        []
% 2.97/0.98  --share_sel_clauses                     true
% 2.97/0.98  --reset_solvers                         false
% 2.97/0.98  --bc_imp_inh                            [conj_cone]
% 2.97/0.98  --conj_cone_tolerance                   3.
% 2.97/0.98  --extra_neg_conj                        none
% 2.97/0.98  --large_theory_mode                     true
% 2.97/0.98  --prolific_symb_bound                   200
% 2.97/0.98  --lt_threshold                          2000
% 2.97/0.98  --clause_weak_htbl                      true
% 2.97/0.98  --gc_record_bc_elim                     false
% 2.97/0.98  
% 2.97/0.98  ------ Preprocessing Options
% 2.97/0.98  
% 2.97/0.98  --preprocessing_flag                    true
% 2.97/0.98  --time_out_prep_mult                    0.1
% 2.97/0.98  --splitting_mode                        input
% 2.97/0.98  --splitting_grd                         true
% 2.97/0.98  --splitting_cvd                         false
% 2.97/0.98  --splitting_cvd_svl                     false
% 2.97/0.98  --splitting_nvd                         32
% 2.97/0.98  --sub_typing                            true
% 2.97/0.98  --prep_gs_sim                           true
% 2.97/0.98  --prep_unflatten                        true
% 2.97/0.98  --prep_res_sim                          true
% 2.97/0.98  --prep_upred                            true
% 2.97/0.98  --prep_sem_filter                       exhaustive
% 2.97/0.98  --prep_sem_filter_out                   false
% 2.97/0.98  --pred_elim                             true
% 2.97/0.98  --res_sim_input                         true
% 2.97/0.98  --eq_ax_congr_red                       true
% 2.97/0.98  --pure_diseq_elim                       true
% 2.97/0.98  --brand_transform                       false
% 2.97/0.98  --non_eq_to_eq                          false
% 2.97/0.98  --prep_def_merge                        true
% 2.97/0.98  --prep_def_merge_prop_impl              false
% 2.97/0.98  --prep_def_merge_mbd                    true
% 2.97/0.98  --prep_def_merge_tr_red                 false
% 2.97/0.98  --prep_def_merge_tr_cl                  false
% 2.97/0.98  --smt_preprocessing                     true
% 2.97/0.98  --smt_ac_axioms                         fast
% 2.97/0.98  --preprocessed_out                      false
% 2.97/0.98  --preprocessed_stats                    false
% 2.97/0.98  
% 2.97/0.98  ------ Abstraction refinement Options
% 2.97/0.98  
% 2.97/0.98  --abstr_ref                             []
% 2.97/0.98  --abstr_ref_prep                        false
% 2.97/0.98  --abstr_ref_until_sat                   false
% 2.97/0.98  --abstr_ref_sig_restrict                funpre
% 2.97/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.97/0.98  --abstr_ref_under                       []
% 2.97/0.98  
% 2.97/0.98  ------ SAT Options
% 2.97/0.98  
% 2.97/0.98  --sat_mode                              false
% 2.97/0.98  --sat_fm_restart_options                ""
% 2.97/0.98  --sat_gr_def                            false
% 2.97/0.98  --sat_epr_types                         true
% 2.97/0.98  --sat_non_cyclic_types                  false
% 2.97/0.98  --sat_finite_models                     false
% 2.97/0.98  --sat_fm_lemmas                         false
% 2.97/0.98  --sat_fm_prep                           false
% 2.97/0.98  --sat_fm_uc_incr                        true
% 2.97/0.98  --sat_out_model                         small
% 2.97/0.98  --sat_out_clauses                       false
% 2.97/0.98  
% 2.97/0.98  ------ QBF Options
% 2.97/0.98  
% 2.97/0.98  --qbf_mode                              false
% 2.97/0.98  --qbf_elim_univ                         false
% 2.97/0.98  --qbf_dom_inst                          none
% 2.97/0.98  --qbf_dom_pre_inst                      false
% 2.97/0.98  --qbf_sk_in                             false
% 2.97/0.98  --qbf_pred_elim                         true
% 2.97/0.98  --qbf_split                             512
% 2.97/0.98  
% 2.97/0.98  ------ BMC1 Options
% 2.97/0.98  
% 2.97/0.98  --bmc1_incremental                      false
% 2.97/0.98  --bmc1_axioms                           reachable_all
% 2.97/0.98  --bmc1_min_bound                        0
% 2.97/0.98  --bmc1_max_bound                        -1
% 2.97/0.98  --bmc1_max_bound_default                -1
% 2.97/0.98  --bmc1_symbol_reachability              true
% 2.97/0.98  --bmc1_property_lemmas                  false
% 2.97/0.98  --bmc1_k_induction                      false
% 2.97/0.98  --bmc1_non_equiv_states                 false
% 2.97/0.98  --bmc1_deadlock                         false
% 2.97/0.98  --bmc1_ucm                              false
% 2.97/0.98  --bmc1_add_unsat_core                   none
% 2.97/0.98  --bmc1_unsat_core_children              false
% 2.97/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.97/0.98  --bmc1_out_stat                         full
% 2.97/0.98  --bmc1_ground_init                      false
% 2.97/0.98  --bmc1_pre_inst_next_state              false
% 2.97/0.98  --bmc1_pre_inst_state                   false
% 2.97/0.98  --bmc1_pre_inst_reach_state             false
% 2.97/0.98  --bmc1_out_unsat_core                   false
% 2.97/0.98  --bmc1_aig_witness_out                  false
% 2.97/0.98  --bmc1_verbose                          false
% 2.97/0.98  --bmc1_dump_clauses_tptp                false
% 2.97/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.97/0.98  --bmc1_dump_file                        -
% 2.97/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.97/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.97/0.98  --bmc1_ucm_extend_mode                  1
% 2.97/0.98  --bmc1_ucm_init_mode                    2
% 2.97/0.98  --bmc1_ucm_cone_mode                    none
% 2.97/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.97/0.98  --bmc1_ucm_relax_model                  4
% 2.97/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.97/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.97/0.98  --bmc1_ucm_layered_model                none
% 2.97/0.98  --bmc1_ucm_max_lemma_size               10
% 2.97/0.98  
% 2.97/0.98  ------ AIG Options
% 2.97/0.98  
% 2.97/0.98  --aig_mode                              false
% 2.97/0.98  
% 2.97/0.98  ------ Instantiation Options
% 2.97/0.98  
% 2.97/0.98  --instantiation_flag                    true
% 2.97/0.98  --inst_sos_flag                         false
% 2.97/0.98  --inst_sos_phase                        true
% 2.97/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.97/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.97/0.98  --inst_lit_sel_side                     num_symb
% 2.97/0.98  --inst_solver_per_active                1400
% 2.97/0.98  --inst_solver_calls_frac                1.
% 2.97/0.98  --inst_passive_queue_type               priority_queues
% 2.97/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.97/0.98  --inst_passive_queues_freq              [25;2]
% 2.97/0.98  --inst_dismatching                      true
% 2.97/0.98  --inst_eager_unprocessed_to_passive     true
% 2.97/0.98  --inst_prop_sim_given                   true
% 2.97/0.98  --inst_prop_sim_new                     false
% 2.97/0.98  --inst_subs_new                         false
% 2.97/0.98  --inst_eq_res_simp                      false
% 2.97/0.98  --inst_subs_given                       false
% 2.97/0.98  --inst_orphan_elimination               true
% 2.97/0.98  --inst_learning_loop_flag               true
% 2.97/0.98  --inst_learning_start                   3000
% 2.97/0.98  --inst_learning_factor                  2
% 2.97/0.98  --inst_start_prop_sim_after_learn       3
% 2.97/0.98  --inst_sel_renew                        solver
% 2.97/0.98  --inst_lit_activity_flag                true
% 2.97/0.98  --inst_restr_to_given                   false
% 2.97/0.98  --inst_activity_threshold               500
% 2.97/0.98  --inst_out_proof                        true
% 2.97/0.98  
% 2.97/0.98  ------ Resolution Options
% 2.97/0.98  
% 2.97/0.98  --resolution_flag                       true
% 2.97/0.98  --res_lit_sel                           adaptive
% 2.97/0.98  --res_lit_sel_side                      none
% 2.97/0.98  --res_ordering                          kbo
% 2.97/0.98  --res_to_prop_solver                    active
% 2.97/0.98  --res_prop_simpl_new                    false
% 2.97/0.98  --res_prop_simpl_given                  true
% 2.97/0.98  --res_passive_queue_type                priority_queues
% 2.97/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.97/0.98  --res_passive_queues_freq               [15;5]
% 2.97/0.98  --res_forward_subs                      full
% 2.97/0.98  --res_backward_subs                     full
% 2.97/0.98  --res_forward_subs_resolution           true
% 2.97/0.98  --res_backward_subs_resolution          true
% 2.97/0.98  --res_orphan_elimination                true
% 2.97/0.98  --res_time_limit                        2.
% 2.97/0.98  --res_out_proof                         true
% 2.97/0.98  
% 2.97/0.98  ------ Superposition Options
% 2.97/0.98  
% 2.97/0.98  --superposition_flag                    true
% 2.97/0.98  --sup_passive_queue_type                priority_queues
% 2.97/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.97/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.97/0.98  --demod_completeness_check              fast
% 2.97/0.98  --demod_use_ground                      true
% 2.97/0.98  --sup_to_prop_solver                    passive
% 2.97/0.98  --sup_prop_simpl_new                    true
% 2.97/0.98  --sup_prop_simpl_given                  true
% 2.97/0.98  --sup_fun_splitting                     false
% 2.97/0.98  --sup_smt_interval                      50000
% 2.97/0.98  
% 2.97/0.98  ------ Superposition Simplification Setup
% 2.97/0.98  
% 2.97/0.98  --sup_indices_passive                   []
% 2.97/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.97/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.97/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.97/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.97/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.97/0.98  --sup_full_bw                           [BwDemod]
% 2.97/0.98  --sup_immed_triv                        [TrivRules]
% 2.97/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.97/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.97/0.98  --sup_immed_bw_main                     []
% 2.97/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.97/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.97/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.97/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.97/0.98  
% 2.97/0.98  ------ Combination Options
% 2.97/0.98  
% 2.97/0.98  --comb_res_mult                         3
% 2.97/0.98  --comb_sup_mult                         2
% 2.97/0.98  --comb_inst_mult                        10
% 2.97/0.98  
% 2.97/0.98  ------ Debug Options
% 2.97/0.98  
% 2.97/0.98  --dbg_backtrace                         false
% 2.97/0.98  --dbg_dump_prop_clauses                 false
% 2.97/0.98  --dbg_dump_prop_clauses_file            -
% 2.97/0.98  --dbg_out_stat                          false
% 2.97/0.98  ------ Parsing...
% 2.97/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.97/0.98  
% 2.97/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 2.97/0.98  
% 2.97/0.98  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.97/0.98  
% 2.97/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.97/0.98  ------ Proving...
% 2.97/0.98  ------ Problem Properties 
% 2.97/0.98  
% 2.97/0.98  
% 2.97/0.98  clauses                                 21
% 2.97/0.98  conjectures                             3
% 2.97/0.98  EPR                                     4
% 2.97/0.98  Horn                                    18
% 2.97/0.98  unary                                   6
% 2.97/0.98  binary                                  5
% 2.97/0.98  lits                                    50
% 2.97/0.98  lits eq                                 18
% 2.97/0.98  fd_pure                                 0
% 2.97/0.98  fd_pseudo                               0
% 2.97/0.98  fd_cond                                 1
% 2.97/0.98  fd_pseudo_cond                          1
% 2.97/0.98  AC symbols                              0
% 2.97/0.98  
% 2.97/0.98  ------ Schedule dynamic 5 is on 
% 2.97/0.98  
% 2.97/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.97/0.98  
% 2.97/0.98  
% 2.97/0.98  ------ 
% 2.97/0.98  Current options:
% 2.97/0.98  ------ 
% 2.97/0.98  
% 2.97/0.98  ------ Input Options
% 2.97/0.98  
% 2.97/0.98  --out_options                           all
% 2.97/0.98  --tptp_safe_out                         true
% 2.97/0.98  --problem_path                          ""
% 2.97/0.98  --include_path                          ""
% 2.97/0.98  --clausifier                            res/vclausify_rel
% 2.97/0.98  --clausifier_options                    --mode clausify
% 2.97/0.98  --stdin                                 false
% 2.97/0.98  --stats_out                             all
% 2.97/0.98  
% 2.97/0.98  ------ General Options
% 2.97/0.98  
% 2.97/0.98  --fof                                   false
% 2.97/0.98  --time_out_real                         305.
% 2.97/0.98  --time_out_virtual                      -1.
% 2.97/0.98  --symbol_type_check                     false
% 2.97/0.98  --clausify_out                          false
% 2.97/0.98  --sig_cnt_out                           false
% 2.97/0.98  --trig_cnt_out                          false
% 2.97/0.98  --trig_cnt_out_tolerance                1.
% 2.97/0.98  --trig_cnt_out_sk_spl                   false
% 2.97/0.98  --abstr_cl_out                          false
% 2.97/0.98  
% 2.97/0.98  ------ Global Options
% 2.97/0.98  
% 2.97/0.98  --schedule                              default
% 2.97/0.98  --add_important_lit                     false
% 2.97/0.98  --prop_solver_per_cl                    1000
% 2.97/0.98  --min_unsat_core                        false
% 2.97/0.98  --soft_assumptions                      false
% 2.97/0.98  --soft_lemma_size                       3
% 2.97/0.98  --prop_impl_unit_size                   0
% 2.97/0.98  --prop_impl_unit                        []
% 2.97/0.98  --share_sel_clauses                     true
% 2.97/0.98  --reset_solvers                         false
% 2.97/0.98  --bc_imp_inh                            [conj_cone]
% 2.97/0.98  --conj_cone_tolerance                   3.
% 2.97/0.98  --extra_neg_conj                        none
% 2.97/0.98  --large_theory_mode                     true
% 2.97/0.98  --prolific_symb_bound                   200
% 2.97/0.98  --lt_threshold                          2000
% 2.97/0.98  --clause_weak_htbl                      true
% 2.97/0.98  --gc_record_bc_elim                     false
% 2.97/0.98  
% 2.97/0.98  ------ Preprocessing Options
% 2.97/0.98  
% 2.97/0.98  --preprocessing_flag                    true
% 2.97/0.98  --time_out_prep_mult                    0.1
% 2.97/0.98  --splitting_mode                        input
% 2.97/0.98  --splitting_grd                         true
% 2.97/0.98  --splitting_cvd                         false
% 2.97/0.98  --splitting_cvd_svl                     false
% 2.97/0.98  --splitting_nvd                         32
% 2.97/0.98  --sub_typing                            true
% 2.97/0.98  --prep_gs_sim                           true
% 2.97/0.98  --prep_unflatten                        true
% 2.97/0.98  --prep_res_sim                          true
% 2.97/0.98  --prep_upred                            true
% 2.97/0.98  --prep_sem_filter                       exhaustive
% 2.97/0.98  --prep_sem_filter_out                   false
% 2.97/0.98  --pred_elim                             true
% 2.97/0.98  --res_sim_input                         true
% 2.97/0.98  --eq_ax_congr_red                       true
% 2.97/0.98  --pure_diseq_elim                       true
% 2.97/0.98  --brand_transform                       false
% 2.97/0.98  --non_eq_to_eq                          false
% 2.97/0.98  --prep_def_merge                        true
% 2.97/0.98  --prep_def_merge_prop_impl              false
% 2.97/0.98  --prep_def_merge_mbd                    true
% 2.97/0.98  --prep_def_merge_tr_red                 false
% 2.97/0.98  --prep_def_merge_tr_cl                  false
% 2.97/0.98  --smt_preprocessing                     true
% 2.97/0.98  --smt_ac_axioms                         fast
% 2.97/0.98  --preprocessed_out                      false
% 2.97/0.98  --preprocessed_stats                    false
% 2.97/0.98  
% 2.97/0.98  ------ Abstraction refinement Options
% 2.97/0.98  
% 2.97/0.98  --abstr_ref                             []
% 2.97/0.98  --abstr_ref_prep                        false
% 2.97/0.98  --abstr_ref_until_sat                   false
% 2.97/0.98  --abstr_ref_sig_restrict                funpre
% 2.97/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.97/0.98  --abstr_ref_under                       []
% 2.97/0.98  
% 2.97/0.98  ------ SAT Options
% 2.97/0.98  
% 2.97/0.98  --sat_mode                              false
% 2.97/0.98  --sat_fm_restart_options                ""
% 2.97/0.98  --sat_gr_def                            false
% 2.97/0.98  --sat_epr_types                         true
% 2.97/0.98  --sat_non_cyclic_types                  false
% 2.97/0.98  --sat_finite_models                     false
% 2.97/0.98  --sat_fm_lemmas                         false
% 2.97/0.98  --sat_fm_prep                           false
% 2.97/0.98  --sat_fm_uc_incr                        true
% 2.97/0.98  --sat_out_model                         small
% 2.97/0.98  --sat_out_clauses                       false
% 2.97/0.98  
% 2.97/0.98  ------ QBF Options
% 2.97/0.98  
% 2.97/0.98  --qbf_mode                              false
% 2.97/0.98  --qbf_elim_univ                         false
% 2.97/0.98  --qbf_dom_inst                          none
% 2.97/0.98  --qbf_dom_pre_inst                      false
% 2.97/0.98  --qbf_sk_in                             false
% 2.97/0.98  --qbf_pred_elim                         true
% 2.97/0.98  --qbf_split                             512
% 2.97/0.98  
% 2.97/0.98  ------ BMC1 Options
% 2.97/0.98  
% 2.97/0.98  --bmc1_incremental                      false
% 2.97/0.98  --bmc1_axioms                           reachable_all
% 2.97/0.98  --bmc1_min_bound                        0
% 2.97/0.98  --bmc1_max_bound                        -1
% 2.97/0.98  --bmc1_max_bound_default                -1
% 2.97/0.98  --bmc1_symbol_reachability              true
% 2.97/0.98  --bmc1_property_lemmas                  false
% 2.97/0.98  --bmc1_k_induction                      false
% 2.97/0.98  --bmc1_non_equiv_states                 false
% 2.97/0.98  --bmc1_deadlock                         false
% 2.97/0.98  --bmc1_ucm                              false
% 2.97/0.98  --bmc1_add_unsat_core                   none
% 2.97/0.98  --bmc1_unsat_core_children              false
% 2.97/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.97/0.98  --bmc1_out_stat                         full
% 2.97/0.98  --bmc1_ground_init                      false
% 2.97/0.98  --bmc1_pre_inst_next_state              false
% 2.97/0.98  --bmc1_pre_inst_state                   false
% 2.97/0.98  --bmc1_pre_inst_reach_state             false
% 2.97/0.98  --bmc1_out_unsat_core                   false
% 2.97/0.98  --bmc1_aig_witness_out                  false
% 2.97/0.98  --bmc1_verbose                          false
% 2.97/0.98  --bmc1_dump_clauses_tptp                false
% 2.97/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.97/0.98  --bmc1_dump_file                        -
% 2.97/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.97/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.97/0.98  --bmc1_ucm_extend_mode                  1
% 2.97/0.98  --bmc1_ucm_init_mode                    2
% 2.97/0.98  --bmc1_ucm_cone_mode                    none
% 2.97/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.97/0.98  --bmc1_ucm_relax_model                  4
% 2.97/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.97/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.97/0.98  --bmc1_ucm_layered_model                none
% 2.97/0.98  --bmc1_ucm_max_lemma_size               10
% 2.97/0.98  
% 2.97/0.98  ------ AIG Options
% 2.97/0.98  
% 2.97/0.98  --aig_mode                              false
% 2.97/0.98  
% 2.97/0.98  ------ Instantiation Options
% 2.97/0.98  
% 2.97/0.98  --instantiation_flag                    true
% 2.97/0.98  --inst_sos_flag                         false
% 2.97/0.98  --inst_sos_phase                        true
% 2.97/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.97/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.97/0.98  --inst_lit_sel_side                     none
% 2.97/0.98  --inst_solver_per_active                1400
% 2.97/0.98  --inst_solver_calls_frac                1.
% 2.97/0.98  --inst_passive_queue_type               priority_queues
% 2.97/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.97/0.98  --inst_passive_queues_freq              [25;2]
% 2.97/0.98  --inst_dismatching                      true
% 2.97/0.98  --inst_eager_unprocessed_to_passive     true
% 2.97/0.98  --inst_prop_sim_given                   true
% 2.97/0.98  --inst_prop_sim_new                     false
% 2.97/0.98  --inst_subs_new                         false
% 2.97/0.98  --inst_eq_res_simp                      false
% 2.97/0.98  --inst_subs_given                       false
% 2.97/0.98  --inst_orphan_elimination               true
% 2.97/0.98  --inst_learning_loop_flag               true
% 2.97/0.98  --inst_learning_start                   3000
% 2.97/0.98  --inst_learning_factor                  2
% 2.97/0.98  --inst_start_prop_sim_after_learn       3
% 2.97/0.98  --inst_sel_renew                        solver
% 2.97/0.98  --inst_lit_activity_flag                true
% 2.97/0.98  --inst_restr_to_given                   false
% 2.97/0.98  --inst_activity_threshold               500
% 2.97/0.98  --inst_out_proof                        true
% 2.97/0.98  
% 2.97/0.98  ------ Resolution Options
% 2.97/0.98  
% 2.97/0.98  --resolution_flag                       false
% 2.97/0.98  --res_lit_sel                           adaptive
% 2.97/0.98  --res_lit_sel_side                      none
% 2.97/0.98  --res_ordering                          kbo
% 2.97/0.98  --res_to_prop_solver                    active
% 2.97/0.98  --res_prop_simpl_new                    false
% 2.97/0.98  --res_prop_simpl_given                  true
% 2.97/0.98  --res_passive_queue_type                priority_queues
% 2.97/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.97/0.98  --res_passive_queues_freq               [15;5]
% 2.97/0.98  --res_forward_subs                      full
% 2.97/0.98  --res_backward_subs                     full
% 2.97/0.98  --res_forward_subs_resolution           true
% 2.97/0.98  --res_backward_subs_resolution          true
% 2.97/0.98  --res_orphan_elimination                true
% 2.97/0.98  --res_time_limit                        2.
% 2.97/0.98  --res_out_proof                         true
% 2.97/0.98  
% 2.97/0.98  ------ Superposition Options
% 2.97/0.98  
% 2.97/0.98  --superposition_flag                    true
% 2.97/0.98  --sup_passive_queue_type                priority_queues
% 2.97/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.97/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.97/0.98  --demod_completeness_check              fast
% 2.97/0.98  --demod_use_ground                      true
% 2.97/0.98  --sup_to_prop_solver                    passive
% 2.97/0.98  --sup_prop_simpl_new                    true
% 2.97/0.98  --sup_prop_simpl_given                  true
% 2.97/0.98  --sup_fun_splitting                     false
% 2.97/0.98  --sup_smt_interval                      50000
% 2.97/0.98  
% 2.97/0.98  ------ Superposition Simplification Setup
% 2.97/0.98  
% 2.97/0.98  --sup_indices_passive                   []
% 2.97/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.97/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.97/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.97/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.97/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.97/0.98  --sup_full_bw                           [BwDemod]
% 2.97/0.98  --sup_immed_triv                        [TrivRules]
% 2.97/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.97/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.97/0.98  --sup_immed_bw_main                     []
% 2.97/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.97/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.97/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.97/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.97/0.98  
% 2.97/0.98  ------ Combination Options
% 2.97/0.98  
% 2.97/0.98  --comb_res_mult                         3
% 2.97/0.98  --comb_sup_mult                         2
% 2.97/0.98  --comb_inst_mult                        10
% 2.97/0.98  
% 2.97/0.98  ------ Debug Options
% 2.97/0.98  
% 2.97/0.98  --dbg_backtrace                         false
% 2.97/0.98  --dbg_dump_prop_clauses                 false
% 2.97/0.98  --dbg_dump_prop_clauses_file            -
% 2.97/0.98  --dbg_out_stat                          false
% 2.97/0.98  
% 2.97/0.98  
% 2.97/0.98  
% 2.97/0.98  
% 2.97/0.98  ------ Proving...
% 2.97/0.98  
% 2.97/0.98  
% 2.97/0.98  % SZS status Theorem for theBenchmark.p
% 2.97/0.98  
% 2.97/0.98   Resolution empty clause
% 2.97/0.98  
% 2.97/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.97/0.98  
% 2.97/0.98  fof(f1,axiom,(
% 2.97/0.98    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.97/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.98  
% 2.97/0.98  fof(f32,plain,(
% 2.97/0.98    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.97/0.98    inference(nnf_transformation,[],[f1])).
% 2.97/0.98  
% 2.97/0.98  fof(f33,plain,(
% 2.97/0.98    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.97/0.98    inference(flattening,[],[f32])).
% 2.97/0.98  
% 2.97/0.98  fof(f38,plain,(
% 2.97/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.97/0.98    inference(cnf_transformation,[],[f33])).
% 2.97/0.98  
% 2.97/0.98  fof(f81,plain,(
% 2.97/0.98    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.97/0.98    inference(equality_resolution,[],[f38])).
% 2.97/0.98  
% 2.97/0.98  fof(f17,axiom,(
% 2.97/0.98    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(k2_relat_1(X1),X0) => (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1))))),
% 2.97/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.98  
% 2.97/0.98  fof(f28,plain,(
% 2.97/0.98    ! [X0,X1] : (((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 2.97/0.98    inference(ennf_transformation,[],[f17])).
% 2.97/0.98  
% 2.97/0.98  fof(f29,plain,(
% 2.97/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.97/0.98    inference(flattening,[],[f28])).
% 2.97/0.98  
% 2.97/0.98  fof(f64,plain,(
% 2.97/0.98    ( ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 2.97/0.98    inference(cnf_transformation,[],[f29])).
% 2.97/0.98  
% 2.97/0.98  fof(f18,conjecture,(
% 2.97/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3)) => (k1_xboole_0 != X1 => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))))),
% 2.97/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.98  
% 2.97/0.98  fof(f19,negated_conjecture,(
% 2.97/0.98    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3)) => (k1_xboole_0 != X1 => r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0)))))),
% 2.97/0.98    inference(negated_conjecture,[],[f18])).
% 2.97/0.98  
% 2.97/0.98  fof(f30,plain,(
% 2.97/0.98    ? [X0,X1,X2,X3] : ((~r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) & k1_xboole_0 != X1) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3)))),
% 2.97/0.98    inference(ennf_transformation,[],[f19])).
% 2.97/0.98  
% 2.97/0.98  fof(f31,plain,(
% 2.97/0.98    ? [X0,X1,X2,X3] : (~r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) & k1_xboole_0 != X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3))),
% 2.97/0.98    inference(flattening,[],[f30])).
% 2.97/0.98  
% 2.97/0.98  fof(f36,plain,(
% 2.97/0.98    ? [X0,X1,X2,X3] : (~r1_tarski(k7_relset_1(k1_tarski(X0),X1,X3,X2),k1_tarski(k1_funct_1(X3,X0))) & k1_xboole_0 != X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X3,k1_tarski(X0),X1) & v1_funct_1(X3)) => (~r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) & k1_xboole_0 != sK1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))) & v1_funct_2(sK3,k1_tarski(sK0),sK1) & v1_funct_1(sK3))),
% 2.97/0.99    introduced(choice_axiom,[])).
% 2.97/0.99  
% 2.97/0.99  fof(f37,plain,(
% 2.97/0.99    ~r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0))) & k1_xboole_0 != sK1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1))) & v1_funct_2(sK3,k1_tarski(sK0),sK1) & v1_funct_1(sK3)),
% 2.97/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f31,f36])).
% 2.97/0.99  
% 2.97/0.99  fof(f65,plain,(
% 2.97/0.99    v1_funct_1(sK3)),
% 2.97/0.99    inference(cnf_transformation,[],[f37])).
% 2.97/0.99  
% 2.97/0.99  fof(f15,axiom,(
% 2.97/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3))),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f25,plain,(
% 2.97/0.99    ! [X0,X1,X2,X3] : (k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.97/0.99    inference(ennf_transformation,[],[f15])).
% 2.97/0.99  
% 2.97/0.99  fof(f55,plain,(
% 2.97/0.99    ( ! [X2,X0,X3,X1] : (k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.97/0.99    inference(cnf_transformation,[],[f25])).
% 2.97/0.99  
% 2.97/0.99  fof(f67,plain,(
% 2.97/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),sK1)))),
% 2.97/0.99    inference(cnf_transformation,[],[f37])).
% 2.97/0.99  
% 2.97/0.99  fof(f2,axiom,(
% 2.97/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f41,plain,(
% 2.97/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f2])).
% 2.97/0.99  
% 2.97/0.99  fof(f3,axiom,(
% 2.97/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f42,plain,(
% 2.97/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f3])).
% 2.97/0.99  
% 2.97/0.99  fof(f4,axiom,(
% 2.97/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f43,plain,(
% 2.97/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f4])).
% 2.97/0.99  
% 2.97/0.99  fof(f5,axiom,(
% 2.97/0.99    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f44,plain,(
% 2.97/0.99    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f5])).
% 2.97/0.99  
% 2.97/0.99  fof(f6,axiom,(
% 2.97/0.99    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f45,plain,(
% 2.97/0.99    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f6])).
% 2.97/0.99  
% 2.97/0.99  fof(f7,axiom,(
% 2.97/0.99    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f46,plain,(
% 2.97/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f7])).
% 2.97/0.99  
% 2.97/0.99  fof(f8,axiom,(
% 2.97/0.99    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f47,plain,(
% 2.97/0.99    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f8])).
% 2.97/0.99  
% 2.97/0.99  fof(f70,plain,(
% 2.97/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 2.97/0.99    inference(definition_unfolding,[],[f46,f47])).
% 2.97/0.99  
% 2.97/0.99  fof(f71,plain,(
% 2.97/0.99    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 2.97/0.99    inference(definition_unfolding,[],[f45,f70])).
% 2.97/0.99  
% 2.97/0.99  fof(f72,plain,(
% 2.97/0.99    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 2.97/0.99    inference(definition_unfolding,[],[f44,f71])).
% 2.97/0.99  
% 2.97/0.99  fof(f73,plain,(
% 2.97/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 2.97/0.99    inference(definition_unfolding,[],[f43,f72])).
% 2.97/0.99  
% 2.97/0.99  fof(f74,plain,(
% 2.97/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 2.97/0.99    inference(definition_unfolding,[],[f42,f73])).
% 2.97/0.99  
% 2.97/0.99  fof(f75,plain,(
% 2.97/0.99    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 2.97/0.99    inference(definition_unfolding,[],[f41,f74])).
% 2.97/0.99  
% 2.97/0.99  fof(f78,plain,(
% 2.97/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)))),
% 2.97/0.99    inference(definition_unfolding,[],[f67,f75])).
% 2.97/0.99  
% 2.97/0.99  fof(f9,axiom,(
% 2.97/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f34,plain,(
% 2.97/0.99    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.97/0.99    inference(nnf_transformation,[],[f9])).
% 2.97/0.99  
% 2.97/0.99  fof(f48,plain,(
% 2.97/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.97/0.99    inference(cnf_transformation,[],[f34])).
% 2.97/0.99  
% 2.97/0.99  fof(f10,axiom,(
% 2.97/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f20,plain,(
% 2.97/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.97/0.99    inference(ennf_transformation,[],[f10])).
% 2.97/0.99  
% 2.97/0.99  fof(f50,plain,(
% 2.97/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f20])).
% 2.97/0.99  
% 2.97/0.99  fof(f49,plain,(
% 2.97/0.99    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f34])).
% 2.97/0.99  
% 2.97/0.99  fof(f11,axiom,(
% 2.97/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f51,plain,(
% 2.97/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.97/0.99    inference(cnf_transformation,[],[f11])).
% 2.97/0.99  
% 2.97/0.99  fof(f13,axiom,(
% 2.97/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1)))),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f23,plain,(
% 2.97/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.97/0.99    inference(ennf_transformation,[],[f13])).
% 2.97/0.99  
% 2.97/0.99  fof(f53,plain,(
% 2.97/0.99    ( ! [X2,X0,X3,X1] : (m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.97/0.99    inference(cnf_transformation,[],[f23])).
% 2.97/0.99  
% 2.97/0.99  fof(f14,axiom,(
% 2.97/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f24,plain,(
% 2.97/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.97/0.99    inference(ennf_transformation,[],[f14])).
% 2.97/0.99  
% 2.97/0.99  fof(f54,plain,(
% 2.97/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.97/0.99    inference(cnf_transformation,[],[f24])).
% 2.97/0.99  
% 2.97/0.99  fof(f16,axiom,(
% 2.97/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f26,plain,(
% 2.97/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.97/0.99    inference(ennf_transformation,[],[f16])).
% 2.97/0.99  
% 2.97/0.99  fof(f27,plain,(
% 2.97/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.97/0.99    inference(flattening,[],[f26])).
% 2.97/0.99  
% 2.97/0.99  fof(f35,plain,(
% 2.97/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.97/0.99    inference(nnf_transformation,[],[f27])).
% 2.97/0.99  
% 2.97/0.99  fof(f56,plain,(
% 2.97/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.97/0.99    inference(cnf_transformation,[],[f35])).
% 2.97/0.99  
% 2.97/0.99  fof(f66,plain,(
% 2.97/0.99    v1_funct_2(sK3,k1_tarski(sK0),sK1)),
% 2.97/0.99    inference(cnf_transformation,[],[f37])).
% 2.97/0.99  
% 2.97/0.99  fof(f79,plain,(
% 2.97/0.99    v1_funct_2(sK3,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)),
% 2.97/0.99    inference(definition_unfolding,[],[f66,f75])).
% 2.97/0.99  
% 2.97/0.99  fof(f68,plain,(
% 2.97/0.99    k1_xboole_0 != sK1),
% 2.97/0.99    inference(cnf_transformation,[],[f37])).
% 2.97/0.99  
% 2.97/0.99  fof(f12,axiom,(
% 2.97/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (k1_tarski(X0) = k1_relat_1(X1) => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)))),
% 2.97/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.97/0.99  
% 2.97/0.99  fof(f21,plain,(
% 2.97/0.99    ! [X0,X1] : ((k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 2.97/0.99    inference(ennf_transformation,[],[f12])).
% 2.97/0.99  
% 2.97/0.99  fof(f22,plain,(
% 2.97/0.99    ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.97/0.99    inference(flattening,[],[f21])).
% 2.97/0.99  
% 2.97/0.99  fof(f52,plain,(
% 2.97/0.99    ( ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 2.97/0.99    inference(cnf_transformation,[],[f22])).
% 2.97/0.99  
% 2.97/0.99  fof(f76,plain,(
% 2.97/0.99    ( ! [X0,X1] : (k6_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1) | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 2.97/0.99    inference(definition_unfolding,[],[f52,f75,f75])).
% 2.97/0.99  
% 2.97/0.99  fof(f69,plain,(
% 2.97/0.99    ~r1_tarski(k7_relset_1(k1_tarski(sK0),sK1,sK3,sK2),k1_tarski(k1_funct_1(sK3,sK0)))),
% 2.97/0.99    inference(cnf_transformation,[],[f37])).
% 2.97/0.99  
% 2.97/0.99  fof(f77,plain,(
% 2.97/0.99    ~r1_tarski(k7_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)))),
% 2.97/0.99    inference(definition_unfolding,[],[f69,f75,f75])).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2,plain,( r1_tarski(X0,X0) ),inference(cnf_transformation,[],[f81]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1188,plain,
% 2.97/0.99      ( r1_tarski(X0,X0) = iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_17,plain,
% 2.97/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
% 2.97/0.99      | ~ r1_tarski(k2_relat_1(X0),X1)
% 2.97/0.99      | ~ v1_funct_1(X0)
% 2.97/0.99      | ~ v1_relat_1(X0) ),
% 2.97/0.99      inference(cnf_transformation,[],[f64]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_24,negated_conjecture,
% 2.97/0.99      ( v1_funct_1(sK3) ),
% 2.97/0.99      inference(cnf_transformation,[],[f65]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_325,plain,
% 2.97/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
% 2.97/0.99      | ~ r1_tarski(k2_relat_1(X0),X1)
% 2.97/0.99      | ~ v1_relat_1(X0)
% 2.97/0.99      | sK3 != X0 ),
% 2.97/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_24]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_326,plain,
% 2.97/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X0)))
% 2.97/0.99      | ~ r1_tarski(k2_relat_1(sK3),X0)
% 2.97/0.99      | ~ v1_relat_1(sK3) ),
% 2.97/0.99      inference(unflattening,[status(thm)],[c_325]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1178,plain,
% 2.97/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X0))) = iProver_top
% 2.97/0.99      | r1_tarski(k2_relat_1(sK3),X0) != iProver_top
% 2.97/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_326]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_10,plain,
% 2.97/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.97/0.99      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 2.97/0.99      inference(cnf_transformation,[],[f55]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1182,plain,
% 2.97/0.99      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 2.97/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2270,plain,
% 2.97/0.99      ( k7_relset_1(k1_relat_1(sK3),X0,sK3,X1) = k9_relat_1(sK3,X1)
% 2.97/0.99      | r1_tarski(k2_relat_1(sK3),X0) != iProver_top
% 2.97/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.97/0.99      inference(superposition,[status(thm)],[c_1178,c_1182]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_22,negated_conjecture,
% 2.97/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1))) ),
% 2.97/0.99      inference(cnf_transformation,[],[f78]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1180,plain,
% 2.97/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1))) = iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_4,plain,
% 2.97/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.97/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1186,plain,
% 2.97/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.97/0.99      | r1_tarski(X0,X1) = iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1629,plain,
% 2.97/0.99      ( r1_tarski(sK3,k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) = iProver_top ),
% 2.97/0.99      inference(superposition,[status(thm)],[c_1180,c_1186]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_5,plain,
% 2.97/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 2.97/0.99      inference(cnf_transformation,[],[f50]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_3,plain,
% 2.97/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.97/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_183,plain,
% 2.97/0.99      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.97/0.99      inference(prop_impl,[status(thm)],[c_3]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_184,plain,
% 2.97/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.97/0.99      inference(renaming,[status(thm)],[c_183]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_229,plain,
% 2.97/0.99      ( ~ r1_tarski(X0,X1) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 2.97/0.99      inference(bin_hyper_res,[status(thm)],[c_5,c_184]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1340,plain,
% 2.97/0.99      ( ~ r1_tarski(X0,k2_zfmisc_1(X1,X2))
% 2.97/0.99      | v1_relat_1(X0)
% 2.97/0.99      | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
% 2.97/0.99      inference(instantiation,[status(thm)],[c_229]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1807,plain,
% 2.97/0.99      ( ~ r1_tarski(sK3,k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1))
% 2.97/0.99      | ~ v1_relat_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1))
% 2.97/0.99      | v1_relat_1(sK3) ),
% 2.97/0.99      inference(instantiation,[status(thm)],[c_1340]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1808,plain,
% 2.97/0.99      ( r1_tarski(sK3,k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) != iProver_top
% 2.97/0.99      | v1_relat_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) != iProver_top
% 2.97/0.99      | v1_relat_1(sK3) = iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_1807]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_6,plain,
% 2.97/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.97/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1975,plain,
% 2.97/0.99      ( v1_relat_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) ),
% 2.97/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1976,plain,
% 2.97/0.99      ( v1_relat_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) = iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_1975]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_3137,plain,
% 2.97/0.99      ( r1_tarski(k2_relat_1(sK3),X0) != iProver_top
% 2.97/0.99      | k7_relset_1(k1_relat_1(sK3),X0,sK3,X1) = k9_relat_1(sK3,X1) ),
% 2.97/0.99      inference(global_propositional_subsumption,
% 2.97/0.99                [status(thm)],
% 2.97/0.99                [c_2270,c_1629,c_1808,c_1976]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_3138,plain,
% 2.97/0.99      ( k7_relset_1(k1_relat_1(sK3),X0,sK3,X1) = k9_relat_1(sK3,X1)
% 2.97/0.99      | r1_tarski(k2_relat_1(sK3),X0) != iProver_top ),
% 2.97/0.99      inference(renaming,[status(thm)],[c_3137]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_3145,plain,
% 2.97/0.99      ( k7_relset_1(k1_relat_1(sK3),k2_relat_1(sK3),sK3,X0) = k9_relat_1(sK3,X0) ),
% 2.97/0.99      inference(superposition,[status(thm)],[c_1188,c_3138]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_8,plain,
% 2.97/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.97/0.99      | m1_subset_1(k7_relset_1(X1,X2,X0,X3),k1_zfmisc_1(X2)) ),
% 2.97/0.99      inference(cnf_transformation,[],[f53]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1184,plain,
% 2.97/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.97/0.99      | m1_subset_1(k7_relset_1(X1,X2,X0,X3),k1_zfmisc_1(X2)) = iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2377,plain,
% 2.97/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.97/0.99      | r1_tarski(k7_relset_1(X1,X2,X0,X3),X2) = iProver_top ),
% 2.97/0.99      inference(superposition,[status(thm)],[c_1184,c_1186]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_3577,plain,
% 2.97/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) != iProver_top
% 2.97/0.99      | r1_tarski(k9_relat_1(sK3,X0),k2_relat_1(sK3)) = iProver_top ),
% 2.97/0.99      inference(superposition,[status(thm)],[c_3145,c_2377]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2769,plain,
% 2.97/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3))))
% 2.97/0.99      | ~ r1_tarski(k2_relat_1(sK3),k2_relat_1(sK3))
% 2.97/0.99      | ~ v1_relat_1(sK3) ),
% 2.97/0.99      inference(instantiation,[status(thm)],[c_326]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2771,plain,
% 2.97/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) = iProver_top
% 2.97/0.99      | r1_tarski(k2_relat_1(sK3),k2_relat_1(sK3)) != iProver_top
% 2.97/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_2769]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2770,plain,
% 2.97/0.99      ( r1_tarski(k2_relat_1(sK3),k2_relat_1(sK3)) ),
% 2.97/0.99      inference(instantiation,[status(thm)],[c_2]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2773,plain,
% 2.97/0.99      ( r1_tarski(k2_relat_1(sK3),k2_relat_1(sK3)) = iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_2770]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_3909,plain,
% 2.97/0.99      ( r1_tarski(k9_relat_1(sK3,X0),k2_relat_1(sK3)) = iProver_top ),
% 2.97/0.99      inference(global_propositional_subsumption,
% 2.97/0.99                [status(thm)],
% 2.97/0.99                [c_3577,c_1629,c_1808,c_1976,c_2771,c_2773]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_9,plain,
% 2.97/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.97/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.97/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1183,plain,
% 2.97/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.97/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2124,plain,
% 2.97/0.99      ( k1_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3) = k1_relat_1(sK3) ),
% 2.97/0.99      inference(superposition,[status(thm)],[c_1180,c_1183]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_16,plain,
% 2.97/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.97/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.97/0.99      | k1_relset_1(X1,X2,X0) = X1
% 2.97/0.99      | k1_xboole_0 = X2 ),
% 2.97/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_23,negated_conjecture,
% 2.97/0.99      ( v1_funct_2(sK3,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1) ),
% 2.97/0.99      inference(cnf_transformation,[],[f79]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_452,plain,
% 2.97/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.97/0.99      | k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) != X1
% 2.97/0.99      | k1_relset_1(X1,X2,X0) = X1
% 2.97/0.99      | sK3 != X0
% 2.97/0.99      | sK1 != X2
% 2.97/0.99      | k1_xboole_0 = X2 ),
% 2.97/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_23]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_453,plain,
% 2.97/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)))
% 2.97/0.99      | k1_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3) = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
% 2.97/0.99      | k1_xboole_0 = sK1 ),
% 2.97/0.99      inference(unflattening,[status(thm)],[c_452]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_21,negated_conjecture,
% 2.97/0.99      ( k1_xboole_0 != sK1 ),
% 2.97/0.99      inference(cnf_transformation,[],[f68]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_455,plain,
% 2.97/0.99      ( k1_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3) = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
% 2.97/0.99      inference(global_propositional_subsumption,
% 2.97/0.99                [status(thm)],
% 2.97/0.99                [c_453,c_22,c_21]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2402,plain,
% 2.97/0.99      ( k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) = k1_relat_1(sK3) ),
% 2.97/0.99      inference(demodulation,[status(thm)],[c_2124,c_455]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_7,plain,
% 2.97/0.99      ( ~ v1_funct_1(X0)
% 2.97/0.99      | ~ v1_relat_1(X0)
% 2.97/0.99      | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) != k1_relat_1(X0)
% 2.97/0.99      | k6_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
% 2.97/0.99      inference(cnf_transformation,[],[f76]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_340,plain,
% 2.97/0.99      ( ~ v1_relat_1(X0)
% 2.97/0.99      | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) != k1_relat_1(X0)
% 2.97/0.99      | k6_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
% 2.97/0.99      | sK3 != X0 ),
% 2.97/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_24]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_341,plain,
% 2.97/0.99      ( ~ v1_relat_1(sK3)
% 2.97/0.99      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
% 2.97/0.99      | k6_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
% 2.97/0.99      inference(unflattening,[status(thm)],[c_340]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1177,plain,
% 2.97/0.99      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_relat_1(sK3)
% 2.97/0.99      | k6_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3)
% 2.97/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_341]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2502,plain,
% 2.97/0.99      ( k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)) = k2_relat_1(sK3)
% 2.97/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.97/0.99      inference(superposition,[status(thm)],[c_2402,c_1177]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_343,plain,
% 2.97/0.99      ( ~ v1_relat_1(sK3)
% 2.97/0.99      | k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)) = k2_relat_1(sK3)
% 2.97/0.99      | k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) != k1_relat_1(sK3) ),
% 2.97/0.99      inference(instantiation,[status(thm)],[c_341]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1639,plain,
% 2.97/0.99      ( r1_tarski(sK3,k2_zfmisc_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1)) ),
% 2.97/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_1629]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_3250,plain,
% 2.97/0.99      ( k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0)) = k2_relat_1(sK3) ),
% 2.97/0.99      inference(global_propositional_subsumption,
% 2.97/0.99                [status(thm)],
% 2.97/0.99                [c_2502,c_343,c_1639,c_1807,c_1975,c_2402]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2474,plain,
% 2.97/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),sK1))) = iProver_top ),
% 2.97/0.99      inference(demodulation,[status(thm)],[c_2402,c_1180]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2507,plain,
% 2.97/0.99      ( k7_relset_1(k1_relat_1(sK3),sK1,sK3,X0) = k9_relat_1(sK3,X0) ),
% 2.97/0.99      inference(superposition,[status(thm)],[c_2474,c_1182]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_20,negated_conjecture,
% 2.97/0.99      ( ~ r1_tarski(k7_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) ),
% 2.97/0.99      inference(cnf_transformation,[],[f77]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_1181,plain,
% 2.97/0.99      ( r1_tarski(k7_relset_1(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),sK1,sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
% 2.97/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2473,plain,
% 2.97/0.99      ( r1_tarski(k7_relset_1(k1_relat_1(sK3),sK1,sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
% 2.97/0.99      inference(demodulation,[status(thm)],[c_2402,c_1181]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_2748,plain,
% 2.97/0.99      ( r1_tarski(k9_relat_1(sK3,sK2),k6_enumset1(k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0),k1_funct_1(sK3,sK0))) != iProver_top ),
% 2.97/0.99      inference(demodulation,[status(thm)],[c_2507,c_2473]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_3253,plain,
% 2.97/0.99      ( r1_tarski(k9_relat_1(sK3,sK2),k2_relat_1(sK3)) != iProver_top ),
% 2.97/0.99      inference(demodulation,[status(thm)],[c_3250,c_2748]) ).
% 2.97/0.99  
% 2.97/0.99  cnf(c_3918,plain,
% 2.97/0.99      ( $false ),
% 2.97/0.99      inference(superposition,[status(thm)],[c_3909,c_3253]) ).
% 2.97/0.99  
% 2.97/0.99  
% 2.97/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.97/0.99  
% 2.97/0.99  ------                               Statistics
% 2.97/0.99  
% 2.97/0.99  ------ General
% 2.97/0.99  
% 2.97/0.99  abstr_ref_over_cycles:                  0
% 2.97/0.99  abstr_ref_under_cycles:                 0
% 2.97/0.99  gc_basic_clause_elim:                   0
% 2.97/0.99  forced_gc_time:                         0
% 2.97/0.99  parsing_time:                           0.009
% 2.97/0.99  unif_index_cands_time:                  0.
% 2.97/0.99  unif_index_add_time:                    0.
% 2.97/0.99  orderings_time:                         0.
% 2.97/0.99  out_proof_time:                         0.014
% 2.97/0.99  total_time:                             0.175
% 2.97/0.99  num_of_symbols:                         51
% 2.97/0.99  num_of_terms:                           3222
% 2.97/0.99  
% 2.97/0.99  ------ Preprocessing
% 2.97/0.99  
% 2.97/0.99  num_of_splits:                          1
% 2.97/0.99  num_of_split_atoms:                     1
% 2.97/0.99  num_of_reused_defs:                     0
% 2.97/0.99  num_eq_ax_congr_red:                    10
% 2.97/0.99  num_of_sem_filtered_clauses:            1
% 2.97/0.99  num_of_subtypes:                        0
% 2.97/0.99  monotx_restored_types:                  0
% 2.97/0.99  sat_num_of_epr_types:                   0
% 2.97/0.99  sat_num_of_non_cyclic_types:            0
% 2.97/0.99  sat_guarded_non_collapsed_types:        0
% 2.97/0.99  num_pure_diseq_elim:                    0
% 2.97/0.99  simp_replaced_by:                       0
% 2.97/0.99  res_preprocessed:                       112
% 2.97/0.99  prep_upred:                             0
% 2.97/0.99  prep_unflattend:                        38
% 2.97/0.99  smt_new_axioms:                         0
% 2.97/0.99  pred_elim_cands:                        3
% 2.97/0.99  pred_elim:                              2
% 2.97/0.99  pred_elim_cl:                           3
% 2.97/0.99  pred_elim_cycles:                       4
% 2.97/0.99  merged_defs:                            8
% 2.97/0.99  merged_defs_ncl:                        0
% 2.97/0.99  bin_hyper_res:                          9
% 2.97/0.99  prep_cycles:                            4
% 2.97/0.99  pred_elim_time:                         0.006
% 2.97/0.99  splitting_time:                         0.
% 2.97/0.99  sem_filter_time:                        0.
% 2.97/0.99  monotx_time:                            0.
% 2.97/0.99  subtype_inf_time:                       0.
% 2.97/0.99  
% 2.97/0.99  ------ Problem properties
% 2.97/0.99  
% 2.97/0.99  clauses:                                21
% 2.97/0.99  conjectures:                            3
% 2.97/0.99  epr:                                    4
% 2.97/0.99  horn:                                   18
% 2.97/0.99  ground:                                 8
% 2.97/0.99  unary:                                  6
% 2.97/0.99  binary:                                 5
% 2.97/0.99  lits:                                   50
% 2.97/0.99  lits_eq:                                18
% 2.97/0.99  fd_pure:                                0
% 2.97/0.99  fd_pseudo:                              0
% 2.97/0.99  fd_cond:                                1
% 2.97/0.99  fd_pseudo_cond:                         1
% 2.97/0.99  ac_symbols:                             0
% 2.97/0.99  
% 2.97/0.99  ------ Propositional Solver
% 2.97/0.99  
% 2.97/0.99  prop_solver_calls:                      28
% 2.97/0.99  prop_fast_solver_calls:                 768
% 2.97/0.99  smt_solver_calls:                       0
% 2.97/0.99  smt_fast_solver_calls:                  0
% 2.97/0.99  prop_num_of_clauses:                    1334
% 2.97/0.99  prop_preprocess_simplified:             4414
% 2.97/0.99  prop_fo_subsumed:                       14
% 2.97/0.99  prop_solver_time:                       0.
% 2.97/0.99  smt_solver_time:                        0.
% 2.97/0.99  smt_fast_solver_time:                   0.
% 2.97/0.99  prop_fast_solver_time:                  0.
% 2.97/0.99  prop_unsat_core_time:                   0.
% 2.97/0.99  
% 2.97/0.99  ------ QBF
% 2.97/0.99  
% 2.97/0.99  qbf_q_res:                              0
% 2.97/0.99  qbf_num_tautologies:                    0
% 2.97/0.99  qbf_prep_cycles:                        0
% 2.97/0.99  
% 2.97/0.99  ------ BMC1
% 2.97/0.99  
% 2.97/0.99  bmc1_current_bound:                     -1
% 2.97/0.99  bmc1_last_solved_bound:                 -1
% 2.97/0.99  bmc1_unsat_core_size:                   -1
% 2.97/0.99  bmc1_unsat_core_parents_size:           -1
% 2.97/0.99  bmc1_merge_next_fun:                    0
% 2.97/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.97/0.99  
% 2.97/0.99  ------ Instantiation
% 2.97/0.99  
% 2.97/0.99  inst_num_of_clauses:                    404
% 2.97/0.99  inst_num_in_passive:                    36
% 2.97/0.99  inst_num_in_active:                     265
% 2.97/0.99  inst_num_in_unprocessed:                105
% 2.97/0.99  inst_num_of_loops:                      280
% 2.97/0.99  inst_num_of_learning_restarts:          0
% 2.97/0.99  inst_num_moves_active_passive:          12
% 2.97/0.99  inst_lit_activity:                      0
% 2.97/0.99  inst_lit_activity_moves:                0
% 2.97/0.99  inst_num_tautologies:                   0
% 2.97/0.99  inst_num_prop_implied:                  0
% 2.97/0.99  inst_num_existing_simplified:           0
% 2.97/0.99  inst_num_eq_res_simplified:             0
% 2.97/0.99  inst_num_child_elim:                    0
% 2.97/0.99  inst_num_of_dismatching_blockings:      161
% 2.97/0.99  inst_num_of_non_proper_insts:           665
% 2.97/0.99  inst_num_of_duplicates:                 0
% 2.97/0.99  inst_inst_num_from_inst_to_res:         0
% 2.97/0.99  inst_dismatching_checking_time:         0.
% 2.97/0.99  
% 2.97/0.99  ------ Resolution
% 2.97/0.99  
% 2.97/0.99  res_num_of_clauses:                     0
% 2.97/0.99  res_num_in_passive:                     0
% 2.97/0.99  res_num_in_active:                      0
% 2.97/0.99  res_num_of_loops:                       116
% 2.97/0.99  res_forward_subset_subsumed:            70
% 2.97/0.99  res_backward_subset_subsumed:           6
% 2.97/0.99  res_forward_subsumed:                   0
% 2.97/0.99  res_backward_subsumed:                  0
% 2.97/0.99  res_forward_subsumption_resolution:     1
% 2.97/0.99  res_backward_subsumption_resolution:    0
% 2.97/0.99  res_clause_to_clause_subsumption:       183
% 2.97/0.99  res_orphan_elimination:                 0
% 2.97/0.99  res_tautology_del:                      71
% 2.97/0.99  res_num_eq_res_simplified:              0
% 2.97/0.99  res_num_sel_changes:                    0
% 2.97/0.99  res_moves_from_active_to_pass:          0
% 2.97/0.99  
% 2.97/0.99  ------ Superposition
% 2.97/0.99  
% 2.97/0.99  sup_time_total:                         0.
% 2.97/0.99  sup_time_generating:                    0.
% 2.97/0.99  sup_time_sim_full:                      0.
% 2.97/0.99  sup_time_sim_immed:                     0.
% 2.97/0.99  
% 2.97/0.99  sup_num_of_clauses:                     55
% 2.97/0.99  sup_num_in_active:                      45
% 2.97/0.99  sup_num_in_passive:                     10
% 2.97/0.99  sup_num_of_loops:                       54
% 2.97/0.99  sup_fw_superposition:                   26
% 2.97/0.99  sup_bw_superposition:                   24
% 2.97/0.99  sup_immediate_simplified:               0
% 2.97/0.99  sup_given_eliminated:                   0
% 2.97/0.99  comparisons_done:                       0
% 2.97/0.99  comparisons_avoided:                    4
% 2.97/0.99  
% 2.97/0.99  ------ Simplifications
% 2.97/0.99  
% 2.97/0.99  
% 2.97/0.99  sim_fw_subset_subsumed:                 0
% 2.97/0.99  sim_bw_subset_subsumed:                 1
% 2.97/0.99  sim_fw_subsumed:                        0
% 2.97/0.99  sim_bw_subsumed:                        0
% 2.97/0.99  sim_fw_subsumption_res:                 0
% 2.97/0.99  sim_bw_subsumption_res:                 0
% 2.97/0.99  sim_tautology_del:                      3
% 2.97/0.99  sim_eq_tautology_del:                   1
% 2.97/0.99  sim_eq_res_simp:                        0
% 2.97/0.99  sim_fw_demodulated:                     0
% 2.97/0.99  sim_bw_demodulated:                     9
% 2.97/0.99  sim_light_normalised:                   2
% 2.97/0.99  sim_joinable_taut:                      0
% 2.97/0.99  sim_joinable_simp:                      0
% 2.97/0.99  sim_ac_normalised:                      0
% 2.97/0.99  sim_smt_subsumption:                    0
% 2.97/0.99  
%------------------------------------------------------------------------------
