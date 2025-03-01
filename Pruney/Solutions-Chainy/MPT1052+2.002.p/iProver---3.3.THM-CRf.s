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
% DateTime   : Thu Dec  3 12:08:54 EST 2020

% Result     : Theorem 2.80s
% Output     : CNFRefutation 2.80s
% Verified   : 
% Statistics : Number of formulae       :  189 (1466 expanded)
%              Number of clauses        :  104 ( 466 expanded)
%              Number of leaves         :   28 ( 289 expanded)
%              Depth                    :   21
%              Number of atoms          :  513 (4605 expanded)
%              Number of equality atoms :  263 (1875 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f21,conjecture,(
    ! [X0,X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_relat_1(X2) )
     => ( r2_hidden(X2,k1_funct_2(X0,X1))
       => ( r1_tarski(k2_relat_1(X2),X1)
          & k1_relat_1(X2) = X0 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( v1_funct_1(X2)
          & v1_relat_1(X2) )
       => ( r2_hidden(X2,k1_funct_2(X0,X1))
         => ( r1_tarski(k2_relat_1(X2),X1)
            & k1_relat_1(X2) = X0 ) ) ) ),
    inference(negated_conjecture,[],[f21])).

fof(f25,plain,(
    ~ ! [X0,X1,X2] :
        ( v1_relat_1(X2)
       => ( r2_hidden(X2,k1_funct_2(X0,X1))
         => ( r1_tarski(k2_relat_1(X2),X1)
            & k1_relat_1(X2) = X0 ) ) ) ),
    inference(pure_predicate_removal,[],[f22])).

fof(f40,plain,(
    ? [X0,X1,X2] :
      ( ( ~ r1_tarski(k2_relat_1(X2),X1)
        | k1_relat_1(X2) != X0 )
      & r2_hidden(X2,k1_funct_2(X0,X1))
      & v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f25])).

fof(f41,plain,(
    ? [X0,X1,X2] :
      ( ( ~ r1_tarski(k2_relat_1(X2),X1)
        | k1_relat_1(X2) != X0 )
      & r2_hidden(X2,k1_funct_2(X0,X1))
      & v1_relat_1(X2) ) ),
    inference(flattening,[],[f40])).

fof(f55,plain,
    ( ? [X0,X1,X2] :
        ( ( ~ r1_tarski(k2_relat_1(X2),X1)
          | k1_relat_1(X2) != X0 )
        & r2_hidden(X2,k1_funct_2(X0,X1))
        & v1_relat_1(X2) )
   => ( ( ~ r1_tarski(k2_relat_1(sK4),sK3)
        | k1_relat_1(sK4) != sK2 )
      & r2_hidden(sK4,k1_funct_2(sK2,sK3))
      & v1_relat_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f56,plain,
    ( ( ~ r1_tarski(k2_relat_1(sK4),sK3)
      | k1_relat_1(sK4) != sK2 )
    & r2_hidden(sK4,k1_funct_2(sK2,sK3))
    & v1_relat_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f41,f55])).

fof(f95,plain,(
    r2_hidden(sK4,k1_funct_2(sK2,sK3)) ),
    inference(cnf_transformation,[],[f56])).

fof(f20,axiom,(
    ! [X0,X1] : k1_funct_2(X0,X1) = k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f93,plain,(
    ! [X0,X1] : k1_funct_2(X0,X1) = k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1)) ),
    inference(cnf_transformation,[],[f20])).

fof(f100,plain,(
    r2_hidden(sK4,k5_partfun1(sK2,sK3,k3_partfun1(k1_xboole_0,sK2,sK3))) ),
    inference(definition_unfolding,[],[f95,f93])).

fof(f19,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X2,k1_funct_2(X0,X1))
     => ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( r2_hidden(X2,k1_funct_2(X0,X1))
     => ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1) ) ) ),
    inference(pure_predicate_removal,[],[f19])).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1) )
      | ~ r2_hidden(X2,k1_funct_2(X0,X1)) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f92,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r2_hidden(X2,k1_funct_2(X0,X1)) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f98,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r2_hidden(X2,k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1))) ) ),
    inference(definition_unfolding,[],[f92,f93])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f72,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f52])).

fof(f13,axiom,(
    ! [X0,X1] :
      ~ ( ~ ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
            & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 )
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
        & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 )
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f13])).

fof(f78,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f14,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r1_tarski(X0,X1)
           => ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
              & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f31])).

fof(f80,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f12,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f76,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f12])).

fof(f94,plain,(
    v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f56])).

fof(f91,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | ~ r2_hidden(X2,k1_funct_2(X0,X1)) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f99,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | ~ r2_hidden(X2,k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1))) ) ),
    inference(definition_unfolding,[],[f91,f93])).

fof(f17,axiom,(
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

fof(f35,plain,(
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
    inference(ennf_transformation,[],[f17])).

fof(f36,plain,(
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
    inference(flattening,[],[f35])).

fof(f54,plain,(
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
    inference(nnf_transformation,[],[f36])).

fof(f84,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f54])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f83,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f96,plain,
    ( ~ r1_tarski(k2_relat_1(sK4),sK3)
    | k1_relat_1(sK4) != sK2 ),
    inference(cnf_transformation,[],[f56])).

fof(f15,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f53,plain,(
    ! [X0] :
      ( ( ( k1_xboole_0 = k1_relat_1(X0)
          | k1_xboole_0 != k2_relat_1(X0) )
        & ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 != k1_relat_1(X0) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f33])).

fof(f81,plain,(
    ! [X0] :
      ( k1_xboole_0 = k2_relat_1(X0)
      | k1_xboole_0 != k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f53])).

fof(f6,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k4_xboole_0(X0,X1)
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k4_xboole_0(X0,X1)
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k1_xboole_0 != k4_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f65,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k4_xboole_0(X0,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f48])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f50])).

fof(f71,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f51])).

fof(f101,plain,(
    ! [X0] : k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0) ),
    inference(equality_resolution,[],[f71])).

fof(f2,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X2] :
              ~ ( r2_hidden(X2,X1)
                & r2_hidden(X2,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f4])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f46,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f27,f46])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK1(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f43,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f42])).

fof(f44,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f43,f44])).

fof(f57,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f7])).

fof(f67,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f11,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_xboole_0(k1_relat_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( v1_xboole_0(k1_relat_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f75,plain,(
    ! [X0] :
      ( v1_xboole_0(k1_relat_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f60,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f10,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_relat_1(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f74,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X1)
        & ~ v1_xboole_0(X0) )
     => v1_xboole_0(k1_funct_2(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(k1_funct_2(X0,X1))
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f38,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(k1_funct_2(X0,X1))
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f37])).

fof(f90,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(k1_funct_2(X0,X1))
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f97,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1)))
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f90,f93])).

cnf(c_1384,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_3846,plain,
    ( X0 != X1
    | sK2 != X1
    | sK2 = X0 ),
    inference(instantiation,[status(thm)],[c_1384])).

cnf(c_6680,plain,
    ( X0 != sK2
    | sK2 = X0
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_3846])).

cnf(c_6681,plain,
    ( sK2 != sK2
    | sK2 = k1_xboole_0
    | k1_xboole_0 != sK2 ),
    inference(instantiation,[status(thm)],[c_6680])).

cnf(c_37,negated_conjecture,
    ( r2_hidden(sK4,k5_partfun1(sK2,sK3,k3_partfun1(k1_xboole_0,sK2,sK3))) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_2121,plain,
    ( r2_hidden(sK4,k5_partfun1(sK2,sK3,k3_partfun1(k1_xboole_0,sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_34,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_2123,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) = iProver_top
    | r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_4136,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2121,c_2123])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_2133,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_4396,plain,
    ( r1_tarski(sK4,k2_zfmisc_1(sK2,sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_4136,c_2133])).

cnf(c_20,plain,
    ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_22,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_2129,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_5642,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | r1_tarski(X2,k2_zfmisc_1(X0,X1)) != iProver_top
    | r1_tarski(k2_relat_1(X2),X1) = iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(k2_zfmisc_1(X0,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_20,c_2129])).

cnf(c_19,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_84,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_6464,plain,
    ( v1_relat_1(X2) != iProver_top
    | r1_tarski(k2_relat_1(X2),X1) = iProver_top
    | r1_tarski(X2,k2_zfmisc_1(X0,X1)) != iProver_top
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5642,c_84])).

cnf(c_6465,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | r1_tarski(X2,k2_zfmisc_1(X0,X1)) != iProver_top
    | r1_tarski(k2_relat_1(X2),X1) = iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_6464])).

cnf(c_6474,plain,
    ( sK2 = k1_xboole_0
    | sK3 = k1_xboole_0
    | r1_tarski(k2_relat_1(sK4),sK3) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_4396,c_6465])).

cnf(c_38,negated_conjecture,
    ( v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_35,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_32,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f84])).

cnf(c_861,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(resolution,[status(thm)],[c_35,c_32])).

cnf(c_556,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(resolution,[status(thm)],[c_34,c_32])).

cnf(c_560,plain,
    ( ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_556,c_35])).

cnf(c_865,plain,
    ( ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_861,c_35,c_556])).

cnf(c_2119,plain,
    ( k1_relset_1(X0,X1,X2) = X0
    | k1_xboole_0 = X1
    | r2_hidden(X2,k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_865])).

cnf(c_3526,plain,
    ( k1_relset_1(sK2,sK3,sK4) = sK2
    | sK3 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2121,c_2119])).

cnf(c_26,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_2125,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_4397,plain,
    ( k1_relset_1(sK2,sK3,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_4136,c_2125])).

cnf(c_4455,plain,
    ( k1_relat_1(sK4) = sK2
    | sK3 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3526,c_4397])).

cnf(c_36,negated_conjecture,
    ( ~ r1_tarski(k2_relat_1(sK4),sK3)
    | k1_relat_1(sK4) != sK2 ),
    inference(cnf_transformation,[],[f96])).

cnf(c_2122,plain,
    ( k1_relat_1(sK4) != sK2
    | r1_tarski(k2_relat_1(sK4),sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_4462,plain,
    ( sK3 = k1_xboole_0
    | r1_tarski(k2_relat_1(sK4),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_4455,c_2122])).

cnf(c_4490,plain,
    ( ~ r1_tarski(k2_relat_1(sK4),sK3)
    | sK3 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4462])).

cnf(c_25,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) = k1_xboole_0
    | k1_relat_1(X0) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_2126,plain,
    ( k2_relat_1(X0) = k1_xboole_0
    | k1_relat_1(X0) != k1_xboole_0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_4459,plain,
    ( k2_relat_1(sK4) = k1_xboole_0
    | sK2 != k1_xboole_0
    | sK3 = k1_xboole_0
    | v1_relat_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_4455,c_2126])).

cnf(c_39,plain,
    ( v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_1387,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_2416,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k2_relat_1(sK4),sK3)
    | k2_relat_1(sK4) != X0
    | sK3 != X1 ),
    inference(instantiation,[status(thm)],[c_1387])).

cnf(c_2539,plain,
    ( ~ r1_tarski(X0,sK3)
    | r1_tarski(k2_relat_1(sK4),sK3)
    | k2_relat_1(sK4) != X0
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_2416])).

cnf(c_2541,plain,
    ( k2_relat_1(sK4) != X0
    | sK3 != sK3
    | r1_tarski(X0,sK3) != iProver_top
    | r1_tarski(k2_relat_1(sK4),sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2539])).

cnf(c_2543,plain,
    ( k2_relat_1(sK4) != k1_xboole_0
    | sK3 != sK3
    | r1_tarski(k2_relat_1(sK4),sK3) = iProver_top
    | r1_tarski(k1_xboole_0,sK3) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2541])).

cnf(c_1383,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2540,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_1383])).

cnf(c_9,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_2736,plain,
    ( r1_tarski(k1_xboole_0,sK3) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_2739,plain,
    ( r1_tarski(k1_xboole_0,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2736])).

cnf(c_5087,plain,
    ( sK3 = k1_xboole_0
    | sK2 != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4459,c_39,c_2543,c_2540,c_2739,c_4462])).

cnf(c_5088,plain,
    ( sK2 != k1_xboole_0
    | sK3 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_5087])).

cnf(c_6490,plain,
    ( r1_tarski(k2_relat_1(sK4),sK3)
    | ~ v1_relat_1(sK4)
    | sK2 = k1_xboole_0
    | sK3 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_6474])).

cnf(c_6561,plain,
    ( sK3 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6474,c_38,c_4490,c_5088,c_6490])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_2139,plain,
    ( k4_xboole_0(X0,X1) = k1_xboole_0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_4405,plain,
    ( k4_xboole_0(sK4,k2_zfmisc_1(sK2,sK3)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4396,c_2139])).

cnf(c_6570,plain,
    ( k4_xboole_0(sK4,k2_zfmisc_1(sK2,k1_xboole_0)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_6561,c_4405])).

cnf(c_12,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f101])).

cnf(c_2,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_2144,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_5,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK1(X0,X1),X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_2141,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_2145,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_3611,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2141,c_2145])).

cnf(c_11,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_2135,plain,
    ( k4_xboole_0(X0,X1) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_3916,plain,
    ( k4_xboole_0(X0,X1) = X0
    | v1_xboole_0(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_3611,c_2135])).

cnf(c_4101,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(superposition,[status(thm)],[c_2144,c_3916])).

cnf(c_6595,plain,
    ( sK4 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_6570,c_12,c_4101])).

cnf(c_6576,plain,
    ( k1_relat_1(sK4) != sK2
    | r1_tarski(k2_relat_1(sK4),k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_6561,c_2122])).

cnf(c_6599,plain,
    ( k1_relat_1(k1_xboole_0) != sK2
    | r1_tarski(k2_relat_1(k1_xboole_0),k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_6595,c_6576])).

cnf(c_18,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(k1_relat_1(X0)) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_2131,plain,
    ( v1_xboole_0(X0) != iProver_top
    | v1_xboole_0(k1_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_3,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_2143,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2771,plain,
    ( k1_relat_1(X0) = k1_xboole_0
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2131,c_2143])).

cnf(c_2892,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2144,c_2771])).

cnf(c_3810,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0
    | v1_relat_1(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2892,c_2126])).

cnf(c_70,plain,
    ( k2_relat_1(X0) = k1_xboole_0
    | k1_relat_1(X0) != k1_xboole_0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_72,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0
    | k1_relat_1(k1_xboole_0) != k1_xboole_0
    | v1_relat_1(k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_70])).

cnf(c_17,plain,
    ( v1_relat_1(X0)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_90,plain,
    ( v1_relat_1(X0) = iProver_top
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_92,plain,
    ( v1_relat_1(k1_xboole_0) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_90])).

cnf(c_124,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_2793,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2771])).

cnf(c_3895,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3810,c_72,c_92,c_124,c_2793])).

cnf(c_6606,plain,
    ( sK2 != k1_xboole_0
    | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_6599,c_2892,c_3895])).

cnf(c_1385,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_5862,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(sK3)
    | sK3 != X0 ),
    inference(instantiation,[status(thm)],[c_1385])).

cnf(c_5864,plain,
    ( v1_xboole_0(sK3)
    | ~ v1_xboole_0(k1_xboole_0)
    | sK3 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_5862])).

cnf(c_33,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | v1_xboole_0(k5_partfun1(X1,X0,k3_partfun1(k1_xboole_0,X1,X0))) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_2124,plain,
    ( v1_xboole_0(X0) != iProver_top
    | v1_xboole_0(X1) = iProver_top
    | v1_xboole_0(k5_partfun1(X1,X0,k3_partfun1(k1_xboole_0,X1,X0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_3420,plain,
    ( v1_xboole_0(k5_partfun1(sK2,sK3,k3_partfun1(k1_xboole_0,sK2,sK3))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2121,c_2145])).

cnf(c_4649,plain,
    ( v1_xboole_0(sK2) = iProver_top
    | v1_xboole_0(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2124,c_3420])).

cnf(c_4703,plain,
    ( v1_xboole_0(sK2)
    | ~ v1_xboole_0(sK3) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4649])).

cnf(c_3870,plain,
    ( ~ v1_xboole_0(sK2)
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_3844,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_1383])).

cnf(c_107,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_109,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_107])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6681,c_6606,c_6561,c_5864,c_4703,c_3870,c_3844,c_2,c_109])).

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
% 0.14/0.34  % DateTime   : Tue Dec  1 19:27:51 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 2.80/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.80/0.98  
% 2.80/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.80/0.98  
% 2.80/0.98  ------  iProver source info
% 2.80/0.98  
% 2.80/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.80/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.80/0.98  git: non_committed_changes: false
% 2.80/0.98  git: last_make_outside_of_git: false
% 2.80/0.98  
% 2.80/0.98  ------ 
% 2.80/0.98  
% 2.80/0.98  ------ Input Options
% 2.80/0.98  
% 2.80/0.98  --out_options                           all
% 2.80/0.98  --tptp_safe_out                         true
% 2.80/0.98  --problem_path                          ""
% 2.80/0.98  --include_path                          ""
% 2.80/0.98  --clausifier                            res/vclausify_rel
% 2.80/0.98  --clausifier_options                    --mode clausify
% 2.80/0.98  --stdin                                 false
% 2.80/0.98  --stats_out                             all
% 2.80/0.98  
% 2.80/0.98  ------ General Options
% 2.80/0.98  
% 2.80/0.98  --fof                                   false
% 2.80/0.98  --time_out_real                         305.
% 2.80/0.98  --time_out_virtual                      -1.
% 2.80/0.98  --symbol_type_check                     false
% 2.80/0.98  --clausify_out                          false
% 2.80/0.98  --sig_cnt_out                           false
% 2.80/0.98  --trig_cnt_out                          false
% 2.80/0.98  --trig_cnt_out_tolerance                1.
% 2.80/0.98  --trig_cnt_out_sk_spl                   false
% 2.80/0.98  --abstr_cl_out                          false
% 2.80/0.98  
% 2.80/0.98  ------ Global Options
% 2.80/0.98  
% 2.80/0.98  --schedule                              default
% 2.80/0.98  --add_important_lit                     false
% 2.80/0.98  --prop_solver_per_cl                    1000
% 2.80/0.98  --min_unsat_core                        false
% 2.80/0.98  --soft_assumptions                      false
% 2.80/0.98  --soft_lemma_size                       3
% 2.80/0.98  --prop_impl_unit_size                   0
% 2.80/0.98  --prop_impl_unit                        []
% 2.80/0.98  --share_sel_clauses                     true
% 2.80/0.98  --reset_solvers                         false
% 2.80/0.98  --bc_imp_inh                            [conj_cone]
% 2.80/0.98  --conj_cone_tolerance                   3.
% 2.80/0.98  --extra_neg_conj                        none
% 2.80/0.98  --large_theory_mode                     true
% 2.80/0.98  --prolific_symb_bound                   200
% 2.80/0.98  --lt_threshold                          2000
% 2.80/0.98  --clause_weak_htbl                      true
% 2.80/0.98  --gc_record_bc_elim                     false
% 2.80/0.98  
% 2.80/0.98  ------ Preprocessing Options
% 2.80/0.98  
% 2.80/0.98  --preprocessing_flag                    true
% 2.80/0.98  --time_out_prep_mult                    0.1
% 2.80/0.98  --splitting_mode                        input
% 2.80/0.98  --splitting_grd                         true
% 2.80/0.98  --splitting_cvd                         false
% 2.80/0.98  --splitting_cvd_svl                     false
% 2.80/0.98  --splitting_nvd                         32
% 2.80/0.98  --sub_typing                            true
% 2.80/0.98  --prep_gs_sim                           true
% 2.80/0.98  --prep_unflatten                        true
% 2.80/0.98  --prep_res_sim                          true
% 2.80/0.98  --prep_upred                            true
% 2.80/0.98  --prep_sem_filter                       exhaustive
% 2.80/0.98  --prep_sem_filter_out                   false
% 2.80/0.98  --pred_elim                             true
% 2.80/0.98  --res_sim_input                         true
% 2.80/0.98  --eq_ax_congr_red                       true
% 2.80/0.98  --pure_diseq_elim                       true
% 2.80/0.98  --brand_transform                       false
% 2.80/0.98  --non_eq_to_eq                          false
% 2.80/0.98  --prep_def_merge                        true
% 2.80/0.98  --prep_def_merge_prop_impl              false
% 2.80/0.98  --prep_def_merge_mbd                    true
% 2.80/0.98  --prep_def_merge_tr_red                 false
% 2.80/0.98  --prep_def_merge_tr_cl                  false
% 2.80/0.98  --smt_preprocessing                     true
% 2.80/0.98  --smt_ac_axioms                         fast
% 2.80/0.98  --preprocessed_out                      false
% 2.80/0.98  --preprocessed_stats                    false
% 2.80/0.98  
% 2.80/0.98  ------ Abstraction refinement Options
% 2.80/0.98  
% 2.80/0.98  --abstr_ref                             []
% 2.80/0.98  --abstr_ref_prep                        false
% 2.80/0.98  --abstr_ref_until_sat                   false
% 2.80/0.98  --abstr_ref_sig_restrict                funpre
% 2.80/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.80/0.98  --abstr_ref_under                       []
% 2.80/0.98  
% 2.80/0.98  ------ SAT Options
% 2.80/0.98  
% 2.80/0.98  --sat_mode                              false
% 2.80/0.98  --sat_fm_restart_options                ""
% 2.80/0.98  --sat_gr_def                            false
% 2.80/0.98  --sat_epr_types                         true
% 2.80/0.98  --sat_non_cyclic_types                  false
% 2.80/0.98  --sat_finite_models                     false
% 2.80/0.98  --sat_fm_lemmas                         false
% 2.80/0.98  --sat_fm_prep                           false
% 2.80/0.98  --sat_fm_uc_incr                        true
% 2.80/0.98  --sat_out_model                         small
% 2.80/0.98  --sat_out_clauses                       false
% 2.80/0.98  
% 2.80/0.98  ------ QBF Options
% 2.80/0.98  
% 2.80/0.98  --qbf_mode                              false
% 2.80/0.98  --qbf_elim_univ                         false
% 2.80/0.98  --qbf_dom_inst                          none
% 2.80/0.98  --qbf_dom_pre_inst                      false
% 2.80/0.98  --qbf_sk_in                             false
% 2.80/0.98  --qbf_pred_elim                         true
% 2.80/0.98  --qbf_split                             512
% 2.80/0.98  
% 2.80/0.98  ------ BMC1 Options
% 2.80/0.98  
% 2.80/0.98  --bmc1_incremental                      false
% 2.80/0.98  --bmc1_axioms                           reachable_all
% 2.80/0.98  --bmc1_min_bound                        0
% 2.80/0.98  --bmc1_max_bound                        -1
% 2.80/0.98  --bmc1_max_bound_default                -1
% 2.80/0.98  --bmc1_symbol_reachability              true
% 2.80/0.98  --bmc1_property_lemmas                  false
% 2.80/0.98  --bmc1_k_induction                      false
% 2.80/0.98  --bmc1_non_equiv_states                 false
% 2.80/0.98  --bmc1_deadlock                         false
% 2.80/0.98  --bmc1_ucm                              false
% 2.80/0.98  --bmc1_add_unsat_core                   none
% 2.80/0.98  --bmc1_unsat_core_children              false
% 2.80/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.80/0.98  --bmc1_out_stat                         full
% 2.80/0.98  --bmc1_ground_init                      false
% 2.80/0.98  --bmc1_pre_inst_next_state              false
% 2.80/0.98  --bmc1_pre_inst_state                   false
% 2.80/0.98  --bmc1_pre_inst_reach_state             false
% 2.80/0.98  --bmc1_out_unsat_core                   false
% 2.80/0.98  --bmc1_aig_witness_out                  false
% 2.80/0.98  --bmc1_verbose                          false
% 2.80/0.98  --bmc1_dump_clauses_tptp                false
% 2.80/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.80/0.98  --bmc1_dump_file                        -
% 2.80/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.80/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.80/0.98  --bmc1_ucm_extend_mode                  1
% 2.80/0.98  --bmc1_ucm_init_mode                    2
% 2.80/0.98  --bmc1_ucm_cone_mode                    none
% 2.80/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.80/0.98  --bmc1_ucm_relax_model                  4
% 2.80/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.80/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.80/0.98  --bmc1_ucm_layered_model                none
% 2.80/0.98  --bmc1_ucm_max_lemma_size               10
% 2.80/0.98  
% 2.80/0.98  ------ AIG Options
% 2.80/0.98  
% 2.80/0.98  --aig_mode                              false
% 2.80/0.98  
% 2.80/0.98  ------ Instantiation Options
% 2.80/0.98  
% 2.80/0.98  --instantiation_flag                    true
% 2.80/0.98  --inst_sos_flag                         false
% 2.80/0.98  --inst_sos_phase                        true
% 2.80/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.80/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.80/0.98  --inst_lit_sel_side                     num_symb
% 2.80/0.98  --inst_solver_per_active                1400
% 2.80/0.98  --inst_solver_calls_frac                1.
% 2.80/0.98  --inst_passive_queue_type               priority_queues
% 2.80/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.80/0.98  --inst_passive_queues_freq              [25;2]
% 2.80/0.98  --inst_dismatching                      true
% 2.80/0.98  --inst_eager_unprocessed_to_passive     true
% 2.80/0.98  --inst_prop_sim_given                   true
% 2.80/0.98  --inst_prop_sim_new                     false
% 2.80/0.98  --inst_subs_new                         false
% 2.80/0.98  --inst_eq_res_simp                      false
% 2.80/0.98  --inst_subs_given                       false
% 2.80/0.98  --inst_orphan_elimination               true
% 2.80/0.98  --inst_learning_loop_flag               true
% 2.80/0.98  --inst_learning_start                   3000
% 2.80/0.98  --inst_learning_factor                  2
% 2.80/0.98  --inst_start_prop_sim_after_learn       3
% 2.80/0.98  --inst_sel_renew                        solver
% 2.80/0.98  --inst_lit_activity_flag                true
% 2.80/0.98  --inst_restr_to_given                   false
% 2.80/0.98  --inst_activity_threshold               500
% 2.80/0.98  --inst_out_proof                        true
% 2.80/0.98  
% 2.80/0.98  ------ Resolution Options
% 2.80/0.98  
% 2.80/0.98  --resolution_flag                       true
% 2.80/0.98  --res_lit_sel                           adaptive
% 2.80/0.98  --res_lit_sel_side                      none
% 2.80/0.98  --res_ordering                          kbo
% 2.80/0.98  --res_to_prop_solver                    active
% 2.80/0.98  --res_prop_simpl_new                    false
% 2.80/0.98  --res_prop_simpl_given                  true
% 2.80/0.98  --res_passive_queue_type                priority_queues
% 2.80/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.80/0.98  --res_passive_queues_freq               [15;5]
% 2.80/0.98  --res_forward_subs                      full
% 2.80/0.98  --res_backward_subs                     full
% 2.80/0.98  --res_forward_subs_resolution           true
% 2.80/0.98  --res_backward_subs_resolution          true
% 2.80/0.98  --res_orphan_elimination                true
% 2.80/0.98  --res_time_limit                        2.
% 2.80/0.98  --res_out_proof                         true
% 2.80/0.98  
% 2.80/0.98  ------ Superposition Options
% 2.80/0.98  
% 2.80/0.98  --superposition_flag                    true
% 2.80/0.98  --sup_passive_queue_type                priority_queues
% 2.80/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.80/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.80/0.98  --demod_completeness_check              fast
% 2.80/0.98  --demod_use_ground                      true
% 2.80/0.98  --sup_to_prop_solver                    passive
% 2.80/0.98  --sup_prop_simpl_new                    true
% 2.80/0.98  --sup_prop_simpl_given                  true
% 2.80/0.98  --sup_fun_splitting                     false
% 2.80/0.98  --sup_smt_interval                      50000
% 2.80/0.98  
% 2.80/0.98  ------ Superposition Simplification Setup
% 2.80/0.98  
% 2.80/0.98  --sup_indices_passive                   []
% 2.80/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.80/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/0.98  --sup_full_bw                           [BwDemod]
% 2.80/0.98  --sup_immed_triv                        [TrivRules]
% 2.80/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.80/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/0.98  --sup_immed_bw_main                     []
% 2.80/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.80/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.80/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.80/0.98  
% 2.80/0.98  ------ Combination Options
% 2.80/0.98  
% 2.80/0.98  --comb_res_mult                         3
% 2.80/0.98  --comb_sup_mult                         2
% 2.80/0.98  --comb_inst_mult                        10
% 2.80/0.98  
% 2.80/0.98  ------ Debug Options
% 2.80/0.98  
% 2.80/0.98  --dbg_backtrace                         false
% 2.80/0.98  --dbg_dump_prop_clauses                 false
% 2.80/0.98  --dbg_dump_prop_clauses_file            -
% 2.80/0.98  --dbg_out_stat                          false
% 2.80/0.98  ------ Parsing...
% 2.80/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.80/0.98  
% 2.80/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.80/0.98  
% 2.80/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.80/0.98  
% 2.80/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.80/0.98  ------ Proving...
% 2.80/0.98  ------ Problem Properties 
% 2.80/0.98  
% 2.80/0.98  
% 2.80/0.98  clauses                                 35
% 2.80/0.98  conjectures                             3
% 2.80/0.98  EPR                                     7
% 2.80/0.98  Horn                                    26
% 2.80/0.98  unary                                   7
% 2.80/0.98  binary                                  17
% 2.80/0.98  lits                                    76
% 2.80/0.98  lits eq                                 27
% 2.80/0.98  fd_pure                                 0
% 2.80/0.98  fd_pseudo                               0
% 2.80/0.98  fd_cond                                 3
% 2.80/0.98  fd_pseudo_cond                          0
% 2.80/0.98  AC symbols                              0
% 2.80/0.98  
% 2.80/0.98  ------ Schedule dynamic 5 is on 
% 2.80/0.98  
% 2.80/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.80/0.98  
% 2.80/0.98  
% 2.80/0.98  ------ 
% 2.80/0.98  Current options:
% 2.80/0.98  ------ 
% 2.80/0.98  
% 2.80/0.98  ------ Input Options
% 2.80/0.98  
% 2.80/0.98  --out_options                           all
% 2.80/0.98  --tptp_safe_out                         true
% 2.80/0.98  --problem_path                          ""
% 2.80/0.98  --include_path                          ""
% 2.80/0.98  --clausifier                            res/vclausify_rel
% 2.80/0.98  --clausifier_options                    --mode clausify
% 2.80/0.98  --stdin                                 false
% 2.80/0.98  --stats_out                             all
% 2.80/0.98  
% 2.80/0.98  ------ General Options
% 2.80/0.98  
% 2.80/0.98  --fof                                   false
% 2.80/0.98  --time_out_real                         305.
% 2.80/0.98  --time_out_virtual                      -1.
% 2.80/0.98  --symbol_type_check                     false
% 2.80/0.98  --clausify_out                          false
% 2.80/0.98  --sig_cnt_out                           false
% 2.80/0.98  --trig_cnt_out                          false
% 2.80/0.98  --trig_cnt_out_tolerance                1.
% 2.80/0.98  --trig_cnt_out_sk_spl                   false
% 2.80/0.98  --abstr_cl_out                          false
% 2.80/0.98  
% 2.80/0.98  ------ Global Options
% 2.80/0.98  
% 2.80/0.98  --schedule                              default
% 2.80/0.98  --add_important_lit                     false
% 2.80/0.98  --prop_solver_per_cl                    1000
% 2.80/0.98  --min_unsat_core                        false
% 2.80/0.98  --soft_assumptions                      false
% 2.80/0.98  --soft_lemma_size                       3
% 2.80/0.98  --prop_impl_unit_size                   0
% 2.80/0.98  --prop_impl_unit                        []
% 2.80/0.98  --share_sel_clauses                     true
% 2.80/0.98  --reset_solvers                         false
% 2.80/0.98  --bc_imp_inh                            [conj_cone]
% 2.80/0.98  --conj_cone_tolerance                   3.
% 2.80/0.98  --extra_neg_conj                        none
% 2.80/0.98  --large_theory_mode                     true
% 2.80/0.98  --prolific_symb_bound                   200
% 2.80/0.98  --lt_threshold                          2000
% 2.80/0.98  --clause_weak_htbl                      true
% 2.80/0.98  --gc_record_bc_elim                     false
% 2.80/0.98  
% 2.80/0.98  ------ Preprocessing Options
% 2.80/0.98  
% 2.80/0.98  --preprocessing_flag                    true
% 2.80/0.98  --time_out_prep_mult                    0.1
% 2.80/0.98  --splitting_mode                        input
% 2.80/0.98  --splitting_grd                         true
% 2.80/0.98  --splitting_cvd                         false
% 2.80/0.98  --splitting_cvd_svl                     false
% 2.80/0.98  --splitting_nvd                         32
% 2.80/0.98  --sub_typing                            true
% 2.80/0.98  --prep_gs_sim                           true
% 2.80/0.98  --prep_unflatten                        true
% 2.80/0.98  --prep_res_sim                          true
% 2.80/0.98  --prep_upred                            true
% 2.80/0.98  --prep_sem_filter                       exhaustive
% 2.80/0.98  --prep_sem_filter_out                   false
% 2.80/0.98  --pred_elim                             true
% 2.80/0.98  --res_sim_input                         true
% 2.80/0.98  --eq_ax_congr_red                       true
% 2.80/0.98  --pure_diseq_elim                       true
% 2.80/0.98  --brand_transform                       false
% 2.80/0.98  --non_eq_to_eq                          false
% 2.80/0.98  --prep_def_merge                        true
% 2.80/0.98  --prep_def_merge_prop_impl              false
% 2.80/0.98  --prep_def_merge_mbd                    true
% 2.80/0.98  --prep_def_merge_tr_red                 false
% 2.80/0.98  --prep_def_merge_tr_cl                  false
% 2.80/0.98  --smt_preprocessing                     true
% 2.80/0.98  --smt_ac_axioms                         fast
% 2.80/0.98  --preprocessed_out                      false
% 2.80/0.98  --preprocessed_stats                    false
% 2.80/0.98  
% 2.80/0.98  ------ Abstraction refinement Options
% 2.80/0.98  
% 2.80/0.98  --abstr_ref                             []
% 2.80/0.98  --abstr_ref_prep                        false
% 2.80/0.98  --abstr_ref_until_sat                   false
% 2.80/0.98  --abstr_ref_sig_restrict                funpre
% 2.80/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.80/0.98  --abstr_ref_under                       []
% 2.80/0.98  
% 2.80/0.98  ------ SAT Options
% 2.80/0.98  
% 2.80/0.98  --sat_mode                              false
% 2.80/0.98  --sat_fm_restart_options                ""
% 2.80/0.98  --sat_gr_def                            false
% 2.80/0.98  --sat_epr_types                         true
% 2.80/0.98  --sat_non_cyclic_types                  false
% 2.80/0.98  --sat_finite_models                     false
% 2.80/0.98  --sat_fm_lemmas                         false
% 2.80/0.98  --sat_fm_prep                           false
% 2.80/0.98  --sat_fm_uc_incr                        true
% 2.80/0.98  --sat_out_model                         small
% 2.80/0.98  --sat_out_clauses                       false
% 2.80/0.98  
% 2.80/0.98  ------ QBF Options
% 2.80/0.98  
% 2.80/0.98  --qbf_mode                              false
% 2.80/0.98  --qbf_elim_univ                         false
% 2.80/0.98  --qbf_dom_inst                          none
% 2.80/0.98  --qbf_dom_pre_inst                      false
% 2.80/0.98  --qbf_sk_in                             false
% 2.80/0.98  --qbf_pred_elim                         true
% 2.80/0.98  --qbf_split                             512
% 2.80/0.98  
% 2.80/0.98  ------ BMC1 Options
% 2.80/0.98  
% 2.80/0.98  --bmc1_incremental                      false
% 2.80/0.98  --bmc1_axioms                           reachable_all
% 2.80/0.98  --bmc1_min_bound                        0
% 2.80/0.98  --bmc1_max_bound                        -1
% 2.80/0.98  --bmc1_max_bound_default                -1
% 2.80/0.98  --bmc1_symbol_reachability              true
% 2.80/0.98  --bmc1_property_lemmas                  false
% 2.80/0.98  --bmc1_k_induction                      false
% 2.80/0.98  --bmc1_non_equiv_states                 false
% 2.80/0.98  --bmc1_deadlock                         false
% 2.80/0.98  --bmc1_ucm                              false
% 2.80/0.98  --bmc1_add_unsat_core                   none
% 2.80/0.98  --bmc1_unsat_core_children              false
% 2.80/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.80/0.98  --bmc1_out_stat                         full
% 2.80/0.98  --bmc1_ground_init                      false
% 2.80/0.98  --bmc1_pre_inst_next_state              false
% 2.80/0.98  --bmc1_pre_inst_state                   false
% 2.80/0.98  --bmc1_pre_inst_reach_state             false
% 2.80/0.98  --bmc1_out_unsat_core                   false
% 2.80/0.98  --bmc1_aig_witness_out                  false
% 2.80/0.98  --bmc1_verbose                          false
% 2.80/0.98  --bmc1_dump_clauses_tptp                false
% 2.80/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.80/0.98  --bmc1_dump_file                        -
% 2.80/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.80/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.80/0.98  --bmc1_ucm_extend_mode                  1
% 2.80/0.98  --bmc1_ucm_init_mode                    2
% 2.80/0.98  --bmc1_ucm_cone_mode                    none
% 2.80/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.80/0.98  --bmc1_ucm_relax_model                  4
% 2.80/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.80/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.80/0.98  --bmc1_ucm_layered_model                none
% 2.80/0.98  --bmc1_ucm_max_lemma_size               10
% 2.80/0.98  
% 2.80/0.98  ------ AIG Options
% 2.80/0.98  
% 2.80/0.98  --aig_mode                              false
% 2.80/0.98  
% 2.80/0.98  ------ Instantiation Options
% 2.80/0.98  
% 2.80/0.98  --instantiation_flag                    true
% 2.80/0.98  --inst_sos_flag                         false
% 2.80/0.98  --inst_sos_phase                        true
% 2.80/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.80/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.80/0.98  --inst_lit_sel_side                     none
% 2.80/0.98  --inst_solver_per_active                1400
% 2.80/0.98  --inst_solver_calls_frac                1.
% 2.80/0.98  --inst_passive_queue_type               priority_queues
% 2.80/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.80/0.98  --inst_passive_queues_freq              [25;2]
% 2.80/0.98  --inst_dismatching                      true
% 2.80/0.98  --inst_eager_unprocessed_to_passive     true
% 2.80/0.98  --inst_prop_sim_given                   true
% 2.80/0.98  --inst_prop_sim_new                     false
% 2.80/0.98  --inst_subs_new                         false
% 2.80/0.98  --inst_eq_res_simp                      false
% 2.80/0.98  --inst_subs_given                       false
% 2.80/0.98  --inst_orphan_elimination               true
% 2.80/0.98  --inst_learning_loop_flag               true
% 2.80/0.98  --inst_learning_start                   3000
% 2.80/0.98  --inst_learning_factor                  2
% 2.80/0.98  --inst_start_prop_sim_after_learn       3
% 2.80/0.98  --inst_sel_renew                        solver
% 2.80/0.98  --inst_lit_activity_flag                true
% 2.80/0.98  --inst_restr_to_given                   false
% 2.80/0.98  --inst_activity_threshold               500
% 2.80/0.98  --inst_out_proof                        true
% 2.80/0.98  
% 2.80/0.98  ------ Resolution Options
% 2.80/0.98  
% 2.80/0.98  --resolution_flag                       false
% 2.80/0.98  --res_lit_sel                           adaptive
% 2.80/0.98  --res_lit_sel_side                      none
% 2.80/0.98  --res_ordering                          kbo
% 2.80/0.98  --res_to_prop_solver                    active
% 2.80/0.98  --res_prop_simpl_new                    false
% 2.80/0.98  --res_prop_simpl_given                  true
% 2.80/0.98  --res_passive_queue_type                priority_queues
% 2.80/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.80/0.98  --res_passive_queues_freq               [15;5]
% 2.80/0.98  --res_forward_subs                      full
% 2.80/0.98  --res_backward_subs                     full
% 2.80/0.98  --res_forward_subs_resolution           true
% 2.80/0.98  --res_backward_subs_resolution          true
% 2.80/0.98  --res_orphan_elimination                true
% 2.80/0.98  --res_time_limit                        2.
% 2.80/0.98  --res_out_proof                         true
% 2.80/0.98  
% 2.80/0.98  ------ Superposition Options
% 2.80/0.98  
% 2.80/0.98  --superposition_flag                    true
% 2.80/0.98  --sup_passive_queue_type                priority_queues
% 2.80/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.80/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.80/0.98  --demod_completeness_check              fast
% 2.80/0.98  --demod_use_ground                      true
% 2.80/0.98  --sup_to_prop_solver                    passive
% 2.80/0.98  --sup_prop_simpl_new                    true
% 2.80/0.98  --sup_prop_simpl_given                  true
% 2.80/0.98  --sup_fun_splitting                     false
% 2.80/0.98  --sup_smt_interval                      50000
% 2.80/0.98  
% 2.80/0.98  ------ Superposition Simplification Setup
% 2.80/0.98  
% 2.80/0.98  --sup_indices_passive                   []
% 2.80/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.80/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/0.98  --sup_full_bw                           [BwDemod]
% 2.80/0.98  --sup_immed_triv                        [TrivRules]
% 2.80/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.80/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/0.98  --sup_immed_bw_main                     []
% 2.80/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.80/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.80/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.80/0.98  
% 2.80/0.98  ------ Combination Options
% 2.80/0.98  
% 2.80/0.98  --comb_res_mult                         3
% 2.80/0.98  --comb_sup_mult                         2
% 2.80/0.98  --comb_inst_mult                        10
% 2.80/0.98  
% 2.80/0.98  ------ Debug Options
% 2.80/0.98  
% 2.80/0.98  --dbg_backtrace                         false
% 2.80/0.98  --dbg_dump_prop_clauses                 false
% 2.80/0.98  --dbg_dump_prop_clauses_file            -
% 2.80/0.98  --dbg_out_stat                          false
% 2.80/0.98  
% 2.80/0.98  
% 2.80/0.98  
% 2.80/0.98  
% 2.80/0.98  ------ Proving...
% 2.80/0.98  
% 2.80/0.98  
% 2.80/0.98  % SZS status Theorem for theBenchmark.p
% 2.80/0.98  
% 2.80/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.80/0.98  
% 2.80/0.98  fof(f21,conjecture,(
% 2.80/0.98    ! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(X2,k1_funct_2(X0,X1)) => (r1_tarski(k2_relat_1(X2),X1) & k1_relat_1(X2) = X0)))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f22,negated_conjecture,(
% 2.80/0.98    ~! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(X2,k1_funct_2(X0,X1)) => (r1_tarski(k2_relat_1(X2),X1) & k1_relat_1(X2) = X0)))),
% 2.80/0.98    inference(negated_conjecture,[],[f21])).
% 2.80/0.98  
% 2.80/0.98  fof(f25,plain,(
% 2.80/0.98    ~! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X2,k1_funct_2(X0,X1)) => (r1_tarski(k2_relat_1(X2),X1) & k1_relat_1(X2) = X0)))),
% 2.80/0.98    inference(pure_predicate_removal,[],[f22])).
% 2.80/0.98  
% 2.80/0.98  fof(f40,plain,(
% 2.80/0.98    ? [X0,X1,X2] : (((~r1_tarski(k2_relat_1(X2),X1) | k1_relat_1(X2) != X0) & r2_hidden(X2,k1_funct_2(X0,X1))) & v1_relat_1(X2))),
% 2.80/0.98    inference(ennf_transformation,[],[f25])).
% 2.80/0.98  
% 2.80/0.98  fof(f41,plain,(
% 2.80/0.98    ? [X0,X1,X2] : ((~r1_tarski(k2_relat_1(X2),X1) | k1_relat_1(X2) != X0) & r2_hidden(X2,k1_funct_2(X0,X1)) & v1_relat_1(X2))),
% 2.80/0.98    inference(flattening,[],[f40])).
% 2.80/0.98  
% 2.80/0.98  fof(f55,plain,(
% 2.80/0.98    ? [X0,X1,X2] : ((~r1_tarski(k2_relat_1(X2),X1) | k1_relat_1(X2) != X0) & r2_hidden(X2,k1_funct_2(X0,X1)) & v1_relat_1(X2)) => ((~r1_tarski(k2_relat_1(sK4),sK3) | k1_relat_1(sK4) != sK2) & r2_hidden(sK4,k1_funct_2(sK2,sK3)) & v1_relat_1(sK4))),
% 2.80/0.98    introduced(choice_axiom,[])).
% 2.80/0.98  
% 2.80/0.98  fof(f56,plain,(
% 2.80/0.98    (~r1_tarski(k2_relat_1(sK4),sK3) | k1_relat_1(sK4) != sK2) & r2_hidden(sK4,k1_funct_2(sK2,sK3)) & v1_relat_1(sK4)),
% 2.80/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f41,f55])).
% 2.80/0.98  
% 2.80/0.98  fof(f95,plain,(
% 2.80/0.98    r2_hidden(sK4,k1_funct_2(sK2,sK3))),
% 2.80/0.98    inference(cnf_transformation,[],[f56])).
% 2.80/0.98  
% 2.80/0.98  fof(f20,axiom,(
% 2.80/0.98    ! [X0,X1] : k1_funct_2(X0,X1) = k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f93,plain,(
% 2.80/0.98    ( ! [X0,X1] : (k1_funct_2(X0,X1) = k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1))) )),
% 2.80/0.98    inference(cnf_transformation,[],[f20])).
% 2.80/0.98  
% 2.80/0.98  fof(f100,plain,(
% 2.80/0.98    r2_hidden(sK4,k5_partfun1(sK2,sK3,k3_partfun1(k1_xboole_0,sK2,sK3)))),
% 2.80/0.98    inference(definition_unfolding,[],[f95,f93])).
% 2.80/0.98  
% 2.80/0.98  fof(f19,axiom,(
% 2.80/0.98    ! [X0,X1,X2] : (r2_hidden(X2,k1_funct_2(X0,X1)) => (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f24,plain,(
% 2.80/0.98    ! [X0,X1,X2] : (r2_hidden(X2,k1_funct_2(X0,X1)) => (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1)))),
% 2.80/0.98    inference(pure_predicate_removal,[],[f19])).
% 2.80/0.98  
% 2.80/0.98  fof(f39,plain,(
% 2.80/0.98    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1)) | ~r2_hidden(X2,k1_funct_2(X0,X1)))),
% 2.80/0.98    inference(ennf_transformation,[],[f24])).
% 2.80/0.98  
% 2.80/0.98  fof(f92,plain,(
% 2.80/0.98    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r2_hidden(X2,k1_funct_2(X0,X1))) )),
% 2.80/0.98    inference(cnf_transformation,[],[f39])).
% 2.80/0.98  
% 2.80/0.98  fof(f98,plain,(
% 2.80/0.98    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r2_hidden(X2,k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1)))) )),
% 2.80/0.98    inference(definition_unfolding,[],[f92,f93])).
% 2.80/0.98  
% 2.80/0.98  fof(f9,axiom,(
% 2.80/0.98    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f52,plain,(
% 2.80/0.98    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.80/0.98    inference(nnf_transformation,[],[f9])).
% 2.80/0.98  
% 2.80/0.98  fof(f72,plain,(
% 2.80/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.80/0.98    inference(cnf_transformation,[],[f52])).
% 2.80/0.98  
% 2.80/0.98  fof(f13,axiom,(
% 2.80/0.98    ! [X0,X1] : ~(~(k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0) & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f30,plain,(
% 2.80/0.98    ! [X0,X1] : ((k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0) | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 2.80/0.98    inference(ennf_transformation,[],[f13])).
% 2.80/0.98  
% 2.80/0.98  fof(f78,plain,(
% 2.80/0.98    ( ! [X0,X1] : (k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 2.80/0.98    inference(cnf_transformation,[],[f30])).
% 2.80/0.98  
% 2.80/0.98  fof(f14,axiom,(
% 2.80/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r1_tarski(X0,X1) => (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))))))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f31,plain,(
% 2.80/0.98    ! [X0] : (! [X1] : (((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.80/0.98    inference(ennf_transformation,[],[f14])).
% 2.80/0.98  
% 2.80/0.98  fof(f32,plain,(
% 2.80/0.98    ! [X0] : (! [X1] : ((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.80/0.98    inference(flattening,[],[f31])).
% 2.80/0.98  
% 2.80/0.98  fof(f80,plain,(
% 2.80/0.98    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f32])).
% 2.80/0.98  
% 2.80/0.98  fof(f12,axiom,(
% 2.80/0.98    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f76,plain,(
% 2.80/0.98    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.80/0.98    inference(cnf_transformation,[],[f12])).
% 2.80/0.98  
% 2.80/0.98  fof(f94,plain,(
% 2.80/0.98    v1_relat_1(sK4)),
% 2.80/0.98    inference(cnf_transformation,[],[f56])).
% 2.80/0.98  
% 2.80/0.98  fof(f91,plain,(
% 2.80/0.98    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | ~r2_hidden(X2,k1_funct_2(X0,X1))) )),
% 2.80/0.98    inference(cnf_transformation,[],[f39])).
% 2.80/0.98  
% 2.80/0.98  fof(f99,plain,(
% 2.80/0.98    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | ~r2_hidden(X2,k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1)))) )),
% 2.80/0.98    inference(definition_unfolding,[],[f91,f93])).
% 2.80/0.98  
% 2.80/0.98  fof(f17,axiom,(
% 2.80/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f35,plain,(
% 2.80/0.98    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.80/0.98    inference(ennf_transformation,[],[f17])).
% 2.80/0.98  
% 2.80/0.98  fof(f36,plain,(
% 2.80/0.98    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.80/0.98    inference(flattening,[],[f35])).
% 2.80/0.98  
% 2.80/0.98  fof(f54,plain,(
% 2.80/0.98    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.80/0.98    inference(nnf_transformation,[],[f36])).
% 2.80/0.98  
% 2.80/0.98  fof(f84,plain,(
% 2.80/0.98    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.80/0.98    inference(cnf_transformation,[],[f54])).
% 2.80/0.98  
% 2.80/0.98  fof(f16,axiom,(
% 2.80/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f34,plain,(
% 2.80/0.98    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.80/0.98    inference(ennf_transformation,[],[f16])).
% 2.80/0.98  
% 2.80/0.98  fof(f83,plain,(
% 2.80/0.98    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.80/0.98    inference(cnf_transformation,[],[f34])).
% 2.80/0.98  
% 2.80/0.98  fof(f96,plain,(
% 2.80/0.98    ~r1_tarski(k2_relat_1(sK4),sK3) | k1_relat_1(sK4) != sK2),
% 2.80/0.98    inference(cnf_transformation,[],[f56])).
% 2.80/0.98  
% 2.80/0.98  fof(f15,axiom,(
% 2.80/0.98    ! [X0] : (v1_relat_1(X0) => (k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f33,plain,(
% 2.80/0.98    ! [X0] : ((k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)) | ~v1_relat_1(X0))),
% 2.80/0.98    inference(ennf_transformation,[],[f15])).
% 2.80/0.98  
% 2.80/0.98  fof(f53,plain,(
% 2.80/0.98    ! [X0] : (((k1_xboole_0 = k1_relat_1(X0) | k1_xboole_0 != k2_relat_1(X0)) & (k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 2.80/0.98    inference(nnf_transformation,[],[f33])).
% 2.80/0.98  
% 2.80/0.98  fof(f81,plain,(
% 2.80/0.98    ( ! [X0] : (k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 != k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f53])).
% 2.80/0.98  
% 2.80/0.98  fof(f6,axiom,(
% 2.80/0.98    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f66,plain,(
% 2.80/0.98    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f6])).
% 2.80/0.98  
% 2.80/0.98  fof(f5,axiom,(
% 2.80/0.98    ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(X0,X1) <=> r1_tarski(X0,X1))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f48,plain,(
% 2.80/0.98    ! [X0,X1] : ((k1_xboole_0 = k4_xboole_0(X0,X1) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k1_xboole_0 != k4_xboole_0(X0,X1)))),
% 2.80/0.98    inference(nnf_transformation,[],[f5])).
% 2.80/0.98  
% 2.80/0.98  fof(f65,plain,(
% 2.80/0.98    ( ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(X0,X1) | ~r1_tarski(X0,X1)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f48])).
% 2.80/0.98  
% 2.80/0.98  fof(f8,axiom,(
% 2.80/0.98    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f50,plain,(
% 2.80/0.98    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 2.80/0.98    inference(nnf_transformation,[],[f8])).
% 2.80/0.98  
% 2.80/0.98  fof(f51,plain,(
% 2.80/0.98    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 2.80/0.98    inference(flattening,[],[f50])).
% 2.80/0.98  
% 2.80/0.98  fof(f71,plain,(
% 2.80/0.98    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X1) )),
% 2.80/0.98    inference(cnf_transformation,[],[f51])).
% 2.80/0.98  
% 2.80/0.98  fof(f101,plain,(
% 2.80/0.98    ( ! [X0] : (k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0)) )),
% 2.80/0.98    inference(equality_resolution,[],[f71])).
% 2.80/0.98  
% 2.80/0.98  fof(f2,axiom,(
% 2.80/0.98    v1_xboole_0(k1_xboole_0)),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f59,plain,(
% 2.80/0.98    v1_xboole_0(k1_xboole_0)),
% 2.80/0.98    inference(cnf_transformation,[],[f2])).
% 2.80/0.98  
% 2.80/0.98  fof(f4,axiom,(
% 2.80/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f23,plain,(
% 2.80/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.80/0.98    inference(rectify,[],[f4])).
% 2.80/0.98  
% 2.80/0.98  fof(f27,plain,(
% 2.80/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 2.80/0.98    inference(ennf_transformation,[],[f23])).
% 2.80/0.98  
% 2.80/0.98  fof(f46,plain,(
% 2.80/0.98    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 2.80/0.98    introduced(choice_axiom,[])).
% 2.80/0.98  
% 2.80/0.98  fof(f47,plain,(
% 2.80/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 2.80/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f27,f46])).
% 2.80/0.98  
% 2.80/0.98  fof(f62,plain,(
% 2.80/0.98    ( ! [X0,X1] : (r2_hidden(sK1(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f47])).
% 2.80/0.98  
% 2.80/0.98  fof(f1,axiom,(
% 2.80/0.98    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f42,plain,(
% 2.80/0.98    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 2.80/0.98    inference(nnf_transformation,[],[f1])).
% 2.80/0.98  
% 2.80/0.98  fof(f43,plain,(
% 2.80/0.98    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.80/0.98    inference(rectify,[],[f42])).
% 2.80/0.98  
% 2.80/0.98  fof(f44,plain,(
% 2.80/0.98    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 2.80/0.98    introduced(choice_axiom,[])).
% 2.80/0.98  
% 2.80/0.98  fof(f45,plain,(
% 2.80/0.98    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.80/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f43,f44])).
% 2.80/0.98  
% 2.80/0.98  fof(f57,plain,(
% 2.80/0.98    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f45])).
% 2.80/0.98  
% 2.80/0.98  fof(f7,axiom,(
% 2.80/0.98    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f49,plain,(
% 2.80/0.98    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 2.80/0.98    inference(nnf_transformation,[],[f7])).
% 2.80/0.98  
% 2.80/0.98  fof(f67,plain,(
% 2.80/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f49])).
% 2.80/0.98  
% 2.80/0.98  fof(f11,axiom,(
% 2.80/0.98    ! [X0] : (v1_xboole_0(X0) => v1_xboole_0(k1_relat_1(X0)))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f29,plain,(
% 2.80/0.98    ! [X0] : (v1_xboole_0(k1_relat_1(X0)) | ~v1_xboole_0(X0))),
% 2.80/0.98    inference(ennf_transformation,[],[f11])).
% 2.80/0.98  
% 2.80/0.98  fof(f75,plain,(
% 2.80/0.98    ( ! [X0] : (v1_xboole_0(k1_relat_1(X0)) | ~v1_xboole_0(X0)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f29])).
% 2.80/0.98  
% 2.80/0.98  fof(f3,axiom,(
% 2.80/0.98    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f26,plain,(
% 2.80/0.98    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 2.80/0.98    inference(ennf_transformation,[],[f3])).
% 2.80/0.98  
% 2.80/0.98  fof(f60,plain,(
% 2.80/0.98    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f26])).
% 2.80/0.98  
% 2.80/0.98  fof(f10,axiom,(
% 2.80/0.98    ! [X0] : (v1_xboole_0(X0) => v1_relat_1(X0))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f28,plain,(
% 2.80/0.98    ! [X0] : (v1_relat_1(X0) | ~v1_xboole_0(X0))),
% 2.80/0.98    inference(ennf_transformation,[],[f10])).
% 2.80/0.98  
% 2.80/0.98  fof(f74,plain,(
% 2.80/0.98    ( ! [X0] : (v1_relat_1(X0) | ~v1_xboole_0(X0)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f28])).
% 2.80/0.98  
% 2.80/0.98  fof(f18,axiom,(
% 2.80/0.98    ! [X0,X1] : ((v1_xboole_0(X1) & ~v1_xboole_0(X0)) => v1_xboole_0(k1_funct_2(X0,X1)))),
% 2.80/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/0.98  
% 2.80/0.98  fof(f37,plain,(
% 2.80/0.98    ! [X0,X1] : (v1_xboole_0(k1_funct_2(X0,X1)) | (~v1_xboole_0(X1) | v1_xboole_0(X0)))),
% 2.80/0.98    inference(ennf_transformation,[],[f18])).
% 2.80/0.98  
% 2.80/0.98  fof(f38,plain,(
% 2.80/0.98    ! [X0,X1] : (v1_xboole_0(k1_funct_2(X0,X1)) | ~v1_xboole_0(X1) | v1_xboole_0(X0))),
% 2.80/0.98    inference(flattening,[],[f37])).
% 2.80/0.98  
% 2.80/0.98  fof(f90,plain,(
% 2.80/0.98    ( ! [X0,X1] : (v1_xboole_0(k1_funct_2(X0,X1)) | ~v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 2.80/0.98    inference(cnf_transformation,[],[f38])).
% 2.80/0.98  
% 2.80/0.98  fof(f97,plain,(
% 2.80/0.98    ( ! [X0,X1] : (v1_xboole_0(k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1))) | ~v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 2.80/0.98    inference(definition_unfolding,[],[f90,f93])).
% 2.80/0.98  
% 2.80/0.98  cnf(c_1384,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_3846,plain,
% 2.80/0.98      ( X0 != X1 | sK2 != X1 | sK2 = X0 ),
% 2.80/0.98      inference(instantiation,[status(thm)],[c_1384]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6680,plain,
% 2.80/0.98      ( X0 != sK2 | sK2 = X0 | sK2 != sK2 ),
% 2.80/0.98      inference(instantiation,[status(thm)],[c_3846]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6681,plain,
% 2.80/0.98      ( sK2 != sK2 | sK2 = k1_xboole_0 | k1_xboole_0 != sK2 ),
% 2.80/0.98      inference(instantiation,[status(thm)],[c_6680]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_37,negated_conjecture,
% 2.80/0.98      ( r2_hidden(sK4,k5_partfun1(sK2,sK3,k3_partfun1(k1_xboole_0,sK2,sK3))) ),
% 2.80/0.98      inference(cnf_transformation,[],[f100]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2121,plain,
% 2.80/0.98      ( r2_hidden(sK4,k5_partfun1(sK2,sK3,k3_partfun1(k1_xboole_0,sK2,sK3))) = iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_34,plain,
% 2.80/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.80/0.98      | ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))) ),
% 2.80/0.98      inference(cnf_transformation,[],[f98]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2123,plain,
% 2.80/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) = iProver_top
% 2.80/0.98      | r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_4136,plain,
% 2.80/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_2121,c_2123]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_16,plain,
% 2.80/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.80/0.98      inference(cnf_transformation,[],[f72]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2133,plain,
% 2.80/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.80/0.98      | r1_tarski(X0,X1) = iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_4396,plain,
% 2.80/0.98      ( r1_tarski(sK4,k2_zfmisc_1(sK2,sK3)) = iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_4136,c_2133]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_20,plain,
% 2.80/0.98      ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
% 2.80/0.98      | k1_xboole_0 = X0
% 2.80/0.98      | k1_xboole_0 = X1 ),
% 2.80/0.98      inference(cnf_transformation,[],[f78]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_22,plain,
% 2.80/0.98      ( ~ r1_tarski(X0,X1)
% 2.80/0.98      | r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
% 2.80/0.98      | ~ v1_relat_1(X1)
% 2.80/0.98      | ~ v1_relat_1(X0) ),
% 2.80/0.98      inference(cnf_transformation,[],[f80]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2129,plain,
% 2.80/0.98      ( r1_tarski(X0,X1) != iProver_top
% 2.80/0.98      | r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) = iProver_top
% 2.80/0.98      | v1_relat_1(X0) != iProver_top
% 2.80/0.98      | v1_relat_1(X1) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_5642,plain,
% 2.80/0.98      ( k1_xboole_0 = X0
% 2.80/0.98      | k1_xboole_0 = X1
% 2.80/0.98      | r1_tarski(X2,k2_zfmisc_1(X0,X1)) != iProver_top
% 2.80/0.98      | r1_tarski(k2_relat_1(X2),X1) = iProver_top
% 2.80/0.98      | v1_relat_1(X2) != iProver_top
% 2.80/0.98      | v1_relat_1(k2_zfmisc_1(X0,X1)) != iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_20,c_2129]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_19,plain,
% 2.80/0.98      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.80/0.98      inference(cnf_transformation,[],[f76]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_84,plain,
% 2.80/0.98      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6464,plain,
% 2.80/0.98      ( v1_relat_1(X2) != iProver_top
% 2.80/0.98      | r1_tarski(k2_relat_1(X2),X1) = iProver_top
% 2.80/0.98      | r1_tarski(X2,k2_zfmisc_1(X0,X1)) != iProver_top
% 2.80/0.98      | k1_xboole_0 = X1
% 2.80/0.98      | k1_xboole_0 = X0 ),
% 2.80/0.98      inference(global_propositional_subsumption,
% 2.80/0.98                [status(thm)],
% 2.80/0.98                [c_5642,c_84]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6465,plain,
% 2.80/0.98      ( k1_xboole_0 = X0
% 2.80/0.98      | k1_xboole_0 = X1
% 2.80/0.98      | r1_tarski(X2,k2_zfmisc_1(X0,X1)) != iProver_top
% 2.80/0.98      | r1_tarski(k2_relat_1(X2),X1) = iProver_top
% 2.80/0.98      | v1_relat_1(X2) != iProver_top ),
% 2.80/0.98      inference(renaming,[status(thm)],[c_6464]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6474,plain,
% 2.80/0.98      ( sK2 = k1_xboole_0
% 2.80/0.98      | sK3 = k1_xboole_0
% 2.80/0.98      | r1_tarski(k2_relat_1(sK4),sK3) = iProver_top
% 2.80/0.98      | v1_relat_1(sK4) != iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_4396,c_6465]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_38,negated_conjecture,
% 2.80/0.98      ( v1_relat_1(sK4) ),
% 2.80/0.98      inference(cnf_transformation,[],[f94]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_35,plain,
% 2.80/0.98      ( v1_funct_2(X0,X1,X2)
% 2.80/0.98      | ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))) ),
% 2.80/0.98      inference(cnf_transformation,[],[f99]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_32,plain,
% 2.80/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 2.80/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.80/0.98      | k1_relset_1(X1,X2,X0) = X1
% 2.80/0.98      | k1_xboole_0 = X2 ),
% 2.80/0.98      inference(cnf_transformation,[],[f84]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_861,plain,
% 2.80/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.80/0.98      | ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))
% 2.80/0.98      | k1_relset_1(X1,X2,X0) = X1
% 2.80/0.98      | k1_xboole_0 = X2 ),
% 2.80/0.98      inference(resolution,[status(thm)],[c_35,c_32]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_556,plain,
% 2.80/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 2.80/0.98      | ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))
% 2.80/0.98      | k1_relset_1(X1,X2,X0) = X1
% 2.80/0.98      | k1_xboole_0 = X2 ),
% 2.80/0.98      inference(resolution,[status(thm)],[c_34,c_32]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_560,plain,
% 2.80/0.98      ( ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))
% 2.80/0.98      | k1_relset_1(X1,X2,X0) = X1
% 2.80/0.98      | k1_xboole_0 = X2 ),
% 2.80/0.98      inference(global_propositional_subsumption,
% 2.80/0.98                [status(thm)],
% 2.80/0.98                [c_556,c_35]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_865,plain,
% 2.80/0.98      ( ~ r2_hidden(X0,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))
% 2.80/0.98      | k1_relset_1(X1,X2,X0) = X1
% 2.80/0.98      | k1_xboole_0 = X2 ),
% 2.80/0.98      inference(global_propositional_subsumption,
% 2.80/0.98                [status(thm)],
% 2.80/0.98                [c_861,c_35,c_556]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2119,plain,
% 2.80/0.98      ( k1_relset_1(X0,X1,X2) = X0
% 2.80/0.98      | k1_xboole_0 = X1
% 2.80/0.98      | r2_hidden(X2,k5_partfun1(X0,X1,k3_partfun1(k1_xboole_0,X0,X1))) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_865]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_3526,plain,
% 2.80/0.98      ( k1_relset_1(sK2,sK3,sK4) = sK2 | sK3 = k1_xboole_0 ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_2121,c_2119]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_26,plain,
% 2.80/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.80/0.98      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.80/0.98      inference(cnf_transformation,[],[f83]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2125,plain,
% 2.80/0.98      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.80/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_4397,plain,
% 2.80/0.98      ( k1_relset_1(sK2,sK3,sK4) = k1_relat_1(sK4) ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_4136,c_2125]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_4455,plain,
% 2.80/0.98      ( k1_relat_1(sK4) = sK2 | sK3 = k1_xboole_0 ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_3526,c_4397]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_36,negated_conjecture,
% 2.80/0.98      ( ~ r1_tarski(k2_relat_1(sK4),sK3) | k1_relat_1(sK4) != sK2 ),
% 2.80/0.98      inference(cnf_transformation,[],[f96]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2122,plain,
% 2.80/0.98      ( k1_relat_1(sK4) != sK2
% 2.80/0.98      | r1_tarski(k2_relat_1(sK4),sK3) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_4462,plain,
% 2.80/0.98      ( sK3 = k1_xboole_0
% 2.80/0.98      | r1_tarski(k2_relat_1(sK4),sK3) != iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_4455,c_2122]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_4490,plain,
% 2.80/0.98      ( ~ r1_tarski(k2_relat_1(sK4),sK3) | sK3 = k1_xboole_0 ),
% 2.80/0.98      inference(predicate_to_equality_rev,[status(thm)],[c_4462]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_25,plain,
% 2.80/0.98      ( ~ v1_relat_1(X0)
% 2.80/0.98      | k2_relat_1(X0) = k1_xboole_0
% 2.80/0.98      | k1_relat_1(X0) != k1_xboole_0 ),
% 2.80/0.98      inference(cnf_transformation,[],[f81]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2126,plain,
% 2.80/0.98      ( k2_relat_1(X0) = k1_xboole_0
% 2.80/0.98      | k1_relat_1(X0) != k1_xboole_0
% 2.80/0.98      | v1_relat_1(X0) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_4459,plain,
% 2.80/0.98      ( k2_relat_1(sK4) = k1_xboole_0
% 2.80/0.98      | sK2 != k1_xboole_0
% 2.80/0.98      | sK3 = k1_xboole_0
% 2.80/0.98      | v1_relat_1(sK4) != iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_4455,c_2126]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_39,plain,
% 2.80/0.98      ( v1_relat_1(sK4) = iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_1387,plain,
% 2.80/0.98      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.80/0.98      theory(equality) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2416,plain,
% 2.80/0.98      ( ~ r1_tarski(X0,X1)
% 2.80/0.98      | r1_tarski(k2_relat_1(sK4),sK3)
% 2.80/0.98      | k2_relat_1(sK4) != X0
% 2.80/0.98      | sK3 != X1 ),
% 2.80/0.98      inference(instantiation,[status(thm)],[c_1387]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2539,plain,
% 2.80/0.98      ( ~ r1_tarski(X0,sK3)
% 2.80/0.98      | r1_tarski(k2_relat_1(sK4),sK3)
% 2.80/0.98      | k2_relat_1(sK4) != X0
% 2.80/0.98      | sK3 != sK3 ),
% 2.80/0.98      inference(instantiation,[status(thm)],[c_2416]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2541,plain,
% 2.80/0.98      ( k2_relat_1(sK4) != X0
% 2.80/0.98      | sK3 != sK3
% 2.80/0.98      | r1_tarski(X0,sK3) != iProver_top
% 2.80/0.98      | r1_tarski(k2_relat_1(sK4),sK3) = iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_2539]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2543,plain,
% 2.80/0.98      ( k2_relat_1(sK4) != k1_xboole_0
% 2.80/0.98      | sK3 != sK3
% 2.80/0.98      | r1_tarski(k2_relat_1(sK4),sK3) = iProver_top
% 2.80/0.98      | r1_tarski(k1_xboole_0,sK3) != iProver_top ),
% 2.80/0.98      inference(instantiation,[status(thm)],[c_2541]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_1383,plain,( X0 = X0 ),theory(equality) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2540,plain,
% 2.80/0.98      ( sK3 = sK3 ),
% 2.80/0.98      inference(instantiation,[status(thm)],[c_1383]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_9,plain,
% 2.80/0.98      ( r1_tarski(k1_xboole_0,X0) ),
% 2.80/0.98      inference(cnf_transformation,[],[f66]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2736,plain,
% 2.80/0.98      ( r1_tarski(k1_xboole_0,sK3) ),
% 2.80/0.98      inference(instantiation,[status(thm)],[c_9]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2739,plain,
% 2.80/0.98      ( r1_tarski(k1_xboole_0,sK3) = iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_2736]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_5087,plain,
% 2.80/0.98      ( sK3 = k1_xboole_0 | sK2 != k1_xboole_0 ),
% 2.80/0.98      inference(global_propositional_subsumption,
% 2.80/0.98                [status(thm)],
% 2.80/0.98                [c_4459,c_39,c_2543,c_2540,c_2739,c_4462]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_5088,plain,
% 2.80/0.98      ( sK2 != k1_xboole_0 | sK3 = k1_xboole_0 ),
% 2.80/0.98      inference(renaming,[status(thm)],[c_5087]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6490,plain,
% 2.80/0.98      ( r1_tarski(k2_relat_1(sK4),sK3)
% 2.80/0.98      | ~ v1_relat_1(sK4)
% 2.80/0.98      | sK2 = k1_xboole_0
% 2.80/0.98      | sK3 = k1_xboole_0 ),
% 2.80/0.98      inference(predicate_to_equality_rev,[status(thm)],[c_6474]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6561,plain,
% 2.80/0.98      ( sK3 = k1_xboole_0 ),
% 2.80/0.98      inference(global_propositional_subsumption,
% 2.80/0.98                [status(thm)],
% 2.80/0.98                [c_6474,c_38,c_4490,c_5088,c_6490]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_7,plain,
% 2.80/0.98      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 2.80/0.98      inference(cnf_transformation,[],[f65]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2139,plain,
% 2.80/0.98      ( k4_xboole_0(X0,X1) = k1_xboole_0
% 2.80/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_4405,plain,
% 2.80/0.98      ( k4_xboole_0(sK4,k2_zfmisc_1(sK2,sK3)) = k1_xboole_0 ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_4396,c_2139]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6570,plain,
% 2.80/0.98      ( k4_xboole_0(sK4,k2_zfmisc_1(sK2,k1_xboole_0)) = k1_xboole_0 ),
% 2.80/0.98      inference(demodulation,[status(thm)],[c_6561,c_4405]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_12,plain,
% 2.80/0.98      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 2.80/0.98      inference(cnf_transformation,[],[f101]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2,plain,
% 2.80/0.98      ( v1_xboole_0(k1_xboole_0) ),
% 2.80/0.98      inference(cnf_transformation,[],[f59]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2144,plain,
% 2.80/0.98      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_5,plain,
% 2.80/0.98      ( r1_xboole_0(X0,X1) | r2_hidden(sK1(X0,X1),X1) ),
% 2.80/0.98      inference(cnf_transformation,[],[f62]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2141,plain,
% 2.80/0.98      ( r1_xboole_0(X0,X1) = iProver_top
% 2.80/0.98      | r2_hidden(sK1(X0,X1),X1) = iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_1,plain,
% 2.80/0.98      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 2.80/0.98      inference(cnf_transformation,[],[f57]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2145,plain,
% 2.80/0.98      ( r2_hidden(X0,X1) != iProver_top
% 2.80/0.98      | v1_xboole_0(X1) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_3611,plain,
% 2.80/0.98      ( r1_xboole_0(X0,X1) = iProver_top
% 2.80/0.98      | v1_xboole_0(X1) != iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_2141,c_2145]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_11,plain,
% 2.80/0.98      ( ~ r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) = X0 ),
% 2.80/0.98      inference(cnf_transformation,[],[f67]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2135,plain,
% 2.80/0.98      ( k4_xboole_0(X0,X1) = X0 | r1_xboole_0(X0,X1) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_3916,plain,
% 2.80/0.98      ( k4_xboole_0(X0,X1) = X0 | v1_xboole_0(X1) != iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_3611,c_2135]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_4101,plain,
% 2.80/0.98      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_2144,c_3916]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6595,plain,
% 2.80/0.98      ( sK4 = k1_xboole_0 ),
% 2.80/0.98      inference(demodulation,[status(thm)],[c_6570,c_12,c_4101]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6576,plain,
% 2.80/0.98      ( k1_relat_1(sK4) != sK2
% 2.80/0.98      | r1_tarski(k2_relat_1(sK4),k1_xboole_0) != iProver_top ),
% 2.80/0.98      inference(demodulation,[status(thm)],[c_6561,c_2122]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_6599,plain,
% 2.80/0.98      ( k1_relat_1(k1_xboole_0) != sK2
% 2.80/0.98      | r1_tarski(k2_relat_1(k1_xboole_0),k1_xboole_0) != iProver_top ),
% 2.80/0.98      inference(demodulation,[status(thm)],[c_6595,c_6576]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_18,plain,
% 2.80/0.98      ( ~ v1_xboole_0(X0) | v1_xboole_0(k1_relat_1(X0)) ),
% 2.80/0.98      inference(cnf_transformation,[],[f75]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2131,plain,
% 2.80/0.98      ( v1_xboole_0(X0) != iProver_top
% 2.80/0.98      | v1_xboole_0(k1_relat_1(X0)) = iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_3,plain,
% 2.80/0.98      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 2.80/0.98      inference(cnf_transformation,[],[f60]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2143,plain,
% 2.80/0.98      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2771,plain,
% 2.80/0.98      ( k1_relat_1(X0) = k1_xboole_0 | v1_xboole_0(X0) != iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_2131,c_2143]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_2892,plain,
% 2.80/0.98      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_2144,c_2771]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_3810,plain,
% 2.80/0.98      ( k2_relat_1(k1_xboole_0) = k1_xboole_0
% 2.80/0.98      | v1_relat_1(k1_xboole_0) != iProver_top ),
% 2.80/0.98      inference(superposition,[status(thm)],[c_2892,c_2126]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_70,plain,
% 2.80/0.98      ( k2_relat_1(X0) = k1_xboole_0
% 2.80/0.98      | k1_relat_1(X0) != k1_xboole_0
% 2.80/0.98      | v1_relat_1(X0) != iProver_top ),
% 2.80/0.98      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_72,plain,
% 2.80/0.98      ( k2_relat_1(k1_xboole_0) = k1_xboole_0
% 2.80/0.98      | k1_relat_1(k1_xboole_0) != k1_xboole_0
% 2.80/0.98      | v1_relat_1(k1_xboole_0) != iProver_top ),
% 2.80/0.98      inference(instantiation,[status(thm)],[c_70]) ).
% 2.80/0.98  
% 2.80/0.98  cnf(c_17,plain,
% 2.80/0.98      ( v1_relat_1(X0) | ~ v1_xboole_0(X0) ),
% 2.80/0.98      inference(cnf_transformation,[],[f74]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_90,plain,
% 2.80/0.99      ( v1_relat_1(X0) = iProver_top | v1_xboole_0(X0) != iProver_top ),
% 2.80/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_92,plain,
% 2.80/0.99      ( v1_relat_1(k1_xboole_0) = iProver_top
% 2.80/0.99      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 2.80/0.99      inference(instantiation,[status(thm)],[c_90]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_124,plain,
% 2.80/0.99      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.80/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_2793,plain,
% 2.80/0.99      ( k1_relat_1(k1_xboole_0) = k1_xboole_0
% 2.80/0.99      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 2.80/0.99      inference(instantiation,[status(thm)],[c_2771]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_3895,plain,
% 2.80/0.99      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 2.80/0.99      inference(global_propositional_subsumption,
% 2.80/0.99                [status(thm)],
% 2.80/0.99                [c_3810,c_72,c_92,c_124,c_2793]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_6606,plain,
% 2.80/0.99      ( sK2 != k1_xboole_0
% 2.80/0.99      | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
% 2.80/0.99      inference(light_normalisation,[status(thm)],[c_6599,c_2892,c_3895]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_1385,plain,
% 2.80/0.99      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 2.80/0.99      theory(equality) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_5862,plain,
% 2.80/0.99      ( ~ v1_xboole_0(X0) | v1_xboole_0(sK3) | sK3 != X0 ),
% 2.80/0.99      inference(instantiation,[status(thm)],[c_1385]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_5864,plain,
% 2.80/0.99      ( v1_xboole_0(sK3)
% 2.80/0.99      | ~ v1_xboole_0(k1_xboole_0)
% 2.80/0.99      | sK3 != k1_xboole_0 ),
% 2.80/0.99      inference(instantiation,[status(thm)],[c_5862]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_33,plain,
% 2.80/0.99      ( ~ v1_xboole_0(X0)
% 2.80/0.99      | v1_xboole_0(X1)
% 2.80/0.99      | v1_xboole_0(k5_partfun1(X1,X0,k3_partfun1(k1_xboole_0,X1,X0))) ),
% 2.80/0.99      inference(cnf_transformation,[],[f97]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_2124,plain,
% 2.80/0.99      ( v1_xboole_0(X0) != iProver_top
% 2.80/0.99      | v1_xboole_0(X1) = iProver_top
% 2.80/0.99      | v1_xboole_0(k5_partfun1(X1,X0,k3_partfun1(k1_xboole_0,X1,X0))) = iProver_top ),
% 2.80/0.99      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_3420,plain,
% 2.80/0.99      ( v1_xboole_0(k5_partfun1(sK2,sK3,k3_partfun1(k1_xboole_0,sK2,sK3))) != iProver_top ),
% 2.80/0.99      inference(superposition,[status(thm)],[c_2121,c_2145]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_4649,plain,
% 2.80/0.99      ( v1_xboole_0(sK2) = iProver_top
% 2.80/0.99      | v1_xboole_0(sK3) != iProver_top ),
% 2.80/0.99      inference(superposition,[status(thm)],[c_2124,c_3420]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_4703,plain,
% 2.80/0.99      ( v1_xboole_0(sK2) | ~ v1_xboole_0(sK3) ),
% 2.80/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_4649]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_3870,plain,
% 2.80/0.99      ( ~ v1_xboole_0(sK2) | k1_xboole_0 = sK2 ),
% 2.80/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_3844,plain,
% 2.80/0.99      ( sK2 = sK2 ),
% 2.80/0.99      inference(instantiation,[status(thm)],[c_1383]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_107,plain,
% 2.80/0.99      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 2.80/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(c_109,plain,
% 2.80/0.99      ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
% 2.80/0.99      inference(instantiation,[status(thm)],[c_107]) ).
% 2.80/0.99  
% 2.80/0.99  cnf(contradiction,plain,
% 2.80/0.99      ( $false ),
% 2.80/0.99      inference(minisat,
% 2.80/0.99                [status(thm)],
% 2.80/0.99                [c_6681,c_6606,c_6561,c_5864,c_4703,c_3870,c_3844,c_2,
% 2.80/0.99                 c_109]) ).
% 2.80/0.99  
% 2.80/0.99  
% 2.80/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.80/0.99  
% 2.80/0.99  ------                               Statistics
% 2.80/0.99  
% 2.80/0.99  ------ General
% 2.80/0.99  
% 2.80/0.99  abstr_ref_over_cycles:                  0
% 2.80/0.99  abstr_ref_under_cycles:                 0
% 2.80/0.99  gc_basic_clause_elim:                   0
% 2.80/0.99  forced_gc_time:                         0
% 2.80/0.99  parsing_time:                           0.011
% 2.80/0.99  unif_index_cands_time:                  0.
% 2.80/0.99  unif_index_add_time:                    0.
% 2.80/0.99  orderings_time:                         0.
% 2.80/0.99  out_proof_time:                         0.01
% 2.80/0.99  total_time:                             0.178
% 2.80/0.99  num_of_symbols:                         52
% 2.80/0.99  num_of_terms:                           4638
% 2.80/0.99  
% 2.80/0.99  ------ Preprocessing
% 2.80/0.99  
% 2.80/0.99  num_of_splits:                          0
% 2.80/0.99  num_of_split_atoms:                     0
% 2.80/0.99  num_of_reused_defs:                     0
% 2.80/0.99  num_eq_ax_congr_red:                    29
% 2.80/0.99  num_of_sem_filtered_clauses:            1
% 2.80/0.99  num_of_subtypes:                        0
% 2.80/0.99  monotx_restored_types:                  0
% 2.80/0.99  sat_num_of_epr_types:                   0
% 2.80/0.99  sat_num_of_non_cyclic_types:            0
% 2.80/0.99  sat_guarded_non_collapsed_types:        0
% 2.80/0.99  num_pure_diseq_elim:                    0
% 2.80/0.99  simp_replaced_by:                       0
% 2.80/0.99  res_preprocessed:                       173
% 2.80/0.99  prep_upred:                             0
% 2.80/0.99  prep_unflattend:                        42
% 2.80/0.99  smt_new_axioms:                         0
% 2.80/0.99  pred_elim_cands:                        6
% 2.80/0.99  pred_elim:                              1
% 2.80/0.99  pred_elim_cl:                           4
% 2.80/0.99  pred_elim_cycles:                       6
% 2.80/0.99  merged_defs:                            24
% 2.80/0.99  merged_defs_ncl:                        0
% 2.80/0.99  bin_hyper_res:                          24
% 2.80/0.99  prep_cycles:                            4
% 2.80/0.99  pred_elim_time:                         0.012
% 2.80/0.99  splitting_time:                         0.
% 2.80/0.99  sem_filter_time:                        0.
% 2.80/0.99  monotx_time:                            0.001
% 2.80/0.99  subtype_inf_time:                       0.
% 2.80/0.99  
% 2.80/0.99  ------ Problem properties
% 2.80/0.99  
% 2.80/0.99  clauses:                                35
% 2.80/0.99  conjectures:                            3
% 2.80/0.99  epr:                                    7
% 2.80/0.99  horn:                                   26
% 2.80/0.99  ground:                                 4
% 2.80/0.99  unary:                                  7
% 2.80/0.99  binary:                                 17
% 2.80/0.99  lits:                                   76
% 2.80/0.99  lits_eq:                                27
% 2.80/0.99  fd_pure:                                0
% 2.80/0.99  fd_pseudo:                              0
% 2.80/0.99  fd_cond:                                3
% 2.80/0.99  fd_pseudo_cond:                         0
% 2.80/0.99  ac_symbols:                             0
% 2.80/0.99  
% 2.80/0.99  ------ Propositional Solver
% 2.80/0.99  
% 2.80/0.99  prop_solver_calls:                      27
% 2.80/0.99  prop_fast_solver_calls:                 1208
% 2.80/0.99  smt_solver_calls:                       0
% 2.80/0.99  smt_fast_solver_calls:                  0
% 2.80/0.99  prop_num_of_clauses:                    1867
% 2.80/0.99  prop_preprocess_simplified:             6990
% 2.80/0.99  prop_fo_subsumed:                       24
% 2.80/0.99  prop_solver_time:                       0.
% 2.80/0.99  smt_solver_time:                        0.
% 2.80/0.99  smt_fast_solver_time:                   0.
% 2.80/0.99  prop_fast_solver_time:                  0.
% 2.80/0.99  prop_unsat_core_time:                   0.
% 2.80/0.99  
% 2.80/0.99  ------ QBF
% 2.80/0.99  
% 2.80/0.99  qbf_q_res:                              0
% 2.80/0.99  qbf_num_tautologies:                    0
% 2.80/0.99  qbf_prep_cycles:                        0
% 2.80/0.99  
% 2.80/0.99  ------ BMC1
% 2.80/0.99  
% 2.80/0.99  bmc1_current_bound:                     -1
% 2.80/0.99  bmc1_last_solved_bound:                 -1
% 2.80/0.99  bmc1_unsat_core_size:                   -1
% 2.80/0.99  bmc1_unsat_core_parents_size:           -1
% 2.80/0.99  bmc1_merge_next_fun:                    0
% 2.80/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.80/0.99  
% 2.80/0.99  ------ Instantiation
% 2.80/0.99  
% 2.80/0.99  inst_num_of_clauses:                    631
% 2.80/0.99  inst_num_in_passive:                    49
% 2.80/0.99  inst_num_in_active:                     364
% 2.80/0.99  inst_num_in_unprocessed:                218
% 2.80/0.99  inst_num_of_loops:                      435
% 2.80/0.99  inst_num_of_learning_restarts:          0
% 2.80/0.99  inst_num_moves_active_passive:          67
% 2.80/0.99  inst_lit_activity:                      0
% 2.80/0.99  inst_lit_activity_moves:                0
% 2.80/0.99  inst_num_tautologies:                   0
% 2.80/0.99  inst_num_prop_implied:                  0
% 2.80/0.99  inst_num_existing_simplified:           0
% 2.80/0.99  inst_num_eq_res_simplified:             0
% 2.80/0.99  inst_num_child_elim:                    0
% 2.80/0.99  inst_num_of_dismatching_blockings:      98
% 2.80/0.99  inst_num_of_non_proper_insts:           474
% 2.80/0.99  inst_num_of_duplicates:                 0
% 2.80/0.99  inst_inst_num_from_inst_to_res:         0
% 2.80/0.99  inst_dismatching_checking_time:         0.
% 2.80/0.99  
% 2.80/0.99  ------ Resolution
% 2.80/0.99  
% 2.80/0.99  res_num_of_clauses:                     0
% 2.80/0.99  res_num_in_passive:                     0
% 2.80/0.99  res_num_in_active:                      0
% 2.80/0.99  res_num_of_loops:                       177
% 2.80/0.99  res_forward_subset_subsumed:            19
% 2.80/0.99  res_backward_subset_subsumed:           2
% 2.80/0.99  res_forward_subsumed:                   0
% 2.80/0.99  res_backward_subsumed:                  0
% 2.80/0.99  res_forward_subsumption_resolution:     3
% 2.80/0.99  res_backward_subsumption_resolution:    0
% 2.80/0.99  res_clause_to_clause_subsumption:       290
% 2.80/0.99  res_orphan_elimination:                 0
% 2.80/0.99  res_tautology_del:                      92
% 2.80/0.99  res_num_eq_res_simplified:              0
% 2.80/0.99  res_num_sel_changes:                    0
% 2.80/0.99  res_moves_from_active_to_pass:          0
% 2.80/0.99  
% 2.80/0.99  ------ Superposition
% 2.80/0.99  
% 2.80/0.99  sup_time_total:                         0.
% 2.80/0.99  sup_time_generating:                    0.
% 2.80/0.99  sup_time_sim_full:                      0.
% 2.80/0.99  sup_time_sim_immed:                     0.
% 2.80/0.99  
% 2.80/0.99  sup_num_of_clauses:                     108
% 2.80/0.99  sup_num_in_active:                      61
% 2.80/0.99  sup_num_in_passive:                     47
% 2.80/0.99  sup_num_of_loops:                       86
% 2.80/0.99  sup_fw_superposition:                   87
% 2.80/0.99  sup_bw_superposition:                   60
% 2.80/0.99  sup_immediate_simplified:               28
% 2.80/0.99  sup_given_eliminated:                   0
% 2.80/0.99  comparisons_done:                       0
% 2.80/0.99  comparisons_avoided:                    8
% 2.80/0.99  
% 2.80/0.99  ------ Simplifications
% 2.80/0.99  
% 2.80/0.99  
% 2.80/0.99  sim_fw_subset_subsumed:                 6
% 2.80/0.99  sim_bw_subset_subsumed:                 11
% 2.80/0.99  sim_fw_subsumed:                        8
% 2.80/0.99  sim_bw_subsumed:                        0
% 2.80/0.99  sim_fw_subsumption_res:                 3
% 2.80/0.99  sim_bw_subsumption_res:                 0
% 2.80/0.99  sim_tautology_del:                      4
% 2.80/0.99  sim_eq_tautology_del:                   26
% 2.80/0.99  sim_eq_res_simp:                        1
% 2.80/0.99  sim_fw_demodulated:                     5
% 2.80/0.99  sim_bw_demodulated:                     19
% 2.80/0.99  sim_light_normalised:                   8
% 2.80/0.99  sim_joinable_taut:                      0
% 2.80/0.99  sim_joinable_simp:                      0
% 2.80/0.99  sim_ac_normalised:                      0
% 2.80/0.99  sim_smt_subsumption:                    0
% 2.80/0.99  
%------------------------------------------------------------------------------
