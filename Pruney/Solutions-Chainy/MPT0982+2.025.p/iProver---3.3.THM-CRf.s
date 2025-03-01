%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:01:42 EST 2020

% Result     : Theorem 3.00s
% Output     : CNFRefutation 3.00s
% Verified   : 
% Statistics : Number of formulae       :  154 ( 512 expanded)
%              Number of clauses        :   95 ( 177 expanded)
%              Number of leaves         :   15 ( 118 expanded)
%              Depth                    :   21
%              Number of atoms          :  468 (3386 expanded)
%              Number of equality atoms :  205 (1146 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ! [X4] :
          ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X4,X1,X2)
            & v1_funct_1(X4) )
         => ( ( v2_funct_1(X4)
              & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 )
           => ( k2_relset_1(X0,X1,X3) = X1
              | k1_xboole_0 = X2 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ! [X4] :
            ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
              & v1_funct_2(X4,X1,X2)
              & v1_funct_1(X4) )
           => ( ( v2_funct_1(X4)
                & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 )
             => ( k2_relset_1(X0,X1,X3) = X1
                | k1_xboole_0 = X2 ) ) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f32,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( k2_relset_1(X0,X1,X3) != X1
          & k1_xboole_0 != X2
          & v2_funct_1(X4)
          & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X4,X1,X2)
          & v1_funct_1(X4) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f33,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( k2_relset_1(X0,X1,X3) != X1
          & k1_xboole_0 != X2
          & v2_funct_1(X4)
          & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X4,X1,X2)
          & v1_funct_1(X4) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f32])).

fof(f37,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( k2_relset_1(X0,X1,X3) != X1
          & k1_xboole_0 != X2
          & v2_funct_1(X4)
          & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X4,X1,X2)
          & v1_funct_1(X4) )
     => ( k2_relset_1(X0,X1,X3) != X1
        & k1_xboole_0 != X2
        & v2_funct_1(sK4)
        & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,sK4)) = X2
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_2(sK4,X1,X2)
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( ? [X0,X1,X2,X3] :
        ( ? [X4] :
            ( k2_relset_1(X0,X1,X3) != X1
            & k1_xboole_0 != X2
            & v2_funct_1(X4)
            & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X4,X1,X2)
            & v1_funct_1(X4) )
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
   => ( ? [X4] :
          ( k2_relset_1(sK0,sK1,sK3) != sK1
          & k1_xboole_0 != sK2
          & v2_funct_1(X4)
          & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,X4)) = sK2
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
          & v1_funct_2(X4,sK1,sK2)
          & v1_funct_1(X4) )
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK3,sK0,sK1)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( k2_relset_1(sK0,sK1,sK3) != sK1
    & k1_xboole_0 != sK2
    & v2_funct_1(sK4)
    & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    & v1_funct_2(sK4,sK1,sK2)
    & v1_funct_1(sK4)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK3,sK0,sK1)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f33,f37,f36])).

fof(f61,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f38])).

fof(f64,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f38])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f31,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f30])).

fof(f58,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f62,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f59,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f29,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f28])).

fof(f57,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f65,plain,(
    k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
    inference(cnf_transformation,[],[f38])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f41,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( ( v2_funct_1(X1)
          & r1_tarski(X0,k1_relat_1(X1)) )
       => k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
      | ~ v2_funct_1(X1)
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
      | ~ v2_funct_1(X1)
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f18])).

fof(f42,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
      | ~ v2_funct_1(X1)
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f66,plain,(
    v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f5])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f10,axiom,(
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
    inference(ennf_transformation,[],[f10])).

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

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f63,plain,(
    v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f67,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f38])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2,X3] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f47,plain,(
    ! [X2,X0,X3,X1] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1)
        & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1)
        & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f68,plain,(
    k2_relset_1(sK0,sK1,sK3) != sK1 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_27,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_632,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(subtyping,[status(esa)],[c_27])).

cnf(c_1026,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_632])).

cnf(c_24,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_634,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(subtyping,[status(esa)],[c_24])).

cnf(c_1024,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_634])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_638,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X5_53)))
    | ~ v1_funct_1(X0_53)
    | ~ v1_funct_1(X3_53)
    | k1_partfun1(X4_53,X5_53,X1_53,X2_53,X3_53,X0_53) = k5_relat_1(X3_53,X0_53) ),
    inference(subtyping,[status(esa)],[c_19])).

cnf(c_1023,plain,
    ( k1_partfun1(X0_53,X1_53,X2_53,X3_53,X4_53,X5_53) = k5_relat_1(X4_53,X5_53)
    | m1_subset_1(X5_53,k1_zfmisc_1(k2_zfmisc_1(X2_53,X3_53))) != iProver_top
    | m1_subset_1(X4_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | v1_funct_1(X5_53) != iProver_top
    | v1_funct_1(X4_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_638])).

cnf(c_2038,plain,
    ( k1_partfun1(X0_53,X1_53,sK1,sK2,X2_53,sK4) = k5_relat_1(X2_53,sK4)
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | v1_funct_1(X2_53) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1024,c_1023])).

cnf(c_26,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_33,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_2237,plain,
    ( v1_funct_1(X2_53) != iProver_top
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | k1_partfun1(X0_53,X1_53,sK1,sK2,X2_53,sK4) = k5_relat_1(X2_53,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2038,c_33])).

cnf(c_2238,plain,
    ( k1_partfun1(X0_53,X1_53,sK1,sK2,X2_53,sK4) = k5_relat_1(X2_53,sK4)
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | v1_funct_1(X2_53) != iProver_top ),
    inference(renaming,[status(thm)],[c_2237])).

cnf(c_2247,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4)
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1026,c_2238])).

cnf(c_29,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_30,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_2316,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2247,c_30])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_640,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X5_53)))
    | m1_subset_1(k1_partfun1(X4_53,X5_53,X1_53,X2_53,X3_53,X0_53),k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53)))
    | ~ v1_funct_1(X0_53)
    | ~ v1_funct_1(X3_53) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_1021,plain,
    ( m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53))) != iProver_top
    | m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X5_53))) != iProver_top
    | m1_subset_1(k1_partfun1(X4_53,X5_53,X1_53,X2_53,X3_53,X0_53),k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53))) = iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_funct_1(X3_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_640])).

cnf(c_2379,plain,
    ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2316,c_1021])).

cnf(c_32,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_35,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_4896,plain,
    ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2379,c_30,c_32,c_33,c_35])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_644,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | k2_relset_1(X1_53,X2_53,X0_53) = k2_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_1017,plain,
    ( k2_relset_1(X0_53,X1_53,X2_53) = k2_relat_1(X2_53)
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_644])).

cnf(c_4908,plain,
    ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
    inference(superposition,[status(thm)],[c_4896,c_1017])).

cnf(c_23,negated_conjecture,
    ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_635,negated_conjecture,
    ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
    inference(subtyping,[status(esa)],[c_23])).

cnf(c_2319,plain,
    ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = sK2 ),
    inference(demodulation,[status(thm)],[c_2316,c_635])).

cnf(c_4913,plain,
    ( k2_relat_1(k5_relat_1(sK3,sK4)) = sK2 ),
    inference(light_normalisation,[status(thm)],[c_4908,c_2319])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_646,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | v1_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_1015,plain,
    ( m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53))) != iProver_top
    | v1_relat_1(X0_53) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_646])).

cnf(c_1322,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1026,c_1015])).

cnf(c_1321,plain,
    ( v1_relat_1(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1024,c_1015])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_647,plain,
    ( ~ v1_relat_1(X0_53)
    | ~ v1_relat_1(X1_53)
    | k9_relat_1(X0_53,k2_relat_1(X1_53)) = k2_relat_1(k5_relat_1(X1_53,X0_53)) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_1014,plain,
    ( k9_relat_1(X0_53,k2_relat_1(X1_53)) = k2_relat_1(k5_relat_1(X1_53,X0_53))
    | v1_relat_1(X0_53) != iProver_top
    | v1_relat_1(X1_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_647])).

cnf(c_1960,plain,
    ( k9_relat_1(sK4,k2_relat_1(X0_53)) = k2_relat_1(k5_relat_1(X0_53,sK4))
    | v1_relat_1(X0_53) != iProver_top ),
    inference(superposition,[status(thm)],[c_1321,c_1014])).

cnf(c_2523,plain,
    ( k9_relat_1(sK4,k2_relat_1(sK3)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
    inference(superposition,[status(thm)],[c_1322,c_1960])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_22,negated_conjecture,
    ( v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_309,plain,
    ( ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_22])).

cnf(c_310,plain,
    ( ~ r1_tarski(X0,k1_relat_1(sK4))
    | ~ v1_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_309])).

cnf(c_314,plain,
    ( ~ r1_tarski(X0,k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_310,c_26])).

cnf(c_1,plain,
    ( r1_tarski(k2_relat_1(X0),X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v5_relat_1(X0,X2) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_335,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X3),X4)
    | ~ v1_relat_1(X3)
    | X0 != X3
    | X2 != X4 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_5])).

cnf(c_336,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_335])).

cnf(c_340,plain,
    ( r1_tarski(k2_relat_1(X0),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_336,c_4])).

cnf(c_341,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2) ),
    inference(renaming,[status(thm)],[c_340])).

cnf(c_356,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(sK4)
    | k10_relat_1(sK4,k9_relat_1(sK4,X3)) = X3
    | k1_relat_1(sK4) != X2
    | k2_relat_1(X0) != X3 ),
    inference(resolution_lifted,[status(thm)],[c_314,c_341])).

cnf(c_357,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_relat_1(sK4))))
    | ~ v1_relat_1(sK4)
    | k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0))) = k2_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_356])).

cnf(c_630,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4))))
    | ~ v1_relat_1(sK4)
    | k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_357])).

cnf(c_1028,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53)
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4)))) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_630])).

cnf(c_709,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53)
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4)))) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_630])).

cnf(c_1190,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_646])).

cnf(c_1191,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1190])).

cnf(c_3461,plain,
    ( m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4)))) != iProver_top
    | k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1028,c_35,c_709,c_1191])).

cnf(c_3462,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53)
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4)))) != iProver_top ),
    inference(renaming,[status(thm)],[c_3461])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_645,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | k1_relset_1(X1_53,X2_53,X0_53) = k1_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_1016,plain,
    ( k1_relset_1(X0_53,X1_53,X2_53) = k1_relat_1(X2_53)
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_645])).

cnf(c_1366,plain,
    ( k1_relset_1(sK1,sK2,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1024,c_1016])).

cnf(c_16,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_25,negated_conjecture,
    ( v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_449,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK4 != X0
    | sK2 != X2
    | sK1 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_25])).

cnf(c_450,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | k1_relset_1(sK1,sK2,sK4) = sK1
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_449])).

cnf(c_21,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_452,plain,
    ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_450,c_24,c_21])).

cnf(c_625,plain,
    ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
    inference(subtyping,[status(esa)],[c_452])).

cnf(c_1371,plain,
    ( k1_relat_1(sK4) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_1366,c_625])).

cnf(c_3467,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53)
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,sK1))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3462,c_1371])).

cnf(c_3473,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(sK3))) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1026,c_3467])).

cnf(c_3656,plain,
    ( k10_relat_1(sK4,k2_relat_1(k5_relat_1(sK3,sK4))) = k2_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_2523,c_3473])).

cnf(c_5731,plain,
    ( k10_relat_1(sK4,sK2) = k2_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_4913,c_3656])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_643,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | k8_relset_1(X1_53,X2_53,X0_53,X3_53) = k10_relat_1(X0_53,X3_53) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_1018,plain,
    ( k8_relset_1(X0_53,X1_53,X2_53,X3_53) = k10_relat_1(X2_53,X3_53)
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_643])).

cnf(c_1467,plain,
    ( k8_relset_1(sK1,sK2,sK4,X0_53) = k10_relat_1(sK4,X0_53) ),
    inference(superposition,[status(thm)],[c_1024,c_1018])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X2) = k1_relset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_642,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | k8_relset_1(X1_53,X2_53,X0_53,X2_53) = k1_relset_1(X1_53,X2_53,X0_53) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_1019,plain,
    ( k8_relset_1(X0_53,X1_53,X2_53,X1_53) = k1_relset_1(X0_53,X1_53,X2_53)
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_642])).

cnf(c_1919,plain,
    ( k8_relset_1(sK1,sK2,sK4,sK2) = k1_relset_1(sK1,sK2,sK4) ),
    inference(superposition,[status(thm)],[c_1024,c_1019])).

cnf(c_1925,plain,
    ( k8_relset_1(sK1,sK2,sK4,sK2) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_1919,c_625])).

cnf(c_2112,plain,
    ( k10_relat_1(sK4,sK2) = sK1 ),
    inference(superposition,[status(thm)],[c_1467,c_1925])).

cnf(c_5736,plain,
    ( k2_relat_1(sK3) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_5731,c_2112])).

cnf(c_1377,plain,
    ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1026,c_1017])).

cnf(c_20,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_637,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
    inference(subtyping,[status(esa)],[c_20])).

cnf(c_1897,plain,
    ( k2_relat_1(sK3) != sK1 ),
    inference(demodulation,[status(thm)],[c_1377,c_637])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5736,c_1897])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:28:06 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 3.00/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.00/0.99  
% 3.00/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.00/0.99  
% 3.00/0.99  ------  iProver source info
% 3.00/0.99  
% 3.00/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.00/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.00/0.99  git: non_committed_changes: false
% 3.00/0.99  git: last_make_outside_of_git: false
% 3.00/0.99  
% 3.00/0.99  ------ 
% 3.00/0.99  
% 3.00/0.99  ------ Input Options
% 3.00/0.99  
% 3.00/0.99  --out_options                           all
% 3.00/0.99  --tptp_safe_out                         true
% 3.00/0.99  --problem_path                          ""
% 3.00/0.99  --include_path                          ""
% 3.00/0.99  --clausifier                            res/vclausify_rel
% 3.00/0.99  --clausifier_options                    --mode clausify
% 3.00/0.99  --stdin                                 false
% 3.00/0.99  --stats_out                             all
% 3.00/0.99  
% 3.00/0.99  ------ General Options
% 3.00/0.99  
% 3.00/0.99  --fof                                   false
% 3.00/0.99  --time_out_real                         305.
% 3.00/0.99  --time_out_virtual                      -1.
% 3.00/0.99  --symbol_type_check                     false
% 3.00/0.99  --clausify_out                          false
% 3.00/0.99  --sig_cnt_out                           false
% 3.00/0.99  --trig_cnt_out                          false
% 3.00/0.99  --trig_cnt_out_tolerance                1.
% 3.00/0.99  --trig_cnt_out_sk_spl                   false
% 3.00/0.99  --abstr_cl_out                          false
% 3.00/0.99  
% 3.00/0.99  ------ Global Options
% 3.00/0.99  
% 3.00/0.99  --schedule                              default
% 3.00/0.99  --add_important_lit                     false
% 3.00/0.99  --prop_solver_per_cl                    1000
% 3.00/0.99  --min_unsat_core                        false
% 3.00/0.99  --soft_assumptions                      false
% 3.00/0.99  --soft_lemma_size                       3
% 3.00/0.99  --prop_impl_unit_size                   0
% 3.00/0.99  --prop_impl_unit                        []
% 3.00/0.99  --share_sel_clauses                     true
% 3.00/0.99  --reset_solvers                         false
% 3.00/0.99  --bc_imp_inh                            [conj_cone]
% 3.00/0.99  --conj_cone_tolerance                   3.
% 3.00/0.99  --extra_neg_conj                        none
% 3.00/0.99  --large_theory_mode                     true
% 3.00/0.99  --prolific_symb_bound                   200
% 3.00/0.99  --lt_threshold                          2000
% 3.00/0.99  --clause_weak_htbl                      true
% 3.00/0.99  --gc_record_bc_elim                     false
% 3.00/0.99  
% 3.00/0.99  ------ Preprocessing Options
% 3.00/0.99  
% 3.00/0.99  --preprocessing_flag                    true
% 3.00/0.99  --time_out_prep_mult                    0.1
% 3.00/0.99  --splitting_mode                        input
% 3.00/0.99  --splitting_grd                         true
% 3.00/0.99  --splitting_cvd                         false
% 3.00/0.99  --splitting_cvd_svl                     false
% 3.00/0.99  --splitting_nvd                         32
% 3.00/0.99  --sub_typing                            true
% 3.00/0.99  --prep_gs_sim                           true
% 3.00/0.99  --prep_unflatten                        true
% 3.00/0.99  --prep_res_sim                          true
% 3.00/0.99  --prep_upred                            true
% 3.00/0.99  --prep_sem_filter                       exhaustive
% 3.00/0.99  --prep_sem_filter_out                   false
% 3.00/0.99  --pred_elim                             true
% 3.00/0.99  --res_sim_input                         true
% 3.00/0.99  --eq_ax_congr_red                       true
% 3.00/0.99  --pure_diseq_elim                       true
% 3.00/0.99  --brand_transform                       false
% 3.00/0.99  --non_eq_to_eq                          false
% 3.00/0.99  --prep_def_merge                        true
% 3.00/0.99  --prep_def_merge_prop_impl              false
% 3.00/0.99  --prep_def_merge_mbd                    true
% 3.00/0.99  --prep_def_merge_tr_red                 false
% 3.00/0.99  --prep_def_merge_tr_cl                  false
% 3.00/0.99  --smt_preprocessing                     true
% 3.00/0.99  --smt_ac_axioms                         fast
% 3.00/0.99  --preprocessed_out                      false
% 3.00/0.99  --preprocessed_stats                    false
% 3.00/0.99  
% 3.00/0.99  ------ Abstraction refinement Options
% 3.00/0.99  
% 3.00/0.99  --abstr_ref                             []
% 3.00/0.99  --abstr_ref_prep                        false
% 3.00/0.99  --abstr_ref_until_sat                   false
% 3.00/0.99  --abstr_ref_sig_restrict                funpre
% 3.00/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.00/0.99  --abstr_ref_under                       []
% 3.00/0.99  
% 3.00/0.99  ------ SAT Options
% 3.00/0.99  
% 3.00/0.99  --sat_mode                              false
% 3.00/0.99  --sat_fm_restart_options                ""
% 3.00/0.99  --sat_gr_def                            false
% 3.00/0.99  --sat_epr_types                         true
% 3.00/0.99  --sat_non_cyclic_types                  false
% 3.00/0.99  --sat_finite_models                     false
% 3.00/0.99  --sat_fm_lemmas                         false
% 3.00/0.99  --sat_fm_prep                           false
% 3.00/0.99  --sat_fm_uc_incr                        true
% 3.00/0.99  --sat_out_model                         small
% 3.00/0.99  --sat_out_clauses                       false
% 3.00/0.99  
% 3.00/0.99  ------ QBF Options
% 3.00/0.99  
% 3.00/0.99  --qbf_mode                              false
% 3.00/0.99  --qbf_elim_univ                         false
% 3.00/0.99  --qbf_dom_inst                          none
% 3.00/0.99  --qbf_dom_pre_inst                      false
% 3.00/0.99  --qbf_sk_in                             false
% 3.00/0.99  --qbf_pred_elim                         true
% 3.00/0.99  --qbf_split                             512
% 3.00/0.99  
% 3.00/0.99  ------ BMC1 Options
% 3.00/0.99  
% 3.00/0.99  --bmc1_incremental                      false
% 3.00/0.99  --bmc1_axioms                           reachable_all
% 3.00/0.99  --bmc1_min_bound                        0
% 3.00/0.99  --bmc1_max_bound                        -1
% 3.00/0.99  --bmc1_max_bound_default                -1
% 3.00/0.99  --bmc1_symbol_reachability              true
% 3.00/0.99  --bmc1_property_lemmas                  false
% 3.00/0.99  --bmc1_k_induction                      false
% 3.00/0.99  --bmc1_non_equiv_states                 false
% 3.00/0.99  --bmc1_deadlock                         false
% 3.00/0.99  --bmc1_ucm                              false
% 3.00/0.99  --bmc1_add_unsat_core                   none
% 3.00/0.99  --bmc1_unsat_core_children              false
% 3.00/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.00/0.99  --bmc1_out_stat                         full
% 3.00/0.99  --bmc1_ground_init                      false
% 3.00/0.99  --bmc1_pre_inst_next_state              false
% 3.00/0.99  --bmc1_pre_inst_state                   false
% 3.00/0.99  --bmc1_pre_inst_reach_state             false
% 3.00/0.99  --bmc1_out_unsat_core                   false
% 3.00/0.99  --bmc1_aig_witness_out                  false
% 3.00/0.99  --bmc1_verbose                          false
% 3.00/0.99  --bmc1_dump_clauses_tptp                false
% 3.00/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.00/0.99  --bmc1_dump_file                        -
% 3.00/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.00/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.00/0.99  --bmc1_ucm_extend_mode                  1
% 3.00/0.99  --bmc1_ucm_init_mode                    2
% 3.00/0.99  --bmc1_ucm_cone_mode                    none
% 3.00/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.00/0.99  --bmc1_ucm_relax_model                  4
% 3.00/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.00/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.00/0.99  --bmc1_ucm_layered_model                none
% 3.00/0.99  --bmc1_ucm_max_lemma_size               10
% 3.00/0.99  
% 3.00/0.99  ------ AIG Options
% 3.00/0.99  
% 3.00/0.99  --aig_mode                              false
% 3.00/0.99  
% 3.00/0.99  ------ Instantiation Options
% 3.00/0.99  
% 3.00/0.99  --instantiation_flag                    true
% 3.00/0.99  --inst_sos_flag                         false
% 3.00/0.99  --inst_sos_phase                        true
% 3.00/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.00/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.00/0.99  --inst_lit_sel_side                     num_symb
% 3.00/0.99  --inst_solver_per_active                1400
% 3.00/0.99  --inst_solver_calls_frac                1.
% 3.00/0.99  --inst_passive_queue_type               priority_queues
% 3.00/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.00/0.99  --inst_passive_queues_freq              [25;2]
% 3.00/0.99  --inst_dismatching                      true
% 3.00/0.99  --inst_eager_unprocessed_to_passive     true
% 3.00/0.99  --inst_prop_sim_given                   true
% 3.00/0.99  --inst_prop_sim_new                     false
% 3.00/0.99  --inst_subs_new                         false
% 3.00/0.99  --inst_eq_res_simp                      false
% 3.00/0.99  --inst_subs_given                       false
% 3.00/0.99  --inst_orphan_elimination               true
% 3.00/0.99  --inst_learning_loop_flag               true
% 3.00/0.99  --inst_learning_start                   3000
% 3.00/0.99  --inst_learning_factor                  2
% 3.00/0.99  --inst_start_prop_sim_after_learn       3
% 3.00/0.99  --inst_sel_renew                        solver
% 3.00/0.99  --inst_lit_activity_flag                true
% 3.00/0.99  --inst_restr_to_given                   false
% 3.00/0.99  --inst_activity_threshold               500
% 3.00/0.99  --inst_out_proof                        true
% 3.00/0.99  
% 3.00/0.99  ------ Resolution Options
% 3.00/0.99  
% 3.00/0.99  --resolution_flag                       true
% 3.00/0.99  --res_lit_sel                           adaptive
% 3.00/0.99  --res_lit_sel_side                      none
% 3.00/0.99  --res_ordering                          kbo
% 3.00/0.99  --res_to_prop_solver                    active
% 3.00/0.99  --res_prop_simpl_new                    false
% 3.00/0.99  --res_prop_simpl_given                  true
% 3.00/0.99  --res_passive_queue_type                priority_queues
% 3.00/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.00/0.99  --res_passive_queues_freq               [15;5]
% 3.00/0.99  --res_forward_subs                      full
% 3.00/0.99  --res_backward_subs                     full
% 3.00/0.99  --res_forward_subs_resolution           true
% 3.00/0.99  --res_backward_subs_resolution          true
% 3.00/0.99  --res_orphan_elimination                true
% 3.00/0.99  --res_time_limit                        2.
% 3.00/0.99  --res_out_proof                         true
% 3.00/0.99  
% 3.00/0.99  ------ Superposition Options
% 3.00/0.99  
% 3.00/0.99  --superposition_flag                    true
% 3.00/0.99  --sup_passive_queue_type                priority_queues
% 3.00/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.00/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.00/0.99  --demod_completeness_check              fast
% 3.00/0.99  --demod_use_ground                      true
% 3.00/0.99  --sup_to_prop_solver                    passive
% 3.00/0.99  --sup_prop_simpl_new                    true
% 3.00/0.99  --sup_prop_simpl_given                  true
% 3.00/0.99  --sup_fun_splitting                     false
% 3.00/0.99  --sup_smt_interval                      50000
% 3.00/0.99  
% 3.00/0.99  ------ Superposition Simplification Setup
% 3.00/0.99  
% 3.00/0.99  --sup_indices_passive                   []
% 3.00/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.00/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/0.99  --sup_full_bw                           [BwDemod]
% 3.00/0.99  --sup_immed_triv                        [TrivRules]
% 3.00/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.00/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/0.99  --sup_immed_bw_main                     []
% 3.00/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.00/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.00/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.00/0.99  
% 3.00/0.99  ------ Combination Options
% 3.00/0.99  
% 3.00/0.99  --comb_res_mult                         3
% 3.00/0.99  --comb_sup_mult                         2
% 3.00/0.99  --comb_inst_mult                        10
% 3.00/0.99  
% 3.00/0.99  ------ Debug Options
% 3.00/0.99  
% 3.00/0.99  --dbg_backtrace                         false
% 3.00/0.99  --dbg_dump_prop_clauses                 false
% 3.00/0.99  --dbg_dump_prop_clauses_file            -
% 3.00/0.99  --dbg_out_stat                          false
% 3.00/0.99  ------ Parsing...
% 3.00/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.00/0.99  
% 3.00/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 3.00/0.99  
% 3.00/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.00/0.99  
% 3.00/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.00/0.99  ------ Proving...
% 3.00/0.99  ------ Problem Properties 
% 3.00/0.99  
% 3.00/0.99  
% 3.00/0.99  clauses                                 24
% 3.00/0.99  conjectures                             7
% 3.00/0.99  EPR                                     3
% 3.00/0.99  Horn                                    21
% 3.00/0.99  unary                                   8
% 3.00/0.99  binary                                  7
% 3.00/0.99  lits                                    57
% 3.00/0.99  lits eq                                 24
% 3.00/0.99  fd_pure                                 0
% 3.00/0.99  fd_pseudo                               0
% 3.00/0.99  fd_cond                                 0
% 3.00/0.99  fd_pseudo_cond                          0
% 3.00/0.99  AC symbols                              0
% 3.00/0.99  
% 3.00/0.99  ------ Schedule dynamic 5 is on 
% 3.00/0.99  
% 3.00/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.00/0.99  
% 3.00/0.99  
% 3.00/0.99  ------ 
% 3.00/0.99  Current options:
% 3.00/0.99  ------ 
% 3.00/0.99  
% 3.00/0.99  ------ Input Options
% 3.00/0.99  
% 3.00/0.99  --out_options                           all
% 3.00/0.99  --tptp_safe_out                         true
% 3.00/0.99  --problem_path                          ""
% 3.00/0.99  --include_path                          ""
% 3.00/0.99  --clausifier                            res/vclausify_rel
% 3.00/0.99  --clausifier_options                    --mode clausify
% 3.00/0.99  --stdin                                 false
% 3.00/0.99  --stats_out                             all
% 3.00/0.99  
% 3.00/0.99  ------ General Options
% 3.00/0.99  
% 3.00/0.99  --fof                                   false
% 3.00/0.99  --time_out_real                         305.
% 3.00/0.99  --time_out_virtual                      -1.
% 3.00/0.99  --symbol_type_check                     false
% 3.00/0.99  --clausify_out                          false
% 3.00/0.99  --sig_cnt_out                           false
% 3.00/0.99  --trig_cnt_out                          false
% 3.00/0.99  --trig_cnt_out_tolerance                1.
% 3.00/0.99  --trig_cnt_out_sk_spl                   false
% 3.00/0.99  --abstr_cl_out                          false
% 3.00/0.99  
% 3.00/0.99  ------ Global Options
% 3.00/0.99  
% 3.00/0.99  --schedule                              default
% 3.00/0.99  --add_important_lit                     false
% 3.00/0.99  --prop_solver_per_cl                    1000
% 3.00/0.99  --min_unsat_core                        false
% 3.00/0.99  --soft_assumptions                      false
% 3.00/0.99  --soft_lemma_size                       3
% 3.00/0.99  --prop_impl_unit_size                   0
% 3.00/0.99  --prop_impl_unit                        []
% 3.00/0.99  --share_sel_clauses                     true
% 3.00/0.99  --reset_solvers                         false
% 3.00/0.99  --bc_imp_inh                            [conj_cone]
% 3.00/0.99  --conj_cone_tolerance                   3.
% 3.00/0.99  --extra_neg_conj                        none
% 3.00/0.99  --large_theory_mode                     true
% 3.00/0.99  --prolific_symb_bound                   200
% 3.00/0.99  --lt_threshold                          2000
% 3.00/0.99  --clause_weak_htbl                      true
% 3.00/0.99  --gc_record_bc_elim                     false
% 3.00/0.99  
% 3.00/0.99  ------ Preprocessing Options
% 3.00/0.99  
% 3.00/0.99  --preprocessing_flag                    true
% 3.00/0.99  --time_out_prep_mult                    0.1
% 3.00/0.99  --splitting_mode                        input
% 3.00/0.99  --splitting_grd                         true
% 3.00/0.99  --splitting_cvd                         false
% 3.00/0.99  --splitting_cvd_svl                     false
% 3.00/0.99  --splitting_nvd                         32
% 3.00/0.99  --sub_typing                            true
% 3.00/0.99  --prep_gs_sim                           true
% 3.00/0.99  --prep_unflatten                        true
% 3.00/0.99  --prep_res_sim                          true
% 3.00/0.99  --prep_upred                            true
% 3.00/0.99  --prep_sem_filter                       exhaustive
% 3.00/0.99  --prep_sem_filter_out                   false
% 3.00/0.99  --pred_elim                             true
% 3.00/0.99  --res_sim_input                         true
% 3.00/0.99  --eq_ax_congr_red                       true
% 3.00/0.99  --pure_diseq_elim                       true
% 3.00/0.99  --brand_transform                       false
% 3.00/0.99  --non_eq_to_eq                          false
% 3.00/0.99  --prep_def_merge                        true
% 3.00/0.99  --prep_def_merge_prop_impl              false
% 3.00/0.99  --prep_def_merge_mbd                    true
% 3.00/0.99  --prep_def_merge_tr_red                 false
% 3.00/0.99  --prep_def_merge_tr_cl                  false
% 3.00/0.99  --smt_preprocessing                     true
% 3.00/0.99  --smt_ac_axioms                         fast
% 3.00/0.99  --preprocessed_out                      false
% 3.00/0.99  --preprocessed_stats                    false
% 3.00/0.99  
% 3.00/0.99  ------ Abstraction refinement Options
% 3.00/0.99  
% 3.00/0.99  --abstr_ref                             []
% 3.00/0.99  --abstr_ref_prep                        false
% 3.00/0.99  --abstr_ref_until_sat                   false
% 3.00/0.99  --abstr_ref_sig_restrict                funpre
% 3.00/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.00/0.99  --abstr_ref_under                       []
% 3.00/0.99  
% 3.00/0.99  ------ SAT Options
% 3.00/0.99  
% 3.00/0.99  --sat_mode                              false
% 3.00/0.99  --sat_fm_restart_options                ""
% 3.00/0.99  --sat_gr_def                            false
% 3.00/0.99  --sat_epr_types                         true
% 3.00/0.99  --sat_non_cyclic_types                  false
% 3.00/0.99  --sat_finite_models                     false
% 3.00/0.99  --sat_fm_lemmas                         false
% 3.00/0.99  --sat_fm_prep                           false
% 3.00/0.99  --sat_fm_uc_incr                        true
% 3.00/0.99  --sat_out_model                         small
% 3.00/0.99  --sat_out_clauses                       false
% 3.00/0.99  
% 3.00/0.99  ------ QBF Options
% 3.00/0.99  
% 3.00/0.99  --qbf_mode                              false
% 3.00/0.99  --qbf_elim_univ                         false
% 3.00/0.99  --qbf_dom_inst                          none
% 3.00/0.99  --qbf_dom_pre_inst                      false
% 3.00/0.99  --qbf_sk_in                             false
% 3.00/0.99  --qbf_pred_elim                         true
% 3.00/0.99  --qbf_split                             512
% 3.00/0.99  
% 3.00/0.99  ------ BMC1 Options
% 3.00/0.99  
% 3.00/0.99  --bmc1_incremental                      false
% 3.00/0.99  --bmc1_axioms                           reachable_all
% 3.00/0.99  --bmc1_min_bound                        0
% 3.00/0.99  --bmc1_max_bound                        -1
% 3.00/0.99  --bmc1_max_bound_default                -1
% 3.00/0.99  --bmc1_symbol_reachability              true
% 3.00/0.99  --bmc1_property_lemmas                  false
% 3.00/0.99  --bmc1_k_induction                      false
% 3.00/0.99  --bmc1_non_equiv_states                 false
% 3.00/0.99  --bmc1_deadlock                         false
% 3.00/0.99  --bmc1_ucm                              false
% 3.00/0.99  --bmc1_add_unsat_core                   none
% 3.00/0.99  --bmc1_unsat_core_children              false
% 3.00/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.00/0.99  --bmc1_out_stat                         full
% 3.00/0.99  --bmc1_ground_init                      false
% 3.00/0.99  --bmc1_pre_inst_next_state              false
% 3.00/0.99  --bmc1_pre_inst_state                   false
% 3.00/0.99  --bmc1_pre_inst_reach_state             false
% 3.00/0.99  --bmc1_out_unsat_core                   false
% 3.00/0.99  --bmc1_aig_witness_out                  false
% 3.00/0.99  --bmc1_verbose                          false
% 3.00/0.99  --bmc1_dump_clauses_tptp                false
% 3.00/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.00/0.99  --bmc1_dump_file                        -
% 3.00/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.00/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.00/0.99  --bmc1_ucm_extend_mode                  1
% 3.00/0.99  --bmc1_ucm_init_mode                    2
% 3.00/0.99  --bmc1_ucm_cone_mode                    none
% 3.00/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.00/0.99  --bmc1_ucm_relax_model                  4
% 3.00/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.00/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.00/0.99  --bmc1_ucm_layered_model                none
% 3.00/0.99  --bmc1_ucm_max_lemma_size               10
% 3.00/0.99  
% 3.00/0.99  ------ AIG Options
% 3.00/0.99  
% 3.00/0.99  --aig_mode                              false
% 3.00/0.99  
% 3.00/0.99  ------ Instantiation Options
% 3.00/0.99  
% 3.00/0.99  --instantiation_flag                    true
% 3.00/0.99  --inst_sos_flag                         false
% 3.00/0.99  --inst_sos_phase                        true
% 3.00/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.00/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.00/0.99  --inst_lit_sel_side                     none
% 3.00/0.99  --inst_solver_per_active                1400
% 3.00/0.99  --inst_solver_calls_frac                1.
% 3.00/0.99  --inst_passive_queue_type               priority_queues
% 3.00/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.00/0.99  --inst_passive_queues_freq              [25;2]
% 3.00/0.99  --inst_dismatching                      true
% 3.00/0.99  --inst_eager_unprocessed_to_passive     true
% 3.00/0.99  --inst_prop_sim_given                   true
% 3.00/0.99  --inst_prop_sim_new                     false
% 3.00/0.99  --inst_subs_new                         false
% 3.00/0.99  --inst_eq_res_simp                      false
% 3.00/0.99  --inst_subs_given                       false
% 3.00/0.99  --inst_orphan_elimination               true
% 3.00/0.99  --inst_learning_loop_flag               true
% 3.00/0.99  --inst_learning_start                   3000
% 3.00/0.99  --inst_learning_factor                  2
% 3.00/0.99  --inst_start_prop_sim_after_learn       3
% 3.00/0.99  --inst_sel_renew                        solver
% 3.00/0.99  --inst_lit_activity_flag                true
% 3.00/0.99  --inst_restr_to_given                   false
% 3.00/0.99  --inst_activity_threshold               500
% 3.00/0.99  --inst_out_proof                        true
% 3.00/0.99  
% 3.00/0.99  ------ Resolution Options
% 3.00/0.99  
% 3.00/0.99  --resolution_flag                       false
% 3.00/0.99  --res_lit_sel                           adaptive
% 3.00/0.99  --res_lit_sel_side                      none
% 3.00/0.99  --res_ordering                          kbo
% 3.00/0.99  --res_to_prop_solver                    active
% 3.00/0.99  --res_prop_simpl_new                    false
% 3.00/0.99  --res_prop_simpl_given                  true
% 3.00/0.99  --res_passive_queue_type                priority_queues
% 3.00/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.00/0.99  --res_passive_queues_freq               [15;5]
% 3.00/0.99  --res_forward_subs                      full
% 3.00/0.99  --res_backward_subs                     full
% 3.00/0.99  --res_forward_subs_resolution           true
% 3.00/0.99  --res_backward_subs_resolution          true
% 3.00/0.99  --res_orphan_elimination                true
% 3.00/0.99  --res_time_limit                        2.
% 3.00/0.99  --res_out_proof                         true
% 3.00/0.99  
% 3.00/0.99  ------ Superposition Options
% 3.00/0.99  
% 3.00/0.99  --superposition_flag                    true
% 3.00/0.99  --sup_passive_queue_type                priority_queues
% 3.00/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.00/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.00/0.99  --demod_completeness_check              fast
% 3.00/0.99  --demod_use_ground                      true
% 3.00/0.99  --sup_to_prop_solver                    passive
% 3.00/0.99  --sup_prop_simpl_new                    true
% 3.00/0.99  --sup_prop_simpl_given                  true
% 3.00/0.99  --sup_fun_splitting                     false
% 3.00/0.99  --sup_smt_interval                      50000
% 3.00/0.99  
% 3.00/0.99  ------ Superposition Simplification Setup
% 3.00/0.99  
% 3.00/0.99  --sup_indices_passive                   []
% 3.00/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.00/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.00/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/0.99  --sup_full_bw                           [BwDemod]
% 3.00/0.99  --sup_immed_triv                        [TrivRules]
% 3.00/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.00/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/0.99  --sup_immed_bw_main                     []
% 3.00/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.00/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.00/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.00/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.00/0.99  
% 3.00/0.99  ------ Combination Options
% 3.00/0.99  
% 3.00/0.99  --comb_res_mult                         3
% 3.00/0.99  --comb_sup_mult                         2
% 3.00/0.99  --comb_inst_mult                        10
% 3.00/0.99  
% 3.00/0.99  ------ Debug Options
% 3.00/0.99  
% 3.00/0.99  --dbg_backtrace                         false
% 3.00/0.99  --dbg_dump_prop_clauses                 false
% 3.00/0.99  --dbg_dump_prop_clauses_file            -
% 3.00/0.99  --dbg_out_stat                          false
% 3.00/0.99  
% 3.00/0.99  
% 3.00/0.99  
% 3.00/0.99  
% 3.00/0.99  ------ Proving...
% 3.00/0.99  
% 3.00/0.99  
% 3.00/0.99  % SZS status Theorem for theBenchmark.p
% 3.00/0.99  
% 3.00/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.00/0.99  
% 3.00/0.99  fof(f13,conjecture,(
% 3.00/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2) => (k2_relset_1(X0,X1,X3) = X1 | k1_xboole_0 = X2))))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f14,negated_conjecture,(
% 3.00/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2) => (k2_relset_1(X0,X1,X3) = X1 | k1_xboole_0 = X2))))),
% 3.00/0.99    inference(negated_conjecture,[],[f13])).
% 3.00/0.99  
% 3.00/0.99  fof(f32,plain,(
% 3.00/0.99    ? [X0,X1,X2,X3] : (? [X4] : (((k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2) & (v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 3.00/0.99    inference(ennf_transformation,[],[f14])).
% 3.00/0.99  
% 3.00/0.99  fof(f33,plain,(
% 3.00/0.99    ? [X0,X1,X2,X3] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 3.00/0.99    inference(flattening,[],[f32])).
% 3.00/0.99  
% 3.00/0.99  fof(f37,plain,(
% 3.00/0.99    ( ! [X2,X0,X3,X1] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(sK4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,sK4)) = X2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(sK4,X1,X2) & v1_funct_1(sK4))) )),
% 3.00/0.99    introduced(choice_axiom,[])).
% 3.00/0.99  
% 3.00/0.99  fof(f36,plain,(
% 3.00/0.99    ? [X0,X1,X2,X3] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (? [X4] : (k2_relset_1(sK0,sK1,sK3) != sK1 & k1_xboole_0 != sK2 & v2_funct_1(X4) & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,X4)) = sK2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(X4,sK1,sK2) & v1_funct_1(X4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3))),
% 3.00/0.99    introduced(choice_axiom,[])).
% 3.00/0.99  
% 3.00/0.99  fof(f38,plain,(
% 3.00/0.99    (k2_relset_1(sK0,sK1,sK3) != sK1 & k1_xboole_0 != sK2 & v2_funct_1(sK4) & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK4,sK1,sK2) & v1_funct_1(sK4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)),
% 3.00/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f33,f37,f36])).
% 3.00/0.99  
% 3.00/0.99  fof(f61,plain,(
% 3.00/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.00/0.99    inference(cnf_transformation,[],[f38])).
% 3.00/0.99  
% 3.00/0.99  fof(f64,plain,(
% 3.00/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 3.00/0.99    inference(cnf_transformation,[],[f38])).
% 3.00/0.99  
% 3.00/0.99  fof(f12,axiom,(
% 3.00/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f30,plain,(
% 3.00/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.00/0.99    inference(ennf_transformation,[],[f12])).
% 3.00/0.99  
% 3.00/0.99  fof(f31,plain,(
% 3.00/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.00/0.99    inference(flattening,[],[f30])).
% 3.00/0.99  
% 3.00/0.99  fof(f58,plain,(
% 3.00/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.00/0.99    inference(cnf_transformation,[],[f31])).
% 3.00/0.99  
% 3.00/0.99  fof(f62,plain,(
% 3.00/0.99    v1_funct_1(sK4)),
% 3.00/0.99    inference(cnf_transformation,[],[f38])).
% 3.00/0.99  
% 3.00/0.99  fof(f59,plain,(
% 3.00/0.99    v1_funct_1(sK3)),
% 3.00/0.99    inference(cnf_transformation,[],[f38])).
% 3.00/0.99  
% 3.00/0.99  fof(f11,axiom,(
% 3.00/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f28,plain,(
% 3.00/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.00/0.99    inference(ennf_transformation,[],[f11])).
% 3.00/0.99  
% 3.00/0.99  fof(f29,plain,(
% 3.00/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.00/0.99    inference(flattening,[],[f28])).
% 3.00/0.99  
% 3.00/0.99  fof(f57,plain,(
% 3.00/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.00/0.99    inference(cnf_transformation,[],[f29])).
% 3.00/0.99  
% 3.00/0.99  fof(f7,axiom,(
% 3.00/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f23,plain,(
% 3.00/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/0.99    inference(ennf_transformation,[],[f7])).
% 3.00/0.99  
% 3.00/0.99  fof(f46,plain,(
% 3.00/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/0.99    inference(cnf_transformation,[],[f23])).
% 3.00/0.99  
% 3.00/0.99  fof(f65,plain,(
% 3.00/0.99    k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2),
% 3.00/0.99    inference(cnf_transformation,[],[f38])).
% 3.00/0.99  
% 3.00/0.99  fof(f4,axiom,(
% 3.00/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f20,plain,(
% 3.00/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/0.99    inference(ennf_transformation,[],[f4])).
% 3.00/0.99  
% 3.00/0.99  fof(f43,plain,(
% 3.00/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/0.99    inference(cnf_transformation,[],[f20])).
% 3.00/0.99  
% 3.00/0.99  fof(f2,axiom,(
% 3.00/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f17,plain,(
% 3.00/0.99    ! [X0] : (! [X1] : (k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.00/0.99    inference(ennf_transformation,[],[f2])).
% 3.00/0.99  
% 3.00/0.99  fof(f41,plain,(
% 3.00/0.99    ( ! [X0,X1] : (k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.00/0.99    inference(cnf_transformation,[],[f17])).
% 3.00/0.99  
% 3.00/0.99  fof(f3,axiom,(
% 3.00/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((v2_funct_1(X1) & r1_tarski(X0,k1_relat_1(X1))) => k10_relat_1(X1,k9_relat_1(X1,X0)) = X0))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f18,plain,(
% 3.00/0.99    ! [X0,X1] : ((k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 | (~v2_funct_1(X1) | ~r1_tarski(X0,k1_relat_1(X1)))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 3.00/0.99    inference(ennf_transformation,[],[f3])).
% 3.00/0.99  
% 3.00/0.99  fof(f19,plain,(
% 3.00/0.99    ! [X0,X1] : (k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 | ~v2_funct_1(X1) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 3.00/0.99    inference(flattening,[],[f18])).
% 3.00/0.99  
% 3.00/0.99  fof(f42,plain,(
% 3.00/0.99    ( ! [X0,X1] : (k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 | ~v2_funct_1(X1) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.00/0.99    inference(cnf_transformation,[],[f19])).
% 3.00/0.99  
% 3.00/0.99  fof(f66,plain,(
% 3.00/0.99    v2_funct_1(sK4)),
% 3.00/0.99    inference(cnf_transformation,[],[f38])).
% 3.00/0.99  
% 3.00/0.99  fof(f1,axiom,(
% 3.00/0.99    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f16,plain,(
% 3.00/0.99    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 3.00/0.99    inference(ennf_transformation,[],[f1])).
% 3.00/0.99  
% 3.00/0.99  fof(f34,plain,(
% 3.00/0.99    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 3.00/0.99    inference(nnf_transformation,[],[f16])).
% 3.00/0.99  
% 3.00/0.99  fof(f39,plain,(
% 3.00/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.00/0.99    inference(cnf_transformation,[],[f34])).
% 3.00/0.99  
% 3.00/0.99  fof(f5,axiom,(
% 3.00/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f15,plain,(
% 3.00/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 3.00/0.99    inference(pure_predicate_removal,[],[f5])).
% 3.00/0.99  
% 3.00/0.99  fof(f21,plain,(
% 3.00/0.99    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/0.99    inference(ennf_transformation,[],[f15])).
% 3.00/0.99  
% 3.00/0.99  fof(f44,plain,(
% 3.00/0.99    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/0.99    inference(cnf_transformation,[],[f21])).
% 3.00/0.99  
% 3.00/0.99  fof(f6,axiom,(
% 3.00/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f22,plain,(
% 3.00/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/0.99    inference(ennf_transformation,[],[f6])).
% 3.00/0.99  
% 3.00/0.99  fof(f45,plain,(
% 3.00/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/0.99    inference(cnf_transformation,[],[f22])).
% 3.00/0.99  
% 3.00/0.99  fof(f10,axiom,(
% 3.00/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f26,plain,(
% 3.00/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/0.99    inference(ennf_transformation,[],[f10])).
% 3.00/0.99  
% 3.00/0.99  fof(f27,plain,(
% 3.00/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/0.99    inference(flattening,[],[f26])).
% 3.00/0.99  
% 3.00/0.99  fof(f35,plain,(
% 3.00/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/0.99    inference(nnf_transformation,[],[f27])).
% 3.00/0.99  
% 3.00/0.99  fof(f50,plain,(
% 3.00/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/0.99    inference(cnf_transformation,[],[f35])).
% 3.00/0.99  
% 3.00/0.99  fof(f63,plain,(
% 3.00/0.99    v1_funct_2(sK4,sK1,sK2)),
% 3.00/0.99    inference(cnf_transformation,[],[f38])).
% 3.00/0.99  
% 3.00/0.99  fof(f67,plain,(
% 3.00/0.99    k1_xboole_0 != sK2),
% 3.00/0.99    inference(cnf_transformation,[],[f38])).
% 3.00/0.99  
% 3.00/0.99  fof(f8,axiom,(
% 3.00/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f24,plain,(
% 3.00/0.99    ! [X0,X1,X2,X3] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/0.99    inference(ennf_transformation,[],[f8])).
% 3.00/0.99  
% 3.00/0.99  fof(f47,plain,(
% 3.00/0.99    ( ! [X2,X0,X3,X1] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/0.99    inference(cnf_transformation,[],[f24])).
% 3.00/0.99  
% 3.00/0.99  fof(f9,axiom,(
% 3.00/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1) & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0)))),
% 3.00/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.00/0.99  
% 3.00/0.99  fof(f25,plain,(
% 3.00/0.99    ! [X0,X1,X2] : ((k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1) & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.00/0.99    inference(ennf_transformation,[],[f9])).
% 3.00/0.99  
% 3.00/0.99  fof(f49,plain,(
% 3.00/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.00/0.99    inference(cnf_transformation,[],[f25])).
% 3.00/0.99  
% 3.00/0.99  fof(f68,plain,(
% 3.00/0.99    k2_relset_1(sK0,sK1,sK3) != sK1),
% 3.00/0.99    inference(cnf_transformation,[],[f38])).
% 3.00/0.99  
% 3.00/0.99  cnf(c_27,negated_conjecture,
% 3.00/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.00/0.99      inference(cnf_transformation,[],[f61]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_632,negated_conjecture,
% 3.00/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.00/0.99      inference(subtyping,[status(esa)],[c_27]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1026,plain,
% 3.00/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_632]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_24,negated_conjecture,
% 3.00/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 3.00/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_634,negated_conjecture,
% 3.00/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 3.00/0.99      inference(subtyping,[status(esa)],[c_24]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1024,plain,
% 3.00/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_634]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_19,plain,
% 3.00/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.00/0.99      | ~ v1_funct_1(X0)
% 3.00/0.99      | ~ v1_funct_1(X3)
% 3.00/0.99      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 3.00/0.99      inference(cnf_transformation,[],[f58]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_638,plain,
% 3.00/0.99      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 3.00/0.99      | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X5_53)))
% 3.00/0.99      | ~ v1_funct_1(X0_53)
% 3.00/0.99      | ~ v1_funct_1(X3_53)
% 3.00/0.99      | k1_partfun1(X4_53,X5_53,X1_53,X2_53,X3_53,X0_53) = k5_relat_1(X3_53,X0_53) ),
% 3.00/0.99      inference(subtyping,[status(esa)],[c_19]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1023,plain,
% 3.00/0.99      ( k1_partfun1(X0_53,X1_53,X2_53,X3_53,X4_53,X5_53) = k5_relat_1(X4_53,X5_53)
% 3.00/0.99      | m1_subset_1(X5_53,k1_zfmisc_1(k2_zfmisc_1(X2_53,X3_53))) != iProver_top
% 3.00/0.99      | m1_subset_1(X4_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 3.00/0.99      | v1_funct_1(X5_53) != iProver_top
% 3.00/0.99      | v1_funct_1(X4_53) != iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_638]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_2038,plain,
% 3.00/0.99      ( k1_partfun1(X0_53,X1_53,sK1,sK2,X2_53,sK4) = k5_relat_1(X2_53,sK4)
% 3.00/0.99      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 3.00/0.99      | v1_funct_1(X2_53) != iProver_top
% 3.00/0.99      | v1_funct_1(sK4) != iProver_top ),
% 3.00/0.99      inference(superposition,[status(thm)],[c_1024,c_1023]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_26,negated_conjecture,
% 3.00/0.99      ( v1_funct_1(sK4) ),
% 3.00/0.99      inference(cnf_transformation,[],[f62]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_33,plain,
% 3.00/0.99      ( v1_funct_1(sK4) = iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_2237,plain,
% 3.00/0.99      ( v1_funct_1(X2_53) != iProver_top
% 3.00/0.99      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 3.00/0.99      | k1_partfun1(X0_53,X1_53,sK1,sK2,X2_53,sK4) = k5_relat_1(X2_53,sK4) ),
% 3.00/0.99      inference(global_propositional_subsumption,
% 3.00/0.99                [status(thm)],
% 3.00/0.99                [c_2038,c_33]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_2238,plain,
% 3.00/0.99      ( k1_partfun1(X0_53,X1_53,sK1,sK2,X2_53,sK4) = k5_relat_1(X2_53,sK4)
% 3.00/0.99      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 3.00/0.99      | v1_funct_1(X2_53) != iProver_top ),
% 3.00/0.99      inference(renaming,[status(thm)],[c_2237]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_2247,plain,
% 3.00/0.99      ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4)
% 3.00/0.99      | v1_funct_1(sK3) != iProver_top ),
% 3.00/0.99      inference(superposition,[status(thm)],[c_1026,c_2238]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_29,negated_conjecture,
% 3.00/0.99      ( v1_funct_1(sK3) ),
% 3.00/0.99      inference(cnf_transformation,[],[f59]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_30,plain,
% 3.00/0.99      ( v1_funct_1(sK3) = iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_2316,plain,
% 3.00/0.99      ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
% 3.00/0.99      inference(global_propositional_subsumption,
% 3.00/0.99                [status(thm)],
% 3.00/0.99                [c_2247,c_30]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_17,plain,
% 3.00/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.00/0.99      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 3.00/0.99      | ~ v1_funct_1(X0)
% 3.00/0.99      | ~ v1_funct_1(X3) ),
% 3.00/0.99      inference(cnf_transformation,[],[f57]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_640,plain,
% 3.00/0.99      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 3.00/0.99      | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X5_53)))
% 3.00/0.99      | m1_subset_1(k1_partfun1(X4_53,X5_53,X1_53,X2_53,X3_53,X0_53),k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53)))
% 3.00/0.99      | ~ v1_funct_1(X0_53)
% 3.00/0.99      | ~ v1_funct_1(X3_53) ),
% 3.00/0.99      inference(subtyping,[status(esa)],[c_17]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1021,plain,
% 3.00/0.99      ( m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53))) != iProver_top
% 3.00/0.99      | m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X5_53))) != iProver_top
% 3.00/0.99      | m1_subset_1(k1_partfun1(X4_53,X5_53,X1_53,X2_53,X3_53,X0_53),k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53))) = iProver_top
% 3.00/0.99      | v1_funct_1(X0_53) != iProver_top
% 3.00/0.99      | v1_funct_1(X3_53) != iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_640]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_2379,plain,
% 3.00/0.99      ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top
% 3.00/0.99      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 3.00/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.00/0.99      | v1_funct_1(sK4) != iProver_top
% 3.00/0.99      | v1_funct_1(sK3) != iProver_top ),
% 3.00/0.99      inference(superposition,[status(thm)],[c_2316,c_1021]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_32,plain,
% 3.00/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_35,plain,
% 3.00/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_4896,plain,
% 3.00/0.99      ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
% 3.00/0.99      inference(global_propositional_subsumption,
% 3.00/0.99                [status(thm)],
% 3.00/0.99                [c_2379,c_30,c_32,c_33,c_35]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_7,plain,
% 3.00/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/0.99      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.00/0.99      inference(cnf_transformation,[],[f46]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_644,plain,
% 3.00/0.99      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 3.00/0.99      | k2_relset_1(X1_53,X2_53,X0_53) = k2_relat_1(X0_53) ),
% 3.00/0.99      inference(subtyping,[status(esa)],[c_7]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1017,plain,
% 3.00/0.99      ( k2_relset_1(X0_53,X1_53,X2_53) = k2_relat_1(X2_53)
% 3.00/0.99      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_644]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_4908,plain,
% 3.00/0.99      ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
% 3.00/0.99      inference(superposition,[status(thm)],[c_4896,c_1017]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_23,negated_conjecture,
% 3.00/0.99      ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
% 3.00/0.99      inference(cnf_transformation,[],[f65]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_635,negated_conjecture,
% 3.00/0.99      ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
% 3.00/0.99      inference(subtyping,[status(esa)],[c_23]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_2319,plain,
% 3.00/0.99      ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = sK2 ),
% 3.00/0.99      inference(demodulation,[status(thm)],[c_2316,c_635]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_4913,plain,
% 3.00/0.99      ( k2_relat_1(k5_relat_1(sK3,sK4)) = sK2 ),
% 3.00/0.99      inference(light_normalisation,[status(thm)],[c_4908,c_2319]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_4,plain,
% 3.00/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/0.99      | v1_relat_1(X0) ),
% 3.00/0.99      inference(cnf_transformation,[],[f43]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_646,plain,
% 3.00/0.99      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 3.00/0.99      | v1_relat_1(X0_53) ),
% 3.00/0.99      inference(subtyping,[status(esa)],[c_4]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1015,plain,
% 3.00/0.99      ( m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53))) != iProver_top
% 3.00/0.99      | v1_relat_1(X0_53) = iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_646]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1322,plain,
% 3.00/0.99      ( v1_relat_1(sK3) = iProver_top ),
% 3.00/0.99      inference(superposition,[status(thm)],[c_1026,c_1015]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1321,plain,
% 3.00/0.99      ( v1_relat_1(sK4) = iProver_top ),
% 3.00/0.99      inference(superposition,[status(thm)],[c_1024,c_1015]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_2,plain,
% 3.00/0.99      ( ~ v1_relat_1(X0)
% 3.00/0.99      | ~ v1_relat_1(X1)
% 3.00/0.99      | k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0)) ),
% 3.00/0.99      inference(cnf_transformation,[],[f41]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_647,plain,
% 3.00/0.99      ( ~ v1_relat_1(X0_53)
% 3.00/0.99      | ~ v1_relat_1(X1_53)
% 3.00/0.99      | k9_relat_1(X0_53,k2_relat_1(X1_53)) = k2_relat_1(k5_relat_1(X1_53,X0_53)) ),
% 3.00/0.99      inference(subtyping,[status(esa)],[c_2]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1014,plain,
% 3.00/0.99      ( k9_relat_1(X0_53,k2_relat_1(X1_53)) = k2_relat_1(k5_relat_1(X1_53,X0_53))
% 3.00/0.99      | v1_relat_1(X0_53) != iProver_top
% 3.00/0.99      | v1_relat_1(X1_53) != iProver_top ),
% 3.00/0.99      inference(predicate_to_equality,[status(thm)],[c_647]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1960,plain,
% 3.00/0.99      ( k9_relat_1(sK4,k2_relat_1(X0_53)) = k2_relat_1(k5_relat_1(X0_53,sK4))
% 3.00/0.99      | v1_relat_1(X0_53) != iProver_top ),
% 3.00/0.99      inference(superposition,[status(thm)],[c_1321,c_1014]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_2523,plain,
% 3.00/0.99      ( k9_relat_1(sK4,k2_relat_1(sK3)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
% 3.00/0.99      inference(superposition,[status(thm)],[c_1322,c_1960]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_3,plain,
% 3.00/0.99      ( ~ r1_tarski(X0,k1_relat_1(X1))
% 3.00/0.99      | ~ v1_funct_1(X1)
% 3.00/0.99      | ~ v2_funct_1(X1)
% 3.00/0.99      | ~ v1_relat_1(X1)
% 3.00/0.99      | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 ),
% 3.00/0.99      inference(cnf_transformation,[],[f42]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_22,negated_conjecture,
% 3.00/0.99      ( v2_funct_1(sK4) ),
% 3.00/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_309,plain,
% 3.00/0.99      ( ~ r1_tarski(X0,k1_relat_1(X1))
% 3.00/0.99      | ~ v1_funct_1(X1)
% 3.00/0.99      | ~ v1_relat_1(X1)
% 3.00/0.99      | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
% 3.00/0.99      | sK4 != X1 ),
% 3.00/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_22]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_310,plain,
% 3.00/0.99      ( ~ r1_tarski(X0,k1_relat_1(sK4))
% 3.00/0.99      | ~ v1_funct_1(sK4)
% 3.00/0.99      | ~ v1_relat_1(sK4)
% 3.00/0.99      | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
% 3.00/0.99      inference(unflattening,[status(thm)],[c_309]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_314,plain,
% 3.00/0.99      ( ~ r1_tarski(X0,k1_relat_1(sK4))
% 3.00/0.99      | ~ v1_relat_1(sK4)
% 3.00/0.99      | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
% 3.00/0.99      inference(global_propositional_subsumption,
% 3.00/0.99                [status(thm)],
% 3.00/0.99                [c_310,c_26]) ).
% 3.00/0.99  
% 3.00/0.99  cnf(c_1,plain,
% 3.00/0.99      ( r1_tarski(k2_relat_1(X0),X1)
% 3.00/1.00      | ~ v5_relat_1(X0,X1)
% 3.00/1.00      | ~ v1_relat_1(X0) ),
% 3.00/1.00      inference(cnf_transformation,[],[f39]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_5,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | v5_relat_1(X0,X2) ),
% 3.00/1.00      inference(cnf_transformation,[],[f44]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_335,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | r1_tarski(k2_relat_1(X3),X4)
% 3.00/1.00      | ~ v1_relat_1(X3)
% 3.00/1.00      | X0 != X3
% 3.00/1.00      | X2 != X4 ),
% 3.00/1.00      inference(resolution_lifted,[status(thm)],[c_1,c_5]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_336,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | r1_tarski(k2_relat_1(X0),X2)
% 3.00/1.00      | ~ v1_relat_1(X0) ),
% 3.00/1.00      inference(unflattening,[status(thm)],[c_335]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_340,plain,
% 3.00/1.00      ( r1_tarski(k2_relat_1(X0),X2)
% 3.00/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_336,c_4]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_341,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | r1_tarski(k2_relat_1(X0),X2) ),
% 3.00/1.00      inference(renaming,[status(thm)],[c_340]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_356,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | ~ v1_relat_1(sK4)
% 3.00/1.00      | k10_relat_1(sK4,k9_relat_1(sK4,X3)) = X3
% 3.00/1.00      | k1_relat_1(sK4) != X2
% 3.00/1.00      | k2_relat_1(X0) != X3 ),
% 3.00/1.00      inference(resolution_lifted,[status(thm)],[c_314,c_341]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_357,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_relat_1(sK4))))
% 3.00/1.00      | ~ v1_relat_1(sK4)
% 3.00/1.00      | k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0))) = k2_relat_1(X0) ),
% 3.00/1.00      inference(unflattening,[status(thm)],[c_356]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_630,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4))))
% 3.00/1.00      | ~ v1_relat_1(sK4)
% 3.00/1.00      | k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53) ),
% 3.00/1.00      inference(subtyping,[status(esa)],[c_357]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1028,plain,
% 3.00/1.00      ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53)
% 3.00/1.00      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4)))) != iProver_top
% 3.00/1.00      | v1_relat_1(sK4) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_630]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_709,plain,
% 3.00/1.00      ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53)
% 3.00/1.00      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4)))) != iProver_top
% 3.00/1.00      | v1_relat_1(sK4) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_630]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1190,plain,
% 3.00/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 3.00/1.00      | v1_relat_1(sK4) ),
% 3.00/1.00      inference(instantiation,[status(thm)],[c_646]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1191,plain,
% 3.00/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 3.00/1.00      | v1_relat_1(sK4) = iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_1190]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3461,plain,
% 3.00/1.00      ( m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4)))) != iProver_top
% 3.00/1.00      | k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53) ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_1028,c_35,c_709,c_1191]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3462,plain,
% 3.00/1.00      ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53)
% 3.00/1.00      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,k1_relat_1(sK4)))) != iProver_top ),
% 3.00/1.00      inference(renaming,[status(thm)],[c_3461]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_6,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.00/1.00      inference(cnf_transformation,[],[f45]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_645,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 3.00/1.00      | k1_relset_1(X1_53,X2_53,X0_53) = k1_relat_1(X0_53) ),
% 3.00/1.00      inference(subtyping,[status(esa)],[c_6]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1016,plain,
% 3.00/1.00      ( k1_relset_1(X0_53,X1_53,X2_53) = k1_relat_1(X2_53)
% 3.00/1.00      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_645]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1366,plain,
% 3.00/1.00      ( k1_relset_1(sK1,sK2,sK4) = k1_relat_1(sK4) ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1024,c_1016]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_16,plain,
% 3.00/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.00/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.00/1.00      | k1_xboole_0 = X2 ),
% 3.00/1.00      inference(cnf_transformation,[],[f50]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_25,negated_conjecture,
% 3.00/1.00      ( v1_funct_2(sK4,sK1,sK2) ),
% 3.00/1.00      inference(cnf_transformation,[],[f63]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_449,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.00/1.00      | sK4 != X0
% 3.00/1.00      | sK2 != X2
% 3.00/1.00      | sK1 != X1
% 3.00/1.00      | k1_xboole_0 = X2 ),
% 3.00/1.00      inference(resolution_lifted,[status(thm)],[c_16,c_25]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_450,plain,
% 3.00/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 3.00/1.00      | k1_relset_1(sK1,sK2,sK4) = sK1
% 3.00/1.00      | k1_xboole_0 = sK2 ),
% 3.00/1.00      inference(unflattening,[status(thm)],[c_449]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_21,negated_conjecture,
% 3.00/1.00      ( k1_xboole_0 != sK2 ),
% 3.00/1.00      inference(cnf_transformation,[],[f67]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_452,plain,
% 3.00/1.00      ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
% 3.00/1.00      inference(global_propositional_subsumption,
% 3.00/1.00                [status(thm)],
% 3.00/1.00                [c_450,c_24,c_21]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_625,plain,
% 3.00/1.00      ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
% 3.00/1.00      inference(subtyping,[status(esa)],[c_452]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1371,plain,
% 3.00/1.00      ( k1_relat_1(sK4) = sK1 ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_1366,c_625]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3467,plain,
% 3.00/1.00      ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(X0_53))) = k2_relat_1(X0_53)
% 3.00/1.00      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,sK1))) != iProver_top ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_3462,c_1371]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3473,plain,
% 3.00/1.00      ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(sK3))) = k2_relat_1(sK3) ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1026,c_3467]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_3656,plain,
% 3.00/1.00      ( k10_relat_1(sK4,k2_relat_1(k5_relat_1(sK3,sK4))) = k2_relat_1(sK3) ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_2523,c_3473]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_5731,plain,
% 3.00/1.00      ( k10_relat_1(sK4,sK2) = k2_relat_1(sK3) ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_4913,c_3656]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_8,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 3.00/1.00      inference(cnf_transformation,[],[f47]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_643,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 3.00/1.00      | k8_relset_1(X1_53,X2_53,X0_53,X3_53) = k10_relat_1(X0_53,X3_53) ),
% 3.00/1.00      inference(subtyping,[status(esa)],[c_8]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1018,plain,
% 3.00/1.00      ( k8_relset_1(X0_53,X1_53,X2_53,X3_53) = k10_relat_1(X2_53,X3_53)
% 3.00/1.00      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_643]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1467,plain,
% 3.00/1.00      ( k8_relset_1(sK1,sK2,sK4,X0_53) = k10_relat_1(sK4,X0_53) ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1024,c_1018]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_9,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.00/1.00      | k8_relset_1(X1,X2,X0,X2) = k1_relset_1(X1,X2,X0) ),
% 3.00/1.00      inference(cnf_transformation,[],[f49]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_642,plain,
% 3.00/1.00      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 3.00/1.00      | k8_relset_1(X1_53,X2_53,X0_53,X2_53) = k1_relset_1(X1_53,X2_53,X0_53) ),
% 3.00/1.00      inference(subtyping,[status(esa)],[c_9]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1019,plain,
% 3.00/1.00      ( k8_relset_1(X0_53,X1_53,X2_53,X1_53) = k1_relset_1(X0_53,X1_53,X2_53)
% 3.00/1.00      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top ),
% 3.00/1.00      inference(predicate_to_equality,[status(thm)],[c_642]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1919,plain,
% 3.00/1.00      ( k8_relset_1(sK1,sK2,sK4,sK2) = k1_relset_1(sK1,sK2,sK4) ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1024,c_1019]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1925,plain,
% 3.00/1.00      ( k8_relset_1(sK1,sK2,sK4,sK2) = sK1 ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_1919,c_625]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_2112,plain,
% 3.00/1.00      ( k10_relat_1(sK4,sK2) = sK1 ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1467,c_1925]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_5736,plain,
% 3.00/1.00      ( k2_relat_1(sK3) = sK1 ),
% 3.00/1.00      inference(light_normalisation,[status(thm)],[c_5731,c_2112]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1377,plain,
% 3.00/1.00      ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
% 3.00/1.00      inference(superposition,[status(thm)],[c_1026,c_1017]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_20,negated_conjecture,
% 3.00/1.00      ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
% 3.00/1.00      inference(cnf_transformation,[],[f68]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_637,negated_conjecture,
% 3.00/1.00      ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
% 3.00/1.00      inference(subtyping,[status(esa)],[c_20]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(c_1897,plain,
% 3.00/1.00      ( k2_relat_1(sK3) != sK1 ),
% 3.00/1.00      inference(demodulation,[status(thm)],[c_1377,c_637]) ).
% 3.00/1.00  
% 3.00/1.00  cnf(contradiction,plain,
% 3.00/1.00      ( $false ),
% 3.00/1.00      inference(minisat,[status(thm)],[c_5736,c_1897]) ).
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
% 3.00/1.00  parsing_time:                           0.011
% 3.00/1.00  unif_index_cands_time:                  0.
% 3.00/1.00  unif_index_add_time:                    0.
% 3.00/1.00  orderings_time:                         0.
% 3.00/1.00  out_proof_time:                         0.011
% 3.00/1.00  total_time:                             0.221
% 3.00/1.00  num_of_symbols:                         59
% 3.00/1.00  num_of_terms:                           8528
% 3.00/1.00  
% 3.00/1.00  ------ Preprocessing
% 3.00/1.00  
% 3.00/1.00  num_of_splits:                          0
% 3.00/1.00  num_of_split_atoms:                     0
% 3.00/1.00  num_of_reused_defs:                     0
% 3.00/1.00  num_eq_ax_congr_red:                    38
% 3.00/1.00  num_of_sem_filtered_clauses:            1
% 3.00/1.00  num_of_subtypes:                        3
% 3.00/1.00  monotx_restored_types:                  0
% 3.00/1.00  sat_num_of_epr_types:                   0
% 3.00/1.00  sat_num_of_non_cyclic_types:            0
% 3.00/1.00  sat_guarded_non_collapsed_types:        0
% 3.00/1.00  num_pure_diseq_elim:                    0
% 3.00/1.00  simp_replaced_by:                       0
% 3.00/1.00  res_preprocessed:                       135
% 3.00/1.00  prep_upred:                             0
% 3.00/1.00  prep_unflattend:                        39
% 3.00/1.00  smt_new_axioms:                         0
% 3.00/1.00  pred_elim_cands:                        3
% 3.00/1.00  pred_elim:                              4
% 3.00/1.00  pred_elim_cl:                           6
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
% 3.00/1.00  clauses:                                24
% 3.00/1.00  conjectures:                            7
% 3.00/1.00  epr:                                    3
% 3.00/1.00  horn:                                   21
% 3.00/1.00  ground:                                 13
% 3.00/1.00  unary:                                  8
% 3.00/1.00  binary:                                 7
% 3.00/1.00  lits:                                   57
% 3.00/1.00  lits_eq:                                24
% 3.00/1.00  fd_pure:                                0
% 3.00/1.00  fd_pseudo:                              0
% 3.00/1.00  fd_cond:                                0
% 3.00/1.00  fd_pseudo_cond:                         0
% 3.00/1.00  ac_symbols:                             0
% 3.00/1.00  
% 3.00/1.00  ------ Propositional Solver
% 3.00/1.00  
% 3.00/1.00  prop_solver_calls:                      27
% 3.00/1.00  prop_fast_solver_calls:                 892
% 3.00/1.00  smt_solver_calls:                       0
% 3.00/1.00  smt_fast_solver_calls:                  0
% 3.00/1.00  prop_num_of_clauses:                    2839
% 3.00/1.00  prop_preprocess_simplified:             6739
% 3.00/1.00  prop_fo_subsumed:                       39
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
% 3.00/1.00  inst_num_of_clauses:                    715
% 3.00/1.00  inst_num_in_passive:                    325
% 3.00/1.00  inst_num_in_active:                     371
% 3.00/1.00  inst_num_in_unprocessed:                19
% 3.00/1.00  inst_num_of_loops:                      390
% 3.00/1.00  inst_num_of_learning_restarts:          0
% 3.00/1.00  inst_num_moves_active_passive:          15
% 3.00/1.00  inst_lit_activity:                      0
% 3.00/1.00  inst_lit_activity_moves:                0
% 3.00/1.00  inst_num_tautologies:                   0
% 3.00/1.00  inst_num_prop_implied:                  0
% 3.00/1.00  inst_num_existing_simplified:           0
% 3.00/1.00  inst_num_eq_res_simplified:             0
% 3.00/1.00  inst_num_child_elim:                    0
% 3.00/1.00  inst_num_of_dismatching_blockings:      100
% 3.00/1.00  inst_num_of_non_proper_insts:           371
% 3.00/1.00  inst_num_of_duplicates:                 0
% 3.00/1.00  inst_inst_num_from_inst_to_res:         0
% 3.00/1.00  inst_dismatching_checking_time:         0.
% 3.00/1.00  
% 3.00/1.00  ------ Resolution
% 3.00/1.00  
% 3.00/1.00  res_num_of_clauses:                     0
% 3.00/1.00  res_num_in_passive:                     0
% 3.00/1.00  res_num_in_active:                      0
% 3.00/1.00  res_num_of_loops:                       139
% 3.00/1.00  res_forward_subset_subsumed:            32
% 3.00/1.00  res_backward_subset_subsumed:           0
% 3.00/1.00  res_forward_subsumed:                   0
% 3.00/1.00  res_backward_subsumed:                  0
% 3.00/1.00  res_forward_subsumption_resolution:     0
% 3.00/1.00  res_backward_subsumption_resolution:    0
% 3.00/1.00  res_clause_to_clause_subsumption:       185
% 3.00/1.00  res_orphan_elimination:                 0
% 3.00/1.00  res_tautology_del:                      38
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
% 3.00/1.00  sup_num_of_clauses:                     128
% 3.00/1.00  sup_num_in_active:                      71
% 3.00/1.00  sup_num_in_passive:                     57
% 3.00/1.00  sup_num_of_loops:                       76
% 3.00/1.00  sup_fw_superposition:                   44
% 3.00/1.00  sup_bw_superposition:                   67
% 3.00/1.00  sup_immediate_simplified:               17
% 3.00/1.00  sup_given_eliminated:                   0
% 3.00/1.00  comparisons_done:                       0
% 3.00/1.00  comparisons_avoided:                    3
% 3.00/1.00  
% 3.00/1.00  ------ Simplifications
% 3.00/1.00  
% 3.00/1.00  
% 3.00/1.00  sim_fw_subset_subsumed:                 3
% 3.00/1.00  sim_bw_subset_subsumed:                 0
% 3.00/1.00  sim_fw_subsumed:                        0
% 3.00/1.00  sim_bw_subsumed:                        0
% 3.00/1.00  sim_fw_subsumption_res:                 0
% 3.00/1.00  sim_bw_subsumption_res:                 0
% 3.00/1.00  sim_tautology_del:                      0
% 3.00/1.00  sim_eq_tautology_del:                   0
% 3.00/1.00  sim_eq_res_simp:                        0
% 3.00/1.00  sim_fw_demodulated:                     0
% 3.00/1.00  sim_bw_demodulated:                     6
% 3.00/1.00  sim_light_normalised:                   14
% 3.00/1.00  sim_joinable_taut:                      0
% 3.00/1.00  sim_joinable_simp:                      0
% 3.00/1.00  sim_ac_normalised:                      0
% 3.00/1.00  sim_smt_subsumption:                    0
% 3.00/1.00  
%------------------------------------------------------------------------------
