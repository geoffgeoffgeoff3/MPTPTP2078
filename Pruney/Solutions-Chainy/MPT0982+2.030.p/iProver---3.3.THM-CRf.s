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
% DateTime   : Thu Dec  3 12:01:43 EST 2020

% Result     : Theorem 2.64s
% Output     : CNFRefutation 2.64s
% Verified   : 
% Statistics : Number of formulae       :  142 ( 801 expanded)
%              Number of clauses        :   83 ( 236 expanded)
%              Number of leaves         :   15 ( 202 expanded)
%              Depth                    :   18
%              Number of atoms          :  501 (5793 expanded)
%              Number of equality atoms :  208 (1880 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   2 average)

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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

fof(f30,plain,(
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

fof(f31,plain,(
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
    inference(flattening,[],[f30])).

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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f31,f37,f36])).

fof(f62,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f38])).

fof(f65,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f38])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f29,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f28])).

fof(f59,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f63,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f60,plain,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f27,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f26])).

fof(f58,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f66,plain,(
    k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( v2_funct_1(X0)
              & k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0)) )
           => r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
          | ~ v2_funct_1(X0)
          | k2_relat_1(X0) != k2_relat_1(k5_relat_1(X1,X0))
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
          | ~ v2_funct_1(X0)
          | k2_relat_1(X0) != k2_relat_1(k5_relat_1(X1,X0))
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f19])).

fof(f47,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
      | ~ v2_funct_1(X0)
      | k2_relat_1(X0) != k2_relat_1(k5_relat_1(X1,X0))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f67,plain,(
    v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f42,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f4,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f49,plain,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
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

fof(f25,plain,(
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
    inference(flattening,[],[f24])).

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
    inference(nnf_transformation,[],[f25])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f64,plain,(
    v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f68,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f38])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f46,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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

fof(f41,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f69,plain,(
    k2_relset_1(sK0,sK1,sK3) != sK1 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_28,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_982,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_984,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_20,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_985,plain,
    ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X5) != iProver_top
    | v1_funct_1(X4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_2480,plain,
    ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_984,c_985])).

cnf(c_27,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_34,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_2791,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2480,c_34])).

cnf(c_2792,plain,
    ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_2791])).

cnf(c_2802,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4)
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_982,c_2792])).

cnf(c_30,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1256,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK4)
    | k1_partfun1(X1,X2,X3,X4,X0,sK4) = k5_relat_1(X0,sK4) ),
    inference(instantiation,[status(thm)],[c_20])).

cnf(c_1395,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(sK4)
    | ~ v1_funct_1(sK3)
    | k1_partfun1(X2,X3,X0,X1,sK3,sK4) = k5_relat_1(sK3,sK4) ),
    inference(instantiation,[status(thm)],[c_1256])).

cnf(c_1608,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK4)
    | ~ v1_funct_1(sK3)
    | k1_partfun1(X0,X1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
    inference(instantiation,[status(thm)],[c_1395])).

cnf(c_1888,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK4)
    | ~ v1_funct_1(sK3)
    | k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
    inference(instantiation,[status(thm)],[c_1608])).

cnf(c_2895,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2802,c_30,c_28,c_27,c_25,c_1888])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_987,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5))) != iProver_top
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2899,plain,
    ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2895,c_987])).

cnf(c_31,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_33,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_36,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_4574,plain,
    ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2899,c_31,c_33,c_34,c_36])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_988,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_4585,plain,
    ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
    inference(superposition,[status(thm)],[c_4574,c_988])).

cnf(c_24,negated_conjecture,
    ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_2898,plain,
    ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = sK2 ),
    inference(demodulation,[status(thm)],[c_2895,c_24])).

cnf(c_4610,plain,
    ( k2_relat_1(k5_relat_1(sK3,sK4)) = sK2 ),
    inference(light_normalisation,[status(thm)],[c_4585,c_2898])).

cnf(c_8,plain,
    ( r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k2_relat_1(k5_relat_1(X1,X0)) != k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_23,negated_conjecture,
    ( v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_307,plain,
    ( r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k2_relat_1(k5_relat_1(X1,X0)) != k2_relat_1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_23])).

cnf(c_308,plain,
    ( r1_tarski(k1_relat_1(sK4),k2_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK4)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(sK4)
    | k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4) ),
    inference(unflattening,[status(thm)],[c_307])).

cnf(c_312,plain,
    ( ~ v1_funct_1(X0)
    | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(sK4)
    | k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_308,c_27])).

cnf(c_313,plain,
    ( r1_tarski(k1_relat_1(sK4),k2_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(sK4)
    | k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4) ),
    inference(renaming,[status(thm)],[c_312])).

cnf(c_980,plain,
    ( k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4)
    | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0)) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_313])).

cnf(c_309,plain,
    ( k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4)
    | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0)) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_308])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1165,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0)
    | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1353,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ v1_relat_1(k2_zfmisc_1(sK1,sK2))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1165])).

cnf(c_1354,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK1,sK2)) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1353])).

cnf(c_6,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1577,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1578,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1577])).

cnf(c_1714,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0)) = iProver_top
    | k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_980,c_34,c_36,c_309,c_1354,c_1578])).

cnf(c_1715,plain,
    ( k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4)
    | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0)) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_1714])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_989,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_1498,plain,
    ( k1_relset_1(sK1,sK2,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_984,c_989])).

cnf(c_17,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_26,negated_conjecture,
    ( v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_433,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK4 != X0
    | sK2 != X2
    | sK1 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_26])).

cnf(c_434,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | k1_relset_1(sK1,sK2,sK4) = sK1
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_433])).

cnf(c_22,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_436,plain,
    ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_434,c_25,c_22])).

cnf(c_1503,plain,
    ( k1_relat_1(sK4) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_1498,c_436])).

cnf(c_1720,plain,
    ( k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4)
    | r1_tarski(sK1,k2_relat_1(X0)) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1715,c_1503])).

cnf(c_4716,plain,
    ( k2_relat_1(sK4) != sK2
    | r1_tarski(sK1,k2_relat_1(sK3)) = iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_4610,c_1720])).

cnf(c_7,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_990,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_4715,plain,
    ( r1_tarski(sK2,k2_relat_1(sK4)) = iProver_top
    | v1_relat_1(sK4) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_4610,c_990])).

cnf(c_9,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_5,plain,
    ( ~ v5_relat_1(X0,X1)
    | r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_340,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_9,c_5])).

cnf(c_979,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | r1_tarski(k2_relat_1(X0),X2) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_340])).

cnf(c_2259,plain,
    ( r1_tarski(k2_relat_1(sK3),sK1) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_982,c_979])).

cnf(c_1356,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_1165])).

cnf(c_1357,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1356])).

cnf(c_1580,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1581,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1580])).

cnf(c_2302,plain,
    ( r1_tarski(k2_relat_1(sK3),sK1) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2259,c_33,c_1357,c_1581])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_994,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2307,plain,
    ( k2_relat_1(sK3) = sK1
    | r1_tarski(sK1,k2_relat_1(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2302,c_994])).

cnf(c_2258,plain,
    ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_984,c_979])).

cnf(c_2271,plain,
    ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2258,c_36,c_1354,c_1578])).

cnf(c_2276,plain,
    ( k2_relat_1(sK4) = sK2
    | r1_tarski(sK2,k2_relat_1(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2271,c_994])).

cnf(c_1416,plain,
    ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_982,c_988])).

cnf(c_21,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_1571,plain,
    ( k2_relat_1(sK3) != sK1 ),
    inference(demodulation,[status(thm)],[c_1416,c_21])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4716,c_4715,c_2307,c_2276,c_1581,c_1578,c_1571,c_1357,c_1354,c_36,c_33,c_31])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:40:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.64/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.64/0.99  
% 2.64/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.64/0.99  
% 2.64/0.99  ------  iProver source info
% 2.64/0.99  
% 2.64/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.64/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.64/0.99  git: non_committed_changes: false
% 2.64/0.99  git: last_make_outside_of_git: false
% 2.64/0.99  
% 2.64/0.99  ------ 
% 2.64/0.99  
% 2.64/0.99  ------ Input Options
% 2.64/0.99  
% 2.64/0.99  --out_options                           all
% 2.64/0.99  --tptp_safe_out                         true
% 2.64/0.99  --problem_path                          ""
% 2.64/0.99  --include_path                          ""
% 2.64/0.99  --clausifier                            res/vclausify_rel
% 2.64/0.99  --clausifier_options                    --mode clausify
% 2.64/0.99  --stdin                                 false
% 2.64/0.99  --stats_out                             all
% 2.64/0.99  
% 2.64/0.99  ------ General Options
% 2.64/0.99  
% 2.64/0.99  --fof                                   false
% 2.64/0.99  --time_out_real                         305.
% 2.64/0.99  --time_out_virtual                      -1.
% 2.64/0.99  --symbol_type_check                     false
% 2.64/0.99  --clausify_out                          false
% 2.64/0.99  --sig_cnt_out                           false
% 2.64/0.99  --trig_cnt_out                          false
% 2.64/0.99  --trig_cnt_out_tolerance                1.
% 2.64/0.99  --trig_cnt_out_sk_spl                   false
% 2.64/0.99  --abstr_cl_out                          false
% 2.64/0.99  
% 2.64/0.99  ------ Global Options
% 2.64/0.99  
% 2.64/0.99  --schedule                              default
% 2.64/0.99  --add_important_lit                     false
% 2.64/0.99  --prop_solver_per_cl                    1000
% 2.64/0.99  --min_unsat_core                        false
% 2.64/0.99  --soft_assumptions                      false
% 2.64/0.99  --soft_lemma_size                       3
% 2.64/0.99  --prop_impl_unit_size                   0
% 2.64/0.99  --prop_impl_unit                        []
% 2.64/0.99  --share_sel_clauses                     true
% 2.64/0.99  --reset_solvers                         false
% 2.64/0.99  --bc_imp_inh                            [conj_cone]
% 2.64/0.99  --conj_cone_tolerance                   3.
% 2.64/0.99  --extra_neg_conj                        none
% 2.64/0.99  --large_theory_mode                     true
% 2.64/0.99  --prolific_symb_bound                   200
% 2.64/0.99  --lt_threshold                          2000
% 2.64/0.99  --clause_weak_htbl                      true
% 2.64/0.99  --gc_record_bc_elim                     false
% 2.64/0.99  
% 2.64/0.99  ------ Preprocessing Options
% 2.64/0.99  
% 2.64/0.99  --preprocessing_flag                    true
% 2.64/0.99  --time_out_prep_mult                    0.1
% 2.64/0.99  --splitting_mode                        input
% 2.64/0.99  --splitting_grd                         true
% 2.64/0.99  --splitting_cvd                         false
% 2.64/0.99  --splitting_cvd_svl                     false
% 2.64/0.99  --splitting_nvd                         32
% 2.64/0.99  --sub_typing                            true
% 2.64/0.99  --prep_gs_sim                           true
% 2.64/0.99  --prep_unflatten                        true
% 2.64/0.99  --prep_res_sim                          true
% 2.64/0.99  --prep_upred                            true
% 2.64/0.99  --prep_sem_filter                       exhaustive
% 2.64/0.99  --prep_sem_filter_out                   false
% 2.64/0.99  --pred_elim                             true
% 2.64/0.99  --res_sim_input                         true
% 2.64/0.99  --eq_ax_congr_red                       true
% 2.64/0.99  --pure_diseq_elim                       true
% 2.64/0.99  --brand_transform                       false
% 2.64/0.99  --non_eq_to_eq                          false
% 2.64/0.99  --prep_def_merge                        true
% 2.64/0.99  --prep_def_merge_prop_impl              false
% 2.64/0.99  --prep_def_merge_mbd                    true
% 2.64/0.99  --prep_def_merge_tr_red                 false
% 2.64/0.99  --prep_def_merge_tr_cl                  false
% 2.64/0.99  --smt_preprocessing                     true
% 2.64/0.99  --smt_ac_axioms                         fast
% 2.64/0.99  --preprocessed_out                      false
% 2.64/0.99  --preprocessed_stats                    false
% 2.64/0.99  
% 2.64/0.99  ------ Abstraction refinement Options
% 2.64/0.99  
% 2.64/0.99  --abstr_ref                             []
% 2.64/0.99  --abstr_ref_prep                        false
% 2.64/0.99  --abstr_ref_until_sat                   false
% 2.64/0.99  --abstr_ref_sig_restrict                funpre
% 2.64/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.64/0.99  --abstr_ref_under                       []
% 2.64/0.99  
% 2.64/0.99  ------ SAT Options
% 2.64/0.99  
% 2.64/0.99  --sat_mode                              false
% 2.64/0.99  --sat_fm_restart_options                ""
% 2.64/0.99  --sat_gr_def                            false
% 2.64/0.99  --sat_epr_types                         true
% 2.64/0.99  --sat_non_cyclic_types                  false
% 2.64/0.99  --sat_finite_models                     false
% 2.64/0.99  --sat_fm_lemmas                         false
% 2.64/0.99  --sat_fm_prep                           false
% 2.64/0.99  --sat_fm_uc_incr                        true
% 2.64/0.99  --sat_out_model                         small
% 2.64/0.99  --sat_out_clauses                       false
% 2.64/0.99  
% 2.64/0.99  ------ QBF Options
% 2.64/0.99  
% 2.64/0.99  --qbf_mode                              false
% 2.64/0.99  --qbf_elim_univ                         false
% 2.64/0.99  --qbf_dom_inst                          none
% 2.64/0.99  --qbf_dom_pre_inst                      false
% 2.64/0.99  --qbf_sk_in                             false
% 2.64/0.99  --qbf_pred_elim                         true
% 2.64/0.99  --qbf_split                             512
% 2.64/0.99  
% 2.64/0.99  ------ BMC1 Options
% 2.64/0.99  
% 2.64/0.99  --bmc1_incremental                      false
% 2.64/0.99  --bmc1_axioms                           reachable_all
% 2.64/0.99  --bmc1_min_bound                        0
% 2.64/0.99  --bmc1_max_bound                        -1
% 2.64/0.99  --bmc1_max_bound_default                -1
% 2.64/0.99  --bmc1_symbol_reachability              true
% 2.64/0.99  --bmc1_property_lemmas                  false
% 2.64/0.99  --bmc1_k_induction                      false
% 2.64/0.99  --bmc1_non_equiv_states                 false
% 2.64/0.99  --bmc1_deadlock                         false
% 2.64/0.99  --bmc1_ucm                              false
% 2.64/0.99  --bmc1_add_unsat_core                   none
% 2.64/0.99  --bmc1_unsat_core_children              false
% 2.64/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.64/0.99  --bmc1_out_stat                         full
% 2.64/0.99  --bmc1_ground_init                      false
% 2.64/0.99  --bmc1_pre_inst_next_state              false
% 2.64/0.99  --bmc1_pre_inst_state                   false
% 2.64/0.99  --bmc1_pre_inst_reach_state             false
% 2.64/0.99  --bmc1_out_unsat_core                   false
% 2.64/0.99  --bmc1_aig_witness_out                  false
% 2.64/0.99  --bmc1_verbose                          false
% 2.64/0.99  --bmc1_dump_clauses_tptp                false
% 2.64/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.64/0.99  --bmc1_dump_file                        -
% 2.64/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.64/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.64/0.99  --bmc1_ucm_extend_mode                  1
% 2.64/0.99  --bmc1_ucm_init_mode                    2
% 2.64/0.99  --bmc1_ucm_cone_mode                    none
% 2.64/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.64/0.99  --bmc1_ucm_relax_model                  4
% 2.64/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.64/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.64/0.99  --bmc1_ucm_layered_model                none
% 2.64/0.99  --bmc1_ucm_max_lemma_size               10
% 2.64/0.99  
% 2.64/0.99  ------ AIG Options
% 2.64/0.99  
% 2.64/0.99  --aig_mode                              false
% 2.64/0.99  
% 2.64/0.99  ------ Instantiation Options
% 2.64/0.99  
% 2.64/0.99  --instantiation_flag                    true
% 2.64/0.99  --inst_sos_flag                         false
% 2.64/0.99  --inst_sos_phase                        true
% 2.64/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.64/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.64/0.99  --inst_lit_sel_side                     num_symb
% 2.64/0.99  --inst_solver_per_active                1400
% 2.64/0.99  --inst_solver_calls_frac                1.
% 2.64/0.99  --inst_passive_queue_type               priority_queues
% 2.64/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.64/0.99  --inst_passive_queues_freq              [25;2]
% 2.64/0.99  --inst_dismatching                      true
% 2.64/0.99  --inst_eager_unprocessed_to_passive     true
% 2.64/0.99  --inst_prop_sim_given                   true
% 2.64/0.99  --inst_prop_sim_new                     false
% 2.64/0.99  --inst_subs_new                         false
% 2.64/0.99  --inst_eq_res_simp                      false
% 2.64/0.99  --inst_subs_given                       false
% 2.64/0.99  --inst_orphan_elimination               true
% 2.64/0.99  --inst_learning_loop_flag               true
% 2.64/0.99  --inst_learning_start                   3000
% 2.64/0.99  --inst_learning_factor                  2
% 2.64/0.99  --inst_start_prop_sim_after_learn       3
% 2.64/0.99  --inst_sel_renew                        solver
% 2.64/0.99  --inst_lit_activity_flag                true
% 2.64/0.99  --inst_restr_to_given                   false
% 2.64/0.99  --inst_activity_threshold               500
% 2.64/0.99  --inst_out_proof                        true
% 2.64/0.99  
% 2.64/0.99  ------ Resolution Options
% 2.64/0.99  
% 2.64/0.99  --resolution_flag                       true
% 2.64/0.99  --res_lit_sel                           adaptive
% 2.64/0.99  --res_lit_sel_side                      none
% 2.64/0.99  --res_ordering                          kbo
% 2.64/0.99  --res_to_prop_solver                    active
% 2.64/0.99  --res_prop_simpl_new                    false
% 2.64/0.99  --res_prop_simpl_given                  true
% 2.64/0.99  --res_passive_queue_type                priority_queues
% 2.64/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.64/0.99  --res_passive_queues_freq               [15;5]
% 2.64/0.99  --res_forward_subs                      full
% 2.64/0.99  --res_backward_subs                     full
% 2.64/0.99  --res_forward_subs_resolution           true
% 2.64/0.99  --res_backward_subs_resolution          true
% 2.64/0.99  --res_orphan_elimination                true
% 2.64/0.99  --res_time_limit                        2.
% 2.64/0.99  --res_out_proof                         true
% 2.64/0.99  
% 2.64/0.99  ------ Superposition Options
% 2.64/0.99  
% 2.64/0.99  --superposition_flag                    true
% 2.64/0.99  --sup_passive_queue_type                priority_queues
% 2.64/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.64/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.64/0.99  --demod_completeness_check              fast
% 2.64/0.99  --demod_use_ground                      true
% 2.64/0.99  --sup_to_prop_solver                    passive
% 2.64/0.99  --sup_prop_simpl_new                    true
% 2.64/0.99  --sup_prop_simpl_given                  true
% 2.64/0.99  --sup_fun_splitting                     false
% 2.64/0.99  --sup_smt_interval                      50000
% 2.64/0.99  
% 2.64/0.99  ------ Superposition Simplification Setup
% 2.64/0.99  
% 2.64/0.99  --sup_indices_passive                   []
% 2.64/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.64/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.64/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.64/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.64/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.64/0.99  --sup_full_bw                           [BwDemod]
% 2.64/0.99  --sup_immed_triv                        [TrivRules]
% 2.64/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.64/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.64/0.99  --sup_immed_bw_main                     []
% 2.64/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.64/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.64/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.64/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.64/0.99  
% 2.64/0.99  ------ Combination Options
% 2.64/0.99  
% 2.64/0.99  --comb_res_mult                         3
% 2.64/0.99  --comb_sup_mult                         2
% 2.64/0.99  --comb_inst_mult                        10
% 2.64/0.99  
% 2.64/0.99  ------ Debug Options
% 2.64/0.99  
% 2.64/0.99  --dbg_backtrace                         false
% 2.64/0.99  --dbg_dump_prop_clauses                 false
% 2.64/0.99  --dbg_dump_prop_clauses_file            -
% 2.64/0.99  --dbg_out_stat                          false
% 2.64/0.99  ------ Parsing...
% 2.64/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.64/0.99  
% 2.64/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 2.64/0.99  
% 2.64/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.64/0.99  
% 2.64/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.64/0.99  ------ Proving...
% 2.64/0.99  ------ Problem Properties 
% 2.64/0.99  
% 2.64/0.99  
% 2.64/0.99  clauses                                 25
% 2.64/0.99  conjectures                             7
% 2.64/0.99  EPR                                     5
% 2.64/0.99  Horn                                    22
% 2.64/0.99  unary                                   10
% 2.64/0.99  binary                                  3
% 2.64/0.99  lits                                    62
% 2.64/0.99  lits eq                                 21
% 2.64/0.99  fd_pure                                 0
% 2.64/0.99  fd_pseudo                               0
% 2.64/0.99  fd_cond                                 0
% 2.64/0.99  fd_pseudo_cond                          1
% 2.64/0.99  AC symbols                              0
% 2.64/0.99  
% 2.64/0.99  ------ Schedule dynamic 5 is on 
% 2.64/0.99  
% 2.64/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.64/0.99  
% 2.64/0.99  
% 2.64/0.99  ------ 
% 2.64/0.99  Current options:
% 2.64/0.99  ------ 
% 2.64/0.99  
% 2.64/0.99  ------ Input Options
% 2.64/0.99  
% 2.64/0.99  --out_options                           all
% 2.64/0.99  --tptp_safe_out                         true
% 2.64/0.99  --problem_path                          ""
% 2.64/0.99  --include_path                          ""
% 2.64/0.99  --clausifier                            res/vclausify_rel
% 2.64/0.99  --clausifier_options                    --mode clausify
% 2.64/0.99  --stdin                                 false
% 2.64/0.99  --stats_out                             all
% 2.64/0.99  
% 2.64/0.99  ------ General Options
% 2.64/0.99  
% 2.64/0.99  --fof                                   false
% 2.64/0.99  --time_out_real                         305.
% 2.64/0.99  --time_out_virtual                      -1.
% 2.64/0.99  --symbol_type_check                     false
% 2.64/0.99  --clausify_out                          false
% 2.64/0.99  --sig_cnt_out                           false
% 2.64/0.99  --trig_cnt_out                          false
% 2.64/0.99  --trig_cnt_out_tolerance                1.
% 2.64/0.99  --trig_cnt_out_sk_spl                   false
% 2.64/0.99  --abstr_cl_out                          false
% 2.64/0.99  
% 2.64/0.99  ------ Global Options
% 2.64/0.99  
% 2.64/0.99  --schedule                              default
% 2.64/0.99  --add_important_lit                     false
% 2.64/0.99  --prop_solver_per_cl                    1000
% 2.64/0.99  --min_unsat_core                        false
% 2.64/0.99  --soft_assumptions                      false
% 2.64/0.99  --soft_lemma_size                       3
% 2.64/0.99  --prop_impl_unit_size                   0
% 2.64/0.99  --prop_impl_unit                        []
% 2.64/0.99  --share_sel_clauses                     true
% 2.64/0.99  --reset_solvers                         false
% 2.64/0.99  --bc_imp_inh                            [conj_cone]
% 2.64/0.99  --conj_cone_tolerance                   3.
% 2.64/0.99  --extra_neg_conj                        none
% 2.64/0.99  --large_theory_mode                     true
% 2.64/0.99  --prolific_symb_bound                   200
% 2.64/0.99  --lt_threshold                          2000
% 2.64/0.99  --clause_weak_htbl                      true
% 2.64/0.99  --gc_record_bc_elim                     false
% 2.64/0.99  
% 2.64/0.99  ------ Preprocessing Options
% 2.64/0.99  
% 2.64/0.99  --preprocessing_flag                    true
% 2.64/0.99  --time_out_prep_mult                    0.1
% 2.64/0.99  --splitting_mode                        input
% 2.64/0.99  --splitting_grd                         true
% 2.64/0.99  --splitting_cvd                         false
% 2.64/0.99  --splitting_cvd_svl                     false
% 2.64/0.99  --splitting_nvd                         32
% 2.64/0.99  --sub_typing                            true
% 2.64/0.99  --prep_gs_sim                           true
% 2.64/0.99  --prep_unflatten                        true
% 2.64/0.99  --prep_res_sim                          true
% 2.64/0.99  --prep_upred                            true
% 2.64/0.99  --prep_sem_filter                       exhaustive
% 2.64/0.99  --prep_sem_filter_out                   false
% 2.64/0.99  --pred_elim                             true
% 2.64/0.99  --res_sim_input                         true
% 2.64/0.99  --eq_ax_congr_red                       true
% 2.64/0.99  --pure_diseq_elim                       true
% 2.64/0.99  --brand_transform                       false
% 2.64/0.99  --non_eq_to_eq                          false
% 2.64/0.99  --prep_def_merge                        true
% 2.64/0.99  --prep_def_merge_prop_impl              false
% 2.64/0.99  --prep_def_merge_mbd                    true
% 2.64/0.99  --prep_def_merge_tr_red                 false
% 2.64/0.99  --prep_def_merge_tr_cl                  false
% 2.64/0.99  --smt_preprocessing                     true
% 2.64/0.99  --smt_ac_axioms                         fast
% 2.64/0.99  --preprocessed_out                      false
% 2.64/0.99  --preprocessed_stats                    false
% 2.64/0.99  
% 2.64/0.99  ------ Abstraction refinement Options
% 2.64/0.99  
% 2.64/0.99  --abstr_ref                             []
% 2.64/0.99  --abstr_ref_prep                        false
% 2.64/0.99  --abstr_ref_until_sat                   false
% 2.64/0.99  --abstr_ref_sig_restrict                funpre
% 2.64/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.64/0.99  --abstr_ref_under                       []
% 2.64/0.99  
% 2.64/0.99  ------ SAT Options
% 2.64/0.99  
% 2.64/0.99  --sat_mode                              false
% 2.64/0.99  --sat_fm_restart_options                ""
% 2.64/0.99  --sat_gr_def                            false
% 2.64/0.99  --sat_epr_types                         true
% 2.64/0.99  --sat_non_cyclic_types                  false
% 2.64/0.99  --sat_finite_models                     false
% 2.64/0.99  --sat_fm_lemmas                         false
% 2.64/0.99  --sat_fm_prep                           false
% 2.64/0.99  --sat_fm_uc_incr                        true
% 2.64/0.99  --sat_out_model                         small
% 2.64/0.99  --sat_out_clauses                       false
% 2.64/0.99  
% 2.64/0.99  ------ QBF Options
% 2.64/0.99  
% 2.64/0.99  --qbf_mode                              false
% 2.64/0.99  --qbf_elim_univ                         false
% 2.64/0.99  --qbf_dom_inst                          none
% 2.64/0.99  --qbf_dom_pre_inst                      false
% 2.64/0.99  --qbf_sk_in                             false
% 2.64/0.99  --qbf_pred_elim                         true
% 2.64/0.99  --qbf_split                             512
% 2.64/0.99  
% 2.64/0.99  ------ BMC1 Options
% 2.64/0.99  
% 2.64/0.99  --bmc1_incremental                      false
% 2.64/0.99  --bmc1_axioms                           reachable_all
% 2.64/0.99  --bmc1_min_bound                        0
% 2.64/0.99  --bmc1_max_bound                        -1
% 2.64/0.99  --bmc1_max_bound_default                -1
% 2.64/0.99  --bmc1_symbol_reachability              true
% 2.64/0.99  --bmc1_property_lemmas                  false
% 2.64/0.99  --bmc1_k_induction                      false
% 2.64/0.99  --bmc1_non_equiv_states                 false
% 2.64/0.99  --bmc1_deadlock                         false
% 2.64/0.99  --bmc1_ucm                              false
% 2.64/0.99  --bmc1_add_unsat_core                   none
% 2.64/0.99  --bmc1_unsat_core_children              false
% 2.64/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.64/0.99  --bmc1_out_stat                         full
% 2.64/0.99  --bmc1_ground_init                      false
% 2.64/0.99  --bmc1_pre_inst_next_state              false
% 2.64/0.99  --bmc1_pre_inst_state                   false
% 2.64/0.99  --bmc1_pre_inst_reach_state             false
% 2.64/0.99  --bmc1_out_unsat_core                   false
% 2.64/0.99  --bmc1_aig_witness_out                  false
% 2.64/0.99  --bmc1_verbose                          false
% 2.64/0.99  --bmc1_dump_clauses_tptp                false
% 2.64/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.64/0.99  --bmc1_dump_file                        -
% 2.64/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.64/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.64/0.99  --bmc1_ucm_extend_mode                  1
% 2.64/0.99  --bmc1_ucm_init_mode                    2
% 2.64/0.99  --bmc1_ucm_cone_mode                    none
% 2.64/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.64/0.99  --bmc1_ucm_relax_model                  4
% 2.64/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.64/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.64/0.99  --bmc1_ucm_layered_model                none
% 2.64/0.99  --bmc1_ucm_max_lemma_size               10
% 2.64/0.99  
% 2.64/0.99  ------ AIG Options
% 2.64/0.99  
% 2.64/0.99  --aig_mode                              false
% 2.64/0.99  
% 2.64/0.99  ------ Instantiation Options
% 2.64/0.99  
% 2.64/0.99  --instantiation_flag                    true
% 2.64/0.99  --inst_sos_flag                         false
% 2.64/0.99  --inst_sos_phase                        true
% 2.64/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.64/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.64/0.99  --inst_lit_sel_side                     none
% 2.64/0.99  --inst_solver_per_active                1400
% 2.64/0.99  --inst_solver_calls_frac                1.
% 2.64/0.99  --inst_passive_queue_type               priority_queues
% 2.64/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.64/0.99  --inst_passive_queues_freq              [25;2]
% 2.64/0.99  --inst_dismatching                      true
% 2.64/0.99  --inst_eager_unprocessed_to_passive     true
% 2.64/0.99  --inst_prop_sim_given                   true
% 2.64/0.99  --inst_prop_sim_new                     false
% 2.64/0.99  --inst_subs_new                         false
% 2.64/0.99  --inst_eq_res_simp                      false
% 2.64/0.99  --inst_subs_given                       false
% 2.64/0.99  --inst_orphan_elimination               true
% 2.64/0.99  --inst_learning_loop_flag               true
% 2.64/0.99  --inst_learning_start                   3000
% 2.64/0.99  --inst_learning_factor                  2
% 2.64/0.99  --inst_start_prop_sim_after_learn       3
% 2.64/0.99  --inst_sel_renew                        solver
% 2.64/0.99  --inst_lit_activity_flag                true
% 2.64/0.99  --inst_restr_to_given                   false
% 2.64/0.99  --inst_activity_threshold               500
% 2.64/0.99  --inst_out_proof                        true
% 2.64/0.99  
% 2.64/0.99  ------ Resolution Options
% 2.64/0.99  
% 2.64/0.99  --resolution_flag                       false
% 2.64/0.99  --res_lit_sel                           adaptive
% 2.64/0.99  --res_lit_sel_side                      none
% 2.64/0.99  --res_ordering                          kbo
% 2.64/0.99  --res_to_prop_solver                    active
% 2.64/0.99  --res_prop_simpl_new                    false
% 2.64/0.99  --res_prop_simpl_given                  true
% 2.64/0.99  --res_passive_queue_type                priority_queues
% 2.64/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.64/0.99  --res_passive_queues_freq               [15;5]
% 2.64/0.99  --res_forward_subs                      full
% 2.64/0.99  --res_backward_subs                     full
% 2.64/0.99  --res_forward_subs_resolution           true
% 2.64/0.99  --res_backward_subs_resolution          true
% 2.64/0.99  --res_orphan_elimination                true
% 2.64/0.99  --res_time_limit                        2.
% 2.64/0.99  --res_out_proof                         true
% 2.64/0.99  
% 2.64/0.99  ------ Superposition Options
% 2.64/0.99  
% 2.64/0.99  --superposition_flag                    true
% 2.64/0.99  --sup_passive_queue_type                priority_queues
% 2.64/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.64/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.64/0.99  --demod_completeness_check              fast
% 2.64/0.99  --demod_use_ground                      true
% 2.64/0.99  --sup_to_prop_solver                    passive
% 2.64/0.99  --sup_prop_simpl_new                    true
% 2.64/0.99  --sup_prop_simpl_given                  true
% 2.64/0.99  --sup_fun_splitting                     false
% 2.64/0.99  --sup_smt_interval                      50000
% 2.64/0.99  
% 2.64/0.99  ------ Superposition Simplification Setup
% 2.64/0.99  
% 2.64/0.99  --sup_indices_passive                   []
% 2.64/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.64/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.64/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.64/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.64/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.64/0.99  --sup_full_bw                           [BwDemod]
% 2.64/0.99  --sup_immed_triv                        [TrivRules]
% 2.64/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.64/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.64/0.99  --sup_immed_bw_main                     []
% 2.64/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.64/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.64/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.64/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.64/0.99  
% 2.64/0.99  ------ Combination Options
% 2.64/0.99  
% 2.64/0.99  --comb_res_mult                         3
% 2.64/0.99  --comb_sup_mult                         2
% 2.64/0.99  --comb_inst_mult                        10
% 2.64/0.99  
% 2.64/0.99  ------ Debug Options
% 2.64/0.99  
% 2.64/0.99  --dbg_backtrace                         false
% 2.64/0.99  --dbg_dump_prop_clauses                 false
% 2.64/0.99  --dbg_dump_prop_clauses_file            -
% 2.64/0.99  --dbg_out_stat                          false
% 2.64/0.99  
% 2.64/0.99  
% 2.64/0.99  
% 2.64/0.99  
% 2.64/0.99  ------ Proving...
% 2.64/0.99  
% 2.64/0.99  
% 2.64/0.99  % SZS status Theorem for theBenchmark.p
% 2.64/0.99  
% 2.64/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.64/0.99  
% 2.64/0.99  fof(f13,conjecture,(
% 2.64/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2) => (k2_relset_1(X0,X1,X3) = X1 | k1_xboole_0 = X2))))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f14,negated_conjecture,(
% 2.64/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2) => (k2_relset_1(X0,X1,X3) = X1 | k1_xboole_0 = X2))))),
% 2.64/0.99    inference(negated_conjecture,[],[f13])).
% 2.64/0.99  
% 2.64/0.99  fof(f30,plain,(
% 2.64/0.99    ? [X0,X1,X2,X3] : (? [X4] : (((k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2) & (v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 2.64/0.99    inference(ennf_transformation,[],[f14])).
% 2.64/0.99  
% 2.64/0.99  fof(f31,plain,(
% 2.64/0.99    ? [X0,X1,X2,X3] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 2.64/0.99    inference(flattening,[],[f30])).
% 2.64/0.99  
% 2.64/0.99  fof(f37,plain,(
% 2.64/0.99    ( ! [X2,X0,X3,X1] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(sK4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,sK4)) = X2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(sK4,X1,X2) & v1_funct_1(sK4))) )),
% 2.64/0.99    introduced(choice_axiom,[])).
% 2.64/0.99  
% 2.64/0.99  fof(f36,plain,(
% 2.64/0.99    ? [X0,X1,X2,X3] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (? [X4] : (k2_relset_1(sK0,sK1,sK3) != sK1 & k1_xboole_0 != sK2 & v2_funct_1(X4) & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,X4)) = sK2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(X4,sK1,sK2) & v1_funct_1(X4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3))),
% 2.64/0.99    introduced(choice_axiom,[])).
% 2.64/0.99  
% 2.64/0.99  fof(f38,plain,(
% 2.64/0.99    (k2_relset_1(sK0,sK1,sK3) != sK1 & k1_xboole_0 != sK2 & v2_funct_1(sK4) & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK4,sK1,sK2) & v1_funct_1(sK4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)),
% 2.64/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f31,f37,f36])).
% 2.64/0.99  
% 2.64/0.99  fof(f62,plain,(
% 2.64/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 2.64/0.99    inference(cnf_transformation,[],[f38])).
% 2.64/0.99  
% 2.64/0.99  fof(f65,plain,(
% 2.64/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 2.64/0.99    inference(cnf_transformation,[],[f38])).
% 2.64/0.99  
% 2.64/0.99  fof(f12,axiom,(
% 2.64/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f28,plain,(
% 2.64/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 2.64/0.99    inference(ennf_transformation,[],[f12])).
% 2.64/0.99  
% 2.64/0.99  fof(f29,plain,(
% 2.64/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 2.64/0.99    inference(flattening,[],[f28])).
% 2.64/0.99  
% 2.64/0.99  fof(f59,plain,(
% 2.64/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 2.64/0.99    inference(cnf_transformation,[],[f29])).
% 2.64/0.99  
% 2.64/0.99  fof(f63,plain,(
% 2.64/0.99    v1_funct_1(sK4)),
% 2.64/0.99    inference(cnf_transformation,[],[f38])).
% 2.64/0.99  
% 2.64/0.99  fof(f60,plain,(
% 2.64/0.99    v1_funct_1(sK3)),
% 2.64/0.99    inference(cnf_transformation,[],[f38])).
% 2.64/0.99  
% 2.64/0.99  fof(f11,axiom,(
% 2.64/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f26,plain,(
% 2.64/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 2.64/0.99    inference(ennf_transformation,[],[f11])).
% 2.64/0.99  
% 2.64/0.99  fof(f27,plain,(
% 2.64/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 2.64/0.99    inference(flattening,[],[f26])).
% 2.64/0.99  
% 2.64/0.99  fof(f58,plain,(
% 2.64/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 2.64/0.99    inference(cnf_transformation,[],[f27])).
% 2.64/0.99  
% 2.64/0.99  fof(f9,axiom,(
% 2.64/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f23,plain,(
% 2.64/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.64/0.99    inference(ennf_transformation,[],[f9])).
% 2.64/0.99  
% 2.64/0.99  fof(f50,plain,(
% 2.64/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.64/0.99    inference(cnf_transformation,[],[f23])).
% 2.64/0.99  
% 2.64/0.99  fof(f66,plain,(
% 2.64/0.99    k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2),
% 2.64/0.99    inference(cnf_transformation,[],[f38])).
% 2.64/0.99  
% 2.64/0.99  fof(f6,axiom,(
% 2.64/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((v2_funct_1(X0) & k2_relat_1(X0) = k2_relat_1(k5_relat_1(X1,X0))) => r1_tarski(k1_relat_1(X0),k2_relat_1(X1)))))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f19,plain,(
% 2.64/0.99    ! [X0] : (! [X1] : ((r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) | (~v2_funct_1(X0) | k2_relat_1(X0) != k2_relat_1(k5_relat_1(X1,X0)))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.64/0.99    inference(ennf_transformation,[],[f6])).
% 2.64/0.99  
% 2.64/0.99  fof(f20,plain,(
% 2.64/0.99    ! [X0] : (! [X1] : (r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) | ~v2_funct_1(X0) | k2_relat_1(X0) != k2_relat_1(k5_relat_1(X1,X0)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.64/0.99    inference(flattening,[],[f19])).
% 2.64/0.99  
% 2.64/0.99  fof(f47,plain,(
% 2.64/0.99    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X0),k2_relat_1(X1)) | ~v2_funct_1(X0) | k2_relat_1(X0) != k2_relat_1(k5_relat_1(X1,X0)) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.64/0.99    inference(cnf_transformation,[],[f20])).
% 2.64/0.99  
% 2.64/0.99  fof(f67,plain,(
% 2.64/0.99    v2_funct_1(sK4)),
% 2.64/0.99    inference(cnf_transformation,[],[f38])).
% 2.64/0.99  
% 2.64/0.99  fof(f2,axiom,(
% 2.64/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f16,plain,(
% 2.64/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.64/0.99    inference(ennf_transformation,[],[f2])).
% 2.64/0.99  
% 2.64/0.99  fof(f42,plain,(
% 2.64/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.64/0.99    inference(cnf_transformation,[],[f16])).
% 2.64/0.99  
% 2.64/0.99  fof(f4,axiom,(
% 2.64/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f45,plain,(
% 2.64/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.64/0.99    inference(cnf_transformation,[],[f4])).
% 2.64/0.99  
% 2.64/0.99  fof(f8,axiom,(
% 2.64/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f22,plain,(
% 2.64/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.64/0.99    inference(ennf_transformation,[],[f8])).
% 2.64/0.99  
% 2.64/0.99  fof(f49,plain,(
% 2.64/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.64/0.99    inference(cnf_transformation,[],[f22])).
% 2.64/0.99  
% 2.64/0.99  fof(f10,axiom,(
% 2.64/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f24,plain,(
% 2.64/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.64/0.99    inference(ennf_transformation,[],[f10])).
% 2.64/0.99  
% 2.64/0.99  fof(f25,plain,(
% 2.64/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.64/0.99    inference(flattening,[],[f24])).
% 2.64/0.99  
% 2.64/0.99  fof(f35,plain,(
% 2.64/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.64/0.99    inference(nnf_transformation,[],[f25])).
% 2.64/0.99  
% 2.64/0.99  fof(f51,plain,(
% 2.64/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.64/0.99    inference(cnf_transformation,[],[f35])).
% 2.64/0.99  
% 2.64/0.99  fof(f64,plain,(
% 2.64/0.99    v1_funct_2(sK4,sK1,sK2)),
% 2.64/0.99    inference(cnf_transformation,[],[f38])).
% 2.64/0.99  
% 2.64/0.99  fof(f68,plain,(
% 2.64/0.99    k1_xboole_0 != sK2),
% 2.64/0.99    inference(cnf_transformation,[],[f38])).
% 2.64/0.99  
% 2.64/0.99  fof(f5,axiom,(
% 2.64/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f18,plain,(
% 2.64/0.99    ! [X0] : (! [X1] : (r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.64/0.99    inference(ennf_transformation,[],[f5])).
% 2.64/0.99  
% 2.64/0.99  fof(f46,plain,(
% 2.64/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.64/0.99    inference(cnf_transformation,[],[f18])).
% 2.64/0.99  
% 2.64/0.99  fof(f7,axiom,(
% 2.64/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f15,plain,(
% 2.64/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 2.64/0.99    inference(pure_predicate_removal,[],[f7])).
% 2.64/0.99  
% 2.64/0.99  fof(f21,plain,(
% 2.64/0.99    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.64/0.99    inference(ennf_transformation,[],[f15])).
% 2.64/0.99  
% 2.64/0.99  fof(f48,plain,(
% 2.64/0.99    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.64/0.99    inference(cnf_transformation,[],[f21])).
% 2.64/0.99  
% 2.64/0.99  fof(f3,axiom,(
% 2.64/0.99    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f17,plain,(
% 2.64/0.99    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.64/0.99    inference(ennf_transformation,[],[f3])).
% 2.64/0.99  
% 2.64/0.99  fof(f34,plain,(
% 2.64/0.99    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.64/0.99    inference(nnf_transformation,[],[f17])).
% 2.64/0.99  
% 2.64/0.99  fof(f43,plain,(
% 2.64/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.64/0.99    inference(cnf_transformation,[],[f34])).
% 2.64/0.99  
% 2.64/0.99  fof(f1,axiom,(
% 2.64/0.99    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.64/0.99  
% 2.64/0.99  fof(f32,plain,(
% 2.64/0.99    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.64/1.00    inference(nnf_transformation,[],[f1])).
% 2.64/1.00  
% 2.64/1.00  fof(f33,plain,(
% 2.64/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.64/1.00    inference(flattening,[],[f32])).
% 2.64/1.00  
% 2.64/1.00  fof(f41,plain,(
% 2.64/1.00    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 2.64/1.00    inference(cnf_transformation,[],[f33])).
% 2.64/1.00  
% 2.64/1.00  fof(f69,plain,(
% 2.64/1.00    k2_relset_1(sK0,sK1,sK3) != sK1),
% 2.64/1.00    inference(cnf_transformation,[],[f38])).
% 2.64/1.00  
% 2.64/1.00  cnf(c_28,negated_conjecture,
% 2.64/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 2.64/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_982,plain,
% 2.64/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_25,negated_conjecture,
% 2.64/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 2.64/1.00      inference(cnf_transformation,[],[f65]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_984,plain,
% 2.64/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_20,plain,
% 2.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.64/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 2.64/1.00      | ~ v1_funct_1(X0)
% 2.64/1.00      | ~ v1_funct_1(X3)
% 2.64/1.00      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 2.64/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_985,plain,
% 2.64/1.00      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 2.64/1.00      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 2.64/1.00      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.64/1.00      | v1_funct_1(X5) != iProver_top
% 2.64/1.00      | v1_funct_1(X4) != iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2480,plain,
% 2.64/1.00      ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
% 2.64/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.64/1.00      | v1_funct_1(X2) != iProver_top
% 2.64/1.00      | v1_funct_1(sK4) != iProver_top ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_984,c_985]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_27,negated_conjecture,
% 2.64/1.00      ( v1_funct_1(sK4) ),
% 2.64/1.00      inference(cnf_transformation,[],[f63]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_34,plain,
% 2.64/1.00      ( v1_funct_1(sK4) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2791,plain,
% 2.64/1.00      ( v1_funct_1(X2) != iProver_top
% 2.64/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.64/1.00      | k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4) ),
% 2.64/1.00      inference(global_propositional_subsumption,
% 2.64/1.00                [status(thm)],
% 2.64/1.00                [c_2480,c_34]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2792,plain,
% 2.64/1.00      ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
% 2.64/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.64/1.00      | v1_funct_1(X2) != iProver_top ),
% 2.64/1.00      inference(renaming,[status(thm)],[c_2791]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2802,plain,
% 2.64/1.00      ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4)
% 2.64/1.00      | v1_funct_1(sK3) != iProver_top ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_982,c_2792]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_30,negated_conjecture,
% 2.64/1.00      ( v1_funct_1(sK3) ),
% 2.64/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1256,plain,
% 2.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.64/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
% 2.64/1.00      | ~ v1_funct_1(X0)
% 2.64/1.00      | ~ v1_funct_1(sK4)
% 2.64/1.00      | k1_partfun1(X1,X2,X3,X4,X0,sK4) = k5_relat_1(X0,sK4) ),
% 2.64/1.00      inference(instantiation,[status(thm)],[c_20]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1395,plain,
% 2.64/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.64/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 2.64/1.00      | ~ v1_funct_1(sK4)
% 2.64/1.00      | ~ v1_funct_1(sK3)
% 2.64/1.00      | k1_partfun1(X2,X3,X0,X1,sK3,sK4) = k5_relat_1(sK3,sK4) ),
% 2.64/1.00      inference(instantiation,[status(thm)],[c_1256]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1608,plain,
% 2.64/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.64/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.64/1.00      | ~ v1_funct_1(sK4)
% 2.64/1.00      | ~ v1_funct_1(sK3)
% 2.64/1.00      | k1_partfun1(X0,X1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
% 2.64/1.00      inference(instantiation,[status(thm)],[c_1395]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1888,plain,
% 2.64/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.64/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 2.64/1.00      | ~ v1_funct_1(sK4)
% 2.64/1.00      | ~ v1_funct_1(sK3)
% 2.64/1.00      | k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
% 2.64/1.00      inference(instantiation,[status(thm)],[c_1608]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2895,plain,
% 2.64/1.00      ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
% 2.64/1.00      inference(global_propositional_subsumption,
% 2.64/1.00                [status(thm)],
% 2.64/1.00                [c_2802,c_30,c_28,c_27,c_25,c_1888]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_18,plain,
% 2.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.64/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 2.64/1.00      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 2.64/1.00      | ~ v1_funct_1(X0)
% 2.64/1.00      | ~ v1_funct_1(X3) ),
% 2.64/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_987,plain,
% 2.64/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.64/1.00      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5))) != iProver_top
% 2.64/1.00      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) = iProver_top
% 2.64/1.00      | v1_funct_1(X0) != iProver_top
% 2.64/1.00      | v1_funct_1(X3) != iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2899,plain,
% 2.64/1.00      ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top
% 2.64/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 2.64/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 2.64/1.00      | v1_funct_1(sK4) != iProver_top
% 2.64/1.00      | v1_funct_1(sK3) != iProver_top ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_2895,c_987]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_31,plain,
% 2.64/1.00      ( v1_funct_1(sK3) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_33,plain,
% 2.64/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_36,plain,
% 2.64/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_4574,plain,
% 2.64/1.00      ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
% 2.64/1.00      inference(global_propositional_subsumption,
% 2.64/1.00                [status(thm)],
% 2.64/1.00                [c_2899,c_31,c_33,c_34,c_36]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_11,plain,
% 2.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.64/1.00      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.64/1.00      inference(cnf_transformation,[],[f50]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_988,plain,
% 2.64/1.00      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.64/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_4585,plain,
% 2.64/1.00      ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_4574,c_988]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_24,negated_conjecture,
% 2.64/1.00      ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
% 2.64/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2898,plain,
% 2.64/1.00      ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = sK2 ),
% 2.64/1.00      inference(demodulation,[status(thm)],[c_2895,c_24]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_4610,plain,
% 2.64/1.00      ( k2_relat_1(k5_relat_1(sK3,sK4)) = sK2 ),
% 2.64/1.00      inference(light_normalisation,[status(thm)],[c_4585,c_2898]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_8,plain,
% 2.64/1.00      ( r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
% 2.64/1.00      | ~ v1_funct_1(X1)
% 2.64/1.00      | ~ v1_funct_1(X0)
% 2.64/1.00      | ~ v2_funct_1(X0)
% 2.64/1.00      | ~ v1_relat_1(X0)
% 2.64/1.00      | ~ v1_relat_1(X1)
% 2.64/1.00      | k2_relat_1(k5_relat_1(X1,X0)) != k2_relat_1(X0) ),
% 2.64/1.00      inference(cnf_transformation,[],[f47]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_23,negated_conjecture,
% 2.64/1.00      ( v2_funct_1(sK4) ),
% 2.64/1.00      inference(cnf_transformation,[],[f67]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_307,plain,
% 2.64/1.00      ( r1_tarski(k1_relat_1(X0),k2_relat_1(X1))
% 2.64/1.00      | ~ v1_funct_1(X1)
% 2.64/1.00      | ~ v1_funct_1(X0)
% 2.64/1.00      | ~ v1_relat_1(X0)
% 2.64/1.00      | ~ v1_relat_1(X1)
% 2.64/1.00      | k2_relat_1(k5_relat_1(X1,X0)) != k2_relat_1(X0)
% 2.64/1.00      | sK4 != X0 ),
% 2.64/1.00      inference(resolution_lifted,[status(thm)],[c_8,c_23]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_308,plain,
% 2.64/1.00      ( r1_tarski(k1_relat_1(sK4),k2_relat_1(X0))
% 2.64/1.00      | ~ v1_funct_1(X0)
% 2.64/1.00      | ~ v1_funct_1(sK4)
% 2.64/1.00      | ~ v1_relat_1(X0)
% 2.64/1.00      | ~ v1_relat_1(sK4)
% 2.64/1.00      | k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4) ),
% 2.64/1.00      inference(unflattening,[status(thm)],[c_307]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_312,plain,
% 2.64/1.00      ( ~ v1_funct_1(X0)
% 2.64/1.00      | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0))
% 2.64/1.00      | ~ v1_relat_1(X0)
% 2.64/1.00      | ~ v1_relat_1(sK4)
% 2.64/1.00      | k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4) ),
% 2.64/1.00      inference(global_propositional_subsumption,
% 2.64/1.00                [status(thm)],
% 2.64/1.00                [c_308,c_27]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_313,plain,
% 2.64/1.00      ( r1_tarski(k1_relat_1(sK4),k2_relat_1(X0))
% 2.64/1.00      | ~ v1_funct_1(X0)
% 2.64/1.00      | ~ v1_relat_1(X0)
% 2.64/1.00      | ~ v1_relat_1(sK4)
% 2.64/1.00      | k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4) ),
% 2.64/1.00      inference(renaming,[status(thm)],[c_312]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_980,plain,
% 2.64/1.00      ( k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4)
% 2.64/1.00      | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0)) = iProver_top
% 2.64/1.00      | v1_funct_1(X0) != iProver_top
% 2.64/1.00      | v1_relat_1(X0) != iProver_top
% 2.64/1.00      | v1_relat_1(sK4) != iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_313]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_309,plain,
% 2.64/1.00      ( k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4)
% 2.64/1.00      | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0)) = iProver_top
% 2.64/1.00      | v1_funct_1(X0) != iProver_top
% 2.64/1.00      | v1_funct_1(sK4) != iProver_top
% 2.64/1.00      | v1_relat_1(X0) != iProver_top
% 2.64/1.00      | v1_relat_1(sK4) != iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_308]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_3,plain,
% 2.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.64/1.00      | ~ v1_relat_1(X1)
% 2.64/1.00      | v1_relat_1(X0) ),
% 2.64/1.00      inference(cnf_transformation,[],[f42]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1165,plain,
% 2.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.64/1.00      | v1_relat_1(X0)
% 2.64/1.00      | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
% 2.64/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1353,plain,
% 2.64/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.64/1.00      | ~ v1_relat_1(k2_zfmisc_1(sK1,sK2))
% 2.64/1.00      | v1_relat_1(sK4) ),
% 2.64/1.00      inference(instantiation,[status(thm)],[c_1165]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1354,plain,
% 2.64/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 2.64/1.00      | v1_relat_1(k2_zfmisc_1(sK1,sK2)) != iProver_top
% 2.64/1.00      | v1_relat_1(sK4) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_1353]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_6,plain,
% 2.64/1.00      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.64/1.00      inference(cnf_transformation,[],[f45]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1577,plain,
% 2.64/1.00      ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) ),
% 2.64/1.00      inference(instantiation,[status(thm)],[c_6]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1578,plain,
% 2.64/1.00      ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_1577]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1714,plain,
% 2.64/1.00      ( v1_relat_1(X0) != iProver_top
% 2.64/1.00      | v1_funct_1(X0) != iProver_top
% 2.64/1.00      | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0)) = iProver_top
% 2.64/1.00      | k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4) ),
% 2.64/1.00      inference(global_propositional_subsumption,
% 2.64/1.00                [status(thm)],
% 2.64/1.00                [c_980,c_34,c_36,c_309,c_1354,c_1578]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1715,plain,
% 2.64/1.00      ( k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4)
% 2.64/1.00      | r1_tarski(k1_relat_1(sK4),k2_relat_1(X0)) = iProver_top
% 2.64/1.00      | v1_funct_1(X0) != iProver_top
% 2.64/1.00      | v1_relat_1(X0) != iProver_top ),
% 2.64/1.00      inference(renaming,[status(thm)],[c_1714]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_10,plain,
% 2.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.64/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.64/1.00      inference(cnf_transformation,[],[f49]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_989,plain,
% 2.64/1.00      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.64/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1498,plain,
% 2.64/1.00      ( k1_relset_1(sK1,sK2,sK4) = k1_relat_1(sK4) ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_984,c_989]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_17,plain,
% 2.64/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.64/1.00      | k1_relset_1(X1,X2,X0) = X1
% 2.64/1.00      | k1_xboole_0 = X2 ),
% 2.64/1.00      inference(cnf_transformation,[],[f51]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_26,negated_conjecture,
% 2.64/1.00      ( v1_funct_2(sK4,sK1,sK2) ),
% 2.64/1.00      inference(cnf_transformation,[],[f64]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_433,plain,
% 2.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.64/1.00      | k1_relset_1(X1,X2,X0) = X1
% 2.64/1.00      | sK4 != X0
% 2.64/1.00      | sK2 != X2
% 2.64/1.00      | sK1 != X1
% 2.64/1.00      | k1_xboole_0 = X2 ),
% 2.64/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_26]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_434,plain,
% 2.64/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.64/1.00      | k1_relset_1(sK1,sK2,sK4) = sK1
% 2.64/1.00      | k1_xboole_0 = sK2 ),
% 2.64/1.00      inference(unflattening,[status(thm)],[c_433]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_22,negated_conjecture,
% 2.64/1.00      ( k1_xboole_0 != sK2 ),
% 2.64/1.00      inference(cnf_transformation,[],[f68]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_436,plain,
% 2.64/1.00      ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
% 2.64/1.00      inference(global_propositional_subsumption,
% 2.64/1.00                [status(thm)],
% 2.64/1.00                [c_434,c_25,c_22]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1503,plain,
% 2.64/1.00      ( k1_relat_1(sK4) = sK1 ),
% 2.64/1.00      inference(light_normalisation,[status(thm)],[c_1498,c_436]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1720,plain,
% 2.64/1.00      ( k2_relat_1(k5_relat_1(X0,sK4)) != k2_relat_1(sK4)
% 2.64/1.00      | r1_tarski(sK1,k2_relat_1(X0)) = iProver_top
% 2.64/1.00      | v1_funct_1(X0) != iProver_top
% 2.64/1.00      | v1_relat_1(X0) != iProver_top ),
% 2.64/1.00      inference(light_normalisation,[status(thm)],[c_1715,c_1503]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_4716,plain,
% 2.64/1.00      ( k2_relat_1(sK4) != sK2
% 2.64/1.00      | r1_tarski(sK1,k2_relat_1(sK3)) = iProver_top
% 2.64/1.00      | v1_funct_1(sK3) != iProver_top
% 2.64/1.00      | v1_relat_1(sK3) != iProver_top ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_4610,c_1720]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_7,plain,
% 2.64/1.00      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
% 2.64/1.00      | ~ v1_relat_1(X0)
% 2.64/1.00      | ~ v1_relat_1(X1) ),
% 2.64/1.00      inference(cnf_transformation,[],[f46]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_990,plain,
% 2.64/1.00      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) = iProver_top
% 2.64/1.00      | v1_relat_1(X0) != iProver_top
% 2.64/1.00      | v1_relat_1(X1) != iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_4715,plain,
% 2.64/1.00      ( r1_tarski(sK2,k2_relat_1(sK4)) = iProver_top
% 2.64/1.00      | v1_relat_1(sK4) != iProver_top
% 2.64/1.00      | v1_relat_1(sK3) != iProver_top ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_4610,c_990]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_9,plain,
% 2.64/1.00      ( v5_relat_1(X0,X1)
% 2.64/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 2.64/1.00      inference(cnf_transformation,[],[f48]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_5,plain,
% 2.64/1.00      ( ~ v5_relat_1(X0,X1)
% 2.64/1.00      | r1_tarski(k2_relat_1(X0),X1)
% 2.64/1.00      | ~ v1_relat_1(X0) ),
% 2.64/1.00      inference(cnf_transformation,[],[f43]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_340,plain,
% 2.64/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.64/1.00      | r1_tarski(k2_relat_1(X0),X2)
% 2.64/1.00      | ~ v1_relat_1(X0) ),
% 2.64/1.00      inference(resolution,[status(thm)],[c_9,c_5]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_979,plain,
% 2.64/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.64/1.00      | r1_tarski(k2_relat_1(X0),X2) = iProver_top
% 2.64/1.00      | v1_relat_1(X0) != iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_340]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2259,plain,
% 2.64/1.00      ( r1_tarski(k2_relat_1(sK3),sK1) = iProver_top
% 2.64/1.00      | v1_relat_1(sK3) != iProver_top ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_982,c_979]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1356,plain,
% 2.64/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 2.64/1.00      | ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
% 2.64/1.00      | v1_relat_1(sK3) ),
% 2.64/1.00      inference(instantiation,[status(thm)],[c_1165]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1357,plain,
% 2.64/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 2.64/1.00      | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 2.64/1.00      | v1_relat_1(sK3) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_1356]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1580,plain,
% 2.64/1.00      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.64/1.00      inference(instantiation,[status(thm)],[c_6]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1581,plain,
% 2.64/1.00      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_1580]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2302,plain,
% 2.64/1.00      ( r1_tarski(k2_relat_1(sK3),sK1) = iProver_top ),
% 2.64/1.00      inference(global_propositional_subsumption,
% 2.64/1.00                [status(thm)],
% 2.64/1.00                [c_2259,c_33,c_1357,c_1581]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_0,plain,
% 2.64/1.00      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 2.64/1.00      inference(cnf_transformation,[],[f41]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_994,plain,
% 2.64/1.00      ( X0 = X1
% 2.64/1.00      | r1_tarski(X0,X1) != iProver_top
% 2.64/1.00      | r1_tarski(X1,X0) != iProver_top ),
% 2.64/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2307,plain,
% 2.64/1.00      ( k2_relat_1(sK3) = sK1
% 2.64/1.00      | r1_tarski(sK1,k2_relat_1(sK3)) != iProver_top ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_2302,c_994]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2258,plain,
% 2.64/1.00      ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top
% 2.64/1.00      | v1_relat_1(sK4) != iProver_top ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_984,c_979]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2271,plain,
% 2.64/1.00      ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top ),
% 2.64/1.00      inference(global_propositional_subsumption,
% 2.64/1.00                [status(thm)],
% 2.64/1.00                [c_2258,c_36,c_1354,c_1578]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_2276,plain,
% 2.64/1.00      ( k2_relat_1(sK4) = sK2
% 2.64/1.00      | r1_tarski(sK2,k2_relat_1(sK4)) != iProver_top ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_2271,c_994]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1416,plain,
% 2.64/1.00      ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
% 2.64/1.00      inference(superposition,[status(thm)],[c_982,c_988]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_21,negated_conjecture,
% 2.64/1.00      ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
% 2.64/1.00      inference(cnf_transformation,[],[f69]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(c_1571,plain,
% 2.64/1.00      ( k2_relat_1(sK3) != sK1 ),
% 2.64/1.00      inference(demodulation,[status(thm)],[c_1416,c_21]) ).
% 2.64/1.00  
% 2.64/1.00  cnf(contradiction,plain,
% 2.64/1.00      ( $false ),
% 2.64/1.00      inference(minisat,
% 2.64/1.00                [status(thm)],
% 2.64/1.00                [c_4716,c_4715,c_2307,c_2276,c_1581,c_1578,c_1571,c_1357,
% 2.64/1.00                 c_1354,c_36,c_33,c_31]) ).
% 2.64/1.00  
% 2.64/1.00  
% 2.64/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.64/1.00  
% 2.64/1.00  ------                               Statistics
% 2.64/1.00  
% 2.64/1.00  ------ General
% 2.64/1.00  
% 2.64/1.00  abstr_ref_over_cycles:                  0
% 2.64/1.00  abstr_ref_under_cycles:                 0
% 2.64/1.00  gc_basic_clause_elim:                   0
% 2.64/1.00  forced_gc_time:                         0
% 2.64/1.00  parsing_time:                           0.01
% 2.64/1.00  unif_index_cands_time:                  0.
% 2.64/1.00  unif_index_add_time:                    0.
% 2.64/1.00  orderings_time:                         0.
% 2.64/1.00  out_proof_time:                         0.009
% 2.64/1.00  total_time:                             0.187
% 2.64/1.00  num_of_symbols:                         52
% 2.64/1.00  num_of_terms:                           4566
% 2.64/1.00  
% 2.64/1.00  ------ Preprocessing
% 2.64/1.00  
% 2.64/1.00  num_of_splits:                          0
% 2.64/1.00  num_of_split_atoms:                     0
% 2.64/1.00  num_of_reused_defs:                     0
% 2.64/1.00  num_eq_ax_congr_red:                    9
% 2.64/1.00  num_of_sem_filtered_clauses:            1
% 2.64/1.00  num_of_subtypes:                        0
% 2.64/1.00  monotx_restored_types:                  0
% 2.64/1.00  sat_num_of_epr_types:                   0
% 2.64/1.00  sat_num_of_non_cyclic_types:            0
% 2.64/1.00  sat_guarded_non_collapsed_types:        0
% 2.64/1.00  num_pure_diseq_elim:                    0
% 2.64/1.00  simp_replaced_by:                       0
% 2.64/1.00  res_preprocessed:                       134
% 2.64/1.00  prep_upred:                             0
% 2.64/1.00  prep_unflattend:                        35
% 2.64/1.00  smt_new_axioms:                         0
% 2.64/1.00  pred_elim_cands:                        4
% 2.64/1.00  pred_elim:                              3
% 2.64/1.00  pred_elim_cl:                           5
% 2.64/1.00  pred_elim_cycles:                       5
% 2.64/1.00  merged_defs:                            0
% 2.64/1.00  merged_defs_ncl:                        0
% 2.64/1.00  bin_hyper_res:                          0
% 2.64/1.00  prep_cycles:                            4
% 2.64/1.00  pred_elim_time:                         0.005
% 2.64/1.00  splitting_time:                         0.
% 2.64/1.00  sem_filter_time:                        0.
% 2.64/1.00  monotx_time:                            0.
% 2.64/1.00  subtype_inf_time:                       0.
% 2.64/1.00  
% 2.64/1.00  ------ Problem properties
% 2.64/1.00  
% 2.64/1.00  clauses:                                25
% 2.64/1.00  conjectures:                            7
% 2.64/1.00  epr:                                    5
% 2.64/1.00  horn:                                   22
% 2.64/1.00  ground:                                 13
% 2.64/1.00  unary:                                  10
% 2.64/1.00  binary:                                 3
% 2.64/1.00  lits:                                   62
% 2.64/1.00  lits_eq:                                21
% 2.64/1.00  fd_pure:                                0
% 2.64/1.00  fd_pseudo:                              0
% 2.64/1.00  fd_cond:                                0
% 2.64/1.00  fd_pseudo_cond:                         1
% 2.64/1.00  ac_symbols:                             0
% 2.64/1.00  
% 2.64/1.00  ------ Propositional Solver
% 2.64/1.00  
% 2.64/1.00  prop_solver_calls:                      27
% 2.64/1.00  prop_fast_solver_calls:                 973
% 2.64/1.00  smt_solver_calls:                       0
% 2.64/1.00  smt_fast_solver_calls:                  0
% 2.64/1.00  prop_num_of_clauses:                    1908
% 2.64/1.00  prop_preprocess_simplified:             5023
% 2.64/1.00  prop_fo_subsumed:                       59
% 2.64/1.00  prop_solver_time:                       0.
% 2.64/1.00  smt_solver_time:                        0.
% 2.64/1.00  smt_fast_solver_time:                   0.
% 2.64/1.00  prop_fast_solver_time:                  0.
% 2.64/1.00  prop_unsat_core_time:                   0.
% 2.64/1.00  
% 2.64/1.00  ------ QBF
% 2.64/1.00  
% 2.64/1.00  qbf_q_res:                              0
% 2.64/1.00  qbf_num_tautologies:                    0
% 2.64/1.00  qbf_prep_cycles:                        0
% 2.64/1.00  
% 2.64/1.00  ------ BMC1
% 2.64/1.00  
% 2.64/1.00  bmc1_current_bound:                     -1
% 2.64/1.00  bmc1_last_solved_bound:                 -1
% 2.64/1.00  bmc1_unsat_core_size:                   -1
% 2.64/1.00  bmc1_unsat_core_parents_size:           -1
% 2.64/1.00  bmc1_merge_next_fun:                    0
% 2.64/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.64/1.00  
% 2.64/1.00  ------ Instantiation
% 2.64/1.00  
% 2.64/1.00  inst_num_of_clauses:                    553
% 2.64/1.00  inst_num_in_passive:                    217
% 2.64/1.00  inst_num_in_active:                     332
% 2.64/1.00  inst_num_in_unprocessed:                4
% 2.64/1.00  inst_num_of_loops:                      360
% 2.64/1.00  inst_num_of_learning_restarts:          0
% 2.64/1.00  inst_num_moves_active_passive:          24
% 2.64/1.00  inst_lit_activity:                      0
% 2.64/1.00  inst_lit_activity_moves:                0
% 2.64/1.00  inst_num_tautologies:                   0
% 2.64/1.00  inst_num_prop_implied:                  0
% 2.64/1.00  inst_num_existing_simplified:           0
% 2.64/1.00  inst_num_eq_res_simplified:             0
% 2.64/1.00  inst_num_child_elim:                    0
% 2.64/1.00  inst_num_of_dismatching_blockings:      86
% 2.64/1.00  inst_num_of_non_proper_insts:           604
% 2.64/1.00  inst_num_of_duplicates:                 0
% 2.64/1.00  inst_inst_num_from_inst_to_res:         0
% 2.64/1.00  inst_dismatching_checking_time:         0.
% 2.64/1.00  
% 2.64/1.00  ------ Resolution
% 2.64/1.00  
% 2.64/1.00  res_num_of_clauses:                     0
% 2.64/1.00  res_num_in_passive:                     0
% 2.64/1.00  res_num_in_active:                      0
% 2.64/1.00  res_num_of_loops:                       138
% 2.64/1.00  res_forward_subset_subsumed:            65
% 2.64/1.00  res_backward_subset_subsumed:           0
% 2.64/1.00  res_forward_subsumed:                   0
% 2.64/1.00  res_backward_subsumed:                  0
% 2.64/1.00  res_forward_subsumption_resolution:     0
% 2.64/1.00  res_backward_subsumption_resolution:    0
% 2.64/1.00  res_clause_to_clause_subsumption:       260
% 2.64/1.00  res_orphan_elimination:                 0
% 2.64/1.00  res_tautology_del:                      55
% 2.64/1.00  res_num_eq_res_simplified:              0
% 2.64/1.00  res_num_sel_changes:                    0
% 2.64/1.00  res_moves_from_active_to_pass:          0
% 2.64/1.00  
% 2.64/1.00  ------ Superposition
% 2.64/1.00  
% 2.64/1.00  sup_time_total:                         0.
% 2.64/1.00  sup_time_generating:                    0.
% 2.64/1.00  sup_time_sim_full:                      0.
% 2.64/1.00  sup_time_sim_immed:                     0.
% 2.64/1.00  
% 2.64/1.00  sup_num_of_clauses:                     110
% 2.64/1.00  sup_num_in_active:                      69
% 2.64/1.00  sup_num_in_passive:                     41
% 2.64/1.00  sup_num_of_loops:                       70
% 2.64/1.00  sup_fw_superposition:                   38
% 2.64/1.00  sup_bw_superposition:                   57
% 2.64/1.00  sup_immediate_simplified:               16
% 2.64/1.00  sup_given_eliminated:                   0
% 2.64/1.00  comparisons_done:                       0
% 2.64/1.00  comparisons_avoided:                    3
% 2.64/1.00  
% 2.64/1.00  ------ Simplifications
% 2.64/1.00  
% 2.64/1.00  
% 2.64/1.00  sim_fw_subset_subsumed:                 2
% 2.64/1.00  sim_bw_subset_subsumed:                 1
% 2.64/1.00  sim_fw_subsumed:                        1
% 2.64/1.00  sim_bw_subsumed:                        0
% 2.64/1.00  sim_fw_subsumption_res:                 1
% 2.64/1.00  sim_bw_subsumption_res:                 0
% 2.64/1.00  sim_tautology_del:                      0
% 2.64/1.00  sim_eq_tautology_del:                   3
% 2.64/1.00  sim_eq_res_simp:                        0
% 2.64/1.00  sim_fw_demodulated:                     0
% 2.64/1.00  sim_bw_demodulated:                     3
% 2.64/1.00  sim_light_normalised:                   13
% 2.64/1.00  sim_joinable_taut:                      0
% 2.64/1.00  sim_joinable_simp:                      0
% 2.64/1.00  sim_ac_normalised:                      0
% 2.64/1.00  sim_smt_subsumption:                    0
% 2.64/1.00  
%------------------------------------------------------------------------------
