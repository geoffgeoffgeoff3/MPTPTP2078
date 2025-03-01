%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:01:42 EST 2020

% Result     : Theorem 3.55s
% Output     : CNFRefutation 3.55s
% Verified   : 
% Statistics : Number of formulae       :  165 (1046 expanded)
%              Number of clauses        :   98 ( 342 expanded)
%              Number of leaves         :   17 ( 251 expanded)
%              Depth                    :   22
%              Number of atoms          :  493 (6975 expanded)
%              Number of equality atoms :  222 (2334 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f15,conjecture,(
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

fof(f16,negated_conjecture,(
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
    inference(negated_conjecture,[],[f15])).

fof(f34,plain,(
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
    inference(ennf_transformation,[],[f16])).

fof(f35,plain,(
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
    inference(flattening,[],[f34])).

fof(f41,plain,(
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

fof(f40,plain,
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

fof(f42,plain,
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f35,f41,f40])).

fof(f71,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f42])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f46,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f4,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f68,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f42])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f51,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f33,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f32])).

fof(f65,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f69,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f42])).

fof(f66,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f42])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f31,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f30])).

fof(f64,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f72,plain,(
    k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
    inference(cnf_transformation,[],[f42])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f47,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f12,axiom,(
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
    inference(ennf_transformation,[],[f12])).

fof(f29,plain,(
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
    inference(flattening,[],[f28])).

fof(f39,plain,(
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
    inference(nnf_transformation,[],[f29])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f70,plain,(
    v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f74,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f42])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( ( v2_funct_1(X1)
          & r1_tarski(X0,k1_relat_1(X1)) )
       => k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
      | ~ v2_funct_1(X1)
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f24,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
      | ~ v2_funct_1(X1)
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f23])).

fof(f53,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
      | ~ v2_funct_1(X1)
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f73,plain,(
    v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f42])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f52,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f36])).

fof(f45,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f37])).

fof(f76,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f44])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f50,plain,(
    ! [X0] :
      ( k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f75,plain,(
    k2_relset_1(sK0,sK1,sK3) != sK1 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_27,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1030,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1040,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_1899,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1030,c_1040])).

cnf(c_38,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_1094,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(X0))
    | ~ v1_relat_1(X0)
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1153,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_relat_1(k2_zfmisc_1(X0,X1))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1094])).

cnf(c_1280,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ v1_relat_1(k2_zfmisc_1(sK1,sK2))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1153])).

cnf(c_1281,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK1,sK2)) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1280])).

cnf(c_6,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1431,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1432,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1431])).

cnf(c_2240,plain,
    ( v1_relat_1(sK4) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1899,c_38,c_1281,c_1432])).

cnf(c_1039,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_30,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1028,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_1900,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1028,c_1040])).

cnf(c_2247,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1039,c_1900])).

cnf(c_8,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k9_relat_1(X1,k2_relat_1(X0)) = k2_relat_1(k5_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1037,plain,
    ( k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_2409,plain,
    ( k9_relat_1(X0,k2_relat_1(sK3)) = k2_relat_1(k5_relat_1(sK3,X0))
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2247,c_1037])).

cnf(c_4078,plain,
    ( k9_relat_1(sK4,k2_relat_1(sK3)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
    inference(superposition,[status(thm)],[c_2240,c_2409])).

cnf(c_22,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1031,plain,
    ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X5) != iProver_top
    | v1_funct_1(X4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_2506,plain,
    ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1030,c_1031])).

cnf(c_29,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_36,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_2580,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2506,c_36])).

cnf(c_2581,plain,
    ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_2580])).

cnf(c_2588,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4)
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1028,c_2581])).

cnf(c_32,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_33,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_2636,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2588,c_33])).

cnf(c_20,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1033,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5))) != iProver_top
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_2639,plain,
    ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2636,c_1033])).

cnf(c_35,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_3986,plain,
    ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2639,c_33,c_35,c_36,c_38])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1034,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3994,plain,
    ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
    inference(superposition,[status(thm)],[c_3986,c_1034])).

cnf(c_26,negated_conjecture,
    ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_2638,plain,
    ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = sK2 ),
    inference(demodulation,[status(thm)],[c_2636,c_26])).

cnf(c_3997,plain,
    ( k2_relat_1(k5_relat_1(sK3,sK4)) = sK2 ),
    inference(light_normalisation,[status(thm)],[c_3994,c_2638])).

cnf(c_4081,plain,
    ( k9_relat_1(sK4,k2_relat_1(sK3)) = sK2 ),
    inference(light_normalisation,[status(thm)],[c_4078,c_3997])).

cnf(c_11,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_5,plain,
    ( ~ v5_relat_1(X0,X1)
    | r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_357,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_11,c_5])).

cnf(c_1025,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | r1_tarski(k2_relat_1(X0),X2) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_357])).

cnf(c_1698,plain,
    ( r1_tarski(k2_relat_1(sK3),sK1) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1028,c_1025])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1035,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_1848,plain,
    ( k1_relset_1(sK1,sK2,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1030,c_1035])).

cnf(c_19,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_28,negated_conjecture,
    ( v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_450,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK4 != X0
    | sK2 != X2
    | sK1 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_28])).

cnf(c_451,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | k1_relset_1(sK1,sK2,sK4) = sK1
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_450])).

cnf(c_24,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_453,plain,
    ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_451,c_27,c_24])).

cnf(c_1850,plain,
    ( k1_relat_1(sK4) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_1848,c_453])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_25,negated_conjecture,
    ( v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_332,plain,
    ( ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_25])).

cnf(c_333,plain,
    ( ~ r1_tarski(X0,k1_relat_1(sK4))
    | ~ v1_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_332])).

cnf(c_337,plain,
    ( ~ r1_tarski(X0,k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_333,c_29])).

cnf(c_1026,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
    | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_337])).

cnf(c_339,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
    | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_337])).

cnf(c_1561,plain,
    ( r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
    | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1026,c_38,c_339,c_1281,c_1432])).

cnf(c_1562,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
    | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top ),
    inference(renaming,[status(thm)],[c_1561])).

cnf(c_2011,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
    | r1_tarski(X0,sK1) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1850,c_1562])).

cnf(c_3249,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(sK3))) = k2_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1698,c_2011])).

cnf(c_3253,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(sK3))) = k2_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3249,c_2247])).

cnf(c_4223,plain,
    ( k10_relat_1(sK4,sK2) = k2_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_4081,c_3253])).

cnf(c_9,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1036,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) = iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_4084,plain,
    ( r1_tarski(sK2,k2_relat_1(sK4)) = iProver_top
    | v1_relat_1(sK4) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_3997,c_1036])).

cnf(c_4415,plain,
    ( r1_tarski(sK2,k2_relat_1(sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4084,c_38,c_1281,c_1432,c_2247])).

cnf(c_1697,plain,
    ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1030,c_1025])).

cnf(c_2106,plain,
    ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1697,c_38,c_1281,c_1432])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1042,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2110,plain,
    ( k2_relat_1(sK4) = sK2
    | r1_tarski(sK2,k2_relat_1(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2106,c_1042])).

cnf(c_4420,plain,
    ( k2_relat_1(sK4) = sK2 ),
    inference(superposition,[status(thm)],[c_4415,c_2110])).

cnf(c_1,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1041,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1567,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k1_relat_1(sK4))) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1041,c_1562])).

cnf(c_7,plain,
    ( ~ v1_relat_1(X0)
    | k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1038,plain,
    ( k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2244,plain,
    ( k9_relat_1(sK4,k1_relat_1(sK4)) = k2_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_2240,c_1038])).

cnf(c_2245,plain,
    ( k9_relat_1(sK4,sK1) = k2_relat_1(sK4) ),
    inference(light_normalisation,[status(thm)],[c_2244,c_1850])).

cnf(c_3082,plain,
    ( k10_relat_1(sK4,k2_relat_1(sK4)) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_1567,c_1567,c_1850,c_2245])).

cnf(c_5565,plain,
    ( k10_relat_1(sK4,sK2) = sK1 ),
    inference(demodulation,[status(thm)],[c_4420,c_3082])).

cnf(c_5756,plain,
    ( k2_relat_1(sK3) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_4223,c_5565])).

cnf(c_1408,plain,
    ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1028,c_1034])).

cnf(c_23,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1459,plain,
    ( k2_relat_1(sK3) != sK1 ),
    inference(demodulation,[status(thm)],[c_1408,c_23])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5756,c_1459])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n001.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 16:52:45 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.55/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.55/0.99  
% 3.55/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.55/0.99  
% 3.55/0.99  ------  iProver source info
% 3.55/0.99  
% 3.55/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.55/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.55/0.99  git: non_committed_changes: false
% 3.55/0.99  git: last_make_outside_of_git: false
% 3.55/0.99  
% 3.55/0.99  ------ 
% 3.55/0.99  
% 3.55/0.99  ------ Input Options
% 3.55/0.99  
% 3.55/0.99  --out_options                           all
% 3.55/0.99  --tptp_safe_out                         true
% 3.55/0.99  --problem_path                          ""
% 3.55/0.99  --include_path                          ""
% 3.55/0.99  --clausifier                            res/vclausify_rel
% 3.55/0.99  --clausifier_options                    ""
% 3.55/0.99  --stdin                                 false
% 3.55/0.99  --stats_out                             all
% 3.55/0.99  
% 3.55/0.99  ------ General Options
% 3.55/0.99  
% 3.55/0.99  --fof                                   false
% 3.55/0.99  --time_out_real                         305.
% 3.55/0.99  --time_out_virtual                      -1.
% 3.55/0.99  --symbol_type_check                     false
% 3.55/0.99  --clausify_out                          false
% 3.55/0.99  --sig_cnt_out                           false
% 3.55/0.99  --trig_cnt_out                          false
% 3.55/0.99  --trig_cnt_out_tolerance                1.
% 3.55/0.99  --trig_cnt_out_sk_spl                   false
% 3.55/0.99  --abstr_cl_out                          false
% 3.55/0.99  
% 3.55/0.99  ------ Global Options
% 3.55/0.99  
% 3.55/0.99  --schedule                              default
% 3.55/0.99  --add_important_lit                     false
% 3.55/0.99  --prop_solver_per_cl                    1000
% 3.55/0.99  --min_unsat_core                        false
% 3.55/0.99  --soft_assumptions                      false
% 3.55/0.99  --soft_lemma_size                       3
% 3.55/0.99  --prop_impl_unit_size                   0
% 3.55/0.99  --prop_impl_unit                        []
% 3.55/0.99  --share_sel_clauses                     true
% 3.55/0.99  --reset_solvers                         false
% 3.55/0.99  --bc_imp_inh                            [conj_cone]
% 3.55/0.99  --conj_cone_tolerance                   3.
% 3.55/0.99  --extra_neg_conj                        none
% 3.55/0.99  --large_theory_mode                     true
% 3.55/0.99  --prolific_symb_bound                   200
% 3.55/0.99  --lt_threshold                          2000
% 3.55/0.99  --clause_weak_htbl                      true
% 3.55/0.99  --gc_record_bc_elim                     false
% 3.55/0.99  
% 3.55/0.99  ------ Preprocessing Options
% 3.55/0.99  
% 3.55/0.99  --preprocessing_flag                    true
% 3.55/0.99  --time_out_prep_mult                    0.1
% 3.55/0.99  --splitting_mode                        input
% 3.55/0.99  --splitting_grd                         true
% 3.55/0.99  --splitting_cvd                         false
% 3.55/0.99  --splitting_cvd_svl                     false
% 3.55/0.99  --splitting_nvd                         32
% 3.55/0.99  --sub_typing                            true
% 3.55/0.99  --prep_gs_sim                           true
% 3.55/0.99  --prep_unflatten                        true
% 3.55/0.99  --prep_res_sim                          true
% 3.55/0.99  --prep_upred                            true
% 3.55/0.99  --prep_sem_filter                       exhaustive
% 3.55/0.99  --prep_sem_filter_out                   false
% 3.55/0.99  --pred_elim                             true
% 3.55/0.99  --res_sim_input                         true
% 3.55/0.99  --eq_ax_congr_red                       true
% 3.55/0.99  --pure_diseq_elim                       true
% 3.55/0.99  --brand_transform                       false
% 3.55/0.99  --non_eq_to_eq                          false
% 3.55/0.99  --prep_def_merge                        true
% 3.55/0.99  --prep_def_merge_prop_impl              false
% 3.55/0.99  --prep_def_merge_mbd                    true
% 3.55/0.99  --prep_def_merge_tr_red                 false
% 3.55/0.99  --prep_def_merge_tr_cl                  false
% 3.55/0.99  --smt_preprocessing                     true
% 3.55/0.99  --smt_ac_axioms                         fast
% 3.55/0.99  --preprocessed_out                      false
% 3.55/0.99  --preprocessed_stats                    false
% 3.55/0.99  
% 3.55/0.99  ------ Abstraction refinement Options
% 3.55/0.99  
% 3.55/0.99  --abstr_ref                             []
% 3.55/0.99  --abstr_ref_prep                        false
% 3.55/0.99  --abstr_ref_until_sat                   false
% 3.55/0.99  --abstr_ref_sig_restrict                funpre
% 3.55/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.55/0.99  --abstr_ref_under                       []
% 3.55/0.99  
% 3.55/0.99  ------ SAT Options
% 3.55/0.99  
% 3.55/0.99  --sat_mode                              false
% 3.55/0.99  --sat_fm_restart_options                ""
% 3.55/0.99  --sat_gr_def                            false
% 3.55/0.99  --sat_epr_types                         true
% 3.55/0.99  --sat_non_cyclic_types                  false
% 3.55/0.99  --sat_finite_models                     false
% 3.55/0.99  --sat_fm_lemmas                         false
% 3.55/0.99  --sat_fm_prep                           false
% 3.55/0.99  --sat_fm_uc_incr                        true
% 3.55/0.99  --sat_out_model                         small
% 3.55/0.99  --sat_out_clauses                       false
% 3.55/0.99  
% 3.55/0.99  ------ QBF Options
% 3.55/0.99  
% 3.55/0.99  --qbf_mode                              false
% 3.55/0.99  --qbf_elim_univ                         false
% 3.55/0.99  --qbf_dom_inst                          none
% 3.55/0.99  --qbf_dom_pre_inst                      false
% 3.55/0.99  --qbf_sk_in                             false
% 3.55/0.99  --qbf_pred_elim                         true
% 3.55/0.99  --qbf_split                             512
% 3.55/0.99  
% 3.55/0.99  ------ BMC1 Options
% 3.55/0.99  
% 3.55/0.99  --bmc1_incremental                      false
% 3.55/0.99  --bmc1_axioms                           reachable_all
% 3.55/0.99  --bmc1_min_bound                        0
% 3.55/0.99  --bmc1_max_bound                        -1
% 3.55/0.99  --bmc1_max_bound_default                -1
% 3.55/0.99  --bmc1_symbol_reachability              true
% 3.55/0.99  --bmc1_property_lemmas                  false
% 3.55/0.99  --bmc1_k_induction                      false
% 3.55/0.99  --bmc1_non_equiv_states                 false
% 3.55/0.99  --bmc1_deadlock                         false
% 3.55/0.99  --bmc1_ucm                              false
% 3.55/0.99  --bmc1_add_unsat_core                   none
% 3.55/0.99  --bmc1_unsat_core_children              false
% 3.55/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.55/0.99  --bmc1_out_stat                         full
% 3.55/0.99  --bmc1_ground_init                      false
% 3.55/0.99  --bmc1_pre_inst_next_state              false
% 3.55/0.99  --bmc1_pre_inst_state                   false
% 3.55/0.99  --bmc1_pre_inst_reach_state             false
% 3.55/0.99  --bmc1_out_unsat_core                   false
% 3.55/0.99  --bmc1_aig_witness_out                  false
% 3.55/0.99  --bmc1_verbose                          false
% 3.55/0.99  --bmc1_dump_clauses_tptp                false
% 3.55/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.55/0.99  --bmc1_dump_file                        -
% 3.55/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.55/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.55/0.99  --bmc1_ucm_extend_mode                  1
% 3.55/0.99  --bmc1_ucm_init_mode                    2
% 3.55/0.99  --bmc1_ucm_cone_mode                    none
% 3.55/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.55/0.99  --bmc1_ucm_relax_model                  4
% 3.55/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.55/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.55/0.99  --bmc1_ucm_layered_model                none
% 3.55/0.99  --bmc1_ucm_max_lemma_size               10
% 3.55/0.99  
% 3.55/0.99  ------ AIG Options
% 3.55/0.99  
% 3.55/0.99  --aig_mode                              false
% 3.55/0.99  
% 3.55/0.99  ------ Instantiation Options
% 3.55/0.99  
% 3.55/0.99  --instantiation_flag                    true
% 3.55/0.99  --inst_sos_flag                         true
% 3.55/0.99  --inst_sos_phase                        true
% 3.55/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.55/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.55/0.99  --inst_lit_sel_side                     num_symb
% 3.55/0.99  --inst_solver_per_active                1400
% 3.55/0.99  --inst_solver_calls_frac                1.
% 3.55/0.99  --inst_passive_queue_type               priority_queues
% 3.55/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.55/0.99  --inst_passive_queues_freq              [25;2]
% 3.55/0.99  --inst_dismatching                      true
% 3.55/0.99  --inst_eager_unprocessed_to_passive     true
% 3.55/0.99  --inst_prop_sim_given                   true
% 3.55/0.99  --inst_prop_sim_new                     false
% 3.55/0.99  --inst_subs_new                         false
% 3.55/0.99  --inst_eq_res_simp                      false
% 3.55/0.99  --inst_subs_given                       false
% 3.55/0.99  --inst_orphan_elimination               true
% 3.55/0.99  --inst_learning_loop_flag               true
% 3.55/0.99  --inst_learning_start                   3000
% 3.55/0.99  --inst_learning_factor                  2
% 3.55/0.99  --inst_start_prop_sim_after_learn       3
% 3.55/0.99  --inst_sel_renew                        solver
% 3.55/0.99  --inst_lit_activity_flag                true
% 3.55/0.99  --inst_restr_to_given                   false
% 3.55/0.99  --inst_activity_threshold               500
% 3.55/0.99  --inst_out_proof                        true
% 3.55/0.99  
% 3.55/0.99  ------ Resolution Options
% 3.55/0.99  
% 3.55/0.99  --resolution_flag                       true
% 3.55/0.99  --res_lit_sel                           adaptive
% 3.55/0.99  --res_lit_sel_side                      none
% 3.55/0.99  --res_ordering                          kbo
% 3.55/0.99  --res_to_prop_solver                    active
% 3.55/0.99  --res_prop_simpl_new                    false
% 3.55/0.99  --res_prop_simpl_given                  true
% 3.55/0.99  --res_passive_queue_type                priority_queues
% 3.55/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.55/0.99  --res_passive_queues_freq               [15;5]
% 3.55/0.99  --res_forward_subs                      full
% 3.55/0.99  --res_backward_subs                     full
% 3.55/0.99  --res_forward_subs_resolution           true
% 3.55/0.99  --res_backward_subs_resolution          true
% 3.55/0.99  --res_orphan_elimination                true
% 3.55/0.99  --res_time_limit                        2.
% 3.55/0.99  --res_out_proof                         true
% 3.55/0.99  
% 3.55/0.99  ------ Superposition Options
% 3.55/0.99  
% 3.55/0.99  --superposition_flag                    true
% 3.55/0.99  --sup_passive_queue_type                priority_queues
% 3.55/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.55/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.55/0.99  --demod_completeness_check              fast
% 3.55/0.99  --demod_use_ground                      true
% 3.55/0.99  --sup_to_prop_solver                    passive
% 3.55/0.99  --sup_prop_simpl_new                    true
% 3.55/0.99  --sup_prop_simpl_given                  true
% 3.55/0.99  --sup_fun_splitting                     true
% 3.55/0.99  --sup_smt_interval                      50000
% 3.55/0.99  
% 3.55/0.99  ------ Superposition Simplification Setup
% 3.55/0.99  
% 3.55/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.55/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.55/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.55/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.55/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.55/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.55/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.55/0.99  --sup_immed_triv                        [TrivRules]
% 3.55/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.55/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.55/0.99  --sup_immed_bw_main                     []
% 3.55/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.55/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.55/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.55/0.99  --sup_input_bw                          []
% 3.55/0.99  
% 3.55/0.99  ------ Combination Options
% 3.55/0.99  
% 3.55/0.99  --comb_res_mult                         3
% 3.55/0.99  --comb_sup_mult                         2
% 3.55/0.99  --comb_inst_mult                        10
% 3.55/0.99  
% 3.55/0.99  ------ Debug Options
% 3.55/0.99  
% 3.55/0.99  --dbg_backtrace                         false
% 3.55/0.99  --dbg_dump_prop_clauses                 false
% 3.55/0.99  --dbg_dump_prop_clauses_file            -
% 3.55/0.99  --dbg_out_stat                          false
% 3.55/0.99  ------ Parsing...
% 3.55/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.55/0.99  
% 3.55/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.55/0.99  
% 3.55/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.55/0.99  
% 3.55/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.55/0.99  ------ Proving...
% 3.55/0.99  ------ Problem Properties 
% 3.55/0.99  
% 3.55/0.99  
% 3.55/0.99  clauses                                 27
% 3.55/0.99  conjectures                             7
% 3.55/0.99  EPR                                     5
% 3.55/0.99  Horn                                    24
% 3.55/0.99  unary                                   10
% 3.55/0.99  binary                                  4
% 3.55/0.99  lits                                    65
% 3.55/0.99  lits eq                                 23
% 3.55/0.99  fd_pure                                 0
% 3.55/0.99  fd_pseudo                               0
% 3.55/0.99  fd_cond                                 0
% 3.55/0.99  fd_pseudo_cond                          1
% 3.55/0.99  AC symbols                              0
% 3.55/0.99  
% 3.55/0.99  ------ Schedule dynamic 5 is on 
% 3.55/0.99  
% 3.55/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.55/0.99  
% 3.55/0.99  
% 3.55/0.99  ------ 
% 3.55/0.99  Current options:
% 3.55/0.99  ------ 
% 3.55/0.99  
% 3.55/0.99  ------ Input Options
% 3.55/0.99  
% 3.55/0.99  --out_options                           all
% 3.55/0.99  --tptp_safe_out                         true
% 3.55/0.99  --problem_path                          ""
% 3.55/0.99  --include_path                          ""
% 3.55/0.99  --clausifier                            res/vclausify_rel
% 3.55/0.99  --clausifier_options                    ""
% 3.55/0.99  --stdin                                 false
% 3.55/0.99  --stats_out                             all
% 3.55/0.99  
% 3.55/0.99  ------ General Options
% 3.55/0.99  
% 3.55/0.99  --fof                                   false
% 3.55/0.99  --time_out_real                         305.
% 3.55/0.99  --time_out_virtual                      -1.
% 3.55/0.99  --symbol_type_check                     false
% 3.55/0.99  --clausify_out                          false
% 3.55/0.99  --sig_cnt_out                           false
% 3.55/0.99  --trig_cnt_out                          false
% 3.55/0.99  --trig_cnt_out_tolerance                1.
% 3.55/0.99  --trig_cnt_out_sk_spl                   false
% 3.55/0.99  --abstr_cl_out                          false
% 3.55/0.99  
% 3.55/0.99  ------ Global Options
% 3.55/0.99  
% 3.55/0.99  --schedule                              default
% 3.55/0.99  --add_important_lit                     false
% 3.55/0.99  --prop_solver_per_cl                    1000
% 3.55/0.99  --min_unsat_core                        false
% 3.55/0.99  --soft_assumptions                      false
% 3.55/0.99  --soft_lemma_size                       3
% 3.55/0.99  --prop_impl_unit_size                   0
% 3.55/0.99  --prop_impl_unit                        []
% 3.55/0.99  --share_sel_clauses                     true
% 3.55/0.99  --reset_solvers                         false
% 3.55/0.99  --bc_imp_inh                            [conj_cone]
% 3.55/0.99  --conj_cone_tolerance                   3.
% 3.55/0.99  --extra_neg_conj                        none
% 3.55/0.99  --large_theory_mode                     true
% 3.55/0.99  --prolific_symb_bound                   200
% 3.55/0.99  --lt_threshold                          2000
% 3.55/0.99  --clause_weak_htbl                      true
% 3.55/0.99  --gc_record_bc_elim                     false
% 3.55/0.99  
% 3.55/0.99  ------ Preprocessing Options
% 3.55/0.99  
% 3.55/0.99  --preprocessing_flag                    true
% 3.55/0.99  --time_out_prep_mult                    0.1
% 3.55/0.99  --splitting_mode                        input
% 3.55/0.99  --splitting_grd                         true
% 3.55/0.99  --splitting_cvd                         false
% 3.55/0.99  --splitting_cvd_svl                     false
% 3.55/0.99  --splitting_nvd                         32
% 3.55/0.99  --sub_typing                            true
% 3.55/0.99  --prep_gs_sim                           true
% 3.55/0.99  --prep_unflatten                        true
% 3.55/0.99  --prep_res_sim                          true
% 3.55/0.99  --prep_upred                            true
% 3.55/0.99  --prep_sem_filter                       exhaustive
% 3.55/0.99  --prep_sem_filter_out                   false
% 3.55/0.99  --pred_elim                             true
% 3.55/0.99  --res_sim_input                         true
% 3.55/0.99  --eq_ax_congr_red                       true
% 3.55/0.99  --pure_diseq_elim                       true
% 3.55/0.99  --brand_transform                       false
% 3.55/0.99  --non_eq_to_eq                          false
% 3.55/0.99  --prep_def_merge                        true
% 3.55/0.99  --prep_def_merge_prop_impl              false
% 3.55/0.99  --prep_def_merge_mbd                    true
% 3.55/0.99  --prep_def_merge_tr_red                 false
% 3.55/0.99  --prep_def_merge_tr_cl                  false
% 3.55/0.99  --smt_preprocessing                     true
% 3.55/0.99  --smt_ac_axioms                         fast
% 3.55/0.99  --preprocessed_out                      false
% 3.55/0.99  --preprocessed_stats                    false
% 3.55/0.99  
% 3.55/0.99  ------ Abstraction refinement Options
% 3.55/0.99  
% 3.55/0.99  --abstr_ref                             []
% 3.55/0.99  --abstr_ref_prep                        false
% 3.55/0.99  --abstr_ref_until_sat                   false
% 3.55/0.99  --abstr_ref_sig_restrict                funpre
% 3.55/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.55/0.99  --abstr_ref_under                       []
% 3.55/0.99  
% 3.55/0.99  ------ SAT Options
% 3.55/0.99  
% 3.55/0.99  --sat_mode                              false
% 3.55/0.99  --sat_fm_restart_options                ""
% 3.55/0.99  --sat_gr_def                            false
% 3.55/0.99  --sat_epr_types                         true
% 3.55/0.99  --sat_non_cyclic_types                  false
% 3.55/0.99  --sat_finite_models                     false
% 3.55/0.99  --sat_fm_lemmas                         false
% 3.55/0.99  --sat_fm_prep                           false
% 3.55/0.99  --sat_fm_uc_incr                        true
% 3.55/0.99  --sat_out_model                         small
% 3.55/0.99  --sat_out_clauses                       false
% 3.55/0.99  
% 3.55/0.99  ------ QBF Options
% 3.55/0.99  
% 3.55/0.99  --qbf_mode                              false
% 3.55/0.99  --qbf_elim_univ                         false
% 3.55/0.99  --qbf_dom_inst                          none
% 3.55/0.99  --qbf_dom_pre_inst                      false
% 3.55/0.99  --qbf_sk_in                             false
% 3.55/0.99  --qbf_pred_elim                         true
% 3.55/0.99  --qbf_split                             512
% 3.55/0.99  
% 3.55/0.99  ------ BMC1 Options
% 3.55/0.99  
% 3.55/0.99  --bmc1_incremental                      false
% 3.55/0.99  --bmc1_axioms                           reachable_all
% 3.55/0.99  --bmc1_min_bound                        0
% 3.55/0.99  --bmc1_max_bound                        -1
% 3.55/0.99  --bmc1_max_bound_default                -1
% 3.55/0.99  --bmc1_symbol_reachability              true
% 3.55/0.99  --bmc1_property_lemmas                  false
% 3.55/0.99  --bmc1_k_induction                      false
% 3.55/0.99  --bmc1_non_equiv_states                 false
% 3.55/0.99  --bmc1_deadlock                         false
% 3.55/0.99  --bmc1_ucm                              false
% 3.55/0.99  --bmc1_add_unsat_core                   none
% 3.55/0.99  --bmc1_unsat_core_children              false
% 3.55/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.55/0.99  --bmc1_out_stat                         full
% 3.55/0.99  --bmc1_ground_init                      false
% 3.55/0.99  --bmc1_pre_inst_next_state              false
% 3.55/0.99  --bmc1_pre_inst_state                   false
% 3.55/0.99  --bmc1_pre_inst_reach_state             false
% 3.55/0.99  --bmc1_out_unsat_core                   false
% 3.55/0.99  --bmc1_aig_witness_out                  false
% 3.55/0.99  --bmc1_verbose                          false
% 3.55/0.99  --bmc1_dump_clauses_tptp                false
% 3.55/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.55/0.99  --bmc1_dump_file                        -
% 3.55/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.55/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.55/0.99  --bmc1_ucm_extend_mode                  1
% 3.55/0.99  --bmc1_ucm_init_mode                    2
% 3.55/0.99  --bmc1_ucm_cone_mode                    none
% 3.55/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.55/0.99  --bmc1_ucm_relax_model                  4
% 3.55/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.55/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.55/0.99  --bmc1_ucm_layered_model                none
% 3.55/0.99  --bmc1_ucm_max_lemma_size               10
% 3.55/0.99  
% 3.55/0.99  ------ AIG Options
% 3.55/0.99  
% 3.55/0.99  --aig_mode                              false
% 3.55/0.99  
% 3.55/0.99  ------ Instantiation Options
% 3.55/0.99  
% 3.55/0.99  --instantiation_flag                    true
% 3.55/0.99  --inst_sos_flag                         true
% 3.55/0.99  --inst_sos_phase                        true
% 3.55/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.55/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.55/0.99  --inst_lit_sel_side                     none
% 3.55/0.99  --inst_solver_per_active                1400
% 3.55/0.99  --inst_solver_calls_frac                1.
% 3.55/0.99  --inst_passive_queue_type               priority_queues
% 3.55/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.55/0.99  --inst_passive_queues_freq              [25;2]
% 3.55/0.99  --inst_dismatching                      true
% 3.55/0.99  --inst_eager_unprocessed_to_passive     true
% 3.55/0.99  --inst_prop_sim_given                   true
% 3.55/0.99  --inst_prop_sim_new                     false
% 3.55/0.99  --inst_subs_new                         false
% 3.55/0.99  --inst_eq_res_simp                      false
% 3.55/0.99  --inst_subs_given                       false
% 3.55/0.99  --inst_orphan_elimination               true
% 3.55/0.99  --inst_learning_loop_flag               true
% 3.55/0.99  --inst_learning_start                   3000
% 3.55/0.99  --inst_learning_factor                  2
% 3.55/0.99  --inst_start_prop_sim_after_learn       3
% 3.55/0.99  --inst_sel_renew                        solver
% 3.55/0.99  --inst_lit_activity_flag                true
% 3.55/0.99  --inst_restr_to_given                   false
% 3.55/0.99  --inst_activity_threshold               500
% 3.55/0.99  --inst_out_proof                        true
% 3.55/0.99  
% 3.55/0.99  ------ Resolution Options
% 3.55/0.99  
% 3.55/0.99  --resolution_flag                       false
% 3.55/0.99  --res_lit_sel                           adaptive
% 3.55/0.99  --res_lit_sel_side                      none
% 3.55/0.99  --res_ordering                          kbo
% 3.55/0.99  --res_to_prop_solver                    active
% 3.55/0.99  --res_prop_simpl_new                    false
% 3.55/0.99  --res_prop_simpl_given                  true
% 3.55/0.99  --res_passive_queue_type                priority_queues
% 3.55/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.55/0.99  --res_passive_queues_freq               [15;5]
% 3.55/0.99  --res_forward_subs                      full
% 3.55/0.99  --res_backward_subs                     full
% 3.55/0.99  --res_forward_subs_resolution           true
% 3.55/0.99  --res_backward_subs_resolution          true
% 3.55/0.99  --res_orphan_elimination                true
% 3.55/0.99  --res_time_limit                        2.
% 3.55/0.99  --res_out_proof                         true
% 3.55/0.99  
% 3.55/0.99  ------ Superposition Options
% 3.55/0.99  
% 3.55/0.99  --superposition_flag                    true
% 3.55/0.99  --sup_passive_queue_type                priority_queues
% 3.55/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.55/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.55/0.99  --demod_completeness_check              fast
% 3.55/0.99  --demod_use_ground                      true
% 3.55/0.99  --sup_to_prop_solver                    passive
% 3.55/0.99  --sup_prop_simpl_new                    true
% 3.55/0.99  --sup_prop_simpl_given                  true
% 3.55/0.99  --sup_fun_splitting                     true
% 3.55/0.99  --sup_smt_interval                      50000
% 3.55/0.99  
% 3.55/0.99  ------ Superposition Simplification Setup
% 3.55/0.99  
% 3.55/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.55/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.55/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.55/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.55/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.55/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.55/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.55/0.99  --sup_immed_triv                        [TrivRules]
% 3.55/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.55/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.55/0.99  --sup_immed_bw_main                     []
% 3.55/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.55/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.55/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.55/0.99  --sup_input_bw                          []
% 3.55/0.99  
% 3.55/0.99  ------ Combination Options
% 3.55/0.99  
% 3.55/0.99  --comb_res_mult                         3
% 3.55/0.99  --comb_sup_mult                         2
% 3.55/0.99  --comb_inst_mult                        10
% 3.55/0.99  
% 3.55/0.99  ------ Debug Options
% 3.55/0.99  
% 3.55/0.99  --dbg_backtrace                         false
% 3.55/0.99  --dbg_dump_prop_clauses                 false
% 3.55/0.99  --dbg_dump_prop_clauses_file            -
% 3.55/0.99  --dbg_out_stat                          false
% 3.55/0.99  
% 3.55/0.99  
% 3.55/0.99  
% 3.55/0.99  
% 3.55/0.99  ------ Proving...
% 3.55/0.99  
% 3.55/0.99  
% 3.55/0.99  % SZS status Theorem for theBenchmark.p
% 3.55/0.99  
% 3.55/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.55/0.99  
% 3.55/0.99  fof(f15,conjecture,(
% 3.55/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2) => (k2_relset_1(X0,X1,X3) = X1 | k1_xboole_0 = X2))))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f16,negated_conjecture,(
% 3.55/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2) => (k2_relset_1(X0,X1,X3) = X1 | k1_xboole_0 = X2))))),
% 3.55/0.99    inference(negated_conjecture,[],[f15])).
% 3.55/0.99  
% 3.55/0.99  fof(f34,plain,(
% 3.55/0.99    ? [X0,X1,X2,X3] : (? [X4] : (((k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2) & (v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 3.55/0.99    inference(ennf_transformation,[],[f16])).
% 3.55/0.99  
% 3.55/0.99  fof(f35,plain,(
% 3.55/0.99    ? [X0,X1,X2,X3] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 3.55/0.99    inference(flattening,[],[f34])).
% 3.55/0.99  
% 3.55/0.99  fof(f41,plain,(
% 3.55/0.99    ( ! [X2,X0,X3,X1] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(sK4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,sK4)) = X2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(sK4,X1,X2) & v1_funct_1(sK4))) )),
% 3.55/0.99    introduced(choice_axiom,[])).
% 3.55/0.99  
% 3.55/0.99  fof(f40,plain,(
% 3.55/0.99    ? [X0,X1,X2,X3] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (? [X4] : (k2_relset_1(sK0,sK1,sK3) != sK1 & k1_xboole_0 != sK2 & v2_funct_1(X4) & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,X4)) = sK2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(X4,sK1,sK2) & v1_funct_1(X4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3))),
% 3.55/0.99    introduced(choice_axiom,[])).
% 3.55/0.99  
% 3.55/0.99  fof(f42,plain,(
% 3.55/0.99    (k2_relset_1(sK0,sK1,sK3) != sK1 & k1_xboole_0 != sK2 & v2_funct_1(sK4) & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK4,sK1,sK2) & v1_funct_1(sK4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)),
% 3.55/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f35,f41,f40])).
% 3.55/0.99  
% 3.55/0.99  fof(f71,plain,(
% 3.55/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 3.55/0.99    inference(cnf_transformation,[],[f42])).
% 3.55/0.99  
% 3.55/0.99  fof(f2,axiom,(
% 3.55/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f18,plain,(
% 3.55/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 3.55/0.99    inference(ennf_transformation,[],[f2])).
% 3.55/0.99  
% 3.55/0.99  fof(f46,plain,(
% 3.55/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 3.55/0.99    inference(cnf_transformation,[],[f18])).
% 3.55/0.99  
% 3.55/0.99  fof(f4,axiom,(
% 3.55/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f49,plain,(
% 3.55/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 3.55/0.99    inference(cnf_transformation,[],[f4])).
% 3.55/0.99  
% 3.55/0.99  fof(f68,plain,(
% 3.55/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.55/0.99    inference(cnf_transformation,[],[f42])).
% 3.55/0.99  
% 3.55/0.99  fof(f6,axiom,(
% 3.55/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f21,plain,(
% 3.55/0.99    ! [X0] : (! [X1] : (k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.55/0.99    inference(ennf_transformation,[],[f6])).
% 3.55/0.99  
% 3.55/0.99  fof(f51,plain,(
% 3.55/0.99    ( ! [X0,X1] : (k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.55/0.99    inference(cnf_transformation,[],[f21])).
% 3.55/0.99  
% 3.55/0.99  fof(f14,axiom,(
% 3.55/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f32,plain,(
% 3.55/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.55/0.99    inference(ennf_transformation,[],[f14])).
% 3.55/0.99  
% 3.55/0.99  fof(f33,plain,(
% 3.55/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.55/0.99    inference(flattening,[],[f32])).
% 3.55/0.99  
% 3.55/0.99  fof(f65,plain,(
% 3.55/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.55/0.99    inference(cnf_transformation,[],[f33])).
% 3.55/0.99  
% 3.55/0.99  fof(f69,plain,(
% 3.55/0.99    v1_funct_1(sK4)),
% 3.55/0.99    inference(cnf_transformation,[],[f42])).
% 3.55/0.99  
% 3.55/0.99  fof(f66,plain,(
% 3.55/0.99    v1_funct_1(sK3)),
% 3.55/0.99    inference(cnf_transformation,[],[f42])).
% 3.55/0.99  
% 3.55/0.99  fof(f13,axiom,(
% 3.55/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f30,plain,(
% 3.55/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.55/0.99    inference(ennf_transformation,[],[f13])).
% 3.55/0.99  
% 3.55/0.99  fof(f31,plain,(
% 3.55/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.55/0.99    inference(flattening,[],[f30])).
% 3.55/0.99  
% 3.55/0.99  fof(f64,plain,(
% 3.55/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.55/0.99    inference(cnf_transformation,[],[f31])).
% 3.55/0.99  
% 3.55/0.99  fof(f11,axiom,(
% 3.55/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f27,plain,(
% 3.55/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.55/0.99    inference(ennf_transformation,[],[f11])).
% 3.55/0.99  
% 3.55/0.99  fof(f56,plain,(
% 3.55/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.55/0.99    inference(cnf_transformation,[],[f27])).
% 3.55/0.99  
% 3.55/0.99  fof(f72,plain,(
% 3.55/0.99    k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2),
% 3.55/0.99    inference(cnf_transformation,[],[f42])).
% 3.55/0.99  
% 3.55/0.99  fof(f9,axiom,(
% 3.55/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f17,plain,(
% 3.55/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 3.55/0.99    inference(pure_predicate_removal,[],[f9])).
% 3.55/0.99  
% 3.55/0.99  fof(f25,plain,(
% 3.55/0.99    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.55/0.99    inference(ennf_transformation,[],[f17])).
% 3.55/0.99  
% 3.55/0.99  fof(f54,plain,(
% 3.55/0.99    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.55/0.99    inference(cnf_transformation,[],[f25])).
% 3.55/0.99  
% 3.55/0.99  fof(f3,axiom,(
% 3.55/0.99    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f19,plain,(
% 3.55/0.99    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 3.55/0.99    inference(ennf_transformation,[],[f3])).
% 3.55/0.99  
% 3.55/0.99  fof(f38,plain,(
% 3.55/0.99    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 3.55/0.99    inference(nnf_transformation,[],[f19])).
% 3.55/0.99  
% 3.55/0.99  fof(f47,plain,(
% 3.55/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.55/0.99    inference(cnf_transformation,[],[f38])).
% 3.55/0.99  
% 3.55/0.99  fof(f10,axiom,(
% 3.55/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f26,plain,(
% 3.55/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.55/0.99    inference(ennf_transformation,[],[f10])).
% 3.55/0.99  
% 3.55/0.99  fof(f55,plain,(
% 3.55/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.55/0.99    inference(cnf_transformation,[],[f26])).
% 3.55/0.99  
% 3.55/0.99  fof(f12,axiom,(
% 3.55/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f28,plain,(
% 3.55/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.55/0.99    inference(ennf_transformation,[],[f12])).
% 3.55/0.99  
% 3.55/0.99  fof(f29,plain,(
% 3.55/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.55/0.99    inference(flattening,[],[f28])).
% 3.55/0.99  
% 3.55/0.99  fof(f39,plain,(
% 3.55/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.55/0.99    inference(nnf_transformation,[],[f29])).
% 3.55/0.99  
% 3.55/0.99  fof(f57,plain,(
% 3.55/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.55/0.99    inference(cnf_transformation,[],[f39])).
% 3.55/0.99  
% 3.55/0.99  fof(f70,plain,(
% 3.55/0.99    v1_funct_2(sK4,sK1,sK2)),
% 3.55/0.99    inference(cnf_transformation,[],[f42])).
% 3.55/0.99  
% 3.55/0.99  fof(f74,plain,(
% 3.55/0.99    k1_xboole_0 != sK2),
% 3.55/0.99    inference(cnf_transformation,[],[f42])).
% 3.55/0.99  
% 3.55/0.99  fof(f8,axiom,(
% 3.55/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((v2_funct_1(X1) & r1_tarski(X0,k1_relat_1(X1))) => k10_relat_1(X1,k9_relat_1(X1,X0)) = X0))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f23,plain,(
% 3.55/0.99    ! [X0,X1] : ((k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 | (~v2_funct_1(X1) | ~r1_tarski(X0,k1_relat_1(X1)))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 3.55/0.99    inference(ennf_transformation,[],[f8])).
% 3.55/0.99  
% 3.55/0.99  fof(f24,plain,(
% 3.55/0.99    ! [X0,X1] : (k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 | ~v2_funct_1(X1) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 3.55/0.99    inference(flattening,[],[f23])).
% 3.55/0.99  
% 3.55/0.99  fof(f53,plain,(
% 3.55/0.99    ( ! [X0,X1] : (k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 | ~v2_funct_1(X1) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.55/0.99    inference(cnf_transformation,[],[f24])).
% 3.55/0.99  
% 3.55/0.99  fof(f73,plain,(
% 3.55/0.99    v2_funct_1(sK4)),
% 3.55/0.99    inference(cnf_transformation,[],[f42])).
% 3.55/0.99  
% 3.55/0.99  fof(f7,axiom,(
% 3.55/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f22,plain,(
% 3.55/0.99    ! [X0] : (! [X1] : (r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.55/0.99    inference(ennf_transformation,[],[f7])).
% 3.55/0.99  
% 3.55/0.99  fof(f52,plain,(
% 3.55/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.55/0.99    inference(cnf_transformation,[],[f22])).
% 3.55/0.99  
% 3.55/0.99  fof(f1,axiom,(
% 3.55/0.99    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f36,plain,(
% 3.55/0.99    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.55/0.99    inference(nnf_transformation,[],[f1])).
% 3.55/0.99  
% 3.55/0.99  fof(f37,plain,(
% 3.55/0.99    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.55/0.99    inference(flattening,[],[f36])).
% 3.55/0.99  
% 3.55/0.99  fof(f45,plain,(
% 3.55/0.99    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.55/0.99    inference(cnf_transformation,[],[f37])).
% 3.55/0.99  
% 3.55/0.99  fof(f44,plain,(
% 3.55/0.99    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 3.55/0.99    inference(cnf_transformation,[],[f37])).
% 3.55/0.99  
% 3.55/0.99  fof(f76,plain,(
% 3.55/0.99    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.55/0.99    inference(equality_resolution,[],[f44])).
% 3.55/0.99  
% 3.55/0.99  fof(f5,axiom,(
% 3.55/0.99    ! [X0] : (v1_relat_1(X0) => k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0)))),
% 3.55/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.55/0.99  
% 3.55/0.99  fof(f20,plain,(
% 3.55/0.99    ! [X0] : (k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 3.55/0.99    inference(ennf_transformation,[],[f5])).
% 3.55/0.99  
% 3.55/0.99  fof(f50,plain,(
% 3.55/0.99    ( ! [X0] : (k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0)) | ~v1_relat_1(X0)) )),
% 3.55/0.99    inference(cnf_transformation,[],[f20])).
% 3.55/0.99  
% 3.55/0.99  fof(f75,plain,(
% 3.55/0.99    k2_relset_1(sK0,sK1,sK3) != sK1),
% 3.55/0.99    inference(cnf_transformation,[],[f42])).
% 3.55/0.99  
% 3.55/0.99  cnf(c_27,negated_conjecture,
% 3.55/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 3.55/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1030,plain,
% 3.55/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_3,plain,
% 3.55/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.55/0.99      | ~ v1_relat_1(X1)
% 3.55/0.99      | v1_relat_1(X0) ),
% 3.55/0.99      inference(cnf_transformation,[],[f46]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1040,plain,
% 3.55/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.55/0.99      | v1_relat_1(X1) != iProver_top
% 3.55/0.99      | v1_relat_1(X0) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1899,plain,
% 3.55/0.99      ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) != iProver_top
% 3.55/0.99      | v1_relat_1(sK4) = iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1030,c_1040]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_38,plain,
% 3.55/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1094,plain,
% 3.55/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(X0))
% 3.55/0.99      | ~ v1_relat_1(X0)
% 3.55/0.99      | v1_relat_1(sK4) ),
% 3.55/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1153,plain,
% 3.55/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.55/0.99      | ~ v1_relat_1(k2_zfmisc_1(X0,X1))
% 3.55/0.99      | v1_relat_1(sK4) ),
% 3.55/0.99      inference(instantiation,[status(thm)],[c_1094]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1280,plain,
% 3.55/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 3.55/0.99      | ~ v1_relat_1(k2_zfmisc_1(sK1,sK2))
% 3.55/0.99      | v1_relat_1(sK4) ),
% 3.55/0.99      inference(instantiation,[status(thm)],[c_1153]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1281,plain,
% 3.55/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 3.55/0.99      | v1_relat_1(k2_zfmisc_1(sK1,sK2)) != iProver_top
% 3.55/0.99      | v1_relat_1(sK4) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_1280]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_6,plain,
% 3.55/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 3.55/0.99      inference(cnf_transformation,[],[f49]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1431,plain,
% 3.55/0.99      ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) ),
% 3.55/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1432,plain,
% 3.55/0.99      ( v1_relat_1(k2_zfmisc_1(sK1,sK2)) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_1431]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2240,plain,
% 3.55/0.99      ( v1_relat_1(sK4) = iProver_top ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_1899,c_38,c_1281,c_1432]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1039,plain,
% 3.55/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_30,negated_conjecture,
% 3.55/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.55/0.99      inference(cnf_transformation,[],[f68]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1028,plain,
% 3.55/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1900,plain,
% 3.55/0.99      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 3.55/0.99      | v1_relat_1(sK3) = iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1028,c_1040]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2247,plain,
% 3.55/0.99      ( v1_relat_1(sK3) = iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1039,c_1900]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_8,plain,
% 3.55/0.99      ( ~ v1_relat_1(X0)
% 3.55/0.99      | ~ v1_relat_1(X1)
% 3.55/0.99      | k9_relat_1(X1,k2_relat_1(X0)) = k2_relat_1(k5_relat_1(X0,X1)) ),
% 3.55/0.99      inference(cnf_transformation,[],[f51]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1037,plain,
% 3.55/0.99      ( k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0))
% 3.55/0.99      | v1_relat_1(X0) != iProver_top
% 3.55/0.99      | v1_relat_1(X1) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2409,plain,
% 3.55/0.99      ( k9_relat_1(X0,k2_relat_1(sK3)) = k2_relat_1(k5_relat_1(sK3,X0))
% 3.55/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_2247,c_1037]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_4078,plain,
% 3.55/0.99      ( k9_relat_1(sK4,k2_relat_1(sK3)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_2240,c_2409]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_22,plain,
% 3.55/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.55/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.55/0.99      | ~ v1_funct_1(X0)
% 3.55/0.99      | ~ v1_funct_1(X3)
% 3.55/0.99      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 3.55/0.99      inference(cnf_transformation,[],[f65]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1031,plain,
% 3.55/0.99      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 3.55/0.99      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 3.55/0.99      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.55/0.99      | v1_funct_1(X5) != iProver_top
% 3.55/0.99      | v1_funct_1(X4) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2506,plain,
% 3.55/0.99      ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
% 3.55/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.55/0.99      | v1_funct_1(X2) != iProver_top
% 3.55/0.99      | v1_funct_1(sK4) != iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1030,c_1031]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_29,negated_conjecture,
% 3.55/0.99      ( v1_funct_1(sK4) ),
% 3.55/0.99      inference(cnf_transformation,[],[f69]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_36,plain,
% 3.55/0.99      ( v1_funct_1(sK4) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2580,plain,
% 3.55/0.99      ( v1_funct_1(X2) != iProver_top
% 3.55/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.55/0.99      | k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4) ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_2506,c_36]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2581,plain,
% 3.55/0.99      ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
% 3.55/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.55/0.99      | v1_funct_1(X2) != iProver_top ),
% 3.55/0.99      inference(renaming,[status(thm)],[c_2580]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2588,plain,
% 3.55/0.99      ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4)
% 3.55/0.99      | v1_funct_1(sK3) != iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1028,c_2581]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_32,negated_conjecture,
% 3.55/0.99      ( v1_funct_1(sK3) ),
% 3.55/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_33,plain,
% 3.55/0.99      ( v1_funct_1(sK3) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2636,plain,
% 3.55/0.99      ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_2588,c_33]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_20,plain,
% 3.55/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.55/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.55/0.99      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 3.55/0.99      | ~ v1_funct_1(X0)
% 3.55/0.99      | ~ v1_funct_1(X3) ),
% 3.55/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1033,plain,
% 3.55/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.55/0.99      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5))) != iProver_top
% 3.55/0.99      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) = iProver_top
% 3.55/0.99      | v1_funct_1(X0) != iProver_top
% 3.55/0.99      | v1_funct_1(X3) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2639,plain,
% 3.55/0.99      ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top
% 3.55/0.99      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 3.55/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.55/0.99      | v1_funct_1(sK4) != iProver_top
% 3.55/0.99      | v1_funct_1(sK3) != iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_2636,c_1033]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_35,plain,
% 3.55/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_3986,plain,
% 3.55/0.99      ( m1_subset_1(k5_relat_1(sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_2639,c_33,c_35,c_36,c_38]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_13,plain,
% 3.55/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.55/0.99      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.55/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1034,plain,
% 3.55/0.99      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.55/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_3994,plain,
% 3.55/0.99      ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_3986,c_1034]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_26,negated_conjecture,
% 3.55/0.99      ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
% 3.55/0.99      inference(cnf_transformation,[],[f72]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2638,plain,
% 3.55/0.99      ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = sK2 ),
% 3.55/0.99      inference(demodulation,[status(thm)],[c_2636,c_26]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_3997,plain,
% 3.55/0.99      ( k2_relat_1(k5_relat_1(sK3,sK4)) = sK2 ),
% 3.55/0.99      inference(light_normalisation,[status(thm)],[c_3994,c_2638]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_4081,plain,
% 3.55/0.99      ( k9_relat_1(sK4,k2_relat_1(sK3)) = sK2 ),
% 3.55/0.99      inference(light_normalisation,[status(thm)],[c_4078,c_3997]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_11,plain,
% 3.55/0.99      ( v5_relat_1(X0,X1)
% 3.55/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 3.55/0.99      inference(cnf_transformation,[],[f54]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_5,plain,
% 3.55/0.99      ( ~ v5_relat_1(X0,X1)
% 3.55/0.99      | r1_tarski(k2_relat_1(X0),X1)
% 3.55/0.99      | ~ v1_relat_1(X0) ),
% 3.55/0.99      inference(cnf_transformation,[],[f47]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_357,plain,
% 3.55/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.55/0.99      | r1_tarski(k2_relat_1(X0),X2)
% 3.55/0.99      | ~ v1_relat_1(X0) ),
% 3.55/0.99      inference(resolution,[status(thm)],[c_11,c_5]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1025,plain,
% 3.55/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.55/0.99      | r1_tarski(k2_relat_1(X0),X2) = iProver_top
% 3.55/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_357]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1698,plain,
% 3.55/0.99      ( r1_tarski(k2_relat_1(sK3),sK1) = iProver_top
% 3.55/0.99      | v1_relat_1(sK3) != iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1028,c_1025]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_12,plain,
% 3.55/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.55/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.55/0.99      inference(cnf_transformation,[],[f55]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1035,plain,
% 3.55/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.55/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1848,plain,
% 3.55/0.99      ( k1_relset_1(sK1,sK2,sK4) = k1_relat_1(sK4) ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1030,c_1035]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_19,plain,
% 3.55/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.55/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.55/0.99      | k1_relset_1(X1,X2,X0) = X1
% 3.55/0.99      | k1_xboole_0 = X2 ),
% 3.55/0.99      inference(cnf_transformation,[],[f57]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_28,negated_conjecture,
% 3.55/0.99      ( v1_funct_2(sK4,sK1,sK2) ),
% 3.55/0.99      inference(cnf_transformation,[],[f70]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_450,plain,
% 3.55/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.55/0.99      | k1_relset_1(X1,X2,X0) = X1
% 3.55/0.99      | sK4 != X0
% 3.55/0.99      | sK2 != X2
% 3.55/0.99      | sK1 != X1
% 3.55/0.99      | k1_xboole_0 = X2 ),
% 3.55/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_28]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_451,plain,
% 3.55/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 3.55/0.99      | k1_relset_1(sK1,sK2,sK4) = sK1
% 3.55/0.99      | k1_xboole_0 = sK2 ),
% 3.55/0.99      inference(unflattening,[status(thm)],[c_450]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_24,negated_conjecture,
% 3.55/0.99      ( k1_xboole_0 != sK2 ),
% 3.55/0.99      inference(cnf_transformation,[],[f74]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_453,plain,
% 3.55/0.99      ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_451,c_27,c_24]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1850,plain,
% 3.55/0.99      ( k1_relat_1(sK4) = sK1 ),
% 3.55/0.99      inference(light_normalisation,[status(thm)],[c_1848,c_453]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_10,plain,
% 3.55/0.99      ( ~ r1_tarski(X0,k1_relat_1(X1))
% 3.55/0.99      | ~ v1_funct_1(X1)
% 3.55/0.99      | ~ v2_funct_1(X1)
% 3.55/0.99      | ~ v1_relat_1(X1)
% 3.55/0.99      | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 ),
% 3.55/0.99      inference(cnf_transformation,[],[f53]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_25,negated_conjecture,
% 3.55/0.99      ( v2_funct_1(sK4) ),
% 3.55/0.99      inference(cnf_transformation,[],[f73]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_332,plain,
% 3.55/0.99      ( ~ r1_tarski(X0,k1_relat_1(X1))
% 3.55/0.99      | ~ v1_funct_1(X1)
% 3.55/0.99      | ~ v1_relat_1(X1)
% 3.55/0.99      | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
% 3.55/0.99      | sK4 != X1 ),
% 3.55/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_25]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_333,plain,
% 3.55/0.99      ( ~ r1_tarski(X0,k1_relat_1(sK4))
% 3.55/0.99      | ~ v1_funct_1(sK4)
% 3.55/0.99      | ~ v1_relat_1(sK4)
% 3.55/0.99      | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
% 3.55/0.99      inference(unflattening,[status(thm)],[c_332]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_337,plain,
% 3.55/0.99      ( ~ r1_tarski(X0,k1_relat_1(sK4))
% 3.55/0.99      | ~ v1_relat_1(sK4)
% 3.55/0.99      | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_333,c_29]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1026,plain,
% 3.55/0.99      ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
% 3.55/0.99      | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
% 3.55/0.99      | v1_relat_1(sK4) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_337]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_339,plain,
% 3.55/0.99      ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
% 3.55/0.99      | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
% 3.55/0.99      | v1_relat_1(sK4) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_337]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1561,plain,
% 3.55/0.99      ( r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
% 3.55/0.99      | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_1026,c_38,c_339,c_1281,c_1432]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1562,plain,
% 3.55/0.99      ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
% 3.55/0.99      | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top ),
% 3.55/0.99      inference(renaming,[status(thm)],[c_1561]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2011,plain,
% 3.55/0.99      ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
% 3.55/0.99      | r1_tarski(X0,sK1) != iProver_top ),
% 3.55/0.99      inference(demodulation,[status(thm)],[c_1850,c_1562]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_3249,plain,
% 3.55/0.99      ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(sK3))) = k2_relat_1(sK3)
% 3.55/0.99      | v1_relat_1(sK3) != iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1698,c_2011]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_3253,plain,
% 3.55/0.99      ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(sK3))) = k2_relat_1(sK3) ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_3249,c_2247]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_4223,plain,
% 3.55/0.99      ( k10_relat_1(sK4,sK2) = k2_relat_1(sK3) ),
% 3.55/0.99      inference(demodulation,[status(thm)],[c_4081,c_3253]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_9,plain,
% 3.55/0.99      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
% 3.55/0.99      | ~ v1_relat_1(X0)
% 3.55/0.99      | ~ v1_relat_1(X1) ),
% 3.55/0.99      inference(cnf_transformation,[],[f52]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1036,plain,
% 3.55/0.99      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) = iProver_top
% 3.55/0.99      | v1_relat_1(X1) != iProver_top
% 3.55/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_4084,plain,
% 3.55/0.99      ( r1_tarski(sK2,k2_relat_1(sK4)) = iProver_top
% 3.55/0.99      | v1_relat_1(sK4) != iProver_top
% 3.55/0.99      | v1_relat_1(sK3) != iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_3997,c_1036]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_4415,plain,
% 3.55/0.99      ( r1_tarski(sK2,k2_relat_1(sK4)) = iProver_top ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_4084,c_38,c_1281,c_1432,c_2247]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1697,plain,
% 3.55/0.99      ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top
% 3.55/0.99      | v1_relat_1(sK4) != iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1030,c_1025]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2106,plain,
% 3.55/0.99      ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top ),
% 3.55/0.99      inference(global_propositional_subsumption,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_1697,c_38,c_1281,c_1432]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_0,plain,
% 3.55/0.99      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 3.55/0.99      inference(cnf_transformation,[],[f45]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1042,plain,
% 3.55/0.99      ( X0 = X1
% 3.55/0.99      | r1_tarski(X0,X1) != iProver_top
% 3.55/0.99      | r1_tarski(X1,X0) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2110,plain,
% 3.55/0.99      ( k2_relat_1(sK4) = sK2
% 3.55/0.99      | r1_tarski(sK2,k2_relat_1(sK4)) != iProver_top ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_2106,c_1042]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_4420,plain,
% 3.55/0.99      ( k2_relat_1(sK4) = sK2 ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_4415,c_2110]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1,plain,
% 3.55/0.99      ( r1_tarski(X0,X0) ),
% 3.55/0.99      inference(cnf_transformation,[],[f76]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1041,plain,
% 3.55/0.99      ( r1_tarski(X0,X0) = iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1567,plain,
% 3.55/0.99      ( k10_relat_1(sK4,k9_relat_1(sK4,k1_relat_1(sK4))) = k1_relat_1(sK4) ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1041,c_1562]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_7,plain,
% 3.55/0.99      ( ~ v1_relat_1(X0)
% 3.55/0.99      | k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0) ),
% 3.55/0.99      inference(cnf_transformation,[],[f50]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1038,plain,
% 3.55/0.99      ( k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0)
% 3.55/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.55/0.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2244,plain,
% 3.55/0.99      ( k9_relat_1(sK4,k1_relat_1(sK4)) = k2_relat_1(sK4) ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_2240,c_1038]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_2245,plain,
% 3.55/0.99      ( k9_relat_1(sK4,sK1) = k2_relat_1(sK4) ),
% 3.55/0.99      inference(light_normalisation,[status(thm)],[c_2244,c_1850]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_3082,plain,
% 3.55/0.99      ( k10_relat_1(sK4,k2_relat_1(sK4)) = sK1 ),
% 3.55/0.99      inference(light_normalisation,
% 3.55/0.99                [status(thm)],
% 3.55/0.99                [c_1567,c_1567,c_1850,c_2245]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_5565,plain,
% 3.55/0.99      ( k10_relat_1(sK4,sK2) = sK1 ),
% 3.55/0.99      inference(demodulation,[status(thm)],[c_4420,c_3082]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_5756,plain,
% 3.55/0.99      ( k2_relat_1(sK3) = sK1 ),
% 3.55/0.99      inference(light_normalisation,[status(thm)],[c_4223,c_5565]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1408,plain,
% 3.55/0.99      ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
% 3.55/0.99      inference(superposition,[status(thm)],[c_1028,c_1034]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_23,negated_conjecture,
% 3.55/0.99      ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
% 3.55/0.99      inference(cnf_transformation,[],[f75]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(c_1459,plain,
% 3.55/0.99      ( k2_relat_1(sK3) != sK1 ),
% 3.55/0.99      inference(demodulation,[status(thm)],[c_1408,c_23]) ).
% 3.55/0.99  
% 3.55/0.99  cnf(contradiction,plain,
% 3.55/0.99      ( $false ),
% 3.55/0.99      inference(minisat,[status(thm)],[c_5756,c_1459]) ).
% 3.55/0.99  
% 3.55/0.99  
% 3.55/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.55/0.99  
% 3.55/0.99  ------                               Statistics
% 3.55/0.99  
% 3.55/0.99  ------ General
% 3.55/0.99  
% 3.55/0.99  abstr_ref_over_cycles:                  0
% 3.55/0.99  abstr_ref_under_cycles:                 0
% 3.55/0.99  gc_basic_clause_elim:                   0
% 3.55/0.99  forced_gc_time:                         0
% 3.55/0.99  parsing_time:                           0.01
% 3.55/0.99  unif_index_cands_time:                  0.
% 3.55/0.99  unif_index_add_time:                    0.
% 3.55/0.99  orderings_time:                         0.
% 3.55/0.99  out_proof_time:                         0.011
% 3.55/0.99  total_time:                             0.212
% 3.55/0.99  num_of_symbols:                         54
% 3.55/0.99  num_of_terms:                           4649
% 3.55/0.99  
% 3.55/0.99  ------ Preprocessing
% 3.55/0.99  
% 3.55/0.99  num_of_splits:                          0
% 3.55/0.99  num_of_split_atoms:                     0
% 3.55/0.99  num_of_reused_defs:                     0
% 3.55/0.99  num_eq_ax_congr_red:                    13
% 3.55/0.99  num_of_sem_filtered_clauses:            1
% 3.55/0.99  num_of_subtypes:                        0
% 3.55/0.99  monotx_restored_types:                  0
% 3.55/0.99  sat_num_of_epr_types:                   0
% 3.55/0.99  sat_num_of_non_cyclic_types:            0
% 3.55/0.99  sat_guarded_non_collapsed_types:        0
% 3.55/0.99  num_pure_diseq_elim:                    0
% 3.55/0.99  simp_replaced_by:                       0
% 3.55/0.99  res_preprocessed:                       144
% 3.55/0.99  prep_upred:                             0
% 3.55/0.99  prep_unflattend:                        35
% 3.55/0.99  smt_new_axioms:                         0
% 3.55/0.99  pred_elim_cands:                        4
% 3.55/0.99  pred_elim:                              3
% 3.55/0.99  pred_elim_cl:                           5
% 3.55/0.99  pred_elim_cycles:                       5
% 3.55/0.99  merged_defs:                            0
% 3.55/0.99  merged_defs_ncl:                        0
% 3.55/0.99  bin_hyper_res:                          0
% 3.55/0.99  prep_cycles:                            4
% 3.55/0.99  pred_elim_time:                         0.004
% 3.55/0.99  splitting_time:                         0.
% 3.55/0.99  sem_filter_time:                        0.
% 3.55/0.99  monotx_time:                            0.
% 3.55/0.99  subtype_inf_time:                       0.
% 3.55/0.99  
% 3.55/0.99  ------ Problem properties
% 3.55/0.99  
% 3.55/0.99  clauses:                                27
% 3.55/0.99  conjectures:                            7
% 3.55/0.99  epr:                                    5
% 3.55/0.99  horn:                                   24
% 3.55/0.99  ground:                                 13
% 3.55/0.99  unary:                                  10
% 3.55/0.99  binary:                                 4
% 3.55/0.99  lits:                                   65
% 3.55/0.99  lits_eq:                                23
% 3.55/0.99  fd_pure:                                0
% 3.55/0.99  fd_pseudo:                              0
% 3.55/0.99  fd_cond:                                0
% 3.55/0.99  fd_pseudo_cond:                         1
% 3.55/0.99  ac_symbols:                             0
% 3.55/0.99  
% 3.55/0.99  ------ Propositional Solver
% 3.55/0.99  
% 3.55/0.99  prop_solver_calls:                      31
% 3.55/0.99  prop_fast_solver_calls:                 1024
% 3.55/0.99  smt_solver_calls:                       0
% 3.55/0.99  smt_fast_solver_calls:                  0
% 3.55/0.99  prop_num_of_clauses:                    2378
% 3.55/0.99  prop_preprocess_simplified:             5914
% 3.55/0.99  prop_fo_subsumed:                       54
% 3.55/0.99  prop_solver_time:                       0.
% 3.55/0.99  smt_solver_time:                        0.
% 3.55/0.99  smt_fast_solver_time:                   0.
% 3.55/0.99  prop_fast_solver_time:                  0.
% 3.55/0.99  prop_unsat_core_time:                   0.
% 3.55/0.99  
% 3.55/0.99  ------ QBF
% 3.55/0.99  
% 3.55/0.99  qbf_q_res:                              0
% 3.55/0.99  qbf_num_tautologies:                    0
% 3.55/0.99  qbf_prep_cycles:                        0
% 3.55/0.99  
% 3.55/0.99  ------ BMC1
% 3.55/0.99  
% 3.55/0.99  bmc1_current_bound:                     -1
% 3.55/0.99  bmc1_last_solved_bound:                 -1
% 3.55/0.99  bmc1_unsat_core_size:                   -1
% 3.55/0.99  bmc1_unsat_core_parents_size:           -1
% 3.55/0.99  bmc1_merge_next_fun:                    0
% 3.55/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.55/0.99  
% 3.55/0.99  ------ Instantiation
% 3.55/0.99  
% 3.55/0.99  inst_num_of_clauses:                    730
% 3.55/0.99  inst_num_in_passive:                    75
% 3.55/0.99  inst_num_in_active:                     443
% 3.55/0.99  inst_num_in_unprocessed:                212
% 3.55/0.99  inst_num_of_loops:                      490
% 3.55/0.99  inst_num_of_learning_restarts:          0
% 3.55/0.99  inst_num_moves_active_passive:          42
% 3.55/0.99  inst_lit_activity:                      0
% 3.55/0.99  inst_lit_activity_moves:                0
% 3.55/0.99  inst_num_tautologies:                   0
% 3.55/0.99  inst_num_prop_implied:                  0
% 3.55/0.99  inst_num_existing_simplified:           0
% 3.55/0.99  inst_num_eq_res_simplified:             0
% 3.55/0.99  inst_num_child_elim:                    0
% 3.55/0.99  inst_num_of_dismatching_blockings:      156
% 3.55/0.99  inst_num_of_non_proper_insts:           1022
% 3.55/0.99  inst_num_of_duplicates:                 0
% 3.55/0.99  inst_inst_num_from_inst_to_res:         0
% 3.55/0.99  inst_dismatching_checking_time:         0.
% 3.55/0.99  
% 3.55/0.99  ------ Resolution
% 3.55/0.99  
% 3.55/0.99  res_num_of_clauses:                     0
% 3.55/0.99  res_num_in_passive:                     0
% 3.55/0.99  res_num_in_active:                      0
% 3.55/0.99  res_num_of_loops:                       148
% 3.55/0.99  res_forward_subset_subsumed:            105
% 3.55/0.99  res_backward_subset_subsumed:           0
% 3.55/0.99  res_forward_subsumed:                   0
% 3.55/0.99  res_backward_subsumed:                  0
% 3.55/0.99  res_forward_subsumption_resolution:     0
% 3.55/0.99  res_backward_subsumption_resolution:    0
% 3.55/0.99  res_clause_to_clause_subsumption:       333
% 3.55/0.99  res_orphan_elimination:                 0
% 3.55/0.99  res_tautology_del:                      154
% 3.55/0.99  res_num_eq_res_simplified:              0
% 3.55/0.99  res_num_sel_changes:                    0
% 3.55/0.99  res_moves_from_active_to_pass:          0
% 3.55/0.99  
% 3.55/0.99  ------ Superposition
% 3.55/0.99  
% 3.55/0.99  sup_time_total:                         0.
% 3.55/0.99  sup_time_generating:                    0.
% 3.55/0.99  sup_time_sim_full:                      0.
% 3.55/0.99  sup_time_sim_immed:                     0.
% 3.55/0.99  
% 3.55/0.99  sup_num_of_clauses:                     157
% 3.55/0.99  sup_num_in_active:                      81
% 3.55/0.99  sup_num_in_passive:                     76
% 3.55/0.99  sup_num_of_loops:                       97
% 3.55/0.99  sup_fw_superposition:                   75
% 3.55/0.99  sup_bw_superposition:                   78
% 3.55/0.99  sup_immediate_simplified:               40
% 3.55/0.99  sup_given_eliminated:                   1
% 3.55/0.99  comparisons_done:                       0
% 3.55/0.99  comparisons_avoided:                    6
% 3.55/0.99  
% 3.55/0.99  ------ Simplifications
% 3.55/0.99  
% 3.55/0.99  
% 3.55/0.99  sim_fw_subset_subsumed:                 5
% 3.55/0.99  sim_bw_subset_subsumed:                 5
% 3.55/0.99  sim_fw_subsumed:                        2
% 3.55/0.99  sim_bw_subsumed:                        1
% 3.55/0.99  sim_fw_subsumption_res:                 0
% 3.55/0.99  sim_bw_subsumption_res:                 0
% 3.55/0.99  sim_tautology_del:                      0
% 3.55/0.99  sim_eq_tautology_del:                   10
% 3.55/0.99  sim_eq_res_simp:                        0
% 3.55/0.99  sim_fw_demodulated:                     0
% 3.55/0.99  sim_bw_demodulated:                     13
% 3.55/0.99  sim_light_normalised:                   32
% 3.55/0.99  sim_joinable_taut:                      0
% 3.55/0.99  sim_joinable_simp:                      0
% 3.55/0.99  sim_ac_normalised:                      0
% 3.55/0.99  sim_smt_subsumption:                    0
% 3.55/0.99  
%------------------------------------------------------------------------------
